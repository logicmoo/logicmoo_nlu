:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Cognition.e').
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

% event Read(agent,text,content)
 %  event(read(agent,text,content)).
==> mpred_prop(read(agent,text,content),event).
==> meta_argtypes(read(agent,text,content)).

% event ThinkAbout(agent,content)
 %  event(thinkAbout(agent,content)).
==> mpred_prop(thinkAbout(agent,content),event).
==> meta_argtypes(thinkAbout(agent,content)).

% event Think(agent)
 %  event(think(agent)).
==> mpred_prop(think(agent),event).
==> meta_argtypes(think(agent)).

% event Understand(agent,content)
 %  event(understand(agent,content)).
==> mpred_prop(understand(agent,content),event).
==> meta_argtypes(understand(agent,content)).

% event Dream(agent)
 %  event(dream(agent)).
==> mpred_prop(dream(agent),event).
==> meta_argtypes(dream(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Cognition.e:16
% [agent,text,content,time]
% Happens(Read(agent,text,content),time) ->
% HoldsAt(See(agent,text),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Cognition.e:18
axiom(requires(read(Agent, Text, Content), Time),
    [holds_at(see(Agent, Text), Time)]).
