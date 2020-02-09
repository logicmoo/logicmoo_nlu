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

:- '$hide'(lists:append(_,_,_)).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% examples/tests %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
:- use_module(library(make)).
:- use_module(library(check)).
:- abolish(check:list_undefined,0).
:- asserta((check:list_undefined:-!)).
%:- abolish(check:list_undefined,1).
%:- asserta((check:list_undefined(_):-!)).

system:t33:- make, t33a.
system:t33a:- parser_bratko:forall((must_test_bratko(Sent, Type), testing_bratko(Sent, Type)), bratko(Sent)).

testing_bratko(Sent, Type):- Type\==ask, into_text80(Sent,Words), \+ (Words = [not |_]).

baseKB:sanity_test:- t33.

:- export(must_test_bratko/2).
:- discontiguous(must_test_bratko/2).
must_test_bratko(S, _T) :- ground(S),!,bratko(S).
:- system:import(must_test_bratko/2).

must_test_bratko("a woman paints", quants).
must_test_bratko("one woman paints", quants).
must_test_bratko("no woman paints", quants).
must_test_bratko("some woman paints", quants).
must_test_bratko("every woman paints", quants).
must_test_bratko("each woman paints", quants).
must_test_bratko("any woman paints", quants).
must_test_bratko("the woman paints", quants).


must_test_bratko("the not woman paints", quants). % ?? The Good Place "the not a girl"

must_test_bratko("not a woman paints", quants). 
must_test_bratko("not one woman paints", quants).
must_test_bratko("not no woman paints", quants_neg_postcond).
must_test_bratko("not some woman paints", quants).  % ?? not just some woman paints
must_test_bratko("not every woman paints", quants).
must_test_bratko("not each woman paints", quants).
must_test_bratko("not any woman paints", quants).



must_test_bratko("the women paint", quants).

must_test_bratko("women paint", quants).
must_test_bratko("some women paint", quants).
must_test_bratko("no women paint", quants).
must_test_bratko("all women paint", quants).
must_test_bratko("any women paint", quants).

must_test_bratko("not women paint", quants).
must_test_bratko("not some women paint", quants).
must_test_bratko("not no women paint", quants).
must_test_bratko("not all women paint", quants).
must_test_bratko("not any women paint", quants).


must_test_bratko("the three women paint", quants).

must_test_bratko("three women paint", quants).
must_test_bratko("some three women paint", quants).
must_test_bratko("no three women paint", quants).
must_test_bratko("every three women paint", quants).
must_test_bratko("all three women paint", quants).
must_test_bratko("any three women paint", quants).

must_test_bratko("not three women paint", quants).
must_test_bratko("not some three women paint", quants).
must_test_bratko("not no three women paint", quants).
must_test_bratko("not all three women paint", quants).
must_test_bratko("not every three women paint", quants).
must_test_bratko("not any three women paint", quants).

must_test_bratko("i paint", pronoun).
must_test_bratko("you paint", pronoun).
must_test_bratko("we paint", pronoun).
must_test_bratko("none paint", pronoun).
must_test_bratko("they paint", pronoun).
must_test_bratko("some paint", pronoun).

must_test_bratko("it paints", pronoun).
must_test_bratko("he paints", pronoun).
must_test_bratko("she paints", pronoun).
must_test_bratko("someone paints", pronoun).

must_test_bratko("anybody paints", pronoun).
must_test_bratko("anyone paints", pronoun).
must_test_bratko("anything paints", pronoun).
must_test_bratko("everybody paints", pronoun).
must_test_bratko("everyone paints", pronoun).
must_test_bratko("everything paints", pronoun).
must_test_bratko("nobody paints", pronoun).
must_test_bratko("noone paints", pronoun).
must_test_bratko("nothing paints", pronoun).
must_test_bratko("one paints", pronoun).
must_test_bratko("somebody paints", pronoun).
must_test_bratko("something paints", pronoun).

