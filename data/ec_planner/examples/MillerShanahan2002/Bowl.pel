:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/MillerShanahan2002/Bowl.e').
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
%; \fullciteA[p. 461]{MillerShanahan:2002}
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

% load foundations/Root.e

% load foundations/EC.e

% event LiftLeft()
 %  event(liftLeft()).
==> mpred_prop(liftLeft(),event).
==> meta_argtypes(liftLeft()).

% event LiftRight()
 %  event(liftRight()).
==> mpred_prop(liftRight(),event).
==> meta_argtypes(liftRight()).

% fluent Spilt()
 %  fluent(spilt()).
==> mpred_prop(spilt(),fluent).
==> meta_argtypes(spilt()).

% fluent Raised()
 %  fluent(raised()).
==> mpred_prop(raised(),fluent).
==> meta_argtypes(raised()).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:34
% [time]
% !Happens(LiftRight(), time) ->
% Initiates(LiftLeft(), Spilt(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:36
axiom(initiates(liftLeft(), spilt(), Time),
    [not(happens(liftRight(), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:38
% [time]
% !Happens(LiftLeft(), time) ->
% Initiates(LiftRight(), Spilt(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:40
axiom(initiates(liftRight(), spilt(), Time),
    [not(happens(liftLeft(), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:42
% [time]
% Happens(LiftLeft(), time) ->
% Initiates(LiftRight(), Raised(), time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:44
axiom(requires(liftLeft(), Time),
    [initiates(liftRight(), raised(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:46
% !HoldsAt(Spilt(), 0).
 %  not(initially(spilt())).
axiom(not(initially(spilt())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:47
% !HoldsAt(Raised(), 0).
 %  not(initially(raised())).
axiom(not(initially(raised())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:48
% Happens(LiftLeft(), 2).
axiom(happens(liftLeft(), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:49
% Happens(LiftRight(), 2).
axiom(happens(liftRight(), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:51
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:52
==> completion(happens).

% range time 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:54
==> range(time,0,3).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/MillerShanahan2002/Bowl.e:55
==> range(offset,1,1).
%; End of file.
