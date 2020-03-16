/*
% NomicMUD: A MUD server written in Prolog
%
% Some parts used Inform7, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
% 
% July 10, 1996 - John Eikenberry 
% Copyright (C) 2004 Marty White under the GNU GPL
% 
% Dec 13, 2035 - Douglas Miles
%
%
% Logicmoo Project changes:
%
% Main file.
%
*/
% =========================================
% Goal/Plan translating
% =========================================
:- module(ec_loader,[load_e/1, needs_proccess/2,process_ec/2,fix_time_args/3]).

:- use_module(library(logicmoo_common)).

:- if(\+ current_prolog_flag(lm_no_autoload,_)).
:- set_prolog_flag(lm_no_autoload,false).
:- wdmsg("WARNING: PFC_AUTOLOAD").
:- endif.

:- if(\+ current_prolog_flag(lm_pfc_lean,_)).
:- set_prolog_flag(lm_pfc_lean,false).
:- wdmsg("WARNING: PFC_NOT_LEAN").
:- endif.

:- use_module(library(logicmoo_utils_all)).

:- use_module(library(pfc_lib)).
%:- include(library(pfc)).
:- baseKB:export(baseKB:spft/4).
:- system:import(baseKB:spft/4).

export_transparent(P):-
  export(P),
  module_transparent(P).
:- reexport(library('ec_planner/ec_planner_dmiles')).
:- reexport(library('ec_planner/ec_reader')).


:- export_transparent(e_reader_teste/0).
e_reader_teste:- with_e_sample_tests(load_e),e_reader_teste2.

e_reader_teste2:- 
     convert_to_axiom(fff,
  ((holds_at(beWaiter3(waiterOf(Restaurant)), Time),
    exists([Agent], holds_at(knowOrder(waiterOf(Restaurant), Agent, Food), Time))) ->
       ( happens(order(waiterOf(Restaurant),
                      cookOf(Restaurant),
                      Food),
                Time))),O),
     assert_ready(e,O).

:- export_transparent(e_reader_testec/0).
e_reader_testec:- with_e_sample_tests(load_e_pl).

:- export_transparent(load_e/1).
load_e(F):- load_e(F, always).

foundations_file('foundations/EC.e').
foundations_file('foundations/Root.e').
:- export_transparent(cond_load_e/2).

load_e(S0,How):- !,
 must((
  resolve_local_files(S0,SS), 
  (SS\==[] 
   -> maplist(cond_load_e(How), SS)
   ; pprint_ecp_cmt(red, load(How,S0))))),!.

cond_load_e(Cond,EndsWith):- is_list(EndsWith),!,maplist(cond_load_e(Cond),EndsWith).
cond_load_e(changed,F):- etmp:ec_option(load(F), loaded),!.
cond_load_e(changed,EndsWith):- atom(EndsWith),foundations_file(Already),atom_concat(_,Already,EndsWith),!.
cond_load_e(Cond,F):- etmp:ec_option(load(F), loading), Cond\==recursed, !.
cond_load_e(_,F):- is_filename(F), \+ atom_concat(_,'.e',F), !.
cond_load_e(Cond,F):- needs_resolve_local_files(F, L), !, maplist(cond_load_e(Cond), L).  
cond_load_e(include,_):- nb_current('$load_cond', load_e_pl),!. 
cond_load_e(Cond,F):- Req = [pl],
   \+ nb_current('$output_lang',Req), !,
   locally(b_setval('$output_lang',Req), cond_load_e(Cond,F)).


cond_load_e(Cond,F):-
   pprint_ecp_cmt(green, loading(Cond, F)),
   (nb_current('$load_cond', OldCond);OldCond=[]),
   setup_call_cleanup(

     (set_ec_option(load(F), loading),
      set_ec_option(load_cond, Cond),
      nb_setval('$load_cond', Cond)),

      e_to_pl(assert_ele, current_output, F),

     (set_ec_option(load(F), unknown),
      nb_setval('$load_cond', OldCond))),
   set_ec_option(load(F), loaded).

:- export_transparent(load_e_pl/1).
load_e_pl(F):- needs_resolve_local_files(F, L), !, maplist(load_e_pl, L).  
load_e_pl(F):-
  calc_where_to(outdir('.', 'pel'), F, OutputName), !,
 ( 
 (( ( fail, \+ should_update(OutputName))) -> true ;
  setup_call_cleanup(open(OutputName, write, Outs),
  (maplist(format(Outs,'~N~q.~n'),
    [( :- include(library('ec_planner/ec_test_incl'))),
     ( :- expects_dialect(pfc))]), 
  with_output_to(Outs, cond_load_e(load_e_pl,F))),
  close(Outs)))), %trace, %consult(OutputName),
  !.

/*
 
 state constraints:  

      holds_at(Fluent)
          implies/equivalent_to
      holds_at(Fluent)


 effect axioms:  

      happens(Event)
           terminates/initiates/releases
      holds_at(Fluent)
       

 trigger axioms: 
  
      holds_at(Fluent)/happens(Event)
           triggers
      happens(Event)


 precondition axioms:  
  
      happens(Event)
           implies
      holds_at(Fluent)

 

happens(doorLock(Agent,Door),Time) -> 
  holds_at(awake(Agent),Time) &
  holds_at(doorUnlocked(Door),Time) &
  holds_at(nearPortal(Agent,Door),Time)




   
axiom(
 terminates(doorLock(Agent,Door),
            doorUnlocked(Door),Time), [])

becomes 
...

axiom(
 terminates(doorLock(Agent,Door),
            doorUnlocked(Door),Time),
   [ holds_at(awake(Agent),Time) &
     holds_at(doorUnlocked(Door),Time) &
     holds_at(nearPortal(Agent,Door),Time)]).
 
*/
functors_are(F,E):- \+ is_list(E), conjuncts_to_list(E, L), !, functors_are(F, L).
functors_are(\+ F,L):-  nonvar(F), !, forall(member(E,L), \+ functor_is(F, E)).
functors_are((F1,F2),L):- !,  
  partition(functors_are(F1),L,[_|_],RestOf),
  functors_are(F2,RestOf).
%functors_are((F1;F2),L):-  !, nonvar(F1), (functors_are(F1,L);functors_are(F2,L)).
functors_are(F,L):- maplist(functor_is(F),L).


functor_is(F, not(E)):- !, compound(E), functor_is(F, E).
functor_is(F, exists(_, E)):- !, compound(E), functor_is(F, E).
functor_is(F,(F1;F2)):- !, functor_is(F,F1), functor_is(F,F2).
functor_is(F,(F1,F2)):- !, functor_is(F,F1), functor_is(F,F2).
functor_is(\+ F,P):- !, nonvar(F), !,  \+ functor_is(F,P).
functor_is((F1;F2),P):- !, nonvar(F1), (functor_is(F1,P);functor_is(F2,P)).
functor_is(F,P):- compound(P), compound_name_arity(P,F,_).

