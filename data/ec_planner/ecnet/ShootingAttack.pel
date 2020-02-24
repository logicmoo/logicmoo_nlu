:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/ShootingAttack.e').
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
%; DEV-MUC3-0147
%; ShootingAttack
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

% ignore SkyOf, GroundOf, Near, WalkFromTo, RunFromTo
ignore(skyOf).
ignore(groundOf).
ignore(near).
ignore(walkFromTo).
ignore(runFromTo).

% ignore RollAlong, Diameter, Move, HoldSome
ignore(rollAlong).
ignore(diameter).
ignore(move).
ignore(holdSome).

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

% ignore Love, ThreatenedBy
ignore(love).
ignore(threatenedBy).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2004c/OTSpaceM.e
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2004c/Condition.e

% load answers/Mueller2004c/Gun.e

% load answers/Mueller2003/Sleep.e

% gun Gun1
==> t(gun,gun1).

% bullet Bullet1
==> t(bullet,bullet1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:42
% HoldsAt(Intact(Gun1),0).
axiom(initially(intact(gun1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:43
% HoldsAt(Intact(Bullet1),0).
axiom(initially(intact(bullet1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:45
% agent Perp1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:46
==> t(agent,perp1).

% physobj PhysTarget1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:48
==> t(physobj,physTarget1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:48
% HoldsAt(Intact(PhysTarget1),0).
axiom(initially(intact(physTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:49
% HoldsAt(At(PhysTarget1,Outside1),0).
axiom(initially(at(physTarget1, outside1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:51
%; prune

% sort shoota, shootb, shooto, shooth, shootp
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:53
==> sort(shoota).
==> sort(shootb).
==> sort(shooto).
==> sort(shooth).
==> sort(shootp).

% event! Shoot(shoota,shootb,shooto)
 %  event(shoot(shoota,shootb,shooto)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:54
==> mpred_prop(shoot(shoota,shootb,shooto),event).
==> meta_argtypes(shoot(shoota,shootb,shooto)).

% event! ShootInjure(shoota,shootb,shooth)
 %  event(shootInjure(shoota,shootb,shooth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:55
==> mpred_prop(shootInjure(shoota,shootb,shooth),event).
==> meta_argtypes(shootInjure(shoota,shootb,shooth)).

% event! ShootKill(shoota,shootb,shooth)
 %  event(shootKill(shoota,shootb,shooth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:56
==> mpred_prop(shootKill(shoota,shootb,shooth),event).
==> meta_argtypes(shootKill(shoota,shootb,shooth)).

% event! ShootDamage(shoota,shootb,shootp)
 %  event(shootDamage(shoota,shootb,shootp)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:57
==> mpred_prop(shootDamage(shoota,shootb,shootp),event).
==> meta_argtypes(shootDamage(shoota,shootb,shootp)).

% event! ShootDestroy(shoota,shootb,shootp)
 %  event(shootDestroy(shoota,shootb,shootp)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:58
==> mpred_prop(shootDestroy(shoota,shootb,shootp),event).
==> meta_argtypes(shootDestroy(shoota,shootb,shootp)).

% shoota! Perp1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:59
==> t(shoota,perp1).

% shootb! Gun1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:60
==> t(shootb,gun1).

% shooto! PhysTarget1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:61
==> t(shooto,physTarget1).

% shootp! PhysTarget1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:62
==> t(shootp,physTarget1).
%; room-scale topological space

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:64
% outside Outside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:65
==> t(outside,outside1).

% outside Outside2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:66
==> t(outside,outside2).

% room Inside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:67
==> t(room,inside1).

% door Door1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:68
==> t(door,door1).

% building Building1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:69
==> t(building,building1).

% street Street1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:70
==> t(street,street1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:70
% Side1(Door1)=Outside1.
side1(door1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:71
% Side2(Door1)=Inside1.
side2(door1,inside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:72
% LookOutOnto(Inside1)=Outside1.
lookOutOnto(inside1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:73
% Floor(Inside1)=1.
floor(inside1,1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:74
% BuildingOf(Inside1)=Building1.
buildingOf(inside1,building1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:75
% Side1(Street1)=Outside1.
side1(street1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:76
% Side2(Street1)=Outside2.
side2(street1,outside2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:78
% HoldsAt(Alive(Perp1),0).
axiom(initially(alive(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:79
% HoldsAt(Awake(Perp1),0).
axiom(initially(awake(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:80
% HoldsAt(Standing(Perp1),0).
axiom(initially(standing(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:81
% HoldsAt(Sleep2(Perp1),0).
axiom(initially(sleep2(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:82
% !HoldsAt(Injured(Perp1),0).
 %  not(initially(injured(perp1))).
axiom(not(initially(injured(perp1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:83
% [object]
 % !HoldsAt(Holding(Perp1,object),0).
 %  not(initially(holding(perp1,Object))).
axiom(not(initially(holding(perp1, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:84
% HoldsAt(At(Gun1,Outside2),0).
axiom(initially(at(gun1, outside2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:85
% HoldsAt(At(Perp1,Outside2),0).
axiom(initially(at(perp1, outside2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:86
% HoldsAt(At(Bullet1,Outside2),0).
axiom(initially(at(bullet1, outside2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:87
% HoldsAt(DoorIsOpen(Door1),0).
axiom(initially(doorIsOpen(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:88
% HoldsAt(DoorUnlocked(Door1),0).
axiom(initially(doorUnlocked(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:89
% [physobj1,physobj2]
 % !HoldsAt(Inside(physobj1,physobj2),0).
 %  not(initially(inside(Physobj1,Physobj2))).
axiom(not(initially(inside(Inside_Param, Inside_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:91
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:92
% Happens(PickUp(Perp1,Gun1),0).
axiom(happens(pickUp(perp1, gun1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:93
% Happens(PickUp(Perp1,Bullet1),1).
axiom(happens(pickUp(perp1, bullet1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:94
% Happens(PutInside(Perp1,Bullet1,Gun1),2).
axiom(happens(putInside(perp1, bullet1, gun1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:95
% Happens(WalkStreet21(Perp1,Street1),3).
axiom(happens(walkStreet21(perp1, street1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:96
% Happens(Shoot(Perp1,Gun1,PhysTarget1),4).
axiom(happens(shoot(perp1, gun1, physTarget1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:97
% Happens(ShootDestroy(Perp1,Gun1,PhysTarget1),4).
axiom(happens(shootDestroy(perp1, gun1, physTarget1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:98
% Happens(WalkStreet12(Perp1,Street1),5).
axiom(happens(walkStreet12(perp1, street1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:100
% range time 0 6
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:101
==> range(time,0,6).

% range offset 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:102
==> range(offset,0,3).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:103
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ShootingAttack.e:105
==> completion(happens).
%; End of file.
