:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/RidingInACarriage.e').
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

% ignore Inside, PutInside, On, PlaceOn
ignore(inside).
ignore(putInside).
ignore(on).
ignore(placeOn).

% ignore Like, Happy, BecomeAngryAt
ignore(like).
ignore(happy).
ignore(becomeAngryAt).

% ignore Near, WalkFrom, WalkFromTo, RunFromTo
ignore(near).
ignore(walkFrom).
ignore(walkFromTo).
ignore(runFromTo).

% ignore ActOnIntentionToWalkIn, IntentionToWalkIn, InvitedIn, InviteIn
ignore(actOnIntentionToWalkIn).
ignore(intentionToWalkIn).
ignore(invitedIn).
ignore(inviteIn).

% ignore TakeOffOf, TakeOutOf, LetGoOf
ignore(takeOffOf).
ignore(takeOutOf).
ignore(letGoOf).

% ignore Greet, SayGoodbye, Order, KnowOrder
ignore(greet).
ignore(sayGoodbye).
ignore(order).
ignore(knowOrder).

% ignore Request, KnowRequest
ignore(request).
ignore(knowRequest).

% ignore TakeOffOf, PickUp, LetGoOf, Hold, Holding, HandTo, Grab
ignore(takeOffOf).
ignore(pickUp).
ignore(letGoOf).
ignore(hold).
ignore(holding).
ignore(handTo).
ignore(grab).

% ignore Move
ignore(move).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2004c/OTSpaceM.e
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2004c/HandTo.e

% load answers/Mueller2004c/Money.e

% load answers/Mueller2003/Sleep.e

% load answers/Mueller2003/SpeechAct.e

% load answers/Mueller2004c/Vehicle.e

% outside NearLocation1
==> t(outside,nearLocation1).

% street Street1
==> t(street,street1).

