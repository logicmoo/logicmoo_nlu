% ===================================================================
% File 'parser_e2c.pl'
% Purpose: English to KIF conversions from SWI-Prolog
% This implementation is incomplete
% Maintainer: Douglas Miles
% Contact: $Author: dmiles $users.sourceforge.net ;
% Version: 'parser_e2c.pl' 1.0.0
% Revision:  $Revision: 1.3 $
% Revised At:   $Date: 2012/06/06 15:43:15 $
% ===================================================================

:-module(parser_e2c,[]).
/* from Bratko chapter 17 page 455.
   This comes from Pereira and Warren paper,AI journal,1980 */

/* this is to define infix operators  and their argument precedence
   x represents an argument whose precedence is strictly lower than that
   of the operator. y represents an argument whose precedence is lower
   or equal than that of the operator. */
%:- op(100,xfy,and).
%:- op(150,xfx,'=>').

/* when using sentence we need to pass 3 arguments,
   the first will match LFOut in the head of the DGC clause
   the second is the list containing the words in the sentence
   the third is the empty list.
   Example:
     sentence(_Frame, Meaning, [every, man, that, paints, likes, monet], []) */

:- op(500,xfy,&).
:- op(50,xfx,+).
:- op(1000,xfy,=>).
:- op(1200,xfx,-->).
:- op(100,fx,'`').

:- ensure_loaded(library(lists)).
:- '$hide'(lists:append(_,_,_)).
:- ensure_loaded(library(globals_api)).
:- ensure_loaded(library(dictoo_lib)).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% examples/tests %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================

system:t33:- make,t33a.
system:t33a:- parser_e2c:forall((must_test_bratko(Sent,Type),Type\==ask),bratko(Sent)).

baseKB:sanity_test:- t33.

:- export(must_test_bratko/2).
:- discontiguous(must_test_bratko/2).
must_test_bratko(S,_T) :- ground(S),!,bratko(S).
:- system:import(must_test_bratko/2).

must_test_bratko("every man that paints likes monet",tell).
must_test_bratko("a woman that admires john paints",tell).
must_test_bratko("every woman that likes a man that admires monet paints",tell).
must_test_bratko("john likes annie",tell).
must_test_bratko("annie likes a man that admires monet",tell).
must_test_bratko("bertrand wrote principia",tell).
must_test_bratko("a author wrote principia",tell).
must_test_bratko("a happy author wrote principia",tell).
must_test_bratko("is bertrand an author",ask).
must_test_bratko("bertrand is an author",tell).
must_test_bratko("is bertrand an author",ask).
must_test_bratko("every author is a programmer",tell).
must_test_bratko("is bertrand an programmer",ask). % Just a sanity test
must_test_bratko("what did bertrand write",ask).
must_test_bratko("what is a book",ask).
must_test_bratko("what is a author",ask).
must_test_bratko("principia is a book",tell).
must_test_bratko("bertrand is bertrand",tell).
must_test_bratko("shrdlu halts",tell).
must_test_bratko("every student wrote a program",tell).
must_test_bratko("terry writes a program",tell).
must_test_bratko("terry writes a program that halts",tell).

must_test_bratko("an author of every book wrote a program",tell).
must_test_bratko("a man hapilly maried paints",tell).
must_test_bratko("a hapilly maried man paints",tell).
must_test_bratko("a man who knows paints",tell).
must_test_bratko("a man gives something",tell).
must_test_bratko("a man gives his word",tell).

must_test_bratko("a man of his word paints",tell).
must_test_bratko("a man paints",tell).
must_test_bratko("a man that paints paints",tell).
must_test_bratko("a man walks",tell).
must_test_bratko("a man that walks paints",tell).

must_test_bratko("a man of his word that walks paints",tell).
must_test_bratko("the cost of what the product is changes",tell).

must_test_bratko("bertrand wrote nothing",tell).
must_test_bratko("it halts",tell).
must_test_bratko("bertrand wrote a book",tell).

