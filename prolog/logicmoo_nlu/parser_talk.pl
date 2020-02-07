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
must_test_talkpl("an author wrote principia").
must_test_talkpl("is bertrand an author").
must_test_talkpl("bertrand is an author").
must_test_talkpl("bertrand is a writer").
must_test_talkpl("is bertrand an author").
must_test_talkpl("every author is a programmer").
must_test_talkpl("is bertrand an programmer").
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
must_test_talkpl("bertand wrote about gottlob").
must_test_talkpl("bertand wrote nothing about gottlob").

must_test_talkpl("what did alfred give to bertrand").
must_test_talkpl("alfred gave a book to bertrand").
must_test_talkpl("who did alfred give a book to").

:-export(t3/0).
system:t3:- make, parser_talk:forall(must_test_talkpl(Sent),talkpl(Sent)).

baseKB:sanity_test:- t3.

m :- talkpl.

:- asserta(t_l:into_form_code).

:-export(talkpl/0).
talkpl :- locally(tracing80,
             with_no_assertions(lmconf:use_cyc_database,
                  locally(t_l:usePlTalk, (told, repeat, prompt_read('TALKPL> ',U),  
                            to_wordlist_atoms(U,WL),(WL==[bye];WL==[end,'_',of,'_',file];talkpl(WL)))))).

:-export(talkpl/1).
talkpl(Sentence):- to_wordlist_atoms(Sentence,Words),!,dmsg(sent_in_talkpl(Words)),talkpl(Words,Reply),  print_reply(Reply).

to_wordlist_atoms(Sentence,WordsA):- to_word_list(Sentence,Words),maplist(any_to_atom,Words,WordsA),!.
to_wordlist_atoms(Sentence,WordsA):- into_text80(Sentence,WordsA),!.

:-export(talkpl/2).
talkpl(Sentence,Reply) :-
   show_call(talkpl_parse(Sentence,LF,Type)),
   show_call(talkpl_clausify(LF,Clause,FreeVars)),!,   
   talkpl_reply(Type,FreeVars,Clause,Reply).

talkpl(Sentence,error('too difficult'(Sentence))).

% talkpl_reply a question
talkpl_reply(query,FreeVars, (answer(Answer) :- Condition), Reply) :-  
 Query = FreeVars^satisfy(Condition),
 fmt(query(Answer,Query)),
((baseKB:setof(Answer,Query,Answers)
 -> Reply = answer(Answers)
 ; (Answer == yes -> Reply = answer([no]) ; Reply = answer([none])))),!.
 
% talkpl_reply an assertion
talkpl_reply(assertion,_,Assertion,asserted(Assertion)) :-  baseKB:ain(Assertion),  !.
talkpl_reply(_,_,_,error('unknown type')).


print_reply(Other) :-  fmt(Other).


talkpl_parse(Sentence,LF,Type):- \+ is_list(Sentence),!,to_wordlist_atoms(Sentence,WL),!,talkpl_parse(WL,LF,Type).  
talkpl_parse(Sentence,LF,query)     :-  question(LF,Sentence,[]).
talkpl_parse(Sentence,LF,assertion) :-  declarative(LF,nogap,Sentence,[]).


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%% CLAUSIFY %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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



% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%% Grammar %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Questions

optionalText1(X) --> { length(X,L),L > 0, L < 33 } , X.
optionalText1(_) --> [].

question(Q             ) --> interogative(Q), optionalText1([?]).
question(S => answer(S)) --> sentence(S,nogap),[?].


% Interogative sentences
interogative(S => answer(X))   -->  whpron,verb_phrase(_Tense+fin,X^S,nogap).
interogative(S => answer(X))   -->  whpron,sentence_inv(S,gap(noun_phrase,X)). 
interogative(S => answer(yes)) -->  sentence_inv(S,nogap).
interogative(S => answer(yes)) -->  copula_is_does, noun_phrase((X^SO)^S, nogap),   noun_phrase((X^true)^exists(X,SO & true),nogap).

          
% Declarative sentences
declarative(S,GapInfo) --> sentence(S,GapInfo), optionalText1([.]).

