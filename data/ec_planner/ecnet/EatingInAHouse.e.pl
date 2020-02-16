:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/EatingInAHouse.e').
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

% option encoding 3
:- set_ec_option(encoding, 3).

% option renaming off
:- set_ec_option(renaming, off).

% ignore Love, ThreatenedBy
ignore(love).
ignore(threatenedBy).

% ignore LookOutOnto, Floor, BuildingOf, SkyOf, GroundOf
ignore(lookOutOnto).
ignore(floor).
ignore(buildingOf).
ignore(skyOf).
ignore(groundOf).

% ignore Inside
ignore(inside).

% ignore Near, WalkFrom, WalkFromTo, RunFromTo
ignore(near).
ignore(walkFrom).
ignore(walkFromTo).
ignore(runFromTo).

% ignore BillOf, CookOf, TableOf, WaiterOf, KitchenDoorOf
ignore(billOf).
ignore(cookOf).
ignore(tableOf).
ignore(waiterOf).
ignore(kitchenDoorOf).

% ignore BeWaiter0, BeWaiter1, BeWaiter2, BeWaiter3, BeWaiter4
ignore(beWaiter0).
ignore(beWaiter1).
ignore(beWaiter2).
ignore(beWaiter3).
ignore(beWaiter4).

% ignore BeWaiter5, BeWaiter6, BeWaiter7, BeWaiter8, BeWaiter9
ignore(beWaiter5).
ignore(beWaiter6).
ignore(beWaiter7).
ignore(beWaiter8).
ignore(beWaiter9).

% ignore BeCook0, BeCook1
ignore(beCook0).
ignore(beCook1).

% ignore InviteIn, InvitedIn, IntendToWalkIn, IntentionToWalkIn
ignore(inviteIn).
ignore(invitedIn).
ignore(intendToWalkIn).
ignore(intentionToWalkIn).

% ignore ActOnIntentionToWalkIn, Greet, SayGoodbye, CryForJoy
ignore(actOnIntentionToWalkIn).
ignore(greet).
ignore(sayGoodbye).
ignore(cryForJoy).

% ignore Threaten, ReleaseFromThreat, ThreatenedBy
ignore(threaten).
ignore(releaseFromThreat).
ignore(threatenedBy).

% ignore Order, KnowOrder, Request, KnowRequest
ignore(order).
ignore(knowOrder).
ignore(request).
ignore(knowRequest).

% ignore PutInside, TakeOutOf
ignore(putInside).
ignore(takeOutOf).

% ignore SayPleaseToMeet, Move
ignore(sayPleaseToMeet).
ignore(move).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2004c/OTSpaceM.e
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/HungerNeed.e

% load answers/Mueller2004c/Restaurant.e

% load answers/Mueller2003/Sleep.e

% load answers/Mueller2003/SpeechAct.e

% load answers/Mueller2004c/Dress.e

% room Upstairs1
==> t(room,upstairs1).

% staircase Staircase1
==> t(staircase,staircase1).

