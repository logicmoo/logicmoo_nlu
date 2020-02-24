/*
% NomicMUD: A MUD server written in Prolog
% Maintainer: Douglas Miles
% Dec 13, 2035
%
% Bits and pieces:
%
% LogicMOO, Inform7, FROLOG, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
% 
% Copyright (C) 2004 Marty White under the GNU GPL 
% Sept 20,1999 - Douglas Miles
% July 10,1996 - John Eikenberry 
%
% Logicmoo Project changes:
%
% Main file.
%
*/
:- ensure_loaded(adv_naming).

filter_spec(true,_):- !.
filter_spec( \+ Spec, PropList):- !,
 \+ filter_spec(Spec, PropList).
filter_spec((Spec1;Spec2), PropList):- !, filter_spec(Spec1, PropList);filter_spec(Spec2, PropList).
filter_spec((Spec1, Spec2), PropList):- !, filter_spec(Spec1, PropList), filter_spec(Spec2, PropList).
filter_spec( Spec, PropList):- declared(Spec, PropList).

create_new_unlocated(Type,Inst,S0,S2):- 
 atom_concat(Type,'~',TType),gensym(TType,Inst),
 declare_inst_type(Inst,Type,S0,S2).

create_new_suffixed_unlocated(Suffix, Type,Inst,S0,S2):- 
 atom_concat(Type,Suffix,Inst),
 declare_inst_type(Inst,Type,S0,S2).

declare_inst_type(Inst,Type,S0,S2):- 
  assertion(nonvar(Inst)),
  assertion(nonvar(Type)),
  object_props_or(Inst, PropList1, [], S0),
  undeclare_always(props(Inst,_), S0, S1),
  (member(adjs(_),PropList1)-> PropList1=PropList;  [nouns([Type])|PropList1]=PropList),
  list_to_set([shape=Type,inherit(Type,t)|PropList],Set),
  declare(props(Inst,Set),S1,S2).

% create_agent_conn(Agent,_Named, _Info, S0, S0) :- declared(agent(Agent,t), S0),!.
 %create_new_unlocated('watch',Watch),
    %create_new_unlocated('bag',Bag),
    %create_new_unlocated('coins',Coins),
     % h(worn_by, Watch, Agent),
    %h(in, Bag, Coins),
    %h(held_by, Bag, Agent),
create_agent_conn(Agent,Named,Info,S0,S9):- 
 declare(((props(Agent, 
      [name(['Telnet:',Named]), inherit(telnet,t), inherit(humanoid,t), inherit(player,t), info(Info)]),
      h(in, Agent, kitchen))),
  S0,S1),
 init_objects(S1,S9), !.


init_objects(S0, S2) :-
 must_mw1((must_input_state(S0), 
 create_missing_instances(S0,S1), !,
 must_mw1(call((get_objects(true,ObjectList, S1), ObjectList\==[]))),
 bugout1(iObjectList = ObjectList), 
 apply_mapl_state(mu_create_object(), ObjectList, S1, S2),
 must_output_state(S2))).


%mu_create_object(Agent, S0, S2) :- declared(perceptq(Agent, []), S0), !,
% bugout1(existingAgent=Agent),
% S2=S0.
     
mu_create_object(Object, S0, S0) :- declared(props(Object,PropList), S0), member(co(_),PropList),!.
mu_create_object(Object, S0, S9) :- 
 object_props_or(Object, PropList, [], S0),!,
 bugout1(mu_create_object(Object,PropList)),
 undeclare_always(props(Object,_), S0, S2),
 declare(props(Object,[co(PropList)]), S2, S3),
 create_objprop(Object, PropList, S3, S9). 
/*
visit_existing(_Object, [], S0, S0) :-!.
visit_existing(Object, [Prop|List], S0, S2):- !, 
 visit_existing(Object, List, S0, S1),
 visit_existing(Object, Prop, S1, S2).

%visit_existing(Object, Prop, S1, S2):- must_mw1(create_objprop(Object, Prop, S1, S2)).

visit_existing(Object, Prop, S1, S2):- Prop=inherit(_,t),!,must_mw1(create_objprop(Object, Prop, S1, S2)).
visit_existing(Object, Prop, S0, S2):- must_mw1(updateprop(Object,Prop,S0, S2)).
*/ 

create_objprop(_Object, [], S0, S0):- !.
create_objprop(Object, [Prop|List], S0, S2):- !,
 create_objprop(Object, List, S0, S1),
 create_objprop(Object, Prop, S1, S2).

 % As events happen, percepts are entered in the percept queue of each agent.
 % Each agent empties their percept queue as they see fit.
create_objprop(Object, inherit(perceptq,t), S0, S0):- declared(perceptq(Object,_),S0),!.
create_objprop(Object, inherit(perceptq,t), S0, S1):- !,
 declare(perceptq(Object, []), S0, S1).

 % Most agents store memories of percepts, world model, goals, etc.
create_objprop(Object, inherit(memorize,t), S0, S0):- declared(memories(Object,_),S0),!.
create_objprop(Self, inherit(memorize,t), S0, S2):- !, clock_time(Now),
 declare(memories(Self, [
 structure_label(mem(Self)),
 timestamp(0,Now), 
 goals([]),
 goals_skipped([]),
 goals_satisfied([]),
 % model([]),
 todo([look(Self)]),
 inst(Self)]), S0, S2).


