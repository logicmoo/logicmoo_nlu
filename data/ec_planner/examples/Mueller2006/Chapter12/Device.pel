:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter12/Device.e').
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

% sort device
==> sort(device).

% agent Nathan
==> t(agent,nathan).

% device Device1, AntiqueDevice1
==> t(device,device1).
==> t(device,antiqueDevice1).

% predicate Ab1(device,time)
 %  predicate(ab1(device,time)).
==> mpred_prop(ab1(device,time),predicate).
==> meta_argtypes(ab1(device,time)).

% fluent On(device)
 %  fluent(on(device)).
==> mpred_prop(on(device),fluent).
==> meta_argtypes(on(device)).

% fluent PluggedIn(device)
 %  fluent(pluggedIn(device)).
==> mpred_prop(pluggedIn(device),fluent).
==> meta_argtypes(pluggedIn(device)).

% fluent BrokenSwitch(device)
 %  fluent(brokenSwitch(device)).
==> mpred_prop(brokenSwitch(device),fluent).
==> meta_argtypes(brokenSwitch(device)).

% event TurnOn(agent,device)
 %  event(turnOn(agent,device)).
==> mpred_prop(turnOn(agent,device),event).
==> meta_argtypes(turnOn(agent,device)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:36
%; Sigma
% [agent,device,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:39
% !Ab1(device,time) ->
% Initiates(TurnOn(agent,device),On(device),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:40
axiom(initiates(turnOn(Agent, Device), on(Device), Time),
    [not(ab1(Device, Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:42
%; Delta


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:44
% Happens(TurnOn(Nathan,Device1),0).
axiom(happens(turnOn(nathan, device1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:46
%; Theta

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:48
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:48
% [device,time]
 % HoldsAt(BrokenSwitch(device),time) -> Ab1(device,time).
axiom(ab1(Device, Time),
    [holds_at(brokenSwitch(Device), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:49
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:49
% [device,time]
 % !HoldsAt(PluggedIn(device),time) -> Ab1(device,time).
axiom(ab1(Device, Time),
    [not(holds_at(pluggedIn(Device), Time))]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:50
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:50
% [time]
 % Ab1(AntiqueDevice1,time).
ab1(antiqueDevice1,Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:52
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:54
% !HoldsAt(On(Device1),0).
 %  not(initially(on(device1))).
axiom(not(initially(on(device1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:55
% !HoldsAt(BrokenSwitch(Device1),0).
 %  not(initially(brokenSwitch(device1))).
axiom(not(initially(brokenSwitch(device1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:56
% HoldsAt(PluggedIn(Device1),0).
axiom(initially(pluggedIn(device1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:58
%; added:
% [time]
 % !HoldsAt(On(AntiqueDevice1),time).
 %  not(holds_at(on(antiqueDevice1),Time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:59
axiom(not(holds_at(on(antiqueDevice1), Time1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:60
% [time]
 % HoldsAt(PluggedIn(AntiqueDevice1),time).
holds_at(pluggedIn(antiqueDevice1),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:62
%; entailed:
%; HoldsAt(On(Device1),1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:65
% completion Theta Ab1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:66
==> completion(theta).
==> completion(ab1).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:67
==> completion(happens).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:69
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/Device.e:70
==> range(offset,1,1).
%; End of file.
