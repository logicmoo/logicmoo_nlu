:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/AkmanEtAl2004/ZooTest3.e').
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

% dog Snoopy
==> t(dog,snoopy).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:29
% Species(Homer)=HumanSpecies.
species(homer,humanSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:30
% Adult(Homer).
adult(homer).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:31
% Species(Snoopy)=DogSpecies.
species(snoopy,dogSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:32
% Adult(Snoopy).
adult(snoopy).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:34
% !HoldsAt(Opened(GateAO),0).
 %  not(initially(opened(gateAO))).
axiom(not(initially(opened(gateAO))),
    []).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:35
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:35
% HoldsAt(Pos(Homer,position),0) & Outside=Loc(position).

 /*   exists([Position],
              (holds_at(pos(homer, Position), 0), outside=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_61')) :-
       (   not(holds_at(pos(homer, Some_Param), 0))
       ;   not(equals(outside, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_61')),
    [not(holds_at(pos(homer, Some_Param), t))]).
axiom(not(some(Some_Param, '$kolem_Fn_61')),
    [not(equals(outside, loc(Some_Param)))]).

 /*  holds_at(pos(homer, Some_Param3), 0) :-
       some(Some_Param3, '$kolem_Fn_61').
 */
axiom(holds_at(pos(homer, Some_Param3), t),
    [some(Some_Param3, '$kolem_Fn_61')]).

 /*  equals(outside, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_61').
 */
axiom(equals(outside, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_61')]).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:36
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:36
% HoldsAt(Pos(Snoopy,position),0) & CageA=Loc(position).

 /*   exists([Position],
              (holds_at(pos(snoopy, Position), 0), cageA=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_62')) :-
       (   not(holds_at(pos(snoopy, Some_Param), 0))
       ;   not(equals(cageA, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_62')),
    [not(holds_at(pos(snoopy, Some_Param), t))]).
axiom(not(some(Some_Param, '$kolem_Fn_62')),
    [not(equals(cageA, loc(Some_Param)))]).

 /*  holds_at(pos(snoopy, Some_Param3), 0) :-
       some(Some_Param3, '$kolem_Fn_62').
 */
axiom(holds_at(pos(snoopy, Some_Param3), t),
    [some(Some_Param3, '$kolem_Fn_62')]).

 /*  equals(cageA, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_62').
 */
axiom(equals(cageA, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_62')]).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:38
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:38
% HoldsAt(Pos(Homer,position),2) & CageA=Loc(position).

 /*   exists([Position],
              (holds_at(pos(homer, Position), 2), cageA=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_63')) :-
       (   not(holds_at(pos(homer, Some_Param), 2))
       ;   not(equals(cageA, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_63')),
    [not(holds_at(pos(homer, Some_Param), t2)), b(t, t2), ignore(t+2=t2)]).
axiom(not(some(Some_Param, '$kolem_Fn_63')),
    [not(equals(cageA, loc(Some_Param)))]).

 /*  holds_at(pos(homer, Some_Param3), 2) :-
       some(Some_Param3, '$kolem_Fn_63').
 */
axiom(holds_at(pos(homer, Some_Param3), t2),
    [some(Some_Param3, '$kolem_Fn_63'), b(t, t2), ignore(t+2=t2)]).

 /*  equals(cageA, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_63').
 */
axiom(equals(cageA, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_63')]).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:39
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:39
% HoldsAt(Pos(Snoopy,position),2) & Outside=Loc(position).

 /*   exists([Position],
              (holds_at(pos(snoopy, Position), 2), outside=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_64')) :-
       (   not(holds_at(pos(snoopy, Some_Param), 2))
       ;   not(equals(outside, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_64')),
    [not(holds_at(pos(snoopy, Some_Param), t2)), b(t, t2), ignore(t+2=t2)]).
axiom(not(some(Some_Param, '$kolem_Fn_64')),
    [not(equals(outside, loc(Some_Param)))]).

 /*  holds_at(pos(snoopy, Some_Param3), 2) :-
       some(Some_Param3, '$kolem_Fn_64').
 */
axiom(holds_at(pos(snoopy, Some_Param3), t2),
    [some(Some_Param3, '$kolem_Fn_64'), b(t, t2), ignore(t+2=t2)]).

 /*  equals(outside, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_64').
 */
axiom(equals(outside, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_64')]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:41
% [human]
 % HoldsAt(PosDeterminingFluent(human,1),2).
holds_at(posDeterminingFluent(Human,1),2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:42
% [event,animal]
 % !HoldsAt(DoneBy(event,animal),2).
 %  not(holds_at(doneBy(Event,Animal),2)).
axiom(not(holds_at(doneBy(DoneBy_Param, DoneBy_Ret), t2)),
    [b(t, t2), ignore(t+2=t2)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:44
% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:45
==> range(time,0,2).

% range position 1 8
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:46
==> range(position,1,8).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest3.e:47
==> range(offset,0,0).
%; End of file.
