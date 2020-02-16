:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/SmallFire.e').
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
%; SmallFire: matches, lighters, cigarettes, etc.
%;

% event Light(agent,physobj)
 %  event(light(agent,physobj)).
==> mpred_prop(light(agent,physobj),event).
==> meta_argtypes(light(agent,physobj)).

% event LightWith(agent,physobj,physobj)
 %  event(lightWith(agent,physobj,physobj)).
==> mpred_prop(lightWith(agent,physobj,physobj),event).
==> meta_argtypes(lightWith(agent,physobj,physobj)).

% event PutOut(agent,physobj)
 %  event(putOut(agent,physobj)).
==> mpred_prop(putOut(agent,physobj),event).
==> meta_argtypes(putOut(agent,physobj)).

% event BlowOut(agent,physobj)
 %  event(blowOut(agent,physobj)).
==> mpred_prop(blowOut(agent,physobj),event).
==> meta_argtypes(blowOut(agent,physobj)).

% fluent IsBurning(physobj)
 %  fluent(isBurning(physobj)).
==> mpred_prop(isBurning(physobj),fluent).
==> meta_argtypes(isBurning(physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:19
% [agent,physobj1,physobj2,time]
% HoldsAt(IsBurning(physobj2),time) ->
% Initiates(LightWith(agent,physobj1,physobj2),
%           IsBurning(physobj1),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:23
axiom(initiates(lightWith(Agent, Physobj1, Physobj2), isBurning(Physobj1), Time),
    [holds_at(isBurning(Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:25
% [agent,physobj1,physobj2,time]
% Happens(LightWith(agent,physobj1,physobj2),time) ->
% HoldsAt(Holding(agent,physobj1),time) &
% HoldsAt(Holding(agent,physobj2),time) &
% !HoldsAt(IsBurning(physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:29
axiom(requires(lightWith(Agent, Physobj1, Physobj2), Time),
   
    [ holds_at(holding(Agent, Physobj1), Time),
      holds_at(holding(Agent, Physobj2), Time),
      not(holds_at(isBurning(Physobj1), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:31
% [agent,physobj,time]
% Initiates(Light(agent,physobj),
%           IsBurning(physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:34
axiom(initiates(light(Agent, Physobj), isBurning(Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:36
% [agent,physobj,time]
% Happens(Light(agent,physobj),time) ->
% HoldsAt(Holding(agent,physobj),time) &
% !HoldsAt(IsBurning(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:39
axiom(requires(light(Agent, Physobj), Time),
   
    [ holds_at(holding(Agent, Physobj), Time),
      not(holds_at(isBurning(Physobj), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:41
% [agent,physobj,time]
% Terminates(PutOut(agent,physobj),
%            IsBurning(physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:44
axiom(terminates(putOut(Agent, Physobj), isBurning(Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:46
% [agent,physobj,time]
% Happens(PutOut(agent,physobj),time) ->
% HoldsAt(Holding(agent,physobj),time) &
% HoldsAt(IsBurning(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:49
axiom(requires(putOut(Agent, Physobj), Time),
   
    [ holds_at(holding(Agent, Physobj), Time),
      holds_at(isBurning(Physobj), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:51
% [agent,physobj,time]
% Terminates(BlowOut(agent,physobj),
%            IsBurning(physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:54
axiom(terminates(blowOut(Agent, Physobj), isBurning(Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:56
% [agent,physobj,time]
% Happens(BlowOut(agent,physobj),time) ->
% HoldsAt(Holding(agent,physobj),time) &
% HoldsAt(IsBurning(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:59
axiom(requires(blowOut(Agent, Physobj), Time),
   
    [ holds_at(holding(Agent, Physobj), Time),
      holds_at(isBurning(Physobj), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SmallFire.e:61
%; End of file.