% passes the above and fails the below
must_test_bratko("bertrand wrote",tell).
must_test_bratko("bertrand wrote a book about gottlob",tell).
must_test_bratko("bertrand wrote about gottlob",tell).
must_test_bratko("bertrand wrote nothing about gottlob",tell).

must_test_bratko("what did alfred give to bertrand",ask).
must_test_bratko("alfred gave a book to bertrand",tell).
must_test_bratko("who did alfred give a book to",ask).

must_test_bratko("alfred gave it",tell).
must_test_bratko("alfred gave a book",tell).


:- thread_local(t_l:into_form_code/0).
:- asserta(t_l:into_form_code).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% MAIN %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================

print_reply(Other) :-  pretty_numbervars(Other,O),fmt(O).


system:myb :- bratko.

:-export(bratko/0).
bratko :- locally(tracing80,
             with_no_assertions(lmconf:use_cyc_database,
                  locally(t_l:usePlTalk,(told,repeat,prompt_read('BRATKO> ',U),
                            to_wordlist_atoms(U,WL),(WL==[bye];WL==[end,'_',of,'_',file];bratko(WL)))))).

% :-export(bratko/1).
system:bratko(Sentence):-
  quietly((to_wordlist_atoms(Sentence,Words),
  fmt(bratko(Words)))),
  bratko(Words,Reply),
  print_reply(Reply).

:-export(bratko/2).
bratko(Sentence,Reply) :-
   % must_or_rtrace
   deepen_pos(bratko_parse(Sentence, LF)), % deepen_pos?
   show_call(bratko_clausify(LF, Clause)), !,
   bratko_reply(Clause,Reply).
bratko(Sentence,
   error('FAILED!!!!! small bug'(Sentence))).


bratko_parse(Sentence, LF):-
  quietly(to_wordlist_atoms(Sentence,WL)),
  utterance(_How, LF, WL, []).


% bratko_reply a question
bratko_reply((answer(Answer) :- Condition),Reply) :-
 term_variables(Condition,Vars),
 term_singletons(Answer+Vars,FreeVars),
 Query = FreeVars^satisfy(Condition),
 fmt(query(Answer,Query)),
((baseKB:setof(Answer,Query,Answers)
 -> Reply = answer(Answers)
 ; (Answer == yes -> Reply = answer([no]) ; Reply = answer([none])))),!.
% bratko_reply an assertion
bratko_reply(Assertion,asserted(Assert)) :-  
 frame_lf(Assertion,Assert), baseKB:ain(Assert),!.
bratko_reply(_,error('unknown type')).



/*
make_time_info(Frame,z(Writing),Frame):- nonvar(Writing),!,
  toPropercase(Writing,ProperEvent),
  make_time_info(Frame,isa($event,ProperEvent)&doer(Frame,X)&objectOf(Frame,Y),Frame).

make_time_info(Frame,z(Writing,X),Frame):- nonvar(Writing),!,
  toPropercase(Writing,ProperEvent),
  make_time_info(Frame,isa(ProperEvent)&doer(Frame,X),Frame).

make_time_info(Frame,isa(Frame,timeFn(Frame))):- Frame\==nonfinite,Frame\== pres+fin,nvd(Frame).
make_time_info(Frame):- nvd(Frame).
*/

frame_lf(Assertion,Assert):- attvar(Assertion),
   fr_get(Assertion,preconds,Pre),
   fr_get(Assertion,postconds,Conds),
   (Pre==true ->  Assert = Conds ; Assert = (Pre=>Conds)),!.
frame_lf(Assertion,Assertion).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% CLAUSIFY %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
bratko_clausify(C,F):- bratko_clausify(C,F,_),!.
bratko_clausify(C,C).

bratko_clausify(C,F):- var(C),frame_lf(C,F),!.
% Universals
bratko_clausify(all(X, F0), F, [X|V]) :-  bratko_clausify(F0, F, V).
% Implications
bratko_clausify((A0 => C0),(A => C),V) :- clausify_antecedent(A0,A,V),clausify_literal(C0,C).
% Literals
bratko_clausify(C0,C,[]):-  clausify_literal(C0,C).


