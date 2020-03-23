:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
% Mon, 23 Mar 2020 02:29:15 GMT
% From ../ectest/TestBoxRoom.e.pl:4
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Story1.e',47).

 /*  loading(load_e_pl,
   	'/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e').
 */
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

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:23
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',24).
% include foundations/Root.e
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',24).
:- load_e('foundations/Root.e', include).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',24).
:- if(false).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',24).
:- endif.

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:24
% include foundations/EC.e
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',24).
:- load_e('foundations/EC.e', include).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',24).
:- if(false).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',24).
:- endif.

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:26
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',27).
% sort object
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',27).
==> sort(object).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:27
% sort agent: object
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',27).
==> subsort(agent,object).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:28
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',29).
% sort physobj: object
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',29).
==> subsort(physobj,object).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:29
% sort room: object
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',29).
==> subsort(room,object).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:31
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',32).
% fluent directlyIn(object,object)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',32).
fluent(directlyIn(object,object)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',32).
==> mpred_prop(directlyIn(object,object),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',32).
==> meta_argtypes(directlyIn(object,object)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:32
% fluent inRoom(object,room)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',32).
fluent(inRoom(object,room)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',32).
==> mpred_prop(inRoom(object,room),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',32).
==> meta_argtypes(inRoom(object,room)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:33
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',34).
% noninertial inRoom
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',34).
==> noninertial(inRoom).
%;; executable(move(agent,object,object,object))

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:37
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',38).
% agent Lisa
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',38).
==> t(agent,lisa).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:38
% physobj Box, Newspaper
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',38).
==> t(physobj,box).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',38).
==> t(physobj,newspaper).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:39
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',40).
% room Kitchen, LivingRoom
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',40).
==> t(room,kitchen).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',40).
==> t(room,livingRoom).
%; Sigma
%; RS10
% [agent,physobj1,physobj2,room,time]
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:45
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',46).
% HoldsAt(directlyIn(agent,room),time) &
% HoldsAt(directlyIn(physobj1,room),time) &
% HoldsAt(inRoom(physobj2,room),time) ->
% Initiates(move(agent,physobj1,room,physobj2),directlyIn(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:48
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',46).

 /*  [holds_at(directlyIn(Agent, Room), Time), holds_at(directlyIn(Physobj1, Room), Time), holds_at(inRoom(Physobj2, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(move(Agent, Physobj1, Room, Physobj2),
                    directlyIn(Physobj1, Physobj2),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',46).
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
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:55
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',52).

 /*  [holds_at(directlyIn(Agent, Room), Time), holds_at(directlyIn(Physobj1, Room), Time), holds_at(inRoom(Physobj2, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          terminates(move(Agent, Physobj1, Room, Physobj2),
                     directlyIn(Physobj1, Room),
                     Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',52).
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
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:60
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',59).

 /*  [holds_at(directlyIn(Agent, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(move(Agent, Physobj1, Physobj2, Room),
                    directlyIn(Physobj1, Room),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',59).
axiom(initiates(move(Agent, Physobj1, Physobj2, Room), directlyIn(Physobj1, Room), Time),
    [holds_at(directlyIn(Agent, Room), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:62
%; RS13
% [agent,physobj1,physobj2,room,time]
% HoldsAt(directlyIn(agent,room),time) ->
% Terminates(move(agent,physobj1,physobj2,room),directlyIn(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:65
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',64).

 /*  [holds_at(directlyIn(Agent, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          terminates(move(Agent, Physobj1, Physobj2, Room),
                     directlyIn(Physobj1, Physobj2),
                     Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',64).
axiom(terminates(move(Agent, Physobj1, Physobj2, Room), directlyIn(Physobj1, Physobj2), Time),
    [holds_at(directlyIn(Agent, Room), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:67
%; RS14
% [agent,room1,room2,time]
% HoldsAt(directlyIn(agent,room1),time) ->
% Initiates(move(agent,agent,room1,room2),directlyIn(agent,room2),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:70
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',69).

 /*  [holds_at(directlyIn(Agent, Room1), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(move(Agent, Agent, Room1, Room2),
                    directlyIn(Agent, Room2),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',69).
axiom(initiates(move(Agent, Agent, Room1, Room2), directlyIn(Agent, Room2), Time),
    [holds_at(directlyIn(Agent, Room1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:72
%; RS15
% [agent,room1,room2,time]
% HoldsAt(directlyIn(agent,room1),time) ->
% Terminates(move(agent,agent,room1,room2),directlyIn(agent,room1),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:75
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',74).

 /*  [holds_at(directlyIn(Agent, Room1), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          terminates(move(Agent, Agent, Room1, Room2),
                     directlyIn(Agent, Room1),
                     Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',74).
axiom(terminates(move(Agent, Agent, Room1, Room2), directlyIn(Agent, Room1), Time),
    [holds_at(directlyIn(Agent, Room1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:77
%; RS16
% [agent,physobj,room,time]
% HoldsAt(directlyIn(agent,room),time) &
% HoldsAt(directlyIn(physobj,room),time) ->
% Initiates(move(agent,physobj,room,agent),directlyIn(physobj,agent),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:81
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',79).

 /*  [holds_at(directlyIn(Agent, Room), Time), holds_at(directlyIn(Physobj, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(move(Agent, Physobj, Room, Agent),
                    directlyIn(Physobj, Agent),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',79).
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
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:87
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',85).

 /*  [holds_at(directlyIn(Agent, Room), Time), holds_at(directlyIn(Physobj, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          terminates(move(Agent, Physobj, Room, Agent),
                     directlyIn(Physobj, Room),
                     Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',85).
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
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:93
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',91).

 /*  [holds_at(directlyIn(Physobj, Agent), Time), holds_at(directlyIn(Agent, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(move(Agent, Physobj, Agent, Room),
                    directlyIn(Physobj, Room),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',91).
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
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:99
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',97).

 /*  [holds_at(directlyIn(Physobj, Agent), Time), holds_at(directlyIn(Agent, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          terminates(move(Agent, Physobj, Agent, Room),
                     directlyIn(Physobj, Agent),
                     Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',97).
axiom(terminates(move(Agent, Physobj, Agent, Room), directlyIn(Physobj, Agent), Time),
   
    [ holds_at(directlyIn(Physobj, Agent), Time),
      holds_at(directlyIn(Agent, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:101
%; Delta


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:103
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',104).
% Happens(move(Lisa,Newspaper,LivingRoom,Box),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',104).

 /*  [is_time(t)] ->
       ta(0, tvs1=[0], tvs2=[t], happens(move(lisa, newspaper, livingRoom, box), t)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',104).
axiom(happens(move(lisa, newspaper, livingRoom, box), t),
    [is_time(t)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:104
% Happens(move(Lisa,Box,LivingRoom,Lisa),1).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',104).

 /*  [is_time(now), b(t, now), ignore(t+1==now)] ->
       ta(1, tvs1=[1], tvs2=[now, t], happens(move(lisa, box, livingRoom, lisa), now)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',104).
axiom(happens(move(lisa, box, livingRoom, lisa), now),
    [is_time(now), b(t, now)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:105
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',106).
% Happens(move(Lisa,Lisa,LivingRoom,Kitchen),2).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',106).

 /*  [is_time(t2), b(t, t2), ignore(t+2==t2)] ->
       ta(2, tvs1=[2], tvs2=[t, t2], happens(move(lisa, lisa, livingRoom, kitchen), t2)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',106).
axiom(happens(move(lisa, lisa, livingRoom, kitchen), t2),
    [is_time(t2), b(t, t2)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:106
% Happens(move(Lisa,Box,Lisa,Kitchen),3).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',106).

 /*  [is_time(t3), b(t, t3), ignore(t+3==t3)] ->
       ta(3, tvs1=[3], tvs2=[t, t3], happens(move(lisa, box, lisa, kitchen), t3)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',106).
axiom(happens(move(lisa, box, lisa, kitchen), t3),
    [is_time(t3), b(t, t3)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:107
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',108).
% Happens(move(Lisa,Lisa,Kitchen,LivingRoom),4).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',108).

 /*  [is_time(t4), b(t, t4), ignore(t+4==t4)] ->
       ta(4, tvs1=[4], tvs2=[t, t4], happens(move(lisa, lisa, kitchen, livingRoom), t4)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',108).
axiom(happens(move(lisa, lisa, kitchen, livingRoom), t4),
    [is_time(t4), b(t, t4)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:109
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',110).
%; Psi
%; RS1
% [object,time]
 
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:112
% !HoldsAt(directlyIn(object,object),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',112).
holds_at(neg(directlyIn(Object,Object)),Time).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:114
%; RS2
% [object1,object2,time]
% HoldsAt(directlyIn(object1,object2),time) ->
% !HoldsAt(directlyIn(object2,object1),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:117
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',116).

 /*  holds_at(directlyIn(Object1, Object2), Time) ->
       holds_at(neg(directlyIn(Object2, Object1)), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',116).

 /*  holds_at(neg(directlyIn(Object2, Object1)), Time) :-
       holds_at(directlyIn(Object1, Object2), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',116).

 /*  [holds_at(directlyIn(Object1, Object2), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object2, Object1)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',116).
axiom(holds_at(neg(directlyIn(Object2, Object1)), Time),
    [holds_at(directlyIn(Object1, Object2), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',116).

 /*  not(holds_at(directlyIn(Object1, Object2), Time)) :-
       not(holds_at(neg(directlyIn(Object2, Object1)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',116).

 /*  [holds_at(directlyIn(Object2, Object1), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object1, Object2)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',116).
axiom(holds_at(neg(directlyIn(Object1, Object2)), Time),
    [holds_at(directlyIn(Object2, Object1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:119
%; RS3
% [object1,object2,object3,time]
% HoldsAt(directlyIn(object1,object2),time) &
% HoldsAt(directlyIn(object2,object3),time) ->
% !HoldsAt(directlyIn(object1,object3),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:123
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',121).

 /*  holds_at(directlyIn(Object1, Object2), Time), holds_at(directlyIn(Object2, Object3), Time) ->
       holds_at(neg(directlyIn(Object1, Object3)), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',121).

 /*  holds_at(neg(directlyIn(Object1, Object3)), Time) :-
       holds_at(directlyIn(Object1, Object2), Time),
       holds_at(directlyIn(Object2, Object3), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',121).

 /*  [holds_at(directlyIn(Object1, Object2), Time), holds_at(directlyIn(Object2, Object3), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object1, Object3)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',121).
axiom(holds_at(neg(directlyIn(Object1, Object3)), Time),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      holds_at(directlyIn(Object2, Object3), Time)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',121).

 /*  not(holds_at(directlyIn(Object1, Object2), Time)) :-
       holds_at(directlyIn(Object2, Object3), Time),
       not(holds_at(neg(directlyIn(Object1, Object3)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',121).

 /*  [holds_at(directlyIn(Object2, Object3), Time), holds_at(directlyIn(Object1, Object3), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object1, Object2)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',121).
axiom(holds_at(neg(directlyIn(Object1, Object2)), Time),
   
    [ holds_at(directlyIn(Object2, Object3), Time),
      holds_at(directlyIn(Object1, Object3), Time)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',121).

 /*  not(holds_at(directlyIn(Object2, Object3), Time)) :-
       holds_at(directlyIn(Object1, Object2), Time),
       not(holds_at(neg(directlyIn(Object1, Object3)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',121).

 /*  [holds_at(directlyIn(Object1, Object2), Time), holds_at(directlyIn(Object1, Object3), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object2, Object3)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',121).
axiom(holds_at(neg(directlyIn(Object2, Object3)), Time),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      holds_at(directlyIn(Object1, Object3), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:125
%; RS4
% [object,object1,object2,time]
% HoldsAt(directlyIn(object,object1),time) &
% HoldsAt(directlyIn(object,object2),time) ->
% object1=object2.
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:129
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',127).

 /*  holds_at(directlyIn(Object, Object1), Time), holds_at(directlyIn(Object, Object2), Time) ->
       equals(Object1, Object2).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',127).

 /*  not(holds_at(directlyIn(Object, Object1), Time)) :-
       holds_at(directlyIn(Object, Object2), Time),
       not(equals(Object1, Object2)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',127).

 /*  [holds_at(directlyIn(Object, Object2), Time), not(equals(Object1, Object2))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object, Object1)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',127).
axiom(holds_at(neg(directlyIn(Object, Object1)), Time),
   
    [ holds_at(directlyIn(Object, Object2), Time),
      not(equals(Object1, Object2))
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',127).

 /*  not(holds_at(directlyIn(Object, Object2), Time)) :-
       holds_at(directlyIn(Object, Object1), Time),
       not(equals(Object1, Object2)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',127).

 /*  [holds_at(directlyIn(Object, Object1), Time), not(equals(Object1, Object2))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object, Object2)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',127).
axiom(holds_at(neg(directlyIn(Object, Object2)), Time),
   
    [ holds_at(directlyIn(Object, Object1), Time),
      not(equals(Object2, Object1))
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:131
%; RS7
% [object,room,time]
% HoldsAt(directlyIn(object,room),time) ->
% HoldsAt(inRoom(object,room),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:134
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',133).

 /*  holds_at(directlyIn(Object, Room), Time) ->
       holds_at(inRoom(Object, Room), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',133).

 /*  holds_at(inRoom(Object, Room), Time) :-
       holds_at(directlyIn(Object, Room), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',133).

 /*  [holds_at(directlyIn(Object, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(inRoom(Object, Room), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',133).
axiom(holds_at(inRoom(Object, Room), Time),
    [holds_at(directlyIn(Object, Room), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',133).

 /*  not(holds_at(directlyIn(Object, Room), Time)) :-
       not(holds_at(inRoom(Object, Room), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',133).

 /*  [holds_at(neg(inRoom(Object, Room)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object, Room)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',133).
axiom(holds_at(neg(directlyIn(Object, Room)), Time),
    [holds_at(neg(inRoom(Object, Room)), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:136
%; RS8
% [object1,object2,room,time]
% HoldsAt(directlyIn(object1,object2),time) &
% HoldsAt(inRoom(object2,room),time) ->
% HoldsAt(inRoom(object1,room),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:140
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',138).

 /*  holds_at(directlyIn(Object1, Object2), Time), holds_at(inRoom(Object2, Room), Time) ->
       holds_at(inRoom(Object1, Room), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',138).

 /*  holds_at(inRoom(Object1, Room), Time) :-
       holds_at(directlyIn(Object1, Object2), Time),
       holds_at(inRoom(Object2, Room), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',138).

 /*  [holds_at(directlyIn(Object1, Object2), Time), holds_at(inRoom(Object2, Room), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(inRoom(Object1, Room), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',138).
axiom(holds_at(inRoom(Object1, Room), Time),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      holds_at(inRoom(Object2, Room), Time)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',138).

 /*  not(holds_at(directlyIn(Object1, Object2), Time)) :-
       holds_at(inRoom(Object2, Room), Time),
       not(holds_at(inRoom(Object1, Room), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',138).

 /*  [holds_at(inRoom(Object2, Room), Time), holds_at(neg(inRoom(Object1, Room)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(directlyIn(Object1, Object2)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',138).
axiom(holds_at(neg(directlyIn(Object1, Object2)), Time),
   
    [ holds_at(inRoom(Object2, Room), Time),
      holds_at(neg(inRoom(Object1, Room)), Time)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',138).

 /*  not(holds_at(inRoom(Object2, Room), Time)) :-
       holds_at(directlyIn(Object1, Object2), Time),
       not(holds_at(inRoom(Object1, Room), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',138).

 /*  [holds_at(directlyIn(Object1, Object2), Time), holds_at(neg(inRoom(Object1, Room)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(inRoom(Object2, Room)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',138).
axiom(holds_at(neg(inRoom(Object2, Room)), Time),
   
    [ holds_at(directlyIn(Object1, Object2), Time),
      holds_at(neg(inRoom(Object1, Room)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:142
%; RS9
% [object,room1,room2,time]
% HoldsAt(inRoom(object,room1),time) &
% HoldsAt(inRoom(object,room2),time) ->
% room1=room2.
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:146
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',144).

 /*  holds_at(inRoom(Object, Room1), Time), holds_at(inRoom(Object, Room2), Time) ->
       equals(Room1, Room2).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',144).

 /*  not(holds_at(inRoom(Object, Room1), Time)) :-
       holds_at(inRoom(Object, Room2), Time),
       not(equals(Room1, Room2)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',144).

 /*  [holds_at(inRoom(Object, Room2), Time), not(equals(Room1, Room2))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(inRoom(Object, Room1)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',144).
axiom(holds_at(neg(inRoom(Object, Room1)), Time),
   
    [ holds_at(inRoom(Object, Room2), Time),
      not(equals(Room1, Room2))
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',144).

 /*  not(holds_at(inRoom(Object, Room2), Time)) :-
       holds_at(inRoom(Object, Room1), Time),
       not(equals(Room1, Room2)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',144).

 /*  [holds_at(inRoom(Object, Room1), Time), not(equals(Room1, Room2))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(neg(inRoom(Object, Room2)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',144).
axiom(holds_at(neg(inRoom(Object, Room2)), Time),
   
    [ holds_at(inRoom(Object, Room1), Time),
      not(equals(Room2, Room1))
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:148
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:150
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',151).
% HoldsAt(directlyIn(Lisa,LivingRoom),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',151).

 /*  [] ->
       ta(Ta_Param, tvs1=[], tvs2=[], initially(directlyIn(lisa, livingRoom))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',151).
axiom(initially(directlyIn(lisa, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:151
% HoldsAt(directlyIn(Newspaper,LivingRoom),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',151).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(directlyIn(newspaper, livingRoom))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',151).
axiom(initially(directlyIn(newspaper, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:152
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',153).
% HoldsAt(directlyIn(Box,LivingRoom),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',153).

 /*  [] ->
       ta(Ta_Param, tvs1=[], tvs2=[], initially(directlyIn(box, livingRoom))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',153).
axiom(initially(directlyIn(box, livingRoom)),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:154
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',155).
%; added:                                                 
%; DMILES REMOVED [room1,room2,time] !HoldsAt(inRoom(room1,room2),time).
%; DMILES REMOVED [room,object,time] !HoldsAt(directlyIn(room,object),time).
%; entailed:
%; HoldsAt(directlyIn(Lisa,LivingRoom),5).
%; HoldsAt(directlyIn(Box,Kitchen),5).
%; HoldsAt(inRoom(Newspaper,Kitchen),5).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:163
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',164).
% completion Happens
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',164).
==> completion(happens).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:165
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',166).
% range time 0 5
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',166).
==> range(time,0,5).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e:166
% range offset 1 1
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/TestBoxRoom.e',166).
==> range(offset,1,1).
%; End of file.
