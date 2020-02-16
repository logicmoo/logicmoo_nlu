:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/AkmanEtAl2004/ZooTest6.e').
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
%; @article{Akman:2004,
%;   author = "Varol Akman and Selim T. Erdogan and Joohyung Lee and Vladimir Lifschitz and Hudson Turner",
%;   year = "2004",
%;   title = "Representing the zoo world and the traffic world in the language of the causal calculator",
%;   journal = "Artificial Intelligence",
%;   volume = "153",
%;   pages = "105--140",
%; }
%;

% option encoding 3
:- set_ec_option(encoding, 3).

% load foundations/Root.e

% load foundations/EC.e

% load examples/AkmanEtAl2004/ZooWorld.e

% human Homer
==> t(human,homer).

% elephant Jumbo
==> t(elephant,jumbo).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:29
% Species(Homer)=HumanSpecies.
species(homer,humanSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:30
% Adult(Homer).
adult(homer).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:31
% Species(Jumbo)=ElephantSpecies.
species(jumbo,elephantSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:32
% Adult(Jumbo).
adult(jumbo).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:34
% HoldsAt(Mounted(Homer,Jumbo),0).
axiom(initially(mounted(homer, jumbo)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:35
% HoldsAt(Pos(Jumbo,1),0).
axiom(initially(pos(jumbo, 1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:36
% Happens(ThrowOff(Jumbo,Homer),0).
axiom(happens(throwOff(jumbo, homer), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:38
% option manualrelease on
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:39
:- set_ec_option(manualrelease, on).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:39
% [human, animal]
 % !ReleasedAt(Mounted(human, animal),0).
 %  not(releasedAt(mounted(Human,Animal),0)).
axiom(not(releasedAt(mounted(Mounted_Param, Mounted_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:40
% [gate]
 % !ReleasedAt(Opened(gate),0).
 %  not(releasedAt(opened(Gate),0)).
axiom(not(releasedAt(opened(Opened_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:41
% [position]
 % ReleasedAt(Pos(Homer,position),0).
releasedAt(pos(homer,Position),0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:42
% [position]
 % !ReleasedAt(Pos(Jumbo,position),0).
 %  not(releasedAt(pos(jumbo,Position),0)).
axiom(not(releasedAt(pos(jumbo, Pos_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:44
% [human]
 % HoldsAt(PosDeterminingFluent(human,1),1).
holds_at(posDeterminingFluent(Human,1),1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:45
% [event,animal]
 % !HoldsAt(DoneBy(event,animal),1).
 %  not(holds_at(doneBy(Event,Animal),1)).
axiom(not(holds_at(doneBy(DoneBy_Param, DoneBy_Ret), start)),
    [b(t, start), ignore(t+1=start)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:47
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:48
==> range(time,0,1).

% range position 1 8
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:49
==> range(position,1,8).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest6.e:50
==> range(offset,0,0).
%; End of file.
