% ===================================================================
% File 'parser_talk.pl'
% Purpose: English to KIF conversions from SWI-Prolog  
% This implementation is incomplete
% Maintainer: Douglas Miles
% Contact: $Author: dmiles $@users.sourceforge.net ;
% Version: 'parser_talk.pl' 1.0.0
% Revision:  $Revision: 1.3 $
% Revised At:   $Date: 2012/06/06 15:43:15 $
% ===================================================================

:-module(parser_talk,[]).

:- op(500,xfy,&).
:- op(50,xfx,+).
:- op(510,xfy,=>).
:- op(1200,xfx,-->).
:- op(100,fx,'`').
% exampels 
must_test_talkpl("bertrand wrote principia").
must_test_talkpl("is bertrand an author").
must_test_talkpl("bertrand is a author").
must_test_talkpl("every author is a programmer").
must_test_talkpl("what did bertrand write").
must_test_talkpl("what is a book").
must_test_talkpl("what is a author").
must_test_talkpl("principia is a book").
% must_test_talkpl("bertrand is bertrand").
must_test_talkpl("shrdlu halts").
must_test_talkpl("every student wrote a program").
must_test_talkpl("terry writes a program that halts").
must_test_talkpl("an author of every book wrote a program").
must_test_talkpl("bertand wrote a book about gottlob").
must_test_talkpl("what did alfred give to bertrand").
must_test_talkpl("alfred gave a book to bertrand").
must_test_talkpl("who did alfred give a book to").

:-export(t3/0).
t3:- forall(must_test_talkpl(Sent),talkpl(Sent)).

m :- talkpl.

:- asserta(t_l:into_form_code).

:-export(talkpl/0).
talkpl :- locally(tracing80,
             with_no_assertions(lmconf:use_cyc_database,
                  locally(t_l:usePlTalk, (told, repeat, prompt_read('TALKPL> ',U),  
                            to_word_list(U,WL),(WL==[bye];WL==[end,'_',of,'_',file];talkpl(WL)))))).

:-export(talkpl/1).
talkpl(Sentence):- to_word_list(Sentence,Words),!,dmsg(sent_in_talkpl(Words)),talkpl(Words,Reply),  print_reply(Reply).

:-export(talkpl/2).
talkpl(Sentence,Reply) :-
   show_call(talkpl_parse(Sentence,LF,Type)),
   show_call(talkpl_clausify(LF,Clause,FreeVars)),!,
   talkpl_reply(Type,FreeVars,Clause,Reply).

talkpl(Sentence,error('too difficult'(Sentence))).

% talkpl_reply a question
talkpl_reply(query,FreeVars,  (answer(Answer) :- Condition),Reply) :-  
(setof(Answer,FreeVars^req(Condition),Answers)
 -> Reply = answer(Answers)
 ; (Answer == yes
 -> Reply = answer([no])
 ; Reply = answer([none]))),!.
 
% talkpl_reply an assertion
talkpl_reply(assertion,_,Assertion,asserted(Assertion)) :-  add(Assertion),  !.
talkpl_reply(_,_,_,error('unknown type')).


print_reply(Other) :-  fmt(Other).


talkpl_parse(Sentence,LF,Type):- \+ is_list(Sentence),!,to_word_list(Sentence,WL),!,talkpl_parse(WL,LF,Type).  
talkpl_parse(Sentence,LF,query) :-  q(LF,Sentence,[]).
talkpl_parse(Sentence,LF,assertion) :-  s(LF,nogap,Sentence,[]).

% Universals
talkpl_clausify(all(X,F0),F,[X|V]) :-  talkpl_clausify(F0,F,V).

% Implications 
talkpl_clausify('=>'(A0 , C0) ,(C:-A),V) :-  clausify_literal(C0,C),  clausify_antecedent(A0,A,V).

% Literals
talkpl_clausify(C0,C,[]):-  clausify_literal(C0,C).



% Literals
clausify_antecedent(L0,L,[]):-  clausify_literal(L0,L).

% Conjunctions
clausify_antecedent(E0&F0,(E,F),V) :-  clausify_antecedent(E0,E,V0),  clausify_antecedent(F0,F,V1),  conc(V0,V1,V).
 
