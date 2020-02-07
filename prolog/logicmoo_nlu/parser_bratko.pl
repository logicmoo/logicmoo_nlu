% ===================================================================
% File 'parser_bratko.pl'
% Purpose: English to KIF conversions from SWI-Prolog 
% This implementation is incomplete
% Maintainer: Douglas Miles
% Contact: $Author: dmiles $@users.sourceforge.net ;
% Version: 'parser_bratko.pl' 1.0.0
% Revision:  $Revision: 1.3 $
% Revised At:   $Date: 2012/06/06 15:43:15 $
% ===================================================================

:-module(parser_bratko, []).
/* from Bratko chapter 17 page 455.
   This comes from Pereira and Warren paper, AI journal, 1980 */

/* this is to define infix operators  and their argument precedence
   x represents an argument whose precedence is strictly lower than that
   of the operator. y represents an argument whose precedence is lower
   or equal than that of the operator. */
%:- op(100, xfy, and).
%:- op(150, xfx, '=>').

/* when using sentence we need to pass 3 arguments, 
   the first will match LFOut in the head of the DGC clause
   the second is the list containing the words in the sentence
   the third is the empty list.
   Example:
     sentence(_Frame, Meaning, [every, man, that, paints, likes, monet], []) */

:- op(500, xfy, &).
:- op(50, xfx, +).
:- op(1000, xfy, =>).
:- op(1200, xfx, -->).
:- op(100, fx, '`').

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% examples/tests %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================

system:t33:- make, parser_bratko:forall((must_test_bratko(Sent, Type), Type\==ask), bratko(Sent)).

baseKB:sanity_test:- t33.

must_test_bratko("every man that paints likes monet", tell).
must_test_bratko("a woman that admires john paints", tell).
must_test_bratko("every woman that likes a man that admires monet paints", tell).
must_test_bratko("john likes annie", tell).
must_test_bratko("annie likes a man that admires monet", tell).
must_test_bratko("bertrand wrote principia", tell).
must_test_bratko("a author wrote principia", tell).
must_test_bratko("a happy author wrote principia", tell).
must_test_bratko("is bertrand an author", ask).
must_test_bratko("bertrand is an author", tell).
must_test_bratko("is bertrand an author", ask).
must_test_bratko("every author is a programmer", tell).
must_test_bratko("is bertrand an programmer", ask). % Just a sanity test
must_test_bratko("what did bertrand write", ask).
must_test_bratko("what is a book", ask).
must_test_bratko("what is a author", ask).
must_test_bratko("principia is a book", tell).
must_test_bratko("bertrand is bertrand", tell).
must_test_bratko("shrdlu halts", tell).
must_test_bratko("every student wrote a program", tell).
must_test_bratko("terry writes a program", tell).
must_test_bratko("terry writes a program that halts", tell).

must_test_bratko("an author of every book wrote a program", tell).
must_test_bratko("a man hapilly maried paints", tell).
must_test_bratko("a hapilly maried man paints", tell).
must_test_bratko("a man who knows paints", tell).
must_test_bratko("a man gives something", tell).
must_test_bratko("a man gives his word", tell).

must_test_bratko("a man of his word paints", tell).
must_test_bratko("a man paints", tell).
must_test_bratko("a man that paints paints", tell).
must_test_bratko("a man walks", tell).
must_test_bratko("a man that walks paints", tell).

must_test_bratko("a man of his word that walks paints", tell).
must_test_bratko("the cost of what the product is changes", tell).

must_test_bratko("ohad wrote nothing", tell).
must_test_bratko("bertrand wrote a book", tell).
must_test_bratko("bertand wrote", tell).
must_test_bratko("bertand wrote a book about gottlob", tell).
must_test_bratko("bertand wrote about gottlob", tell).
must_test_bratko("bertand wrote nothing about gottlob", tell).

must_test_bratko("what did alfred give to bertrand", ask).
must_test_bratko("alfred gave a book to bertrand", tell).
must_test_bratko("who did alfred give a book to", ask).


:- asserta(t_l:into_form_code).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% MAIN %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================

print_reply(Other) :-  fmt(Other).

