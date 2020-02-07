% ===================================================================
% File 'parser_bratko.pl'
% Purpose: English to KIF conversions from SWI-Prolog  
% This implementation is incomplete
% Maintainer: Douglas Miles
% Contact: $Author: dmiles $@users.sourceforge.net ;
% Version: 'parser_talk.pl' 1.0.0
% Revision:  $Revision: 1.3 $
% Revised At:   $Date: 2012/06/06 15:43:15 $
% ===================================================================

:-module(parser_bratko,[]).
/* from Bratko chapter 17 page 455.
   This comes from Pereira and Warren paper, AI journal, 1980 */

/* this is to define infix operators  and their argument precedence 
   x represents an argument whose precedence is strictly lower than that
   of the operator. y represents an argument whose precedence is lower 
   or equal than that of the operator. */
:- op(100,xfy,and).
:- op(150,xfx,'=>').

/* when using sentence we need to pass 3 arguments, 
   the first will match S in the head of the DGC clause
   the second is the list containing the words in the sentence
   the third is the empty list.
   Example:
     sentence(Meaning, [every,man,that,paints,likes,monet],[]) */

:- op(500,xfy,&).
:- op(50,xfx,+).
:- op(510,xfy,=>).
:- op(1200,xfx,-->).
:- op(100,fx,'`').
% exampels 
must_test_bratko("every man that paints likes monet").
must_test_bratko("a woman that admires john paints").
must_test_bratko("every woman that likes a man that admires monet paints").
must_test_bratko("john likes annie").
must_test_bratko("annie likes a man that admires monet").
/*
must_test_bratko("bertrand wrote principia").
must_test_bratko("an author wrote principia").
must_test_bratko("is bertrand an author").
must_test_bratko("bertrand is an author").
must_test_bratko("bertrand is a writer").
must_test_bratko("is bertrand an author").
must_test_bratko("every author is a programmer").
must_test_bratko("is bertrand an programmer").
must_test_bratko("what did bertrand write").
must_test_bratko("what is a book").
must_test_bratko("what is a author").
must_test_bratko("principia is a book").
% must_test_bratko("bertrand is bertrand").
must_test_bratko("shrdlu halts").
must_test_bratko("every student wrote a program").
must_test_bratko("terry writes a program that halts").

must_test_bratko("an author of every book wrote a program").

must_test_bratko("bertand wrote a book about gottlob").
must_test_bratko("bertand wrote about gottlob").
must_test_bratko("bertand wrote nothing about gottlob").

must_test_bratko("what did alfred give to bertrand").
must_test_bratko("alfred gave a book to bertrand").
must_test_bratko("who did alfred give a book to").
*/

:-export(t33/0).
system:t33:- make, parser_talk:forall(must_test_bratko(Sent),bratko(Sent)).

baseKB:sanity_test:- t33.

mb :- bratko.

:- asserta(t_l:into_form_code).

:-export(bratko/0).
bratko :- locally(tracing80,
             with_no_assertions(lmconf:use_cyc_database,
                  locally(t_l:usePlTalk, (told, repeat, prompt_read('BRATKO> ',U),  
                            to_wordlist_atoms(U,WL),(WL==[bye];WL==[end,'_',of,'_',file];bratko(WL)))))).

:-export(bratko/1).
bratko(Sentence):- to_wordlist_atoms(Sentence,Words),!,dmsg(sent_in_bratko(Words)),bratko(Words,Reply),  print_reply(Reply).

to_wordlist_atoms(Sentence,WordsA):- to_word_list(Sentence,Words),maplist(any_to_atom,Words,WordsA),!.
to_wordlist_atoms(Sentence,WordsA):- into_text80(Sentence,WordsA),!.

:-export(bratko/2).
bratko(Sentence,Reply) :-
   show_call(bratko_parse(Sentence,LF)),
   show_call(bratko_clausify(LF,Clause)),!,   
   bratko_reply(Clause,Reply).

