:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter8/MovingRobot.e').
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
%; @inproceedings{Shanahan:1996,
%;   author = "Murray Shanahan",
%;   year = "1996",
%;   title = "Robotics and the common sense informatic situation",
%;   editor = "Wolfgang Wahlster",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{T}welfth \uppercase{E}uropean \uppercase{C}onference on \uppercase{A}rtificial \uppercase{I}ntelligence",
%;   pages = "684--688",
%;   address = "Chichester, UK",
%;   publisher = "John Wiley",
%; }
%;
%; @book{Mueller:2006,
%;   author = "Erik T. Mueller",
%;   year = "2006",
%;   title = "Commonsense Reasoning",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann/Elsevier",
%; }
%;

% option renaming off
:- set_ec_option(renaming, off).

% load foundations/Root.e

% load foundations/EC.e

% sort coord: integer
==> subsort(coord,integer).

% sort direction: integer
==> subsort(direction,integer).
%; 0 -> 0, 1 -> 90, 2 -> 180, 3 -> 370

% sort robot
==> sort(robot).

% robot Robot1
==> t(robot,robot1).

% function Sin(direction): coord
 %  functional_predicate(sin(direction,coord)).
==> mpred_prop(sin(direction,coord),functional_predicate).
==> meta_argtypes(sin(direction,coord)).
resultIsa(sin,coord).

% function Cos(direction): coord
 %  functional_predicate(cos(direction,coord)).