:- export_transparent(set_mpred_props/2).
set_mpred_props(MF,E):- strip_module(MF,M,P),MF==P,!,must(set_mpred_props(M:P,E)).
set_mpred_props(M:F/A,E):- !, (var(A)-> true ; ain(mpred_prop(M,F,A,E))).
set_mpred_props(M:P,E):- \+ compound(P),!,set_mpred_props(M:P/_,E).
set_mpred_props(M:P,E):- compound_name_arity(P,F,A),set_mpred_props(M:F/A,E),
   add_mat(P),!.

add_mat(P):- compound_name_arity(P,_,0),!.
add_mat(P):-
   assert_ready(red, (==>meta_argtypes(P))),
   ain(meta_argtypes(P)).



is_4th_order(axiom).
is_4th_order(F):- upcase_atom(F,UD),upcase_atom(F,UD).

get_arg_type(argIsa(W),1,W).
get_arg_type(F, Nth,Type):- arg_info(_,F,VTypes), compound(VTypes), arg(Nth,VTypes,Type), !.
get_arg_type(F,_,axiom_head):- is_4th_order(F),!.

coerce_arg_to_type(Time, axiom_head, H, HH):- !, show_fix_axiom_head(Time, H, HH).

coerce_arg_to_type(_, axiom, HB, HB):- compound_gt(HB, 0), HB=..[RelType|_], fixed_already(RelType), !.
coerce_arg_to_type(Time, axiom, HB, axiom(AxHB,[])):-  coerce_arg_to_type(Time, axiom_head, HB, AxHB), !.
coerce_arg_to_type(Time, axiom, H, HH):- fix_assert(Time, H, HH).
coerce_arg_to_type(_Time, fluent, H, H):-
   assert_ele(fluent(H)).


fixed_already(mpred_prop).
fixed_already(meta_argtypes).
fixed_already(abducible).
fixed_already(executable).
fixed_already(axiom).
fixed_already(load).
fixed_already(include).
fixed_already(set_ec_option).
fixed_already(F):- arg_info(domain,F,_).
fixed_already(F):- arg_info(abducible,F,_).

fix_assert(_T, :-(B), :-(B)):- !. 
fix_assert(_T, '==>'(B), '==>'(B)):- !. 
fix_assert(Time, HT:-B, HTO:-B):- !, 
  fix_assert(Time, HT, HTO).
fix_assert(Time, HT, HTO):- 
 fix_argtypes(Time, 1, [argIsa(axiom)], HT, HTM),!,
 fix_assert_pass2(Time, HTM, HTO).

fix_assert_pass2(_, HB, HB):- HB=..[RelType|_], fixed_already(RelType), !.
fix_assert_pass2(Time, G, axiom(GG, [])):- must(show_fix_axiom_head(Time, G, GG)),!.


fix_argtypes(Time, NthArg, [F|_], HT, HTO):-
    get_arg_type(F,NthArg,Type), 
    coerce_arg_to_type(Time,Type,HT,HTO),!.
fix_argtypes(_, _NthArg, _Type, HB, HB):- \+ compound_gt(HB, 0), !.
fix_argtypes(Time, _NthArg, Type, HT, HTO):-
 compound_name_arguments(HT, F, L), 
 fix_argtypes(Time, 1, [F|Type], L, LL),
 compound_name_arguments(HTO, F, LL).

fix_numbered_argtypes(Time, NthArg, FType, [H|T], [HH|TT]):- !,
  fix_argtypes(Time, NthArg, FType, H, HH),
  NthArgPlus1 is NthArg + 1,
  fix_numbered_argtypes(Time, NthArgPlus1, FType, T, TT).
fix_numbered_argtypes(_Time, _NthArg, _FType, [], []).


:- export_transparent(fix_axiom_head/3).
fix_axiom_head(T,X,O):- must(fix_axiom_head_1(T,X,Y)), !, (X==Y -> X=O ; fix_axiom_head(T,Y,O)),!.

fix_axiom_head_1(_, X, Y):-  (\+ callable(X);\+ compound(X)), !, X=Y.
fix_axiom_head_1(_, before(X,Y),b(X,Y)).
fix_axiom_head_1(_T, option(X,Y),option(X,Y)):-!.
% fix_axiom_head_1(T, X\=Y, holds_at(neg(P),T)):- compound(X),!, append_term(X,Y,P).
fix_axiom_head_1(T, X\=Y, not(O)):- must(fix_axiom_head_1(T, X=Y, O)).
fix_axiom_head_1(_, =(X,Y),P):- compound(X),append_term(X,Y,P).
fix_axiom_head_1(_, =(X,Y),equals(X,Y)).
fix_axiom_head_1(_, equals(X,Y),P):- compound(X),append_term(X,Y,P).
fix_axiom_head_1(_, equals(X,Y),equals(X,Y)).
fix_axiom_head_1(T, neg(I),O):- !, fix_axiom_head_1(T, I,M), correct_holds(neg, not(M), O). 
fix_axiom_head_1(T, not(I),O):- !, fix_axiom_head_1(T, I,M), correct_holds(neg, not(M), O). 
fix_axiom_head_1(T, happens(F, T1, T2), O):- T1==T2, fix_axiom_head_1(T, happens(F, T1), O).
fix_axiom_head_1(_, ec_current_domain_db(X), ec_current_domain_db(X)).
fix_axiom_head_1(_, ec_current_domain_db(X,Y), ec_current_domain_db(X,Y)).
fix_axiom_head_1(_, equals(X,Y),P):- compound(X),append_term(X,Y,P).
fix_axiom_head_1(_, equals(X,Y),equals(X,Y)).
fix_axiom_head_1(T, HT, HTTerm):-  
 compound_name_arguments(HT, F, L),
 upcase_atom(F,U),downcase_atom(F,U),
 maplist(fix_axiom_head_1(T),L,LL),
 ( LL\==L -> compound_name_arguments(HTTerm, F, LL) ; HT = HTTerm ), !.

fix_axiom_head_1(T, [G1|G2], [GG1|GG2]):- !, fix_axiom_head_1(T, G1, GG1),fix_axiom_head_1(T, G2, GG2). 
fix_axiom_head_1(T, (G1,G2), (GG1,GG2)):- !, fix_axiom_head_1(T, G1, GG1),fix_axiom_head_1(T, G2, GG2). 
fix_axiom_head_1(T, (G1;G2), (GG1;GG2)):- !, fix_axiom_head_1(T, G1, GG1),fix_axiom_head_1(T, G2, GG2). 
%fix_axiom_head_1(_, predicate(G), predicate(P)):- functor_skel(G,P),!.
fix_axiom_head_1(_, G, G):- G\=not(_), functor_skel(G,P), syntx_term_check(predicate(P)),!.
fix_axiom_head_1(T, G, happens(G,T)):- functor_skel(G,P), (syntx_term_check(event(P));executable(P)),!.
fix_axiom_head_1(T, G, holds_at(G,T)):- functor_skel(G,P), syntx_term_check(fluent(P)),!.
fix_axiom_head_1(T, G, Gs):- fix_goal_add_on_arg( T, G, Gs, _TExtra),!.
fix_axiom_head_1(_, G, G):- safe_functor(G,F,A), already_good(F,A),!.
%fix_axiom_head_1(T,(G1,G2),GGs):- !, fix_axiom_head_1(T,G1,GG1),fix_axiom_head_1(T,G2,GG2).
%fix_axiom_head_1(T, P, P).
%fix_axiom_head_1(T,X,Y):- trace, ec_to_ax(T, X,Y).
fix_axiom_head_1(_, holds_at(G, T), holds_at(G, T)):-!.
fix_axiom_head_1(_, holds_at(G, T, T2), holds_at(G, T, T2)):-!.
fix_axiom_head_1(_, P, call(P)):- predicate_property(P,foreign),!.
fix_axiom_head_1(_, exists(Vars,BH), HBO):- convert_exists( exists(Vars,BH), HBO),!.
fix_axiom_head_1(T, P, PP):-  
   P =..[F|Args],functor(P,F,A), arg_info(AxH,F,Arity),!,
   functor(Arity,_,N), 
   must(correct_ax_args(T,F,A,Args,AxH,Arity,N,PP)).