%to_wordlist_atoms(Sentence, WordsA):- into_text80(Sentence, WordsA), !.
to_wordlist_atoms(Sentence, WordsA):- 
   to_word_list(Sentence, Words), 
   maplist(any_to_atom, Words, WordsA), !.


system:myb :- bratko.

:-export(bratko/0).
bratko :- locally(tracing80, 
             with_no_assertions(lmconf:use_cyc_database, 
                  locally(t_l:usePlTalk, (told, repeat, prompt_read('BRATKO> ', U), 
                            to_wordlist_atoms(U, WL), (WL==[bye];WL==[end, '_', of, '_', file];bratko(WL)))))).

:-export(bratko/1).
bratko(Sentence):- 
  to_wordlist_atoms(Sentence, Words), !, 
  fmt(sent_in_bratko(Words)), 
  bratko(Words, Reply),  
  print_reply(Reply).

:-export(bratko/2).
bratko(Sentence, Reply) :-
   deepen_pos(bratko_parse(Sentence, LF)), 
   show_call(bratko_clausify(LF, Clause)), !,  
   bratko_reply(Clause, Reply).
bratko(Sentence, 
   error('too difficult'(Sentence))).


bratko_parse(Sentence, LF):-  
  to_wordlist_atoms(Sentence, WL), 
  utterance(_How, LF, WL, []).


% bratko_reply a question
bratko_reply((answer(Answer) :- Condition), Reply) :-
 term_variables(Condition, Vars), 
 term_singletons(Answer+Vars, FreeVars), 
 Query = FreeVars^satisfy(Condition), 
 fmt(query(Answer, Query)), 
((baseKB:setof(Answer, Query, Answers)
 -> Reply = answer(Answers)
 ; (Answer == yes -> Reply = answer([no]) ; Reply = answer([none])))), !.
% bratko_reply an assertion
bratko_reply(Assertion, asserted(Assertion)) :-  baseKB:ain(Assertion),  !.
bratko_reply(_, error('unknown type')).


% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% CLAUSIFY %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
bratko_clausify(C, F):- bratko_clausify(C, F, _), !.
bratko_clausify(C, C).

% Universals
bratko_clausify(all(X, F0), F, [X|V]) :-  bratko_clausify(F0, F, V).
% Implications
bratko_clausify((A0 => C0), (A => C), V) :- clausify_antecedent(A0, A, V), clausify_literal(C0, C).
% Literals
bratko_clausify(C0, C, []):-  clausify_literal(C0, C).

% Literals
clausify_antecedent(L0, L, []):-  clausify_literal(L0, L).
% Conjunctions
clausify_antecedent(E0&F0, (E, F), V) :-  clausify_antecedent(E0, E, V0),  clausify_antecedent(F0, F, V1),  conc(V0, V1, V).
% Existentials
clausify_antecedent(exists(X, F0), F, [X|V]) :-  clausify_antecedent(F0, F, V).

% Verbatum
clausify_literal(L, L).


% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% Grammar %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
utterance(ask,  LF) -->     question(LF).
utterance(tell, LF) -->  declarative(LF).
utterance(act,  LF) -->   imperative(LF).

% =================================================================
% Imperative sentences
% =================================================================
imperative(do(X, LFOut)) --> verb_phrase(_NewFrame, X, LFOut), optionalText1([!]).

% =================================================================
% Declarative sentences
% =================================================================
declarative(LFOut) --> sentence(_NewFrame, LFOut), optionalText1([.]).

% Regular NP+VP
sentence(Frame, LFOut) --> noun_phrase(X, Assn, LFOut), verb_phrase(Frame, X, Assn).

% =================================================================
% Interogative sentences @TODO
% =================================================================

question(Q                     ) --> interogative(Q), optionalText1([?]).
% Questions
question(LFOut => answer(LFOut)) --> sentence(_NewFrame, LFOut), [?].


% "is joe walking" (Inverted sentences)
sentence_inv(X, LFOut) -->  aux(_Tense+fin/_Form, S0, LFOut), noun_phrase(X, Assn, S0), verb_phrase(_NewFrame, X, Assn).

