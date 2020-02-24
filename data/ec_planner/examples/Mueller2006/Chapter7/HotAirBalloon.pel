:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter7/HotAirBalloon.e').
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
%; @article{MillerShanahan:1999,
%;   author = "Rob Miller and Murray Shanahan",
%;   year = "1999",
%;   title = "The event calculus in classical logic---\uppercase{A}lternative axiomatisations",
%;   journal = "Link{\"{o}}ping Electronic Articles in Computer and Information Science",
%;   volume = "4",
%;   number = "016",
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

% option encoding 3
:- set_ec_option(encoding, 3).

% option trajectory on
:- set_ec_option(trajectory, on).

% load foundations/Root.e

% load foundations/EC.e

% sort balloon
==> sort(balloon).

% sort agent
==> sort(agent).

% sort height: integer
==> subsort(height,integer).

% agent Nathan
==> t(agent,nathan).

% balloon Balloon
==> t(balloon,balloon).

% fluent HeaterOn(balloon)
 %  fluent(heaterOn(balloon)).
==> mpred_prop(heaterOn(balloon),fluent).
==> meta_argtypes(heaterOn(balloon)).

% fluent Height(balloon,height)
 %  fluent(height(balloon,height)).
==> mpred_prop(height(balloon,height),fluent).
==> meta_argtypes(height(balloon,height)).

% noninertial Height
==> noninertial(height).

% event TurnOnHeater(agent,balloon)
 %  event(turnOnHeater(agent,balloon)).
==> mpred_prop(turnOnHeater(agent,balloon),event).
==> meta_argtypes(turnOnHeater(agent,balloon)).

% event TurnOffHeater(agent,balloon)
 %  event(turnOffHeater(agent,balloon)).
==> mpred_prop(turnOffHeater(agent,balloon),event).
==> meta_argtypes(turnOffHeater(agent,balloon)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:48
%; Sigma
% [agent,balloon,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:51
% Initiates(TurnOnHeater(agent,balloon),HeaterOn(balloon),time).
axiom(initiates(turnOnHeater(Agent, Balloon), heaterOn(Balloon), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:53
% [agent,balloon,time]
% Terminates(TurnOffHeater(agent,balloon),HeaterOn(balloon),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:54
axiom(terminates(turnOffHeater(Agent, Balloon), heaterOn(Balloon), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:56
%; Delta

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:58
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:58
% Happens(TurnOnHeater(Nathan,Balloon),0).
axiom(happens(turnOnHeater(nathan, balloon), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:59
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:59
% Happens(TurnOffHeater(Nathan,Balloon),2).
axiom(happens(turnOffHeater(nathan, balloon), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:61
%; Psi
% [balloon,height1,height2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:64
% HoldsAt(Height(balloon,height1),time) &
% HoldsAt(Height(balloon,height2),time) ->
% height1=height2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:66
axiom(Height1=Height2,
   
    [ holds_at(height(Balloon, Height1), Time),
      holds_at(height(Balloon, Height2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:68
%; Pi
% [balloon,height1,height2,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:71
% HoldsAt(Height(balloon,height1),time) &
% height2 = (height1 + offset) ->
% Trajectory(HeaterOn(balloon),time,Height(balloon,height2),offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:73
axiom(trajectory(heaterOn(Balloon), Time, height(Balloon, Height2), Offset),
   
    [ holds_at(height(Balloon, Height1), Time),
      equals(Height2, Height1+Offset)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:75
% [balloon,height1,height2,offset,time]
% HoldsAt(Height(balloon,height1),time) &
% height2 = (height1 - offset) ->
% AntiTrajectory(HeaterOn(balloon),time,Height(balloon,height2),offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:78
axiom(antiTrajectory(heaterOn(Balloon), Time, height(Balloon, Height2), Offset),
   
    [ holds_at(height(Balloon, Height1), Time),
      equals(Height2, Height1-Offset)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:80
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:82
% HoldsAt(Height(Balloon,0),0).
axiom(initially(height(balloon, 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:84
%; added:


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:85
% !HoldsAt(HeaterOn(Balloon),0).
 %  not(initially(heaterOn(balloon))).
axiom(not(initially(heaterOn(balloon))),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:87
% completion Delta Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:88
==> completion(delta).
==> completion(happens).

% range time 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:90
==> range(time,0,3).

% range height 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:91
==> range(height,0,2).

% range offset 1 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter7/HotAirBalloon.e:92
==> range(offset,1,2).
%; End of file.
