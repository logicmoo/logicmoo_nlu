% ===================================================================
% File 'parser_bratko. pl'
% Purpose: English to KIF conversions from SWI-Prolog
% This implementation is incomplete
% Maintainer: Douglas Miles
% Contact: $Author: dmiles $@users. sourceforge. net ;
% Version: 'parser_bratko. pl' 1. 0. 0
% Revision:  $Revision: 1. 3 $
% Revised At:   $Date: 2012/06/06 15:43:15 $
% ===================================================================

:-module(parser_bratko, []).
/* from Bratko chapter 17 page 455.
   This comes from Pereira and Warren paper, AI journal, 1980 */

/* this is to define infix operators  and their argument precedence
   x represents an argument whose precedence is strictly lower than that
   of the operator.  y represents an argument whose precedence is lower
   or equal than that of the operator.  */
%:- op(100, xfy, and).
%:- op(150, xfx, '=>').

/* when using frame_sentence we need to pass 3 arguments,
   the first will match LFOut in the head of the DGC clause
   the second is the list containing the words in the frame_sentence
   the third is the empty list.
   Example:
     frame_sentence(Meaning, [every, man, that, paints, likes, monet], []) */

:- op(500, xfy, &).
:- op(50, xfx, +).
:- op(1000, xfy, =>).
:- op(1200, xfx, -->).
:- op(100, fx, '`').

:- use_module(library(lists)).
%:- '$hide'(lists:append(_, _, _)).
/*
*/
:- use_module(library(check)).
:- abolish(check:list_undefined, 0).
:- asserta((check:list_undefined:-!)).
%:- parser_chat80:export(parser_chat80:theText1/3).
%:- import(parser_chat80:theText1/3).

%:- parser_chat80:export(parser_chat80:theText80/3).
%:- import(parser_chat80:theText80/3).
:- reexport(parser_chat80).
:- reexport(parser_tokenize).
%:- use_module(pldata(clex_iface)).
%:- use_module(parser_chat80,[plt/0,print_tree/1]).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% examples/tests %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================

system:t33:- cls, make, t33a.
system:t33a:- cls, parser_bratko:forall((must_test_bratko(Sent, Type), testing_bratko(Sent, Type)), bratko(Sent)).
system:t33t:- cls, parser_bratko:forall((must_test_bratko(Sent, Type), Type== tell,  testing_bratko(Sent, Type)), bratko(Sent)).

testing_bratko(Sent, Type):- Type\==ask, to_wordlist_atoms(Sent, Words), \+ (Words = [not |_]).

baseKB:sanity_test:- t33.

:- export(must_test_bratko/2).
:- discontiguous(must_test_bratko/2).
must_test_bratko(S, _T) :- ground(S), !, bratko(S).
:- system:import(must_test_bratko/2).

must_test_bratko("a woman drains", tell).
% ;W:\opt\logicmoo_workspace\packs_sys\logicmoo_nlu\ext\candc;W:\opt\logicmoo_workspace\packs_sys\logicmoo_nlu\ext\ape;W:\opt\logicmoo_workspace\packs_sys\logicmoo_nlu\prolog

% must_test_bratko(S, _T) :- \+ ground(S), !, fail.

must_test_bratko("one woman paints", quants).
must_test_bratko("no woman paints", quants).
must_test_bratko("some woman paints", quants).
must_test_bratko("every woman paints", quants).
must_test_bratko("each woman paints", quants).
must_test_bratko("any woman paints", quants).
must_test_bratko("the woman paints", quants).

must_test_bratko("each african country is bordered by 2 oceans", tell).
must_test_bratko("there are 10 large cars", tell).
must_test_bratko("there are 10 oceans", tell).
must_test_bratko("there are 10 women", tell).

must_test_bratko("an ocean borders an african country", tell).
must_test_bratko("2 oceans border each african country", tell).
% ;W:\opt\logicmoo_workspace\packs_sys\logicmoo_nlu\ext\candc;W:\opt\logicmoo_workspace\packs_sys\logicmoo_nlu\ext\ape;W:\opt\logicmoo_workspace\packs_sys\logicmoo_nlu\prolog

must_test_bratko(S, _T) :- \+ ground(S), !, fail.

must_test_bratko("what is the ocean that borders african countries and that borders asian countries?" , tell).

must_test_bratko("indian ocean is the ocean that borders african countries and that borders asian countries", tell).

must_test_bratko("an ocean borders an african country", tell).


must_test_bratko("the not woman paints", quants).  % ?? The Good Place "the not a girl"

must_test_bratko("not a woman paints", quants).
must_test_bratko("not one woman paints", quants).
must_test_bratko("not no woman paints", quants_neg_postcond).
must_test_bratko("not some woman paints", quants).   % ?? not just some woman paints
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
must_test_bratko("no one paints", pronoun).
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
%must_test_bratko("she likes noone", pronoun).
must_test_bratko("she likes none", pronoun).


% must_test_bratko("she likes her", pronoun).
must_test_bratko("she likes him", pronoun).
must_test_bratko("she likes herself", pronoun).
must_test_bratko("she likes himself", pronoun).  % Maybe

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
must_test_bratko("an author wrote principia", tell).
must_test_bratko("iraq is a country", tell).
must_test_bratko("a happy author wrote principia", tell).
must_test_bratko("is bertrand an author", ask).
must_test_bratko("bertrand is an author", tell).
must_test_bratko("is bertrand an author", ask).
must_test_bratko("every author is a programmer", tell).
must_test_bratko("is bertrand an programmer", ask).  % Just a sanity test
must_test_bratko("what is a author", ask).  % Just a sanity test
must_test_bratko("what did bertrand write", ask).
must_test_bratko("what is a book", ask).
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

must_test_bratko("what did alfred write to bertrand", ask).
must_test_bratko("alfred wrote a letter", tell).
must_test_bratko("alfred wrote a letter to bertrand", tell).
must_test_bratko("alfred wrote something to bertrand", tell).
must_test_bratko("alfred wrote to bertrand", tell).
must_test_bratko("alfred wrote to bertrand a letter", tell).
must_test_bratko("alfred wrote bertrand a letter", tell).
must_test_bratko("who did alfred write a letter to", ask).

must_test_bratko("alfred gave it", tell).
must_test_bratko("alfred gave a book", tell).


must_test_bratko("If ?X is rearing ?Y then ?X has ?Y.",riddle(_)).
must_test_bratko("If ?X keeps ?Y then ?X has ?Y.",riddle(_)).


must_test_bratko("There are 5 houses with five different colors.",riddle(_)).
must_test_bratko("In each house lives a person with a different nationality.",riddle(_)).

must_test_bratko("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",riddle(3)).
%vs
must_test_bratko("These five owners each drink a certain type of beverage.",riddle(1)).
must_test_bratko("These five owners each smoke a certain brand of cigar.",riddle(1)).
must_test_bratko("These five owners each keep a certain pet.",riddle(1)).

must_test_bratko("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",riddle(3)).
%vs
must_test_bratko("No owners have the same pet.",riddle(1)).
must_test_bratko("No owners smoke the same brand of cigar",riddle(1)).
must_test_bratko("No owners drink the same kind of beverage.",riddle(1)).


must_test_bratko("The Brit lives in the red house.",riddle(_)).
must_test_bratko("The Swede keeps dogs as pets.",riddle(_)).
must_test_bratko("A Dane drinks tea.",riddle(_)).
must_test_bratko("The green house is on the left of the white house.",riddle(_)).
must_test_bratko("The green house's owner drinks coffee.",riddle(_)).
must_test_bratko("The person who smokes Pall Mall rears birds.",riddle(_)).
must_test_bratko("The owner of the yellow house smokes Dunhill.",riddle(_)).
must_test_bratko("The man living in the center house drinks milk. ",riddle(_)).
must_test_bratko("The Norwegian lives in the first house .",riddle(_)).
must_test_bratko("The man who smokes Blends lives next to the one who keeps cats   .",riddle(_)).
must_test_bratko("The man who keeps horses lives next to the man who smokes Dunhill.",riddle(_)).
must_test_bratko("The owner who smokes BlueMaster drinks beer.",riddle(_)).
must_test_bratko("The German smokes Prince.",riddle(_)).
must_test_bratko("The Norwegian lives next to the blue house.",riddle(_)).
must_test_bratko("The man who smokes Blends has a neighbor who drinks water.",riddle(_)).
must_test_bratko("Who owns the fish?",riddle(_)).

