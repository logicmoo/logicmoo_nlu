% init_why(after('/opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/marty_white/planner/ec_reader.pl')).
% init_why(after('/opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/marty_white/planner/ec_reader.pl')).
% init_why(program).
% ec_to_pl(do_ec_load, current_output, 'ectest/TestBoxRoom.e').
% ectest/TestBoxRoom.e:1
% ec_in_to_pl(do_ec_load, current_output, <stream>(0x55638dfa3da0)).
% ec_io(do_ec_load, <stream>(0x55638dfa3da0)).
% ectest/TestBoxRoom.e:1
:- module(ec).

do_test_gen(What) :- ec_current_domain(fluent(P)),functor(P,F,A),functor(What,F,A).

local_demo(L,R):-  dbginfo('L'=L),abdemo_special(depth(0,10),L,R),!.
local_demo(L,R):-  dm('FAILED:',(L:-R)),trace,!,abdemo_special(depth(0,10),L,R).


dm(TF,P):- format('~N~n~w ~p.~n',[TF,P]).

/*

These tests Pass


*/
do_test(test_np_box_1) :-  local_demo([holds_at(directlyIn(lisa,livingRoom),t)],R).
do_test(test_np_box_2) :-  local_demo([holds_at(inRoom(lisa,livingRoom),t)],R).
do_test(test_np_box_3) :-  local_demo([holds_at(directlyIn(lisa,kitchen),t)],R).
do_test(test_np_box_4) :-  local_demo([holds_at(inRoom(lisa,kitchen),t)],R).
do_test(test_np_box_5) :-  local_demo([holds_at(directlyIn(box,kitchen),t)],R).

% fix this next test and the "test_np_box_occurs" should pass
%do_test(has_occured) :-  local_demo([has_occured(move(lisa,box,livingRoom,lisa))],R).




% 
do_test(happened) :-  local_demo([happens(move(lisa,box,livingRoom,lisa),T)],R).

do_test(happened2) :-  local_demo([happens(move(lisa,box,livingRoom,lisa),T1,T2)],R).

% 
do_test(happend2b) :-  fail, local_demo(
              [happens(move(lisa,newspaper,livingRoom,box),t_plus_01),
                before(t_plus_01, t_plus_41),
               happens(move(lisa,lisa,kitchen,livingRoom),t_plus_41)],R).

do_test(happend2a) :- fail,  local_demo(
              [happens(move(lisa,newspaper,livingRoom,box),t_plus_01,t_plus_02),
                before(t_plus_01, t_plus_41),
               happens(move(lisa,lisa,kitchen,livingRoom),t_plus_41,t_plus_42)],R).

do_test(happend2r) :- fail, local_demo(
              [happens(move(lisa,newspaper,livingRoom,box),t_plus_01,t_plus_02),
                before(t_plus_41, t_plus_01),
               happens(move(lisa,lisa,kitchen,livingRoom),t_plus_41,t_plus_42)],R).



do_test(test_np_box_occurs) :- test_np_box_occurs.

