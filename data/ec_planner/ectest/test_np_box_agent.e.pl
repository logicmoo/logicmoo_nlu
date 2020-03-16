% init_why(after('/opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/marty_white/planner/ec_reader.pl')).
% init_why(after('/opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/marty_white/planner/ec_reader.pl')).
% init_why(program).
% ec_to_pl(do_ec_load, current_output, 'ectest/TestBoxRoom.e').
% ectest/TestBoxRoom.e:1
% ec_in_to_pl(do_ec_load, current_output, <stream>(0x55638dfa3da0)).
% ec_io(do_ec_load, <stream>(0x55638dfa3da0)).
% ectest/TestBoxRoom.e:1
:- include('../ec_test_incl').
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

 make_falling_edges_v2(t_plus_, t_minus_1, HapsList, [_|Edges], _Out),
 dbginfo('Edges'=Edges), !,
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

%
%
% ; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
% ; FILE: examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e
% ; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
% ;
% ; Copyright (c) 2005 IBM Corporation and others.
% ; All rights reserved. This program and the accompanying materials
% ; are made available under the terms of the Common Public License v1.0
% ; which accompanies this distribution, and is available in
% ; http://www.eclipse.org/legal/cpl-v10.html
% ;
% ; Contributors:
% ; IBM - Initial implementation
% ;
% ; @book{Mueller:2006,
% ;   author = "Erik T. Mueller",
% ;   year = "2006",
% ;   title = "Commonsense Reasoning",
% ;   address = "San Francisco",
% ;   publisher = "Morgan Kaufmann/Elsevier",
% ; }
% ;

% ectest/TestBoxRoom.e:24
% load foundations/Root.e
% ectest/TestBoxRoom.e:25

% ectest/TestBoxRoom.e:25
% ec_to_pl(do_ec_load, current_output, 'foundations/Root.e').
% ec_in_to_pl(do_ec_load, current_output, <stream>(0x55638dfaaab0)).
% ec_io(do_ec_load, <stream>(0x55638dfaaab0)).
% foundations/Root.e:1

% ;
% ; Copyright (c) 2005 IBM Corporation and others.
% ; All rights reserved. This program and the accompanying materials
% ; are made available under the terms of the Common Public License v1.0
% ; which accompanies this distribution, and is available at
% ; http://www.eclipse.org/legal/cpl-v10.html
% ;
% ; Contributors:
% ; IBM - Initial implementation
% ;
% foundations/Root.e:11
% sort boolean
sort(boolean).

% sort integer
sort(integer).

% reified sort predicate
reified_sort(predicate).

% reified sort function
reified_sort(function).

%
% ; End of file.
% ectest/TestBoxRoom.e:25
% load foundations/EC.e
% ectest/TestBoxRoom.e:26

% ectest/TestBoxRoom.e:26
% ec_to_pl(do_ec_load, current_output, 'foundations/EC.e').
% ec_in_to_pl(do_ec_load, current_output, <stream>(0x55638e470710)).
% ec_io(do_ec_load, <stream>(0x55638e470710)).
% foundations/EC.e:1

% ;
% ; Copyright (c) 2005 IBM Corporation and others.
% ; All rights reserved. This program and the accompanying materials
% ; are made available under the terms of the Common Public License v1.0
% ; which accompanies this distribution, and is available at
% ; http://www.eclipse.org/legal/cpl-v10.html
% ;
% ; Contributors:
% ; IBM - Initial implementation
% ;
% ; Event Calculus (EC)
% ;
% ; @incollection{MillerShanahan:2002,
% ;   author = "Rob Miller and Murray Shanahan",
% ;   year = "2002",
% ;   title = "Some alternative formulations of the event calculus",
% ;   editor = "Antonis C. Kakas and Fariba Sadri",
% ;   booktitle = "Computational Logic: Logic Programming and Beyond: Essays in Honour of \uppercase{R}obert \uppercase{A}. \uppercase{K}owalski, Part \uppercase{II}",
% ;   series = "Lecture Notes in Computer Science",
% ;   volume = "2408",
% ;   pages = "452--490",
% ;   address = "Berlin",
% ;   publisher = "Springer",
% ; }
% ;
% foundations/EC.e:26
%
% sort time: integer
axiom(subsort(time,integer),[]).