must_test_bratko(S, _T) :- \+ ground(S), !, fail.



:- asserta(t_l:into_form_code).
             
% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% MAIN %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================


print_reply(Other) :- quietly((portray_vars:pretty_numbervars(Other, O), parser_chat80:print_tree(O))),!.

print_reply(C,O):- (is_list(C)->CC=C;CC=[fg(C)]),ansi_format(CC,'~@',[print_reply(O)]),!.


also_show_chat80(U):- 
 parser_chat80:sent_to_parsed(U,E), 
 parser_chat80:sent_to_prelogic(E,L),!,
 print_reply(green,E),
 print_reply([underline,fg(green)],L),!.
also_show_chat80(U):- 
 (parser_chat80:sent_to_parsed(U,E)->
  (print_reply(yellow,(E)),
   (parser_chat80:sent_to_prelogic(E,L)->print_reply(cyan,(1:-L));
     (ansifmt(cyan,rtrace(parser_chat80:sent_to_prelogic(E))),!,fail)));
    (ansifmt(magenta,rtrace(also_show_chat80(U))),!,fail)),!.
 

system:myb :- bratko.

:-export(bratko/0).
bratko :- locally(tracing80,
             with_no_assertions(lmconf:use_cyc_database,
                  locally(t_l:usePlTalk, (told, repeat, prompt_read('BRATKO> ', U),
                            to_wordlist_atoms(U, WL), (WL==[ bye];WL==[end, '_', of, '_', file];bratko(WL)))))).

:-export(bratko/1).
bratko(Sentence):-
  make,
  setup_call_cleanup(notrace((to_wordlist_atoms(Sentence, Words),
  fmt(bratko(Sentence)))),
  bratko_0(Words), true).

:-export(bratko_0/1).
bratko_0(Words):-
  bratko_0(Words, Reply),
  print_reply(Reply),
  notrace(ignore(also_show_chat80(Words))),!.

:-export(bratko/2).
bratko(Sentence, Reply):- callable(Reply),!,bratko(Sentence).
bratko(Sentence, Reply):-
 quietly(to_wordlist_atoms(Sentence, WL)), !,
 bratko_0(WL, Reply).

bratko_0(Sentence, Reply) :-
   % must_or_rtrace      
   bratko_parse0(Sentence, LF), % deepen_pos?
   quietly((show_call(bratko_clausify(LF, Clause)),
   bratko_reply(Clause, Reply))), !.
bratko_0(Sentence,
   error('FAILED!!!!! small bug'(Sentence))):- ansifmt(red, rtrace(bratko_0(Sentence))).

:- assert_if_new(baseKB:mpred_prop(parser_bratko,bratko_parse,2,prologOnly)).

bratko_parse(Sentence, LF):-
  quietly(to_wordlist_atoms(Sentence, WL)), !,
  bratko_parse0(WL, LF).

:- assert_if_new(baseKB:mpred_prop(parser_bratko,bratko_parse0,2,prologOnly)).

bratko_parse0(WL, LF):-    
   nb_setval('$variable_names',[]),
   retractall(t_l:usePlTalk),
   retractall(t_l:useAltPOS),
   deepen_pos(utterance(_How, LF, WL, [])).


:- assert_if_new(baseKB:mpred_prop(parser_bratko,bratko_reply,2,prologOnly)).

% bratko_reply a question
bratko_reply((answer(Answer) :- Condition), Reply) :-
 term_variables(Condition, Vars),
 term_singletons(Answer+Vars, FreeVars),
 
 fmt(query(Answer, FreeVars^satisfy(Condition))),
((baseKB:setof(Answer, FreeVars^call(call,satisfy,Condition), Answers)
 -> Reply = answer(Answers)
 ; (Answer == yes -> Reply = answer([ no]) ; Reply = answer([ none])))), !.
% bratko_reply an assertion @TODO remove NOP 
bratko_reply(A, asserted(Assertion)) :- add_quant(exists,A),expand_quants(A,Assertion),  nop(baseKB:ain(kif(Assertion))), !.
bratko_reply(_, error('unknown type')).


% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% CLAUSIFY %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
:- assert_if_new(baseKB:mpred_prop(parser_bratko,bratko_clausify,2,prologOnly)).

% bratko_clausify(C, F):- bratko_clausify(C, F, _), !.
bratko_clausify(C, C).

% Universals
bratko_clausify( q(all, X, F0), F, [X|V]) :-  bratko_clausify(F0, F, V).
% Implications
bratko_clausify((A0 => C0), (A => C), V) :- clausify_antecedent(A0, A, V), clausify_literal(C0, C).
% Literals
bratko_clausify(C0, C, []):-  clausify_literal(C0, C).

% Literals
clausify_antecedent(L0, L, []):-  clausify_literal(L0, L).
% Conjunctions
clausify_antecedent(E0&F0, (E, F), V) :-  clausify_antecedent(E0, E, V0), clausify_antecedent(F0, F, V1), conc(V0, V1, V).
% Existentials
clausify_antecedent(q(NotAll, X, F0), F, [X|V]) :- NotAll\==all, clausify_antecedent(F0, F, V).

% Verbatum
clausify_literal(L, L).

% make_object(Frame, Obj, Written, Y, MadeObj):- toPropercase(Written, Proper), atom_concat(Obj, Proper, Pred), MadeObj=.. [Pred, Frame, Y].
%     toPropercase(Writing, ProperEvent),
%     make_object(Frame, Writing, 'To', Y, MadeObj).
%     make_object(Frame, 'obj', Written, Z, MadeOblique).

% OLD
make_time_info(Frame, Time, z(Writing, X, Y), Out):- nonvar(Writing), !,
  toPropercase(Writing, ProperEvent),
  make_time_info(Frame, Time, isa(Frame, ProperEvent) & doer(Frame, X) & objectOf(Frame, Y), Out).

make_time_info(Frame, Time, z(Writing, X), Out):- nonvar(Writing), !,
  toPropercase(Writing, ProperEvent),
  make_time_info(Frame, Time, isa(Frame, ProperEvent) & doer(Frame, X), Out).

make_time_info(Frame, Time, LF, Out):- Time\==nonfinite, Time\== pres+fin, nvd(LF, Frame),
 conjoin_lf(LF , isa(Frame, timeFn(Time)), Out).
make_time_info(Frame, _Time, LF, LF):- nvd(LF, Frame).

expand_1arg(_,A,B):- \+ compound(A),!,A=B.
expand_1arg(t,List,Out):- is_list(List),List=[Obj|Written],atomic(Obj),maplist(toPropercase,Written,WrittenO),i_name(Obj,WrittenO,Out).
expand_1arg(_,str(Name), Out):- any_to_string(Name,Out),!.
expand_1arg(isa,timeFn(Time), timeFn('vPast')):-  (Time== past+fin ; Time==pp). % Time\==nonfinite,
expand_1arg(_,A,A).

expand_args(_,_,A,B):- \+ compound(A),!,A=B.
%expand_args(_,_,[t|Args],Out):- !, maplist(expand_1arg(t),Args,ArgsO),Out =..[t|ArgsO].
expand_args(_,_,[a,Type,Name], Out):- i_name(Type,Name,Out),!.
expand_args(_,_,[T|Args],Out):- atom(T),maplist(expand_1arg(T),Args,ArgsO),Out =..[T|ArgsO].
expand_args(C,_,[P|ARGS],Out):- 
  maplist(expand_lf(C,0),ARGS,ARGSO),
   Out =..[P|ARGSO].


expand_lf(_,_,A,B):- var(A),!,A=B.
expand_lf(_,_,A,B):- \+ compound(A),!,A=B.
expand_lf(C,N,A&Rest,B&List):- expand_lf(C,N,A,B),!,expand_lf(C,N,Rest,List).
expand_lf(C,N,[A|Rest],[B|List]):- expand_lf(C,N,A,B),!,expand_lf(C,N,Rest,List).
expand_lf(_,_,t(DoesWrite, X, Y ), Out):- atom(DoesWrite),
   Out=..[DoesWrite, X, Y].
