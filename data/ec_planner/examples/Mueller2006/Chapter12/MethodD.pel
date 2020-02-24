:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter12/MethodD.e').
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
%; Method (D)
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

% object A,B
==> t(object,a).
==> t(object,b).

% fluent P(object)
 %  fluent(p(object)).
==> mpred_prop(p(object),fluent).
==> meta_argtypes(p(object)).

% fluent Q(object)
 %  fluent(q(object)).
==> mpred_prop(q(object),fluent).
==> meta_argtypes(q(object)).

% fluent R(object)
 %  fluent(r(object)).
==> mpred_prop(r(object),fluent).
==> meta_argtypes(r(object)).

% predicate Ab1(object,time)
 %  predicate(ab1(object,time)).
==> mpred_prop(ab1(object,time),predicate).
==> meta_argtypes(ab1(object,time)).

% predicate Ab2(object,time)
 %  predicate(ab2(object,time)).
==> mpred_prop(ab2(object,time),predicate).
==> meta_argtypes(ab2(object,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:35
% [object,time]
% HoldsAt(P(object),time) & !Ab1(object,time) ->
% HoldsAt(Q(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:37
axiom(holds_at(q(Object), Time),
    [holds_at(p(Object), Time), not(ab1(Object, Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:39
% [object,time]
% HoldsAt(R(object),time) & !Ab2(object,time) ->
% !HoldsAt(Q(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:41
axiom(not(holds_at(q(Object), Time)),
    [holds_at(r(Object), Time), not(ab2(Object, Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:43
% [object,time]
% HoldsAt(R(object),time) -> HoldsAt(P(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:44
axiom(holds_at(p(Object), Time),
    [holds_at(r(Object), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:46
% HoldsAt(R(A),0).
axiom(initially(r(a)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:47
% HoldsAt(P(B),0).
axiom(initially(p(b)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:48
% !HoldsAt(R(B),0).
 %  not(initially(r(b))).
axiom(not(initially(r(b))),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:50
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:51
% [object,time]
% HoldsAt(R(object),time) -> Ab1(object,time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:52
axiom(ab1(Object, Time),
    [holds_at(r(Object), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:54
% range time 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:55
==> range(time,0,0).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:56
==> range(offset,1,1).

% completion Theta Ab1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:58
==> completion(theta).
==> completion(ab1).

% completion Theta Ab2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodD.e:59
==> completion(theta).
==> completion(ab2).
%; End of file.
