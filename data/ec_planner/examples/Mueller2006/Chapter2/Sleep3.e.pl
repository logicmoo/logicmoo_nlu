:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter2/Sleep3.e').
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

% sort agent
==> sort(agent).

% agent Nathan
==> t(agent,nathan).

% fluent Awake(agent)
 %  fluent(awake(agent)).
==> mpred_prop(awake(agent),fluent).
==> meta_argtypes(awake(agent)).

% event WakeUp(agent)
 %  event(wakeUp(agent)).
==> mpred_prop(wakeUp(agent),event).
==> meta_argtypes(wakeUp(agent)).

% event FallAsleep(agent)
 %  event(fallAsleep(agent)).
==> mpred_prop(fallAsleep(agent),event).
==> meta_argtypes(fallAsleep(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:31
%; Sigma
% [agent,time]
 % Initiates(WakeUp(agent),Awake(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:33
axiom(initiates(wakeUp(Agent), awake(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:34
% [agent,time]
 % Terminates(FallAsleep(agent),Awake(agent),time).
axiom(terminates(fallAsleep(Agent), awake(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:36
%; Delta
% [agent,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:39
% Happens(WakeUp(agent),time) ->
% !HoldsAt(Awake(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:40
axiom(requires(wakeUp(Agent), Time),
    [not(holds_at(awake(Agent), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:42
% Happens(WakeUp(Nathan),0).
axiom(happens(wakeUp(nathan), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:44
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:46
% HoldsAt(Awake(Nathan),1).
holds_at(awake(nathan),1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:48
%; inferred:
%; !HoldsAt(Awake(Nathan),0).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:51
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:52
==> completion(happens).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:54
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep3.e:55
==> range(offset,1,1).
%; End of file.