expand_lf(C,N, z(Writing, X ), Out):- 
  toPropercase(Writing, ProperEvent),
  expand_lf(C,N, isa(Frame, ProperEvent) & doer(Frame, X), Out).

expand_lf(_,_, isa(_,timeFn(XX)), true):- XX==pres+fin,!.
expand_lf(_,_, isa(_,timeFn(XX)), true):- XX==nonfinite,!.

expand_lf(C,N, z(Writing, X, Y ), Out):- 
  toPropercase(Writing, ProperEvent),
  expand_lf(C,N, isa(Frame, ProperEvent) & doer(Frame, X) & objectOf(Frame, Y), Out).

expand_lf(C,N,A,B):- compound_name_arity(A,P,0),!,expand_lf(C,N,P,BP),compound_name_arguments(B,BP,0),!.

expand_lf(C,N,A,Out):- 
  compound_name_arguments(A,P,ARGS),
   expand_args(C,N,[P|ARGS],Out).


expand_quants(A,B):-term_variables(A,Vars),add_quants(Vars,A,AB),expand_lf(AB,B).

expand_lf(A,B):-expand_lf(lf,0,A,B).

add_quants([],A,A):-!.
add_quants([X|T],A,q(Was,X,C)):- get_attr(X,'$quant_needed',Was),Was\==false,!,  
  put_attr(X,'$quant_needed',false),add_quants(T,A,C).
add_quants([_|T],A,C):- add_quants(T,A,C).

assertion_callable(C):- callable(C),!.
assertion_callable(_):- dumpST.

conjoin_lf(LF1, LF2, Out):- notrace((expand_lf(LF1,LF1A),LF1\==LF1A)),!,conjoin_lf(LF1A,LF2,Out).
conjoin_lf(LF2, LF1, Out):- notrace((expand_lf(LF1,LF1A),LF1\==LF1A)),!,conjoin_lf(LF2,LF1A,Out).
conjoin_lf(LF1, LF2, Out):- notrace(conjoin_lf0(LF1, LF2, Out)).
conjoin_lf(LF1, LF2, Out, L, L):- notrace(conjoin_lf0(LF1, LF2, Out)).

%conjoin_lf0(LF1, LF2, Out):- assertion(nonvar(LF2)), assertion(nonvar(LF1)), fail.

conjoin_lf00(LF1, LF2, Out):- LF2==true, !, Out=LF1.
                                 
conjoin_lf0(LF1, LF2, Out):- LF1==LF2, !, Out=LF1.

%conjoin_lf0(LF1, LF2, LF1&LF2):- var(LF1),var(LF2), !.
conjoin_lf0(LF1, LF2, LF1&LF2):- var(LF2), !.
conjoin_lf0(LF1, LF2, LF2&LF1):- var(LF1), !.

conjoin_lf0(LF1, LF2, _):- assertion_callable(LF1), assertion_callable(LF2),fail.

conjoin_lf0(LF1, LF2, Out):- compound(LF2), (LF2 = (LF2a & LF2b)), !, conjoin_lf0(LF1, LF2a, M), conjoin_lf0(M, LF2b, Out).

%conjoin_lf0(LF1, LF2, Out):- expand_lf(LF1, LF11),LF1\==LF11,!,conjoin_lf0(LF11, LF2, Out).
%conjoin_lf0(LF1, LF2, Out):- expand_lf(LF2, LF22),LF2\==LF22,!,conjoin_lf0(LF1, LF22, Out).

conjoin_lf0(LF1, LF2, Out):- conjoin_lf00(LF1, LF2, Out), !.
conjoin_lf0(LF1, LF2, Out):- conjoin_lf00(LF2, LF1, Out), !.
conjoin_lf0(precond(LF1),  LF2, Out):- !, conjoin_lf1(LF2, precond(LF1), Out).
conjoin_lf0(quant(X,LF1),  LF2, Out):- !, conjoin_lf1(LF2, quant(X,LF1), Out).
conjoin_lf0(LF1, LF2, Out):- conjoin_lf1(LF1, LF2, Out), !.

det_quantify(no,     X, Found, ~q(exists,X, Found)).
det_quantify(exists, X, Found,  q(exists,X, Found)).
det_quantify(every,  X, Found,    q(all, X, Found)).
det_quantify(any,   _X, Found,              Found ).
det_quantify(Q,      X, Found,    q(Q,   X, Found)).

'$quant_marker':attr_unify_hook(_,_) :- !.
'$quant_needed':attr_unify_hook(_,_) :- !.

conjoin_lf1(LF1, quant(X, Type), Out):-  
  (get_attr(X,'$quant_marker',_)-> Out=LF1 ; 
   (put_attr(X,'$quant_marker',Type),put_attr(X,'$quant_needed',false), det_quantify(Type,X,LF1,Out))),!.

conjoin_lf1(LF1, quant(X, Type), Out):-  
 (nb_current('$quant_marker',F);F=[]), 
    (sub_var(X,F) -> Out = LF1   ; ( nb_setval('$quant_marker',[X|F]), det_quantify(Type,X,LF1,Out))),!.
conjoin_lf1(LF1, quant(X, Type), Out):- conjoin_lf0(LF1, v(X), Found), (LF1==Found -> Out = LF1 ; det_quantify(Type,X,Found,Out)).

conjoin_lf1(LF1, precond(q(Q, X, LF2)), Out):- !, conjoin_lf1(LF1, q(Q, X, precond(LF2)), Out).
%conjoin_lf1(LF1,           precond(q(Q, X, LF2)), q(Q,  X, Out)):- conjoin_lf0(LF1,precond(LF2), Out).
conjoin_lf1(LF1,                   q(Q, X, LF2),  q(Q,  X, Out)):- conjoin_lf0(LF1, LF2, Out).
conjoin_lf1(q(Q1, Y, LF1),                 LF2,   q(Q1, Y, Out)):- conjoin_lf0(LF1, LF2, Out).
conjoin_lf1((LF1 => Post), precond(        LF2),  (Out => Post)):- conjoin_lf0(LF1, LF2, Out).
conjoin_lf1(LF1          , precond(        LF2),   (LF2 => LF1)).
conjoin_lf1((LF1 => Post),                 LF2,    (LF1 => Out)):- conjoin_lf0(Post, LF2, Out).

conjoin_lf1(LF1, LF2, Out):- conjoin_lf4(LF1, LF2, Out), !.
conjoin_lf1(LF1, LF2, Out):- conjoin_lf4(LF2, LF1, Out), !.
% conjoin_lf0(LF2, LF1, Out):- compound(LF2), (LF2 = (LF2a & LF2b)), !, conjoin_lf0(LF1, LF2a, M), conjoin_lf0(M, LF2b, Out).
conjoin_lf1(LF1, LF2, LF1&LF2):-!.



conjoin_lf4(LF1, LF2, Out):- compound(LF1), subst(LF1, '_addto', NEW, Out), LF1\==Out, NEW = (LF2 & '_addto'), !.



add_traits( X, T, LF, Out, L, L):- notrace(add_traits0( X, T, LF, Out)).
add_traits( X, T, LF, Out):- notrace(add_traits0( X, T, LF, Out)).

add_traits0(_X, V, LF, LF):- (var(V) ; V==[]) , !.
add_traits0( X, [H|List], LF, LFO):- !,
  add_traits0(X, H, LF, LFM),
  add_traits0(X, List, LFM, LFO).
add_traits0( X, H&List, LF, LFO):- !,
  add_traits0(X, H, LF, LFM),
  add_traits0(X, List, LFM, LFO).
add_traits0( X, T, LF, Out):- var_1trait( X, T, TLF), !, conjoin_lf(LF, TLF, Out).
add_traits0(_X, TLF, LF, Out):- conjoin_lf(LF, TLF, Out).

% var_1trait(X, sg, atMost(X, 1)).

