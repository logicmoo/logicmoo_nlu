:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Bomb.e').
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
%; bomb
%; agent is nondeterministically killed.

% fluent KilledDeterminingFluent(agent)
 %  fluent(killedDeterminingFluent(agent)).
==> mpred_prop(killedDeterminingFluent(agent),fluent).
==> meta_argtypes(killedDeterminingFluent(agent)).

% noninertial KilledDeterminingFluent
==> noninertial(killedDeterminingFluent).
%; agent is nondeterministically injured.

% fluent InjuredDeterminingFluent(agent)
 %  fluent(injuredDeterminingFluent(agent)).
==> mpred_prop(injuredDeterminingFluent(agent),fluent).
==> meta_argtypes(injuredDeterminingFluent(agent)).

% noninertial InjuredDeterminingFluent
==> noninertial(injuredDeterminingFluent).
%; physobj is nondeterministically destroyed.

% fluent DestroyedDeterminingFluent(physobj)
 %  fluent(destroyedDeterminingFluent(physobj)).
==> mpred_prop(destroyedDeterminingFluent(physobj),fluent).
==> meta_argtypes(destroyedDeterminingFluent(physobj)).

% noninertial DestroyedDeterminingFluent
==> noninertial(destroyedDeterminingFluent).
%; physobj is nondeterministically damaged.

% fluent DamagedDeterminingFluent(physobj)
 %  fluent(damagedDeterminingFluent(physobj)).
==> mpred_prop(damagedDeterminingFluent(physobj),fluent).
==> meta_argtypes(damagedDeterminingFluent(physobj)).

% noninertial DamagedDeterminingFluent
==> noninertial(damagedDeterminingFluent).
%; agent activates bomb.

% event BombActivate(agent,bomb)
 %  event(bombActivate(agent,bomb)).