create_objprop(Object, inherit(Other,f), S0, S0):- getprop(Object, isnt(Other), S0),!. 
create_objprop(Object, inherit(Other,f)) -->
   updateprop(Object, isnt(Other)), 
   delprop_always(Object, inherited(Other)),
   delprop_always(Object, inherit(Other,t)),
   updateprop(Object, inherit(Other,f)).
    
create_objprop(Object, inherit(Other,t), S0, S2):- getprop(Object,inherit(Other,f),S0),!,updateprop(Object, inherit(Other,t), S0, S1),create_objprop(Object, inherit(Other,t), S1, S2).
create_objprop(Object, inherit(Other,t), S0, S0):- getprop(Object,inherited(Other),S0),!.
create_objprop(Object, inherit(Other,t), S0, S0):- getprop(Object,isnt(Other),S0),!.
create_objprop(Object, inherit(Other,t), S0, S0):- Other==Object,!.
create_objprop(_Object, inherit(Other,t), S0, S0):- direct_props(Other, PropList, S0), member(no_copy(t),PropList),!.
create_objprop(Object, inherit(Other,t), S0, S9):- 
 direct_props_or(Other, PropList0, [], S0),
 adv_subst(PropList0,$class,Other,PropList1),
 (member(adjs(_),PropList1)-> PropList1=PropList;  [nouns([Other])|PropList1]=PropList),
 copy_term(PropList,PropListC),!,
 % must_mw1(updateprop(Object, inherit(Other,t), S5, S9)), !,
 %must_mw1(updateprop(Object, visited(Other), S0, S1)),
 must_mw1(updateprop(Object, inherited(Other), S0, S2)),
 
 must_mw1(create_objprop(Object, PropListC, S2, S9)),
 %must_mw1(setprop(Object, inherited(Other), S3, S9)),
 !.

%create_objprop(Object, inherit(Other,t), S0, S0):- getprop(Object,inherited(Other),S0),!.

create_objprop(Object, Prop, S0, S2):- 
 adv_subst(equivalent,$self,Object,Prop,NewProp),Prop\==NewProp,!,
 create_objprop(Object, NewProp, S0, S2).
create_objprop(Object, Prop, S0, S2):- must_mw1(updateprop(Object,Prop,S0, S2)).



create_missing_instances(S0,S2):- 
 gensym('~',Sym),
 create_instances(Sym,S0,S0,S0,S2).

may_contain_insts(h).
% may_contain_insts(holds_at).

create_instances(Suffix,Info,[Prop|TODO],S0,S3):-
 Prop =.. [F, Pred | Objs], 
 may_contain_insts(F),member(Obj,Objs),compound(Obj),!,
 must_mw1((select_from(Prop,S0,S1))),
 must_mw1((create_objs(Objs,NewObjs,Suffix,Info,S1,S2),
 NewProp =.. [F, Pred | NewObjs],
 create_instances(Suffix,Info,TODO,[NewProp|S2],S3))).
 
create_instances(Suffix,Info,[_|TODO],S0,S2):-
 create_instances(Suffix,Info,TODO,S0,S2).
create_instances(_Suffix,_Info,[],S0,S0).


create_objs([Obj|Objs],[NewObj|NewObjs],Suffix,Info,S0,S2):-
 wdmsg(create_1obj(Suffix,Info,Obj,NewObj)),
 must_mw1(create_1obj(Suffix,Info,Obj,NewObj,S0,S1)),
 create_objs(Objs,NewObjs,Suffix,Info,S1,S2).
create_objs([],[],_Suffix,_Info,S0,S0).


create_1obj(Suffix,_Info,a(Type),Inst,S0,S2):- !,atom_concat(Suffix,'a',NewSuffix),
 must_mw1(create_new_suffixed_unlocated(NewSuffix,Type,Inst,S0,S2)).
create_1obj(Suffix,_Info,s(Type),Inst,S0,S2):- !,atom_concat(Suffix,'*',NewSuffix),
 must_mw1(create_new_suffixed_unlocated(NewSuffix,Type,Inst,S0,S2)).
create_1obj(Suffix,_Info,the(Type),Inst,S0,S2):- !, 
 must_mw1(create_new_suffixed_unlocated(Suffix,Type,Inst,S0,S2)).

create_1obj(Suffix,Info,the(Type),Inst,S0,S2):- find_recent(Suffix,Type,Inst,S0,S2)->true;create_1obj(Suffix,Info,Type,Inst,S0,S2).
create_1obj(_Suffix,_Info,I,I, S0,S0):- atom_contains(I,'~').
create_1obj(_Suffix,_Info,I,I, S0,S0):- assertion(atom(I)),!.

find_recent(_Suffix,Type,Inst,S0,S0):- declared(props(Inst,PropList),S0),declared(instance(Type),PropList).

%inst_of(I,C,N):- compound(I),!,I=..[C,N|_],number(N).
inst_of(I,C,N):- I\==[], (atom(C);var(C)), (integer(N);var(N)), atom(I),!, atomic_list_concat([C,NN],'~',I),atom_number(NN,N).
%inst_of(I,C,N):- atom(C),atomic_list_concat([C,NN],'~',I),atom_number(NN,N).