% sort offset: integer
axiom(subsort(offset,integer),[]).

%
% reified sort fluent
reified_sort(fluent).

% reified sort event
reified_sort(event).


% foundations/EC.e:32
%
% predicate Happens(event,time)
predicate(happens(event,time)).

% predicate HoldsAt(fluent,time)
predicate(holds_at(fluent,time)).

% predicate ReleasedAt(fluent,time)
predicate(releasedAt(fluent,time)).

% predicate Initiates(event,fluent,time)
predicate(initiates(event,fluent,time)).

% predicate Terminates(event,fluent,time)
predicate(terminates(event,fluent,time)).


% foundations/EC.e:38
% predicate Releases(event,fluent,time)
predicate(releases(event,fluent,time)).

% predicate Trajectory(fluent,time,fluent,offset)
predicate(trajectory(fluent,time,fluent,offset)).

%
% ; End of file.
% ectest/TestBoxRoom.e:26
%
% sort object
sort(object).

% sort agent: object
axiom(subsort(agent,object),[]).

% sort physobj: object
axiom(subsort(physobj,object),[]).

% sort room: object
axiom(subsort(room,object),[]).

%
% ectest/TestBoxRoom.e:32
fluent(directlyIn(object,object)).


%
fluent(inRoom(object,room)).

%
% noninertial inRoom
noninertial(inRoom).

%
executable(move(_agent,_object0,_object1,_object2)).
==> meta_argtypes(move(agent,object,object,object)).

abducible(dummy).
%
% ectest/TestBoxRoom.e:38
% agent Lisa
isa(lisa,agent).

% physobj Box, Newspaper
isa(box,physobj).


isa(newspaper,physobj).

% room Kitchen, LivingRoom
isa(kitchen,room).


isa(livingRoom,room).



%
% ; Sigma
%
% ; RS10
% ectest/TestBoxRoom.e:45
% [agent,physobj1,physobj2,room,time]%
% HoldsAt(directlyIn(agent,room),time) &
% HoldsAt(directlyIn(physobj1,room),time) &
% HoldsAt(inRoom(physobj2,room),time) ->
% Initiates(move(agent,physobj1,room,physobj2),directlyIn(physobj1,physobj2),time).
axiom(
  initiates(
    move(Agent,Physobj1,Room,Physobj2),
    directlyIn(Physobj1,Physobj2),Time),
   [holds_at(directlyIn(Agent,Room),Time),
    holds_at(directlyIn(Physobj1,Room),Time),
    holds_at(inRoom(Physobj2,Room),Time)]).

%
%
% ; RS11
% ectest/TestBoxRoom.e:52
% [agent,physobj1,physobj2,room,time]%
% HoldsAt(directlyIn(agent,room),time) &
% HoldsAt(directlyIn(physobj1,room),time) &
% HoldsAt(inRoom(physobj2,room),time) ->
% Terminates(move(agent,physobj1,room,physobj2),directlyIn(physobj1,room),time).
axiom(terminates(move(Agent,Physobj1,Room,Physobj2),directlyIn(Physobj1,Room),Time),[holds_at(directlyIn(Agent,Room),Time),holds_at(directlyIn(Physobj1,Room),Time),holds_at(inRoom(Physobj2,Room),Time)]).

%
%
% ; RS12
% ectest/TestBoxRoom.e:59
% [agent,physobj1,physobj2,room,time]%
% HoldsAt(directlyIn(agent,room),time) ->
% Initiates(move(agent,physobj1,physobj2,room),directlyIn(physobj1,room),time).
axiom(initiates(move(Agent,Physobj1,Physobj2,Room),directlyIn(Physobj1,Room),Time),[holds_at(directlyIn(Agent,Room),Time)]).

%
%
% ; RS13
% ectest/TestBoxRoom.e:64
% [agent,physobj1,physobj2,room,time]%
% HoldsAt(directlyIn(agent,room),time) ->
% Terminates(move(agent,physobj1,physobj2,room),directlyIn(physobj1,physobj2),time).
axiom(terminates(move(Agent,Physobj1,Physobj2,Room),directlyIn(Physobj1,Physobj2),Time),[holds_at(directlyIn(Agent,Room),Time)]).