==> mpred_prop(bombActivate(agent,bomb),event).
==> meta_argtypes(bombActivate(agent,bomb)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:31
%; agent deactivates bomb.

% event BombDeactivate(agent,bomb)
 %  event(bombDeactivate(agent,bomb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:33
==> mpred_prop(bombDeactivate(agent,bomb),event).
==> meta_argtypes(bombDeactivate(agent,bomb)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:34
%; bomb explodes.

% event BombExplode(bomb)
 %  event(bombExplode(bomb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:36
==> mpred_prop(bombExplode(bomb),event).
==> meta_argtypes(bombExplode(bomb)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:37
%; bomb is activated.

% fluent BombActivated(bomb)
 %  fluent(bombActivated(bomb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:39
==> mpred_prop(bombActivated(bomb),fluent).
==> meta_argtypes(bombActivated(bomb)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:40
%; The timer value of bomb is offset.

% fluent BombTimerValue(bomb,offset)
 %  fluent(bombTimerValue(bomb,offset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:42
==> mpred_prop(bombTimerValue(bomb,offset),fluent).
==> meta_argtypes(bombTimerValue(bomb,offset)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:43
%; The timer value of bomb is decremented.

% event BombDecrementTimer(bomb)
 %  event(bombDecrementTimer(bomb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:45
==> mpred_prop(bombDecrementTimer(bomb),event).
==> meta_argtypes(bombDecrementTimer(bomb)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:46
%; The time delay of bomb is offset.

% function BombTimeDelay(bomb): offset
 %  functional_predicate(bombTimeDelay(bomb,offset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:48
==> mpred_prop(bombTimeDelay(bomb,offset),functional_predicate).
==> meta_argtypes(bombTimeDelay(bomb,offset)).
resultIsa(bombTimeDelay,offset).
%; A state constraint says that a bomb has one timer
%; value at a time:
% [bomb,offset1,offset2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:52
% HoldsAt(BombTimerValue(bomb,offset1),time) &
% HoldsAt(BombTimerValue(bomb,offset2),time) ->
% offset1=offset2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:54
axiom(Offset1=Offset2,
   
    [ holds_at(bombTimerValue(Bomb, Offset1), Time),
      holds_at(bombTimerValue(Bomb, Offset2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:56
%; An effect axiom states that if a bomb is intact and
%; an agent activates the bomb,
%; the bomb will be activated:
% [agent,bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:60
% HoldsAt(Intact(bomb),time) ->
% Initiates(BombActivate(agent,bomb),
%           BombActivated(bomb),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:63
axiom(initiates(bombActivate(Agent, Bomb), bombActivated(Bomb), Time),
    [holds_at(intact(Bomb), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:65
%; A precondition axiom states that
%; for an agent to activate a bomb,
%; the agent must be holding the bomb:
% [agent,bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:69
% Happens(BombActivate(agent,bomb),time) ->
% HoldsAt(Holding(agent,bomb),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:70
axiom(requires(bombActivate(Agent, Bomb), Time),
    [holds_at(holding(Agent, Bomb), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:72
%; An effect axiom states that if a bomb is intact and
%; an agent deactivates the bomb,
%; the bomb will no longer be activated:
% [agent,bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:76
% HoldsAt(Intact(bomb),time) ->
% Terminates(BombDeactivate(agent,bomb),
%            BombActivated(bomb),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:79
axiom(terminates(bombDeactivate(Agent, Bomb), bombActivated(Bomb), Time),
    [holds_at(intact(Bomb), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:81
%; An axiom states that if a bomb explodes, the
%; bomb destroys the bomb:
% [bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:84
% Happens(BombExplode(bomb),time) ->
% Happens(Destroy(bomb,bomb),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:85
axiom(happens(destroy(Bomb, Bomb), Time),
    [happens(bombExplode(Bomb), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:87
%; An effect axiom states that if a bomb explodes,
%; the bomb is no longer activated:
% [bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:90
% Terminates(BombExplode(bomb),BombActivated(bomb),time).
axiom(terminates(bombExplode(Bomb), bombActivated(Bomb), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:92
%; A trigger axiom states that
%; if a bomb is activated,
%; the timer value of the bomb is a timer value, and
%; the timer value is greater than zero,
%; the timer value of the bomb will be decremented:
% [bomb,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:98
% HoldsAt(BombActivated(bomb),time) &
% HoldsAt(BombTimerValue(bomb,offset),time) &
% (offset > 0) ->
% Happens(BombDecrementTimer(bomb),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:101
axiom(happens(bombDecrementTimer(Bomb), Time),
   
    [ holds_at(bombActivated(Bomb), Time),
      holds_at(bombTimerValue(Bomb, Offset), Time),
      comparison(Offset, 0, >)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:103
%; An effect axiom states that
%; if the timer value of the bomb is a timer value and
%; the timer value of the bomb is decremented,
%; the timer value of the bomb will be the timer value minus one:
% [bomb,offset1,offset2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:108
% HoldsAt(BombTimerValue(bomb,offset1),time) &
% offset2 = offset1-1 ->
% Initiates(BombDecrementTimer(bomb),
%           BombTimerValue(bomb,offset2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:112
axiom(initiates(bombDecrementTimer(Bomb), bombTimerValue(Bomb, Offset2), Time),
   
    [ holds_at(bombTimerValue(Bomb, Offset1), Time),
      equals(Offset2, Offset1-1)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:114
%; An effect axiom states that
%; if the timer value of the bomb is a timer value and
%; the timer value of the bomb is decremented,
%; the timer value of the bomb will no longer be the timer value:
% [bomb,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:119
% HoldsAt(BombTimerValue(bomb,offset),time) ->
% Terminates(BombDecrementTimer(bomb),
%            BombTimerValue(bomb,offset),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:122
axiom(terminates(bombDecrementTimer(Bomb), bombTimerValue(Bomb, Offset), Time),
    [holds_at(bombTimerValue(Bomb, Offset), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:124
%; An effect axiom states that if a bomb explodes,
%; the bomb will no longer be activated:
% [bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:127
% Terminates(BombExplode(bomb),BombActivated(bomb),time).
axiom(terminates(bombExplode(Bomb), bombActivated(Bomb), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:129
%; A trigger axiom states that if the timer value
%; of a bomb is zero, the bomb will explode:
% [bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:132
% HoldsAt(BombTimerValue(bomb,0),time) ->
% Happens(BombExplode(bomb),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:133
axiom(happens(bombExplode(Bomb), Time),
    [holds_at(bombTimerValue(Bomb, 0), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:135
%; An axiom states that if an agent is at a location,
%; a bomb is at the location,
%; the agent is nondeterministically injured, and
%; the bomb explodes, then
%; the bomb will injure the agent:
% [agent,location,bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:141
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(bomb,location),time) &
% HoldsAt(InjuredDeterminingFluent(agent),time) &
% Happens(BombExplode(bomb),time) ->
% Happens(Injure(bomb,agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:145
axiom(happens(injure(Bomb, Agent), Time),
   
    [ holds_at(at(Agent, Location), Time),
      holds_at(at(Bomb, Location), Time),
      holds_at(injuredDeterminingFluent(Agent), Time),
      happens(bombExplode(Bomb), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:147
%; An axiom states that if an agent is at a location,
%; a bomb is at the location,
%; the agent is nondeterministically killed, and
%; the bomb explodes, then
%; the bomb will kill the agent:
% [agent,location,bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:153
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(bomb,location),time) &
% HoldsAt(KilledDeterminingFluent(agent),time) &
% Happens(BombExplode(bomb),time) ->
% Happens(Kill(bomb,agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:157
axiom(happens(kill(Bomb, Agent), Time),
   
    [ holds_at(at(Agent, Location), Time),
      holds_at(at(Bomb, Location), Time),
      holds_at(killedDeterminingFluent(Agent), Time),
      happens(bombExplode(Bomb), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:159
%; An axiom states that if an physical object is at a location,
%; a bomb is at the location,
%; the physical object is nondeterministically damaged, and
%; the bomb explodes, then
%; the bomb will damage the physical object:
% [physobj,location,bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:165
% HoldsAt(At(physobj,location),time) &
% HoldsAt(At(bomb,location),time) &
% HoldsAt(DamagedDeterminingFluent(physobj),time) &
% Happens(BombExplode(bomb),time) ->
% Happens(Damage(bomb,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:169
axiom(happens(damage(Bomb, Physobj), Time),
   
    [ holds_at(at(Physobj, Location), Time),
      holds_at(at(Bomb, Location), Time),
      holds_at(damagedDeterminingFluent(Physobj), Time),
      happens(bombExplode(Bomb), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:171
%; An axiom states that if an physical object is at a location,
%; a bomb is at the location,
%; the physical object is nondeterministically destroyed, and
%; the bomb explodes, then
%; the bomb will destroy the physical object:
% [physobj,location,bomb,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:177
% HoldsAt(At(physobj,location),time) &
% HoldsAt(At(bomb,location),time) &
% HoldsAt(DestroyedDeterminingFluent(physobj),time) &
% Happens(BombExplode(bomb),time) ->
% Happens(Destroy(bomb,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:181
axiom(happens(destroy(Bomb, Physobj), Time),
   
    [ holds_at(at(Physobj, Location), Time),
      holds_at(at(Bomb, Location), Time),
      holds_at(destroyedDeterminingFluent(Physobj), Time),
      happens(bombExplode(Bomb), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Bomb.e:183
%; End of file.