% "What have you?"
% "who eats?"
% "What do you have?"
% "What do you think?"
% "How are you?"
% "How will you?"
interogative(LFOut => answer(X))   -->  whpron(X, LF, LFOut), verb_phrase(_NewFrame, X, LF). % verb Form be _Tense+fin
% "where is joe walking?"
interogative(LFOut => answer(X))   -->  whpron(X, LF, LFOut), sentence_inv(X, LF).  % was gap(noun_phrase, X)
% "could he think of it?"
interogative(LFOut => answer(yes)) -->  sentence_inv(_X, LFOut).  % was nogap

% @TODO
% "is joe a person?"
% "are you happy?"
% "Could the dog"
% interogative(LFOut => answer(yes)) -->  copula_is_does, noun_phrase((X^SO)^LFOut, nogap),   noun_phrase((X^true)^exists(X, SO & true), nogap).
         
% =================================================================
% Verb Phrase
% =================================================================
verb_phrase(_Frame, X, NounProp) --> [is], ([a];[an]), noun(X, NounProp).
verb_phrase(_Frame, X, equals(X, Y)) --> [is], proper_noun(Y).
verb_phrase(Frame, X, Assn) --> [is], verb_phrase(Frame, X, Assn).
verb_phrase(Frame, X, Out) --> verb_phrase1(Frame, X, Assn), dcg_s2(verb_post_mod(Frame), Assn, Out).

verb_phrase1(Frame, X, ~(Assn)) --> [not], verb_phrase(Frame, X, Assn).
verb_phrase1(Frame, X, LFOut) --> verb_mod_surround(Frame, trans_verb(Frame, X, Y, Assn1), Assn1, Assn2), noun_phrase(Y, Assn2, LFOut).
verb_phrase1(Frame, X, LFOut) --> verb_mod_surround(Frame, intrans_verb(Frame, X, Assn1), Assn1, LFOut).

:- discontiguous(talk_verb_lf/7).
trans_verb(_Frame, X, Y, z(like, X, Y)) --> [likes].
trans_verb(_Frame, X, Y, z(admire, X, Y)) --> [admires].
trans_verb(_Frame, X, Y, LF ) --> talk_verb(tv(X, Y), _Time, LF). % & isa(Frame, timeFn(Time)
%                      nonfinite, pres+fin, past+fin,  past+part,  pres+part,  LF
 talk_verb_lf(tv(X, Y), write,     writes,   wrote,     written,    writing,    z(writes, X, Y)).
 talk_verb_lf(tv(X, Y), meet,      meets,    met,       met,        meeting,    z(meets, X, Y)).
 talk_verb_lf(tv(X, Y), concern, concerns, concerned, concerned, concerning,    z(concerns, X, Y)).
 talk_verb_lf(tv(X, Y), run,      runs,       ran,         run,  running,       z(runs, X, Y)).
 talk_verb_lf(tv(X, Y), Write,     Writes,   Wrote,     Written,    Writing,    z(Writes, X, Y)) :-
   talk_db(transitive, Write, Writes, Wrote, Writing,  Written).


intrans_verb(_Frame, X, z(paint, X)) --> [paints].
intrans_verb(_Frame, X, z(wrote, X, _)) --> [wrote].
intrans_verb(_Frame, X, LF) --> talk_verb(iv(X), _Time, LF).
% fallback
intrans_verb(_Frame, X, LF) --> talk_verb(tv(X, _), _Time, LF).
%                nonfinite, pres+fin, past+fin,  past+part,  pres+part,  LF
 talk_verb_lf(iv(X), halt,      halts,    halted,    halted,     halting,   z(doing, X, halts)).
 talk_verb_lf(iv(X), Write,     Writes,   Wrote,     Written,    Writing,   z(doing, X, Writes)) :-
    talk_db(intransitive, Write, Writes, Wrote, Writing, Written).


% helper for talk_verb_lf/...
talk_verb(Type, nonfinite, LF) --> [IV], {talk_verb_lf(Type, IV, _, _, _, _, LF)}.
talk_verb(Type, pres+fin,  LF) --> [IV], {talk_verb_lf(Type, _, IV, _, _, _, LF)}.
talk_verb(Type, past+fin,  LF) --> [IV], {talk_verb_lf(Type, _, _, IV, _, _, LF)}.
talk_verb(Type, past+part, LF) --> [IV], {talk_verb_lf(Type, _, _, _, IV, _, LF)}.
talk_verb(Type, pres+part, LF) --> [IV], {talk_verb_lf(Type, _, _, _, _, IV, LF)}.


% @TODO
%                            nonfinite, pres+fin, past+fin,  past+part,  pres+part,  LF
talk_verb_lf(infinitival(X, Y), want, wants, wanted,    wanted,    wanting,   ((z(want, Y, X, Comp)&LFOut) & Comp & LFOut )).

%semantics is partially execution of
% NP ^VP ^Y ^NP(X want(Y, X, VP(X)))
%((X^ '`'(want(Y, X, Comp)))^LFOut) ^(X^Comp) ^Y ^LFOut, % form of VP required:
%infinitival).

