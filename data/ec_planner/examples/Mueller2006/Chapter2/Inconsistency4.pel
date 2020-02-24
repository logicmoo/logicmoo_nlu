:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter2/Inconsistency4.e').
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

% object O1
==> t(object,o1).

% event E(object)
 %  event(e(object)).
==> mpred_prop(e(object),event).
==> meta_argtypes(e(object)).

% fluent F1(object)
 %  fluent(f1(object)).
==> mpred_prop(f1(object),fluent).
==> meta_argtypes(f1(object)).

% fluent F2(object)
 %  fluent(f2(object)).
==> mpred_prop(f2(object),fluent).
==> meta_argtypes(f2(object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency4.e:30
% [object,time]
% Initiates(E(object),F1(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency4.e:31
axiom(initiates(e(Object), f1(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency4.e:33
% [object,time]
% HoldsAt(F1(object),time) <-> HoldsAt(F2(object),time).

 /*  holds_at(f1(Object), Time) <->
       holds_at(f2(Object), Time).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency4.e:34
axiom(holds_at(f1(Object), Time),
    [holds_at(f2(Object), Time)]).
axiom(holds_at(f2(Object), Time),
    [holds_at(f1(Object), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency4.e:36
% !HoldsAt(F2(O1),0).
 %  not(initially(f2(o1))).
axiom(not(initially(f2(o1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency4.e:37
% Happens(E(O1),0).
axiom(happens(e(o1), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency4.e:39
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency4.e:40
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency4.e:41
==> range(offset,1,1).
%; End of file.
