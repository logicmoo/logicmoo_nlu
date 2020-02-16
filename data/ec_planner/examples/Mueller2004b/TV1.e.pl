:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2004b/TV1.e').
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
%; @inproceedings{Mueller:2004b,
%;   author = "Erik T. Mueller",
%;   year = "2004",
%;   title = "A tool for satisfiability-based commonsense reasoning in the event calculus",
%;   editor = "Valerie Barr and Zdravko Markov",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{S}eventeenth \uppercase{I}nternational \uppercase{F}lorida \uppercase{A}rtificial \uppercase{I}ntelligence \uppercase{R}esearch \uppercase{S}ociety \uppercase{C}onference",
%;   pages = "147--152",
%;   address = "Menlo Park, CA",
%;   publisher = "AAAI Press",
%; }
%;

% load foundations/Root.e

% load foundations/EC.e

% sort agent
==> sort(agent).

% sort switch
==> sort(switch).

% sort tv
==> sort(tv).

% function TVOf(switch): tv
 %  functional_predicate(tVOf(switch,tv)).
==> mpred_prop(tVOf(switch,tv),functional_predicate).
==> meta_argtypes(tVOf(switch,tv)).
resultIsa(tVOf,tv).

% fluent SwitchOn(switch)
 %  fluent(switchOn(switch)).
==> mpred_prop(switchOn(switch),fluent).
==> meta_argtypes(switchOn(switch)).

% fluent TVOn(tv)
 %  fluent(tVOn(tv)).
==> mpred_prop(tVOn(tv),fluent).
==> meta_argtypes(tVOn(tv)).

% fluent PluggedIn(tv)
 %  fluent(pluggedIn(tv)).
==> mpred_prop(pluggedIn(tv),fluent).
==> meta_argtypes(pluggedIn(tv)).

% event TurnOn(agent,switch)
 %  event(turnOn(agent,switch)).
==> mpred_prop(turnOn(agent,switch),event).
==> meta_argtypes(turnOn(agent,switch)).

% event TurnOff(agent,switch)
 %  event(turnOff(agent,switch)).
==> mpred_prop(turnOff(agent,switch),event).
==> meta_argtypes(turnOff(agent,switch)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:36
% [agent,switch,time]
 % Initiates(TurnOn(agent,switch),SwitchOn(switch),time).
axiom(initiates(turnOn(Agent, Switch), switchOn(Switch), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:38
% [agent,switch,tv,time]
% TVOf(switch)=tv & HoldsAt(PluggedIn(tv),time) ->
% Initiates(TurnOn(agent,switch),TVOn(tv),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:40
axiom(initiates(turnOn(Agent, Switch), tVOn(Tv), Time),
   
    [ equals(tVOf(Switch), Tv),
      holds_at(pluggedIn(Tv), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:42
% agent James
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:43
==> t(agent,james).

% switch Switch1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:44
==> t(switch,switch1).

% tv TV1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:45
==> t(tv,tv1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:46
% TVOf(Switch1)=TV1.
tVOf(switch1,tv1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:47
% HoldsAt(PluggedIn(TV1),0).
axiom(initially(pluggedIn(tv1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:48
% !HoldsAt(SwitchOn(Switch1),0).
 %  not(initially(switchOn(switch1))).
axiom(not(initially(switchOn(switch1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:49
% !HoldsAt(TVOn(TV1),0).
 %  not(initially(tVOn(tv1))).
axiom(not(initially(tVOn(tv1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:50
% Happens(TurnOn(James,Switch1),0).
axiom(happens(turnOn(james, switch1), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:52
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:53
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/TV1.e:54
==> range(offset,1,1).
%; End of file.