%var_1trait(X, Prop, Out):- var(Prop), !, fail, Out = Prop.
var_1trait(X, Prop, call(X^Prop)):- var(Prop), !.
var_1trait(_, True, true):- True == true.
%var_1trait(X, sg, v(X)).
var_1trait(_, v_arg(_), true).
var_1trait(_, sg, true).
var_1trait(X, pl, atLeast(X, 2)).
% var_1trait(X, Atom, Out):- atom(Atom), i_name(t, Atom, Value), into_isa3(X, Value, Out).
var_1trait(X, Atom, Out):- atom(Atom), into_isa3(X, Atom, Out).
var_1trait(X, isa(Value), Prop):- !, var_1trait(X, Value, Prop).
var_1trait(_, gender(Var), true):- var(Var).
var_1trait(X, gender(masc), Prop):- into_isa3(X, tMale, Prop).
var_1trait(X, gender(fem), Prop):- into_isa3(X, tFemale, Prop).
var_1trait(X, gender(neut), Prop):- into_isa3(X, tInanimateObject, Prop).
var_1trait(_, person(Var), true):- var(Var).
var_1trait(X, person(N), denotableBy(X, Str)):- atom_concat(N, person, Str).
var_1trait(X, denote(Any), denotableBy(X, Str)):- any_to_string(Any, Str).
var_1trait(X, Str, denotableBy(X, Str)):- string(Str), nvd(Str,X).

var_1trait(X, Prop, denotableBy(X, XProp)):- compound(Prop), functor(Prop,F,A), atom_concat(_,'Fn',F),
  arg(A,Prop,Arg2), must_or_rtrace((any_to_string(Arg2,Str),i_name(i,F,FF),XProp=.. [FF,Str],!,nvd(Str,X))).
var_1trait(X, Prop, Prop):- compound(Prop), sub_var(X, Prop).  % arg(2, Prop, _).
var_1trait(X, Prop, ZProp):- compound(Prop), Prop=.. [F, Arg2], XProp=.. [F, X, Arg2], !,
 (var_1trait(X, XProp, ZProp) -> true ; ZProp = XProp).

 char_type_sentence(?,ask).
 char_type_sentence((.),tell).
 char_type_sentence((.),act).
 char_type_sentence((!),act).
 char_type_sentence((!),tell).
% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% Grammar %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
utterance(Type, LF, S, E):- var(Type), is_list(S), append(First,[ Char],S), \+ \+ char_type_sentence(Char,_), !, char_type_sentence(Char,Type),utterance(Type, LF, First, E).
utterance(ask, LF) -->   quietly(question(LF)).
utterance(tell, LF) -->  declarative(LF).
utterance(act, LF) -->   quietly(imperative(LF)).


% =================================================================
% Imperative sentences
% =================================================================
imperative(do(X, LFOut)) --> verb_phrase(_NewFrame, X, LFOut), optionalText1('!'), optionalText1('.'), nvd('Speaker', X).

% =================================================================
% Declarative sentences
% =================================================================
declarative(LFOut) --> theText1(if),!,frame_sentence(_Frame1,LHS),{add_quant(all,LHS)},
     optionalText1(','),theText1(then),frame_sentence(_Frame2,RHS),{add_quant(exists,RHS),expand_quants(LHS=>RHS,LFOut)}.
declarative(LHS==>RHS) --> theBaseForm(when),!,frame_sentence(Frame,LHS),{add_quant(all,LHS)},
    optionalText1(','),optionalText1('then'),frame_sentence(Frame,RHS),{add_quant(exists,RHS)}.

declarative(LFOut) --> frame_sentence(LFOut), optionalText1('.').

% Regular NP+VP
% frame_sentence(Frame, LF) --> tag(Frame, frame_sentence, LF), !.
frame_sentence(Frame, LFOut) --> noun_phrase(subj, X, true, Precond), verb_phrase(Frame, X, Postcond), 
  conjoin_lf(Postcond, Precond,LFOut).
frame_sentence(LFOut) --> frame_sentence(Frame, LFOut), {add_quant(exists,LFOut),add_quant(exists,Frame)}. 

add_quant(Type,X):- var(X) -> (get_attr(X,'$quant_needed',_)->true;put_attr(X,'$quant_needed',Type));
   (term_variables(X,Plain),maplist(add_quant(Type),Plain)).

term_plain_variables(LF,Plain):- term_variables(LF,Vars),exclude(attvar,Vars,Plain).
% =================================================================
% Interogative sentences @TODO
% =================================================================

question(Q                     ) --> tag(_NewFrame, question, Q), !.
question(Q                     ) --> interogative(Q), optionalText1('?').
% Questions
question(LFOut => answer(LFOut)) --> frame_sentence(_NewFrame, LFOut), [?].


% "is joe walking" (Inverted sentences)
sentence_inv(X, LFOut) -->  aux(_Tense+fin/_Form, S0, LFOut), noun_phrase(subj, X, LF, S0), verb_phrase(_NewFrame, X, LF).

% "What have you?"
% "who eats?"
% "What do you have?"
% "What do you think?"
% "How are you?"
% "How will you?"
interogative(LFOut => answer(X))   -->  whpron(X, LF, LFOut), verb_phrase(_NewFrame, X, LF).  % verb Form be _Tense+fin
% "where is joe walking?"
interogative(LFOut => answer(X))   -->  whpron(X, LF, LFOut), sentence_inv(X, LF).   % was gap(noun_phrase, X)
% "could he think of it?"
interogative(LFOut => answer(yes)) -->  sentence_inv(_X, LFOut).   % was nogap

% @TODO
% "is joe a person?"
% "are you happy?"
% "Could the dog"
% interogative(LFOut => answer(yes)) -->  copula_is_does, noun_phrase(subj, (X^SO)^LFOut, nogap),  noun_phrase(subj, (X^true)^q(exists,X, SO & true), nogap).

% =================================================================
% Verb Phrase
% =================================================================
verb_phrase(Frame, X, Out) --> verb_phrase1(Frame, X, LF), !, dcg_thru_2args(verb_phrase_post_mod(X, Frame), LF, Out).

verb_phrase1( Frame, X, ~(LFOut)) --> theText1(not), !, verb_phrase1(Frame, X, LFOut).
verb_phrase1(Frame, X, AssnOut) --> is_be(Frame, X, equals(X, Y) , Assn),optionalText1(equal),optionalText1(to),
  (pronoun(obj, Y, Assn, AssnOut);value_obj(obj, Y, Assn, AssnOut)).
verb_phrase1(Frame, X, AssnOut) --> is_be(Frame, X, AdjProp, AssnOut), adjective(X, AdjProp), nvd(is, Frame).
verb_phrase1(Frame, X, AssnOut) --> is_be(Frame, X, Assn, AssnOut), noun_phrase(obj, X, true, Assn).

% NEW
verb_phrase1( Frame, X, LFOut) --> verb_mod_surround(X, Frame, ditrans_verb(Frame, X, Y, Z, Assn1), Assn1, Assn2), noun_phrase(obj, Y, Assn2, Assn3), noun_phrase(oblique, Z, Assn3, LFOut).
%verb_phrase1( Frame, X, LFOut) --> verb_mod_surround(X, Frame, trans_verb(Frame, X, Y), true, Assn2), noun_phrase(obj, Y, Assn2, LFOut).
%verb_phrase1( Frame, X, LFOut) --> verb_mod_surround(X, Frame, intrans_verb(Frame, X), true, LFOut).
% OLD
verb_phrase1( Frame, X, LFOut) --> verb_mod_surround(X, Frame, trans_verb(Frame, X, Y, Assn1), Assn1, Assn2),    
    noun_phrase(obj, Y, Assn2, LFOut).
verb_phrase1( Frame, X, LFOut) --> verb_mod_surround(X, Frame, intrans_verb(Frame, X, Assn1), Assn1, LFOut).

verb_phrase1( Frame, X, AssnOut) --> is_be(Frame,X, LF, AssnOut), verb_phrase1(Frame, X, LF).

:- discontiguous(talk_verb_lf/8).