must_test_bratko("not anybody paints", pronoun).
must_test_bratko("not anyone paints", pronoun).
must_test_bratko("not anything paints", pronoun).
must_test_bratko("not everybody paints", pronoun).
must_test_bratko("not everyone paints", pronoun).
must_test_bratko("not everything paints", pronoun).
must_test_bratko("not nothing paints", pronoun).
must_test_bratko("not one paints", pronoun).
must_test_bratko("not somebody paints", pronoun).
must_test_bratko("not something paints", pronoun).

must_test_bratko("she likes i", pronoun).
must_test_bratko("she likes me", pronoun).
must_test_bratko("she likes you", pronoun).
must_test_bratko("she likes it", pronoun).
must_test_bratko("she likes us", pronoun).
must_test_bratko("she likes them", pronoun).
must_test_bratko("she likes no one", pronoun).
must_test_bratko("she likes noone", pronoun).
must_test_bratko("she likes none", pronoun).
must_test_bratko("she likes her", pronoun).
must_test_bratko("she likes him", pronoun).
must_test_bratko("she likes herself", pronoun).
must_test_bratko("she likes himself", pronoun). % Maybe

must_test_bratko("it is us that paints", pronoun).
must_test_bratko("it is them that paints", pronoun).
must_test_bratko("it is he that paints", pronoun).
must_test_bratko("it is she that paints", pronoun).
must_test_bratko("it is her that paints", pronoun).
must_test_bratko("it is him that paints", pronoun).
must_test_bratko("it is everybody that paints", pronoun).

must_test_bratko("we are us that paint", pronoun).



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
must_test_bratko("bertrand wrote", tell).
must_test_bratko("bertrand wrote a book about gottlob", tell).
must_test_bratko("bertrand wrote about gottlob", tell).
must_test_bratko("bertrand wrote nothing about gottlob", tell).

must_test_bratko("what did alfred give to bertrand", ask).
must_test_bratko("alfred gave a book to bertrand", tell).
must_test_bratko("who did alfred give a book to", ask).

must_test_bratko("alfred gave it", tell).
must_test_bratko("alfred gave a book", tell).

must_test_bratko(S, _T) :- \+ ground(S),!,fail.

:- asserta(t_l:into_form_code).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% MAIN %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================

print_reply(Other) :-  quietly((pretty_numbervars(Other,O), fmt(O))).


system:myb :- bratko.

:-export(bratko/0).
bratko :- locally(tracing80,
             with_no_assertions(lmconf:use_cyc_database,
                  locally(t_l:usePlTalk, (told, repeat, prompt_read('BRATKO> ', U),
                            to_wordlist_atoms(U, WL), (WL==[bye];WL==[end, '_', of, '_', file];bratko(WL)))))).

% :-export(bratko/1).
system:bratko(Sentence):-
  setup_call_cleanup(notrace((to_wordlist_atoms(Sentence, Words), 
  fmt(bratko(Words)))),
  (brakto_0(Words, Reply), print_reply(Reply)),true).

:-export(bratko/2).
bratko(Sentence, Reply):-
 quietly(to_wordlist_atoms(Sentence, WL)),!,
 brakto_0(WL, Reply).

brakto_0(Sentence, Reply) :-
   % must_or_rtrace
   deepen_pos(bratko_parse0(Sentence, LF)), % deepen_pos?
   quietly((show_call(bratko_clausify(LF, Clause)),
   bratko_reply(Clause, Reply))),!.
brakto_0(Sentence,
   error('FAILED!!!!! small bug'(Sentence))).

bratko_parse(Sentence, LF):-
  quietly(to_wordlist_atoms(Sentence, WL)),!,
  bratko_parse0(WL, LF).

bratko_parse0(WL, LF):- utterance(_How, LF, WL, []).


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

conjoin_lf(LF1,LF2,Out):- notrace(conjoin_lf0(LF1,LF2,Out)).
conjoin_lf(LF1,LF2,Out,L,L):- notrace(conjoin_lf0(LF1,LF2,Out)).

%conjoin_lf0(LF1,LF2,Out):- assertion(nonvar(LF2)),assertion(nonvar(LF1)),fail.