sentence(S,GapInfo) -->   noun_phrase(VP^S,nogap),   verb_phrase(_Tense+fin,VP,GapInfo).

% Inverted sentences
sentence_inv(S,GapInfo) --> 
 aux(_Tense+fin/Form,VP1^VP2),  noun_phrase(VP2^S,nogap),  verb_phrase(Form,VP1,GapInfo).
 
% Noun Phrases
noun_phrase(NP,nogap)       -->  det(N2^NP),common_noun(N1),relative_clause(N1^N2).
% noun_phrase(NP,nogap)     -->  proper_noun(N2^NP),relative_clause(N2).
noun_phrase(NP,nogap)       --> proper_noun(NP).
noun_phrase((X^S)^S,gap(noun_phrase,X)) --> [].


% Verb phrases
verb_phrase(Form2,VP2,GapInfo) --> v_p(Form2,VP2,GapInfo).

v_p(Form1,VP2,GapInfo) -->  v_p_unit(Form1,VP2,GapInfo).

% @TODO Prep
% v_p(Form1,VP1&VP2,GapInfo) -->  v_p_unit(Form1,VP1,nogap), p_p(VP2,GapInfo).
% v_p(Form1,VP1&VP2,GapInfo) -->  v_p_unit(Form1,VP1,GapInfo), p_p(VP2,nogap).

v_p(Form1,VP2,GapInfo) -->  aux(Form1/Form2,   VP1^VP2),             v_p(Form2,VP1,GapInfo).
v_p(Form1,VP2,GapInfo) -->  v_p_rovn1(Form1,VP2,GapInfo,Form2,VP1),  v_p(Form2,VP1,nogap).
v_p(Form2,VP2,GapInfo) -->  v_p_rovn1(Form1,VP2, nogap ,Form2,VP1),  v_p(Form1,VP1,GapInfo).
v_p(_Tense+fin,X^S,GapInfo) --> copula_is_does,  noun_phrase((X^P)^exists(X,S&P),GapInfo).

v_p_unit(Form,X^S,GapInfo) -->  talk_tv(Form,X^VP),  noun_phrase(VP^S,GapInfo).
v_p_unit(Form,VP,  nogap ) -->  talk_iv(Form,VP).

p_p(X^S,GapInfo) -->  talk_pp(X^VP),  noun_phrase(VP^S,GapInfo).

v_p_rovn1(Form1,VP2, GapInfo,Form2,VP1) --> rov(Form1/Form2,NP,VP1,VP2), noun_phrase(NP,GapInfo).

% relative clauses
relative_clause((X^S1)^(X^(S1&S2))) -->  relpron,verb_phrase(_Tense+fin,X^S2,nogap).
relative_clause((X^S1)^(X^(S1&S2))) -->  relpron,sentence(S2,gap(noun_phrase,X)).
% an author of every book
relative_clause((X^S1)^(X^(S1&(z(of, X,Y)&S2)))) -->  [of], noun_phrase(Y^S2,nogap).
% a book about gottlob @TODO
% relative_clause((X^S1)^(X^(S1&(z(about, X,Y)&S2)))) -->  [about], noun_phrase(Y^S2,nogap).

relative_clause(N^N) --> [].


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%% Terminals %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

det(LF) --> [D],{det_lf(D,LF)}.
common_noun(LF) --> [N],{noun_lf(N,LF)}.
proper_noun((E^S)^S) --> [PN],{pn_lf(PN,E)}.

aux(Form,LF) --> [Aux],{aux_lf(Aux,Form,LF)}.
relpron --> [RP],{relpron(RP)}.
whpron --> [WH], {whpron(WH)}.

copula_is_does --> [C], {copula_is_does(C)}.

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