==> mpred_prop(cos(direction,coord),functional_predicate).
==> meta_argtypes(cos(direction,coord)).
resultIsa(cos,coord).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:47
% Sin(0)=0.
sin(0,0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:48
% Sin(1)=1.
sin(1,1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:49
% Sin(2)=2.
sin(2,2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:50
% Sin(3)=3.
sin(3,3).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:52
% Cos(0)=1.
cos(0,1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:53
% Cos(1)=2.
cos(1,2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:54
% Cos(2)=3.
cos(2,3).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:55
% Cos(3)=4.
cos(3,4).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:57
% fluent Direction(robot,direction)
 %  fluent(direction(robot,direction)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:58
==> mpred_prop(direction(robot,direction),fluent).
==> meta_argtypes(direction(robot,direction)).

% fluent Location(robot,coord,coord)
 %  fluent(location(robot,coord,coord)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:59
==> mpred_prop(location(robot,coord,coord),fluent).
==> meta_argtypes(location(robot,coord,coord)).

% event MoveLeftWheel(robot)
 %  event(moveLeftWheel(robot)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:61
==> mpred_prop(moveLeftWheel(robot),event).
==> meta_argtypes(moveLeftWheel(robot)).

% event MoveRightWheel(robot)
 %  event(moveRightWheel(robot)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:62
==> mpred_prop(moveRightWheel(robot),event).
==> meta_argtypes(moveRightWheel(robot)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:63
%; Sigma
% [robot,direction1,direction2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:66
% !Happens(MoveRightWheel(robot),time) &
% HoldsAt(Direction(robot,direction1),time) &
% direction2 = (direction1-1)->
% Initiates(MoveLeftWheel(robot),Direction(robot,direction2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:69
axiom(initiates(moveLeftWheel(Robot), direction(Robot, Direction2), Time),
   
    [ not(happens(moveRightWheel(Robot), Time)),
      holds_at(direction(Robot, Direction1), Time),
      equals(Direction2, Direction1-1)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:71
% [robot,direction,time]
% !Happens(MoveRightWheel(robot),time) &
% HoldsAt(Direction(robot,direction),time) ->
% Terminates(MoveLeftWheel(robot),Direction(robot,direction),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:74
axiom(terminates(moveLeftWheel(Robot), direction(Robot, Direction), Time),
   
    [ not(happens(moveRightWheel(Robot), Time)),
      holds_at(direction(Robot, Direction), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:76
% [robot,direction1,direction2,time]
% !Happens(MoveLeftWheel(robot),time) &
% HoldsAt(Direction(robot,direction1),time) &
% direction2 = (direction1+1)->
% Initiates(MoveRightWheel(robot),Direction(robot,direction2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:80
axiom(initiates(moveRightWheel(Robot), direction(Robot, Direction2), Time),
   
    [ not(happens(moveLeftWheel(Robot), Time)),
      holds_at(direction(Robot, Direction1), Time),
      equals(Direction2, Direction1+1)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:82
% [robot,direction,time]
% !Happens(MoveLeftWheel(robot),time) &
% HoldsAt(Direction(robot,direction),time) ->
% Terminates(MoveRightWheel(robot),Direction(robot,direction),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:85
axiom(terminates(moveRightWheel(Robot), direction(Robot, Direction), Time),
   
    [ not(happens(moveLeftWheel(Robot), Time)),
      holds_at(direction(Robot, Direction), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:87
% [robot,direction,coord1,coord2,coord3,coord4,time]
% Happens(MoveLeftWheel(robot),time) &
% HoldsAt(Location(robot,coord1,coord2),time) &
% HoldsAt(Direction(robot,direction),time) &
% coord3 = coord1+Cos(direction) &
% coord4 = coord2+Sin(direction) ->
% Initiates(MoveRightWheel(robot),
%           Location(robot,coord3,coord4),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:95
axiom(initiates(moveRightWheel(Robot), location(Robot, Coord3, Coord4), Time),
   
    [ happens(moveLeftWheel(Robot), Time),
      holds_at(location(Robot, Coord1, Coord2), Time),
      holds_at(direction(Robot, Direction), Time),
      equals(Coord3, Coord1+cos(Direction)),
      equals(Coord4, Coord2+sin(Direction))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:97
% [robot,coord1,coord2,time]
% Happens(MoveLeftWheel(robot),time) &
% HoldsAt(Location(robot,coord1,coord2),time) ->
%; FIX: Direction not needed!!
%; HoldsAt(Direction(robot,direction),time) ->
% Terminates(MoveRightWheel(robot),Location(robot,coord1,coord2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:102
axiom(terminates(moveRightWheel(Robot), location(Robot, Coord1, Coord2), Time),
   
    [ happens(moveLeftWheel(Robot), Time),
      holds_at(location(Robot, Coord1, Coord2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:104
%; Delta


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:106
% Happens(MoveRightWheel(Robot1),0).
axiom(happens(moveRightWheel(robot1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:107
% Happens(MoveLeftWheel(Robot1),1).
axiom(happens(moveLeftWheel(robot1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:108
% Happens(MoveRightWheel(Robot1),1).
axiom(happens(moveRightWheel(robot1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:110
%; Psi
% [robot,coord1,coord2,coord3,coord4,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:114
% HoldsAt(Location(robot,coord1,coord2),time) &
% HoldsAt(Location(robot,coord3,coord4),time) ->
% coord1=coord3 &
% coord2=coord4.

 /*   if((holds_at(location(Robot, Coord1, Coord2), Time), holds_at(location(Robot, Coord3, Coord4), Time)),
          (Coord1=Coord3, Coord2=Coord4)).
 */

 /*  not(holds_at(location(Location_Param, Equals_Param, Equals_Param9), Time6)) :-
       holds_at(location(Location_Param,
                         Equals_Ret,
                         Location_Ret),
                Time6),
       (   not(equals(Equals_Param, Equals_Ret))
       ;   not(equals(Equals_Param9, Location_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:117
axiom(not(holds_at(location(Location_Param, Equals_Param, Equals_Param9), Time6)),
   
    [ not(equals(Equals_Param, Equals_Ret)),
      holds_at(location(Location_Param,
                        Equals_Ret,
                        Location_Ret),
               Time6)
    ]).
axiom(not(holds_at(location(Location_Param, Equals_Param, Equals_Param9), Time6)),
   
    [ not(equals(Equals_Param9, Location_Ret)),
      holds_at(location(Location_Param,
                        Equals_Ret,
                        Location_Ret),
               Time6)
    ]).

 /*  not(holds_at(location(Location_Param13, Equals_Ret17, Location_Ret16), Time12)) :-
       holds_at(location(Location_Param13,
                         Equals_Param14,
                         Equals_Param15),
                Time12),
       (   not(equals(Equals_Param14, Equals_Ret17))
       ;   not(equals(Equals_Param15, Location_Ret16))
       ).
 */
axiom(not(holds_at(location(Location_Param13, Equals_Ret17, Location_Ret16), Time12)),
   
    [ not(equals(Equals_Param14, Equals_Ret17)),
      holds_at(location(Location_Param13,
                        Equals_Param14,
                        Equals_Param15),
               Time12)
    ]).
axiom(not(holds_at(location(Location_Param13, Equals_Ret17, Location_Ret16), Time12)),
   
    [ not(equals(Equals_Param15, Location_Ret16)),
      holds_at(location(Location_Param13,
                        Equals_Param14,
                        Equals_Param15),
               Time12)
    ]).

 /*  equals(Equals_Param19, Equals_Ret21) :-
       holds_at(location(Location_Param20,
                         Equals_Param19,
                         Location_Ret22),
                Time18),
       holds_at(location(Location_Param20,
                         Equals_Ret21,
                         Location_Ret23),
                Time18).
 */
axiom(equals(Equals_Param19, Equals_Ret21),
   
    [ holds_at(location(Location_Param20,
                        Equals_Param19,
                        Location_Ret22),
               Time18),
      holds_at(location(Location_Param20,
                        Equals_Ret21,
                        Location_Ret23),
               Time18)
    ]).

 /*  equals(Equals_Param25, Equals_Ret27) :-
       holds_at(location(Location_Param26, _, Equals_Param25),
                Time24),
       holds_at(location(Location_Param26, _, Equals_Ret27),
                Time24).
 */
axiom(equals(Equals_Param25, Equals_Ret27),
   
    [ holds_at(location(Location_Param26, _, Equals_Param25),
               Time24),
      holds_at(location(Location_Param26, _, Equals_Ret27),
               Time24)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:119
% [robot,direction1,direction2,time]
% HoldsAt(Direction(robot,direction1),time) &
% HoldsAt(Direction(robot,direction2),time) ->
% direction1=direction2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:122
axiom(Direction1=Direction2,
   
    [ holds_at(direction(Robot, Direction1), Time),
      holds_at(direction(Robot, Direction2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:124
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:126
% HoldsAt(Location(Robot1,0,0),0).
axiom(initially(location(robot1, 0, 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:127
% HoldsAt(Direction(Robot1,0),0).
axiom(initially(direction(robot1, 0)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:129
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:130
==> completion(happens).

% range time 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:132
==> range(time,0,3).

% range coord 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:133
==> range(coord,0,3).

% range direction 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:134
==> range(direction,0,3).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/MovingRobot.e:135
==> range(offset,1,1).
%; End of file.
