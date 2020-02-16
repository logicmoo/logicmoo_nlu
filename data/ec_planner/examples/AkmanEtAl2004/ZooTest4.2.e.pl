:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/AkmanEtAl2004/ZooTest4.2.e').
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:29
% Species(Homer)=HumanSpecies.
species(homer,humanSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:30
% Adult(Homer).
adult(homer).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:31
% Species(Jumbo)=ElephantSpecies.
species(jumbo,elephantSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:32
% Adult(Jumbo).
adult(jumbo).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:34
% !HoldsAt(Opened(GateAO),0).
 %  not(initially(opened(gateAO))).
axiom(not(initially(opened(gateAO))),
    []).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:35
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:35
% HoldsAt(Pos(Homer,position),0) & Outside=Loc(position).

 /*   exists([Position],
              (holds_at(pos(homer, Position), 0), outside=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_69')) :-
       (   not(holds_at(pos(homer, Some_Param), 0))
       ;   not(equals(outside, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_69')),
    [not(holds_at(pos(homer, Some_Param), t))]).
axiom(not(some(Some_Param, '$kolem_Fn_69')),
    [not(equals(outside, loc(Some_Param)))]).

 /*  holds_at(pos(homer, Some_Param3), 0) :-
       some(Some_Param3, '$kolem_Fn_69').
 */
axiom(holds_at(pos(homer, Some_Param3), t),
    [some(Some_Param3, '$kolem_Fn_69')]).

 /*  equals(outside, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_69').
 */
axiom(equals(outside, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_69')]).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:36
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:36
% HoldsAt(Pos(Jumbo,position),0) & CageA=Loc(position).

 /*   exists([Position],
              (holds_at(pos(jumbo, Position), 0), cageA=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_70')) :-
       (   not(holds_at(pos(jumbo, Some_Param), 0))
       ;   not(equals(cageA, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_70')),
    [not(holds_at(pos(jumbo, Some_Param), t))]).
axiom(not(some(Some_Param, '$kolem_Fn_70')),
    [not(equals(cageA, loc(Some_Param)))]).

 /*  holds_at(pos(jumbo, Some_Param3), 0) :-
       some(Some_Param3, '$kolem_Fn_70').
 */
axiom(holds_at(pos(jumbo, Some_Param3), t),
    [some(Some_Param3, '$kolem_Fn_70')]).

 /*  equals(cageA, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_70').
 */
axiom(equals(cageA, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_70')]).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:38
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:38
% HoldsAt(Pos(Homer,position),5) & CageA=Loc(position).

 /*   exists([Position],
              (holds_at(pos(homer, Position), 5), cageA=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_71')) :-
       (   not(holds_at(pos(homer, Some_Param), 5))
       ;   not(equals(cageA, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_71')),
    [not(holds_at(pos(homer, Some_Param), t5)), b(t, t5), ignore(t+5=t5)]).
axiom(not(some(Some_Param, '$kolem_Fn_71')),
    [not(equals(cageA, loc(Some_Param)))]).

 /*  holds_at(pos(homer, Some_Param3), 5) :-
       some(Some_Param3, '$kolem_Fn_71').
 */
axiom(holds_at(pos(homer, Some_Param3), t5),
    [some(Some_Param3, '$kolem_Fn_71'), b(t, t5), ignore(t+5=t5)]).

 /*  equals(cageA, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_71').
 */
axiom(equals(cageA, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_71')]).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:39
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:39
% HoldsAt(Pos(Jumbo,position),5) & Outside=Loc(position).

 /*   exists([Position],
              (holds_at(pos(jumbo, Position), 5), outside=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_72')) :-
       (   not(holds_at(pos(jumbo, Some_Param), 5))
       ;   not(equals(outside, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_72')),
    [not(holds_at(pos(jumbo, Some_Param), t5)), b(t, t5), ignore(t+5=t5)]).
axiom(not(some(Some_Param, '$kolem_Fn_72')),
    [not(equals(outside, loc(Some_Param)))]).

 /*  holds_at(pos(jumbo, Some_Param3), 5) :-
       some(Some_Param3, '$kolem_Fn_72').
 */
axiom(holds_at(pos(jumbo, Some_Param3), t5),
    [some(Some_Param3, '$kolem_Fn_72'), b(t, t5), ignore(t+5=t5)]).

 /*  equals(outside, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_72').
 */
axiom(equals(outside, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_72')]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:41
% [animal,time]
 % !HoldsAt(Mounted(Homer,animal),time).
 %  not(holds_at(mounted(homer,Animal),Time)).
axiom(not(holds_at(mounted(homer, Mounted_Ret), Time2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:43
% [human]
 % HoldsAt(PosDeterminingFluent(human,1),5).
holds_at(posDeterminingFluent(Human,1),5).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:44
% [event,animal]
 % !HoldsAt(DoneBy(event,animal),5).
 %  not(holds_at(doneBy(Event,Animal),5)).
axiom(not(holds_at(doneBy(DoneBy_Param, DoneBy_Ret), t5)),
    [b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:46
%;HoldsAt(Pos(Homer,7),0).
%;HoldsAt(Pos(Jumbo,4),0).
%;Happens(Move(Jumbo,3),0).
%;Happens(Open(Homer,GateAO),0).
%;Happens(Move(Homer,4),1).
%;Happens(Move(Jumbo,1),1).
%;Happens(Move(Jumbo,3),2).
%;Happens(Mount(Homer,Jumbo),2).
%;Happens(Move(Jumbo,4),3).
%;!Happens(Move(Homer,2),3).
%;Happens(Move(Jumbo,7),4).
%;!Happens(Mount(Homer,Jumbo),3).
%;!Happens(Mount(Homer,Jumbo),4).
%;[position] !Happens(Move(Homer,position),4).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:61
% range time 0 5
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:62
==> range(time,0,5).

% range position 1 8
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:63
==> range(position,1,8).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:64
==> range(offset,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.2.e:66
==> completion(happens).
%; End of file.