bratko(Sentence,error('too difficult'(Sentence))).

% bratko_reply a question
bratko_reply((answer(Answer) :- Condition), Reply) :-  
 Query = FreeVars^satisfy(Condition),
 fmt(query(Answer,Query)),
((baseKB:setof(Answer,Query,Answers)
 -> Reply = answer(Answers)
 ; (Answer == yes -> Reply = answer([no]) ; Reply = answer([none])))),!.
 
% bratko_reply an assertion
bratko_reply(Assertion,asserted(Assertion)) :-  baseKB:ain(Assertion),  !.
bratko_reply(_,error('unknown type')).


print_reply(Other) :-  fmt(Other).


bratko_parse(Sentence,LF):-  \+ is_list(Sentence),!,to_wordlist_atoms(Sentence,WL),!,bratko_parse(WL,LF).  
bratko_parse(Sentence,LF):-  question(LF,Sentence,[]).
bratko_parse(Sentence,LF):-  declarative(LF,Sentence,[]).

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%% CLAUSIFY %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bratko_clausify(C,F):- bratko_clausify(C,F,_).


% Universals
bratko_clausify(all(X,F0),F,[X|V]) :-  bratko_clausify(F0,F,V).

% Implications 
bratko_clausify('=>'(A0 , C0) ,(C:-A),V) :-  clausify_literal(C0,C),  clausify_antecedent(A0,A,V).

% Literals
bratko_clausify(C0,C,[]):-  clausify_literal(C0,C).


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
question(S => answer(S)) --> sentence(S),[?].


% Interogative sentences
interogative(S => answer(X))   -->  whpron,verb_phrase(X, S).
interogative(S)   -->  whpron,sentence_inv(S). 
interogative(S => answer(yes)) -->  sentence_inv(S).
interogative(S => answer(yes)) -->  copula_is_does, noun_phrase((X^SO)^S, nogap),   noun_phrase((X^true)^exists(X,SO & true),nogap).

          
% Declarative sentences
declarative(S) --> sentence(S), optionalText1([.]).

% Inverted sentences
% sentence_inv(S) -->  aux(_Tense+fin/Form,VP1^VP2),  noun_phrase(VP2^S,nogap),  verb_phrase(Form,VP1).


sentence(S) --> 
	noun_phrase(X,Assn,S), verb_phrase(X,Assn).
noun_phrase(X,Assn,S) --> 
	determiner(X,Prop12,Assn,S),noun(X,Prop1),rel_clause(X,Prop1,Prop12).
noun_phrase(X,Assn,Assn) --> 
	proper_noun(X).
verb_phrase(X,Assn) --> 
	trans_verb(X,Y,Assn1),noun_phrase(Y,Assn1,Assn).
verb_phrase(X,Assn) --> 
	intrans_verb(X,Assn).
rel_clause(X,Prop1,Prop1 and Prop2) --> 
	[that],verb_phrase(X,Prop2).
rel_clause(_,Prop1,Prop1) --> [].

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%% Terminals %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

determiner(X,Prop,Assn,all(X,(Prop => Assn))) --> [every].
determiner(X,Prop,Assn,exists(X,Prop and Assn)) --> [a].

noun(X,man(X)) --> [man].
noun(X,woman(X)) --> [woman].
proper_noun(john) --> [john].
proper_noun(annie) --> [annie].
proper_noun(monet) --> [monet].
trans_verb(X,Y,z(like,X,Y)) --> [likes].
trans_verb(X,Y,z(admire,X,Y)) --> [admires].
intrans_verb(X,z(paint,X)) --> [paints].



:- retract(t_l:into_form_code).


:- context_module(CM),module_predicates_are_exported(CM).

:- context_module(CM),module_meta_predicates_are_transparent(CM).
% :- context_module(CM),module_property(CM, exports(List)),moo_hide_show_childs(List).