% Var Lit
clausify_antecedent(L0,L,[]):- var(L0), !, clausify_literal(L0,L).
% Existentials
clausify_antecedent(exists(X, F0), F, [X|V]) :- !, clausify_antecedent(F0, F, V).
% Conjunctions
clausify_antecedent(E0&F0,(E,F),V) :-  clausify_antecedent(E0,E,V0),clausify_antecedent(F0,F,V1),conc(V0,V1,V).
% Literals
clausify_antecedent(L0,L,[]):-  clausify_literal(L0,L).

% Verbatum
clausify_literal(L,L).


% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% Grammar %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
utterance(ask,  LF) -->     quietly(question(LF)).
utterance(tell, LF) -->  declarative(LF).
utterance(act,  LF) -->   quietly(imperative(LF)).


% =================================================================
% Imperative sentences
% =================================================================
imperative(Frame) --> verb_phrase(Frame),optionalText1([!]),optionalText1([.]),
  push_lf(Frame,do($subject,Frame)), frame_get(Frame,$subject,X), nvd('Speaker',X).

% =================================================================
% Declarative sentences
% =================================================================
declarative(Frame) --> sentence(Frame),optionalText1([.]).

% Regular NP+VP
sentence(Frame) --> tag(Frame,sentence),!.
sentence(Frame) --> noun_phrase(Frame),verb_phrase(Frame).

% =================================================================
% Interogative sentences $TODO
% =================================================================

question(Q                     ) --> tag(Q,question),!.
question(Q                   ) --> interogative(Q),optionalText1([?]).
% Questions
question(Frame=> answer(Frame)) --> sentence(Frame),[?].


% "is joe walking" (Inverted sentences)
sentence_inv(Frame) -->  aux(_Tense+fin/_Form,Frame),noun_phrase(Frame),verb_phrase(Frame).

% "What have you?"
% "who eats?"
% "What do you have?"
% "What do you think?"
% "How are you?"
% "How will you?"
interogative(Frame=> answer(X))   -->  whpron(Frame),verb_phrase(Frame), frame_get(Frame,$subject,X). % verb Form be _Tense+fin
% "where is joe walking?"
interogative(Frame=> answer(X))   -->  whpron(Frame),sentence_inv(Frame),  frame_get(Frame,$subject,X).  % was gap(noun_phrase,X)
% "could he think of it?"
interogative(Frame=> answer(yes)) -->  sentence_inv(Frame).  % was nogap


% TODO
% "is joe a person?"
% "are you happy?"
% "Could the dog"
% interogative(Frame=> answer(yes)) -->  copula_is_does,noun_phrase(Frame,(X^SO)^Frame,nogap), noun_phrase(Frame,(X^true)^exists( SO&true),nogap).

% =================================================================
% Verb Phrase
% =================================================================
verb_phrase(Frame) --> is_be(Frame),([a];[an]),noun(Frame),nvd(is,Frame).
verb_phrase(Frame) --> is_be(Frame),adjective(Frame),nvd(is,Frame).
verb_phrase(Frame) --> is_be(Frame),proper_noun(Frame),nvd(is,Frame),push_lf(Frame,equals($target,$object)).

verb_phrase(Frame) --> is_be(Frame),verb_phrase(Frame).
verb_phrase(Frame) --> verb_phrase1(Frame),dcg_s2(verb_post_mod,Frame).

verb_phrase1(Frame) --> [not],verb_phrase(Frame2),{negate_frame(Frame2,Neg)},push_lf(Frame,Neg).

verb_phrase1(Frame) --> verb_mod_surround(trans_verb(Frame),Frame),noun_phrase(Frame).
verb_phrase1(Frame) --> verb_mod_surround(intrans_verb(Frame),Frame).