conjoin_lf0(LF1,LF2,Out):- LF1==LF2,!,Out=LF1.
conjoin_lf0(LF1,LF2,Out):- conjoin_lf1(LF1,LF2,Out),!.
conjoin_lf0(LF2,LF1,Out):- conjoin_lf1(LF1,LF2,Out),!.
conjoin_lf0(LF1,LF2,Out):- compound(LF2),(LF2 = (LF2a & LF2b)), !, conjoin_lf0(LF1,LF2a,M), conjoin_lf0(M,LF2b,Out).
% conjoin_lf0(LF2,LF1,Out):- compound(LF2),(LF2 = (LF2a & LF2b)), !, conjoin_lf0(LF1,LF2a,M), conjoin_lf0(M,LF2b,Out).
conjoin_lf0(LF1,LF2,LF1&LF2):-!.

conjoin_lf1(LF1,LF2,Out):- LF2==true,!,Out=LF1.
conjoin_lf1(LF1,LF2,Out):- compound(LF2),LF2 = quant(X,exists), conjoin_lf0(LF1,v(X),Found), (LF1==Found -> Out = LF1 ; Out = exists(X,Found)).
conjoin_lf1(LF1,LF2,Out):- compound(LF2),LF2 = quant(X,all),conjoin_lf0(LF1,v(X),Found), (LF1==Found -> Out = LF1 ; Out = all(X,Found)).
conjoin_lf1(LF1,LF2,Out):- compound(LF2),subst(LF2,'_addto',(LF1&'_addto'),Out),LF2\==Out,!.
conjoin_lf1(LF1,LF2,Out):- conjoin_lf2(LF1,LF2,Out), !.

conjoin_lf2(LF1,LF2,(Out =>Post)):- compound(LF2), LF2 = precond(Add), compound(LF1), (LF1 = (Pre => Post)), !, conjoin_lf0(Pre,Add,Out).
conjoin_lf2(LF1,LF2,(Add => LF1)):- compound(LF2), LF2 = precond(Add).
conjoin_lf2(LF1,LF2,(Pre => Out)):- compound(LF1),(LF1 = (Pre => Post)), !, conjoin_lf0(Post,LF2,Out).
conjoin_lf2(LF1,LF2,exists(X,Out)):- compound(LF2),(LF2 = exists(X , Body)), !, conjoin_lf0(LF1,Body,Out).
conjoin_lf2(LF1,LF2,all(X,Out)):- compound(LF2), (LF2 = all(X , Body)), !, conjoin_lf0(LF1,Body,Out).


add_traits( X, T, LF, Out, L, L):- notrace(add_traits( X, T, LF, Out)).

add_traits(_X,V,LF,LF):- (var(V) ; V==[]) , !.
add_traits( X,[H|List],LF,LFO):- !,
  add_traits(X,H,LF,LFM),
  add_traits(X,List,LFM,LFO).
add_traits( X,H&List,LF,LFO):- !,
  add_traits(X,H,LF,LFM),
  add_traits(X,List,LFM,LFO).
add_traits( X, T, LF, Out):- trait_on( X, T, TLF), !, conjoin_lf(LF,TLF,Out).
add_traits(_X, TLF, LF,Out):- conjoin_lf(LF,TLF,Out).

%trait_on(X,sg,atMost(X,1)).
trait_on(_X,sg,true).
trait_on(X,pl,atLeast(X,2)).
% trait_on(X,Atom,Out):- atom(Atom), i_name(t,Atom,Value),into_isa3(X,Value,Out).
trait_on(X,Atom,Out):- atom(Atom),  into_isa3(X,Atom,Out).
trait_on(X,isa(Value),Prop):- !,trait_on(X,Value,Prop).
trait_on(_,gender(Var),true):- var(Var).
trait_on(X,gender(masc),Prop):- into_isa3(X,tMale,Prop).
trait_on(X,gender(fem),Prop):- into_isa3(X,tFemale,Prop).
trait_on(_,person(Var),true):- var(Var).
trait_on(X,person(N),denotableBy(X,Str)):- atom_concat(N,person,Str).
trait_on(X,denote(Any),denotableBy(X,Str)):- any_to_string(Any,Str).
trait_on(X,Str,denotableBy(X,Str)):- string(Str).
trait_on(X,Prop,Prop):- compound(Prop),sub_var(X,Prop). % arg(2,Prop,_).
trait_on(X,Prop,XProp):- compound(Prop),Prop=..[F,Arg2],XProp=..[F,X,Arg2],!.

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% Grammar %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
utterance(tell, LF) -->   !, declarative(LF).
utterance(ask,  LF) -->   quietly(question(LF)). % @TODO make this first (and remove the cut above)
utterance(act,  LF) -->   quietly(imperative(LF)).


