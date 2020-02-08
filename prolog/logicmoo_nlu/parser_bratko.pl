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

system:t33:- make, t33a.
system:t33a:- parser_bratko:forall((must_test_bratko(Sent, Type), Type\==ask), bratko(Sent)).

baseKB:sanity_test:- t33.

:- discontiguous(must_test_bratko/2).
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

must_test_bratko("bertrand wrote nothing", tell).
must_test_bratko("it halts", tell).
must_test_bratko("bertrand wrote a book", tell).

% passes the above and fails the below
must_test_bratko("bertand wrote", tell).
must_test_bratko("bertand wrote a book about gottlob", tell).
must_test_bratko("bertand wrote about gottlob", tell).
must_test_bratko("bertand wrote nothing about gottlob", tell).

must_test_bratko("what did alfred give to bertrand", ask).
must_test_bratko("alfred gave a book to bertrand", tell).
must_test_bratko("who did alfred give a book to", ask).

must_test_bratko("alfred gave it", tell).
must_test_bratko("alfred gave a book", tell).

:- asserta(t_l:into_form_code).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% MAIN %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================

print_reply(Other) :-  pretty_numbervars(Other,O), fmt(O).

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

% :-export(bratko/1).
system:bratko(Sentence):-
  to_wordlist_atoms(Sentence, Words), !,
  fmt(bratko(Words)),
  bratko(Words, Reply),
  print_reply(Reply).

:-export(bratko/2).
bratko(Sentence, Reply) :-
   deepen_pos(bratko_parse(Sentence, LF)),
   show_call(bratko_clausify(LF, Clause)), !,
   bratko_reply(Clause, Reply).
bratko(Sentence,
   error('FAILED!!!!! small bug'(Sentence))).


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
imperative(do(X, LFOut)) --> verb_phrase(_NewFrame, X, LFOut), optionalText1([!]),optionalText1([.]),nvd('Speaker',X).

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
verb_phrase(Frame, X, AssnOut) -->is_be(X,NounProp,AssnOut), ([a];[an]), noun(X, NounProp),nvd(is,Frame).
verb_phrase(Frame, X, AssnOut) --> is_be(X,AdjProp,AssnOut), adjective(X, AdjProp),nvd(is,Frame).
verb_phrase(Frame, X, AssnOut) --> is_be(X,equals(X, Y),AssnOut), proper_noun(Y),nvd(is,Frame).

verb_phrase(Frame, X, AssnOut) --> is_be(X,Assn,AssnOut), verb_phrase(Frame, X, Assn).
verb_phrase(Frame, X, Out) --> verb_phrase1(Frame, X, Assn), dcg_s2(verb_post_mod(Frame), Assn, Out).

verb_phrase1(Frame, X, ~(LFOut)) --> [not], verb_phrase(Frame, X, LFOut).
verb_phrase1(Frame, X, LFOut) --> verb_mod_surround(Frame, trans_verb(Frame, X, Y, Assn1), Assn1, Assn2), noun_phrase(Y, Assn2, LFOut).
verb_phrase1(Frame, X, LFOut) --> verb_mod_surround(Frame, intrans_verb(Frame, X, Assn1), Assn1, LFOut).

:- discontiguous(talk_verb_lf/8).

make_time_info(Frame,  Time, z(Writing, X, Y), Out):- nonvar(Writing), !,
  toPropercase(Writing,ProperEvent),
  make_time_info(Frame,  Time, isa(Frame,ProperEvent) & doer(Frame,X) & objectOf(Frame,Y), Out).

make_time_info(Frame,  Time, z(Writing, X), Out):- nonvar(Writing), !,
  toPropercase(Writing,ProperEvent),
  make_time_info(Frame,  Time, isa(Frame,ProperEvent) & doer(Frame,X), Out).

make_time_info(Frame,  Time, LF, LF & isa(Frame,timeFn(Time))):- Time\==nonfinite, Time\== pres+fin, nvd(LF,Frame).
make_time_info(Frame,_Time, LF, LF):- nvd(LF,Frame).

trans_verb(Frame, X, Y, LFO) --> trans_verb1(Frame, Time, X, Y, LF), {make_time_info(Frame,Time,LF,LFO)}.