%
%
% ; RS14
% ectest/TestBoxRoom.e:69
% [agent,room1,room2,time]%
% HoldsAt(directlyIn(agent,room1),time) ->
% Initiates(move(agent,agent,room1,room2),directlyIn(agent,room2),time).
axiom(initiates(move(Agent,Agent,Room1,Room2),directlyIn(Agent,Room2),Time),[holds_at(directlyIn(Agent,Room1),Time)]).

%
%
% ; RS15
% ectest/TestBoxRoom.e:74
% [agent,room1,room2,time]%
% HoldsAt(directlyIn(agent,room1),time) ->
% Terminates(move(agent,agent,room1,room2),directlyIn(agent,room1),time).
axiom(terminates(move(Agent,Agent,Room1,Room2),directlyIn(Agent,Room1),Time),[holds_at(directlyIn(Agent,Room1),Time)]).

%
%
% ; RS16
% ectest/TestBoxRoom.e:79
% [agent,physobj,room,time]%
% HoldsAt(directlyIn(agent,room),time) &
% HoldsAt(directlyIn(physobj,room),time) ->
% Initiates(move(agent,physobj,room,agent),directlyIn(physobj,agent),time).
axiom(initiates(move(Agent,Physobj,Room,Agent),directlyIn(Physobj,Agent),Time),[holds_at(directlyIn(Agent,Room),Time),holds_at(directlyIn(Physobj,Room),Time)]).

%
%
% ; RS17
% ectest/TestBoxRoom.e:85
% [agent,physobj,room,time]%
% HoldsAt(directlyIn(agent,room),time) &
% HoldsAt(directlyIn(physobj,room),time) ->
% Terminates(move(agent,physobj,room,agent),directlyIn(physobj,room),time).
axiom(terminates(move(Agent,Physobj,Room,Agent),directlyIn(Physobj,Room),Time),[holds_at(directlyIn(Agent,Room),Time),holds_at(directlyIn(Physobj,Room),Time)]).

%
%
% ; RS18
% ectest/TestBoxRoom.e:91
% [agent,physobj,room,time]%
% HoldsAt(directlyIn(physobj,agent),time) &
% HoldsAt(directlyIn(agent,room),time) ->
% Initiates(move(agent,physobj,agent,room),directlyIn(physobj,room),time).
axiom(initiates(move(Agent,Physobj,Agent,Room),directlyIn(Physobj,Room),Time),[holds_at(directlyIn(Physobj,Agent),Time),holds_at(directlyIn(Agent,Room),Time)]).

%
%
% ; RS19
% ectest/TestBoxRoom.e:97
% [agent,physobj,room,time]%
% HoldsAt(directlyIn(physobj,agent),time) &
% HoldsAt(directlyIn(agent,room),time) ->
% Terminates(move(agent,physobj,agent,room),directlyIn(physobj,agent),time).
axiom(terminates(move(Agent,Physobj,Agent,Room),directlyIn(Physobj,Agent),Time),[holds_at(directlyIn(Physobj,Agent),Time),holds_at(directlyIn(Agent,Room),Time)]).

%
%
% ; Delta
% ectest/TestBoxRoom.e:103
%
% Happens(move(Lisa,Newspaper,LivingRoom,Box),0).
axiom_hide(happens(move(lisa,newspaper,livingRoom,box),0),[]).

%
% Happens(move(Lisa,Box,LivingRoom,Lisa),1).
axiom_hide(happens(move(lisa,box,livingRoom,lisa),1),[]).

%
% Happens(move(Lisa,Lisa,LivingRoom,Kitchen),2).
axiom_hide(happens(move(lisa,lisa,livingRoom,kitchen),2),[]).

%
% Happens(move(Lisa,Box,Lisa,Kitchen),3).
axiom_hide(happens(move(lisa,box,lisa,kitchen),3),[]).

%
% Happens(move(Lisa,Lisa,Kitchen,LivingRoom),4).
axiom_hide(happens(move(lisa,lisa,kitchen,livingRoom),4),[]).

