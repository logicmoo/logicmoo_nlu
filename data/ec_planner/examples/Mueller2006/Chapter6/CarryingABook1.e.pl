:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter6/CarryingABook1.e').
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
%; Example: Carrying a Book (Effect Axioms)
%;
%; @book{Mueller:2006,
%;   author = "Erik T. Mueller",
%;   year = "2006",
%;   title = "Commonsense Reasoning",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann/Elsevier",
%; }
%;
%;

% option modeldiff on
:- set_ec_option(modeldiff, on).

% load foundations/Root.e

% load foundations/EC.e

% sort object
==> sort(object).

% sort agent: object
==> subsort(agent,object).

% sort room
==> sort(room).

% object Book
==> t(object,book).

% agent Nathan
==> t(agent,nathan).

% room LivingRoom, Kitchen
==> t(room,livingRoom).
==> t(room,kitchen).

% event LetGoOf(agent,object)
 %  event(letGoOf(agent,object)).
==> mpred_prop(letGoOf(agent,object),event).
==> meta_argtypes(letGoOf(agent,object)).

% event PickUp(agent,object)
 %  event(pickUp(agent,object)).
==> mpred_prop(pickUp(agent,object),event).
==> meta_argtypes(pickUp(agent,object)).

% event Walk(agent,room,room)
 %  event(walk(agent,room,room)).
==> mpred_prop(walk(agent,room,room),event).
==> meta_argtypes(walk(agent,room,room)).

% fluent InRoom(object,room)
 %  fluent(inRoom(object,room)).
==> mpred_prop(inRoom(object,room),fluent).
==> meta_argtypes(inRoom(object,room)).

% fluent Holding(agent,object)
 %  fluent(holding(agent,object)).
==> mpred_prop(holding(agent,object),fluent).
==> meta_argtypes(holding(agent,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:42
%; Sigma
% [agent,room1,room2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:45
% Initiates(Walk(agent,room1,room2),InRoom(agent,room2),time).
axiom(initiates(walk(Agent, Room1, Room2), inRoom(Agent, Room2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:47
% [agent,room1,room2,time]
% room1!=% room2 ->
% Terminates(Walk(agent,room1,room2),InRoom(agent,room1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:49
axiom(terminates(walk(Agent, Room1, Room2), inRoom(Agent, Room1), Time),
    [{dif(Room1, Room2)}]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:51
% [agent,object,room,time]
% HoldsAt(InRoom(agent,room),time) &
% HoldsAt(InRoom(object,room),time) ->
% Initiates(PickUp(agent,object),Holding(agent,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:54
axiom(initiates(pickUp(Agent, Object), holding(Agent, Object), Time),
   
    [ holds_at(inRoom(Agent, Room), Time),
      holds_at(inRoom(Object, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:56
% [agent,object,time]
% HoldsAt(Holding(agent,object),time) ->
% Terminates(LetGoOf(agent,object),Holding(agent,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:58
axiom(terminates(letGoOf(Agent, Object), holding(Agent, Object), Time),
    [holds_at(holding(Agent, Object), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:60
% [agent,object,room1,room2,time]
% HoldsAt(Holding(agent,object),time) ->
% Initiates(Walk(agent,room1,room2),InRoom(object,room2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:62
axiom(initiates(walk(Agent, Room1, Room2), inRoom(Object, Room2), Time),
    [holds_at(holding(Agent, Object), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:64
% [agent,object,room1,room2,time]
% HoldsAt(Holding(agent,object),time) &
% room1!=room2 ->
% Terminates(Walk(agent,room1,room2),InRoom(object,room1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:67
axiom(terminates(walk(Agent, Room1, Room2), inRoom(Object, Room1), Time),
   
    [ holds_at(holding(Agent, Object), Time),
      { dif(Room1, Room2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:69
%; Delta


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:71
% Happens(PickUp(Nathan,Book),0).
axiom(happens(pickUp(nathan, book), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:72
% Happens(Walk(Nathan,LivingRoom,Kitchen),1).
axiom(happens(walk(nathan, livingRoom, kitchen), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:74
%; Psi
% [object,room1,room2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:77
% HoldsAt(InRoom(object,room1),time) &
% HoldsAt(InRoom(object,room2),time) ->
% room1=room2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:79
axiom(Room1=Room2,
   
    [ holds_at(inRoom(Object, Room1), Time),
      holds_at(inRoom(Object, Room2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:81
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:83
% HoldsAt(InRoom(Nathan,LivingRoom),0).
axiom(initially(inRoom(nathan, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:84
% HoldsAt(InRoom(Book,LivingRoom),0).
axiom(initially(inRoom(book, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:86
%; added:


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:87
% !HoldsAt(Holding(Nathan,Book),0).
 %  not(initially(holding(nathan,book))).
axiom(not(initially(holding(nathan, book))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:88
% [agent,time]
 % !HoldsAt(Holding(agent,agent),time).
 %  not(holds_at(holding(Agent,Agent),Time)).
axiom(not(holds_at(holding(Holding_Param, Holding_Param), Time2)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:90
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:91
==> completion(happens).

% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:93
==> range(time,0,2).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/CarryingABook1.e:94
==> range(offset,1,1).
%; End of file.