trans_verb1(_Frame, pres+fin, X, Y, z(liking, X, Y)) --> [likes].
trans_verb1(_Frame, pres+fin, X, Y, z(admiring, X, Y)) --> [admires].
trans_verb1(Frame, Time, X, Y, LF) --> talk_verb(Frame, IV, tv(X, Y), Time, LF), nvd(IV,Frame). % & isa(Frame, timeFn(Time)
%                      nonfinite, pres+fin, past+fin,  past+part,  pres+part,   LF
 %talk_verb_lf(_Frame, tv(X, Y), write,     writes,   wrote,     written,    writing,    z(writing, X, Y)).
 talk_verb_lf(_Frame, tv(X, Y), meet,      meets,    met,       met,        meeting,    z(meeting, X, Y)).
 talk_verb_lf(_Frame, tv(X, Y), concern, concerns, concerned, concerned, concerning,    z(concerning, X, Y)).
 talk_verb_lf(_Frame, tv(X, Y), run,      runs,       ran,         run,  running,       z(running, X, Y)).
 talk_verb_lf(Frame, tv(X, Y), Write,     Writes,   Wrote,     Written,    Writing,    
                                           isa(Frame,ProperEvent)&doer(Frame,X)&MadeObj) :-
   talkdb:talk_db(transitive, Write, Writes, Wrote, Writing,  Written),
   toPropercase(Writing,ProperEvent),
   make_object(Frame,Written,Y,MadeObj).

make_object(Frame,Written,Y,MadeObj):- toPropercase(Written,Proper),atom_concat('object',Proper,Pred),MadeObj=..[Pred,Frame,Y].

intrans_verb(Frame, X, LFO) --> intrans_verb1(Frame, Time, X, LF), {make_time_info(Frame,Time,LF,LFO)}.

intrans_verb1(_Frame, pres+fin, X, z(painting, X)) --> [paints].
intrans_verb1(_Frame, past+fin, X, z(wrote, X, _)) --> [wrote].
intrans_verb1(Frame, Time, X, LF) --> talk_verb(Frame, IV, iv(X), Time, LF), nvd(IV,Frame).
% fallback
intrans_verb1(Frame, Time, X, LF) --> talk_verb(Frame, IV, tv(X, _), Time, LF), nvd(IV,Frame).

%                nonfinite, pres+fin, past+fin,  past+part,  pres+part,  LF
 talk_verb_lf(_Frame, iv(X), halt,      halts,    halted,    halted,     halting,  z(halting, X)).
 talk_verb_lf(Frame, iv(X), Write,     Writes,   Wrote,     Written,    Writing,   isa(Frame,ProperEvent)&doer(Frame,X)) :-
    toPropercase(Writing,ProperEvent),
    talkdb:talk_db(intransitive, Write, Writes, Wrote, Writing, Written).


% helper for talk_verb_lf/...
talk_verb(Frame, IV, Type, nonfinite, LF) --> [IV], {talk_verb_lf(Frame, Type, IV, _, _, _, _, LF)}.
talk_verb(Frame, IV, Type, pres+fin,  LF) --> [IV], {talk_verb_lf(Frame, Type, _, IV, _, _, _, LF)}.
talk_verb(Frame, IV, Type, past+fin,  LF) --> [IV], {talk_verb_lf(Frame, Type, _, _, IV, _, _, LF)}.
talk_verb(Frame, IV, Type, past+part, LF) --> [IV], {talk_verb_lf(Frame, Type, _, _, _, IV, _, LF)}.
talk_verb(Frame, IV, Type, pres+part, LF) --> [IV], {talk_verb_lf(Frame, Type, _, _, _, _, IV, LF)}.


% @TODO
%                            nonfinite, pres+fin, past+fin,  past+part,  pres+part,  LF
talk_verb_lf(_Frame, infinitival(X, Y), want, wants, wanted,    wanted,    wanting,   ((z(want, Y, X, Comp)&LFOut) & Comp & LFOut )).

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

is_be(_X,AssnOut,AssnOut) --> [is];[be].
is_be(X,NounProp,NounProp&atLeast(X,2)) --> [are].
is_be(_X,NounProp,holdsIn('vPast',NounProp)) --> [was].
is_be(X,NounProp,holdsIn('vPast',NounProp&atLeast(X,2))) --> [were].

copula_is_does --> [C], {copula_is_does_dict(C)}.

  copula_is_does_dict(is).
  copula_is_does_dict(does).

% =================================================================
% Prepostional Phrase / Verb Satellites
% =================================================================
prepostional_phrase(X, _Frame, Prop1, about(X, Y) & Prop2) --> [about], noun_phrase(Y, Prop1, Prop2).
prepostional_phrase(X, _Frame, Prop1, prep(Prep, X, Y) & Prop2) --> {prep_dict(Prep)}, [Prep], noun_phrase(Y, Prop1, Prop2).

   prep_dict(X):- talkdb:talk_db(preposition, X).



verb_mod_surround(Frame, Verb, Assn1, Out) -->
  dcg_s2(verb_pre_mod(Frame), Assn1, AdvProps),
  Verb,
  dcg_s2(verb_post_mod(Frame), AdvProps, Out).


 adv_lf(X, Adv,  ISA) :- talkdb:talk_db(adv, Adv), into_isa3(X, advFn(Adv), ISA).


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
% it
noun_phrase1(X, LF, exist(X, Out)) --> 
  dcg_s2(noun_pre_mod(X), LF, LF2),
  whpron(X,LF3,Out),
  dcg_s2(noun_post_mod(X), LF2, LF3).
% some good food
noun_phrase1(X, LF, LFOut) -->
    determiner(X, Precond, LF, LFOut),
    dcg_s2(noun_pre_mod(X), NounProp, AdjProps),
    noun(X, NounProp),
    dcg_s2(noun_post_mod(X), AdjProps, Precond).
% happy Jack
noun_phrase1(X, Assn, LFOut) -->
   dcg_s2(noun_pre_mod(X), Assn, LF),
   proper_noun(X),
   dcg_s2(noun_post_mod(X), LF, LFOut).


% =================================================================
% Relational Clauses / Noun Satellites
% =================================================================

rel_clause(X, Prop1, Prop1 & Prop2) --> {relpron_dict(Who)}, [Who], verb_phrase(_NewFrame, X, Prop2).

  relpron_dict(that). relpron_dict(who). relpron_dict(whom).

determiner(Var, Prop, Assn, all(Var, (Prop => Assn))) --> [every];[all].
determiner(Var, Prop, Assn, exists(Var, Prop & Assn)) --> [a];[an];[some].
determiner(Var, Prop, Assn, exists(Var, the(Var) & Prop & Assn)) --> [the].
determiner(Var, Prop, Assn, ~exists(Var, Prop & Assn)) --> [no].

adjective(X, AdjLF) --> maybe_negated_dcg(adjective1(X), AdjLF).
adjective1(X, AdjLF)  -->      [Adj], {adj_lf(X, Adj, AdjLF)}.
 adj_lf(X, Adj,  ISA) :- (adj_db(Adj, restr);talkdb:talk_db(adj, Adj)), into_isa3(X, adjFn(Adj), ISA).

noun_pre_mod(X, Assn, AdjLF & Assn) --> adjective(X, AdjLF).
noun_pre_mod(X, Prop1, Prop2) --> near_noun_mod(X, Prop1, Prop2).

near_noun_mod(X, Prop1, hapilly_maried(X) & Prop1) --> [hapilly, maried].

noun_post_mod(X, Prop1, Prop2) --> [of], noun_phrase(Y, Prop1 & of(X, Y), Prop2).
noun_post_mod(X, Prop1, Prop2) --> [owned, by], noun_phrase(Y, Prop1 & ownedBy(X, Y), Prop2).
%noun_post_mod(X, Assn, LFOut)  --> prepostional_phrase(X, _Frame, Assn, LFOut).
noun_post_mod(X, Assn, LFOut)  --> rel_clause(X, Assn, LFOut).
noun_post_mod(X, Prop1, Prop2) --> near_noun_mod(X, Prop1, Prop2).


% =================================================================
%  Word-level Negation
% =================================================================
must_test_bratko("terry writes a non-program", tell).
must_test_bratko("every nonhuman programmer writes a program", tell).
must_test_bratko("every human programmer writes a not a program", tell).

must_test_bratko("every human programmer happily writes a not a program", tell).

pos_or_neg(-) --> [not], optionalText1(['a']), optionalText1(['an']), [X], dcg_push(X).
pos_or_neg(-) --> [non], optionalText1(['-']), [X], dcg_push(X).
pos_or_neg(-) --> [Neg], {neg_to_pos(Neg,Pos)},!, dcg_push(Pos).
pos_or_neg(+) --> [].

neg_to_pos(UnHappy,  Happy) :- atom_concat('un', Happy, UnHappy).
neg_to_pos(InHumane, Humane):- atom_concat('in', Humane,InHumane).
neg_to_pos(NonHuman, Human) :- atom_concat('non-',Human, NonHuman).
neg_to_pos(NonHuman, Human) :- atom_concat('non',Human, NonHuman).
neg_to_pos(DisEnchanted, Enchanted) :- atom_concat('dis',Enchanted, DisEnchanted).

maybe_did_hack(PosLF, skipped, PosLF).
maybe_did_hack(PosLF, (-) ,   ~PosLF):-!.
maybe_did_hack(PosLF, (ly) ,   ly(PosLF)):-!.
maybe_did_hack(PosLF,_,        PosLF).

maybe_negated_dcg(DCGGoal1, LF) --> 
 {append_term(DCGGoal1, PosLF, DCGGoal0)}, 
  pos_or_neg(Did), !, DCGGoal0, 
 {maybe_did_hack(PosLF, Did, LF)}.

has_suffix(Ly, Ly) --> [DasterdLy], {atom_concat(Dasterd, Ly, DasterdLy)}, dcg_push(Dasterd).
has_suffix('ly', 'ly') --> [Happily], {atom_concat(Happ, 'ily', Happily),atom_concat(Happ, 'y', Happy)}, dcg_push(Happy).
has_suffix(_Ly, skipped) --> [].

maybe_suffixed_dcg(DCGGoal1, Suffix, LF) --> 
  {append_term(DCGGoal1, PosLF, DCGGoal0)}, 
   has_suffix(Suffix, Did), !, DCGGoal0, 
  {maybe_did_hack(PosLF, Did, LF)}.

% =================================================================
%  Noun Units
% =================================================================
whpron(X, LF, LF & denotableBy(X,pronounFn(Str))) --> [WH], {whpron_dict(WH),nvd(WH,X),atom_string(WH,Str)}.

  whpron_dict(who).
  whpron_dict(whom).
  whpron_dict(what).
  whpron_dict(Which):- talkdb:talk_db(pronoun, Which).

noun(X, denotableBy(X,pronounFn(Str))) --> [WH], {whpron_dict(WH),nvd(WH,X),atom_string(WH,Str)}.
noun(X, ~something(X)) --> [nothing], nvd(nothing,X).
noun(X, something(X)) --> [something],nvd(something,X).
noun(X, LF) --> maybe_negated_dcg(noun1(X), LF).

noun1(X, LF) --> [N], {noun_lf(X, N, LF)},nvd(N,X).
 noun_lf(X, Word,  ISA) :- (Word=Sing;Word=Plur), talkdb:talk_db(noun1, Sing, Plur), into_isa3(X, Sing, ISA).
 noun_lf(X, Mass,  ISA) :- talkdb:talk_db(noun2, Mass), into_isa3(X, Mass, ISA).
 noun_lf(X, Sing,  ISA) :- noun_dict(Sing), into_isa3(X, Sing, ISA).

  noun_dict(author). noun_dict(human). noun_dict(book). noun_dict(professor). noun_dict(program).
  noun_dict(programmer). noun_dict(student). noun_dict(man). noun_dict(woman).


proper_noun(Entity) --> [PN], {pn_lf(PN, Entity)}.

   pn_lf(Name, Value) :- pn_dict(Name),  i_name(i,Name,Value).

    pn_dict(begriffsschrift). pn_dict(bertrand). pn_dict(ohad). pn_dict(bill). pn_dict(gottlob).
    pn_dict(alfred). pn_dict(lunar). pn_dict(principia).  pn_dict(shrdlu). pn_dict(terry).
    pn_dict(john). pn_dict(annie). pn_dict(monet).
    pn_dict(Name ):- name_template_db(Name, _).


% =================================================================
% %%%%%%%%%%%%%%%%%%%%%  UTILS %%%%%%%%%%%%%%%%
% =================================================================

into_isa3(X, Y, isa(X, YY)):- atom(Y), toPropercase(Y,YY), gensym(YY,VarName), nvd(VarName, X).
into_isa3(X, Y, isa(X, YY)):- compound(Y),Y=..[Fn,Word],atom_concat(_,'Fn',Fn),any_to_string(Word,Str),!,YY=..[Fn,Str].
into_isa3(X, Y, isa(X, Y)):-!. 

conc([], L, L).
conc([H|T], L, [H|R]) :- conc(T, L, R).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% DCG UTILS %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
nvd(N,X) --> [], {nvd(N,X)}.
nvd(N,X):- var(N),var(X),!.
nvd(N,X):- var(N),nonvar(X),!,nvd(X,N),!.
nvd(_,X):- nonvar(X),!.
nvd(N&_,X):- nonvar(N),!, nvd(N,X).
nvd(N,X):- compound(N), N=..[z,F|_],may_debug_var([F,'_Frame'],X).
nvd(N,X):- atom(N),name(N,Name),last(Name,C), \+ char_type(C,digit),!, gensym(N,NN),!,may_debug_var(NN,X),!. 
nvd(N,X):- may_debug_var(N,X),!. 

% iterative deeping flag
plt --> [], {plt}.

% Push a new term onto DCG stack
dcg_push(List, S, ListS):- is_list(List),!,append(List,S,ListS).
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


