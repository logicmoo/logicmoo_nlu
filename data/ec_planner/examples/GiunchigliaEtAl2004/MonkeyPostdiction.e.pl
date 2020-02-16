:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/GiunchigliaEtAl2004/MonkeyPostdiction.e').
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
%; postdiction

% load foundations/Root.e

% load foundations/EC.e

% load examples/GiunchigliaEtAl2004/MonkeyBananas.e


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPostdiction.e:26
% HoldsAt(At(Monkey,L1),0).
axiom(initially(at(monkey, l1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPostdiction.e:27
% HoldsAt(At(Bananas,L2),0).
axiom(initially(at(bananas, l2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPostdiction.e:28
% Happens(Walk(L3),0).
axiom(happens(walk(l3), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPostdiction.e:29
% Happens(PushBox(L2),1).
axiom(happens(pushBox(l2), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPostdiction.e:31
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPostdiction.e:32
==> completion(happens).

% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPostdiction.e:34
==> range(time,0,2).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyPostdiction.e:35
==> range(offset,0,0).
%; End of file.
