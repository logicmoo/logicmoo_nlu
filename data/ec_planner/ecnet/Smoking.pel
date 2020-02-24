:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Smoking.e').
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

% option modeldiff on
:- set_ec_option(modeldiff, on).

% ignore Love, ThreatenedBy
ignore(love).
ignore(threatenedBy).

% ignore LookOutOnto, Floor, BuildingOf, SkyOf, GroundOf
ignore(lookOutOnto).
ignore(floor).
ignore(buildingOf).
ignore(skyOf).
ignore(groundOf).

% ignore Near, WalkFrom, WalkFromTo, RunFromTo
ignore(near).
ignore(walkFrom).
ignore(walkFromTo).
ignore(runFromTo).

% ignore Side1, Side2
ignore(side1).
ignore(side2).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2004c/OTSpaceM.e
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/Container.e

% load answers/Mueller2003/Sleep.e

% load answers/Mueller2004c/SmallFire.e

% load answers/Mueller2004c/Smoke.e

% location Location1
==> t(location,location1).

% portal DummyPortal1
==> t(portal,dummyPortal1).

% agent Smoker1
==> t(agent,smoker1).

% cigarette Cigarette1
==> t(cigarette,cigarette1).

% container Package1
==> t(container,package1).

% physobj Surface1
==> t(physobj,surface1).

% physobj LightingDevice1
==> t(physobj,lightingDevice1).

% ashtray AshTray1
==> t(ashtray,ashTray1).

% physobj Trash1
==> t(physobj,trash1).

% smoke Smoke1
==> t(smoke,smoke1).
%; prune

% sort ona, onb
==> sort(ona).
==> sort(onb).

% fluent! On(ona,onb)
 %  fluent(on(ona,onb)).
==> mpred_prop(on(ona,onb),fluent).
==> meta_argtypes(on(ona,onb)).

% event! PlaceOn(agent,ona,onb)
 %  event(placeOn(agent,ona,onb)).
==> mpred_prop(placeOn(agent,ona,onb),event).
==> meta_argtypes(placeOn(agent,ona,onb)).

% event! TakeOffOf(agent,ona,onb)
 %  event(takeOffOf(agent,ona,onb)).
==> mpred_prop(takeOffOf(agent,ona,onb),event).
==> meta_argtypes(takeOffOf(agent,ona,onb)).

% ona! LightingDevice1, Package1, Cigarette1
==> t(ona,lightingDevice1).
==> t(ona,package1).
==> t(ona,cigarette1).

% onb! Surface1, AshTray1
==> t(onb,surface1).
==> t(onb,ashTray1).

% sort insidea, insideb
==> sort(insidea).
==> sort(insideb).

% fluent! Inside(insidea,insideb)
 %  fluent(inside(insidea,insideb)).
==> mpred_prop(inside(insidea,insideb),fluent).
==> meta_argtypes(inside(insidea,insideb)).

% event! PutInside(agent,insidea,insideb)
 %  event(putInside(agent,insidea,insideb)).
==> mpred_prop(putInside(agent,insidea,insideb),event).
==> meta_argtypes(putInside(agent,insidea,insideb)).

% event! TakeOutOf(agent,insidea,insideb)
 %  event(takeOutOf(agent,insidea,insideb)).
==> mpred_prop(takeOutOf(agent,insidea,insideb),event).
==> meta_argtypes(takeOutOf(agent,insidea,insideb)).

% insidea! Cigarette1
==> t(insidea,cigarette1).

% insideb! Package1, Trash1
==> t(insideb,package1).
==> t(insideb,trash1).

% sort lighta, lightb, lightc
==> sort(lighta).
==> sort(lightb).
==> sort(lightc).

% event! LightWith(lighta,lightb,lightc)
 %  event(lightWith(lighta,lightb,lightc)).
==> mpred_prop(lightWith(lighta,lightb,lightc),event).
==> meta_argtypes(lightWith(lighta,lightb,lightc)).

% lighta! Smoker1
==> t(lighta,smoker1).

% lightb! Cigarette1
==> t(lightb,cigarette1).

% lightc! LightingDevice1
==> t(lightc,lightingDevice1).
%; initial state
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:81
% [agent,physobj]
 % !HoldsAt(SittingOn(agent,physobj),0).
 %  not(initially(sittingOn(Agent,Physobj))).