fix_axiom_head_1(_T, exists(X,Y), exists(X,Y)):-!.
fix_axiom_head_1(T, P, PP):- cvt0(T, P,PP),!.
fix_axiom_head_1(T, not(G), GG):- break, !, GG = holds_at(neg(G), T), !.
fix_axiom_head_1(T, G, GG):- GG = holds_at(G, T), !.

:- export(show_fix_axiom_head/3).
show_fix_axiom_head(T, HT, HTTermO):- 
    fix_axiom_head(T, HT, HTTermO),!,
    ignore((HT\==HTTermO, HT \= not(holds_at(_,_)), dmsg(fix_axiom_head -> (HT -> HTTermO)))),!.

show_fix_axiom_head(T, HT, HTTermO):- dumpST, 
 compound_name_arguments(HT, F, L),
 upcase_atom(F,U),downcase_atom(F,U),
 maplist(show_fix_axiom_head(T),L,LL),
 compound_name_arguments(HTTerm, F, LL),
 show_fix_axiom_head(T, HTTerm, HTTermO),!.

show_fix_axiom_head(T, HT, HTTermO):- trace, rtrace(fix_axiom_head(T, HT, HTTermO)),!.


call_ready_body(Type,Body):- 
   setup_call_cleanup(
    pprint_ecp(Type,':-'(if(false))),
    ignore(must((Body,!))),
    pprint_ecp(Type,':-'(endif))).

assert_ready(P):- assert_ready(pl,P).
assert_ready(Type,(:-Body)):- 
   notrace((echo_format('~N'))),
   pprint_ecp(Type,':-'(Body)),
   notrace((echo_format('~N'))),
   call_ready_body(Type,Body),!.
assert_ready(Type,'==>'(Value)):- 
   pprint_ecp(Type,'==>'(Value)),
   mpred_fwc('==>'(Value)),
   Value = ValueO, % fix_assert(_Time,Value,ValueO),
   into_current_domain_db(ValueO),!.
assert_ready(Type,Value):- 
   pprint_ecp(Type,Value),
   notrace((echo_format('~N'))),
   mpred_fwc(Value),
   Value = ValueO, % fix_assert(_Time,Value,ValueO),
   into_current_domain_db(ValueO),!.


into_current_domain_db('==>'(Value)):- !, into_current_domain_db((Value)).
into_current_domain_db(ec_current_domain_db(Value)):- !, into_current_domain_db((Value)).
into_current_domain_db(ec_current_domain_db(Value,T)):- !, 
   Value = ValueO, assertz_if_new(user:ec_current_domain_db(ValueO,T)).
into_current_domain_db(Value):- Value = ValueO,
   assertz_if_new(user:ec_current_domain_db(ValueO,_)).

:- export_transparent(assert_ele/1).
assert_ele(EOF) :- notrace((EOF == end_of_file)),!.
assert_ele(I):- notrace(\+ callable(I)),!,assert_ele(uncallable(I)).
assert_ele(exists(Vars,BH)):- convert_exists(exists(Vars,BH), HBO),assert_ele(HBO).
assert_ele(SS):- notrace(is_list(SS)),!,maplist(assert_ele,SS).
assert_ele(HB):- sub_term(Sub,HB),compound(Sub),Sub=before(X,Y),!,
  subst(HB,Sub,b(X,Y),HTM),assert_ele(HTM).
assert_ele(translate(Event, Outfile)):- !, mention_s_l, echo_format('% translate: ~w  File: ~w ~n',[Event, Outfile]).
assert_ele(_):- notrace((echo_format('~N'), fail)).
%assert_ele(==>(S0)):- !, assert_ready( ==>(S0)).
assert_ele(:- S0):- !, assert_ready( (:-(S0))).
assert_ele(include(S0)):- !, assert_ready( :-(load_e(S0,include))).
assert_ele(load(S0)):- !, assert_ready( :-(load_e(S0,changed))).
assert_ele(load(Cond, S0)):- !, assert_ready( :-(load_e(S0,Cond))).

assert_ele(ec_current_domain_db(P)):- !, assert_ready( ec_current_domain_db(P)).

assert_ele(HB):- \+ compound_gt(HB, 0), !, assert_axiom(HB, []).

assert_ele(HB):- HB=..[=, Function, Value],
  %get_functor(RelSpec,F), get_mpred_prop(Function,function),
  must(compound(Function)),
  append_term(Function,Value,Predicate), !,
  assert_ele(Predicate).

assert_ele(HB):- HB=..[function, RelSpec, RetType], 
  append_term(RelSpec,RetType,PredSpec),
  assert_ele(functional_predicate(PredSpec)),
  assert_ele(predicate(PredSpec)),
  %assert_ele(function(RelSpec)),
  get_functor(RelSpec,F),
  assert_ele(==>resultIsa(F, RetType)).

/*
assert_ele(predicate(G)):- functor_skel(G,P),!,
  assert_ready( ==> mpred_prop(G,predicate)),
  assert_ready( ==> meta_argtypes(G)),
  assert_ready( predicate(P)).
*/

assert_ele(HB):- HB=..[RelType,RelSpec],arg_info(domain,RelType,arginfo), !, 
  functor_skel(RelSpec,P),!, 
  RelTypeOpen=..[RelType,P],
  assert_ready(blue, RelTypeOpen),
  %assert_ready(blue, HB),
  assert_ready(red, (==>(mpred_prop(RelSpec, RelType)))),
  must(set_mpred_props(RelSpec,RelType)).

assert_ele(HB):- functor(HB,F, L), arg_info(abducible,F,Args),Args=..[v|ArgL], length(ArgL,L), !, assert_ready(yellow, ==>(HB)).
assert_ele(subsort(F, W)):- !, maplist(assert_ready(yellow),[sort(F),sort(W),subsort(F, W)]).
assert_ele(option(X,Y)):- set_ec_option(X,Y), maplist(assert_ready(yellow),[:- set_ec_option(X,Y)]).
assert_ele(xor(XORS)):- conjuncts_to_list(XORS,List),  !, assert_ready(red, ==>xor(List)).
assert_ele(t(F, W)):- !, maplist(assert_ready(yellow),[==>(sort(F)), ==>(t(F, W))]).
                                                    
  %locally(b_setval('$output_lang',[ec]), assert_ele(P)).
