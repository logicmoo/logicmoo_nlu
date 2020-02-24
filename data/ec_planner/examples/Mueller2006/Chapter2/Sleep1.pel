:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter2/Sleep1.e').
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:31
%; Sigma
% [agent,time]
 % Initiates(WakeUp(agent),Awake(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:33
axiom(initiates(wakeUp(Agent), awake(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:34
% [agent,time]
 % Terminates(FallAsleep(agent),Awake(agent),time).
axiom(terminates(fallAsleep(Agent), awake(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:36
%; Delta


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:38
% Happens(WakeUp(Nathan),1).
axiom(happens(wakeUp(nathan), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:40
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:42
% !HoldsAt(Awake(Nathan),0).
 %  not(initially(awake(nathan))).
axiom(not(initially(awake(nathan))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:44
%; entailed:
%; HoldsAt(Awake(Nathan),3).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:47
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:48
==> completion(happens).

% range time 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:50
==> range(time,0,3).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter2/Sleep1.e:51
==> range(offset,1,1).
%; End of file.
