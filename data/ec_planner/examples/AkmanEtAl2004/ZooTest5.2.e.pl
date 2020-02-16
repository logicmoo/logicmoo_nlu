:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/AkmanEtAl2004/ZooTest5.2.e').
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

% horse Silver
==> t(horse,silver).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:30
% Species(Homer)=HumanSpecies.
species(homer,humanSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:31
% Adult(Homer).
adult(homer).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:32
% Species(Jumbo)=ElephantSpecies.
species(jumbo,elephantSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:33
% Adult(Jumbo).
adult(jumbo).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:34
% Species(Silver)=HorseSpecies.
species(silver,horseSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:35
% Adult(Silver).
adult(silver).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:37
% {position}


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:38
% !HoldsAt(Pos(Homer,position),0) &
% HoldsAt(Pos(Jumbo,position),0) &
% HoldsAt(Pos(Homer,position),1) &
% !HoldsAt(Pos(Jumbo,position),1).

 /*   exists([Position],
              (not(holds_at(pos(homer, Position), 0)), holds_at(pos(jumbo, Position), 0), holds_at(pos(homer, Position), 1), not(holds_at(pos(jumbo, Position), 1)))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_74')) :-
       (   holds_at(pos(homer, Some_Param), 0)
       ;   not(holds_at(pos(jumbo, Some_Param), 0))
       ;   not(holds_at(pos(homer, Some_Param), 1))
       ;   holds_at(pos(jumbo, Some_Param), 1)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:41
axiom(not(some(Some_Param, '$kolem_Fn_74')),
    [holds_at(pos(homer, Some_Param), t)]).
axiom(not(some(Some_Param, '$kolem_Fn_74')),
    [not(holds_at(pos(jumbo, Some_Param), t))]).
axiom(not(some(Some_Param, '$kolem_Fn_74')),
   
    [ not(holds_at(pos(homer, Some_Param), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_74')),
    [holds_at(pos(jumbo, Some_Param), start), b(t, start), ignore(t+1=start)]).

 /*  not(holds_at(pos(homer, Some_Param3), 0)) :-
       some(Some_Param3, '$kolem_Fn_74').
 */
axiom(not(holds_at(pos(homer, Some_Param3), t)),
    [some(Some_Param3, '$kolem_Fn_74')]).

 /*  holds_at(pos(jumbo, Some_Param4), 0) :-
       some(Some_Param4, '$kolem_Fn_74').
 */
axiom(holds_at(pos(jumbo, Some_Param4), t),
    [some(Some_Param4, '$kolem_Fn_74')]).

 /*  holds_at(pos(homer, Some_Param5), 1) :-
       some(Some_Param5, '$kolem_Fn_74').
 */
axiom(holds_at(pos(homer, Some_Param5), start),
    [some(Some_Param5, '$kolem_Fn_74'), b(t, start), ignore(t+1=start)]).

 /*  not(holds_at(pos(jumbo, Some_Param6), 1)) :-
       some(Some_Param6, '$kolem_Fn_74').
 */
axiom(not(holds_at(pos(jumbo, Some_Param6), start)),
    [some(Some_Param6, '$kolem_Fn_74'), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:42
% [animal,time]
 % !Happens(ThrowOff(animal,Homer),time).
 %  not(happens(throwOff(Animal,homer),Time)).
axiom(not(happens(throwOff(ThrowOff_Param, homer), Maptime)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:44
% [human]
 % HoldsAt(PosDeterminingFluent(human,1),1).
holds_at(posDeterminingFluent(Human,1),1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:45
% [event,animal]
 % !HoldsAt(DoneBy(event,animal),1).
 %  not(holds_at(doneBy(Event,Animal),1)).
axiom(not(holds_at(doneBy(DoneBy_Param, DoneBy_Ret), start)),
    [b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:47
%;HoldsAt(Opened(GateAO),0).
%;HoldsAt(Pos(Homer,3),0).
%;HoldsAt(Pos(Jumbo,2),0).
%;HoldsAt(Pos(Silver,7),0).
%;Happens(Move(Jumbo,4),0).
%;Happens(Move(Silver,8),0).
%;Happens(Mount(Homer,Jumbo),0).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:55
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:56
==> range(time,0,1).

% range position 1 8
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:57
==> range(position,1,8).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest5.2.e:58
==> range(offset,0,0).
%; End of file.
