:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'foundations/ECTraj.e').
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
%; @incollection{MillerShanahan:2002,
%;   author = "Rob Miller and Murray Shanahan",
%;   year = "2002",
%;   title = "Some alternative formulations of the event calculus",
%;   editor = "Antonis C. Kakas and Fariba Sadri",
%;   booktitle = "Computational Logic: Logic Programming and Beyond: Essays in Honour of \uppercase{R}obert \uppercase{A}. \uppercase{K}owalski, Part \uppercase{II}",
%;   series = "Lecture Notes in Computer Science",
%;   volume = "2408",
%;   pages = "452--490",
%;   address = "Berlin",
%;   publisher = "Springer",
%; }
%;

% predicate Clipped(time,fluent,time)
 %  predicate(clipped(time,fluent,time)).
==> mpred_prop(clipped(time,fluent,time),predicate).
==> meta_argtypes(clipped(time,fluent,time)).

% predicate Declipped(time,fluent,time)
 %  predicate(declipped(time,fluent,time)).
==> mpred_prop(declipped(time,fluent,time),predicate).
==> meta_argtypes(declipped(time,fluent,time)).

% predicate Trajectory(fluent,time,fluent,offset)
 %  predicate(trajectory(fluent,time,fluent,offset)).
==> mpred_prop(trajectory(fluent,time,fluent,offset),predicate).
==> meta_argtypes(trajectory(fluent,time,fluent,offset)).

% predicate AntiTrajectory(fluent,time,fluent,offset)
 %  predicate(antiTrajectory(fluent,time,fluent,offset)).
==> mpred_prop(antiTrajectory(fluent,time,fluent,offset),predicate).
==> meta_argtypes(antiTrajectory(fluent,time,fluent,offset)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECTraj.e:30
% [event,fluent,fluent2,offset,time]
% Happens(event,time) &
% Initiates(event,fluent,time) &
% 0 < offset &
% Trajectory(fluent,time,fluent2,offset) &
% !Clipped(time,fluent,time+offset) ->
% HoldsAt(fluent2,time+offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECTraj.e:36
axiom(holds_at(Fluent2, Time),
   
    [ happens(Event, Time),
      initiates(Event, Fluent, Time),
      comparison(0, 0, <),
      trajectory(Fluent, Time, Fluent2, 0),
      not(clipped(Time, Fluent, Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECTraj.e:38
% [event,fluent,fluent2,offset,time]
% Happens(event,time) &
% Terminates(event,fluent,time) &
% 0 < offset &
% AntiTrajectory(fluent,time,fluent2,offset) &
% !Declipped(time,fluent,time+offset) ->
% HoldsAt(fluent2,time+offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECTraj.e:44
axiom(holds_at(Fluent2, Time),
   
    [ happens(Event, Time),
      terminates(Event, Fluent, Time),
      comparison(0, 0, <),
      antiTrajectory(Fluent, Time, Fluent2, 0),
      not(declipped(Time, Fluent, Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECTraj.e:46
%; End of file.
