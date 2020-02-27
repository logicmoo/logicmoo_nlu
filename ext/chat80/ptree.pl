/*

 _________________________________________________________________________
|	Copyright (C) 1982						  |
|									  |
|	David Warren,							  |
|		SRI International, 333 Ravenswood Ave., Menlo Park,	  |
|		California 94025, USA;					  |
|									  |
|	Fernando Pereira,						  |
|		Dept. of Architecture, University of Edinburgh,		  |
|		20 Chambers St., Edinburgh EH1 1JZ, Scotland		  |
|									  |
|	This program may be used, copied, altered or included in other	  |
|	programs only for academic purposes and provided that the	  |
|	authorship of the initial program is aknowledged.		  |
|	Use for commercial purposes without the previous written 	  |
|	agreement of the authors is forbidden.				  |
|_________________________________________________________________________|

*/

/* Print term as a tree */

print_tree(T) :-
   numbervars80(T,1,_),
   pt0('','',T,0), nl, fail.
print_tree(_).

inperent(In,TTs,T,Ts):- 
      TTs=..[In,T,Ts], 
      functor(TTsS,In,2),     
     ((nonvar(T), T=TTsS);(nonvar(Ts), Ts=TTsS)).

pt0(_,LC,A,I) :-
   as_is(A), !,
   tab(I), write_simple(A),write(LC), nl.

/*
pt0(In,LC,TTs,I) :- 
   inperent(In,TTs,T,Ts),
   I0 is I-3,
   pt0(In,LC,T,I0),   
   pt0(In,LC,Ts,I).
*/
pt0(In,LC,[T|Ts],I) :- !,
   pt0(In,LC,T,I),
   pt(In,LC,Ts,I).

pt0(In,LC,q(E,V,G),I):- atom(E), !, T=..[E,V,G],!, pt0(In,LC,T,I).
pt0(In,LC,T,I) :- !,
   T=..[F|As],   
   ((In==F, F == & )
     -> (I0 is I+1,LCO='~w' )
      ; (tab(I), format('~p(',[F]), I0 is I+3, nl, LCO=')~w')),
   format(atom(LC2),LCO,[LC]),
   pt(F,LC2,As,I0).

pt(_In,_LC,[],_) :- !.
pt( In, LC,[A],I) :- !,
   pt0(In,LC,A,I).
pt( In, LC,[A|As],I) :- !,
   pt0(In,',',A,I),
   pt(In,LC,As,I).

is_arity_lt1(A) :- \+ compound(A),!.
is_arity_lt1(A) :- compound_name_arity(A,_,0),!.

write_simple(A):- is_arity_lt1(A),!, format('~q',[A]).
write_simple(A):- format('~p',[A]).

as_is(V):- var(V).
as_is(A) :- is_arity_lt1(A), !.
as_is(A) :- is_list(A),length(A,L),L<2,!.
as_is(A) :- functor(A,F,_), simple_f(F).
as_is('_'(_)) :- !.
as_is(X) :-
   quote80(X).
as_is(F):- simple_arg(F), !.
as_is(A) :- A=..[_|S], maplist(simple_arg,S), !.

simple_f(denotableBy).
simple_f(HasSpace):- atom_contains(HasSpace,' ').

simple_arg(S):- (nvar(S) ; \+ compound(S)),!.
simple_arg(S):- \+ (arg(_,S,Var), compound(Var), \+ nvar(Var)).

nvar(S):- \+ is_arity_lt1(S)-> functor(S,'$VAR',_); var(S).