% =================================================================
% Imperative sentences
% =================================================================
imperative(do(X, LFOut)) --> verb_phrase(_NewFrame, X, LFOut), optionalText1([!]),optionalText1([.]),nvd('Speaker',X).

% =================================================================
% Declarative sentences
% =================================================================
declarative(LFOut) --> sentence(_NewFrame, LFOut), optionalText1([.]).

% Regular NP+VP
sentence(Frame, LF) --> tag(Frame,sentence,LF),!.
sentence(Frame, LFOut) --> noun_phrase(X, LF, LFOut), verb_phrase(Frame, X, LF).

% =================================================================
% Interogative sentences @TODO
% =================================================================

question(Q                     ) --> tag(_NewFrame,question,Q),!.
question(Q                     ) --> interogative(Q), optionalText1([?]).
% Questions
question(LFOut => answer(LFOut)) --> sentence(_NewFrame, LFOut), [?].


% "is joe walking" (Inverted sentences)
sentence_inv(X, LFOut) -->  aux(_Tense+fin/_Form, S0, LFOut), noun_phrase(X, LF, S0), verb_phrase(_NewFrame, X, LF).

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
verb_phrase(Frame, X, AssnOut) --> is_be(X,NounProp,AssnOut), ([a];[an]), noun(X, NounProp),nvd(is,Frame).
verb_phrase(Frame, X, AssnOut) --> is_be(X,AdjProp,AssnOut), adjective(X, AdjProp),nvd(is,Frame).
verb_phrase(Frame, X, AssnOut) --> is_be(X,equals(X, Y),AssnOut), proper_noun(Y),nvd(is,Frame).

verb_phrase(Frame, X, AssnOut) --> is_be(X,LF,AssnOut), !, verb_phrase(Frame, X, LF).
verb_phrase(Frame, X, Out) --> verb_phrase1(Frame, X, LF),!, dcg_s2(verb_post_mod(X, Frame), LF, Out).

verb_phrase1(Frame, X, ~(LFOut)) --> [not], verb_phrase(Frame, X, LFOut).
verb_phrase1(Frame, X, LFOut) --> verb_mod_surround(X,Frame, trans_verb(Frame, X, Y, Assn1), Assn1, Assn2), noun_phrase(Y, Assn2, LFOut).
verb_phrase1(Frame, X, LFOut) --> verb_mod_surround(X,Frame, intrans_verb(Frame, X, Assn1), Assn1, LFOut).

:- discontiguous(talk_verb_lf/8).

make_time_info(Frame,  Time, z(Writing, X, Y), Out):- nonvar(Writing), !,
  toPropercase(Writing,ProperEvent),
  make_time_info(Frame,  Time, isa(Frame,ProperEvent) & doer(Frame,X) & objectOf(Frame,Y), Out).

make_time_info(Frame,  Time, z(Writing, X), Out):- nonvar(Writing), !,
  toPropercase(Writing,ProperEvent),
  make_time_info(Frame,  Time, isa(Frame,ProperEvent) & doer(Frame,X), Out).

make_time_info(Frame,  Time, LF, Out):- Time\==nonfinite, Time\== pres+fin, nvd(LF,Frame),
 conjoin_lf(LF , isa(Frame,timeFn(Time)),Out).
make_time_info(Frame,_Time, LF, LF):- nvd(LF,Frame).

