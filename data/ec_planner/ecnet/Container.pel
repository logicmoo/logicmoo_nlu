:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Container.e').
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
%;
%; Container: container
%;
%; linkage to OTSpace(M):
% [agent,container1,container2,time]
% Happens(TakeOutOf(agent,container1,container2),time) ->
% HoldsAt(ContainerIsOpen(container2),time).
axiom(requires(takeOutOf(Agent, Container1, Container2), Time),
    [holds_at(containerIsOpen(Container2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:19
% [agent,container1,container2,time]
% Happens(PutInside(agent,container1,container2),time) ->
% HoldsAt(ContainerIsOpen(container2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:21
axiom(requires(putInside(Agent, Container1, Container2), Time),
    [holds_at(containerIsOpen(Container2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:23
%; agent opens container.

% event ContainerOpen(agent,container)
 %  event(containerOpen(agent,container)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:25
==> mpred_prop(containerOpen(agent,container),event).
==> meta_argtypes(containerOpen(agent,container)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:26
%; agent closes container.

% event ContainerClose(agent,container)
 %  event(containerClose(agent,container)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:28
==> mpred_prop(containerClose(agent,container),event).
==> meta_argtypes(containerClose(agent,container)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:29
%; container is open.

% fluent ContainerIsOpen(container)
 %  fluent(containerIsOpen(container)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:31
==> mpred_prop(containerIsOpen(container),fluent).
==> meta_argtypes(containerIsOpen(container)).

% fluent ContainerClosed(container)
 %  fluent(containerClosed(container)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:33
==> mpred_prop(containerClosed(container),fluent).
==> meta_argtypes(containerClosed(container)).

% noninertial ContainerClosed
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:34
==> noninertial(containerClosed).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:35
% [container,time]
% HoldsAt(ContainerClosed(container),time) <->
% !HoldsAt(ContainerIsOpen(container),time).

 /*  holds_at(containerClosed(Container), Time) <->
       not(holds_at(containerIsOpen(Container), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:37
axiom(holds_at(containerClosed(Container), Time),
    [not(holds_at(containerIsOpen(Container), Time))]).
axiom(not(holds_at(containerIsOpen(Container), Time)),
    [holds_at(containerClosed(Container), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:39
%; A precondition axiom states that
%; for an agent to open a container,
%; the agent must be awake,
%; the container must not already be open, and
%; the agent must be holding the container.
% [agent,container,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:45
% Happens(ContainerOpen(agent,container),time) ->
% HoldsAt(Awake(agent),time) &
% !HoldsAt(ContainerIsOpen(container),time) &
% HoldsAt(Holding(agent,container),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:48
axiom(requires(containerOpen(Agent, Container), Time),
   
    [ holds_at(awake(Agent), Time),
      not(holds_at(containerIsOpen(Container), Time)),
      holds_at(holding(Agent, Container), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:50
%; An effect axiom states that
%; if an agent opens a container,
%; the container will be open:
% [agent,container,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:54
% Initiates(ContainerOpen(agent,container),ContainerIsOpen(container),time).
axiom(initiates(containerOpen(Agent, Container), containerIsOpen(Container), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:56
%; A precondition axiom states that
%; for an agent to close a container,
%; the agent must be awake,
%; the container must be open, and
%; the agent must be holding the container.
% [agent,container,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:62
% Happens(ContainerClose(agent,container),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(ContainerIsOpen(container),time) &
% HoldsAt(Holding(agent,container),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:65
axiom(requires(containerClose(Agent, Container), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(containerIsOpen(Container), Time),
      holds_at(holding(Agent, Container), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:67
%; An effect axiom states that
%; if an agent closes a container,
%; the container will no longer be open:
% [agent,container,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:71
% Terminates(ContainerClose(agent,container),ContainerIsOpen(container),time).
axiom(terminates(containerClose(Agent, Container), containerIsOpen(Container), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Container.e:73
%; End of file.