% outside Location1
==> t(outside,location1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:53
% Side1(Street1)=NearLocation1.
side1(street1,nearLocation1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:54
% Side2(Street1)=Location1.
side2(street1,location1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:56
% outside BeforeLocation1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:57
==> t(outside,beforeLocation1).

% street StreetToLocation1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:59
==> t(street,streetToLocation1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:60
% Side1(StreetToLocation1)=BeforeLocation1.
side1(streetToLocation1,beforeLocation1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:61
% Side2(StreetToLocation1)=Location1.
side2(streetToLocation1,location1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:63
% outside BetweenLocation1And2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:64
==> t(outside,betweenLocation1And2).

% street StreetToBetweenLocation1And2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:66
==> t(street,streetToBetweenLocation1And2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:67
% Side1(StreetToBetweenLocation1And2)=Location1.
side1(streetToBetweenLocation1And2,location1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:68
% Side2(StreetToBetweenLocation1And2)=BetweenLocation1And2.
side2(streetToBetweenLocation1And2,betweenLocation1And2).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:70
% outside Location2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:71
==> t(outside,location2).

% street StreetToLocation2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:72
==> t(street,streetToLocation2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:73
% Side1(StreetToLocation2)=BetweenLocation1And2.
side1(streetToLocation2,betweenLocation1And2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:74
% Side2(StreetToLocation2)=Location2.
side2(streetToLocation2,location2).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:76
% outside NearLocation2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:77
==> t(outside,nearLocation2).

% street Street2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:79
==> t(street,street2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:80
% Side1(Street2)=Location2.
side1(street2,location2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:81
% Side2(Street2)=NearLocation2.
side2(street2,nearLocation2).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:83
% agent Passenger1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:84
==> t(agent,passenger1).

% agent Driver1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:86
==> t(agent,driver1).

% chair CarriageSeat1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:88
==> t(chair,carriageSeat1).

% carriage Carriage1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:90
==> t(carriage,carriage1).

% vehicledoor CarriageDoor1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:92
==> t(vehicledoor,carriageDoor1).

% horse Horse1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:94
==> t(horse,horse1).
%; prune

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:96
% sort sita, sitb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:97
==> sort(sita).
==> sort(sitb).

% event! LieOn(sita,sitb)
 %  event(lieOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:98
==> mpred_prop(lieOn(sita,sitb),event).
==> meta_argtypes(lieOn(sita,sitb)).

% event! SitOn(sita,sitb)
 %  event(sitOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:99
==> mpred_prop(sitOn(sita,sitb),event).
==> meta_argtypes(sitOn(sita,sitb)).

% event! RiseFrom(sita,sitb)
 %  event(riseFrom(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:100
==> mpred_prop(riseFrom(sita,sitb),event).
==> meta_argtypes(riseFrom(sita,sitb)).

% fluent! LyingOn(sita,sitb)
 %  fluent(lyingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:101
==> mpred_prop(lyingOn(sita,sitb),fluent).
==> meta_argtypes(lyingOn(sita,sitb)).

% fluent! SittingOn(sita,sitb)
 %  fluent(sittingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:102
==> mpred_prop(sittingOn(sita,sitb),fluent).
==> meta_argtypes(sittingOn(sita,sitb)).

% sita! Passenger1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:103
==> t(sita,passenger1).

% sitb! CarriageSeat1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:104
==> t(sitb,carriageSeat1).
%; release

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:106
% option manualrelease on
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:107
:- set_ec_option(manualrelease, on).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:107
% [ball, diameter]
 % !ReleasedAt(Diameter(ball, diameter), 0).
 %  not(releasedAt(diameter(Ball,Diameter),0)).
axiom(not(releasedAt(diameter(Diameter_Param, Diameter_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:108
% [agent, object]
 % !ReleasedAt(Holding(agent, object), 0).
 %  not(releasedAt(holding(Agent,Object),0)).
axiom(not(releasedAt(holding(Holding_Param, Holding_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:109
% [door]
 % !ReleasedAt(DoorUnlocked(door), 0).
 %  not(releasedAt(doorUnlocked(Door),0)).
axiom(not(releasedAt(doorUnlocked(DoorUnlocked_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:110
% [door]
 % !ReleasedAt(DoorIsOpen(door), 0).
 %  not(releasedAt(doorIsOpen(Door),0)).
axiom(not(releasedAt(doorIsOpen(DoorIsOpen_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:111
% [agent]
 % !ReleasedAt(Sleep0(agent), 0).
 %  not(releasedAt(sleep0(Agent),0)).
axiom(not(releasedAt(sleep0(Sleep0_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:112
% [agent]
 % !ReleasedAt(Sleep1(agent), 0).
 %  not(releasedAt(sleep1(Agent),0)).
axiom(not(releasedAt(sleep1(Sleep1_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:113
% [agent]
 % !ReleasedAt(Sleep2(agent), 0).
 %  not(releasedAt(sleep2(Agent),0)).
axiom(not(releasedAt(sleep2(Sleep2_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:114
% [agent]
 % !ReleasedAt(Sleep3(agent), 0).
 %  not(releasedAt(sleep3(Agent),0)).
axiom(not(releasedAt(sleep3(Sleep3_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:115
% [agent]
 % !ReleasedAt(Sleep4(agent), 0).
 %  not(releasedAt(sleep4(Agent),0)).
axiom(not(releasedAt(sleep4(Sleep4_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:116
% [agent]
 % !ReleasedAt(Sleep5(agent), 0).
 %  not(releasedAt(sleep5(Agent),0)).
axiom(not(releasedAt(sleep5(Sleep5_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:117
% [agent]
 % !ReleasedAt(Sleep6(agent), 0).
 %  not(releasedAt(sleep6(Agent),0)).
axiom(not(releasedAt(sleep6(Sleep6_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:118
% [agent, physobj]
 % !ReleasedAt(LyingOn(agent, physobj), 0).
 %  not(releasedAt(lyingOn(Agent,Physobj),0)).
axiom(not(releasedAt(lyingOn(LyingOn_Param, LyingOn_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:119
% [agent, physobj]
 % !ReleasedAt(SittingOn(agent, physobj), 0).
 %  not(releasedAt(sittingOn(Agent,Physobj),0)).
axiom(not(releasedAt(sittingOn(SittingOn_Param, SittingOn_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:120
% [agent]
 % !ReleasedAt(Standing(agent), 0).
 %  not(releasedAt(standing(Agent),0)).
axiom(not(releasedAt(standing(Standing_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:121
% [agent]
 % !ReleasedAt(Dressed(agent), 0).
 %  not(releasedAt(dressed(Agent),0)).
axiom(not(releasedAt(dressed(Dressed_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:122
% [agent1, agent2, physobj]
 % !ReleasedAt(KnowRequest(agent1, agent2, physobj), 0).
 %  not(releasedAt(knowRequest(Agent1,Agent2,Physobj),0)).
axiom(not(releasedAt(knowRequest(KnowRequest_Param, _, KnowRequest_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:123
% [horse, street]
 % !ReleasedAt(PointedToward(horse, street), 0).
 %  not(releasedAt(pointedToward(Horse,Street),0)).
axiom(not(releasedAt(pointedToward(PointedToward_Param, PointedToward_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:124
% [horse, vehicle]
 % !ReleasedAt(HitchedTo(horse, vehicle), 0).
 %  not(releasedAt(hitchedTo(Horse,Vehicle),0)).
axiom(not(releasedAt(hitchedTo(HitchedTo_Param, HitchedTo_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:125
% [object, vehicleon]
 % !ReleasedAt(OnVehicle(object, vehicleon), 0).
 %  not(releasedAt(onVehicle(Object,Vehicleon),0)).
axiom(not(releasedAt(onVehicle(OnVehicle_Param, OnVehicle_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:126
% [object, vehiclein]
 % !ReleasedAt(InVehicle(object, vehiclein), 0).
 %  not(releasedAt(inVehicle(Object,Vehiclein),0)).
axiom(not(releasedAt(inVehicle(InVehicle_Param, InVehicle_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:127
% [vehicledoor]
 % !ReleasedAt(VehicleDoorIsOpen(vehicledoor), 0).
 %  not(releasedAt(vehicleDoorIsOpen(Vehicledoor),0)).
axiom(not(releasedAt(vehicleDoorIsOpen(VehicleDoorIsOpen_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:128
% [ticketagent]
 % !ReleasedAt(BeTicketAgent0(ticketagent), 0).
 %  not(releasedAt(beTicketAgent0(Ticketagent),0)).
axiom(not(releasedAt(beTicketAgent0(BeTicketAgent0_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:129
% [ticketagent]
 % !ReleasedAt(BeTicketAgent1(ticketagent), 0).
 %  not(releasedAt(beTicketAgent1(Ticketagent),0)).
axiom(not(releasedAt(beTicketAgent1(BeTicketAgent1_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:130
% [ticketagent]
 % !ReleasedAt(BeTicketAgent2(ticketagent), 0).
 %  not(releasedAt(beTicketAgent2(Ticketagent),0)).
axiom(not(releasedAt(beTicketAgent2(BeTicketAgent2_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:131
%; special cases
% [location]
 % ReleasedAt(At(CarriageSeat1,location),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:132
releasedAt(at(carriageSeat1,Location),0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:133
% [location]
 % ReleasedAt(At(Driver1,location),0).
releasedAt(at(driver1,Location),0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:134
% [object, location]
% object!=% CarriageSeat1 & object!=Driver1 ->
% !ReleasedAt(At(object, location), 0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:136
axiom(not(releasedAt(at(Object, Location), 0)),
    [dif(Object, carriageSeat1), dif(Object, driver1)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:138
%; initial state
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:139
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:140
% [agent,physobj]
 % !HoldsAt(SittingOn(agent,physobj),0).
 %  not(initially(sittingOn(Agent,Physobj))).
axiom(not(initially(sittingOn(SittingOn_Param, SittingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:141
% [agent,physobj]
 % !HoldsAt(LyingOn(agent,physobj),0).
 %  not(initially(lyingOn(Agent,Physobj))).
axiom(not(initially(lyingOn(LyingOn_Param, LyingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:142
% [physobj1,physobj2]
 % !HoldsAt(On(physobj1, physobj2),0).
 %  not(initially(on(Physobj1,Physobj2))).
axiom(not(initially(on(On_Param, On_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:143
% [agent]
 % HoldsAt(Dressed(agent),0).
axiom(initially(dressed(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:144
% [agent]
 % HoldsAt(Awake(agent),0).
axiom(initially(awake(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:145
% [agent]
 % HoldsAt(Sleep3(agent),0).
axiom(initially(sleep3(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:146
% [agent]
 % HoldsAt(Standing(agent),0).
axiom(initially(standing(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:147
% HoldsAt(At(Passenger1,NearLocation1),0).
axiom(initially(at(passenger1, nearLocation1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:148
% HoldsAt(At(Horse1,BeforeLocation1),0).
axiom(initially(at(horse1, beforeLocation1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:148
%;;;;;


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:149
% HoldsAt(At(Carriage1,BeforeLocation1),0).
axiom(initially(at(carriage1, beforeLocation1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:150
% HoldsAt(InVehicle(CarriageSeat1,Carriage1),0).
axiom(initially(inVehicle(carriageSeat1, carriage1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:151
% HoldsAt(InVehicle(Driver1,Carriage1),0).
axiom(initially(inVehicle(driver1, carriage1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:152
% [object]
% object!=% CarriageSeat1 & object!=Driver1 ->
% !HoldsAt(InVehicle(object,Carriage1),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:154
axiom(not(holds_at(inVehicle(Object, carriage1), t)),
    [dif(Object, carriageSeat1), dif(Object, driver1)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:155
% [agent1,agent2,physobj]
 % !HoldsAt(KnowOrder(agent1,agent2,physobj),0).
 %  not(initially(knowOrder(Agent1,Agent2,Physobj))).
axiom(not(initially(knowOrder(KnowOrder_Param, _, KnowOrder_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:156
% [agent1,agent2,physobj]
 % !HoldsAt(KnowRequest(agent1,agent2,physobj),0).
 %  not(initially(knowRequest(Agent1,Agent2,Physobj))).
axiom(not(initially(knowRequest(KnowRequest_Param, _, KnowRequest_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:157
% !HoldsAt(VehicleDoorIsOpen(CarriageDoor1),0).
 %  not(initially(vehicleDoorIsOpen(carriageDoor1))).
axiom(not(initially(vehicleDoorIsOpen(carriageDoor1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:158
% HoldsAt(HitchedTo(Horse1,Carriage1),0).
axiom(initially(hitchedTo(horse1, carriage1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:159
% HoldsAt(PointedToward(Horse1,StreetToLocation1),0).
axiom(initially(pointedToward(horse1, streetToLocation1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:161
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:162
% Happens(WalkStreet12(Passenger1,Street1),0).
axiom(happens(walkStreet12(passenger1, street1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:163
% Happens(Lash(Driver1,Horse1),1).
axiom(happens(lash(driver1, horse1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:164
% Happens(VehicleDoorOpen(Passenger1,CarriageDoor1),2).
axiom(happens(vehicleDoorOpen(passenger1, carriageDoor1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:165
% Happens(GetInVehicle(Passenger1,Carriage1),3).
axiom(happens(getInVehicle(passenger1, carriage1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:166
% Happens(VehicleDoorClose(Passenger1,CarriageDoor1),4).
axiom(happens(vehicleDoorClose(passenger1, carriageDoor1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:167
% Happens(SitOn(Passenger1,CarriageSeat1),5).
axiom(happens(sitOn(passenger1, carriageSeat1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:168
% Happens(PointToward(Driver1,Horse1,StreetToBetweenLocation1And2),6).
axiom(happens(pointToward(driver1, horse1, streetToBetweenLocation1And2), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:169
% Happens(Lash(Driver1,Horse1),7).
axiom(happens(lash(driver1, horse1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:170
% Happens(PointToward(Driver1,Horse1,StreetToLocation2),8).
axiom(happens(pointToward(driver1, horse1, streetToLocation2), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:171
% Happens(Lash(Driver1,Horse1),9).
axiom(happens(lash(driver1, horse1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:172
% Happens(RiseFrom(Passenger1,CarriageSeat1),10).
axiom(happens(riseFrom(passenger1, carriageSeat1), t10),
    [is_time(10), b(t, t10), ignore(t+10=t10)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:173
% Happens(VehicleDoorOpen(Passenger1,CarriageDoor1),11).
axiom(happens(vehicleDoorOpen(passenger1, carriageDoor1), t11),
    [is_time(11), b(t, t11), ignore(t+11=t11)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:174
% Happens(GetOutOfVehicle(Passenger1,Carriage1),12).
axiom(happens(getOutOfVehicle(passenger1, carriage1), t12),
    [is_time(12), b(t, t12), ignore(t+12=t12)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:175
% Happens(VehicleDoorClose(Passenger1,CarriageDoor1),13).
axiom(happens(vehicleDoorClose(passenger1, carriageDoor1), t13),
    [is_time(13), b(t, t13), ignore(t+13=t13)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:176
% Happens(WalkStreet12(Passenger1,Street2),14).
axiom(happens(walkStreet12(passenger1, street2), t14),
    [is_time(14), b(t, t14), ignore(t+14=t14)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:178
% range time 0 15
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:179
==> range(time,0,15).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:180
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:181
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RidingInACarriage.e:183
==> completion(happens).
%; End of file.