axiom(not(initially(sittingOn(SittingOn_Param, SittingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:82
% [agent,physobj]
 % !HoldsAt(LyingOn(agent,physobj),0).
 %  not(initially(lyingOn(Agent,Physobj))).
axiom(not(initially(lyingOn(LyingOn_Param, LyingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:83
% HoldsAt(On(Package1,Surface1),0).
axiom(initially(on(package1, surface1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:84
% [physobj1,physobj2]
% !(physobj1=Package1 & physobj2=Surface1) ->
% !HoldsAt(On(physobj1, physobj2),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:86
axiom(not(holds_at(on(Physobj1, Physobj2), t)),
    [not(equals(Physobj1, package1))]).
axiom(not(holds_at(on(Physobj1, Physobj2), t)),
    [not(equals(Physobj2, surface1))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:87
% HoldsAt(Dressed(Smoker1),0).
axiom(initially(dressed(smoker1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:88
% HoldsAt(Awake(Smoker1),0).
axiom(initially(awake(smoker1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:89
% HoldsAt(Sleep3(Smoker1),0).
axiom(initially(sleep3(smoker1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:90
% HoldsAt(Standing(Smoker1),0).
axiom(initially(standing(smoker1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:91
% HoldsAt(CraveNicotine(Smoker1),0).
axiom(initially(craveNicotine(smoker1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:92
% HoldsAt(ContainerClosed(Package1),0).
axiom(initially(containerClosed(package1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:93
% [physobj]
 % !HoldsAt(IsBurning(physobj),0).
 %  not(initially(isBurning(Physobj))).
axiom(not(initially(isBurning(IsBurning_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:94
% HoldsAt(Inside(Cigarette1,Package1),0).
axiom(initially(inside(cigarette1, package1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:95
% [physobj1,physobj2]
% !(physobj1=Cigarette1 & physobj2=Package1) ->
% !HoldsAt(Inside(physobj1, physobj2),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:97
axiom(not(holds_at(inside(Physobj1, Physobj2), t)),
    [not(equals(Physobj1, cigarette1))]).
axiom(not(holds_at(inside(Physobj1, Physobj2), t)),
    [not(equals(Physobj2, package1))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:99
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:100
% Happens(TakeOffOf(Smoker1,Package1,Surface1),0).
axiom(happens(takeOffOf(smoker1, package1, surface1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:101
% Happens(ContainerOpen(Smoker1,Package1),1).
axiom(happens(containerOpen(smoker1, package1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:102
% Happens(TakeOutOf(Smoker1,Cigarette1,Package1),2).
axiom(happens(takeOutOf(smoker1, cigarette1, package1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:103
% Happens(PickUp(Smoker1,LightingDevice1),3).
axiom(happens(pickUp(smoker1, lightingDevice1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:104
% Happens(Light(Smoker1,LightingDevice1),4).
axiom(happens(light(smoker1, lightingDevice1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:105
% Happens(LightWith(Smoker1,Cigarette1,LightingDevice1),5).
axiom(happens(lightWith(smoker1, cigarette1, lightingDevice1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:106
% Happens(BlowOut(Smoker1,LightingDevice1),6).
axiom(happens(blowOut(smoker1, lightingDevice1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:107
% Happens(PlaceOn(Smoker1,LightingDevice1,Surface1),7).
axiom(happens(placeOn(smoker1, lightingDevice1, surface1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:108
% Happens(PlaceOn(Smoker1,Package1,Surface1),8).
axiom(happens(placeOn(smoker1, package1, surface1), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:109
% Happens(Puff(Smoker1,Cigarette1),9).
axiom(happens(puff(smoker1, cigarette1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:110
% Happens(BlowOutSmoke(Smoker1,Smoke1),10).
axiom(happens(blowOutSmoke(smoker1, smoke1), t10),
    [is_time(10), b(t, t10), ignore(t+10=t10)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:111
% Happens(PlaceOn(Smoker1,Cigarette1,AshTray1),11).
axiom(happens(placeOn(smoker1, cigarette1, ashTray1), t11),
    [is_time(11), b(t, t11), ignore(t+11=t11)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:112
% Happens(TakeOffOf(Smoker1,Cigarette1,AshTray1),12).
axiom(happens(takeOffOf(smoker1, cigarette1, ashTray1), t12),
    [is_time(12), b(t, t12), ignore(t+12=t12)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:113
% Happens(Puff(Smoker1,Cigarette1),13).
axiom(happens(puff(smoker1, cigarette1), t13),
    [is_time(13), b(t, t13), ignore(t+13=t13)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:114
% Happens(PutOut(Smoker1,Cigarette1),14).
axiom(happens(putOut(smoker1, cigarette1), t14),
    [is_time(14), b(t, t14), ignore(t+14=t14)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:115
% Happens(PutInside(Smoker1,Cigarette1,Trash1),15).
axiom(happens(putInside(smoker1, cigarette1, trash1), t15),
    [is_time(15), b(t, t15), ignore(t+15=t15)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:117
% range time 0 16
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:118
==> range(time,0,16).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:119
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:120
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Smoking.e:122
==> completion(happens).
%; End of file.