% =================================================================
% Ditrans Verb
% =================================================================
ditrans_verb(Frame, X, Y, Z, LFO) --> ditrans_verb1(Frame, Time, X, Y, Z, LF), {expand_lf(isa(Frame,timeFn(Time))&LF, LFO)}.

% paits her a picture
ditrans_verb1(_Frame, pres+fin, X, Y, Z, doesAgentRecipientSomething(paints, X, Y, Z)) --> theText1(paints).
ditrans_verb1(_Frame, pres+fin, X, Y, Z, doesAgentRecipientSomething(gave, X, Y, Z)) --> theText1(gave).
ditrans_verb1(Frame, Time, X, Y, Z, LF) --> talk_verb(Frame, IV, dtv(X, Y, Z), Time, LF), nvd(IV, Frame).  % & isa(Frame, timeFn(Time)

  talk_verb_lf(_Frame, dtv(X, Y, Z), write,    writes,  wrote,    written,   writing,  doesAgentRecipientSomething(writes, X, Y, Z)).

   talk_verb_lf(Frame, dtv(X, Y, Z), Write,  Writes,  Wrote,    Written,   Writing,
                                             isa(Frame, a(event,Writing))
                                             &doer(Frame, X)
                                             &t([Writing, "To"], Frame, Y)
                                             &t([Written,"Object"], Frame, Z)) :-
     talkdb:talk_db(ditransitive, Write, Writes, Wrote, Writing, Written).
     




% =================================================================
% Trans Verb
% =================================================================
trans_verb(Frame, X, Y, LFO) --> trans_verb1(Frame, Time, XY, YX, LF), ((([by];[of]),{Y=XY,X=YX});([],{X=XY,Y=YX})),!,
% OLD 
{make_time_info(Frame, Time, LF, LFO)}.
% NEW {expand_lf(isa(Frame,timeFn(Time)) &LF, LFO)}.
 
trans_verb1(_Frame, pres+fin, X, Y, z(painting, X, Y)) --> theText1(paints).
trans_verb1(_Frame, pres+fin, X, Y, z(admiring, X, Y)) --> theText1(admires).
trans_verb1(_Frame, Type,     X, Y, z(Verb, X, Y)) --> theText1(Formed),{ clex_verb(Formed, Verb, tv, Type)}.
trans_verb1(Frame, Time, X, Y, LF) --> talk_verb(Frame, IV, tv(X, Y), Time, LF), nvd(IV, Frame).  % & isa(Frame, timeFn(Time)

% helper for talk_verb_lf/. . .
talk_verb(Frame, IV, Type, Mod, LF) --> theText1(IV),{lf_talk_verb(Frame, IV, Type, Mod, LF)}.
 

lf_talk_verb(Frame, IV, Type, nonfinite, LF):- talk_verb_lf(Frame, Type, IV, _, _, _, _, LF).
lf_talk_verb(Frame, IV, Type, pres+fin,  LF):- talk_verb_lf(Frame, Type, _, IV, _, _, _, LF).
lf_talk_verb(Frame, IV, Type, past+fin,  LF):- talk_verb_lf(Frame, Type, _, _, IV, _, _, LF).
lf_talk_verb(Frame, IV, Type, past+part, LF):- talk_verb_lf(Frame, Type, _, _, _, IV, _, LF).
lf_talk_verb(Frame, IV, Type, pres+part, LF):- talk_verb_lf(Frame, Type, _, _, _, _, IV, LF).
lf_talk_verb(_Frame, IV, tv(X,Y),Type, z(Verb, X, Y)):- clex_verb(IV, Verb, tv, Type).
lf_talk_verb(_Frame, IV, iv(X),  Type, z(Verb, X, _)):- clex_verb(IV, Verb, iv, Type).




%                           nonfinite, pres+fin, past+fin, past+part, pres+part,  LF
 talk_verb_lf(_Frame, tv(X, Y), meet,     meets,   met,      met,       meeting,   z(meeting, X, Y)).
 talk_verb_lf(_Frame, tv(X, Y), concern, concerns, concerned, concerned, concerning,   z(concerning, X, Y)).
 talk_verb_lf(_Frame, tv(X, Y), run,     runs,      ran,        run, running,      z(running, X, Y)).
%talk_verb_lf(_Frame, tv(X, Y), write,    writes,  wrote,    written,   writing,   z(writing, X, Y)).
% OLD
 talk_verb_lf( Frame, tv(X, Y), Write,    Writes,  Wrote,    Written,   Writing,
                                           isa(Frame, ProperEvent)&doer(Frame, X)&MadeObj) :-
   talkdb:talk_db(transitive, Write, Writes, Wrote, Writing, Written),
   toPropercase(Writing, ProperEvent),
   make_object(Frame, Written, Y, MadeObj).
make_object(Frame, Written, Y, t([Written,"Object"],Frame,Y)).

% NEW
/*
  talk_verb_lf( Frame, tv(X, Y), Write,    Writes,  Wrote,    Written,   Writing,
                        talkdb:talk_db(transitive, Write, Writes, Wrote, Writing, Written).
*/
% =================================================================
% Intrans Verb
% =================================================================
intrans_verb(Frame, X, LFO) --> intrans_verb1(Frame, Time, X, LF), 
% OLD 
  {make_time_info(Frame, Time, LF, LFO)}.
% NEW expand_lf(isa(Frame,timeFn(Time)) &LF, LFO)}.
 
intrans_verb1(_Frame, pres+fin, X, z(painting, X)) --> theText1(paints).
intrans_verb1(_Frame, past+fin, X, z(wrote, X, _)) --> theText1(wrote).
intrans_verb1(_Frame, Type, X, z(Verb, X, _)) --> theText1(Formed),{ clex_verb(Formed, Verb, iv, Type)}.

intrans_verb1(Frame, Time, X, LF) --> talk_verb(Frame, IV, iv(X), Time, LF), nvd(IV, Frame).
% fallback
intrans_verb1(Frame, Time, X, LF) --> talk_verb(Frame, IV, tv(X, _), Time, LF), nvd(IV, Frame).

%                nonfinite, pres+fin, past+fin, past+part, pres+part, LF

 talk_verb_lf(_Frame, iv(X), halt,     halts,   halted,   halted,    halting, z(halting, X)).
%OLD
  talk_verb_lf(Frame, iv(X), Write,    Writes,  Wrote,    Written,   Writing,  
    isa(Frame, ProperEvent)
    &doer(Frame, X)) :-
    toPropercase(Writing, ProperEvent),
    talkdb:talk_db(intransitive, Write, Writes, Wrote, Writing, Written).
%NEW 
/*
 talk_verb_lf(Frame, iv(X), Write,    Writes,  Wrote,    Written,   Writing, 
   isa(Frame, a(event,Writing))
   &doer(Frame, X)) :-
                  talkdb:talk_db(intransitive, Write, Writes, Wrote, Writing, Written).
*/




% =================================================================
% Infinitival Verbs % @TODO
% =================================================================
talk_verb_lf(_Frame, infinitival(X, Y), want, wants, wanted,   wanted,   wanting,  ((z(want, Y, X, Comp)&LFOut) & Comp & LFOut )).

%semantics is partially execution of
% NP ^VP ^Y ^NP(X want(Y, X, VP(X)))
%((X^ '`'(want(Y, X, Comp)))^LFOut) ^(X^Comp) ^Y ^LFOut, % form of VP required:
%infinitival).

% =================================================================
% Auxilary Forms
% =================================================================
aux(Form, LFIn, LFOut) --> theText1(Aux), {aux_lf(Aux, Form, LFIn, LFOut)}.
 aux_lf(to , infinitival/nonfinite , VP, VP).
 aux_lf(does , _Tense+fin/nonfinite , VP, VP).
 aux_lf(did , _Tense+fin/nonfinite , VP, VP).
 aux_lf(to , _/_ , VP, VP).

is_be( Frame, X, NounProp, NounPropO) --> is_be1( Frame, X, NounProp, NounPropM),
  (theText1(not) -> {NounPropO = ~NounPropM} ; {NounPropO = NounPropM}).
  

