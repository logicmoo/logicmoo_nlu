:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Rain.e').
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
%; Rain
%;
%; It starts raining at location outside.

% event StartRaining(outside)
 %  event(startRaining(outside)).
==> mpred_prop(startRaining(outside),event).
==> meta_argtypes(startRaining(outside)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:16
%; It stops raining at location outside.

% event StopRaining(outside)
 %  event(stopRaining(outside)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:18
==> mpred_prop(stopRaining(outside),event).
==> meta_argtypes(stopRaining(outside)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:19
%; It is raining at location outside.

% fluent Raining(outside)
 %  fluent(raining(outside)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:21
==> mpred_prop(raining(outside),fluent).
==> meta_argtypes(raining(outside)).

% event GetWet(object)
 %  event(getWet(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:23
==> mpred_prop(getWet(object),event).
==> meta_argtypes(getWet(object)).

% event Dry(object)
 %  event(dry(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:25
==> mpred_prop(dry(object),event).
==> meta_argtypes(dry(object)).

% fluent Wet(object)
 %  fluent(wet(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:27
==> mpred_prop(wet(object),fluent).
==> meta_argtypes(wet(object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:28
% [agent,outside,time]
% HoldsAt(At(agent,outside),time) &
% HoldsAt(Raining(outside),time) &
% !HoldsAt(Wet(agent),time) &
% (!{umbrella} HoldsAt(Holding(agent,umbrella),time)) ->
% Happens(GetWet(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:33
axiom(happens(getWet(Agent), Time),
   
    [ holds_at(at(Agent, Outside), Time),
      holds_at(raining(Outside), Time),
      not(holds_at(wet(Agent), Time)),
      not(holds_at(holding(Agent, Umbrella), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:35
% [object,time]
% Initiates(GetWet(object),Wet(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:36
axiom(initiates(getWet(Object), wet(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:38
% [object,time]
% Terminates(Dry(object),Wet(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:39
axiom(terminates(dry(Object), wet(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rain.e:41
%; End of file.
