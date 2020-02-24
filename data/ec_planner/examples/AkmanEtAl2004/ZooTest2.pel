:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/AkmanEtAl2004/ZooTest2.e').
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:28
% Species(Homer)=HumanSpecies.
species(homer,humanSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:29
% Adult(Homer).
adult(homer).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:31
% !HoldsAt(Opened(GateAO),0).
 %  not(initially(opened(gateAO))).
axiom(not(initially(opened(gateAO))),
    []).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:32
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:32
% HoldsAt(Pos(Homer,position),0) & Outside=Loc(position).

 /*   exists([Position],
              (holds_at(pos(homer, Position), 0), outside=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_59')) :-
       (   not(holds_at(pos(homer, Some_Param), 0))
       ;   not(equals(outside, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_59')),
    [not(holds_at(pos(homer, Some_Param), t))]).
axiom(not(some(Some_Param, '$kolem_Fn_59')),
    [not(equals(outside, loc(Some_Param)))]).

 /*  holds_at(pos(homer, Some_Param3), 0) :-
       some(Some_Param3, '$kolem_Fn_59').
 */
axiom(holds_at(pos(homer, Some_Param3), t),
    [some(Some_Param3, '$kolem_Fn_59')]).

 /*  equals(outside, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_59').
 */
axiom(equals(outside, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_59')]).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:33
% {position} 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:33
% HoldsAt(Pos(Homer,position),2) & CageA=Loc(position).

 /*   exists([Position],
              (holds_at(pos(homer, Position), 2), cageA=loc(Position))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_60')) :-
       (   not(holds_at(pos(homer, Some_Param), 2))
       ;   not(equals(cageA, loc(Some_Param)))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_60')),
    [not(holds_at(pos(homer, Some_Param), t2)), b(t, t2), ignore(t+2=t2)]).
axiom(not(some(Some_Param, '$kolem_Fn_60')),
    [not(equals(cageA, loc(Some_Param)))]).

 /*  holds_at(pos(homer, Some_Param3), 2) :-
       some(Some_Param3, '$kolem_Fn_60').
 */
axiom(holds_at(pos(homer, Some_Param3), t2),
    [some(Some_Param3, '$kolem_Fn_60'), b(t, t2), ignore(t+2=t2)]).

 /*  equals(cageA, loc(Some_Param4)) :-
       some(Some_Param4, '$kolem_Fn_60').
 */
axiom(equals(cageA, loc(Some_Param4)),
    [some(Some_Param4, '$kolem_Fn_60')]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:35
% [human]
 % HoldsAt(PosDeterminingFluent(human,1),2).
holds_at(posDeterminingFluent(Human,1),2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:36
% [event,animal]
 % !HoldsAt(DoneBy(event,animal),2).
 %  not(holds_at(doneBy(Event,Animal),2)).
axiom(not(holds_at(doneBy(DoneBy_Param, DoneBy_Ret), t2)),
    [b(t, t2), ignore(t+2=t2)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:38
% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:39
==> range(time,0,2).

% range position 1 8
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:40
==> range(position,1,8).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooTest2.e:41
==> range(offset,0,0).
%; End of file.