% =================================================================
% Auxilary Forms
% =================================================================
aux(Form, LFIn, LFOut) --> [Aux], {aux_lf(Aux, Form, LFIn, LFOut)}.
aux_lf(to ,  infinitival/nonfinite , VP, VP).
aux_lf(does , _Tense+fin/nonfinite ,  VP, VP).
aux_lf(did ,  _Tense+fin/nonfinite ,  VP, VP).
aux_lf(to ,  _/_ , VP, VP).

copula_is_does --> [C], {copula_is_does(C)}.

copula_is_does(is).
copula_is_does(does).

% =================================================================
% Prepostional Phrase / Verb Satellites
% =================================================================
prepostional_phrase(X, _Frame, Prop1, about(X, Y) & Prop2) --> [about], noun_phrase(Y, Prop1, Prop2).
prepostional_phrase(X, _Frame, Prop1, prep(Prep, X, Y) & Prop2) --> {prep(Prep)}, [Prep], noun_phrase(Y, Prop1, Prop2).

prep(X):- talk_db(preposition, X).

verb_mod_surround(Frame, Verb, Assn1, Out) --> dcg_s2(verb_pre_mod(Frame), Assn1, AdvProps), Verb, 
                                               dcg_s2(verb_post_mod(Frame), AdvProps, Out).


adv_lf(X, Adv,  ISA) :- talk_db(adv, Adv), into_isa3(X, advFn(Adv), ISA).

verb_pre_mod(X, Assn, AdvLF & Assn) --> [Adv], {adv_lf(X, Adv, AdvLF)}.

verb_post_mod(Frame, LFIn, FLOut) -->  verb_pre_mod(Frame, LFIn, FLOut).
verb_post_mod(Frame, LFIn, FLOut) -->  prepostional_phrase(_X, Frame, LFIn, FLOut).


% =================================================================
% Noun Phrase
% =================================================================
% what the product is
noun_phrase(X, LF, what_is(Y, X) & LFOut) --> [what], noun_phrase1(Y, LF, LFOut), [is].
noun_phrase(X, LF, ownedBy(X, him) & LFOut) --> [his], dcg_push(some), noun_phrase1(X, LF, LFOut).
noun_phrase(X, LF, LFOut) --> noun_phrase1(X, LF, LFOut).

noun_phrase1(X, LF, ~exist(X, LF)) --> [nothing].
noun_phrase1(X, LF, exist(X, LF)) --> [something].
% some good food
noun_phrase1(X, LF, LFOut) -->
    determiner(X, Precond, LF, LFOut), 
    dcg_s2(noun_pre_mod(X), NounProp, AdjProps), 
    noun(X, NounProp), 
    dcg_s2(noun_post_mod(X), AdjProps, Precond).
% happy Jack
noun_phrase1(X, Assn, LFOut) --> dcg_s2(noun_pre_mod(X), Assn, LFOut), proper_noun(X).


% =================================================================
% Relational Clauses / Noun Satellites
% =================================================================

rel_clause(X, Prop1, Prop1 & Prop2) --> {relpron_dict(Who)}, [Who], verb_phrase(_NewFrame, X, Prop2).

  relpron_dict(that). relpron_dict(who). relpron_dict(whom).