talk_pp(X^Y^z(PP,X,Y)) --> [PP],{prep(PP)}.

rov(nonfinite /Requires,LF) --> [ROV], {rov_lf(ROV,_,_,_,_,LF,Requires)}.
rov(pres+fin  /Requires,LF) --> [ROV], {rov_lf(_,ROV,_,_,_,LF,Requires)}.
rov(past+fin  /Requires,LF) --> [ROV], {rov_lf(_,_,ROV,_,_,LF,Requires)}.
rov(past+part /Requires,LF) --> [ROV], {rov_lf(_,_,_,ROV,_,LF,Requires)}.
rov(pres+part /Requires,LF) --> [ROV], {rov_lf(_,_,_,_,ROV,LF,Requires)}.


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%% Lexical Items / Dictionary %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

prep(X):- talk_db(preposition, X).

relpron(that).
relpron(who).
relpron(whom).

whpron(who).
whpron(whom).
whpron(what).
whpron(Which):- talk_db(pronoun,Which).

copula_is_does(is).
copula_is_does(does).


det_lf(every, (X^S1)^(X^S2)^ all(X, =>(S1,S2))).
det_lf(an, (X^S1)^(X^S2)^ exists(X,S1& S2)).
det_lf(a, (X^S1)^(X^S2)^ exists(X,S1& S2)).
det_lf(some, (X^S1)^(X^S2)^ exists(X,S1& S2)).

noun_lf1(author).
noun_lf1(book).
noun_lf1(professor).
noun_lf1(program).
noun_lf1(programmer).
noun_lf1(student).

into_isa3(X,Y,isa(X,Y)).

noun_lf(Sing,  X^ISA) :- noun_lf1(Sing),into_isa3(X,Sing,ISA).
noun_lf(Word,  X^ISA) :- (Word=Sing;Word=Plur),talk_db(noun1,Sing,Plur),into_isa3(X,Sing,ISA).
noun_lf(Mass,  X^ISA) :- talk_db(noun2,Mass),into_isa3(X,Mass,ISA).

 adj_lf(Sing,  X^ISA) :- (adj_db(Sing,restr);talk_db(adj,Sing)),into_isa3(X,adjFn(Sing),ISA).


pn_lf(Name, Value) :- pn_dict(Name), Name = Value.

pn_dict(begriffsschrift ).
pn_dict(bertrand ).
pn_dict(bill ).
pn_dict(gottlob ).
pn_dict(alfred ).
pn_dict(lunar ).
pn_dict(principia ).
pn_dict(shrdlu ).
pn_dict(terry ).
pn_dict(Name ):- name_template_db(Name,_).


%           nonfinite, pres+fin, past+fin,  past+part,  pres+part,  LF
talk_iv_lf( halt,      halts,    halted,    halted,     halting,    X^z(doing,X,halt)).

talk_iv_lf( Write,     Writes,   Wrote,     Written,    Writing,    X^z(doing,X,Writes)) :- 
   talk_db(intransitive,Write,Writes,Wrote,Writing,Written).

%           nonfinite, pres+fin, past+fin,  past+part,  pres+part,  LF
talk_tv_lf( write,     writes,   wrote,     written,    writing,    X^Y^z(writes,X,Y)). 
talk_tv_lf( meet,      meets,    met,       met,        meeting,    X^Y^z(meets,X,Y)).
talk_tv_lf( concern, concerns, concerned, concerned, concerning,   X^Y^z(concerns,X,Y)).
talk_tv_lf( run,  runs, ran, run,  running,                    X^Y^z(runs,X,Y)).

talk_tv_lf( Write,     Writes,   Wrote,     Written,    Writing,    X^Y^z(Writes,X,Y)) :- 
  talk_db(transitive,Write,Writes,Wrote,Writing,Written).

rov_lf(want, wants, wanted, wanted, wanting,  ((X^z(want,Y,X,Comp))^S) ^(X^Comp) ^Y ^S,infinitival).

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