is_be1(_Frame,_X, NounProp, NounProp ) --> theText1(is);theText1(be);theText1(am).
is_be1(_Frame, X, NounProp, NounProp &atLeast(X, 2)) --> theText1(are).
is_be1(_Frame,_X, NounProp, holdsIn('vPast', NounProp)) --> theText1(was).
is_be1(_Frame, X, NounProp, holdsIn('vPast', NounProp&atLeast(X, 2))) --> theText1(were).

copula_is_does --> theText1(C), {copula_is_does_dict(C)}.

  copula_is_does_dict(is).
  copula_is_does_dict(does).

% =================================================================
% Prepostional Phrase / Verb Satellites
% =================================================================
verb_phrase_post_mod(X,Frame, LFIn, LFOut) -->  prepostional_phrase(oblique, X, Frame, LFIn, LFOut).

prepostional_phrase(_SO, X, _Frame, LF, TAG & LF) --> tag(X, prep_phrase, TAG), !.
prepostional_phrase(SO, X, Frame, LF, Out) --> theText1(Prep), {prep_dict(Prep),ok_prep(Prep)}, noun_phrase(SO, Y, prep(Frame, Prep, X, Y) & LF, Out).
prepostional_phrase(SO, X, _Frame, LF, Out) --> theText1(about), noun_phrase(SO, Y, about(X, Y) & LF, Out).

   prep_dict(to).
   prep_dict(X):- talkdb:talk_db(preposition, X).

   ok_prep(M):- M\==a.


% OLD
verb_mod_surround(X, Frame, Verb, In, Out) -->
  dcg_thru_2args(verb_pre_mod(X, Frame), In, Mid),
  Verb,
  dcg_thru_2args(verb_post_mod(X, Frame), Mid, Out).
/*
% NEW 
verb_mod_surround(X, Frame, Verb, In, Out) -->
  dcg_thru_2args(verb_pre_mod(X, Frame), In, Mid),
  dcg_call(Verb,VerbMid),
  dcg_thru_2args(verb_post_mod(X, Frame), VerbMid, VerbPost),
  conjoin_lf(Mid,VerbPost,Out).
  

*/


% quickly <jumped>
verb_pre_mod(_,Frame, LF, Out) --> adverb(Frame, MProps), conjoin_lf(LF, MProps, Out).

% <jumped> quickly
verb_post_mod(_,Frame, LF, Out) --> {fail}, adverb(Frame, MProps), conjoin_lf(LF, MProps, Out).
verb_post_mod(X, Frame, LFIn, FLOut) -->  {fail},  prepostional_phrase(oblique, X, Frame, LFIn, FLOut).

% adverb(X, MProps) --> quietly(maybe_negated_dcg(adverb1(X), MProps)).
adverb(X, MProps) --> quietly(adverb1(X, MProps)).
adverb1(X, MProps)  -->      theText1(Adv), {adv_lf(X, Adv, MProps)}.
 adv_lf(X, Adv, ISA) :-  fail,
   ((    clex_iface:clex_adv(Adv, RAdv, _);
         talkdb:talk_db(_, RAdv, Adv);
        (((parser_chat80:comp_adv_db(Adv);parser_chat80:sup_adv_db(Adv);parser_chat80:adverb_db(Adv))),RAdv=Adv);
         (talkdb:talk_db(adv, Adv),RAdv=Adv))),
    into_isa3(X, advFn(RAdv), ISA).    

% =================================================================
% Noun Phrase
% =================================================================
% what the product is
noun_phrase(SO, X, LF, Out) --> theText1(what), noun_phrase1(SO, Y, LF, LF0), theText1(is), conjoin_lf(LF0 , what_is(Y, X), Out).
%poss_pron_db(his, masc, 3, sg)  noun_phrase(subj, X, LF, ownedBy(X, him) & LFOut) --> theText1(his), dcg_push(some), noun_phrase1(SO, X, LF, LFOut).
noun_phrase(SO, X, LF0, LFOut) -->
  theText1(His), {nl_call(poss_pron_db,His, Masc, Pers, SgOrpl)},
  add_traits(Y, [ownedBy(X, Y), gender(Masc), person(Pers), SgOrpl], LF0, LF),
  dcg_push(some), noun_phrase1(SO, X, LF, LFOut).

noun_phrase(SO, X, LF, LFOut) --> noun_phrase1(SO, X, LF, LFOut).


