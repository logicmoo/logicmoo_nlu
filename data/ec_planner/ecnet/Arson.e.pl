:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Arson.e').
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
%; DEV-MUC3-0060
%; Arson
%;
%; @article{Mueller:2004c,
%;   author = "Erik T. Mueller",
%;   year = "2004",
%;   title = "Understanding script-based stories using commonsense reasoning",
%;   journal = "Cognitive Systems Research",
%;   volume = "5",
%;   number = "4",
%;   pages = "307--340",
%; }
%;

% ignore SkyOf, GroundOf, Near, Inside, WalkFromTo, RunFromTo
ignore(skyOf).
ignore(groundOf).
ignore(near).
ignore(inside).
ignore(walkFromTo).
ignore(runFromTo).

% ignore RollAlong, Diameter, Move, HoldSome, PutInside
ignore(rollAlong).
ignore(diameter).
ignore(move).
ignore(holdSome).
ignore(putInside).

% ignore TakeOutOf, On, DoorUnlock, DoorLock, WalkThroughDoor12
ignore(takeOutOf).
ignore(on).
ignore(doorUnlock).
ignore(doorLock).
ignore(walkThroughDoor12).

% ignore WalkThroughDoor21, WalkDownStaircase, WalkUpStaircase
ignore(walkThroughDoor21).
ignore(walkDownStaircase).
ignore(walkUpStaircase).

% ignore ThreatenedBy
ignore(threatenedBy).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2004c/OTSpaceM.e
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2004c/Fire.e

% load answers/Mueller2004c/Condition.e

% load answers/Mueller2003/Sleep.e

% fire Fire1
==> t(fire,fire1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:41
% HoldsAt(At(Fire1,Outside1),0).
axiom(initially(at(fire1, outside1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:43
% agent Perp1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:44
==> t(agent,perp1).

% physobj PhysTarget1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:46
==> t(physobj,physTarget1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:46
% HoldsAt(Intact(PhysTarget1),0).
axiom(initially(intact(physTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:47
% HoldsAt(At(PhysTarget1,Outside1),0).
axiom(initially(at(physTarget1, outside1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:49
%; room-scale topological space

% outside Outside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:51
==> t(outside,outside1).

% outside Outside2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:52
==> t(outside,outside2).

% room Inside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:53
==> t(room,inside1).

% door Door1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:54
==> t(door,door1).

% building Building1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:55
==> t(building,building1).

% street Street1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:56
==> t(street,street1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:56
% Side1(Door1)=Outside1.
side1(door1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:57
% Side2(Door1)=Inside1.
side2(door1,inside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:58
% LookOutOnto(Inside1)=Outside1.
lookOutOnto(inside1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:59
% Floor(Inside1)=1.
floor(inside1,1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:60
% BuildingOf(Inside1)=Building1.
buildingOf(inside1,building1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:61
% Side1(Street1)=Outside1.
side1(street1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:62
% Side2(Street1)=Outside2.
side2(street1,outside2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:64
% HoldsAt(Alive(Perp1),0).
axiom(initially(alive(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:65
% HoldsAt(Awake(Perp1),0).
axiom(initially(awake(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:66
% HoldsAt(Standing(Perp1),0).
axiom(initially(standing(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:67
% HoldsAt(Sleep2(Perp1),0).
axiom(initially(sleep2(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:68
% !HoldsAt(Injured(Perp1),0).
 %  not(initially(injured(perp1))).
axiom(not(initially(injured(perp1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:69
% [object]
 % !HoldsAt(Holding(Perp1,object),0).
 %  not(initially(holding(perp1,Object))).
axiom(not(initially(holding(perp1, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:70
% HoldsAt(At(Perp1,Outside2),0).
axiom(initially(at(perp1, outside2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:71
% !HoldsAt(DoorIsOpen(Door1),0).
 %  not(initially(doorIsOpen(door1))).
axiom(not(initially(doorIsOpen(door1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:72
% HoldsAt(DoorUnlocked(Door1),0).
axiom(initially(doorUnlocked(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:73
% [physobj,fire,offset]
 % !HoldsAt(Burning(physobj,fire,offset),0).
 %  not(initially(burning(Physobj,Fire,Offset))).
axiom(not(initially(burning(Burning_Param, _, Burning_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:75
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:76
% Happens(WalkStreet21(Perp1,Street1),0).
axiom(happens(walkStreet21(perp1, street1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:77
% Happens(SetFireTo(Perp1,PhysTarget1,Fire1,3),1).
axiom(happens(setFireTo(perp1, physTarget1, fire1, 3), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:78
% Happens(WalkStreet12(Perp1,Street1),2).
axiom(happens(walkStreet12(perp1, street1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:80
% range time 0 6
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:81
==> range(time,0,6).

% range offset 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:82
==> range(offset,0,3).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:83
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Arson.e:85
==> completion(happens).
%; End of file.
