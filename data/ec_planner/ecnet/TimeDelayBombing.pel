:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/TimeDelayBombing.e').
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
%; DEV-MUC3-0008
%; TimeDelayBombing
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

% load answers/Mueller2004c/Condition.e

% load answers/Mueller2003/Sleep.e

% load answers/Mueller2004c/Bomb.e

% bomb Bomb1
==> t(bomb,bomb1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:41
% BombTimeDelay(Bomb1)=3.
bombTimeDelay(bomb1,3).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:42
% [time]
 % !HoldsAt(DestroyedDeterminingFluent(Bomb1),time).
 %  not(holds_at(destroyedDeterminingFluent(bomb1),Time)).
axiom(not(holds_at(destroyedDeterminingFluent(bomb1), Time1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:43
% [time]
 % !HoldsAt(DamagedDeterminingFluent(Bomb1),time).
 %  not(holds_at(damagedDeterminingFluent(bomb1),Time)).
axiom(not(holds_at(damagedDeterminingFluent(bomb1), Time1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:45
% agent Perp1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:46
==> t(agent,perp1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:46
% [time]
 % !HoldsAt(InjuredDeterminingFluent(Perp1),time).
 %  not(holds_at(injuredDeterminingFluent(perp1),Time)).
axiom(not(holds_at(injuredDeterminingFluent(perp1), Time1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:47
% [time]
 % !HoldsAt(KilledDeterminingFluent(Perp1),time).
 %  not(holds_at(killedDeterminingFluent(perp1),Time)).
axiom(not(holds_at(killedDeterminingFluent(perp1), Time1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:49
% agent HumanTarget1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:50
==> t(agent,humanTarget1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:50
% HoldsAt(Alive(HumanTarget1),0).
axiom(initially(alive(humanTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:51
% HoldsAt(Awake(HumanTarget1),0).
axiom(initially(awake(humanTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:52
% HoldsAt(Standing(HumanTarget1),0).
axiom(initially(standing(humanTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:53
% HoldsAt(Sleep2(HumanTarget1),0).
axiom(initially(sleep2(humanTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:54
% !HoldsAt(Injured(HumanTarget1),0).
 %  not(initially(injured(humanTarget1))).
axiom(not(initially(injured(humanTarget1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:55
% [object]
 % !HoldsAt(Holding(HumanTarget1,object),0).
 %  not(initially(holding(humanTarget1,Object))).
axiom(not(initially(holding(humanTarget1, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:56
% HoldsAt(At(HumanTarget1,Outside1),0).
axiom(initially(at(humanTarget1, outside1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:58
% [time]
 % HoldsAt(KilledDeterminingFluent(HumanTarget1),time).
holds_at(killedDeterminingFluent(humanTarget1),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:59
% [time]
 % !HoldsAt(InjuredDeterminingFluent(HumanTarget1),time).
 %  not(holds_at(injuredDeterminingFluent(humanTarget1),Time)).
axiom(not(holds_at(injuredDeterminingFluent(humanTarget1), Time1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:61
% agent HumanTarget2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:62
==> t(agent,humanTarget2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:62
% HoldsAt(Alive(HumanTarget2),0).
axiom(initially(alive(humanTarget2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:63
% HoldsAt(Awake(HumanTarget2),0).
axiom(initially(awake(humanTarget2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:64
% HoldsAt(Standing(HumanTarget2),0).
axiom(initially(standing(humanTarget2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:65
% HoldsAt(Sleep2(HumanTarget2),0).
axiom(initially(sleep2(humanTarget2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:66
% !HoldsAt(Injured(HumanTarget2),0).
 %  not(initially(injured(humanTarget2))).
axiom(not(initially(injured(humanTarget2))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:67
% [object]
 % !HoldsAt(Holding(HumanTarget2,object),0).
 %  not(initially(holding(humanTarget2,Object))).
axiom(not(initially(holding(humanTarget2, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:68
% HoldsAt(At(HumanTarget2,Outside1),0).
axiom(initially(at(humanTarget2, outside1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:70
% [time]
 % HoldsAt(KilledDeterminingFluent(HumanTarget2),time).
holds_at(killedDeterminingFluent(humanTarget2),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:71
% [time]
 % !HoldsAt(InjuredDeterminingFluent(HumanTarget2),time).
 %  not(holds_at(injuredDeterminingFluent(humanTarget2),Time)).
axiom(not(holds_at(injuredDeterminingFluent(humanTarget2), Time1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:73
% agent HumanTarget3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:74
==> t(agent,humanTarget3).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:74
% HoldsAt(Alive(HumanTarget3),0).
axiom(initially(alive(humanTarget3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:75
% HoldsAt(Awake(HumanTarget3),0).
axiom(initially(awake(humanTarget3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:76
% HoldsAt(Standing(HumanTarget3),0).
axiom(initially(standing(humanTarget3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:77
% HoldsAt(Sleep2(HumanTarget3),0).
axiom(initially(sleep2(humanTarget3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:78
% !HoldsAt(Injured(HumanTarget3),0).
 %  not(initially(injured(humanTarget3))).
axiom(not(initially(injured(humanTarget3))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:79
% [object]
 % !HoldsAt(Holding(HumanTarget3,object),0).
 %  not(initially(holding(humanTarget3,Object))).
axiom(not(initially(holding(humanTarget3, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:80
% HoldsAt(At(HumanTarget3,Outside1),0).
axiom(initially(at(humanTarget3, outside1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:82
% [time]
 % HoldsAt(KilledDeterminingFluent(HumanTarget3),time).
holds_at(killedDeterminingFluent(humanTarget3),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:83
% [time]
 % !HoldsAt(InjuredDeterminingFluent(HumanTarget3),time).
 %  not(holds_at(injuredDeterminingFluent(humanTarget3),Time)).
axiom(not(holds_at(injuredDeterminingFluent(humanTarget3), Time1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:85
% agent HumanTarget4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:86
==> t(agent,humanTarget4).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:86
% HoldsAt(Alive(HumanTarget4),0).
axiom(initially(alive(humanTarget4)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:87
% HoldsAt(Awake(HumanTarget4),0).
axiom(initially(awake(humanTarget4)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:88
% HoldsAt(Standing(HumanTarget4),0).
axiom(initially(standing(humanTarget4)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:89
% HoldsAt(Sleep2(HumanTarget4),0).
axiom(initially(sleep2(humanTarget4)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:90
% !HoldsAt(Injured(HumanTarget4),0).
 %  not(initially(injured(humanTarget4))).
axiom(not(initially(injured(humanTarget4))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:91
% [object]
 % !HoldsAt(Holding(HumanTarget4,object),0).
 %  not(initially(holding(humanTarget4,Object))).
axiom(not(initially(holding(humanTarget4, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:92
% HoldsAt(At(HumanTarget4,Outside1),0).
axiom(initially(at(humanTarget4, outside1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:94
% [time]
 % HoldsAt(KilledDeterminingFluent(HumanTarget4),time).
holds_at(killedDeterminingFluent(humanTarget4),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:95
% [time]
 % !HoldsAt(InjuredDeterminingFluent(HumanTarget4),time).
 %  not(holds_at(injuredDeterminingFluent(humanTarget4),Time)).
axiom(not(holds_at(injuredDeterminingFluent(humanTarget4), Time1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:97
% physobj PhysTarget1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:98
==> t(physobj,physTarget1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:98
% HoldsAt(Intact(PhysTarget1),0).
axiom(initially(intact(physTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:99
% HoldsAt(At(PhysTarget1,Outside1),0).
axiom(initially(at(physTarget1, outside1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:101
% [time]
 % HoldsAt(DestroyedDeterminingFluent(PhysTarget1),time).
holds_at(destroyedDeterminingFluent(physTarget1),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:102
% [time]
 % !HoldsAt(DamagedDeterminingFluent(PhysTarget1),time).
 %  not(holds_at(damagedDeterminingFluent(physTarget1),Time)).
axiom(not(holds_at(damagedDeterminingFluent(physTarget1), Time1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:104
%; room-scale topological space

% outside Outside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:106
==> t(outside,outside1).

% outside Outside2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:107
==> t(outside,outside2).

% room Inside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:108
==> t(room,inside1).

% door Door1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:109
==> t(door,door1).

% building Building1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:110
==> t(building,building1).

% street Street1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:111
==> t(street,street1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:111
% Side1(Door1)=Outside1.
side1(door1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:112
% Side2(Door1)=Inside1.
side2(door1,inside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:113
% LookOutOnto(Inside1)=Outside1.
lookOutOnto(inside1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:114
% Floor(Inside1)=1.
floor(inside1,1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:115
% BuildingOf(Inside1)=Building1.
buildingOf(inside1,building1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:116
% Side1(Street1)=Outside1.
side1(street1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:117
% Side2(Street1)=Outside2.
side2(street1,outside2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:119
% HoldsAt(Alive(Perp1),0).
axiom(initially(alive(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:120
% HoldsAt(Awake(Perp1),0).
axiom(initially(awake(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:121
% HoldsAt(Standing(Perp1),0).
axiom(initially(standing(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:122
% HoldsAt(Sleep2(Perp1),0).
axiom(initially(sleep2(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:123
% !HoldsAt(Injured(Perp1),0).
 %  not(initially(injured(perp1))).
axiom(not(initially(injured(perp1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:124
% [object]
 % !HoldsAt(Holding(Perp1,object),0).
 %  not(initially(holding(perp1,Object))).
axiom(not(initially(holding(perp1, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:125
% HoldsAt(At(Bomb1,Outside2),0).
axiom(initially(at(bomb1, outside2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:126
% HoldsAt(At(Perp1,Outside2),0).
axiom(initially(at(perp1, outside2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:127
% HoldsAt(Intact(Bomb1),0).
axiom(initially(intact(bomb1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:128
% !HoldsAt(BombActivated(Bomb1),0).
 %  not(initially(bombActivated(bomb1))).
axiom(not(initially(bombActivated(bomb1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:129
% !HoldsAt(DoorIsOpen(Door1),0).
 %  not(initially(doorIsOpen(door1))).
axiom(not(initially(doorIsOpen(door1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:130
% HoldsAt(DoorUnlocked(Door1),0).
axiom(initially(doorUnlocked(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:131
% HoldsAt(BombTimerValue(Bomb1, BombTimeDelay(Bomb1)),0).
axiom(initially(bombTimerValue(bomb1, bombTimeDelay(bomb1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:133
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:134
% Happens(PickUp(Perp1,Bomb1),0).
axiom(happens(pickUp(perp1, bomb1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:135
% Happens(WalkStreet21(Perp1,Street1),1).
axiom(happens(walkStreet21(perp1, street1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:136
% Happens(BombActivate(Perp1,Bomb1),2).
axiom(happens(bombActivate(perp1, bomb1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:137
% Happens(LetGoOf(Perp1,Bomb1),3).
axiom(happens(letGoOf(perp1, bomb1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:138
% Happens(WalkStreet12(Perp1,Street1),4).
axiom(happens(walkStreet12(perp1, street1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:140
% range time 0 7
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:141
==> range(time,0,7).

% range offset 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:142
==> range(offset,0,3).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:143
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TimeDelayBombing.e:145
==> completion(happens).
%; End of file.