trans_verb(Frame, X, Y, LFO) --> trans_verb1(Frame, Time, X, Y, LF), {make_time_info(Frame,Time,LF,LFO)}.

trans_verb1(_Frame, pres+fin, X, Y, z(painting, X, Y)) --> [paints].
trans_verb1(_Frame, pres+fin, X, Y, z(admiring, X, Y)) --> [admires].
trans_verb1(Frame, Time, X, Y, LF) --> talk_verb(Frame, IV, tv(X, Y), Time, LF), nvd(IV,Frame). % & isa(Frame, timeFn(Time)

% helper for talk_verb_lf/...
talk_verb(Frame, IV, Type, nonfinite, LF) --> [IV], {talk_verb_lf(Frame, Type, IV, _, _, _, _, LF)}.
talk_verb(Frame, IV, Type, pres+fin,  LF) --> [IV], {talk_verb_lf(Frame, Type, _, IV, _, _, _, LF)}.
talk_verb(Frame, IV, Type, past+fin,  LF) --> [IV], {talk_verb_lf(Frame, Type, _, _, IV, _, _, LF)}.
talk_verb(Frame, IV, Type, past+part, LF) --> [IV], {talk_verb_lf(Frame, Type, _, _, _, IV, _, LF)}.
talk_verb(Frame, IV, Type, pres+part, LF) --> [IV], {talk_verb_lf(Frame, Type, _, _, _, _, IV, LF)}.


%                           nonfinite, pres+fin, past+fin,  past+part,  pres+part,   LF
 talk_verb_lf(_Frame, tv(X, Y), meet,      meets,    met,       met,        meeting,    z(meeting, X, Y)).
 talk_verb_lf(_Frame, tv(X, Y), concern, concerns, concerned, concerned, concerning,    z(concerning, X, Y)).
 talk_verb_lf(_Frame, tv(X, Y), run,      runs,       ran,         run,  running,       z(running, X, Y)).
%talk_verb_lf(_Frame, tv(X, Y), write,     writes,   wrote,     written,    writing,    z(writing, X, Y)).
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
prepostional_phrase(X, _Frame, LF, TAG & LF) --> tag(X,pp,TAG),!.
prepostional_phrase(X, _Frame, LF, Out) --> {prep_dict(Prep)}, [Prep], noun_phrase(Y,prep(Prep, X, Y) & LF, Out).
prepostional_phrase(X, _Frame, LF, Out) --> [about], noun_phrase(Y, about(X, Y) & LF, Out).

   prep_dict(to).
   prep_dict(X):- talkdb:talk_db(preposition, X).



verb_mod_surround(X,Frame, Verb, Assn1, Out) -->
  dcg_s2(verb_pre_mod(Frame), Assn1, AdvProps),
  Verb,
  dcg_s2(verb_post_mod(X, Frame), AdvProps, Out).




verb_pre_mod(X, LF, Out) --> adverb(X, MProps), conjoin_lf(LF,MProps,Out).

% adverb(X, MProps) --> quietly(maybe_negated_dcg(adverb1(X), MProps)).
adverb(X, MProps) --> quietly(adverb1(X, MProps)).
adverb1(X, MProps)  -->      [Adv], {adv_lf(X, Adv, MProps)}.
 adv_lf(X, Adv,  ISA) :- talkdb:talk_db(adv, Adv), into_isa3(X, advFn(Adv), ISA).



verb_post_mod(X, Frame, LFIn, FLOut) -->  prepostional_phrase(X, Frame, LFIn, FLOut).


% =================================================================
% Noun Phrase
% =================================================================
% what the product is
noun_phrase(X, LF, Out) --> [what], noun_phrase1(Y, LF, LF0), [is], conjoin_lf(LF0 , what_is(Y, X), Out).
%poss_pron_db(his,masc,3,sg)  noun_phrase(X, LF, ownedBy(X, him) & LFOut) --> [his], dcg_push(some), noun_phrase1(X, LF, LFOut).
noun_phrase(X, LF0, LFOut) --> 
  [His],{poss_pron_db(His,Masc,Pers,SgOrpl)},
  add_traits(Y,[ownedBy(X, Y),gender(Masc),person(Pers),SgOrpl],LF0,LF),
  dcg_push(some), noun_phrase1(X, LF, LFOut).

noun_phrase(X, LF, LFOut) --> noun_phrase1(X, LF, LFOut).

dcg_must_each_det((G1,G2),S,E):- !, must(phrase(G1,S,M)),!,dcg_must_each_det(G2,M,E),!.
dcg_must_each_det(G,S,E):- must(phrase(G,S,E)),!.

:- discontiguous(noun_phrase1//3).
noun_phrase1(X, LF, ~exist(X, LF)) --> [nothing].
noun_phrase1(X, LF, exist(X, LF)) --> [something].

% it,she,we,them,everyone
noun_phrase1(X, LF, Out) -->  
  pronoun(X, LF, LF2),
  dcg_s2(noun_post_mod(X), LF2, Out).

  % some good food
noun_phrase1(X, LF, LFOut) -->
    determiner(X, DetProps),
    dcg_must_each_det((dcg_s2(noun_pre_mod(X), true, PreProps),
    noun(X, NounProps),
    dcg_s2(noun_post_mod(X), true, PostProps),
    conjoin_lf(NounProps,PreProps&PostProps,Precond),
    add_traits(X, DetProps, Precond, PrecondDet),  
    conjoin_lf(precond(PrecondDet),LF,LFOut))).

determiner(_Var, quant(all)) --> [every];[all];[each].
determiner(_Var, quant(exists)&numberOf(0)) --> [no];[zero].
determiner(_Var, quant(exists)&numberOf(1)) --> [one].
determiner(_Var, quant(exists)&numberOf(3)) --> [three].
determiner(_Var, quant(exists)&numberOf(N)) --> [nb(N)].
determiner( Var, quant(exists)&the(Var)) --> [the].
determiner(_Var, quant(exists)) --> [some];[any];[there,exists];[exists].
determiner(_Var, quant(exists)) --> [a];[an].


/*
determiner(Var, Prop, LF, all(Var, (Prop => LF))) --> [every];[all].
determiner(Var, Prop, LF, exists(Var, the(Var) & Prop & LF)) --> [the].
determiner(Var, Prop, LF, exists(Var, Prop & LF)) --> [a];[an];[some].
determiner(Var, Prop, LF, ~exists(Var, Prop & LF)) --> [no].
% some good food
noun_phrase1(X, LF, LFOut) -->
    determiner(X, Precond, LF, LFOut),
    dcg_s2(noun_pre_mod(X), NounProp, AdjProps),
    noun(X, NounProp),
    dcg_s2(noun_post_mod(X), AdjProps, Precond).
*/
% happy Jack
noun_phrase1(X, LF, LFOut) -->
   dcg_s2(noun_pre_mod(X), LF, LF),
   proper_noun(X),
   dcg_s2(noun_post_mod(X), LF, LFOut).


% =================================================================
% Relational Clauses / Noun Satellites
% =================================================================

rel_clause(X, LF, Out) --> {relpron_dict(Who)}, [Who], verb_phrase(_NewFrame, X, LF0), conjoin_lf(LF , LF0, Out).

  relpron_dict(that). relpron_dict(who). relpron_dict(whom).

adjective(X, MProps) --> quietly(maybe_negated_dcg(adjective1(X), MProps)).
adjective1(X, MProps)  -->      [Adj], {adj_lf(X, Adj, MProps)}.
 adj_lf(X, Adj,  ISA) :- (adj_db(Adj, restr);talkdb:talk_db(adj, Adj)), into_isa3(X, adjFn(Adj), ISA).

noun_pre_mod(X, LF, Out) --> adjective(X, MProps), conjoin_lf(LF,MProps,Out).
noun_pre_mod(X, LF, LF0) --> near_noun_mod(X, LF, LF0).

near_noun_mod(X, LF, Out) --> [hapilly, maried], conjoin_lf(LF , hapilly_maried(X), Out).

noun_post_mod(X, LF, Out) --> [of], noun_phrase(Y, LF, LF0),conjoin_lf(LF0, of(X, Y),Out).
noun_post_mod(X, LF, Out) --> [owned, by], noun_phrase(Y, LF & ownedBy(X, Y), Out).
%noun_post_mod(X, LF, LFOut)  --> prepostional_phrase(X, _Frame, LF, LFOut).
noun_post_mod(X, LF, LFOut)  --> rel_clause(X, LF, LFOut).
noun_post_mod(X, LF, LF0) --> near_noun_mod(X, LF, LF0).

% =================================================================
%  Word-level Negation
% =================================================================
must_test_bratko("terry writes a non-program", tell).
must_test_bratko("every nonhuman programmer writes a program", tell).
must_test_bratko("every human programmer writes a not a program", tell).

must_test_bratko("every human programmer happily writes a not a program", tell).

pos_or_neg(-) --> [not], plt,!,optionalText1(['a']), optionalText1(['an']).
pos_or_neg(-) --> [not].
pos_or_neg(-) --> [non], optionalText1(['-']).
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
 {quietly(append_term(DCGGoal1, PosLF, DCGGoal0))}, 
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
whpron(X, LF, Out) --> [WH], {whpron_dict(WH),nvd(WH,X),atom_string(WH,Str)}, 
  add_traits(X,denotableBy(X,pronounFn(Str)),LF,Out).

  whpron_dict(who).
  whpron_dict(whom).
  whpron_dict(what).
  whpron_dict(how).
  whpron_dict(Which):- talkdb:talk_db(pronoun, Which), atom_concat('w',_,Which).

% pers_pron_db
% pronoun_split('Something', upper, (a, '-thing'))

% noun(X, LF) --> [A, Thing],{ace_niceace:pronoun_split(S, lower, (A,Thing))},!,dcg_push(S),noun(X, LF).
pronoun(X, _LF, _Out) --> determiner(X,_),!,{fail}.
pronoun(X, LF, Out) --> [She], {pers_pron_db(She,Fem,Third,Sing,Subj),nvd(She,X),atom_string(She,Str)},
 add_traits(X,[denotableBy(X,pronounFn(Str)),gender(Fem),person(Third),Sing,v_arg(Subj)],LF, Out),!.

pronoun(X, LF, Out) --> [Nobody], {quantifier_pron_db(Nobody,No,Body),nvd(Nobody,X),atom_string(Nobody,Str)},
 add_traits(X,[denotableBy(X,pronounFn(Str)),quant(No),Body],LF, Out),!.

pronoun(X, LF, Out) --> [WH], {whpron_dict(WH),nvd(WH,X),atom_string(WH,Str)}, 
  add_traits(X,denotableBy(X,pronounFn(Str)),LF,Out).



 

noun(X, denotableBy(X,pronounFn(Str))) --> [WH], {pron_db(WH),nvd(WH,X),atom_string(WH,Str)}.
noun(X, denotableBy(X,pronounFn(Str))) --> [WH], {whpron_dict(WH),nvd(WH,X),atom_string(WH,Str)}.
noun(X, ~something(X)) --> [nothing], nvd(nothing,X).
noun(X, something(X)) --> [something],nvd(something,X).
noun(X, LF) --> maybe_negated_dcg(noun1(X), LF).

noun1(X, LF) --> [N], {noun_lf(X, N, LF)},nvd(N,X).

 noun_lf(X, Word,  Out) :-  
   (Word=Sing;Word=Plur), talkdb:talk_db(noun1, Sing, Plur),!,  
    ISA = Sing,
    (Sing==Plur -> add_traits(X,[ISA, denote(Word)],true,Out) ;
    (Word==Plur ->  add_traits(X,[ISA,pl],true,Out) ;
     add_traits(X,[ISA,sg],true,Out))).

 noun_lf(X, Mass,  Out) :- talkdb:talk_db(noun2, Mass), add_traits(X,[Mass, denote(Mass)],true,Out).
 noun_lf(X, Sing,  Out) :- noun_dict(Sing), add_traits(X,[Sing],true,Out).

  noun_dict(author). noun_dict(human). noun_dict(book). noun_dict(professor). noun_dict(program).
  noun_dict(programmer). noun_dict(student). noun_dict(man). noun_dict(woman).


proper_noun(Entity) --> quietly(([PN], {pn_lf(PN, Entity)})).

   pn_lf(Name, Value) :- pn_dict(Name),  i_name(i,Name,Value).

    pn_dict(Name):- toPropercase(Name,PC),PC==Name.
    pn_dict(begriffsschrift). pn_dict(bertrand). pn_dict(ohad). pn_dict(bill). pn_dict(gottlob).
    pn_dict(alfred). pn_dict(lunar). pn_dict(principia).  pn_dict(shrdlu). pn_dict(terry).
    pn_dict(john). pn_dict(annie). pn_dict(monet).
    pn_dict(Name):- name_template_db(Name, _).


% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% DCG UTILS %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
% plt --> quietly(([], {plt})).
plt(A, A):- notrace(plt).

quietly(DCG,S,E):- quietly(phrase(DCG,S,E)).

tag(Frame,Tag, isa(Frame,TAG)) --> {atomic(Tag)},!, [$, TAG],{downcase_atom(TAG,Start),atom_concat(Tag,_,Start)}.
tag(Frame,Cmp,N) --> {functor(Cmp,F,_)},tag(Frame,F,N).
% iterative deeping flag

% Push a new term onto DCG stack
dcg_push(List, S, ListS):- is_list(List),!,append(List,S,ListS).
dcg_push(A, S, [A|S]).

optionalText1(X) --> { length(X, L), L > 0, L < 33 } , X.
optionalText1(_) --> [].

dcg_s2(DCG2, In, Out) -->
   {notrace((append_term(DCG2, In, DCG1),
    append_term(DCG1, Mid, DCG0)))},
   DCG0,
   dcg_s2(DCG2, Mid, Out).
dcg_s2(_, Same, Same) --> [].

% nvd(N,X) --> quietly(( [], {nvd(N,X)})).
nvd(N, X, A, A):- notrace(nvd(N,X)).
% =================================================================
% %%%%%%%%%%%%%%%%%%%%%  UTILS %%%%%%%%%%%%%%%%
% =================================================================
nvd(N,X):- var(N),var(X),!.
nvd(N,X):- var(N),nonvar(X),!,nvd(X,N),!.
nvd(_,X):- nonvar(X),!.
nvd(N&_,X):- nonvar(N),!, nvd(N,X).
nvd(N,X):- compound(N), N=..[z,F|_],may_debug_var([F,'_Frame'],X).
nvd(N,X):- atom(N),name(N,Name),last(Name,C), \+ char_type(C,digit),!, gensym(N,NN),!,may_debug_var(NN,X),!. 
nvd(N,X):- may_debug_var(N,X),!. 

into_isa3(X, Y, isa(X, YY)):- atom(Y), (atom_concat('t',Name,Y)-> YY=Y; (toPropercase(Y,YY),Name=YY)), gensym(Name,VarName), nvd(VarName, X).
into_isa3(X, Y, isa(X, YY)):- compound(Y),Y=..[Fn,Word],atom_concat(_,'Fn',Fn),any_to_string(Word,Str),!,YY=..[Fn,Str].
into_isa3(X, Y, isa(X, Y)):-!. 

conc([], L, L).
conc([H|T], L, [H|R]) :- conc(T, L, R).

to_wordlist_atoms(Sentence, WordsA):- into_text80(Sentence, WordsA), !.
to_wordlist_atoms(Sentence, WordsA):-
   to_word_list(Sentence, Words),
   maplist(any_to_atom, Words, WordsA), !.



:- retract(t_l:into_form_code).


:- context_module(CM), module_predicates_are_exported(CM).
:- context_module(CM), module_meta_predicates_are_transparent(CM).
% :- context_module(CM), module_property(CM, exports(List)), moo_hide_show_childs(List).

:- fixup_exports.