% Existentials
clausify_antecedent(exists(X,F0),F,[X|V]) :-  clausify_antecedent(F0,F,V).

clausify_literal(L,L).

% Grammar
% Questions


q(Q) --> q1(Q), optionalText([?]).
q(S => answer(S)) --> s(S,nogap),[?].


q1(S => answer(X)) -->   whpron,vp(_Tense+fin,X^S,nogap).
q1(S => answer(X)) -->   whpron,sinv(S,gap(np,X)). 
q1(S => answer(yes)) -->  sinv(S,nogap).
q1(S => answer(yes)) -->   copula,   np((X^SO)^S, nogap),   np((X^true)^exists(X,SO & true),nogap).




% Declarative sentences
s(S,GapInfo) -->   np(VP^S,nogap),   vp(_Tense+fin,VP,GapInfo).

% Inverted sentences
sinv(S,GapInfo) --> 
 aux(_Tense+fin/Form,VP1^VP2),  np(VP2^S,nogap),  vp(Form,VP1,GapInfo).
 
% Noun Phrases
np(NP,nogap) -->  det(N2^NP),n(N1),optrel(N1^N2).
np(NP,nogap) --> pn(NP).
np((X^S)^S,gap(np,X)) --> [].


% Verb phrases
vp(Form,X^S,GapInfo) -->  talk_tv(Form,X^VP),  np(VP^S,GapInfo).
vp(Form,VP,nogap) -->  talk_iv(Form,VP).
vp(Form1,VP2,GapInfo) -->  aux(Form1/Form2,VP1^VP2),  vp(Form2,VP1,GapInfo).
vp(Form1,VP2,GapInfo) -->  rov(Form1/Form2,NP^VP1^VP2),  np(NP,GapInfo),  vp(Form2,VP1,nogap).
vp(Form2,VP2,GapInfo) -->  rov(Form1/Form2,NP^VP1^VP2),  np(NP,nogap),  vp(Form1,VP1,GapInfo).
vp(_Tense+fin,X^S,GapInfo) -->  copula,  np((X^P)^exists(X,S&P),GapInfo).


% relative clauses
optrel((X^S1)^(X^(S1&S2))) -->  relpron,vp(_Tense+fin,X^S2,nogap).
optrel((X^S1)^(X^(S1&S2))) -->  relpron,s(S2,gap(np,X)).
optrel(N^N) --> [].

% Dictionary
% preterminals

det(LF) --> [D],{det_lf(D,LF)}.
n(LF) --> [N],{noun_lf(N,LF)}.
pn((E^S)^S) --> [PN],{pn_lf(PN,E)}.

aux(Form,LF) --> [Aux],{aux_lf(Aux,Form,LF)}.
relpron --> [RP],{relpron(RP)}.
whpron --> [WH], {whpron(WH)}.

copula --> [C], {copula(C)}.

talk_iv(nonfinite, LF) --> [IV],{talk_iv_lf(IV,_,_,_,_,LF)}.
talk_iv(pres+fin,  LF) --> [IV],{talk_iv_lf(_,IV,_,_,_,LF)}.
talk_iv(past+fin,  LF) --> [IV],{talk_iv_lf(_,_,IV,_,_,LF)}.
talk_iv(past+part, LF) --> [IV],{talk_iv_lf(_,_,_,IV,_,LF)}.
talk_iv(pres+part, LF) --> [IV],{talk_iv_lf(_,_,_,_,IV,LF)}.

talk_tv(nonfinite, LF) --> [TV],{talk_tv_lf(TV,_,_,_,_,LF)}.
talk_tv(pres+fin,  LF) --> [TV],{talk_tv_lf(_,TV,_,_,_,LF)}.
talk_tv(past+fin,  LF) --> [TV],{talk_tv_lf(_,_,TV,_,_,LF)}.
talk_tv(past+part, LF) --> [TV],{talk_tv_lf(_,_,_,TV,_,LF)}.
talk_tv(pres+part, LF) --> [TV],{talk_tv_lf(_,_,_,_,TV,LF)}.

