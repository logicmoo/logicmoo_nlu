:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1997/Supermarket.e').
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
%; \fullciteA[pp. 302--304]{Shanahan:1997}
%;
%; @book{Shanahan:1997,
%;   author = "Murray Shanahan",
%;   year = "1997",
%;   title = "Solving the Frame Problem",
%;   address = "Cambridge, MA",
%;   publisher = "MIT Press",
%; }
%;
%; deduction
%;
%; modifications from Shanahan's formulation:
%; reformulated using the method of \fullciteA[pp. 460--461]{MillerShanahan:2002}
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
%; added:
%; !HoldsAt(Forwards(), 0).
%; !HoldsAt(Backwards(), 0).
%; !HoldsAt(Spinning(), 0).
%;

% load foundations/Root.e

% load foundations/EC.e

% event Push()
 %  event(push()).
==> mpred_prop(push(),event).
==> meta_argtypes(push()).

% event Pull()
 %  event(pull()).
==> mpred_prop(pull(),event).
==> meta_argtypes(pull()).

% fluent Forwards()
 %  fluent(forwards()).
==> mpred_prop(forwards(),fluent).
==> meta_argtypes(forwards()).

% fluent Backwards()
 %  fluent(backwards()).
==> mpred_prop(backwards(),fluent).
==> meta_argtypes(backwards()).

% fluent Spinning()
 %  fluent(spinning()).
==> mpred_prop(spinning(),fluent).
==> meta_argtypes(spinning()).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:53
% [time]
% !Happens(Pull(), time) ->
% Initiates(Push(), Forwards(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:55
axiom(initiates(push(), forwards(), Time),
    [not(happens(pull(), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:57
% [time]
% !Happens(Pull(), time) ->
% Terminates(Push(), Backwards(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:59
axiom(terminates(push(), backwards(), Time),
    [not(happens(pull(), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:61
% [time]
% !Happens(Push(), time) ->
% Initiates(Pull(), Backwards(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:63
axiom(initiates(pull(), backwards(), Time),
    [not(happens(push(), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:65
% [time]
% !Happens(Push(), time) ->
% Terminates(Pull(), Forwards(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:67
axiom(terminates(pull(), forwards(), Time),
    [not(happens(push(), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:69
% [time]
% Happens(Push(), time) ->
% Initiates(Pull(), Spinning(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:71
axiom(requires(push(), Time),
    [initiates(pull(), spinning(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:73
% [time]
% Happens(Push(), time) ->
% Terminates(Pull(), Forwards(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:75
axiom(requires(push(), Time),
    [terminates(pull(), forwards(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:77
% [time]
% Happens(Push(), time) ->
% Terminates(Pull(), Backwards(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:79
axiom(requires(push(), Time),
    [terminates(pull(), backwards(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:81
% [time]
% !Happens(Pull(), time) ->
% Terminates(Push(), Spinning(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:83
axiom(terminates(push(), spinning(), Time),
    [not(happens(pull(), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:85
% [time]
% !Happens(Push(), time) ->
% Terminates(Pull(), Spinning(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:87
axiom(terminates(pull(), spinning(), Time),
    [not(happens(push(), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:89
% !HoldsAt(Forwards(), 0).
 %  not(initially(forwards())).
axiom(not(initially(forwards())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:90
% !HoldsAt(Backwards(), 0).
 %  not(initially(backwards())).
axiom(not(initially(backwards())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:91
% !HoldsAt(Spinning(), 0).
 %  not(initially(spinning())).
axiom(not(initially(spinning())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:93
% Happens(Push(), 5).
axiom(happens(push(), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:94
% Happens(Pull(), 5).
axiom(happens(pull(), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:95
% Happens(Pull(), 10).
axiom(happens(pull(), t10),
    [is_time(10), b(t, t10), ignore(t+10=t10)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:96
% Happens(Push(), 10).
axiom(happens(push(), t10),
    [is_time(10), b(t, t10), ignore(t+10=t10)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:98
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:99
==> completion(happens).

% range time 0 12
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:101
==> range(time,0,12).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Supermarket.e:102
==> range(offset,1,1).
%; End of file.
