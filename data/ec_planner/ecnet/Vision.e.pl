:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Vision.e').
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
%; The Vision representation deals with some simple aspects
%; of vision.
%;
%; agent looks at object.

% event LookAt(agent,object)
 %  event(lookAt(agent,object)).
==> mpred_prop(lookAt(agent,object),event).
==> meta_argtypes(lookAt(agent,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:17
%; agent sees object.

% fluent See(agent,object)
 %  fluent(see(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:19
==> mpred_prop(see(agent,object),fluent).
==> meta_argtypes(see(agent,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:20
%; An effect axiom states that if an agent looks at
%; an object, the agent will see the object:
% [agent,object,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:23
% Initiates(LookAt(agent,object),
%           See(agent,object),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:25
axiom(initiates(lookAt(Agent, Object), see(Agent, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:27
%; A precondition axiom states that for
%; an agent to look at an object,
%; there must be a location such that
%; the agent is at the location and
%; the object is at the location, or
%; there must be a door such that
%; the agent is near the door,
%; the object is near the door, and
%; the door is open:
%;[agent,object,time]
%;Happens(LookAt(agent,object),time) ->
%;({location}
%; HoldsAt(At(agent,location),time) &
%; HoldsAt(At(object,location),time))|
%;({door}
%; HoldsAt(NearPortal(agent,door),time) &
%; HoldsAt(NearPortal(object,door),time) &
%; HoldsAt(DoorIsOpen(door),time)).
%; An effect axiom states that if an agent
%; looks at an object, the agent will no longer
%; see other objects:
% [agent,object1,object2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:50
% object1!=% object2 ->
% Terminates(LookAt(agent,object1),
%            See(agent,object2),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:53
axiom(terminates(lookAt(Agent, Object1), see(Agent, Object2), Time),
    [{dif(Object1, Object2)}]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:55
%; Several effect axioms state that if an
%; agent walks through a door, up a staircase, or down a staircase,
%; the agent no longer sees an object:
% [agent,door,object,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:59
% Terminates(WalkThroughDoor12(agent,door),
%            See(agent,object),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:61
axiom(terminates(walkThroughDoor12(Agent, Door), see(Agent, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:62
% [agent,door,object,time]
% Terminates(WalkThroughDoor21(agent,door),
%            See(agent,object),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:65
axiom(terminates(walkThroughDoor21(Agent, Door), see(Agent, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:66
% [agent,door,object,time]
% Terminates(WalkUpStaircase(agent,door),
%            See(agent,object),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:69
axiom(terminates(walkUpStaircase(Agent, Door), see(Agent, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:70
% [agent,door,object,time]
% Terminates(WalkDownStaircase(agent,door),
%            See(agent,object),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:73
axiom(terminates(walkDownStaircase(Agent, Door), see(Agent, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vision.e:75
%; End of file.
