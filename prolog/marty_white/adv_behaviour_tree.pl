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


                   
:- dynamic (aXiom//1, eVent//2
   ).
:- multifile (aXiom//1, eVent//2
   ).
:- discontiguous aXiom//1.
:- discontiguous eVent//2.    

load_bt_file(File):- 
  must(exist_source(File)),
  ensure_loaded(File).



:- op(1200,xfy, ('==>>')).
:- op(1200,xfy, ('::=')).

maybe_expand_head_meta(F,_):- maybe_expand_head_meta(F).
maybe_expand_head_meta(',').
maybe_expand_head_meta(';').
maybe_expand_head_meta('\\+').
maybe_expand_head_meta('*->').
maybe_expand_head_meta('->').
maybe_expand_head_meta('-->').


aXiom((A,B)) ==>> !, aXiom(A), aXiom(B).
aXiom((A;B)) ==>> !, aXiom(A) ; aXiom(B).
aXiom((A->B;C)) ==>> !, (aXiom(A) -> aXiom(B) ; aXiom(C)).
aXiom((A->B)) ==>> !, (aXiom(A) -> aXiom(B)).
aXiom((A*->B;C)) ==>> !, (aXiom(A) *-> aXiom(B) ; aXiom(C)).
aXiom((A*->B)) ==>> !, (aXiom(A) *-> aXiom(B)).


maybe_expand_head(H,HH):- (\+ nb_current('$bt_context',_) ; nb_current('$bt_context',[])),!,H=HH.
maybe_expand_head(H,HH):- should_append(H),nb_current('$bt_context',Was),append_term(Was,H,HH),!. 
maybe_expand_head(H,HH):- safe_functor(H,F,A),maybe_expand_head_meta(F,A), H=..[F|ArgsH],
   must_maplist(maybe_expand_head,ArgsH,ArgsHH),
   HH =.. [F|ArgsHH].
maybe_expand_head(H,H).

set_bt_context(Ax):- nb_setval('$bt_context',Ax), bt_accept(bt_meta(Ax)).
:- nb_setval('$bt_context',[]).


bt_accept_fwd(Assert):- nop(==> did_bt_accept_fwd(Assert)).

bt_accept(Assert):- assert(Assert), bt_accept_fwd(Assert).

bt_term_expansion((H ==>> B), Out):- 
  maybe_expand_bt(H,HH),maybe_expand_bt(B,BB),
  dcg_translate_rule((HH-->BB),Out),
  bt_accept((HH ==>> BB)).


bt_term_expansion((H ::= B), Out):- 
  maybe_expand_bt(H,HH),maybe_expand_bt(B,BB),
  expand_term((HH:-BB),Out),
  bt_accept((HH ::= BB)).



term_expansion(In, Out):- bt_term_expansion(In,Out),!.