assert_ele('<->'(H,B)):- 
  pprint_ecp_cmt(green, '<->'(H,B)), !,
  assert_ele('->'(H,B)),
  assert_ele('->'(B,H)).
% assert_ele(not(holds_at(H,T))):- assert_ele(holds_at(neg(H),T)).
assert_ele(Cvt1):- cvt0(_T, Cvt1,Cvt2), Cvt1\=@=Cvt2, !, assert_ele(Cvt2).

assert_ele(directive(F)):- !, assert_ele(next_axiom_uses(F)).

assert_ele(initially(F)):- !, assert_axiom(initially(F),[]).
/*
assert_ele('->'(H,B)):- nonvar(B),
  B=(BP,(B1;B2)),!,
  assert_ele('->'(H,(BP,B1))), 
  must(assert_ele('->'(H,(BP,B2)))),!.

assert_ele('->'(B,H)):- nonvar(B),
  B=(BP,(B1;B2)),!,
  assert_ele('->'((BP,B1),H)),assert_ele('->'((BP,B2),H)).

assert_ele('->'(B,H)):- nonvar(B),B=((B1;B2)),!,assert_ele('->'(B1,H)),assert_ele('->'(B2,H)).
*/

assert_ele('<-'(H,B)):- conjuncts_to_list(B,BL), !, must(assert_axiom(H,BL)).
% assert_ele((H :- B)):- (H=not(_);is_axiom_head(H)), !, conjuncts_to_list(B,BL), assert_axiom(H,BL).
assert_ele((H :- B)):- !,  assert_ready( (H :- B)).
assert_ele(axiom(H,B)):- echo_format('~N'), !,
  correct_axiom_time_args(t,H,B,HH,BB),
  assert_ready( axiom(HH,BB)).
assert_ele(HB):- correct_holds(outward,HB, HBC), HB\=@=HBC, !, assert_ele(HB).

% , assert_ready(e, HB),
%assert_ele(SS):- syntx_term_check(SS),!.

assert_ele('->'(Body,EffectAx)):- EffectAx=..[Effect|_],
  member(Effect,[initiates,terminates,releases]),
  conjuncts_to_list_body(Body, Conds), 
  assert_axiom(EffectAx, Conds).
assert_ele(EffectAx):- EffectAx=..[Effect|_],
  member(Effect,[initiates,terminates,releases]),
  assert_axiom(EffectAx, []).

/*
assert_ele(if(happens(A,T),Holds)):- 
  assert_m_axiom(if(not(Holds),not(happens(A,T)))).
*/
assert_ele(happens(A,T)):-  !, assert_axiom(happens(A,T), [is_time(T)]).

assert_ele('->'(B,H)):-  conjuncts_to_list_body(B,BL), !, assert_axiom(H,BL).

assert_ele(H):- compound_name_arity(H, F, 2),
  needs_cononicalization(F),
  e_to_ec(H,P), !, assert_m_axiom(P).
assert_ele(not(H)):-  !,  assert_m_axiom(not(H)).

assert_ele(SS):- echo_format('~N'), 
  assert_ready(red, SS).

correct_axiom_time_args(Stem,H,B,HH,BB):- 
  visit_time_args(Stem,[],H,HH,Mid),
  visit_time_args(Stem,Mid,B,BBs,Out),
  append(BBs,Out,BB),!.

/*
ForAll([event,animal,time],
 HoldsAt(DoneBy(event,animal),time) <->
 (Happens(event,time) &
  ((Exists([gate], event=Close(animal,gate))) |
   (Exists([animal1].  event=GetOff(animal,animal1)))|
   (Exists([animal1].  event=Mount(animal,animal1)))|
   (Exists([position].  event=Move(animal,position)))|
   (Exists([gate].  event=Open(animal,gate))) |
   (Exists([human1].  event=ThrowOff(animal,human1)))))).
*/

cvt0(_, P, _):- \+ callable(P),!, fail.
cvt0(_, X\=Y, diff(X,Y)) :- !.
cvt0(_, X=Y, Equals):- !,as_equals(X,Y,Equals).
cvt0(T, holds_at(not(H),T),O):- !, cvt0(T, holds_at(neg(H),T), O).
%cvt0(T, P, call(P)):- predicate_property(P,foreign),!.
%cvt0(_, not(exists(_Vars, holds_at(P, Time))),not(holds_at(neg(P), Time))).
cvt0(_, holds_at(N,AT),initially(N)):- AT==0,!.
cvt0(T, not(I),not(O)) :- cvt0(T,I,O).
                                                    

needs_cononicalization(',').
needs_cononicalization(';').
needs_cononicalization('exists').
needs_cononicalization('all').
needs_cononicalization('if').
needs_cononicalization('iff').
needs_cononicalization('equiv').
needs_cononicalization('implies').
needs_cononicalization('->').
needs_cononicalization('<->').
needs_cononicalization('and').
needs_cononicalization('xor').
needs_cononicalization('or').
needs_cononicalization('&').
needs_cononicalization('|').
needs_cononicalization('dia').
needs_cononicalization('box').
needs_cononicalization('cir').
needs_cononicalization(X):-  fix_predname(X, Y),!, X\==Y, needs_cononicalization(X).




negations_inward_to_list(C,L):- negations_inward(C,I),conjuncts_to_list(I, L).
%  must(convert_to_axiom(lsvm(L,F,Vs,M),HB,NEWHB)),
%  do_process_ec(assert_ele,M, NEWHB),
conjuncts_to_list_body(Body, Conds):- 
  conjuncts_to_list(Body, CondsL),
  maplist(negations_inward_to_list,CondsL,CondsLI),
  append(CondsLI,Conds).
  


assert_ele_clauses(X,L,L):- is_list(L), !, 
 length(L,N), 
 ((N > 19, false )
  -> 
   (assert_ready(magenta,
         todo_later1(N,X)),
     maplist(pprint_ecp_cmt(blue),L),
      sleep(1.0))
   ; maplist(assert_ele_clauses(X,L),L)).


assert_ele_clauses(_X,_L,(H:-B)):- !,
  pprint_ecp_cmt(red,(H:-B)),
  conjuncts_to_list_body(B, BL),
  assert_axiom(H , BL).
assert_ele_clauses(_X,_L,H):-  
  assert_axiom(H , []). 

assert_m_axiom(X):- 
  pprint_ecp_cmt(green, X),
  with_output_to(string(_), clausify_pnf(X,Conds)), 
  conjuncts_to_list(Conds,CondsL),
  assert_ele_clauses(X,CondsL,CondsL).

:- export_transparent(assert_axiom/2).
assert_axiom(EffectAx, append3(L1,L2,LL)):- 
   conjuncts_to_list_body(L1,LL1),conjuncts_to_list_body(L2,LL2),
   append([LL1,LL2,LL],L12),!,
   assert_axiom(EffectAx, L12).