:- discontiguous(noun_phrase1//4).
noun_phrase1(_SO, X, LF, ~exist(X, LF)) --> theText1(nothing).
noun_phrase1(_SO, X, LF, exist(X, LF)) --> theText1(something).

  % some good food
noun_phrase1(SO, X, LF, LFOut) -->
    determiner(X, DetProps),
    dcg_must_each_det((dcg_thru_2args(noun_pre_mod(SO, X), true, PreProps),
    noun(SO, X, NounProps),
    dcg_thru_2args(noun_post_mod(SO, X), true, PostProps),
    conjoin_lf(NounProps, PreProps&PostProps, Precond),
    add_traits(X, DetProps, Precond, PrecondDet),
    conjoin_lf(PrecondDet, LF, LFOut))).

determiner1(_Var, quant(every)) --> theText1(every);theText1(all);theText1(each).
determiner1(_Var, quant(no)) --> theText1(no);dcg_peek(theText1(zero)).
determiner1(_Var, quant(exists)) --> theText1(some);theText1(any);[there, exists];theText1(exists).
determiner1(_Var, quant(exists)) --> theText1(a);theText1(an).
determiner1(_Var, true) --> [].

determiner2( Var, quant(exists)&the(Var)) --> theText1(the).
determiner2(_Var, true) --> [].

determiner3(_Var, numberOf(0)) --> theText1(no);theText1(zero).
determiner3(_Var, quant(exists)&numberOf(1)) --> theText1(one).
determiner3(_Var, quant(exists)&numberOf(3)) --> theText1(three).
determiner3(_Var, quant(exists)&numberOf(N)) --> [nb(N)].
determiner3(_Var, true) --> [].

determiner( V, LF) --> determiner1(V,LF1), determiner2(V,LF2), determiner3(V,LF3),conjoin_lf(LF1,LF2&LF3,LF).


% it, she, we, them, everyone
noun_phrase1(SO, X, LF, Out) -->
  pronoun(SO, X, LF, LF2),
  dcg_thru_2args(noun_post_mod(SO, X), LF2, Out).


/*
determiner(Var, Prop, LF,  q(all, Var, (Prop => LF))) --> theText1(every);theText1(all).
determiner(Var, Prop, LF, q(exists,Var, the(Var) & Prop & LF)) --> theText1(the).
determiner(Var, Prop, LF, q(exists,Var, Prop & LF)) --> theText1(a);theText1(an);theText1(some).
determiner(Var, Prop, LF, ~q(exists,Var, Prop & LF)) --> theText1(no).
% some good food
noun_phrase1(SO, X, LF, LFOut) -->
    determiner(X, Precond, LF, LFOut),
    dcg_thru_2args(noun_pre_mod(SO, X), NounProp, AdjProps),
    noun(SO, X, NounProp),
    dcg_thru_2args(noun_post_mod(SO, X), AdjProps, Precond).
*/
% happy Jack
noun_phrase1(SO, X, LF, LFOut) -->
   dcg_thru_2args(noun_pre_mod(SO, X), LF, LF),
   proper_noun(X),
   dcg_thru_2args(noun_post_mod(SO, X), LF, LFOut).


% =================================================================
% Relational Clauses / Noun Satellites
% =================================================================

rel_clause(_SO, X, LF, Out) --> theText1(Who), {relpron_dict(Who)},!, verb_phrase(_NewFrame, X, LF0), conjoin_lf(LF , LF0, Out).

  relpron_dict(that).  relpron_dict(who).  relpron_dict(whom).

adjective(X, MProps) --> quietly(maybe_negated_dcg(adjective1(X), MProps)).
adjective1(X, MProps)  -->      theText1(Adj), {adj_lf(X, Adj, MProps)}.

 adj_lf(X, Adj, ISA) :- 
   ((   (parser_chat80:adj_db( Adj, _),RAdj=Adj);
         clex_iface:clex_adj(Adj, RAdj, _);
         talkdb:talk_db(_, RAdj, Adj);
        (talkdb:talk_db(adj, Adj),RAdj=Adj))),
    into_isa3(X, tColFn(RAdj), ISA).

noun_pre_mod(_SO, X, LF, Out) --> adjective(X, MProps), conjoin_lf(LF, MProps, Out).
noun_pre_mod(SO,  X, LF, Out) --> near_noun_mod(SO, X, LF, Out).

near_noun_mod(_SO, X, LF, Out) --> theText1([hapilly, maried]), conjoin_lf(LF , hapilly_maried(X), Out).

noun_post_mod(SO, X, LF, Out) --> theText1(of), noun_phrase(SO, Y, LF, LF0), conjoin_lf(LF0, of(X, Y), Out).

noun_post_mod(SO, X, LF, Out) --> theText1([owned, by]), noun_phrase(SO, Y, LF & ownedBy(X, Y), Out).
%noun_post_mod(SO, X, LF, LFOut)  --> prepostional_phrase(SO, X, _Frame, LF, LFOut).
noun_post_mod(SO, X, LF, Out)  --> rel_clause(SO, X, LF, Out).
noun_post_mod(SO, X, LF, Out) --> near_noun_mod(SO, X, LF, Out).

% =================================================================
%  Word-level Negation
% =================================================================
must_test_bratko("terry writes a non-program", tell).
must_test_bratko("every nonhuman programmer writes a program", tell).
must_test_bratko("every human programmer writes a not a program", tell).

must_test_bratko("every human programmer happily writes a not a program", tell).

pos_or_neg(-) --> theText1(not), plt, !, optionalText1('a'), optionalText1('an').
pos_or_neg(-) --> theText1(not).
pos_or_neg(-) --> theText1(non), optionalText1('-').
pos_or_neg(-) --> theText1(Neg), {atomic(Neg), neg_to_pos(Neg, Pos)}, !, dcg_push(Pos).
pos_or_neg(+) --> [].

neg_to_pos(UnHappy, Happy) :- atom_concat('un', Happy, UnHappy).
neg_to_pos(InHumane, Humane):- atom_concat('in', Humane, InHumane).
neg_to_pos(NonHuman, Human) :- atom_concat('non-', Human, NonHuman).
neg_to_pos(NonHuman, Human) :- atom_concat('non', Human, NonHuman).
neg_to_pos(DisEnchanted, Enchanted) :- atom_concat('dis', Enchanted, DisEnchanted).

maybe_did_hack(PosLF, skipped, PosLF).
maybe_did_hack(PosLF, (-) ,  ~PosLF):-!.
maybe_did_hack(PosLF, (ly) ,  ly(PosLF)):-!.
maybe_did_hack(PosLF, _,       PosLF).

maybe_negated_dcg(DCGGoal1, LF) -->
 {quietly(append_term(DCGGoal1, PosLF, DCGGoal0))},
  pos_or_neg(Did), !, DCGGoal0,
 {maybe_did_hack(PosLF, Did, LF)}.

has_suffix(Ly, Ly) --> theText1(DasterdLy), {atom_concat(Dasterd, Ly, DasterdLy)}, dcg_push(Dasterd).
has_suffix('ly', 'ly') --> theText1(Happily), {atom_concat(Happ, 'ily', Happily), atom_concat(Happ, 'y', Happy)}, dcg_push(Happy).
has_suffix(_Ly, skipped) --> [].

maybe_suffixed_dcg(DCGGoal1, Suffix, LF) -->
  {append_term(DCGGoal1, PosLF, DCGGoal0)},
   has_suffix(Suffix, Did), !, DCGGoal0,
  {maybe_did_hack(PosLF, Did, LF)}.

% =================================================================
%  Noun Units
% =================================================================
whpron(_, LF, LF & pronounQQFn(WH)) --> theText1(WH), {whpron_dict(WH)},!.

  whpron_dict(who).
  whpron_dict(whom).
  whpron_dict(what).
  whpron_dict(how).
  whpron_dict(Which):- talkdb:talk_db(pronoun, Which), atom_concat('w', _, Which).

% pers_pron_db
% pronoun(_SO, X, _LF, _Out) --> determiner(X, _), !, {fail}.
pronoun(SO, X, LF, Out) --> theText1(noone),dcg_push(nobody),!,pronoun(SO, X, LF, Out).

pronoun(_SO, X, LF, Out) --> theText1(none), add_traits(X, [pronounQFn("none"), quant(no)], LF, Out), !.
pronoun(_SO, X, LF, Out) --> theText1(one), add_traits(X, [pronounQFn("one"), numberOf(1), quant(exists)], LF, Out), !.
pronoun(_SO, X, LF, Out) --> theText1(some), add_traits(X, [pronounQFn("some"), atLeast(1), quant(exists)], LF, Out), !.
 
%pronoun(SO, X, LF, Out) --> theText1(one),dcg_push(someone),!,pronoun(SO, X, LF, Out).

pronoun(SO, X, LF, Out) --> theText1(Nobody), {nl_call(quantifier_pron_db,Nobody, No, Body),pronoun_ok(_Subj,SO)},
 {foc_framevar(Nobody,VarFn,X)},
  add_traits(X, [pronounDFn(Nobody), quant(No),pronounVarFn(VarFn),Body], LF, Out), !.

pronoun(SO, X, LF, Out) --> theText1(She), {nl_call(pers_pron_db,She, Fem, Third, Sing, Subj), pronoun_ok(Subj,SO)},
 {foc_framevar(She,VarFn,X)},
  add_traits(X, [pronounCFn(She), gender(Fem), person(Third), pronounVarFn(VarFn), Sing, v_arg(Subj)], LF, Out), !.

pronoun(SO, X, LF, Out) --> theText1(Herself), {nl_call(reflexive_pronoun,VarName,Herself,Traits),               
  (member(v_arg(O),Traits)-> pronoun_ok(O,SO); true),foc_framevar(VarName,VarFn,X)},
  add_traits(X, [pronounBFn(Herself), pronounVarFn(VarFn)|Traits], LF, Out), !.

pronoun(SO, X, LF, Out) --> named_var(SO, X, LF, Out).

pronoun(subj, X, LF, Out) --> theText1(WH), {whpron_dict(WH)},
  add_traits(X, pronounAFn(WH), LF, Out).


named_var(_SO, X, LF, Out) --> [?,VarName], {foc_framevar(VarName,VarFn,X)},add_traits(X, [pronounVarFn(VarFn)], LF, Out), !.
named_var(_SO, X, LF, Out) --> [QVAR], {atom_concat('?',VarName,QVAR),VarName\=='',foc_framevar(VarName,VarFn,X)}, 
  add_traits(X, [pronounVarFn(VarFn)], LF, Out), !.

foc_framevar(VarName,VarFn,X):- toPropercase(VarName,VarFn),!,foc_framevar2(VarFn,X).
foc_framevar2(VarFn,X):- nb_current('$frame_variable_names',Vs),member(N=V,Vs),VarFn==N,!,must(X=V).
foc_framevar2(VarFn,X):- (nb_current('$frame_variable_names',Vs);Vs=[]),!,nb_setval('$frame_variable_names',[VarFn=X|Vs]).


pronoun_ok(Obj, Subject):- Obj == obj, Subject == subj, !, fail.
pronoun_ok(_80, _SO).


reflexive_pronoun(she,herself,[v_arg(obj),person(3),sg,gender(fem)]).
reflexive_pronoun(he,himself,[v_arg(obj),person(3),sg,gender(masc)]).
reflexive_pronoun(it,itself,[v_arg(obj),person(3),sg,gender(neut)]).
reflexive_pronoun(us,ourself,[v_arg(obj),person(1),pl]).
reflexive_pronoun(them,themself,[v_arg(obj),person(3),pl]).
reflexive_pronoun(you,yourself,[v_arg(obj),person(2),pl]).
reflexive_pronoun(me,myself,[v_arg(obj),person(1),sg]).
reflexive_pronoun(you,yourself,[person(2),sg]).
reflexive_pronoun(us,ourselves,[person(1),pl]).
reflexive_pronoun(them,themselves,[person(3),pl]).
reflexive_pronoun(you,yourselves,[person(2),pl]).


noun(_SO, X, ~something(X)) --> theText1(nothing), nvd(nothing, X).
noun(_SO, X, something(X)) --> theText1(something), nvd(something, X).
noun(SO, X, LF) --> maybe_negated_dcg(noun1(SO, X), LF).

noun1(SO, X, LF) --> theText1(N), {noun_lf(SO, X, N, LF)}, nvd(N, X).
noun1(SO, X, LF) --> named_var(SO, X, true, LF).

 noun_lf(_SO, X, Word, Out) :-
   (Word=Sing;Word=Plur), talkdb:talk_db(noun1, Sing, Plur), !,
    ISA = Sing,
    (Sing==Plur -> add_traits(X, [ISA, denote(Word)], true, Out) ;
    (Word==Plur ->  add_traits(X, [ISA, pl], true, Out) ;
     add_traits(X, [ISA, sg], true, Out))).

 noun_lf(_SO, X, Mass, Out) :- talkdb:talk_db(noun2, Mass), add_traits(X, [Mass, denote(Mass)], true, Out).
 noun_lf(_SO, X, Sing, Out) :- noun_dict(Sing), add_traits(X, [ Sing], true, Out).

  noun_dict(author).  noun_dict(human).  noun_dict(book).  noun_dict(professor).  noun_dict(program).
  noun_dict(programmer).  noun_dict(student).  noun_dict(man).  noun_dict(woman).


value_obj(_SO, Entity, LF, LF) --> proper_noun(Entity).
value_obj( SO, X, LF, Out) --> named_var(SO, X, LF, Out).
value_obj(_SO, X, LF, LF) --> numberic_value(X).
value_obj(_SO, X, LF, MProps&LF) --> adjective1(X, MProps).

numberic_value(N) --> [nb(N)],!,{nonvar(N)}.
numberic_value(N) --> [W],{atom_number(W,N)}.

proper_noun(Entity) --> quietly(([PN1,PN2], {was_propercase(PN1),was_propercase(PN2),
                                             downcase_atom(PN1,DN1),downcase_atom(PN2,DN2),
                                             atomic_list_concat([DN1,DN2],'_',Entity)})).
proper_noun(Entity) --> quietly(([PN], {pn_lf(PN, Entity)})).


   pn_lf(nb(N), N):-!.
   pn_lf(Name, Value) :- atom(Name), pn_dict(Name), i_name(i, Name, Value).

   was_propercase(Name):- atomic(Name), atom_length(Name,L),L>1,toPropercase(Name, PC),!, PC==Name.

    pn_dict(Name):- was_propercase(Name),!.
    pn_dict(Name):- parser_chat80:name_template_db(Name, _).

    %pn_dict(Name):- atom(Name),downcase_atom(Name,Down),
    pn_dict_tiny(begriffsschrift,place).  pn_dict_tiny(gottlob,city).

    pn_dict_tiny(principia,book). 
    pn_dict_tiny(thingy,thing). 
    pn_dict_tiny(lunar,robot).    
    pn_dict_tiny(shrdlu,robot).  
    pn_dict_tiny(monet,person).
    pn_dict_tiny(alfred,person).
    pn_dict_tiny(terry,person). 
    pn_dict_tiny(john,person).
    pn_dict_tiny(dmiles,person).  
    pn_dict_tiny(annie,person).  
    pn_dict_tiny(bertrand,person).
    pn_dict_tiny(ohad,person).
    pn_dict_tiny(bill,person).  

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% DCG UTILS %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
% plt --> quietly(([], {plt})).

% iterative deeping flag
plt(A, A):- notrace(plt).

quietly(DCG, S, E):- setup_call_cleanup(quietly(phrase(DCG, S, E)),true,true).

dcg_peek(DCG,S,S):- phrase(DCG,S,_).

tag(Frame, Tag, isa(Frame, TAG)) --> {atomic(Tag)}, !, [$, TAG], {atom(TAG),downcase_atom(TAG, Start), atom_concat(Tag, _, Start)}.
tag(Frame, Cmp, N) --> {compound(Cmp),functor(Cmp, F, _)}, tag(Frame, F, N).

dcg_must_each_det(G, S, E):- !, phrase(G, S, E), !.

dcg_must_each_det(_, S, _):- S == [], !, fail.
dcg_must_each_det((G1, G2), S, E):- !, must(phrase(G1, S, M)), !, dcg_must_each_det(G2, M, E), !.
dcg_must_each_det(G, S, E):- !, must(phrase(G, S, E)), !.

dcg_and(DCG1, DCG2, S, E) :- dcg_phrase(DCG1, S, E), dcg_phrase(DCG2, S, E), !.

% Push a new term onto DCG stack
dcg_push(List, S, ListS):- is_list(List), !, append(List, S, ListS).
dcg_push(A, S, [A|S]).

theText1(IC)--> {var(IC),!},[W1],{downcase_atom(W1,IC)}.
theText1([])--> !, [].
theText1(IC)--> {atomic(IC),downcase_atom(IC,DC)},[W1],{W1=DC;downcase_atom(W1,DC)},!.
theText1([H|T])--> theText1(H),!,theText1(T).
%theText1(Txt)--> [w(Txt,_)].

theBaseForm(Tex)-->[Text],{atom_concat(Tex,_,Text)}.

optionalText1(X) --> theText1(X),!.
optionalText1(_) --> [].

dcg_call(DCG1,Arg,S,E):-
  append_term(DCG1,Arg,DCG0),
  phrase(DCG0,S,E).

dcg_call(DCG2,Arg1,Arg2,S,E):-
   notrace((append_term(DCG2, Arg1, DCG1),
            append_term(DCG1, Arg2, DCG0))),
  phrase(DCG0,S,E).

dcg_thru_2args(DCG2, In, Out) -->
   dcg_call(DCG2,In,Mid),
   dcg_thru_2args(DCG2, Mid, Out).
dcg_thru_2args(_, Same, Same) --> [].

% nvd(N, X) --> quietly(( [], {nvd(N, X)})).
nvd(N, X, A, A):- notrace(nvd(N, X)).
% =================================================================
% %%%%%%%%%%%%%%%%%%%%%  UTILS %%%%%%%%%%%%%%%%
% =================================================================
nvd(N, X):- var(N), var(X), !.
nvd(N, X):- var(N), nonvar(X), !, nvd(X, N), !.
nvd(_, X):- nonvar(X), !.
nvd(N&_, X):- nonvar(N), !, nvd(N, X).
nvd(N, X):- compound(N), N=.. [z, F|_], may_debug_var([F, '_Frame'], X).
nvd(N, X):- atom(N), name(N, Name), last(Name, C), \+ char_type(C, digit), !, gensym(N, NN), !, may_debug_var(NN, X), !.
nvd(N, X):- may_debug_var(N, X), !.

into_isa3(X, Y, isa(X, YY)):- atom(Y), (atom_concat('t', Name, Y)-> YY=Y; (toPropercase(Y, YY), Name=YY)), gensym(Name, VarName), nvd(VarName, X).
into_isa3(X, Y, isa(X, YY)):- compound(Y), Y=.. [Fn, Word], atom_concat(_, 'Fn', Fn), any_to_string(Word, Str), !, YY=.. [Fn, Str].
into_isa3(X, Y, isa(X, Y)):-!.

conc([], L, L).
conc([H|T], L, [H|R]) :- conc(T, L, R).

into_combines(Words,WordsA):- maplist(any_nb_to_atom, Words, WordsA).

to_wordlist_atoms(Sentence, WordsA):- into_text80(Sentence, Words),into_combines(Words,WordsA).
to_wordlist_atoms(Sentence, WordsA):-
   to_word_list(Sentence, Words),
   maplist(any_to_atom, Words, WordsA), !.



:- retract(t_l:into_form_code).


:- context_module(CM), module_predicates_are_exported(CM).
:- context_module(CM), module_meta_predicates_are_transparent(CM).

% :- context_module(CM), module_property(CM, exports(List)), moo_hide_show_childs(List).

:- fixup_exports.

