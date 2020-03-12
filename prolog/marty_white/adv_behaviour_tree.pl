/*
% NomicMUD: A MUD server written in Prolog
% Maintainer: Douglas Miles
% Dec 13, 2035
%
% Bits and pieces:
%
% LogicMOO, Inform7, FROLOG, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
% 
% Feb 20,2020 - Douglas Miles
%
% Logicmoo Project changes:
%
%
*/

  

load_bt_file(File):- 
  ensure_loaded(File).



:- op(1200,xfy, ('==>>')).
:- op(1200,xfy, ('::=')).

is_metacall_bt(F,_):- is_metacall_bt(F).
is_metacall_bt(',').
is_metacall_bt(';').
is_metacall_bt('\\+').
is_metacall_bt('*->').
is_metacall_bt('->').


is_metasent_bt('==>>',b).
is_metasent_bt(':-',c).
is_metasent_bt('::=',c).
is_metasent_bt('-->',c).

add_bt_meta_processing(Ax):-
  locally(b_setval('$bt_context',Ax),
    must_maplist(bt_accept,
      [(((A,B)) ==>> !, (A, B)), 
       (((A;B)) ==>> !, (A; B)),
       (((A->B)) ==>> !, (A -> B)),
       (((true)) ==>> !),
       (((A*->B;C)) ==>> !, (A *-> B ; C)),
       (((A*->B)) ==>> !, (A *-> B))])).

is_wrap_bt(_,Var):- var(Var),!.
is_wrap_bt(_,!):- !,fail.
is_wrap_bt(_,Atom):- \+ compound(Atom),!.
is_wrap_bt(h, G):- is_bt_metacall(G).

is_bt_metacall(H):- compound(H), safe_functor(H,F,A),is_metacall_bt(F,A).

expand_bt(_,H,HH):- (\+ nb_current('$bt_context',_) ; nb_current('$bt_context',[])),!,H=HH.
expand_bt(C,H,HH):- nb_current('$bt_context',Was), expand_bt(C,Was, H,HH).

expand_bt(C,Was,H,HH):- is_wrap_bt(C,H),append_term(Was,H,HH),!. 
expand_bt(_,_,  H,HH):- \+ compound(H),!,HH=H.
expand_bt(_,Was,H,HH):- safe_functor(H,F,_),safe_functor(Was,WF,_),F==WF,!,H=HH.
expand_bt(_,Was,HB,HHBB):- safe_functor(HB,F,_),is_metasent_bt(F,C),
   HB=..[F,H|ArgsB],!, 
   expand_bt(h,Was,H,HH),
   must_maplist(expand_bt(C,Was),ArgsB,ArgsBB),
   HHBB =.. [F,HH|ArgsBB].

expand_bt(C,Was,H,HH):- is_bt_metacall(H), H=..[F|ArgsH],
   must_maplist(expand_bt(C,Was),ArgsH,ArgsHH),
   HH =.. [F|ArgsHH].
expand_bt(c,Was,H,HH):- append_term(Was,H,HH),!.
expand_bt(_,_,H,H).

set_bt_context(Ax):- nb_setval('$bt_context',Ax), bt_accept(bt_meta(Ax)).
:- nb_setval('$bt_context',[]).


bt_accept_fwd(Assert):- bugout1(==> did_bt_accept_fwd(Assert)).

bt_accept(Assert):- expand_bt(h,Assert,AssertO), assert(AssertO), bt_accept_fwd(AssertO).

:- export(bt_term_expansion/3).
:- module_transparent(bt_term_expansion/3).
bt_term_expansion(_M,(H ==>> B), Out):- 
  expand_bt(h,H,HH),expand_bt(b,B,BB),
  dcg_translate_rule((HH-->BB),Out),
  bt_accept((HH ==>> BB)).
bt_term_expansion(_M,(H ::= B), Out):- 
  expand_bt(h,H,HH),expand_bt(c,B,BB),
  expand_term((HH:-BB),Out),
  bt_accept((HH ::= BB)).


:- multifile(term_expansion/4).
:- dynamic(term_expansion/4).
term_expansion(In,IO, Out, IOO):- notrace((nonvar(IO),compound(In), (In \= (:-_)))),strip_module(_,M,_),
  mu:bt_term_expansion(M, In, Out),!,IO=IOO.

