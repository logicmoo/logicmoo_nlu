:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/GiunchigliaEtAl2004/MonkeyPlanning.e').
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
%; @article{Giunchiglia:2004,
%;   author = "Enrico Giunchiglia and Joohyung Lee and Vladimir Lifschitz and Norman C. McCain and Hudson Turner",
%;   year = "2004",
%;   title = "Nonmonotonic causal theories",
%;   journal = "Artificial Intelligence",
%;   volume = "153",
%;   pages = "49--104",
%; }
%;
%; planning

% load foundations/Root.e

% load foundations/EC.e

% load examples/GiunchigliaEtAl2004/MonkeyBananas.e


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPlanning.e:26
% HoldsAt(At(Monkey,L1),0).
axiom(initially(at(monkey, l1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPlanning.e:27
% HoldsAt(At(Bananas,L2),0).
axiom(initially(at(bananas, l2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPlanning.e:28
% HoldsAt(At(Box,L3),0).
axiom(initially(at(box, l3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPlanning.e:29
% HoldsAt(HasBananas(),4).
holds_at(hasBananas(),4).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPlanning.e:31
%; PLAN Happens(Walk(L3),0).
%; PLAN Happens(PushBox(L2),1).
%; PLAN Happens(ClimbOn(),2).
%; PLAN Happens(GraspBananas(),3).
%; one event at a time
% [event1,event2,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPlanning.e:37
% Happens(event1,time) & Happens(event2,time) ->
% event1=event2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPlanning.e:38
axiom(Event1=Event2,
    [happens(Event1, Time), happens(Event2, Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPlanning.e:40
% range time 0 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPlanning.e:41
==> range(time,0,4).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPlanning.e:42
==> range(offset,0,0).
%; End of file.
