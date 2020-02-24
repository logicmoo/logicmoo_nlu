:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter12/MethodB.e').
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

% predicate Ab(object,time)
 %  predicate(ab(object,time)).
==> mpred_prop(ab(object,time),predicate).
==> meta_argtypes(ab(object,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodB.e:32
% [object,time]
% HoldsAt(P(object),time) & !Ab(object,time) ->
% HoldsAt(Q(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodB.e:34
axiom(holds_at(q(Object), Time),
    [holds_at(p(Object), Time), not(ab(Object, Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodB.e:36
% HoldsAt(P(A),0).
axiom(initially(p(a)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodB.e:37
% HoldsAt(P(B),0).
axiom(initially(p(b)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodB.e:39
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodB.e:39
% Ab(A,0).
ab(a,0).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodB.e:41
% range time 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodB.e:42
==> range(time,0,0).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodB.e:43
==> range(offset,1,1).

% completion Theta Ab
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/MethodB.e:45
==> completion(theta).
==> completion(ab).
%; End of file.