determiner(Var, Prop, Assn, all(Var, (Prop => Assn))) --> [every];[all].
determiner(Var, Prop, Assn, exists(Var, Prop & Assn)) --> [a];[an];[some].
determiner(Var, Prop, Assn, exists(Var, the(Var) & Prop & Assn)) --> [the].
determiner(Var, Prop, Assn, ~exists(Var, Prop & Assn)) --> [no].

 adj_lf(X, Adj,  ISA) :- (adj_db(Adj, restr);talk_db(adj, Adj)), into_isa3(X, adjFn(Adj), ISA).

noun_pre_mod(X, Assn, AdjLF & Assn) --> [Adj], {adj_lf(X, Adj, AdjLF)}.
noun_pre_mod(X, Prop1, Prop2) --> near_noun_mod(X, Prop1, Prop2).

near_noun_mod(X, Prop1, hapilly_maried(X) & Prop1) --> [hapilly, maried].

noun_post_mod(X, Prop1, Prop2) --> [of], noun_phrase(Y, Prop1 & of(X, Y), Prop2).
noun_post_mod(X, Prop1, Prop2) --> [owned, by], noun_phrase(Y, Prop1 & ownedBy(X, Y), Prop2).
%noun_post_mod(X, Assn, LFOut)  --> prepostional_phrase(X, _Frame, Assn, LFOut).
noun_post_mod(X, Assn, LFOut)  --> rel_clause(X, Assn, LFOut).
noun_post_mod(X, Prop1, Prop2) --> near_noun_mod(X, Prop1, Prop2).


% =================================================================
%  Noun Units
% =================================================================
whpron(X, LF, LF & denotableBy(X,WH)) --> [WH], {whpron_dict(WH)}.

  whpron_dict(who).
  whpron_dict(whom).
  whpron_dict(what).
  whpron_dict(Which):- talk_db(pronoun, Which).

noun(X, ~something(X)) --> [nothing].
noun(X, something(X)) --> [something].
noun(X, LF) --> [N], {noun_lf(X, N, LF)}.

 noun_lf(X, Word,  ISA) :- (Word=Sing;Word=Plur), talk_db(noun1, Sing, Plur), into_isa3(X, Sing, ISA).
 noun_lf(X, Mass,  ISA) :- talk_db(noun2, Mass), into_isa3(X, Mass, ISA).
 noun_lf(X, Sing,  ISA) :- noun_dict(Sing), into_isa3(X, Sing, ISA).

  noun_dict(author). noun_dict(book). noun_dict(professor). noun_dict(program). 
  noun_dict(programmer). noun_dict(student). noun_dict(man). noun_dict(woman).


proper_noun(Entity) --> [PN], {pn_lf(PN, Entity)}.

   pn_lf(Name, Value) :- pn_dict(Name), Name = Value.

    pn_dict(begriffsschrift). pn_dict(bertrand). pn_dict(ohad). pn_dict(bill). pn_dict(gottlob).
    pn_dict(alfred). pn_dict(lunar). pn_dict(principia).  pn_dict(shrdlu). pn_dict(terry).
    pn_dict(john). pn_dict(annie). pn_dict(monet).
    pn_dict(Name ):- name_template_db(Name, _).


% =================================================================
% %%%%%%%%%%%%%%%%%%%%%  UTILS %%%%%%%%%%%%%%%%
% =================================================================

into_isa3(X, Y, isa(X, Y)).

conc([], L, L).
conc([H|T], L, [H|R]) :- conc(T, L, R).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% DCG UTILS %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================

% iterative deeping flag
plt --> [], {plt}.

% Push a new term onto DCG stack
dcg_push(A, S, [A|S]).

optionalText1(X) --> { length(X, L), L > 0, L < 33 } , X.
optionalText1(_) --> [].

dcg_s2(DCG2, In, Out) --> 
   {append_term(DCG2, In, DCG1), 
    append_term(DCG1, Mid, DCG0)},
   DCG0,
   dcg_s2(DCG2, Mid, Out).
dcg_s2(_, Same, Same) --> [].


:- retract(t_l:into_form_code).


:- context_module(CM), module_predicates_are_exported(CM).
:- context_module(CM), module_meta_predicates_are_transparent(CM).
% :- context_module(CM), module_property(CM, exports(List)), moo_hide_show_childs(List).