test_np_box_occurs:- 
 findall(E, (axiom(E,[]),functor(E,happens,_)), UHapsList),
 predsort(compare_on_time_arg,UHapsList,HapsList),
 dbginfo('HapsList'=HapsList), 
 /* 
   HapsList = 
         [happens(move(lisa,newspaper,livingRoom,box),0),
          happens(move(lisa,box,livingRoom,lisa),1),
          happens(move(lisa,lisa,livingRoom,kitchen),2),
          happens(move(lisa,box,lisa,kitchen),3),
          happens(move(lisa,lisa,kitchen,livingRoom),4)].
*/

 nop((make_falling_edges_v2(t_plus_, t_minus_1, HapsList, [_|Edges], _Out),
 dbginfo('Edges'=Edges))), !,
 /*
   Edges = [holds_at(has_occured(move(lisa,newspaper,livingRoom,box)),t_plus_01),
            before(t_plus_01,t_plus_11),
            holds_at(has_occured(move(lisa,box,livingRoom,lisa)),t_plus_11),
            before(t_plus_11,t_plus_21),
            holds_at(has_occured(move(lisa,lisa,livingRoom,kitchen)),t_plus_21),
            before(t_plus_21,t_plus_31),
            holds_at(has_occured(move(lisa,box,lisa,kitchen)),
            t_plus_31),before(t_plus_31,t_plus_41),
            holds_at(has_occured(move(lisa,lisa,kitchen,livingRoom)),t_plus_41)].

   Edges_V2 = [happens(move(lisa,newspaper,livingRoom,box),t_plus_01,t_plus_02),
               before(t_plus_02,t_plus_11),
               happens(move(lisa,box,livingRoom,lisa),t_plus_11,t_plus_12),
               before(t_plus_12,t_plus_21),
               happens(move(lisa,lisa,livingRoom,kitchen),t_plus_21,t_plus_22),
               before(t_plus_22,t_plus_31),
               happens(move(lisa,box,lisa,kitchen),t_plus_31,t_plus_32),
               before(t_plus_32,t_plus_41),
               happens(move(lisa,lisa,kitchen,livingRoom),t_plus_41,t_plus_42)].
   .


   Edges_T3 = [happens(move(lisa,newspaper,livingRoom,box),t_plus_01,t_plus_02),
               before(t_plus_01,t_plus_41),
               happens(move(lisa,lisa,kitchen,livingRoom),t_plus_41,t_plus_42)].
.


 */
 local_demo(Edges,_R),!.

do_test(test_np_box_agent) :-  forall(do_test_gen(What), local_demo([holds_at(What,When)],R)).



:-include(library('ec_planner/ec_test_incl')).

/*

Just to see the syntax (not related to this work)

axiom(happens(shift_pack(Agnt,P,R1,R2,R3),T1,T6),
     [happens(go_to_room(Agnt,R1,R2),T1,T2),
     before(T2,T3), not(clipped(T2,atRoom(Agnt,R2),T3)), not(clipped(T1,inRoom(P,R2),T3)),
     happens(pick_up(Agnt,P),T3), before(T3,T4), happens(go_to_room(Agnt,R2,R3),T4,T5),
     before(T5,T6), not(clipped(T3,got(Agnt,P),T6)), not(clipped(T5,atRoom(Agnt,R3),T6)),
     happens(put_down(Agnt,P),T6)]).

axiom(initiates(shift_pack(Agnt,P,R1,R2,R3),inRoom(P,R3),T),
     [holds_at(atRoom(Agnt,R1),T), holds_at(inRoom(P,R2),T)]).
*/

axiom(happens(rise_and_fall(Event),T1,T3),
     [happens(begining(Event),T1), before(T1,T2), 
      happens(ocuring(Event),T2,T3),  before(T2,T3),
      % because its ocuring the begining not clipped?
      % not(clipped(T1,begun(Event),T2)),      
      happens(ending(Event),T3)]).

axiom(terminates(begining(Event),holds_at( never_ocurred(Event),t),t), []).
axiom( initiates(begining(Event),holds_at(    just_begun(Event),t),t), []).
axiom(terminates( ocuring(Event),holds_at(    just_begun(Event),t),t), []).
axiom( initiates( ocuring(Event),holds_at(    now_occurs(Event),t),t), []).
axiom(terminates(  ending(Event),holds_at(    now_occurs(Event),t),t), []).
axiom( initiates(  ending(Event),holds_at(   has_occured(Event),t),t), []).

axiom(initially( (never_ocurred(Event))),[]):- executable(Event).
axiom(initially( neg(just_begun(Event))),[]):- executable(Event).
axiom(initially( neg(now_occurs(Event))),[]):- executable(Event).
axiom(initially(neg(has_occured(Event))),[]):- executable(Event).


:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(load_e_pl,'TestBoxRoom.e').
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%;
%; Copyright (c) 2005 IBM Corporation and others.
%; All rights reserved. This program and the accompanying materials
%; are made available under the terms of the Common Public License v1.0
%; which accompanies this distribution, and is available in
%; http://www.eclipse.org/legal/cpl-v10.html
%;
%; Contributors:
%; IBM - Initial implementation
%;
%; @book{Mueller:2006,
%;   author = "Erik T. Mueller",
%;   year = "2006",
%;   title = "Commonsense Reasoning",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann/Elsevier",
%; }
%;

% include foundations/Root.e
:- load_e('foundations/Root.e', include).
:- if(false).
:- endif.

% include foundations/EC.e
:- load_e('foundations/EC.e', include).
:- if(false).
:- endif.

% sort object
==> sort(object).

% sort agent: object
==> subsort(agent,object).

% sort physobj: object
==> subsort(physobj,object).

% sort room: object
==> subsort(room,object).

% fluent directlyIn(object,object)
fluent(directlyIn(DirectlyIn_Param,DirectlyIn_Ret)).
==> mpred_prop(directlyIn(object,object),fluent).
==> meta_argtypes(directlyIn(object,object)).

% fluent inRoom(object,room)
fluent(inRoom(InRoom_Param,InRoom_Ret)).
==> mpred_prop(inRoom(object,room),fluent).
==> meta_argtypes(inRoom(object,room)).

% noninertial inRoom
==> noninertial(inRoom).
%;; executable(move(agent,object,object,object))

% agent Lisa
==> t(agent,lisa).

% physobj Box, Newspaper
==> t(physobj,box).
==> t(physobj,newspaper).

% room Kitchen, LivingRoom
==> t(room,kitchen).
==> t(room,livingRoom).
%; Sigma
%; RS10
% [agent,physobj1,physobj2,room,time]
% HoldsAt(directlyIn(agent,room),time) &
% HoldsAt(directlyIn(physobj1,room),time) &
% HoldsAt(inRoom(physobj2,room),time) ->
% Initiates(move(agent,physobj1,room,physobj2),directlyIn(physobj1,physobj2),time).

 /*  [holds_at(directlyIn(Agent, Room), Time), holds_at(directlyIn(Physobj1, Room), Time), holds_at(inRoom(Physobj2, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(move(Agent, Physobj1, Room, Physobj2),
                    directlyIn(Physobj1, Physobj2),
                    Time)).
 */
