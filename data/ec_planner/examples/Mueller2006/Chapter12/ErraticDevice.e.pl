:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter12/ErraticDevice.e').
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

% device Device1
==> t(device,device1).

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

% fluent Erratic(device)
 %  fluent(erratic(device)).
==> mpred_prop(erratic(device),fluent).
==> meta_argtypes(erratic(device)).

% fluent DeterminingFluent(device)
 %  fluent(determiningFluent(device)).
==> mpred_prop(determiningFluent(device),fluent).
==> meta_argtypes(determiningFluent(device)).

% noninertial DeterminingFluent
==> noninertial(determiningFluent).

% event TurnOn(agent,device)
 %  event(turnOn(agent,device)).
==> mpred_prop(turnOn(agent,device),event).
==> meta_argtypes(turnOn(agent,device)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:40
%; Sigma
% [agent,device,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:43
% !Ab1(device,time) ->
% Initiates(TurnOn(agent,device),On(device),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:44
axiom(initiates(turnOn(Agent, Device), on(Device), Time),
    [not(ab1(Device, Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:46
%; Delta


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:48
% Happens(TurnOn(Nathan,Device1),0).
axiom(happens(turnOn(nathan, device1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:50
%; Theta

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:53
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:53
% [device,time]
 % HoldsAt(BrokenSwitch(device),time) -> Ab1(device,time).
axiom(ab1(Device, Time),
    [holds_at(brokenSwitch(Device), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:54
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:54
% [device,time]
% HoldsAt(Erratic(device),time) & HoldsAt(DeterminingFluent(device),time) ->
% Ab1(device,time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:56
axiom(ab1(Device, Time),
   
    [ holds_at(erratic(Device), Time),
      holds_at(determiningFluent(Device), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:58
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:58
% [device,time]
 % !HoldsAt(PluggedIn(device),time) -> Ab1(device,time).
axiom(ab1(Device, Time),
    [not(holds_at(pluggedIn(Device), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:60
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:62
% !HoldsAt(On(Device1),0).
 %  not(initially(on(device1))).
axiom(not(initially(on(device1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:63
% !HoldsAt(BrokenSwitch(Device1),0).
 %  not(initially(brokenSwitch(device1))).
axiom(not(initially(brokenSwitch(device1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:64
% HoldsAt(Erratic(Device1),0).
axiom(initially(erratic(device1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:65
% HoldsAt(PluggedIn(Device1),0).
axiom(initially(pluggedIn(device1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:67
%; added:


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:68
% HoldsAt(DeterminingFluent(Device1),1).
holds_at(determiningFluent(device1),1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:70
% completion Theta Ab1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:71
==> completion(theta).
==> completion(ab1).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:72
==> completion(happens).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:74
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/ErraticDevice.e:75
==> range(offset,1,1).
%; End of file.