assert_axiom(EffectAx, B) :- \+ is_list(B), !,
  conjuncts_to_list_body(B,Bs),
  assert_axiom(EffectAx, Bs).

assert_axiom(Conds, []):- is_list(Conds),!,
   maplist(assert_ele,Conds).
assert_axiom(happens(A,T), []):- !,
   assert_axiom(happens(A,T), [is_time(T)]).  

assert_axiom(Conds, [happens(A,T)]):-
   conjuncts_to_list(Conds, B ), 
   functors_are(\+ happens, B), !,
   assert_axiom(requires(A,T),Conds),!.

assert_axiom(EffectAx, Some) :- 
    show_fix_axiom_head(Time,EffectAx,New),    
    New\=@=EffectAx, !,
    must_maplist(show_fix_axiom_head(Time),Some,SomeL),
    must(assert_axiom(New, SomeL)).

assert_axiom(H,B) :- 
    semi_legit_time(H,Time),
    maplist(show_fix_axiom_head(Time),B,BL),
    BL\=@=B,!,
    assert_axiom(H,BL).

  

assert_axiom(Conds, [happens(A,T)]):-
   conjuncts_to_list_body(Conds, B ), 
   functors_are(\+ happens, B), !,
   %trace,
   debug_var(when,T),
   assert_axiom(requires(A,T),holds_at(metreqs(A),T)),
   assert_axiom(holds_at(requirements(A),T),B).


assert_axiom(H,B):- compound_name_arity(H, F, 2), 
  needs_cononicalization(F), !,
  list_to_conjuncts(B, BB),
  assert_m_axiom('->'(BB,H)).




/*
assert_axiom(EffectAx, Some):- select(E,Some,Rest), E = (A;B), !, nnf(A,NotA), nnf(B,NotB),
   assert_axiom(EffectAx, append3(A,NotB,Rest)),
   assert_axiom(EffectAx, append3(B,NotA,Rest)).
*/
assert_axiom(EffectAx, Some):- use_proxy_kr, Some=[_,_|_],  member(E,Some), E = (_;_), 
   term_variables(E,Vars),
   gensym(disj_,Ref),
   P =.. [Ref|Vars],
   subst(Some,E,P,NewSome), !,
   assert_ele('->'(E,P)),
   assert_axiom(EffectAx, NewSome).

assert_axiom(EffectAx, Some):- use_proxy_kr, select(E,Some,Rest), E = (_;_), Rest\==[], !,
   term_variables(E,Vars),
   gensym(disj_,Ref),
   P =.. [Ref|Vars],
   assert_ele('->'(E,P)),
   assert_axiom(EffectAx, [P|Rest]).

assert_axiom(EffectAx, Some):- breakup_ors, select(E,Some,Rest), E = (A;B), !,
   assert_axiom(EffectAx, [A|Rest]),
   assert_axiom(EffectAx, [B|Rest]).

assert_axiom(EffectAx, Some):- select(E,Some,Rest), E = (A,B), !,
   conjuncts_to_list_body((A,B), Conds),
   append(Conds,Rest,BReast),
   assert_axiom(EffectAx, BReast).


assert_axiom(EffectAx, B):-
  semi_legit_time(EffectAx,T),
  fix_goal(T,B,Bs), B\=@=Bs, !, 
  assert_axiom(EffectAx, Bs).
assert_axiom(EffectAx, B):-
  EffectAx=..[Effect,Event,Fluent,T],
  member(Effect,[initiates,terminates,releases]),
  assert_effect(Effect,Event,Fluent,T,B).
/*
assert_axiom((A1,A2), B):- 
  assert_axiom(A1, [possible(A2)|B]),
  assert_axiom(A2, [possible(A1)|B]).
assert_axiom(A1;A2, B):- 
  assert_axiom(A1, [not(A2)|B]),
  assert_axiom(A2, [not(A1)|B]).
*/
assert_axiom(H,B):- 
  assert_ele(axiom(H,B)).

% Normals
assert_effect(Effect,Event,Fluent,T,B):- \+ callable(Event), !,
  EffectAx=..[Effect,Event,Fluent,T],
  assert_ele(axiom(EffectAx,B)).
assert_effect(Effect,(A1,A2),Fluent,T,B):- !,
   assert_effect(Effect,A1,Fluent,T,[possible(A2)|B]),
   assert_effect(Effect,A2,Fluent,T,[possible(A1)|B]).
assert_effect(Effect,(A1;A2),Fluent,T,B):- !,
   assert_effect(Effect,A1,Fluent,T,[possible(not(A2))|B]),
   assert_effect(Effect,A2,Fluent,T,[possible(not(A2))|B]).
assert_effect(Effect,Event,Fluent,T,B):-
  EffectAx=..[Effect,Event,Fluent,T],
  assert_ele(axiom(EffectAx,B)).

breakup_ors:- fail.
use_proxy_kr:- fail.

:- include(ec_nnf).


:- export_transparent(rect/0).    

% recompiles and restart tests everytime source is updated
rect:- once(ect), % first run
   repeat,
   wait_for_input([current_input],Was,0.5), 
   make:modified_file(_Any),
   once(ect), 
   Was == [current_input]. 

rect2:- 
   once(ect), % first 
   wait_for_input([current_input],Was,0.5), 
   ( \+ make:modified_file(_Any) -> rect2; 
   ( Was \== [current_input] -> rect2; true)). 
  
                         

% event calc tests
:- export_transparent(ect/0).
ect:- call(call,ect1).

:- export_transparent(ect1/0).
ect1:- 
   cls, make,  Out = cond_load_e(always),
 % call(Out, 'examples/FrankEtAl2003/Story1.e'),
 % call(Out, 'ecnet/GSpace.e'),
 % call(Out, 'ecnet/Diving.e'),
 % call(Out, 'ecnet/RTSpace.e'),
  call(Out, 'examples/AkmanEtAl2004/ZooWorld.e'),
  % call(Out, 'ectest/ec_reader_test_ecnet.e'),
   % call(Out, 'ecnet/SpeechAct.e'),
   %call(Out, 'ecnet/Kidnapping.e'),
   
   % cond_load_e(always,'examples/Mueller2006/Exercises/MixingPaints.e'),
   list_undefined,
   list_void_declarations,  
  !.



fix_goal_add_on_arg(T, G, G0, [b(T,T2),b(T2,end)]):- G =.. [F,A], already_good(F,2), G0 =.. [F,A,T].%, next_t(T,T2).
fix_goal_add_on_arg(T, G, G0, [b(T,T2),b(T2,end)]):- G =.. [F,A,B], already_good(F,3), G0 =.. [F,A,B,T]. %, next_t(T,T2).


:- export_transparent(fix_goal/3).


to_axiom_head(T,G,GG) :-  notrace(fix_axiom_head(T,G,GG)),!.
to_axiom_head(T,G,GG) :-  trace,fix_axiom_head(T,G,GG),!.


