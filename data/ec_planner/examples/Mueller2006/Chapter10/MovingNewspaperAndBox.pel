:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e').
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

% sort physobj: object
==> subsort(physobj,object).

% sort room: object
==> subsort(room,object).

% fluent IN(object,object)
 %  fluent(in(object,object)).
==> mpred_prop(in(object,object),fluent).
==> meta_argtypes(in(object,object)).

% fluent INROOM(object,room)
 %  fluent(inroom(object,room)).
==> mpred_prop(inroom(object,room),fluent).
==> meta_argtypes(inroom(object,room)).

% noninertial INROOM
==> noninertial(inroom).

% event MOVE(agent,object,object,object)
 %  event(move(agent,object,object,object)).
==> mpred_prop(move(agent,object,object,object),event).
==> meta_argtypes(move(agent,object,object,object)).

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
% HoldsAt(IN(agent,room),time) &
% HoldsAt(IN(physobj1,room),time) &
% HoldsAt(INROOM(physobj2,room),time) ->
% Initiates(MOVE(agent,physobj1,room,physobj2),IN(physobj1,physobj2),time).
axiom(initiates(move(Agent, Physobj1, Room, Physobj2), in(Physobj1, Physobj2), Time),
   
    [ holds_at(in(Agent, Room), Time),
      holds_at(in(Physobj1, Room), Time),
      holds_at(inroom(Physobj2, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:46
%; RS11
% [agent,physobj1,physobj2,room,time]
% HoldsAt(IN(agent,room),time) &
% HoldsAt(IN(physobj1,room),time) &
% HoldsAt(INROOM(physobj2,room),time) ->
% Terminates(MOVE(agent,physobj1,room,physobj2),IN(physobj1,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:51
axiom(terminates(move(Agent, Physobj1, Room, Physobj2), in(Physobj1, Room), Time),
   
    [ holds_at(in(Agent, Room), Time),
      holds_at(in(Physobj1, Room), Time),
      holds_at(inroom(Physobj2, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:53
%; RS12
% [agent,physobj1,physobj2,room,time]
% HoldsAt(IN(agent,room),time) ->
% Initiates(MOVE(agent,physobj1,physobj2,room),IN(physobj1,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:56
axiom(initiates(move(Agent, Physobj1, Physobj2, Room), in(Physobj1, Room), Time),
    [holds_at(in(Agent, Room), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:58
%; RS13
% [agent,physobj1,physobj2,room,time]
% HoldsAt(IN(agent,room),time) ->
% Terminates(MOVE(agent,physobj1,physobj2,room),IN(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:61
axiom(terminates(move(Agent, Physobj1, Physobj2, Room), in(Physobj1, Physobj2), Time),
    [holds_at(in(Agent, Room), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:63
%; RS14
% [agent,room1,room2,time]
% HoldsAt(IN(agent,room1),time) ->
% Initiates(MOVE(agent,agent,room1,room2),IN(agent,room2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:66
axiom(initiates(move(Agent, Agent, Room1, Room2), in(Agent, Room2), Time),
    [holds_at(in(Agent, Room1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:68
%; RS15
% [agent,room1,room2,time]
% HoldsAt(IN(agent,room1),time) ->
% Terminates(MOVE(agent,agent,room1,room2),IN(agent,room1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:71
axiom(terminates(move(Agent, Agent, Room1, Room2), in(Agent, Room1), Time),
    [holds_at(in(Agent, Room1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:73
%; RS16
% [agent,physobj,room,time]
% HoldsAt(IN(agent,room),time) &
% HoldsAt(IN(physobj,room),time) ->
% Initiates(MOVE(agent,physobj,room,agent),IN(physobj,agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:77
axiom(initiates(move(Agent, Physobj, Room, Agent), in(Physobj, Agent), Time),
   
    [ holds_at(in(Agent, Room), Time),
      holds_at(in(Physobj, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:79
%; RS17
% [agent,physobj,room,time]
% HoldsAt(IN(agent,room),time) &
% HoldsAt(IN(physobj,room),time) ->
% Terminates(MOVE(agent,physobj,room,agent),IN(physobj,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:83
axiom(terminates(move(Agent, Physobj, Room, Agent), in(Physobj, Room), Time),
   
    [ holds_at(in(Agent, Room), Time),
      holds_at(in(Physobj, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:85
%; RS18
% [agent,physobj,room,time]
% HoldsAt(IN(physobj,agent),time) &
% HoldsAt(IN(agent,room),time) ->
% Initiates(MOVE(agent,physobj,agent,room),IN(physobj,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:89
axiom(initiates(move(Agent, Physobj, Agent, Room), in(Physobj, Room), Time),
   
    [ holds_at(in(Physobj, Agent), Time),
      holds_at(in(Agent, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:91
%; RS19
% [agent,physobj,room,time]
% HoldsAt(IN(physobj,agent),time) &
% HoldsAt(IN(agent,room),time) ->
% Terminates(MOVE(agent,physobj,agent,room),IN(physobj,agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:95
axiom(terminates(move(Agent, Physobj, Agent, Room), in(Physobj, Agent), Time),
   
    [ holds_at(in(Physobj, Agent), Time),
      holds_at(in(Agent, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:97
%; Delta


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:99
% Happens(MOVE(Lisa,Newspaper,LivingRoom,Box),0).
axiom(happens(move(lisa, newspaper, livingRoom, box), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:100
% Happens(MOVE(Lisa,Box,LivingRoom,Lisa),1).
axiom(happens(move(lisa, box, livingRoom, lisa), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:101
% Happens(MOVE(Lisa,Lisa,LivingRoom,Kitchen),2).
axiom(happens(move(lisa, lisa, livingRoom, kitchen), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:102
% Happens(MOVE(Lisa,Box,Lisa,Kitchen),3).
axiom(happens(move(lisa, box, lisa, kitchen), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:103
% Happens(MOVE(Lisa,Lisa,Kitchen,LivingRoom),4).
axiom(happens(move(lisa, lisa, kitchen, livingRoom), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:105
%; Psi
%; RS1
% [object,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:108
% !HoldsAt(IN(object,object),time).
 %  not(holds_at(in(Object,Object),Time)).
axiom(not(holds_at(in(In_Param, In_Param), Time2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:110
%; RS2
% [object1,object2,time]
% HoldsAt(IN(object1,object2),time) ->
% !HoldsAt(IN(object2,object1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:113
axiom(not(holds_at(in(Object2, Object1), Time)),
    [holds_at(in(Object1, Object2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:115
%; RS3
% [object1,object2,object3,time]
% HoldsAt(IN(object1,object2),time) &
% HoldsAt(IN(object2,object3),time) ->
% !HoldsAt(IN(object1,object3),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:119
axiom(not(holds_at(in(Object1, Object3), Time)),
   
    [ holds_at(in(Object1, Object2), Time),
      holds_at(in(Object2, Object3), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:121
%; RS4
% [object,object1,object2,time]
% HoldsAt(IN(object,object1),time) &
% HoldsAt(IN(object,object2),time) ->
% object1=object2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:125
axiom(Object1=Object2,
   
    [ holds_at(in(Object, Object1), Time),
      holds_at(in(Object, Object2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:127
%; RS7
% [object,room,time]
% HoldsAt(IN(object,room),time) ->
% HoldsAt(INROOM(object,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:130
axiom(holds_at(inroom(Object, Room), Time),
    [holds_at(in(Object, Room), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:132
%; RS8
% [object1,object2,room,time]
% HoldsAt(IN(object1,object2),time) &
% HoldsAt(INROOM(object2,room),time) ->
% HoldsAt(INROOM(object1,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:136
axiom(holds_at(inroom(Object1, Room), Time),
   
    [ holds_at(in(Object1, Object2), Time),
      holds_at(inroom(Object2, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:138
%; RS9
% [object,room1,room2,time]
% HoldsAt(INROOM(object,room1),time) &
% HoldsAt(INROOM(object,room2),time) ->
% room1=room2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:142
axiom(Room1=Room2,
   
    [ holds_at(inroom(Object, Room1), Time),
      holds_at(inroom(Object, Room2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:144
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:146
% HoldsAt(IN(Lisa,LivingRoom),0).
axiom(initially(in(lisa, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:147
% HoldsAt(IN(Newspaper,LivingRoom),0).
axiom(initially(in(newspaper, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:148
% HoldsAt(IN(Box,LivingRoom),0).
axiom(initially(in(box, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:150
%; added:
% [room1,room2,time]
 % !HoldsAt(INROOM(room1,room2),time).
 %  not(holds_at(inroom(Room1,Room2),Time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:151
axiom(not(holds_at(inroom(Inroom_Param, Inroom_Ret), Time3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:152
% [room,object,time]
 % !HoldsAt(IN(room,object),time).
 %  not(holds_at(in(Room,Object),Time)).
axiom(not(holds_at(in(In_Param, In_Ret), Time3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:154
%; entailed:
%; HoldsAt(IN(Lisa,LivingRoom),5).
%; HoldsAt(IN(Box,Kitchen),5).
%; HoldsAt(INROOM(Newspaper,Kitchen),5).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:159
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:160
==> completion(happens).

% range time 0 5
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:162
==> range(time,0,5).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/MovingNewspaperAndBox.e:163
==> range(offset,1,1).
%; End of file.
