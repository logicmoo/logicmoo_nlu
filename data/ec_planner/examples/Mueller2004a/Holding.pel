:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2004a/Holding.e').
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

% option encoding 3
:- set_ec_option(encoding, 3).

% load foundations/Root.e

% load foundations/EC.e

% sort person
==> sort(person).

% sort object
==> sort(object).

% event Hold(person,object)
 %  event(hold(person,object)).
==> mpred_prop(hold(person,object),event).
==> meta_argtypes(hold(person,object)).

% fluent Holding(person,object)
 %  fluent(holding(person,object)).
==> mpred_prop(holding(person,object),fluent).
==> meta_argtypes(holding(person,object)).

% person P1
==> t(person,p1).

% object O1
==> t(object,o1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Holding.e:35
% Happens(Hold(P1,O1),0).
axiom(happens(hold(p1, o1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Holding.e:37
% [person,object,time]
% Initiates(Hold(person,object),Holding(person,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Holding.e:38
axiom(initiates(hold(Person, Object), holding(Person, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Holding.e:40
% !HoldsAt(Holding(P1,O1),0).
 %  not(initially(holding(p1,o1))).
axiom(not(initially(holding(p1, o1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Holding.e:41
%;;; AUTO !ReleasedAt(Holding(P1,O1),0).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Holding.e:43
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Holding.e:44
==> completion(happens).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Holding.e:46
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004a/Holding.e:47
==> range(offset,1,1).
%; End of file.