:- discontiguous(talk_verb_lf/8).

trans_verb(Frame) --> trans_verb1(Frame).

trans_verb1(Frame) --> [paints], push_lf(Frame,isa($event,'Liking')&isa($event,timeFn("pres+fin"))).
trans_verb1(Frame) --> [admires], push_lf(Frame,isa($event,'Admiring')&isa($event,timeFn("pres+fin"))).
trans_verb1(Frame) --> talk_verb(Frame,IV,tv,Time,LF),push_lf(Frame,LF&isa($event,timeFn(Time))),nvd(IV,Frame). %&
%                      nonfinite,pres+fin,past+fin,past+part,pres+part,Frame
 %talk_verb_lf(Frame,tv,write,   writes, wrote,   written,  writing,  z(writing)).
 talk_verb_lf(_Frame,tv,meet,    meets,  met,     met,      meeting,  z(meeting)).
 talk_verb_lf(_Frame,tv,concern,concerns,concerned,concerned,concerning,  z(concerning)).
 talk_verb_lf(_Frame,tv,run,    runs,     ran,       run,running,     z(running)).
 talk_verb_lf(Frame,tv,Write,   Writes, Wrote,   Written,  Writing,  
                                           isa($event,ProperEvent)&doer($event,$subject)&MadeObj) :-
   talkdb:talk_db(transitive,Write,Writes,Wrote,Writing,Written),
   toPropercase(Writing,ProperEvent),
   make_object(Frame,Written,$object,MadeObj).

make_object(Frame,Written,Y,MadeObj):- toPropercase(Written,Proper),atom_concat('object',Proper,Pred),MadeObj=..[Pred,Frame,Y].

intrans_verb(Frame) --> intrans_verb1(Frame).

intrans_verb1(Frame) --> [paints], push_lf(Frame,isa($event,'Painting')&isa($event,timeFn("pres+fin"))).
intrans_verb1(Frame) -->  [wrote], push_lf(Frame,isa($event,'Writing')&isa($event,timeFn("past+fin"))).
intrans_verb1(Frame) -->  talk_verb(Frame,IV,iv,Time,LF),push_lf(Frame,LF&isa($event,timeFn(Time))),nvd(IV,Frame).
% fallback
intrans_verb1(Frame) -->  talk_verb(Frame,IV,tv,Time,LF),push_lf(Frame,LF&isa($event,timeFn(Time))),nvd(IV,Frame).

%                nonfinite,pres+fin,past+fin,past+part,pres+part,Frame
 talk_verb_lf(_Frame,iv(X),halt,    halts,  halted,  halted,   halting,z(halting,X)).
 talk_verb_lf(Frame,iv(X),Write,   Writes, Wrote,   Written,  Writing, isa(ProperEvent)&doer(Frame,X)) :-
    toPropercase(Writing,ProperEvent),
    talkdb:talk_db(intransitive,Write,Writes,Wrote,Writing,Written).


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
aux(Form,Frame) --> [Aux],{aux_lf(Aux,Form,Frame,Frame)}.
 aux_lf(to ,infinitival/nonfinite ,VP,VP).
 aux_lf(does ,_Tense+fin/nonfinite ,VP,VP).
 aux_lf(did ,_Tense+fin/nonfinite ,VP,VP).
 aux_lf(to ,_/_ ,VP,VP).

is_be(_Frame) --> [is];[be].
is_be(Frame) --> [are],push_lf(Frame,atLeast($target,2)).
is_be(Frame) --> [was],push_lf(Frame,holdsIn('vPast',$event)).
is_be(Frame) --> [were],push_lf(Frame,atLeast($target,2)),push_lf(Frame,holdsIn('vPast',$event)).

copula_is_does --> [C],{copula_is_does_dict(C)}.

  copula_is_does_dict(is).
  copula_is_does_dict(does).