fix_goal(_, Nil,[]):- Nil==[],!.
fix_goal(T,[G|Gs],GGs):- !, fix_goal(T,G,G0),fix_goal(T,Gs,Gs0),append(G0,Gs0,GGs),!.
fix_goal(T,(G,Gs),GGs):- !, fix_goal(T,G,G0),fix_goal(T,Gs,Gs0),append(G0,Gs0,GGs),!.
fix_goal(T,{Gs},GGs):- !, fix_goal(T,Gs,GGs).
fix_goal(T, G, GGs):- fix_axiom_head(T,G,GG),!, listify(GG,GGs).
fix_goal(T, G, [Gs| TExtra]):- fix_goal_add_on_arg( T, G, Gs, TExtra),!.
fix_goal(T, G, [GGs]):- to_axiom_head(T,G,GGs),!.
fix_goal(T, G, [holds_at(G, T)]).


ec_to_ax(_, X,Y):-  (\+ callable(X) ; \+ compound(X)), !, X=Y.
%ec_to_ax(T, (Pre -> iff(HB,BH)), HBO):- ec_to_ax(T, (iff((Pre,HB),(Pre,BH))), HBO).
%ec_to_ax(T, or(Pre , '->'(HB,BH)), HBO):- ec_to_ax(T, '->'(or(Pre , HB),BH), HBO).
%ec_to_ax(T, (H<-B),O):- !, into_axiom(T,H,B,O).
ec_to_ax(T, '->'(B,H),O):- !, into_axiom(T,H,B,O).
ec_to_ax(T, '<->'(HB1,HB2),[A,B]):- !, ec_to_ax(T, '->'(HB1,HB2),A),ec_to_ax(T, '->'(HB2,HB1),B).
ec_to_ax(T, axiom(H,B),O):- into_axiom(T,H,B,O), !.
ec_to_ax(_, axiom(H,B), axiom(H,B)):- !.
ec_to_ax(T,X,O):- fix_axiom_head_1(T,X,Y), !, (X==Y -> X=O ; ec_to_ax(T,Y,O)),!.
ec_to_ax(_, X,X).

to_axiom_body(T,G,GGs) :-  fix_goal(T,G,GGs).

%into_axiom(T,H,happens(E,T),OUT):- into_axiom(T,not(happens(E,T)),not(H),OUT).
into_axiom(T,H,B,'->'(ABNonList,AH)):- to_axiom_head(T1,H,AH),
  to_axiom_body(T2,B,AB),!,ignore(T=T1),ignore(T2=T1),
  list_to_conjuncts(AB, ABNonList),!.





as_equals(X,Y,equals(X,Y)).
as_equals(X,Y,Equals):- compound(X),append_term(X,Y, Equals).
as_equals(X,Y,equals(X,Y)).


syntx_term_check(G):- clause(G,_).
syntx_term_check(G):- clause(ec_current_domain_db(G, _),_).

functor_skel(G,P):- compound(G), compound_name_arity(G,F,A), compound_name_arity(P,F,A),!.
functor_skel(G,P):- atom(G),P=G.

between_r(H,L,N):- nonvar(N),!,between(L,H,N).
between_r(H,L,N):- Hm1 is H - L, !, between(L,H,NN), N is NN + Hm1.

can_be_time_arg(Var):- var(Var),!.
can_be_time_arg(_+_):-!.
can_be_time_arg(_-_):-!.
can_be_time_arg(A):- atom(A).

semi_legit_time(V):- \+ compound_gt(V,0), !, fail.
semi_legit_time(happens(_,T1),T1).
semi_legit_time(happens(_,_,T2),T2):- can_be_time_arg(T2).
semi_legit_time(happens(_,T1,_),T1):- can_be_time_arg(T1).
semi_legit_time(not(Holds),T):- !, semi_legit_time(Holds,T).
semi_legit_time(Holds1,T1):- 
   functor(Holds1,F,_),
   time_arg(F,N),
   arg(N,Holds1,T1).
semi_legit_time(Holds1,T1):- 
   functor(Holds1,_,A), 
   member(P1,[number,string,atom]),
   (arg(A,Holds1,T1);arg(_,Holds1,T1)), 
   T1\==[], call(P1,T1).

:- export_transparent(compare_on_time_arg/3).
compare_on_time_arg(Result,Holds1,Holds2):- 
   (((semi_legit_time(Holds1,T1),semi_legit_time(Holds2,T2),
      compare(Result,T1,T2), Result\== (=))) 
     -> true;
        compare_on_time_arg(Result,Holds1,Holds2)).

time_arg(b, N):- between(1,2,N).
time_arg(beq, N):- between(1,2,N).
time_arg(holds_at, 2).
time_arg(is_time, 1).
time_arg(happens, N):- between_r(3,2,N), N\=1.
time_arg(clipped, N):- between_r(3,1,N), N\=2.
time_arg(declipped, N):- between_r(3,1,N), N\=2.

:- export_transparent(fix_time_args/3).
fix_time_args(T,G,Gss):- \+ is_list(G), conjuncts_to_list_body(G, Gs), !,fix_time_args(T,Gs,Gss)   .
fix_time_args(T,[G|Gs],Gss):- 
  semi_legit_time(G,ST),
  fix_time_args1(ST,[G|Gs],Gs0),
  fix_time_args2(T,Gs0,Gss).

fix_time_args2(_,Gs,Gss):-
  Gss = [b(start,now),b(now,aft),b(aft,end)|Gs].

visit_time_args(_,In,[],[],In).
visit_time_args(Stem,In,[G|Gs],[GO|GsO],Out):- !, 
    visit_time_args(Stem,In,G,GO,Mid),
    visit_time_args(Stem,Mid,Gs,GsO,Out).
visit_time_args(Stem,In,holds_at(A,T1),holds_at(A,T1R),Out):- 
   correct_time_arg(Stem,In,T1,T1R,Out).
visit_time_args(Stem,In,happens(A,T1,T2),happens(A,T1R,T2R),Out):- 
   correct_time_arg(Stem,In,T1,T1R,B0),
   correct_time_arg(Stem,B0,T2,T2R,Out).
visit_time_args(Stem,In,happens(A,T1),happens(A,T1R),Out):- 
   correct_time_arg(Stem,In,T1,T1R,Out).
visit_time_args(Stem,In,b(T1,T2),b(T1R,T2R),Out):- 
   correct_time_arg(Stem,In,T1,T1R,B0),
   correct_time_arg(Stem,B0,T2,T2R,Out).
visit_time_args(Stem,In,not(G),not(GG),Out):- !, visit_time_args(Stem,In,G,GG,Out).
visit_time_args(Stem,In,beq(T1,T2),beq(T1R,T2R),Out):- 
   correct_time_arg(Stem,In,T1,T1R,B0),
   correct_time_arg(Stem,B0,T2,T2R,Out).
visit_time_args(Stem,In,clipped(T1,A,T2),clipped(T1R,A,T2R),Out):- 
   correct_time_arg(Stem,In,T1,T1R,B0),
   correct_time_arg(Stem,B0,T2,T2R,Out).
visit_time_args(Stem,In,declipped(T1,A,T2),declipped(T1R,A,T2R),Out):- 
   correct_time_arg(Stem,In,T1,T1R,B0),
   correct_time_arg(Stem,B0,T2,T2R,Out).
