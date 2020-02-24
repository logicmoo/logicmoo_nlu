:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2004b/Leaf.e').
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
%; @inproceedings{Mueller:2004b,
%;   author = "Erik T. Mueller",
%;   year = "2004",
%;   title = "A tool for satisfiability-based commonsense reasoning in the event calculus",
%;   editor = "Valerie Barr and Zdravko Markov",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{S}eventeenth \uppercase{I}nternational \uppercase{F}lorida \uppercase{A}rtificial \uppercase{I}ntelligence \uppercase{R}esearch \uppercase{S}ociety \uppercase{C}onference",
%;   pages = "147--152",
%;   address = "Menlo Park, CA",
%;   publisher = "AAAI Press",
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:35
% [object,height1,height2,time]
% HoldsAt(Height(object,height1),time) &
% HoldsAt(Height(object,height2),time) ->
% height1=height2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:38
axiom(Height1=Height2,
   
    [ holds_at(height(Object, Height1), Time),
      holds_at(height(Object, Height2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:40
% [object,time]
% Initiates(StartFalling(object),Falling(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:41
axiom(initiates(startFalling(Object), falling(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:43
% [object,height,time]
% Releases(StartFalling(object),Height(object,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:44
axiom(releases(startFalling(Object), height(Object, Height), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:46
% [object,height1,height2,offset,time]
% HoldsAt(Height(object,height1),time) &
% height2=height1-offset ->
% Trajectory(Falling(object),time,Height(object,height2),offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:49
axiom(trajectory(falling(Object), Time, height(Object, Height2), Offset),
   
    [ holds_at(height(Object, Height1), Time),
      equals(Height2, Height1-Offset)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:51
% [object,time]
% HoldsAt(Falling(object),time) &
% HoldsAt(Height(object,0),time) ->
% Happens(HitsGround(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:54
axiom(happens(hitsGround(Object), Time),
   
    [ holds_at(falling(Object), Time),
      holds_at(height(Object, 0), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:56
%;[object,height1,height2,time]
%;HoldsAt(Height(object,height1),time) &
%;height1 != height2 ->
%;Terminates(HitsGround(object),Height(object,height2),time).
% [object,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:62
% HoldsAt(Height(object,height),time) ->
% Initiates(HitsGround(object),Height(object,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:63
axiom(initiates(hitsGround(Object), height(Object, Height), Time),
    [holds_at(height(Object, Height), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:65
% [object,time]
% Terminates(HitsGround(object),Falling(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:66
axiom(terminates(hitsGround(Object), falling(Object), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:68
% object Leaf
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:69
==> t(object,leaf).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:70
% !HoldsAt(Falling(Leaf),0).
 %  not(initially(falling(leaf))).
axiom(not(initially(falling(leaf))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:71
% HoldsAt(Height(Leaf,4),0).
axiom(initially(height(leaf, 4)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:72
% Happens(StartFalling(Leaf),2).
axiom(happens(startFalling(leaf), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:74
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:75
==> completion(happens).

% range time 0 7
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:77
==> range(time,0,7).

% range offset 1 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:78
==> range(offset,1,4).

% range height 0 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Leaf.e:79
==> range(height,0,4).
%; End of file.