% =================================================================
% Prepostional Phrase / Verb Satellites
% =================================================================
%prepostional_phrase(Frame) --> tag(Frame,pp),!.
prepostional_phrase(Frame) --> [about], noun_phrase(about,Frame).
prepostional_phrase(Frame) --> {prep_dict(Prep)},[Prep],frame_set(Frame,$target,Prep),noun_phrase(Frame).

   prep_dict(X):- talkdb:talk_db(preposition,X).


:- meta_predicate(verb_mod_surround(2,+,+,+)).
verb_mod_surround(Verb,Frame) -->
  dcg_s2(verb_pre_mod,Frame),
  Verb,
  dcg_s2(verb_post_mod,Frame).


      adv_lf( Adv,ISA) :- talkdb:talk_db(adv,Adv),into_isa3($target,advFn(Adv),ISA).

verb_pre_mod(Frame) --> quietly(maybe_negated_dcg(adverb1,ISA)),push_lf(Frame,ISA).

adverb1(ISA) --> [Adv],{adv_lf( Adv,ISA)}.

% verb_post_mod(Frame) -->  verb_pre_mod(Frame).
verb_post_mod(Frame) -->  prepostional_phrase(Frame).

% =================================================================
% Noun Phrase
% =================================================================
% what the product is

noun_phrase(Target, Frame) --> frame_set(Frame,target,Target),noun_phrase(Frame).
noun_phrase(Frame) --> noun_phrase1(Frame).
noun_phrase(Frame) --> [what],noun_phrase1(Frame2),[is],
  fr_get(Frame,target,Targ),fr_get(Frame,Targ,X),
  fr_get(Frame2,target,Targ2),fr_get(Frame2,Targ2,Y),
  push_lf(Frame,what_is(Y,X)),push_lf(Frame,Frame2).

%,ownedBy( him)
%noun_phrase(Frame) --> [his],dcg_push(some),noun_phrase1(Frame).


noun_phrase1(Frame) --> [nothing],push_lf(Frame,~exist($target)).
noun_phrase1(Frame) --> [something],push_lf(Frame,exist($target)).
% some good food
noun_phrase1(Frame) -->
    determiner(Frame),
    dcg_s2(noun_pre_mod,Frame),
    noun(Frame),
    dcg_s2(noun_post_mod,Frame).
% it
noun_phrase1(Frame) --> 
  dcg_s2(noun_pre_mod,Frame),
  whpron(Frame),
  dcg_s2(noun_post_mod,Frame).
% happy Jack
noun_phrase1(Frame) -->
   dcg_s2(noun_pre_mod,Frame),
   proper_noun(Frame),
   dcg_s2(noun_post_mod,Frame).


% =================================================================
% Relational Clauses / Noun Satellites
% =================================================================

rel_clause(Frame) --> {relpron_dict(Who)},[Who],verb_phrase(Frame).

  relpron_dict(that). relpron_dict(who). relpron_dict(whom).

determiner(Frame) --> determiner($target, $precond, $postconds, LF),{functor(LF,F,_)},push_lf(Frame,det(F)).

determiner(Var, Prop, Assn, all(Var, (Prop => Assn))) --> [every];[all].
determiner(Var, Prop, Assn, exists(Var, Prop & Assn)) --> [a];[an];[some].
determiner(Var, Prop, Assn, exists(Var, the(Var) & Prop & Assn)) --> [the].
determiner(Var, Prop, Assn, ~exists(Var, Prop & Assn)) --> [no].

adjective(Frame) --> quietly(maybe_negated_dcg(adjective1,ISA)),push_lf(Frame,ISA).
adjective1(ISA)  -->      [Adj],{adj_lf( Adj,ISA)}.

 adj_lf( Adj,ISA) :- (adj_db(Adj,restr);talkdb:talk_db(adj,Adj)),into_isa3($target, adjFn(Adj),ISA).

noun_pre_mod(Frame) --> adjective(Frame).
noun_pre_mod(Frame) --> near_noun_mod(Frame).

near_noun_mod(Frame) --> [hapilly,maried], push_lf(Frame,hapilly_maried($target)).

