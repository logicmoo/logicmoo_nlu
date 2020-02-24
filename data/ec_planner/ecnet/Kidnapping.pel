:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Kidnapping.e').
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
%; Kidnapping
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

% ignore On, DoorUnlock, DoorLock
ignore(on).
ignore(doorUnlock).
ignore(doorLock).

% ignore WalkDownStaircase, WalkUpStaircase
ignore(walkDownStaircase).
ignore(walkUpStaircase).

% ignore Request, KnowRequest, Order, KnowOrder, SayGoodbye
ignore(request).
ignore(knowRequest).
ignore(order).
ignore(knowOrder).
ignore(sayGoodbye).

% ignore IntentionToWalkIn, InvitedIn
ignore(intentionToWalkIn).
ignore(invitedIn).

% ignore Snowing
ignore(snowing).

% ignore Like, Dislike, LikeSnow
ignore(like).
ignore(dislike).
ignore(likeSnow).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2004c/OTSpaceM.e
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2003/Feeling.e

% load answers/Mueller2004c/Condition.e

% load answers/Mueller2004c/Gun.e

% load answers/Mueller2003/Sleep.e

% load answers/Mueller2003/SpeechAct.e

% gun Gun1
==> t(gun,gun1).

% bullet Bullet1
==> t(bullet,bullet1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:47
% HoldsAt(Intact(Gun1),0).
axiom(initially(intact(gun1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:48
% HoldsAt(Intact(Bullet1),0).
axiom(initially(intact(bullet1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:50
% agent Perp1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:51
==> t(agent,perp1).

% agent HumanTarget1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:53
==> t(agent,humanTarget1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:53
% HoldsAt(Calm(HumanTarget1),0).
axiom(initially(calm(humanTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:54
% HoldsAt(Alive(HumanTarget1),0).
axiom(initially(alive(humanTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:55
% HoldsAt(Awake(HumanTarget1),0).
axiom(initially(awake(humanTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:56
% HoldsAt(Standing(HumanTarget1),0).
axiom(initially(standing(humanTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:57
% HoldsAt(Sleep2(HumanTarget1),0).
axiom(initially(sleep2(humanTarget1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:58
% !HoldsAt(Injured(HumanTarget1),0).
 %  not(initially(injured(humanTarget1))).
axiom(not(initially(injured(humanTarget1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:59
% [object]
 % !HoldsAt(Holding(HumanTarget1,object),0).
 %  not(initially(holding(humanTarget1,Object))).
axiom(not(initially(holding(humanTarget1, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:60
% HoldsAt(At(HumanTarget1,Outside1),0).
axiom(initially(at(humanTarget1, outside1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:61
% [physobj1,physobj2]
 % !HoldsAt(Inside(physobj1,physobj2),0).
 %  not(initially(inside(Physobj1,Physobj2))).
axiom(not(initially(inside(Inside_Param, Inside_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:63
%; prune

% sort shoota, shootb, shooto, shooth, shootp
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:65
==> sort(shoota).
==> sort(shootb).
==> sort(shooto).
==> sort(shooth).
==> sort(shootp).

% event! Shoot(shoota,shootb,shooto)
 %  event(shoot(shoota,shootb,shooto)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:66
==> mpred_prop(shoot(shoota,shootb,shooto),event).
==> meta_argtypes(shoot(shoota,shootb,shooto)).

% event! ShootInjure(shoota,shootb,shooth)
 %  event(shootInjure(shoota,shootb,shooth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:67
==> mpred_prop(shootInjure(shoota,shootb,shooth),event).
==> meta_argtypes(shootInjure(shoota,shootb,shooth)).

% event! ShootKill(shoota,shootb,shooth)
 %  event(shootKill(shoota,shootb,shooth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:68
==> mpred_prop(shootKill(shoota,shootb,shooth),event).
==> meta_argtypes(shootKill(shoota,shootb,shooth)).

% event! ShootDamage(shoota,shootb,shootp)
 %  event(shootDamage(shoota,shootb,shootp)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:69
==> mpred_prop(shootDamage(shoota,shootb,shootp),event).
==> meta_argtypes(shootDamage(shoota,shootb,shootp)).

% event! ShootDestroy(shoota,shootb,shootp)
 %  event(shootDestroy(shoota,shootb,shootp)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:70
==> mpred_prop(shootDestroy(shoota,shootb,shootp),event).
==> meta_argtypes(shootDestroy(shoota,shootb,shootp)).

% shoota! Perp1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:71
==> t(shoota,perp1).

% shootb! Gun1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:72
==> t(shootb,gun1).

% shooto! HumanTarget1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:73
==> t(shooto,humanTarget1).

% shooth! HumanTarget1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:74
==> t(shooth,humanTarget1).
%; room-scale topological space

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:76
% outside Outside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:77
==> t(outside,outside1).

% outside Outside2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:78
==> t(outside,outside2).

% room Inside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:79
==> t(room,inside1).

% door Door1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:80
==> t(door,door1).

% building Building1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:81
==> t(building,building1).

% street Street1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:82
==> t(street,street1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:82
% Side1(Door1)=Outside2.
side1(door1,outside2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:83
% Side2(Door1)=Inside1.
side2(door1,inside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:84
% LookOutOnto(Inside1)=Outside1.
lookOutOnto(inside1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:85
% Floor(Inside1)=1.
floor(inside1,1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:86
% BuildingOf(Inside1)=Building1.
buildingOf(inside1,building1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:87
% Side1(Street1)=Outside1.
side1(street1,outside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:88
% Side2(Street1)=Outside2.
side2(street1,outside2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:90
% HoldsAt(Calm(Perp1),0).
axiom(initially(calm(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:91
% HoldsAt(Alive(Perp1),0).
axiom(initially(alive(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:92
% HoldsAt(Awake(Perp1),0).
axiom(initially(awake(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:93
% HoldsAt(Standing(Perp1),0).
axiom(initially(standing(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:94
% HoldsAt(Sleep2(Perp1),0).
axiom(initially(sleep2(perp1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:95
% !HoldsAt(Injured(Perp1),0).
 %  not(initially(injured(perp1))).
axiom(not(initially(injured(perp1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:96
% [object]
 % !HoldsAt(Holding(Perp1,object),0).
 %  not(initially(holding(perp1,Object))).
axiom(not(initially(holding(perp1, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:97
% HoldsAt(At(Gun1,Outside2),0).
axiom(initially(at(gun1, outside2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:98
% HoldsAt(At(Perp1,Outside2),0).
axiom(initially(at(perp1, outside2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:99
% HoldsAt(At(Bullet1,Outside2),0).
axiom(initially(at(bullet1, outside2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:100
% HoldsAt(DoorIsOpen(Door1),0).
axiom(initially(doorIsOpen(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:101
% HoldsAt(DoorUnlocked(Door1),0).
axiom(initially(doorUnlocked(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:102
% [agent1,agent2]
 % !HoldsAt(ThreatenedBy(agent1,agent2),0).
 %  not(initially(threatenedBy(Agent1,Agent2))).
axiom(not(initially(threatenedBy(ThreatenedBy_Param, ThreatenedBy_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:103
% [agent1,agent2]
 % !HoldsAt(AngryAt(agent1,agent2),0).
 %  not(initially(angryAt(Agent1,Agent2))).
axiom(not(initially(angryAt(AngryAt_Param, AngryAt_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:104
% [physobj1,physobj2]
 % !HoldsAt(Inside(physobj1,physobj2),0).
 %  not(initially(inside(Physobj1,Physobj2))).
axiom(not(initially(inside(Inside_Param, Inside_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:105
% [agent,object]
 % !HoldsAt(Love(agent,object),0).
 %  not(initially(love(Agent,Object))).
axiom(not(initially(love(Love_Param, Love_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:107
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:108
% Happens(PickUp(Perp1,Gun1),0).
axiom(happens(pickUp(perp1, gun1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:109
% Happens(PickUp(Perp1,Bullet1),1).
axiom(happens(pickUp(perp1, bullet1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:110
% Happens(PutInside(Perp1,Bullet1,Gun1),2).
axiom(happens(putInside(perp1, bullet1, gun1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:111
% Happens(WalkStreet21(Perp1,Street1),3).
axiom(happens(walkStreet21(perp1, street1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:112
% Happens(Threaten(Perp1,HumanTarget1,Gun1),4).
axiom(happens(threaten(perp1, humanTarget1, gun1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:113
% Happens(Grab(Perp1,HumanTarget1),5).
axiom(happens(grab(perp1, humanTarget1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:114
% Happens(WalkStreet12(Perp1,Street1),6).
axiom(happens(walkStreet12(perp1, street1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:115
% Happens(WalkThroughDoor12(Perp1,Door1),7).
axiom(happens(walkThroughDoor12(perp1, door1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:116
% Happens(LetGoOf(Perp1,HumanTarget1),8).
axiom(happens(letGoOf(perp1, humanTarget1), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:117
% Happens(Shoot(Perp1,Gun1,HumanTarget1),9).
axiom(happens(shoot(perp1, gun1, humanTarget1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:118
% Happens(ShootKill(Perp1,Gun1,HumanTarget1),9).
axiom(happens(shootKill(perp1, gun1, humanTarget1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:120
% range time 0 10
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:121
==> range(time,0,10).

% range offset 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:122
==> range(offset,0,3).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:123
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Kidnapping.e:125
==> completion(happens).
%; End of file.