%
% ectest/TestBoxRoom.e:109
%
% ; Psi
%
% ; RS1
% ectest/TestBoxRoom.e:113
% [object,time] % !HoldsAt(directlyIn(object,object),time).
axiom(holds_at(neg(directlyIn(Object,Object)),Time),[]).

%
%
% ; RS2
% ectest/TestBoxRoom.e:116
% [object1,object2,time]%
% HoldsAt(directlyIn(object1,object2),time) ->
% !HoldsAt(directlyIn(object2,object1),time).
axiom(holds_at(neg(directlyIn(Object2,Object1)),Time),[holds_at(directlyIn(Object1,Object2),Time)]).

%
%
% ; RS3
% ectest/TestBoxRoom.e:121
% [object1,object2,object3,time]%
% HoldsAt(directlyIn(object1,object2),time) &
% HoldsAt(directlyIn(object2,object3),time) ->
% !HoldsAt(directlyIn(object1,object3),time).
axiom(holds_at(neg(directlyIn(Object1,Object3)),Time),[holds_at(directlyIn(Object1,Object2),Time),holds_at(directlyIn(Object2,Object3),Time)]).

%
%
% ; RS4
% ectest/TestBoxRoom.e:127
% [object,object1,object2,time]%
% HoldsAt(directlyIn(object,object1),time) &
% HoldsAt(directlyIn(object,object2),time) ->
% object1=object2.
axiom(Object1=Object2,[holds_at(directlyIn(Object,Object1),Time),holds_at(directlyIn(Object,Object2),Time)]).

%
%
% ; RS7
% ectest/TestBoxRoom.e:133
% [object,room,time]%
% HoldsAt(directlyIn(object,room),time) ->
% HoldsAt(inRoom(object,room),time).
axiom(holds_at(inRoom(Object,Room),Time),[holds_at(directlyIn(Object,Room),Time)]).

%
%
% ; RS8
% ectest/TestBoxRoom.e:138
% [object1,object2,room,time]%
% HoldsAt(directlyIn(object1,object2),time) &
% HoldsAt(inRoom(object2,room),time) ->
% HoldsAt(inRoom(object1,room),time).
axiom(holds_at(inRoom(Object1,Room),Time),[holds_at(directlyIn(Object1,Object2),Time),holds_at(inRoom(Object2,Room),Time)]).

%
%
% ; RS9
% ectest/TestBoxRoom.e:144
% [object,room1,room2,time]%
% HoldsAt(inRoom(object,room1),time) &
% HoldsAt(inRoom(object,room2),time) ->
% room1=room2.
axiom(Room1=Room2,[holds_at(inRoom(Object,Room1),Time),holds_at(inRoom(Object,Room2),Time)]).

%
%
% ; Gamma
% ectest/TestBoxRoom.e:150
%
% HoldsAt(directlyIn(Lisa,LivingRoom),0).
axiom(initially(directlyIn(lisa,livingRoom)),[]).

%
% HoldsAt(directlyIn(Newspaper,LivingRoom),0).
axiom(initially(directlyIn(newspaper,livingRoom)),[]).

%
% HoldsAt(directlyIn(Box,LivingRoom),0).
axiom(initially(directlyIn(box,livingRoom)),[]).

%
%
% ; added:
% ectest/TestBoxRoom.e:156
% [room1,room2,time] % !HoldsAt(inRoom(room1,room2),time).
axiom(holds_at(neg(inRoom(Room1,Room2)),Time),[]).

%
% ectest/TestBoxRoom.e:157
% [room,object,time] % !HoldsAt(directlyIn(room,object),time).
axiom(holds_at(neg(directlyIn(Room,Object)),Time),[]).

%
%
% ; entailed:
% ; HoldsAt(directlyIn(Lisa,LivingRoom),5).
% ; HoldsAt(directlyIn(Box,Kitchen),5).
% ; HoldsAt(inRoom(Newspaper,Kitchen),5).
% ectest/TestBoxRoom.e:163
%
% completion Happens
completion(happens).

%
% range time 0 5
range(time,0,5).

% range offset 1 1
range(offset,1,1).

%
% ; End of file.
% ectest/TestBoxRoom.e:170
%
%