visit_time_args(_,In,G,G,In).

correct_time_arg(_Stem,In, TN, TN, In):- var(TN), !.
correct_time_arg(_Stem,In, TN, TN, In):- atom(TN), !.
correct_time_arg(Stem, In, TN, TpN, Out):- number(TN), !, correct_time_arg(Stem,In, Stem+TN, TpN, Out).
correct_time_arg(_Stem,In, v, _, In):- !.
correct_time_arg(_Stem,In, TN, TpN, In):- lookup_time_val(TN,TpN,In),!.
correct_time_arg(Stem,In, TN, TpN, [ignore(TN=TpN)|Out]):-  number(TN), !, correct_time_arg(Stem,In, Stem+TN, TpN, Out).
correct_time_arg(Stem,In, T-N, TpN, Out):- number(N), N<0, NN is abs(N),!,correct_time_arg(Stem,In, T+NN, TpN, Out).
correct_time_arg(Stem,In, T+N, TpN, Out):- number(N), N<0, NN is abs(N),!,correct_time_arg(Stem,In, T-NN, TpN, Out).
correct_time_arg(Stem,In, Now+N, T, [ignore(Now+N=T)|Out]):- concat_time_arg_syms, number(N), N>1, NN is N-1, correct_time_arg(_Stem,In, Now+1, Tm2, Mid),
  correct_time_arg(Stem, Mid, Tm2+NN, T, Out).
correct_time_arg(Stem,In, Now-N, T, [ignore(Now-N=T)|Out]):- concat_time_arg_syms, number(N), N<1, NN is N+1, correct_time_arg(_Stem,In, Now-1, Tm2, Mid),
  correct_time_arg(Stem, Mid, Tm2-NN, T, Out).
correct_time_arg(_Stem,In, T+0, T, In):-!.
correct_time_arg(_Stem,In, T-0, T, In):-!.
correct_time_arg(_Stem,In, T-N, TN, Out):- !, t_plus_or_minus_1(In, T-N, TN, Out).
correct_time_arg(_Stem,In, T+N, TN, Out):- !, t_plus_or_minus_1(In, T+N, TN, Out).
correct_time_arg(_Stem,In, TN, TN, In).

concat_time_arg_syms:- fail.

lookup_time_val(TN,TpN,In):- copy_term(TN,TNS),member(ignore(TNS=TpN),In),TNS=@=TN,!.

t_plus_or_minus_1(In, TN, TpN, In):- lookup_time_val(TN,TpN,In).
t_plus_or_minus_1(In, T+1, TN, In):- memberchk(b(T,TN),In),!.
t_plus_or_minus_1(In, T-1, TN, In):- memberchk(b(TN,T),In),!.
t_plus_or_minus_1(In, T-1, TN, [b(TN,T),ignore(T-1=TN)|In]):- next_t(TN,T),!.
t_plus_or_minus_1(In, T+1, TN, [b(T,TN),ignore(T+1=TN)|In]):- next_t(T,TN),!.
t_plus_or_minus_1(In, T+N, TN, [b(T,TN),ignore(T+N=TN)|In]):- atom_concat(T,N,TN).
t_plus_or_minus_1(In, T-N, TN, [b(TN,T),ignore(T-N=TN)|In]):- atomic_list_concat([T,N],minus,TN).


next_t(t,start).
next_t(start,now).
next_t(now,aft).
next_t(aft,Aft_1):- var(Aft_1),!,gensym(aft_,Aft_1).
next_t(aft,completeFn(_)).


fix_time_args1(T,G,Gs):- 
  visit_time_args(T,[],G,Gs,_Mid).



already_good(happens, 2).
already_good(happens, 3).
already_good(some, 1).
already_good(holds_at, 2).
already_good(b, 2).
already_good(is, 2).
already_good(diff, 2).
already_good(dif, 2).
already_good(terms_or_rels,3).
already_good(F,A):- functor(P,F,A),syntx_term_check(abducible(PP)),compound(PP),PP=P.
already_good(F,A):- functor(P,F,A),syntx_term_check(predicate(PP)),compound(PP),PP=P.



%predicate, option range load fluent event noninertial xor completion


%special_directive('!').
%special_directive('neg').

% builtin_pred(releasedAt).

%xfr_body(true,[]).



:- export_transparent(get_linfo/1).
get_linfo(lsvm(L,F,Vs,M)):- 
  quietly((must(s_l(F,L)),!,
  '$current_source_module'(M),
  nb_current('$variable_names',Vs))).


:- export_transparent(process_ec/1).
:- export_transparent(process_ec/1).
process_ec( HB ):- notrace(must(get_linfo(T))), process_ec( T, HB ).
%:- export_transparent(process_ec/2).
%process_ec( _, HB , T):- !,process_ec( T, HB ).

:- export_transparent(process_ec/2).
:- export_transparent(process_ec/2).
process_ec( _, HB ):- assert_ele(HB).

process_ec( lsvm(L,S,Vs,M), HB ):-  
  must(convert_to_axiom(lsvm(L,S,Vs,M),HB,NEWHB)),
  do_process_ec(assertz,M, NEWHB).

merge_into_body(X,_Y,Z):- Z = X.

:- export_transparent(do_process_ec/3).
:- export_transparent(do_process_ec/3).
do_process_ec(_Why, M, NonCallable) :- assertion((current_module(M),callable(NonCallable))), fail.
do_process_ec(Why, M, NEWHB):- is_list(NEWHB), !, maplist(do_process_ec(Why, M), NEWHB).
do_process_ec(_Why, M, (:- GOAL)):- !, must(M:GOAL).
do_process_ec(_Why, M, (?- GOAL)):- !, (M:forall(GOAL, true)).
% How to? M:assertz('$source_location'(S, L):NEWHB),
%do_process_ec(Why, M, NEWHB):- wdmsg(do_process_ec(Why, M, NEWHB)),fail.
do_process_ec(Why, M, NEWHB):- M:call(Why, NEWHB).

:- export_transparent(convert_to_axiom/3).
convert_to_axiom(T, M:H, [M:HH]):- !, convert_to_axiom(T, H, HH).
convert_to_axiom(T, (H:-B),[(HH:- B)]):- !, convert_to_axiom(T, H,HH).
convert_to_axiom(_, abducible(H), abducible(H)):- !.
convert_to_axiom(_, t(C, E), List):- !, to_fact_head([sort(C),t(C, E)],List).

convert_to_axiom(L,[H|T],ABC):- % trace, 
   once((convert_to_axiom(L,H,A), convert_to_axiom(L,T,B),append(A,B,AB))), 
   AB\=@= [H|T],
   convert_to_axiom(L,AB,ABC).

convert_to_axiom(T, (Pre -> '<->'(HB,BH)), HBO):-
  convert_to_axiom(T, ('<->'((Pre,HB),(Pre,BH))), HBO),!.

convert_to_axiom(T, '<->'(HB,BH), HBOO):-
  convert_to_axiom(T, '->'(HB,BH), HBO1),
   convert_to_axiom(T, '<-'(HB,BH), HBO2),
  flatten([HBO1,HBO2],HBO),
  convert_to_axiom1(T,HBO,HBOO),!.


