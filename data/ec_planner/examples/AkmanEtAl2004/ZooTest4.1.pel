:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/AkmanEtAl2004/ZooTest4.1.e').
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:29
% Species(Homer)=HumanSpecies.
species(homer,humanSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:30
% Adult(Homer).
adult(homer).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:31
% Species(Jumbo)=ElephantSpecies.
species(jumbo,elephantSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:32
% Adult(Jumbo).
adult(jumbo).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:34
% !HoldsAt(Opened(GateAO),0).
 %  not(initially(opened(gateAO))).
axiom(not(initially(opened(gateAO))),
    []).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:35
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:35
% HoldsAt(Pos(Homer,position),0) & Outside=Loc(position).

 /*   exists([Position],
              (holds_at(pos(homer, Position), 0), outside=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_65')) :-
       (   not(holds_at(pos(homer, Some_Param), 0))
       ;   not(equals(outside, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_65')),
    [not(holds_at(pos(homer, Some_Param), t))]).
axiom(not(some(Some_Param, '$kolem_Fn_65')),
    [not(equals(outside, loc(Some_Param)))]).

 /*  holds_at(pos(homer, Some_Param3), 0) :-
       some(Some_Param3, '$kolem_Fn_65').
 */
axiom(holds_at(pos(homer, Some_Param3), t),
    [some(Some_Param3, '$kolem_Fn_65')]).

 /*  equals(outside, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_65').
 */
axiom(equals(outside, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_65')]).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:36
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:36
% HoldsAt(Pos(Jumbo,position),0) & CageA=Loc(position).

 /*   exists([Position],
              (holds_at(pos(jumbo, Position), 0), cageA=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_66')) :-
       (   not(holds_at(pos(jumbo, Some_Param), 0))
       ;   not(equals(cageA, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_66')),
    [not(holds_at(pos(jumbo, Some_Param), t))]).
axiom(not(some(Some_Param, '$kolem_Fn_66')),
    [not(equals(cageA, loc(Some_Param)))]).

 /*  holds_at(pos(jumbo, Some_Param3), 0) :-
       some(Some_Param3, '$kolem_Fn_66').
 */
axiom(holds_at(pos(jumbo, Some_Param3), t),
    [some(Some_Param3, '$kolem_Fn_66')]).

 /*  equals(cageA, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_66').
 */
axiom(equals(cageA, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_66')]).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:38
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:38
% HoldsAt(Pos(Homer,position),4) & CageA=Loc(position).

 /*   exists([Position],
              (holds_at(pos(homer, Position), 4), cageA=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_67')) :-
       (   not(holds_at(pos(homer, Some_Param), 4))
       ;   not(equals(cageA, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_67')),
    [not(holds_at(pos(homer, Some_Param), t4)), b(t, t4), ignore(t+4=t4)]).
axiom(not(some(Some_Param, '$kolem_Fn_67')),
    [not(equals(cageA, loc(Some_Param)))]).

 /*  holds_at(pos(homer, Some_Param3), 4) :-
       some(Some_Param3, '$kolem_Fn_67').
 */
axiom(holds_at(pos(homer, Some_Param3), t4),
    [some(Some_Param3, '$kolem_Fn_67'), b(t, t4), ignore(t+4=t4)]).

 /*  equals(cageA, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_67').
 */
axiom(equals(cageA, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_67')]).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:39
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:39
% HoldsAt(Pos(Jumbo,position),4) & Outside=Loc(position).

 /*   exists([Position],
              (holds_at(pos(jumbo, Position), 4), outside=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_68')) :-
       (   not(holds_at(pos(jumbo, Some_Param), 4))
       ;   not(equals(outside, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_68')),
    [not(holds_at(pos(jumbo, Some_Param), t4)), b(t, t4), ignore(t+4=t4)]).
axiom(not(some(Some_Param, '$kolem_Fn_68')),
    [not(equals(outside, loc(Some_Param)))]).

 /*  holds_at(pos(jumbo, Some_Param3), 4) :-
       some(Some_Param3, '$kolem_Fn_68').
 */
axiom(holds_at(pos(jumbo, Some_Param3), t4),
    [some(Some_Param3, '$kolem_Fn_68'), b(t, t4), ignore(t+4=t4)]).

 /*  equals(outside, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_68').
 */
axiom(equals(outside, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_68')]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:41
% [human]
 % HoldsAt(PosDeterminingFluent(human,1),4).
holds_at(posDeterminingFluent(Human,1),4).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:42
% [event,animal]
 % !HoldsAt(DoneBy(event,animal),4).
 %  not(holds_at(doneBy(Event,Animal),4)).
axiom(not(holds_at(doneBy(DoneBy_Param, DoneBy_Ret), t4)),
    [b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:44
%; ccalc.2.0b.8.3 single model
%;HoldsAt(Pos(Homer,7),0).
%;HoldsAt(Pos(Jumbo,2),0).
%;Happens(Move(Jumbo,4),0).
%;Happens(Open(Homer,GateAO),0).
%;Happens(Mount(Homer,Jumbo),1).
%;Happens(ThrowOff(Jumbo,Homer),2).
%;HoldsAt(PosDeterminingFluent(Homer,1),2).
%;Happens(Move(Jumbo,7),3).
%;Happens(Mount(Homer,Jumbo),3).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:55
% range time 0 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:56
==> range(time,0,4).

% range position 1 8
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:57
==> range(position,1,8).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest4.1.e:58
==> range(offset,0,0).
%; End of file.
