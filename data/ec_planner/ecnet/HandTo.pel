:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/HandTo.e').
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

% event HandTo(agent,agent,physobj)
 %  event(handTo(agent,agent,physobj)).
==> mpred_prop(handTo(agent,agent,physobj),event).
==> meta_argtypes(handTo(agent,agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HandTo.e:13
% [agent1,agent2,physobj,time]
% Initiates(HandTo(agent1,agent2,physobj),
%           Holding(agent2,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HandTo.e:16
axiom(initiates(handTo(Agent1, Agent2, Physobj), holding(Agent2, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HandTo.e:18
% [agent1,agent2,physobj,time]
% Terminates(HandTo(agent1,agent2,physobj),
%            Holding(agent1,physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HandTo.e:21
axiom(terminates(handTo(Agent1, Agent2, Physobj), holding(Agent1, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HandTo.e:23
% [agent1,agent2,physobj,time]
% Happens(HandTo(agent1,agent2,physobj),time) ->
% HoldsAt(Holding(agent1,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HandTo.e:25
axiom(requires(handTo(Agent1, Agent2, Physobj), Time),
    [holds_at(holding(Agent1, Physobj), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HandTo.e:27
% event ShakeHands(agent,agent)
 %  event(shakeHands(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HandTo.e:28
==> mpred_prop(shakeHands(agent,agent),event).
==> meta_argtypes(shakeHands(agent,agent)).

% event WriteOn(agent,paper,pen)
 %  event(writeOn(agent,paper,pen)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HandTo.e:30
==> mpred_prop(writeOn(agent,paper,pen),event).
==> meta_argtypes(writeOn(agent,paper,pen)).
