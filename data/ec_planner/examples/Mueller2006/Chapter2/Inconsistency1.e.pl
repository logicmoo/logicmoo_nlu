:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter2/Inconsistency1.e').
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

% fluent F(object)
 %  fluent(f(object)).
==> mpred_prop(f(object),fluent).
==> meta_argtypes(f(object)).

% event E(object)
 %  event(e(object)).
==> mpred_prop(e(object),event).
==> meta_argtypes(e(object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency1.e:29
% [object,time]
 % Initiates(E(object),F(object),time).
axiom(initiates(e(Object), f(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency1.e:30
% [object,time]
 % Terminates(E(object),F(object),time).
axiom(terminates(e(Object), f(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency1.e:32
% Happens(E(O1),0).
axiom(happens(e(o1), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency1.e:34
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency1.e:35
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Inconsistency1.e:36
==> range(offset,1,1).
%; End of file.