noun_post_mod(Frame) --> [of],noun_phrase(of,Frame).
noun_post_mod(Frame) --> [owned,by],noun_phrase(ownedBy,Frame).
%noun_post_mod(Frame)  --> prepostional_phrase(Frame).
noun_post_mod(Frame)  --> rel_clause(Frame).
noun_post_mod(Frame) --> near_noun_mod(Frame).


% =================================================================
%  Word-level Negation
% =================================================================
must_test_bratko("terry writes a non-program",tell).
must_test_bratko("every nonhuman programmer writes a program",tell).
must_test_bratko("every human programmer writes a not a program",tell).

must_test_bratko("every human programmer happily writes a not a program",tell).

pos_or_neg(-) --> [not],plt,!,optionalText1(['a']),optionalText1(['an']).
pos_or_neg(-) --> [not].
pos_or_neg(-) --> [non],optionalText1(['-']).
pos_or_neg(-) --> [Neg],{neg_to_pos(Neg,Pos)},!,dcg_push(Pos).
pos_or_neg(+) --> [].

neg_to_pos(UnHappy,Happy) :- atom_concat('un',Happy,UnHappy).
neg_to_pos(InHumane,Humane):- atom_concat('in',Humane,InHumane).
neg_to_pos(NonHuman,Human) :- atom_concat('non-',Human,NonHuman).
neg_to_pos(NonHuman,Human) :- atom_concat('non',Human,NonHuman).
neg_to_pos(DisEnchanted,Enchanted) :- atom_concat('dis',Enchanted,DisEnchanted).

maybe_did_hack(PosLF,skipped,PosLF).
maybe_did_hack(PosLF,(-) , ~PosLF):-!.
maybe_did_hack(PosLF,(ly) , ly(PosLF)):-!.
maybe_did_hack(PosLF,_,      PosLF).

maybe_negated_dcg(DCGGoal1, LF) --> 
 {quietly(append_term(DCGGoal1,PosLF,DCGGoal0))},
  pos_or_neg(Did),!,DCGGoal0,
 {maybe_did_hack(PosLF, Did, LF)}.

has_suffix(Ly,Ly) --> [DasterdLy],{atom_concat(Dasterd,Ly,DasterdLy)},dcg_push(Dasterd).
has_suffix('ly','ly') --> [Happily],{atom_concat(Happ,'ily',Happily),atom_concat(Happ,'y',Happy)},dcg_push(Happy).
has_suffix(_Ly,skipped) --> [].

maybe_suffixed_dcg(DCGGoal1, Suffix, LF) --> 
  {append_term(DCGGoal1,PosLF,DCGGoal0)},
   has_suffix(Suffix,Did),!,DCGGoal0,
  {maybe_did_hack(PosLF, Did, LF)}.

% =================================================================
%  Noun Units
% =================================================================
whpron(Frame) --> [WH],{whpron_dict(WH),atom_string(WH,Str)},push_lf(Frame,denotableBy($target,pronounFn(Str))).

  whpron_dict(who).
  whpron_dict(whom).
  whpron_dict(what).
  whpron_dict(Which):- talkdb:talk_db(pronoun,Which).

noun(Frame) --> noun0(LF),push_lf(Frame,LF).
noun(Frame) --> noun1($target,LF),push_lf(Frame,LF).

noun0( denotableBy($target,pronounFn(Str))) --> [WH],{whpron_dict(WH),atom_string(WH,Str)}.
noun0( ~something($target)) --> [nothing].
noun0( something($target)) --> [something].

noun1(X, LF) --> [N], {noun_lf(X, N, LF)},nvd(N,X).
 noun_lf(X, Word,  ISA) :- (Word=Sing;Word=Plur), talkdb:talk_db(noun1, Sing, Plur), into_isa3(X, Sing, ISA).
 noun_lf(X, Mass,  ISA) :- talkdb:talk_db(noun2, Mass), into_isa3(X, Mass, ISA).
 noun_lf(X, Sing,  ISA) :- noun_dict(Sing), into_isa3(X, Sing, ISA).

  noun_dict(author). noun_dict(human). noun_dict(book). noun_dict(professor). noun_dict(program).
  noun_dict(programmer). noun_dict(student). noun_dict(man). noun_dict(woman).


