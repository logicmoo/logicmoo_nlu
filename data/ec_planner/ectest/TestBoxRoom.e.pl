:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ectest/TestBoxRoom.e').
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

% fluent directlyIn(object,object) %  fluent(directlyIn(object,object)).
==> mpred_prop(directlyIn(object,object),fluent).
==> meta_argtypes(directlyIn(object,object)).

% fluent inRoom(object,room) %  fluent(inRoom(object,room)).
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
% HoldsAt(directlyIn(agent,room),time) &% 
% HoldsAt(directlyIn(physobj1,room),time) &% 
% HoldsAt(inRoom(physobj2,room),time) ->% 
% Initiates(move(agent,physobj1,room,physobj2),directlyIn(physobj1,physobj2),time).
axiom(initiates(move(Agent, Physobj1, Room, Physobj2), directlyIn(Physobj1, Physobj2), Time),
   
    [ holds_at(directlyIn(Agent, Room), Time),
      holds_at(directlyIn(Physobj1, Room), Time),
      holds_at(inRoom(Physobj2, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:50
%; RS11
% [agent,physobj1,physobj2,room,time]
% HoldsAt(directlyIn(agent,room),time) &% 
% HoldsAt(directlyIn(physobj1,room),time) &% 
% HoldsAt(inRoom(physobj2,room),time) ->% 
% Terminates(move(agent,physobj1,room,physobj2),directlyIn(physobj1,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:55
axiom(terminates(move(Agent, Physobj1, Room, Physobj2), directlyIn(Physobj1, Room), Time),
   
    [ holds_at(directlyIn(Agent, Room), Time),
      holds_at(directlyIn(Physobj1, Room), Time),
      holds_at(inRoom(Physobj2, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:57
%; RS12
% [agent,physobj1,physobj2,room,time]
% HoldsAt(directlyIn(agent,room),time) ->% 
% Initiates(move(agent,physobj1,physobj2,room),directlyIn(physobj1,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:60
axiom(initiates(move(Agent, Physobj1, Physobj2, Room), directlyIn(Physobj1, Room), Time),
    [holds_at(directlyIn(Agent, Room), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:62
%; RS13
% [agent,physobj1,physobj2,room,time]
% HoldsAt(directlyIn(agent,room),time) ->% 
% Terminates(move(agent,physobj1,physobj2,room),directlyIn(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:65
axiom(terminates(move(Agent, Physobj1, Physobj2, Room), directlyIn(Physobj1, Physobj2), Time),
    [holds_at(directlyIn(Agent, Room), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:67
%; RS14
% [agent,room1,room2,time]
% HoldsAt(directlyIn(agent,room1),time) ->% 
% Initiates(move(agent,agent,room1,room2),directlyIn(agent,room2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:70
axiom(initiates(move(Agent, Agent, Room1, Room2), directlyIn(Agent, Room2), Time),
    [holds_at(directlyIn(Agent, Room1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:72
%; RS15
% [agent,room1,room2,time]
% HoldsAt(directlyIn(agent,room1),time) ->% 
% Terminates(move(agent,agent,room1,room2),directlyIn(agent,room1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:75
axiom(terminates(move(Agent, Agent, Room1, Room2), directlyIn(Agent, Room1), Time),
    [holds_at(directlyIn(Agent, Room1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:77
%; RS16
% [agent,physobj,room,time]
% HoldsAt(directlyIn(agent,room),time) &% 
% HoldsAt(directlyIn(physobj,room),time) ->% 
% Initiates(move(agent,physobj,room,agent),directlyIn(physobj,agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:81
axiom(initiates(move(Agent, Physobj, Room, Agent), directlyIn(Physobj, Agent), Time),
   
    [ holds_at(directlyIn(Agent, Room), Time),
      holds_at(directlyIn(Physobj, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:83
%; RS17
% [agent,physobj,room,time]
% HoldsAt(directlyIn(agent,room),time) &% 
% HoldsAt(directlyIn(physobj,room),time) ->% 
% Terminates(move(agent,physobj,room,agent),directlyIn(physobj,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:87
axiom(terminates(move(Agent, Physobj, Room, Agent), directlyIn(Physobj, Room), Time),
   
    [ holds_at(directlyIn(Agent, Room), Time),
      holds_at(directlyIn(Physobj, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:89
%; RS18
% [agent,physobj,room,time]
% HoldsAt(directlyIn(physobj,agent),time) &% 
% HoldsAt(directlyIn(agent,room),time) ->% 
% Initiates(move(agent,physobj,agent,room),directlyIn(physobj,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:93
axiom(initiates(move(Agent, Physobj, Agent, Room), directlyIn(Physobj, Room), Time),
   
    [ holds_at(directlyIn(Physobj, Agent), Time),
      holds_at(directlyIn(Agent, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:95
%; RS19
% [agent,physobj,room,time]
% HoldsAt(directlyIn(physobj,agent),time) &% 
% HoldsAt(directlyIn(agent,room),time) ->% 
% Terminates(move(agent,physobj,agent,room),directlyIn(physobj,agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:99
axiom(terminates(move(Agent, Physobj, Agent, Room), directlyIn(Physobj, Agent), Time),
   
    [ holds_at(directlyIn(Physobj, Agent), Time),
      holds_at(directlyIn(Agent, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:101
%; Delta


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:103
% Happens(move(Lisa,Newspaper,LivingRoom,Box),0).
axiom(happens(move(lisa, newspaper, livingRoom, box), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:104
% Happens(move(Lisa,Box,LivingRoom,Lisa),1).
axiom(happens(move(lisa, box, livingRoom, lisa), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:105
% Happens(move(Lisa,Lisa,LivingRoom,Kitchen),2).
axiom(happens(move(lisa, lisa, livingRoom, kitchen), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:106
% Happens(move(Lisa,Box,Lisa,Kitchen),3).
axiom(happens(move(lisa, box, lisa, kitchen), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:107
% Happens(move(Lisa,Lisa,Kitchen,LivingRoom),4).
axiom(happens(move(lisa, lisa, kitchen, livingRoom), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:109
%; Psi
%; RS1
% [object,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:112
% !HoldsAt(directlyIn(object,object),time).
 %  not(holds_at(directlyIn(Object,Object),Time)).
axiom(not(holds_at(directlyIn(DirectlyIn_Param, DirectlyIn_Param), Time2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:114
%; RS2
% [object1,object2,time]
% HoldsAt(directlyIn(object1,object2),time) ->% 
% !HoldsAt(directlyIn(object2,object1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:117
axiom(not(holds_at(directlyIn(Object2, Object1), Time)),
    [holds_at(directlyIn(Object1, Object2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:119
%; RS3
% [object1,object2,object3,time]
% HoldsAt(directlyIn(object1,object2),time) &% 
% HoldsAt(directlyIn(object2,object3),time) ->% 
% !HoldsAt(directlyIn(object1,object3),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:123
axiom(not(holds_at(directlyIn(Object1, Object3), Time)),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      holds_at(directlyIn(Object2, Object3), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:125
%; RS4
% [object,object1,object2,time]
% HoldsAt(directlyIn(object,object1),time) &% 
% HoldsAt(directlyIn(object,object2),time) ->% 
% object1=object2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:129
axiom(Object1=Object2,
   
    [ holds_at(directlyIn(Object, Object1), Time),
      holds_at(directlyIn(Object, Object2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:131
%; RS7
% [object,room,time]
% HoldsAt(directlyIn(object,room),time) ->% 
% HoldsAt(inRoom(object,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:134
axiom(holds_at(inRoom(Object, Room), Time),
    [holds_at(directlyIn(Object, Room), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:136
%; RS8
% [object1,object2,room,time]
% HoldsAt(directlyIn(object1,object2),time) &% 
% HoldsAt(inRoom(object2,room),time) ->% 
% HoldsAt(inRoom(object1,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:140
axiom(holds_at(inRoom(Object1, Room), Time),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      holds_at(inRoom(Object2, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:142
%; RS9
% [object,room1,room2,time]
% HoldsAt(inRoom(object,room1),time) &% 
% HoldsAt(inRoom(object,room2),time) ->% 
% room1=room2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:146
axiom(Room1=Room2,
   
    [ holds_at(inRoom(Object, Room1), Time),
      holds_at(inRoom(Object, Room2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:148
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:150
% HoldsAt(directlyIn(Lisa,LivingRoom),0).
axiom(initially(directlyIn(lisa, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:151
% HoldsAt(directlyIn(Newspaper,LivingRoom),0).
axiom(initially(directlyIn(newspaper, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:152
% HoldsAt(directlyIn(Box,LivingRoom),0).
axiom(initially(directlyIn(box, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:154
%; added:                                                 
% [room1,room2,time]
 % !HoldsAt(inRoom(room1,room2),time).
 %  not(holds_at(inRoom(Room1,Room2),Time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:155
axiom(not(holds_at(inRoom(InRoom_Param, InRoom_Ret), Time3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:156
% [room,object,time]
 % !HoldsAt(directlyIn(room,object),time).
 %  not(holds_at(directlyIn(Room,Object),Time)).
axiom(not(holds_at(directlyIn(DirectlyIn_Param, DirectlyIn_Ret), Time3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:158
%; entailed:
%; HoldsAt(directlyIn(Lisa,LivingRoom),5).
%; HoldsAt(directlyIn(Box,Kitchen),5).
%; HoldsAt(inRoom(Newspaper,Kitchen),5).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:163
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:164
==> completion(happens).

% range time 0 5
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:166
==> range(time,0,5).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/TestBoxRoom.e:167
==> range(offset,1,1).
%; End of file.
