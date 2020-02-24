:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter12/DefaultLocation.e').
%;
%; Copyright (c) 2005 IBM Corporation and others.
%; All rights reserved. This program and the accompanying materials
%; are made available under the terms of the Common Public License v1.0
%; which accompanies this distribution, and is available at
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

% load foundations/Root.e

% load foundations/EC.e

% sort object
==> sort(object).

% sort agent: object
==> subsort(agent,object).

% sort device: object
==> subsort(device,object).

% sort tv: device
==> subsort(tv,device).

% sort room
==> sort(room).

% agent Nathan
==> t(agent,nathan).

% tv TV
==> t(tv,tv).

% room LivingRoom, Kitchen
==> t(room,livingRoom).
==> t(room,kitchen).

% event TurnOn(agent,device)
 %  event(turnOn(agent,device)).
==> mpred_prop(turnOn(agent,device),event).
==> meta_argtypes(turnOn(agent,device)).

% event Walk(agent,room,room)
 %  event(walk(agent,room,room)).
==> mpred_prop(walk(agent,room,room),event).
==> meta_argtypes(walk(agent,room,room)).

% fluent InRoom(object,room)
 %  fluent(inRoom(object,room)).
==> mpred_prop(inRoom(object,room),fluent).
==> meta_argtypes(inRoom(object,room)).

% fluent On(device)
 %  fluent(on(device)).
==> mpred_prop(on(device),fluent).
==> meta_argtypes(on(device)).

% fluent PluggedIn(device)
 %  fluent(pluggedIn(device)).
==> mpred_prop(pluggedIn(device),fluent).
==> meta_argtypes(pluggedIn(device)).

% fluent BrokenSwitch(device)
 %  fluent(brokenSwitch(device)).
==> mpred_prop(brokenSwitch(device),fluent).
==> meta_argtypes(brokenSwitch(device)).

% predicate Ab1(device,time)
 %  predicate(ab1(device,time)).
==> mpred_prop(ab1(device,time),predicate).
==> meta_argtypes(ab1(device,time)).

% predicate Ab2(room,time)
 %  predicate(ab2(room,time)).