rov(nonfinite /Requires,LF) --> [ROV], {rov_lf(ROV,_,_,_,_,LF,Requires)}.
rov(pres+fin /Requires,LF) --> [ROV], {rov_lf(_,ROV,_,_,_,LF,Requires)}.
rov(past+fin /Requires,LF) --> [ROV], {rov_lf(_,_,ROV,_,_,LF,Requires)}.
rov(past+part /Requires,LF) --> [ROV], {rov_lf(_,_,_,ROV,_,LF,Requires)}.
rov(pres+part /Requires,LF) --> [ROV], {rov_lf(_,_,_,_,ROV,LF,Requires)}.
 
% Lexical Items

relpron(that).
relpron(who).
relpron(whom).

whpron(who).
whpron(whom).
whpron(what).
whpron(Which):- talk_db(pronoun,Which).

copula(is).
copula(does).



det_lf(every, (X^S1)^(X^S2)^ all(X, =>(S1,S2))).
det_lf(an, (X^S1)^(X^S2)^ exists(X,S1& S2)).
det_lf(a, (X^S1)^(X^S2)^ exists(X,S1& S2)).
det_lf(some, (X^S1)^(X^S2)^ exists(X,S1& S2)).

noun_lf(author,  X^isa(X,author) ).
noun_lf(book,  X^isa(X,book) ).
noun_lf(professor,  X^professor(X) ).
noun_lf(program,  X^program(X) ).
noun_lf(programmer, X^programmer(X) ).
noun_lf(student,  X^student(X) ).

noun_lf(Plur,  X^isa(X,Sing)) :- talk_db(noun1,Sing,Plur).

adj_lf(Sing,  X^adjIsa(X,Sing)) :- adj_db(Sing,restr).

pn_lf(begriffsschrift ,begriffsschrift).
pn_lf(bertrand ,bertrand ).
pn_lf(bill  ,bill  ).
pn_lf(gottlob ,gottlob ).
pn_lf(alfred ,alfred ).
pn_lf(lunar  ,lunar ).
pn_lf(principia ,principia ).
pn_lf(shrdlu  ,shrdlu ).
pn_lf(terry  ,terry ).
pn_lf(Name  ,Name ):- name_template_db(Name,_).


%           nonfinite, pres+fin, past+fin,  past+part,  pres+part,  LF
talk_iv_lf( halt,      halts,    halted,    halted,     halting,    X^doing(X,halt)).

talk_iv_lf( Write,     Writes,   Wrote,     Written,    Writing,    X^Y^holds_t(Writes,X,Y)) :- talk_db(iv,Write,Writes,Wrote,Writing,Written).

%           nonfinite, pres+fin, past+fin,  past+part,  pres+part,  LF
talk_tv_lf( write,     writes,   wrote,     written,    writing,    X^Y^writes(X,Y)). 
talk_tv_lf( meet,      meets,    met,       met,        meeting,    X^Y^meets(X,Y)).
talk_tv_lf( concern, concerns, concerned, concerned, concerning,   X^Y^concerns(X,Y)).
talk_tv_lf( run,  runs, ran, run,  running, X^Y^runs(X,Y)).

talk_tv_lf( Write,     Writes,   Wrote,     Written,    Writing,    X^Y^holds_t(Writes,X,Y)) :- talk_db(transitive,Write,Writes,Wrote,Writing,Written).

rov_lf(want, wants, wanted, wanted, wanting,  ((X^want(Y,X,Comp))^S) ^(X^Comp) ^Y ^S,infinitival).

%semantics is partially execution of 
% NP ^VP ^Y ^NP(X want(Y,X,VP(X)))
%((X^ '`'(want(Y,X,Comp)))^S) ^(X^Comp) ^Y ^S, % form of VP required:
%infinitival).

aux_lf(to ,  infinitival/nonfinite , VP^VP).
aux_lf(does , _Tense+fin/nonfinite ,  VP^VP).
aux_lf(did ,  _Tense+fin/nonfinite ,  VP^VP).
aux_lf(to ,  _/_ , VP^VP).

conc([],L,L).
conc([H|T],L,[H|R]) :- conc(T,L,R).


:- retract(t_l:into_form_code).


:- context_module(CM),module_predicates_are_exported(CM).
:- context_module(CM),module_meta_predicates_are_transparent(CM).
% :- context_module(CM),module_property(CM, exports(List)),moo_hide_show_childs(List).