convert_to_axiom(T, exists(Vars,BH), HBO):- convert_exists(exists(Vars,BH), Conj),!,
  convert_to_axiom(T, Conj , HBO).
%convert_to_axiom(T, exists(Vars,Info), HBO):- !, convert_to_axiom(T, Info, HB), 
%  merge_into_body(HB,some(Vars),HBO).

%  compound_name_arity(P,F,A),compound_name_arity(PP,F,A).


convert_to_axiom(T, X, O):- nop(debug_var('AxTime',Time)), ec_to_ax(Time, X,Y), 
  (is_list(Y)->convert_to_axiom1(T, Y, O); (X\=Y -> convert_to_axiom(T, Y, O);convert_to_axiom1(T, Y, O))), !.
convert_to_axiom(T, Y, O):- convert_to_axiom1(T, Y, O).

% convert_to_axiom1(T, '->'(E,B), HBO2):- convert_to_axiom(T, precond(B,E), HBO2).
to_fact_head(H,List):- H=List.


convert_to_axiom1(_, EOF, []) :- EOF = end_of_file,!.
convert_to_axiom1(T, P, O):- is_axiom_head(P),!, convert_to_axiom1(T, axiom(P), O).
convert_to_axiom1(T, axiom(P), O):- convert_to_axiom1(T, axiom(P ,[]), O).
convert_to_axiom1(_LSV, axiom(X,Y), [axiom(X,Y)]).
convert_to_axiom1(LSV, Pred, [ec_current_domain_db(Pred,LSV)]).

convert_exists( exists(Vars,B -> H), (B -> Conj)):- conjoin(H,some(Vars),Conj), !.
convert_exists( exists(Vars, H), HBO):- conjoin(H,some(Vars),Conj), !,  Conj = HBO.

is_axiom_head(P):- compound_name_arity(P,F,_), arg_info(axiom_head,F,_),!.
is_axiom_head(P):- functor_skel(P, G), syntx_term_check(predicate(G)),!.


arg_info(domain,fluent,arginfo).
arg_info(domain,predicate,arginfo).
arg_info(domain,function,arginfo).
arg_info(domain,functional_predicate,arginfo).
arg_info(domain,event,arginfo).

arg_info(domain,reified_sort,arginfo).

arg_info(abducible,noninertial,v(pred)).
arg_info(abducible,completion,v(pred)).

arg_info(abducible,sort,v(sort)).
arg_info(abducible,subsort,v(sort,sort)).
arg_info(abducible,range,v(atomic,int,int)).
arg_info(abducible,t,v(sort,term)).
%arg_info(domain,axiom,v(axiom,list)).

arg_info(axiom_head,happens,v(event,time)).
arg_info(axiom_head,holds_at,v(fluent,time)).
arg_info(axiom_head,initially,v(fluent)).
arg_info(axiom_head,initiates,v(event,fluent,time)).
arg_info(axiom_head,terminates,v(event,fluent,time)).
arg_info(axiom_head,releases,v(event,fluent,time)).
arg_info(axiom_head,trajectory,v(fluent,time,fluent,offset)).
%arg_info(axiom_head,releasesAt,v(fluent,time)).

correct_ax_args(T,F,A,Args,axiom_head,_Arity,N, PP):-  N is A +1 ,!, append(Args,[T],NewArgs), PP =.. [F|NewArgs].
correct_ax_args(_T,F,A,Args,axiom_head,_Arity,N,PP):- A=N, PP =.. [F|Args].
correct_ax_args(_T,F,1,Args,domain,arginfo,0,PP):- PP =.. [F|Args].
correct_ax_args(_T,F,2,[P,R],domain,arginfo,0,PP):- append_term(P,R,AB),PP =.. [F,AB].
%orrect_ax_args(_4456,function,2,[side1(portal),location],domain,arginfo,0,_4470))

%correct_ax_args(_T,initiates,2,[go(_1694),at(_1694)],axiom_head,3,v(event,fluent,time),_1684)
%failed_must(correct_ax_args(_T,initiates,2,[go(_1694),at(_1694)],axiom_head,3,v(event,fluent,time),_1684))








needs_process_axiom(C):- \+ compound(C), !, fail.
needs_process_axiom(axiom(_,_)).
needs_process_axiom(axiom(_)).
needs_process_axiom(abducible(_)).
needs_process_axiom(executable(_)).
needs_process_axiom(P):- compound_name_arity(P,F,A),needs_process_axiom_fa(F,A).

needs_process_axiom_fa(F,_):- arg_info(_,F,_).
needs_process_axiom_fa(iff,2).
needs_process_axiom_fa('<-',2).
needs_process_axiom_fa('->',2).


:- export_transparent(needs_proccess/2).
needs_proccess(PA,_):- \+ compound(PA),!,fail.
needs_proccess(PA, process_ec):- needs_process_axiom(PA),!.
needs_proccess((H :- _B),How):- nonvar(H),!,needs_proccess(H,How).
needs_proccess( _M:H, How):- nonvar(H),!,needs_proccess(H,How).



:- export_transparent(hook_ec_axioms/2).
:- export_transparent(hook_ec_axioms/2).

:- (prolog:(import(hook_ec_axioms/2))).

hook_ec_axioms(What, File):- var(File), !, current_input(Input), hook_ec_axioms(What, Input).
hook_ec_axioms(What, file(_File,AbsFile)):- !, hook_ec_axioms(What, file(AbsFile)).
hook_ec_axioms(What, file(AbsFile)):- !, hook_ec_axioms(What, AbsFile).
hook_ec_axioms(What, File):- fail, 
    prolog_load_context(module, M),
    dmsg(hook_ec_axioms(M, What, File)),fail.
hook_ec_axioms(_What, _File):- !.
/*
hook_ec_axioms(_What, File):- atom(File), exists_file(File),
    forall(((clause(axiom(_, _), _Body, Ref), File==S)),
       erase(Ref)),!.
*/

:- multifile(user:message_hook/3).
:- dynamic(user:message_hook/3).
:- export_transparent(user:message_hook/3).
user:message_hook(load_file(start(_Level, File)),_,_):- hook_ec_axioms(load,File),fail.
user:message_hook(include_file(start(_Level, File)),_,_):- hook_ec_axioms(include,File),fail.
:- multifile(prolog:make_hook/2).
:- export_transparent(prolog:make_hook/2).
prolog:make_hook(before, Files):-  maplist(hook_ec_axioms(make(before)),Files), fail.

:- multifile prolog:message//1.
prolog:message(welcome) -->  {hook_ec_axioms(welcome, welcome),fail}.





:- multifile(user:term_expansion/4).
:- dynamic(user:term_expansion/4).
:- export_transparent(user:term_expansion/4).
:- user:import(ec_loader:needs_proccess/2).
:- user:import(ec_loader:process_ec/2).
user:term_expansion(In,P,Out,PO):- 
  notrace((nonvar(P),compound(In), In\=(:- _), 
      needs_proccess(In, Type),PO=P)),
  Out = ( :- call(Type, In) ).