axiom(initiates(move(Agent, Physobj1, Room, Physobj2), directlyIn(Physobj1, Physobj2), Time),
   
    [ holds_at(directlyIn(Agent, Room), Time),
      holds_at(directlyIn(Physobj1, Room), Time),
      holds_at(inRoom(Physobj2, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:50
%; RS11
% [agent,physobj1,physobj2,room,time]
% HoldsAt(directlyIn(agent,room),time) &
% HoldsAt(directlyIn(physobj1,room),time) &
% HoldsAt(inRoom(physobj2,room),time) ->
% Terminates(move(agent,physobj1,room,physobj2),directlyIn(physobj1,room),time).

 /*  [holds_at(directlyIn(Agent, Room), Time), holds_at(directlyIn(Physobj1, Room), Time), holds_at(inRoom(Physobj2, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          terminates(move(Agent, Physobj1, Room, Physobj2),
                     directlyIn(Physobj1, Room),
                     Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:55
axiom(terminates(move(Agent, Physobj1, Room, Physobj2), directlyIn(Physobj1, Room), Time),
   
    [ holds_at(directlyIn(Agent, Room), Time),
      holds_at(directlyIn(Physobj1, Room), Time),
      holds_at(inRoom(Physobj2, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:57
%; RS12
% [agent,physobj1,physobj2,room,time]
% HoldsAt(directlyIn(agent,room),time) ->
% Initiates(move(agent,physobj1,physobj2,room),directlyIn(physobj1,room),time).

 /*  [holds_at(directlyIn(Agent, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(move(Agent, Physobj1, Physobj2, Room),
                    directlyIn(Physobj1, Room),
                    Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:60
axiom(initiates(move(Agent, Physobj1, Physobj2, Room), directlyIn(Physobj1, Room), Time),
    [holds_at(directlyIn(Agent, Room), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:62
%; RS13
% [agent,physobj1,physobj2,room,time]
% HoldsAt(directlyIn(agent,room),time) ->
% Terminates(move(agent,physobj1,physobj2,room),directlyIn(physobj1,physobj2),time).

 /*  [holds_at(directlyIn(Agent, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          terminates(move(Agent, Physobj1, Physobj2, Room),
                     directlyIn(Physobj1, Physobj2),
                     Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:65
axiom(terminates(move(Agent, Physobj1, Physobj2, Room), directlyIn(Physobj1, Physobj2), Time),
    [holds_at(directlyIn(Agent, Room), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:67
%; RS14
% [agent,room1,room2,time]
% HoldsAt(directlyIn(agent,room1),time) ->
% Initiates(move(agent,agent,room1,room2),directlyIn(agent,room2),time).

 /*  [holds_at(directlyIn(Agent, Room1), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(move(Agent, Agent, Room1, Room2),
                    directlyIn(Agent, Room2),
                    Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:70
axiom(initiates(move(Agent, Agent, Room1, Room2), directlyIn(Agent, Room2), Time),
    [holds_at(directlyIn(Agent, Room1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:72
%; RS15
% [agent,room1,room2,time]
% HoldsAt(directlyIn(agent,room1),time) ->
% Terminates(move(agent,agent,room1,room2),directlyIn(agent,room1),time).

 /*  [holds_at(directlyIn(Agent, Room1), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          terminates(move(Agent, Agent, Room1, Room2),
                     directlyIn(Agent, Room1),
                     Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:75
axiom(terminates(move(Agent, Agent, Room1, Room2), directlyIn(Agent, Room1), Time),
    [holds_at(directlyIn(Agent, Room1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:77
%; RS16
% [agent,physobj,room,time]
% HoldsAt(directlyIn(agent,room),time) &
% HoldsAt(directlyIn(physobj,room),time) ->
% Initiates(move(agent,physobj,room,agent),directlyIn(physobj,agent),time).

 /*  [holds_at(directlyIn(Agent, Room), Time), holds_at(directlyIn(Physobj, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(move(Agent, Physobj, Room, Agent),
                    directlyIn(Physobj, Agent),
                    Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:81
axiom(initiates(move(Agent, Physobj, Room, Agent), directlyIn(Physobj, Agent), Time),
   
    [ holds_at(directlyIn(Agent, Room), Time),
      holds_at(directlyIn(Physobj, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:83
%; RS17
% [agent,physobj,room,time]
% HoldsAt(directlyIn(agent,room),time) &
% HoldsAt(directlyIn(physobj,room),time) ->
% Terminates(move(agent,physobj,room,agent),directlyIn(physobj,room),time).

 /*  [holds_at(directlyIn(Agent, Room), Time), holds_at(directlyIn(Physobj, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          terminates(move(Agent, Physobj, Room, Agent),
                     directlyIn(Physobj, Room),
                     Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:87
axiom(terminates(move(Agent, Physobj, Room, Agent), directlyIn(Physobj, Room), Time),
   
    [ holds_at(directlyIn(Agent, Room), Time),
      holds_at(directlyIn(Physobj, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:89
%; RS18
% [agent,physobj,room,time]
% HoldsAt(directlyIn(physobj,agent),time) &
% HoldsAt(directlyIn(agent,room),time) ->
% Initiates(move(agent,physobj,agent,room),directlyIn(physobj,room),time).

 /*  [holds_at(directlyIn(Physobj, Agent), Time), holds_at(directlyIn(Agent, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(move(Agent, Physobj, Agent, Room),
                    directlyIn(Physobj, Room),
                    Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:93
axiom(initiates(move(Agent, Physobj, Agent, Room), directlyIn(Physobj, Room), Time),
   
    [ holds_at(directlyIn(Physobj, Agent), Time),
      holds_at(directlyIn(Agent, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:95
%; RS19
% [agent,physobj,room,time]
% HoldsAt(directlyIn(physobj,agent),time) &
% HoldsAt(directlyIn(agent,room),time) ->
% Terminates(move(agent,physobj,agent,room),directlyIn(physobj,agent),time).

 /*  [holds_at(directlyIn(Physobj, Agent), Time), holds_at(directlyIn(Agent, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          terminates(move(Agent, Physobj, Agent, Room),
                     directlyIn(Physobj, Agent),
                     Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:99
axiom(terminates(move(Agent, Physobj, Agent, Room), directlyIn(Physobj, Agent), Time),
   
    [ holds_at(directlyIn(Physobj, Agent), Time),
      holds_at(directlyIn(Agent, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:101
%; Delta


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:103
% Happens(move(Lisa,Newspaper,LivingRoom,Box),0).

 /*  [is_time(0)] ->
       ta(0, tvs1=[0], tvs2=[0, t], happens(move(lisa, newspaper, livingRoom, box), t)).
 */
axiom(happens(move(lisa, newspaper, livingRoom, box), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:104
% Happens(move(Lisa,Box,LivingRoom,Lisa),1).

 /*  [is_time(1), b(t, now), ignore(t+1==now)] ->
       ta(1, tvs1=[1], tvs2=[1, now, t], happens(move(lisa, box, livingRoom, lisa), now)).
 */
axiom(happens(move(lisa, box, livingRoom, lisa), now),
    [is_time(1), b(t, now)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:105
% Happens(move(Lisa,Lisa,LivingRoom,Kitchen),2).

 /*  [is_time(2), b(t, t2), ignore(t+2==t2)] ->
       ta(2,
          tvs1=[2],
          tvs2=[2, t, t2],
          happens(move(lisa, lisa, livingRoom, kitchen), t2)).
 */
axiom(happens(move(lisa, lisa, livingRoom, kitchen), t2),
    [is_time(2), b(t, t2)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:106
% Happens(move(Lisa,Box,Lisa,Kitchen),3).

 /*  [is_time(3), b(t, t3), ignore(t+3==t3)] ->
       ta(3, tvs1=[3], tvs2=[3, t, t3], happens(move(lisa, box, lisa, kitchen), t3)).
 */
axiom(happens(move(lisa, box, lisa, kitchen), t3),
    [is_time(3), b(t, t3)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:107
% Happens(move(Lisa,Lisa,Kitchen,LivingRoom),4).

 /*  [is_time(4), b(t, t4), ignore(t+4==t4)] ->
       ta(4,
          tvs1=[4],
          tvs2=[4, t, t4],
          happens(move(lisa, lisa, kitchen, livingRoom), t4)).
 */
axiom(happens(move(lisa, lisa, kitchen, livingRoom), t4),
    [is_time(4), b(t, t4)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:109
%; Psi
%; RS1
% [object,time]
 
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:112
% !HoldsAt(directlyIn(object,object),time).
holds_at(neg(directlyIn(Object,Object)),Time).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:114
%; RS2
% [object1,object2,time]
% HoldsAt(directlyIn(object1,object2),time) ->
% !HoldsAt(directlyIn(object2,object1),time).

 /*  allDifferent([Object1, Object2, Time]) ->
       ( holds_at(directlyIn(Object1, Object2), Time)->holds_at(neg(directlyIn(Object2, Object1)), Time)
       ).
 */

 /*  holds_at(neg(directlyIn(Object2, Object1)), Time) :-
       holds_at(directlyIn(Object1, Object2), Time),
       allDifferent([Object1, Object2, Time]).
 */

 /*  [holds_at(directlyIn(Object1, Object2), Time), allDifferent([Object1, Object2, Time])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object2, Object1)), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:117
axiom(holds_at(neg(directlyIn(Object2, Object1)), Time),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      allDifferent([Object1, Object2, Time])
    ]).

 /*  not(holds_at(directlyIn(Object1, Object2), Time)) :-
       not(holds_at(neg(directlyIn(Object2, Object1)), Time)),
       allDifferent([Object1, Object2, Time]).
 */

 /*  [holds_at(directlyIn(Object2, Object1), Time), allDifferent([Object1, Object2, Time])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object1, Object2)), Time)).
 */
axiom(holds_at(neg(directlyIn(Object1, Object2)), Time),
   
    [ holds_at(directlyIn(Object2, Object1), Time),
      allDifferent([Object1, Object2, Time])
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:119
%; RS3
% [object1,object2,object3,time]
% HoldsAt(directlyIn(object1,object2),time) &
% HoldsAt(directlyIn(object2,object3),time) ->
% !HoldsAt(directlyIn(object1,object3),time).

 /*  allDifferent([Object1, Object2, Time, Object3]) ->
       ( holds_at(directlyIn(Object1, Object2), Time), holds_at(directlyIn(Object2, Object3), Time)->holds_at(neg(directlyIn(Object1, Object3)), Time)
       ).
 */

 /*  holds_at(neg(directlyIn(Object1, Object3)), Time) :-
       ( holds_at(directlyIn(Object1, Object2), Time),
         holds_at(directlyIn(Object2, Object3), Time)
       ),
       allDifferent([Object1, Object2, Time, Object3]).
 */

 /*  [holds_at(directlyIn(Object1, Object2), Time), holds_at(directlyIn(Object2, Object3), Time), allDifferent([Object1, Object2, Time, Object3])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object1, Object3)), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:123
axiom(holds_at(neg(directlyIn(Object1, Object3)), Time),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      holds_at(directlyIn(Object2, Object3), Time),
      allDifferent([Object1, Object2, Time, Object3])
    ]).

 /*  not(holds_at(directlyIn(Object1, Object2), Time)) :-
       holds_at(directlyIn(Object2, Object3), Time),
       not(holds_at(neg(directlyIn(Object1, Object3)), Time)),
       allDifferent([Object1, Object2, Time, Object3]).
 */

 /*  [holds_at(directlyIn(Object2, Object3), Time), holds_at(directlyIn(Object1, Object3), Time), allDifferent([Object1, Object2, Time, Object3])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object1, Object2)), Time)).
 */
axiom(holds_at(neg(directlyIn(Object1, Object2)), Time),
   
    [ holds_at(directlyIn(Object2, Object3), Time),
      holds_at(directlyIn(Object1, Object3), Time),
      allDifferent([Object1, Object2, Time, Object3])
    ]).

 /*  not(holds_at(directlyIn(Object2, Object3), Time)) :-
       holds_at(directlyIn(Object1, Object2), Time),
       not(holds_at(neg(directlyIn(Object1, Object3)), Time)),
       allDifferent([Object1, Object2, Time, Object3]).
 */

 /*  [holds_at(directlyIn(Object1, Object2), Time), holds_at(directlyIn(Object1, Object3), Time), allDifferent([Object1, Object2, Time, Object3])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object2, Object3)), Time)).
 */
axiom(holds_at(neg(directlyIn(Object2, Object3)), Time),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      holds_at(directlyIn(Object1, Object3), Time),
      allDifferent([Object1, Object2, Time, Object3])
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:125
%; RS4
% [object,object1,object2,time]
% HoldsAt(directlyIn(object,object1),time) &
% HoldsAt(directlyIn(object,object2),time) ->
% object1=object2.

 /*  allDifferent([Object, Object1, Time, Object2]) ->
       ( holds_at(directlyIn(Object, Object1), Time), holds_at(directlyIn(Object, Object2), Time)->equals(Object1, Object2)
       ).
 */

 /*  not(holds_at(directlyIn(Object, Object1), Time)) :-
       holds_at(directlyIn(Object, Object2), Time),
       not(equals(Object1, Object2)),
       allDifferent([Object, Object1, Time, Object2]).
 */

 /*  [holds_at(directlyIn(Object, Object2), Time), not(equals(Object1, Object2)), allDifferent([Object, Object1, Time, Object2])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object, Object1)), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:129
axiom(holds_at(neg(directlyIn(Object, Object1)), Time),
   
    [ holds_at(directlyIn(Object, Object2), Time),
      not(equals(Object1, Object2)),
      allDifferent([Object, Object1, Time, Object2])
    ]).

 /*  not(holds_at(directlyIn(Object, Object2), Time)) :-
       holds_at(directlyIn(Object, Object1), Time),
       not(equals(Object1, Object2)),
       allDifferent([Object, Object1, Time, Object2]).
 */

 /*  [holds_at(directlyIn(Object, Object1), Time), not(equals(Object1, Object2)), allDifferent([Object, Object1, Time, Object2])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object, Object2)), Time)).
 */
axiom(holds_at(neg(directlyIn(Object, Object2)), Time),
   
    [ holds_at(directlyIn(Object, Object1), Time),
      not(equals(Object1, Object2)),
      allDifferent([Object, Object1, Time, Object2])
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:131
%; RS7
% [object,room,time]
% HoldsAt(directlyIn(object,room),time) ->
% HoldsAt(inRoom(object,room),time).

 /*  allDifferent([Object, Room, Time]) ->
       ( holds_at(directlyIn(Object, Room), Time)->holds_at(inRoom(Object, Room), Time)
       ).
 */

 /*  holds_at(inRoom(Object, Room), Time) :-
       holds_at(directlyIn(Object, Room), Time),
       allDifferent([Object, Room, Time]).
 */

 /*  [holds_at(directlyIn(Object, Room), Time), allDifferent([Object, Room, Time])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(inRoom(Object, Room), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:134
axiom(holds_at(inRoom(Object, Room), Time),
   
    [ holds_at(directlyIn(Object, Room), Time),
      allDifferent([Object, Room, Time])
    ]).

 /*  not(holds_at(directlyIn(Object, Room), Time)) :-
       not(holds_at(inRoom(Object, Room), Time)),
       allDifferent([Object, Room, Time]).
 */

 /*  [holds_at(neg(inRoom(Object, Room)), Time), allDifferent([Object, Room, Time])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object, Room)), Time)).
 */
axiom(holds_at(neg(directlyIn(Object, Room)), Time),
   
    [ holds_at(neg(inRoom(Object, Room)), Time),
      allDifferent([Object, Room, Time])
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:136
%; RS8
% [object1,object2,room,time]
% HoldsAt(directlyIn(object1,object2),time) &
% HoldsAt(inRoom(object2,room),time) ->
% HoldsAt(inRoom(object1,room),time).

 /*  allDifferent([Object1, Object2, Time, Room]) ->
       ( holds_at(directlyIn(Object1, Object2), Time), holds_at(inRoom(Object2, Room), Time)->holds_at(inRoom(Object1, Room), Time)
       ).
 */

 /*  holds_at(inRoom(Object1, Room), Time) :-
       ( holds_at(directlyIn(Object1, Object2), Time),
         holds_at(inRoom(Object2, Room), Time)
       ),
       allDifferent([Object1, Object2, Time, Room]).
 */

 /*  [holds_at(directlyIn(Object1, Object2), Time), holds_at(inRoom(Object2, Room), Time), allDifferent([Object1, Object2, Time, Room])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(inRoom(Object1, Room), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:140
axiom(holds_at(inRoom(Object1, Room), Time),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      holds_at(inRoom(Object2, Room), Time),
      allDifferent([Object1, Object2, Time, Room])
    ]).

 /*  not(holds_at(directlyIn(Object1, Object2), Time)) :-
       holds_at(inRoom(Object2, Room), Time),
       not(holds_at(inRoom(Object1, Room), Time)),
       allDifferent([Object1, Object2, Time, Room]).
 */

 /*  [holds_at(inRoom(Object2, Room), Time), holds_at(neg(inRoom(Object1, Room)), Time), allDifferent([Object1, Object2, Time, Room])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object1, Object2)), Time)).
 */
axiom(holds_at(neg(directlyIn(Object1, Object2)), Time),
   
    [ holds_at(inRoom(Object2, Room), Time),
      holds_at(neg(inRoom(Object1, Room)), Time),
      allDifferent([Object1, Object2, Time, Room])
    ]).

 /*  not(holds_at(inRoom(Object2, Room), Time)) :-
       holds_at(directlyIn(Object1, Object2), Time),
       not(holds_at(inRoom(Object1, Room), Time)),
       allDifferent([Object1, Object2, Time, Room]).
 */

 /*  [holds_at(directlyIn(Object1, Object2), Time), holds_at(neg(inRoom(Object1, Room)), Time), allDifferent([Object1, Object2, Time, Room])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(inRoom(Object2, Room)), Time)).
 */
axiom(holds_at(neg(inRoom(Object2, Room)), Time),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      holds_at(neg(inRoom(Object1, Room)), Time),
      allDifferent([Object1, Object2, Time, Room])
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:142
%; RS9
% [object,room1,room2,time]
% HoldsAt(inRoom(object,room1),time) &
% HoldsAt(inRoom(object,room2),time) ->
% room1=room2.

 /*  allDifferent([Object, Room1, Time, Room2]) ->
       ( holds_at(inRoom(Object, Room1), Time), holds_at(inRoom(Object, Room2), Time)->equals(Room1, Room2)
       ).
 */

 /*  not(holds_at(inRoom(Object, Room1), Time)) :-
       holds_at(inRoom(Object, Room2), Time),
       not(equals(Room1, Room2)),
       allDifferent([Object, Room1, Time, Room2]).
 */

 /*  [holds_at(inRoom(Object, Room2), Time), not(equals(Room1, Room2)), allDifferent([Object, Room1, Time, Room2])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(inRoom(Object, Room1)), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:146
axiom(holds_at(neg(inRoom(Object, Room1)), Time),
   
    [ holds_at(inRoom(Object, Room2), Time),
      not(equals(Room1, Room2)),
      allDifferent([Object, Room1, Time, Room2])
    ]).

 /*  not(holds_at(inRoom(Object, Room2), Time)) :-
       holds_at(inRoom(Object, Room1), Time),
       not(equals(Room1, Room2)),
       allDifferent([Object, Room1, Time, Room2]).
 */

 /*  [holds_at(inRoom(Object, Room1), Time), not(equals(Room1, Room2)), allDifferent([Object, Room1, Time, Room2])] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(inRoom(Object, Room2)), Time)).
 */
axiom(holds_at(neg(inRoom(Object, Room2)), Time),
   
    [ holds_at(inRoom(Object, Room1), Time),
      not(equals(Room1, Room2)),
      allDifferent([Object, Room1, Time, Room2])
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:148
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:150
% HoldsAt(directlyIn(Lisa,LivingRoom),0).

 /*  [] ->
       ta(Ta_Param, tvs1=[], tvs2=[], initially(directlyIn(lisa, livingRoom))).
 */
axiom(initially(directlyIn(lisa, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:151
% HoldsAt(directlyIn(Newspaper,LivingRoom),0).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(directlyIn(newspaper, livingRoom))).
 */
axiom(initially(directlyIn(newspaper, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:152
% HoldsAt(directlyIn(Box,LivingRoom),0).

 /*  [] ->
       ta(Ta_Param, tvs1=[], tvs2=[], initially(directlyIn(box, livingRoom))).
 */
axiom(initially(directlyIn(box, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:154
%; added:                                                 
%; DMILES REMOVED [room1,room2,time] !HoldsAt(inRoom(room1,room2),time).
%; DMILES REMOVED [room,object,time] !HoldsAt(directlyIn(room,object),time).
%; entailed:
%; HoldsAt(directlyIn(Lisa,LivingRoom),5).
%; HoldsAt(directlyIn(Box,Kitchen),5).
%; HoldsAt(inRoom(Newspaper,Kitchen),5).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:163
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:164
==> completion(happens).

% range time 0 5
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:166
==> range(time,0,5).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:167
==> range(offset,1,1).
%; End of file.

