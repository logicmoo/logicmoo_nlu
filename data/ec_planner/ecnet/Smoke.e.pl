:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Smoke.e').
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
%; Smoking: smoking cigarettes and cigars
%;

% fluent CraveNicotine(agent)
 %  fluent(craveNicotine(agent)).
==> mpred_prop(craveNicotine(agent),fluent).
==> meta_argtypes(craveNicotine(agent)).

% fluent NicotineCravingSatisfied(agent)
 %  fluent(nicotineCravingSatisfied(agent)).
==> mpred_prop(nicotineCravingSatisfied(agent),fluent).
==> meta_argtypes(nicotineCravingSatisfied(agent)).

% noninertial NicotineCravingSatisfied
==> noninertial(nicotineCravingSatisfied).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:18
% [agent,time]
% HoldsAt(CraveNicotine(agent),time) <->
% !HoldsAt(NicotineCravingSatisfied(agent),time).

 /*  holds_at(craveNicotine(Agent), Time) <->
       not(holds_at(nicotineCravingSatisfied(Agent), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:20
axiom(holds_at(craveNicotine(Agent), Time),
    [not(holds_at(nicotineCravingSatisfied(Agent), Time))]).
axiom(not(holds_at(nicotineCravingSatisfied(Agent), Time)),
    [holds_at(craveNicotine(Agent), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:22
% event Smoke(agent,cigarette)
 %  event(smoke(agent,cigarette)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:23
==> mpred_prop(smoke(agent,cigarette),event).
==> meta_argtypes(smoke(agent,cigarette)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:24
% [agent,cigarette,time]
% Happens(Smoke(agent,cigarette),time) ->
% HoldsAt(Holding(agent,cigarette),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:26
axiom(requires(smoke(Agent, Cigarette), Time),
    [holds_at(holding(Agent, Cigarette), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:28
% [agent,cigarette,time]
% Terminates(Smoke(agent,cigarette),CraveNicotine(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:29
axiom(terminates(smoke(Agent, Cigarette), craveNicotine(Agent), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:31
% event Puff(agent,cigarette)
 %  event(puff(agent,cigarette)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:32
==> mpred_prop(puff(agent,cigarette),event).
==> meta_argtypes(puff(agent,cigarette)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:33
% [agent,cigarette,time]
% Happens(Puff(agent,cigarette),time) ->
% Happens(Smoke(agent,cigarette),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:35
axiom(happens(smoke(Agent, Cigarette), Time),
    [happens(puff(Agent, Cigarette), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:37
% event BlowOutSmoke(agent,smoke)
 %  event(blowOutSmoke(agent,smoke)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:38
==> mpred_prop(blowOutSmoke(agent,smoke),event).
==> meta_argtypes(blowOutSmoke(agent,smoke)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoke.e:39
%; End of file.
