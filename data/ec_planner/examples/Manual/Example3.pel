:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Manual/Example3.e').
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

% load foundations/Root.e

% load foundations/EC.e

% sort agent
==> sort(agent).

% fluent Awake(agent)
 %  fluent(awake(agent)).
==> mpred_prop(awake(agent),fluent).
==> meta_argtypes(awake(agent)).

% event WakeUp(agent)
 %  event(wakeUp(agent)).
==> mpred_prop(wakeUp(agent),event).
==> meta_argtypes(wakeUp(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Manual/Example3.e:18
% [agent,time]
 % Initiates(WakeUp(agent),Awake(agent),time).
axiom(initiates(wakeUp(Agent), awake(Agent), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Manual/Example3.e:20
% agent James, Jessie
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Manual/Example3.e:21
==> t(agent,james).
==> t(agent,jessie).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Manual/Example3.e:21
% !HoldsAt(Awake(James),0).
 %  not(initially(awake(james))).
axiom(not(initially(awake(james))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Manual/Example3.e:22
% HoldsAt(Awake(James),1).
holds_at(awake(james),1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Manual/Example3.e:24
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Manual/Example3.e:25
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Manual/Example3.e:26
==> range(offset,1,1).
