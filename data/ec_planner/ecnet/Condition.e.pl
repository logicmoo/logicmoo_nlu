:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Condition.e').


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:0
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
%; human health

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:12
% fluent Alive(agent)
 %  fluent(alive(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:13
==> mpred_prop(alive(agent),fluent).
==> meta_argtypes(alive(agent)).

% fluent Dead(agent)
 %  fluent(dead(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:15
==> mpred_prop(dead(agent),fluent).
==> meta_argtypes(dead(agent)).

% noninertial Dead
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:16
==> noninertial(dead).

% fluent Injured(agent)
 %  fluent(injured(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:18
==> mpred_prop(injured(agent),fluent).
==> meta_argtypes(injured(agent)).

% event Kill(object,agent)
 %  event(kill(object,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:20
==> mpred_prop(kill(object,agent),event).
==> meta_argtypes(kill(object,agent)).

% event Injure(object,agent)
 %  event(injure(object,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:21
==> mpred_prop(injure(object,agent),event).
==> meta_argtypes(injure(object,agent)).

% event HealInjured(agent)
 %  event(healInjured(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:22
==> mpred_prop(healInjured(agent),event).
==> meta_argtypes(healInjured(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:23
% [agent,time]
 % HoldsAt(Alive(agent),time) <-> !HoldsAt(Dead(agent),time).

 /*  holds_at(alive(Agent), Time) <->
       not(holds_at(dead(Agent), Time)).
 */
axiom(holds_at(alive(Agent), Time),
    [not(holds_at(dead(Agent), Time))]).
axiom(not(holds_at(dead(Agent), Time)),
    [holds_at(alive(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:24
% [agent,time]
 % HoldsAt(Injured(agent),time) -> HoldsAt(Alive(agent),time).
axiom(holds_at(alive(Agent), Time),
    [holds_at(injured(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:26
% [object,agent,time]
% Terminates(Kill(object,agent),Alive(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:27
axiom(terminates(kill(Object, Agent), alive(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:29
% [object,agent,time]
% Initiates(Injure(object,agent),Injured(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:30
axiom(initiates(injure(Object, Agent), injured(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:32
% [agent,time]
% Terminates(HealInjured(agent),Injured(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:33
axiom(terminates(healInjured(Agent), injured(Agent), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:35
% fluent Intact(physobj)
 %  fluent(intact(physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:36
==> mpred_prop(intact(physobj),fluent).
==> meta_argtypes(intact(physobj)).

% fluent Damaged(physobj)
 %  fluent(damaged(physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:38
==> mpred_prop(damaged(physobj),fluent).
==> meta_argtypes(damaged(physobj)).

% fluent Destroyed(physobj)
 %  fluent(destroyed(physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:40
==> mpred_prop(destroyed(physobj),fluent).
==> meta_argtypes(destroyed(physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:41
%; At any time, a physical object is either intact, damaged, or destroyed:

% xor Intact, Damaged, Destroyed
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:43
xor([intact,damaged,destroyed]).

% event Damage(object,physobj)
 %  event(damage(object,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:45
==> mpred_prop(damage(object,physobj),event).
==> meta_argtypes(damage(object,physobj)).

% event Destroy(object,physobj)
 %  event(destroy(object,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:47
==> mpred_prop(destroy(object,physobj),event).
==> meta_argtypes(destroy(object,physobj)).

% event Repair(object,physobj)
 %  event(repair(object,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:49
==> mpred_prop(repair(object,physobj),event).
==> meta_argtypes(repair(object,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:50
% [object,physobj,time]
% Happens(Damage(object,physobj),time) ->
% HoldsAt(Intact(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:52
axiom(requires(damage(Object, Physobj), Time),
    [holds_at(intact(Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:54
% [object,physobj,time]
% Initiates(Damage(object,physobj),Damaged(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:55
axiom(initiates(damage(Object, Physobj), damaged(Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:57
% [object,physobj,time]
% Terminates(Damage(object,physobj),Intact(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:58
axiom(terminates(damage(Object, Physobj), intact(Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:60
% [object,physobj,time]
% Happens(Destroy(object,physobj),time) ->
% (HoldsAt(Intact(physobj),time)|
%  HoldsAt(Damaged(physobj),time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:63
axiom(requires(destroy(Object, Physobj), Time),
    [holds_at(intact(Physobj), Time)]).
axiom(requires(destroy(Object, Physobj), Time),
    [holds_at(damaged(Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:65
% [object,physobj,time]
% Initiates(Destroy(object,physobj),Destroyed(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:66
axiom(initiates(destroy(Object, Physobj), destroyed(Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:68
% [object,physobj,time]
% Terminates(Destroy(object,physobj),Intact(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:69
axiom(terminates(destroy(Object, Physobj), intact(Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:71
% [object,physobj,time]
% Terminates(Destroy(object,physobj),Damaged(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:72
axiom(terminates(destroy(Object, Physobj), damaged(Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:74
% [object,physobj,time]
% Initiates(Repair(object,physobj),Intact(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:75
axiom(initiates(repair(Object, Physobj), intact(Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Condition.e:77
%; end of file.
