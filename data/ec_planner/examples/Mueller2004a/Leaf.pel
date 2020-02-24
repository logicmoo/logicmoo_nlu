:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2004a/Leaf.e').
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
%; @article{Mueller:2004a,
%;   author = "Erik T. Mueller",
%;   year = "2004",
%;   title = "Event calculus reasoning through satisfiability",
%;   journal = "Journal of Logic and Computation",
%;   volume = "14",
%;   number = "5",
%;   pages = "703--730",
%; }
%;

% option trajectory on
:- set_ec_option(trajectory, on).

% load foundations/Root.e

% load foundations/EC.e

% sort object
==> sort(object).

% sort height: integer
==> subsort(height,integer).

% fluent Height(object,height)
 %  fluent(height(object,height)).
==> mpred_prop(height(object,height),fluent).
==> meta_argtypes(height(object,height)).

% fluent Falling(object)
 %  fluent(falling(object)).
==> mpred_prop(falling(object),fluent).
==> meta_argtypes(falling(object)).

% event StartFalling(object)
 %  event(startFalling(object)).
==> mpred_prop(startFalling(object),event).
==> meta_argtypes(startFalling(object)).

% event HitsGround(object)
 %  event(hitsGround(object)).
==> mpred_prop(hitsGround(object),event).
==> meta_argtypes(hitsGround(object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:34
% [object,height1,height2,time]
% HoldsAt(Height(object,height1),time) &
% HoldsAt(Height(object,height2),time) ->
% height1=height2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:37
axiom(Height1=Height2,
   
    [ holds_at(height(Object, Height1), Time),
      holds_at(height(Object, Height2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:39
% [object,time]
% Initiates(StartFalling(object),Falling(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:40
axiom(initiates(startFalling(Object), falling(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:42
% [object,height,time]
% Releases(StartFalling(object),Height(object,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:43
axiom(releases(startFalling(Object), height(Object, Height), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:45
% [object,height1,height2,offset,time]
% HoldsAt(Height(object,height1),time) &
% height2=height1-offset*offset ->
% Trajectory(Falling(object),time,Height(object,height2),offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:48
axiom(trajectory(falling(Object), Time, height(Object, Height2), Offset),
   
    [ holds_at(height(Object, Height1), Time),
      equals(Height2, Height1-Offset*Offset)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:50
% [object,time]
% HoldsAt(Falling(object),time) &
% HoldsAt(Height(object,0),time) ->
% Happens(HitsGround(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:53
axiom(happens(hitsGround(Object), Time),
   
    [ holds_at(falling(Object), Time),
      holds_at(height(Object, 0), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:55
%;[object,height1,height2,time]
%;HoldsAt(Height(object,height1),time) &
%;height1 != height2 ->
%;Terminates(HitsGround(object),Height(object,height2),time).
% [object,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:61
% HoldsAt(Height(object,height),time) ->
% Initiates(HitsGround(object),Height(object,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:62
axiom(initiates(hitsGround(Object), height(Object, Height), Time),
    [holds_at(height(Object, Height), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:64
% [object,time]
% Terminates(HitsGround(object),Falling(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:65
axiom(terminates(hitsGround(Object), falling(Object), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:67
% object Leaf
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:68
==> t(object,leaf).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:69
% !HoldsAt(Falling(Leaf),0).
 %  not(initially(falling(leaf))).
axiom(not(initially(falling(leaf))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:70
% HoldsAt(Height(Leaf,9),0).
axiom(initially(height(leaf, 9)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:71
% Happens(StartFalling(Leaf),0).
axiom(happens(startFalling(leaf), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:73
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:74
==> completion(happens).

% range time 0 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:76
==> range(time,0,4).

% range offset 1 9
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:77
==> range(offset,1,9).

% range height 0 9
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Leaf.e:78
==> range(height,0,9).
%; End of file.
