:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter13/Postdiction.e').
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

% fluent Awake(agent)
 %  fluent(awake(agent)).
==> mpred_prop(awake(agent),fluent).
==> meta_argtypes(awake(agent)).

% event WakeUp(agent)
 %  event(wakeUp(agent)).
==> mpred_prop(wakeUp(agent),event).
==> meta_argtypes(wakeUp(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter13/Postdiction.e:27
% [agent,time]
 % Initiates(WakeUp(agent),Awake(agent),time).
axiom(initiates(wakeUp(Agent), awake(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter13/Postdiction.e:28
% [agent,time]
 % Happens(WakeUp(agent),time) -> !HoldsAt(Awake(agent),time).
axiom(requires(wakeUp(Agent), Time),
    [not(holds_at(awake(Agent), Time))]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter13/Postdiction.e:30
% agent James
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter13/Postdiction.e:31
==> t(agent,james).

% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter13/Postdiction.e:31
% Happens(WakeUp(James),0).
axiom(happens(wakeUp(james), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter13/Postdiction.e:32
% HoldsAt(Awake(James),1).
holds_at(awake(james),1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter13/Postdiction.e:34
% completion Delta Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter13/Postdiction.e:35
==> completion(delta).
==> completion(happens).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter13/Postdiction.e:37
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter13/Postdiction.e:38
==> range(offset,1,1).