% room Hallway1
==> t(room,hallway1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:57
% Side1(Staircase1)=Hallway1.
side1(staircase1,hallway1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:58
% Side2(Staircase1)=Upstairs1.
side2(staircase1,upstairs1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:60
% door DiningRoomDoor1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:61
==> t(door,diningRoomDoor1).

% room DiningRoom1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:63
==> t(room,diningRoom1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:64
% Side1(DiningRoomDoor1)=Hallway1.
side1(diningRoomDoor1,hallway1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:65
% Side2(DiningRoomDoor1)=DiningRoom1.
side2(diningRoomDoor1,diningRoom1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:67
% door KitchenDoor1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:68
==> t(door,kitchenDoor1).

% room Kitchen1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:70
==> t(room,kitchen1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:71
% Side1(KitchenDoor1)=DiningRoom1.
side1(kitchenDoor1,diningRoom1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:72
% Side2(KitchenDoor1)=Kitchen1.
side2(kitchenDoor1,kitchen1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:74
% agent Eater1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:75
==> t(agent,eater1).

% agent Eater2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:77
==> t(agent,eater2).

% clothing Clothing1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:79
==> t(clothing,clothing1).

% clothing Clothing2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:81
==> t(clothing,clothing2).

% chair Chair1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:83
==> t(chair,chair1).

% chair Chair2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:85
==> t(chair,chair2).

% food Food1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:87
==> t(food,food1).

% agent Cook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:89
==> t(agent,cook1).

% table Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:91
==> t(table,table1).

% content Content1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:93
==> t(content,content1).

% content Content2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:95
==> t(content,content2).

% outside DummyOutside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:97
==> t(outside,dummyOutside1).
%; prune

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:99
% sort ona, onb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:100
==> sort(ona).
==> sort(onb).

% fluent! On(ona,onb)
 %  fluent(on(ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:101
==> mpred_prop(on(ona,onb),fluent).
==> meta_argtypes(on(ona,onb)).

% event! PlaceOn(agent,ona,onb)
 %  event(placeOn(agent,ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:102
==> mpred_prop(placeOn(agent,ona,onb),event).
==> meta_argtypes(placeOn(agent,ona,onb)).

% event! TakeOffOf(agent,ona,onb)
 %  event(takeOffOf(agent,ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:103
==> mpred_prop(takeOffOf(agent,ona,onb),event).
==> meta_argtypes(takeOffOf(agent,ona,onb)).

% sort ordera, orderb, orderc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:105
==> sort(ordera).
==> sort(orderb).
==> sort(orderc).

% event! Order(ordera,orderb,orderc)
 %  event(order(ordera,orderb,orderc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:106
==> mpred_prop(order(ordera,orderb,orderc),event).
==> meta_argtypes(order(ordera,orderb,orderc)).

% fluent! KnowOrder(orderb,ordera,orderc)
 %  fluent(knowOrder(orderb,ordera,orderc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:107
==> mpred_prop(knowOrder(orderb,ordera,orderc),fluent).
==> meta_argtypes(knowOrder(orderb,ordera,orderc)).

% sort requesta, requestb, requestc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:109
==> sort(requesta).
==> sort(requestb).
==> sort(requestc).

% event! Request(requesta,requestb,requestc)
 %  event(request(requesta,requestb,requestc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:110
==> mpred_prop(request(requesta,requestb,requestc),event).
==> meta_argtypes(request(requesta,requestb,requestc)).

% fluent! KnowRequest(requestb,requesta,requestc)
 %  fluent(knowRequest(requestb,requesta,requestc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:111
==> mpred_prop(knowRequest(requestb,requesta,requestc),fluent).
==> meta_argtypes(knowRequest(requestb,requesta,requestc)).

% sort holda, holdb, holdc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:113
==> sort(holda).
==> sort(holdb).
==> sort(holdc).

% event! TakeOffOf(holda,holdb,holdc)
 %  event(takeOffOf(holda,holdb,holdc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:114
==> mpred_prop(takeOffOf(holda,holdb,holdc),event).
==> meta_argtypes(takeOffOf(holda,holdb,holdc)).

% event! PickUp(holda,holdb)
 %  event(pickUp(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:115
==> mpred_prop(pickUp(holda,holdb),event).
==> meta_argtypes(pickUp(holda,holdb)).

% event! LetGoOf(holda,holdb)
 %  event(letGoOf(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:116
==> mpred_prop(letGoOf(holda,holdb),event).
==> meta_argtypes(letGoOf(holda,holdb)).

% event! Hold(holda,holdb)
 %  event(hold(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:117
==> mpred_prop(hold(holda,holdb),event).
==> meta_argtypes(hold(holda,holdb)).

% fluent! Holding(holda,holdb)
 %  fluent(holding(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:118
==> mpred_prop(holding(holda,holdb),fluent).
==> meta_argtypes(holding(holda,holdb)).

% sort sita, sitb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:120
==> sort(sita).
==> sort(sitb).

% event! LieOn(sita,sitb)
 %  event(lieOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:121
==> mpred_prop(lieOn(sita,sitb),event).
==> meta_argtypes(lieOn(sita,sitb)).

% event! SitOn(sita,sitb)
 %  event(sitOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:122
==> mpred_prop(sitOn(sita,sitb),event).
==> meta_argtypes(sitOn(sita,sitb)).

% event! RiseFrom(sita,sitb)
 %  event(riseFrom(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:123
==> mpred_prop(riseFrom(sita,sitb),event).
==> meta_argtypes(riseFrom(sita,sitb)).

% fluent! LyingOn(sita,sitb)
 %  fluent(lyingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:124
==> mpred_prop(lyingOn(sita,sitb),fluent).
==> meta_argtypes(lyingOn(sita,sitb)).

% fluent! SittingOn(sita,sitb)
 %  fluent(sittingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:125
==> mpred_prop(sittingOn(sita,sitb),fluent).
==> meta_argtypes(sittingOn(sita,sitb)).

% ona! Food1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:127
==> t(ona,food1).

% onb! Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:128
==> t(onb,table1).

% holda! Cook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:129
==> t(holda,cook1).

% holdb! Food1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:130
==> t(holdb,food1).

% holdc! Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:131
==> t(holdc,table1).

% sita! Eater1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:132
==> t(sita,eater1).

% sitb! Chair1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:133
==> t(sitb,chair1).
%; initial situation
% [agent]
 % HoldsAt(Dressed(agent),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:135
axiom(initially(dressed(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:136
% [agent]
 % HoldsAt(Awake(agent),0).
axiom(initially(awake(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:137
% [agent]
 % HoldsAt(Sleep3(agent),0).
axiom(initially(sleep3(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:138
% [agent]
 % HoldsAt(Standing(agent),0).
axiom(initially(standing(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:139
% [agent]
 % HoldsAt(Standing(agent),0).
axiom(initially(standing(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:140
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:141
% [food]
 % HoldsAt(At(food,Kitchen1),0).
axiom(initially(at(Food, kitchen1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:142
% [food]
 % !HoldsAt(FoodPrepared(food),0).
 %  not(initially(foodPrepared(Food))).
axiom(not(initially(foodPrepared(FoodPrepared_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:143
% [agent]
 % HoldsAt(Hungry(agent),0).
axiom(initially(hungry(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:144
% [door]
 % HoldsAt(DoorIsOpen(door),0).
axiom(initially(doorIsOpen(Door)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:145
% [clothing]
 % HoldsAt(At(clothing,Upstairs1),0).
axiom(initially(at(Clothing, upstairs1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:146
% [chair]
 % HoldsAt(At(chair,DiningRoom1),0).
axiom(initially(at(Chair, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:147
% HoldsAt(At(Cook1,Kitchen1),0).
axiom(initially(at(cook1, kitchen1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:148
% HoldsAt(At(Table1,DiningRoom1),0).
axiom(initially(at(table1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:149
% [agent,clothing]
 % !HoldsAt(Wearing(agent,clothing),0).
 %  not(initially(wearing(Agent,Clothing))).
axiom(not(initially(wearing(Wearing_Param, Wearing_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:151
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:152
% HoldsAt(At(Cook1,Kitchen1),0).
axiom(initially(at(cook1, kitchen1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:153
% HoldsAt(At(Eater1,Upstairs1),0).
axiom(initially(at(eater1, upstairs1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:154
% HoldsAt(At(Eater2,Upstairs1),0).
axiom(initially(at(eater2, upstairs1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:155
% Happens(FoodPrepare(Cook1,Food1),0).
axiom(happens(foodPrepare(cook1, food1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:156
% Happens(PutOn(Eater1,Clothing1),1).
axiom(happens(putOn(eater1, clothing1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:157
% Happens(PutOn(Eater2,Clothing2),2).
axiom(happens(putOn(eater2, clothing2), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:158
% Happens(WalkDownStaircase(Eater1,Staircase1),3).
axiom(happens(walkDownStaircase(eater1, staircase1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:159
% Happens(WalkDownStaircase(Eater2,Staircase1),4).
axiom(happens(walkDownStaircase(eater2, staircase1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:160
% Happens(WalkThroughDoor12(Eater1,DiningRoomDoor1),5).
axiom(happens(walkThroughDoor12(eater1, diningRoomDoor1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:161
% Happens(WalkThroughDoor12(Eater2,DiningRoomDoor1),6).
axiom(happens(walkThroughDoor12(eater2, diningRoomDoor1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:162
% Happens(SitOn(Eater1,Chair1),7).
axiom(happens(sitOn(eater1, chair1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:163
% Happens(SitOn(Eater2,Chair2),8).
axiom(happens(sitOn(eater2, chair2), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:164
% Happens(PickUp(Cook1, Food1),9).
axiom(happens(pickUp(cook1, food1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:165
% Happens(WalkThroughDoor21(Cook1, KitchenDoor1),10).
axiom(happens(walkThroughDoor21(cook1, kitchenDoor1), t10),
    [is_time(10), b(t, t10), ignore(t+10=t10)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:166
% Happens(PlaceOn(Cook1, Food1, Table1),11).
axiom(happens(placeOn(cook1, food1, table1), t11),
    [is_time(11), b(t, t11), ignore(t+11=t11)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:167
% Happens(WalkThroughDoor12(Cook1, KitchenDoor1),12).
axiom(happens(walkThroughDoor12(cook1, kitchenDoor1), t12),
    [is_time(12), b(t, t12), ignore(t+12=t12)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:168
% Happens(Eat(Eater1,Food1),13).
axiom(happens(eat(eater1, food1), t13),
    [is_time(13), b(t, t13), ignore(t+13=t13)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:169
% Happens(Eat(Eater2,Food1),14).
axiom(happens(eat(eater2, food1), t14),
    [is_time(14), b(t, t14), ignore(t+14=t14)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:170
% Happens(Converse(Eater1,Eater2),15).
axiom(happens(converse(eater1, eater2), t15),
    [is_time(15), b(t, t15), ignore(t+15=t15)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:171
% Happens(TalkAbout(Eater1,Content1),16).
axiom(happens(talkAbout(eater1, content1), t16),
    [is_time(16), b(t, t16), ignore(t+16=t16)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:172
% Happens(TalkAbout(Eater2,Content2),17).
axiom(happens(talkAbout(eater2, content2), t17),
    [is_time(17), b(t, t17), ignore(t+17=t17)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:173
% Happens(RiseFrom(Eater1,Chair1),18).
axiom(happens(riseFrom(eater1, chair1), t18),
    [is_time(18), b(t, t18), ignore(t+18=t18)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:174
% Happens(RiseFrom(Eater2,Chair2),19).
axiom(happens(riseFrom(eater2, chair2), t19),
    [is_time(19), b(t, t19), ignore(t+19=t19)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:176
% range time 0 20
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:177
==> range(time,0,20).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:178
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:179
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/EatingInAHouse.e:181
==> completion(happens).
%; End of file.
