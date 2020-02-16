:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1999/RussianTurkey.e').
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
%; @book{Sandewall:1994,
%;   author = "Sandewall, Erik",
%;   year = "1994",
%;   title = "Features and Fluents: The Representation of Knowledge about Dynamical Systems",
%;   volume = "I",
%;   address = "Oxford",
%;   publisher = "Oxford University Press",
%; }
%;
%; @incollection{Shanahan:1999,
%;   author = "Shanahan, Murray",
%;   year = "1999",
%;   title = "The Event Calculus explained",
%;   editor = "Michael J. Wooldridge and Manuela M. Veloso",
%;   booktitle = "Artificial Intelligence Today: Recent Trends and Developments",
%;   series = "Lecture Notes in Computer Science",
%;   volume = "1600",
%;   pages = "409--430",
%;   address = "Berlin",
%;   publisher = "Springer",
%; }
%;
%; model finding
%;
%; modifications from Shanahan's formulation:
%; InitiallyP -> HoldsAt
%; added [time] Terminates(Shoot(),Loaded(),time).
%; added !HoldsAt(Loaded(),0) to prune models
%; timestamps
%;

% load foundations/Root.e

% load foundations/EC.e

% event Load()
 %  event(load()).
==> mpred_prop(load(),event).
==> meta_argtypes(load()).

% event Shoot()
 %  event(shoot()).
==> mpred_prop(shoot(),event).
==> meta_argtypes(shoot()).

% event Spin()
 %  event(spin()).
==> mpred_prop(spin(),event).
==> meta_argtypes(spin()).

% fluent Loaded()
 %  fluent(loaded()).
==> mpred_prop(loaded(),fluent).
==> meta_argtypes(loaded()).

% fluent Alive()
 %  fluent(alive()).
==> mpred_prop(alive(),fluent).
==> meta_argtypes(alive()).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:50
% [time]
 % Initiates(Load(),Loaded(),time).
axiom(initiates(load(), loaded(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:51
% [time]
 % HoldsAt(Loaded(),time) -> Terminates(Shoot(),Alive(),time).
axiom(terminates(shoot(), alive(), Time),
    [holds_at(loaded(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:52
% [time]
 % Releases(Spin(),Loaded(),time).
axiom(releases(spin(), loaded(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:53
% [time]
 % Terminates(Shoot(),Loaded(),time).
axiom(terminates(shoot(), loaded(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:55
% HoldsAt(Alive(),0).
axiom(initially(alive()),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:56
% !HoldsAt(Loaded(),0).
 %  not(initially(loaded())).
axiom(not(initially(loaded())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:57
% Happens(Load(),1).
axiom(happens(load(), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:58
% Happens(Spin(),2).
axiom(happens(spin(), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:59
% Happens(Shoot(),3).
axiom(happens(shoot(), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:61
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:62
==> completion(happens).

% range time 0 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:64
==> range(time,0,4).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/RussianTurkey.e:65
==> range(offset,1,1).
%; End of file.