proper_noun(Frame) --> quietly(([PN],{pn_lf(PN,Entity),frame_set(Frame,$target,Entity)})).

   pn_lf(Name,Value) :- pn_dict(Name),i_name(i,Name,Value).

    pn_dict(begriffsschrift). pn_dict(bertrand). pn_dict(ohad). pn_dict(bill). pn_dict(gottlob).
    pn_dict(alfred). pn_dict(lunar). pn_dict(principia).  pn_dict(shrdlu). pn_dict(terry).
    pn_dict(john). pn_dict(annie). pn_dict(monet).

    pn_dict(Name):- name_template_db(Name,_).


% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% DCG UTILS %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
% plt --> quietly(([],{plt})).
plt(A,A):- notrace(plt).

quietly(DCG,S,E):- quietly(phrase(DCG,S,E)).

% ,isa(Frame,TAG)
tag(_Frame,Tag) --> {atomic(Tag)},!,[$,TAG],{downcase_atom(TAG,Start),atom_concat(Tag,_,Start)}.
tag(Frame,Cmp) --> {functor(Cmp,F,_)},tag(Frame,F).
% iterative deeping flag

% Push a new term onto DCG stack
dcg_push(List,S,ListS):- is_list(List),!,append(List,S,ListS).
dcg_push(A,S,[A|S]).

optionalText1(X) --> { length(X, L), L > 0, L < 33 } , X.
optionalText1(_) --> [].

dcg_s2(DCG1, Mid) -->
   {notrace((append_term(DCG1,Mid,DCG0)))},
   DCG0,
   dcg_s2(DCG1, Mid).
dcg_s2(_,_) --> [].

% nvd(N,X) --> quietly(( [],{nvd(N,X)})).
nvd(N, X, A, A):- notrace(nvd(N,X)).
% =================================================================
% %%%%%%%%%%%%%%%%%%%%%  UTILS %%%%%%%%%%%%%%%%
% =================================================================
nvd(_,_):-!.
nvd(N,X):- var(N),var(X),!.
nvd(N,X):- var(N),nonvar(X),!,nvd(X,N),!.
nvd(_,X):- nonvar(X),!.
nvd(N&_,X):- nonvar(N),!,nvd(N,X).
nvd(N,X):- compound(N), N=..[z,F|_],may_debug_var([F,'_Frame'],X).
nvd(N,X):- atom(N),name(N,Name),last(Name,C),\+ char_type(C,digit),!,gensym(N,NN),!,may_debug_var(NN,X),!. 
nvd(N,X):- may_debug_var(N,X),!. 

into_isa3(X, Y, isa(X, YY)):- atom(Y), toPropercase(Y,YY), gensym(YY,VarName), nvd(VarName, X).
into_isa3(X, Y, isa(X, YY)):- compound(Y),Y=..[Fn,Word],atom_concat(_,'Fn',Fn),any_to_string(Word,Str),!,YY=..[Fn,Str].
into_isa3(X, Y, isa(X, Y)):-!. 

conc([],L,L).
conc([H|T],L,[H|R]) :- conc(T,L,R).

%to_wordlist_atoms(Sentence,WordsA):- into_text80(Sentence,WordsA),!.
to_wordlist_atoms(Sentence,WordsA):-
   to_word_list(Sentence,Words),
   maplist(any_to_atom,Words,WordsA),!.



:- retract(t_l:into_form_code).


:- context_module(CM),module_predicates_are_exported(CM).
:- context_module(CM),module_meta_predicates_are_transparent(CM).
% :- context_module(CM),module_property(CM,exports(List)),moo_hide_show_childs(List).


