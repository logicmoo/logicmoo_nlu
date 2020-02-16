:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2004b/OffOn.e').
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

% fluent On(switch)
 %  fluent(on(switch)).
==> mpred_prop(on(switch),fluent).
==> meta_argtypes(on(switch)).

% fluent Off(switch)
 %  fluent(off(switch)).
==> mpred_prop(off(switch),fluent).
==> meta_argtypes(off(switch)).

% event TurnOn(agent,switch)
 %  event(turnOn(agent,switch)).
==> mpred_prop(turnOn(agent,switch),event).
==> meta_argtypes(turnOn(agent,switch)).

% event TurnOff(agent,switch)
 %  event(turnOff(agent,switch)).
==> mpred_prop(turnOff(agent,switch),event).
==> meta_argtypes(turnOff(agent,switch)).

% noninertial Off
==> noninertial(off).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:35
% [switch,time]
 % HoldsAt(Off(switch),time) <-> !HoldsAt(On(switch),time).

 /*  holds_at(off(Switch), Time) <->
       not(holds_at(on(Switch), Time)).
 */
axiom(holds_at(off(Switch), Time),
    [not(holds_at(on(Switch), Time))]).
axiom(not(holds_at(on(Switch), Time)),
    [holds_at(off(Switch), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:37
% [agent,switch,time]
 % Initiates(TurnOn(agent,switch),On(switch),time).
axiom(initiates(turnOn(Agent, Switch), on(Switch), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:38
% [agent,switch,time]
 % Terminates(TurnOff(agent,switch),On(switch),time).
axiom(terminates(turnOff(Agent, Switch), on(Switch), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:40
% agent James
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:41
==> t(agent,james).

% switch Switch1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:42
==> t(switch,switch1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:43
% !HoldsAt(On(Switch1),0).
 %  not(initially(on(switch1))).
axiom(not(initially(on(switch1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:44
% Happens(TurnOn(James,Switch1),0).
axiom(happens(turnOn(james, switch1), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:46
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:47
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/OffOn.e:48
==> range(offset,1,1).
%; End of file.