==> mpred_prop(ab2(room,time),predicate).
==> meta_argtypes(ab2(room,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:43
%; Sigma
% [agent,room1,room2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:46
% Initiates(Walk(agent,room1,room2),InRoom(agent,room2),time).
axiom(initiates(walk(Agent, Room1, Room2), inRoom(Agent, Room2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:48
% [agent,room1,room2,time]
% room1!=% room2 ->
% Terminates(Walk(agent,room1,room2),InRoom(agent,room1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:50
axiom(terminates(walk(Agent, Room1, Room2), inRoom(Agent, Room1), Time),
    [{dif(Room1, Room2)}]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:52
% [agent,device,time]
% !Ab1(device,time) ->
% Initiates(TurnOn(agent,device),On(device),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:54
axiom(initiates(turnOn(Agent, Device), on(Device), Time),
    [not(ab1(Device, Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:56
%; Delta
% [agent,room1,room2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:59
% Happens(Walk(agent,room1,room2),time) ->
% room1!=room2 &
% HoldsAt(InRoom(agent,room1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:61
axiom(requires(walk(Agent, Room1, Room2), Time),
   
    [ { dif(Room1, Room2)
      },
      holds_at(inRoom(Agent, Room1), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:63
% [agent,device,time]
% Happens(TurnOn(agent,device),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:65
% {room}%  HoldsAt(InRoom(agent,room),time) &
%        HoldsAt(InRoom(device,room),time).

 /*   exists([Room],
             if(happens(turnOn(Agent, Device), Time),
                 (holds_at(inRoom(Agent, Room), Time), holds_at(inRoom(Device, Room), Time)))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_8'(Fn_8_Param, InRoom_Param, Maptime))) :-
       happens(turnOn(Fn_8_Param, InRoom_Param), Maptime),
       (   not(holds_at(inRoom(Fn_8_Param, Some_Param), Maptime))
       ;   not(holds_at(inRoom(InRoom_Param, Some_Param),
                        Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:66
axiom(not(some(Some_Param, '$kolem_Fn_8'(Fn_8_Param, InRoom_Param, Maptime))),
   
    [ not(holds_at(inRoom(Fn_8_Param, Some_Param), Maptime)),
      happens(turnOn(Fn_8_Param, InRoom_Param), Maptime)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_8'(Fn_8_Param, InRoom_Param, Maptime))),
   
    [ not(holds_at(inRoom(InRoom_Param, Some_Param), Maptime)),
      happens(turnOn(Fn_8_Param, InRoom_Param), Maptime)
    ]).

 /*  not(happens(turnOn(TurnOn_Param, InRoom_Param11), Maptime9)) :-
       (   not(holds_at(inRoom(TurnOn_Param, Some_Param12),
                        Maptime9))
       ;   not(holds_at(inRoom(InRoom_Param11, Some_Param12),
                        Maptime9))
       ),
       some(Some_Param12,
            '$kolem_Fn_8'(TurnOn_Param, InRoom_Param11, Maptime9)).
 */
axiom(not(happens(turnOn(TurnOn_Param, InRoom_Param11), Maptime9)),
   
    [ not(holds_at(inRoom(TurnOn_Param, Some_Param12),
                   Maptime9)),
      some(Some_Param12,
           '$kolem_Fn_8'(TurnOn_Param, InRoom_Param11, Maptime9))
    ]).
axiom(not(happens(turnOn(TurnOn_Param, InRoom_Param11), Maptime9)),
   
    [ not(holds_at(inRoom(InRoom_Param11, Some_Param12),
                   Maptime9)),
      some(Some_Param12,
           '$kolem_Fn_8'(TurnOn_Param, InRoom_Param11, Maptime9))
    ]).

 /*  holds_at(inRoom(InRoom_Param14, Some_Param15), Time13) :-
       happens(turnOn(InRoom_Param14, TurnOn_Ret), Time13),
       some(Some_Param15,
            '$kolem_Fn_8'(InRoom_Param14, TurnOn_Ret, Time13)).
 */
axiom(holds_at(inRoom(InRoom_Param14, Some_Param15), Time13),
   
    [ happens(turnOn(InRoom_Param14, TurnOn_Ret), Time13),
      some(Some_Param15,
           '$kolem_Fn_8'(InRoom_Param14, TurnOn_Ret, Time13))
    ]).

 /*  holds_at(inRoom(InRoom_Param18, Some_Param20), Time17) :-
       happens(turnOn(TurnOn_Param19, InRoom_Param18), Time17),
       some(Some_Param20,
            '$kolem_Fn_8'(TurnOn_Param19, InRoom_Param18, Time17)).
 */
axiom(holds_at(inRoom(InRoom_Param18, Some_Param20), Time17),
   
    [ happens(turnOn(TurnOn_Param19, InRoom_Param18), Time17),
      some(Some_Param20,
           '$kolem_Fn_8'(TurnOn_Param19, InRoom_Param18, Time17))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:68
% [event1,event2,time]
% Happens(event1,time) &
% Happens(event2,time) ->
% event1=event2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:71
axiom(Event1=Event2,
    [happens(Event1, Time), happens(Event2, Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:73
%; Theta

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:75
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:75
% [device,time]
 % HoldsAt(BrokenSwitch(device),time) -> Ab1(device,time).
axiom(ab1(Device, Time),
    [holds_at(brokenSwitch(Device), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:76
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:76
% [device,time]
 % !HoldsAt(PluggedIn(device),time) -> Ab1(device,time).
axiom(ab1(Device, Time),
    [not(holds_at(pluggedIn(Device), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:78
%; Psi
% [object,room1,room2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:81
% HoldsAt(InRoom(object,room1),time) &
% HoldsAt(InRoom(object,room2),time) ->
% room1=room2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:83
axiom(Room1=Room2,
   
    [ holds_at(inRoom(Object, Room1), Time),
      holds_at(inRoom(Object, Room2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:85
%; Gamma
% [tv]
 % !HoldsAt(On(tv),0).
 %  not(initially(on(Tv))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:87
axiom(not(initially(on(On_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:88
% [tv]
 % !HoldsAt(BrokenSwitch(tv),0).
 %  not(initially(brokenSwitch(Tv))).
axiom(not(initially(brokenSwitch(BrokenSwitch_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:89
% [tv]
 % HoldsAt(PluggedIn(tv),0).
axiom(initially(pluggedIn(Tv)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:91
% HoldsAt(InRoom(Nathan,Kitchen),0).
axiom(initially(inRoom(nathan, kitchen)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:93
% [time]
% !Ab2(LivingRoom,time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:95
% {tv}%  HoldsAt(InRoom(tv,LivingRoom),time).

 /*  exists([Tv],
          if(not(ab2(livingRoom,Time)),
   	  holds_at(inRoom(Tv,livingRoom),Time))).
 */

 /*  holds_at(inRoom(InRoom_Param, livingRoom), Time3) :-
       not(ab2(livingRoom, Time3)),
       some(InRoom_Param, '$kolem_Fn_9'(Time3)).
 */
axiom(holds_at(inRoom(InRoom_Param, livingRoom), Time3),
   
    [ not(ab2(livingRoom, Time3)),
      some(InRoom_Param, '$kolem_Fn_9'(Time3))
    ]).

 /*  ab2(livingRoom, Time5) :-
       not(holds_at(inRoom(InRoom_Param6, livingRoom), Time5)),
       some(InRoom_Param6, '$kolem_Fn_9'(Time5)).
 */
axiom(ab2(livingRoom, Time5),
   
    [ not(holds_at(inRoom(InRoom_Param6, livingRoom), Time5)),
      some(InRoom_Param6, '$kolem_Fn_9'(Time5))
    ]).

 /*  not(some(Some_Param, '$kolem_Fn_9'(Time7))) :-
       not(holds_at(inRoom(Some_Param, livingRoom), Time7)),
       not(ab2(livingRoom, Time7)).
 */
axiom(not(some(Some_Param, '$kolem_Fn_9'(Time7))),
   
    [ not(holds_at(inRoom(Some_Param, livingRoom), Time7)),
      not(ab2(livingRoom, Time7))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:97
%; goal
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:99
% {tv} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:99
% Happens(TurnOn(Nathan,tv),1).
 %  exists([Tv],happens(turnOn(nathan,Tv),1)).

 /*  happens(turnOn(nathan, Some_Param), 1) :-
       some(Some_Param, '$kolem_Fn_10').
 */
axiom(happens(turnOn(nathan, Some_Param), start),
    [some(Some_Param, '$kolem_Fn_10'), b(t, start), ignore(t+1=start)]).

 /*  not(some(Some_Param3, '$kolem_Fn_10')) :-
       not(happens(turnOn(nathan, Some_Param3), 1)).
 */
axiom(not(some(Some_Param3, '$kolem_Fn_10')),
   
    [ not(happens(turnOn(nathan, Some_Param3), start)),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:101
%; for two TVs:
%;[tv,time] !HoldsAt(InRoom(tv,Kitchen),time).
%;[tv,time] {room} HoldsAt(InRoom(tv,room),time).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:105
% completion Theta Ab1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:106
==> completion(theta).
==> completion(ab1).

% completion Theta Ab2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:107
==> completion(theta).
==> completion(ab2).

% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:109
==> range(time,0,2).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultLocation.e:110
==> range(offset,1,1).
%; End of file.
