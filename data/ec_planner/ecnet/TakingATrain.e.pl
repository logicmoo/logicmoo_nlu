:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/TakingATrain.e').
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

% outside NearStation1
==> t(outside,nearStation1).

% street Street1
==> t(street,street1).

% outside Station1
==> t(outside,station1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:50
% Side1(Street1)=NearStation1.
side1(street1,nearStation1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:51
% Side2(Street1)=Station1.
side2(street1,station1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:53
% room WaitingRoom1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:54
==> t(room,waitingRoom1).

% door Door1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:56
==> t(door,door1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:57
% Side1(Door1)=Station1.
side1(door1,station1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:58
% Side2(Door1)=WaitingRoom1.
side2(door1,waitingRoom1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:60
% outside BeforeStation1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:61
==> t(outside,beforeStation1).

% track TrackToStation1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:63
==> t(track,trackToStation1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:64
% Side1(TrackToStation1)=BeforeStation1.
side1(trackToStation1,beforeStation1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:65
% Side2(TrackToStation1)=Station1.
side2(trackToStation1,station1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:67
% outside BetweenStation1And2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:68
==> t(outside,betweenStation1And2).

% track TrackToBetweenStation1And2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:70
==> t(track,trackToBetweenStation1And2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:71
% Side1(TrackToBetweenStation1And2)=Station1.
side1(trackToBetweenStation1And2,station1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:72
% Side2(TrackToBetweenStation1And2)=BetweenStation1And2.
side2(trackToBetweenStation1And2,betweenStation1And2).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:74
% outside Station2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:75
==> t(outside,station2).

% track TrackToStation2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:76
==> t(track,trackToStation2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:77
% Side1(TrackToStation2)=BetweenStation1And2.
side1(trackToStation2,betweenStation1And2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:78
% Side2(TrackToStation2)=Station2.
side2(trackToStation2,station2).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:80
% outside NearStation2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:81
==> t(outside,nearStation2).

% street Street2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:83
==> t(street,street2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:84
% Side1(Street2)=Station2.
side1(street2,station2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:85
% Side2(Street2)=NearStation2.
side2(street2,nearStation2).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:87
% agent Passenger1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:88
==> t(agent,passenger1).

% agent Conductor1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:90
==> t(agent,conductor1).

% chair TrainSeat1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:92
==> t(chair,trainSeat1).

% train Train1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:94
==> t(train,train1).

% chair WaitingRoomSeat1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:96
==> t(chair,waitingRoomSeat1).

% ticketagent TicketAgent1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:98
==> t(ticketagent,ticketAgent1).

% ticket Ticket1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:100
==> t(ticket,ticket1).
%; prune

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:102
% sort requesta, requestb, requestc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:103
==> sort(requesta).
==> sort(requestb).
==> sort(requestc).

% event! Request(requesta,requestb,requestc)
 %  event(request(requesta,requestb,requestc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:104
==> mpred_prop(request(requesta,requestb,requestc),event).
==> meta_argtypes(request(requesta,requestb,requestc)).

% fluent! KnowRequest(requestb,requesta,requestc)
 %  fluent(knowRequest(requestb,requesta,requestc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:105
==> mpred_prop(knowRequest(requestb,requesta,requestc),fluent).
==> meta_argtypes(knowRequest(requestb,requesta,requestc)).

% requesta! Passenger1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:106
==> t(requesta,passenger1).

% requestb! TicketAgent1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:107
==> t(requestb,ticketAgent1).

% requestc! Ticket1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:108
==> t(requestc,ticket1).

% sort holda, holdb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:110
==> sort(holda).
==> sort(holdb).

% event! TakeOffOf(holda,holdb,holdc)
 %  event(takeOffOf(holda,holdb,holdc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:111
==> mpred_prop(takeOffOf(holda,holdb,holdc),event).
==> meta_argtypes(takeOffOf(holda,holdb,holdc)).

% event! PickUp(holda,holdb)
 %  event(pickUp(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:112
==> mpred_prop(pickUp(holda,holdb),event).
==> meta_argtypes(pickUp(holda,holdb)).

% event! LetGoOf(holda,holdb)
 %  event(letGoOf(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:113
==> mpred_prop(letGoOf(holda,holdb),event).
==> meta_argtypes(letGoOf(holda,holdb)).

% event! Hold(holda,holdb)
 %  event(hold(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:114
==> mpred_prop(hold(holda,holdb),event).
==> meta_argtypes(hold(holda,holdb)).

% fluent! Holding(holda,holdb)
 %  fluent(holding(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:115
==> mpred_prop(holding(holda,holdb),fluent).
==> meta_argtypes(holding(holda,holdb)).

% event! HandTo(holda,holda,holdb)
 %  event(handTo(holda,holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:116
==> mpred_prop(handTo(holda,holda,holdb),event).
==> meta_argtypes(handTo(holda,holda,holdb)).

% holda! TicketAgent1, Passenger1, Conductor1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:117
==> t(holda,ticketAgent1).
==> t(holda,passenger1).
==> t(holda,conductor1).

% holdb! Ticket1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:118
==> t(holdb,ticket1).

% sort sita, sitb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:120
==> sort(sita).
==> sort(sitb).

% event! LieOn(sita,sitb)
 %  event(lieOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:121
==> mpred_prop(lieOn(sita,sitb),event).
==> meta_argtypes(lieOn(sita,sitb)).

% event! SitOn(sita,sitb)
 %  event(sitOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:122
==> mpred_prop(sitOn(sita,sitb),event).
==> meta_argtypes(sitOn(sita,sitb)).

% event! RiseFrom(sita,sitb)
 %  event(riseFrom(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:123
==> mpred_prop(riseFrom(sita,sitb),event).
==> meta_argtypes(riseFrom(sita,sitb)).

% fluent! LyingOn(sita,sitb)
 %  fluent(lyingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:124
==> mpred_prop(lyingOn(sita,sitb),fluent).
==> meta_argtypes(lyingOn(sita,sitb)).

% fluent! SittingOn(sita,sitb)
 %  fluent(sittingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:125
==> mpred_prop(sittingOn(sita,sitb),fluent).
==> meta_argtypes(sittingOn(sita,sitb)).

% sita! Passenger1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:126
==> t(sita,passenger1).

% sitb! WaitingRoomSeat1, TrainSeat1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:127
==> t(sitb,waitingRoomSeat1).
==> t(sitb,trainSeat1).
%; release

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:129
% option manualrelease on
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:130
:- set_ec_option(manualrelease, on).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:130
% [ball, diameter]
 % !ReleasedAt(Diameter(ball, diameter), 0).
 %  not(releasedAt(diameter(Ball,Diameter),0)).
axiom(not(releasedAt(diameter(Diameter_Param, Diameter_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:131
% [agent, object]
 % !ReleasedAt(Holding(agent, object), 0).
 %  not(releasedAt(holding(Agent,Object),0)).
axiom(not(releasedAt(holding(Holding_Param, Holding_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:132
% [door]
 % !ReleasedAt(DoorUnlocked(door), 0).
 %  not(releasedAt(doorUnlocked(Door),0)).
axiom(not(releasedAt(doorUnlocked(DoorUnlocked_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:133
% [door]
 % !ReleasedAt(DoorIsOpen(door), 0).
 %  not(releasedAt(doorIsOpen(Door),0)).
axiom(not(releasedAt(doorIsOpen(DoorIsOpen_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:134
% [agent]
 % !ReleasedAt(Sleep0(agent), 0).
 %  not(releasedAt(sleep0(Agent),0)).
axiom(not(releasedAt(sleep0(Sleep0_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:135
% [agent]
 % !ReleasedAt(Sleep1(agent), 0).
 %  not(releasedAt(sleep1(Agent),0)).
axiom(not(releasedAt(sleep1(Sleep1_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:136
% [agent]
 % !ReleasedAt(Sleep2(agent), 0).
 %  not(releasedAt(sleep2(Agent),0)).
axiom(not(releasedAt(sleep2(Sleep2_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:137
% [agent]
 % !ReleasedAt(Sleep3(agent), 0).
 %  not(releasedAt(sleep3(Agent),0)).
axiom(not(releasedAt(sleep3(Sleep3_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:138
% [agent]
 % !ReleasedAt(Sleep4(agent), 0).
 %  not(releasedAt(sleep4(Agent),0)).
axiom(not(releasedAt(sleep4(Sleep4_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:139
% [agent]
 % !ReleasedAt(Sleep5(agent), 0).
 %  not(releasedAt(sleep5(Agent),0)).
axiom(not(releasedAt(sleep5(Sleep5_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:140
% [agent]
 % !ReleasedAt(Sleep6(agent), 0).
 %  not(releasedAt(sleep6(Agent),0)).
axiom(not(releasedAt(sleep6(Sleep6_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:141
% [agent, physobj]
 % !ReleasedAt(LyingOn(agent, physobj), 0).
 %  not(releasedAt(lyingOn(Agent,Physobj),0)).
axiom(not(releasedAt(lyingOn(LyingOn_Param, LyingOn_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:142
% [agent, physobj]
 % !ReleasedAt(SittingOn(agent, physobj), 0).
 %  not(releasedAt(sittingOn(Agent,Physobj),0)).
axiom(not(releasedAt(sittingOn(SittingOn_Param, SittingOn_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:143
% [agent]
 % !ReleasedAt(Standing(agent), 0).
 %  not(releasedAt(standing(Agent),0)).
axiom(not(releasedAt(standing(Standing_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:144
% [agent]
 % !ReleasedAt(Dressed(agent), 0).
 %  not(releasedAt(dressed(Agent),0)).
axiom(not(releasedAt(dressed(Dressed_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:145
% [agent1, agent2, physobj]
 % !ReleasedAt(KnowOrder(agent1, agent2, physobj), 0).
 %  not(releasedAt(knowOrder(Agent1,Agent2,Physobj),0)).
axiom(not(releasedAt(knowOrder(KnowOrder_Param, _, KnowOrder_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:146
% [agent1, agent2, physobj]
 % !ReleasedAt(KnowRequest(agent1, agent2, physobj), 0).
 %  not(releasedAt(knowRequest(Agent1,Agent2,Physobj),0)).
axiom(not(releasedAt(knowRequest(KnowRequest_Param, _, KnowRequest_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:147
% [object, vehicleon]
 % !ReleasedAt(OnVehicle(object, vehicleon), 0).
 %  not(releasedAt(onVehicle(Object,Vehicleon),0)).
axiom(not(releasedAt(onVehicle(OnVehicle_Param, OnVehicle_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:148
% [ticketagent]
 % !ReleasedAt(BeTicketAgent0(ticketagent), 0).
 %  not(releasedAt(beTicketAgent0(Ticketagent),0)).
axiom(not(releasedAt(beTicketAgent0(BeTicketAgent0_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:149
% [ticketagent]
 % !ReleasedAt(BeTicketAgent1(ticketagent), 0).
 %  not(releasedAt(beTicketAgent1(Ticketagent),0)).
axiom(not(releasedAt(beTicketAgent1(BeTicketAgent1_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:150
% [ticketagent]
 % !ReleasedAt(BeTicketAgent2(ticketagent), 0).
 %  not(releasedAt(beTicketAgent2(Ticketagent),0)).
axiom(not(releasedAt(beTicketAgent2(BeTicketAgent2_Ret), 0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:151
%; special cases
% [location]
 % ReleasedAt(At(TrainSeat1,location),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:152
releasedAt(at(trainSeat1,Location),0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:153
% [location]
 % ReleasedAt(At(Conductor1,location),0).
releasedAt(at(conductor1,Location),0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:154
% [object, location]
% object!=% TrainSeat1 & object!=Conductor1 ->
% !ReleasedAt(At(object, location), 0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:156
axiom(not(releasedAt(at(Object, Location), 0)),
    [dif(Object, trainSeat1), dif(Object, conductor1)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:158
%; initial state
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:159
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:160
% [agent,physobj]
 % !HoldsAt(SittingOn(agent,physobj),0).
 %  not(initially(sittingOn(Agent,Physobj))).
axiom(not(initially(sittingOn(SittingOn_Param, SittingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:161
% [agent,physobj]
 % !HoldsAt(LyingOn(agent,physobj),0).
 %  not(initially(lyingOn(Agent,Physobj))).
axiom(not(initially(lyingOn(LyingOn_Param, LyingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:162
% [physobj1,physobj2]
% !HoldsAt(On(physobj1, physobj2),0).
 %  not(initially(on(Physobj1,Physobj2))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:163
axiom(not(initially(on(On_Param, On_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:164
% [agent]
 % HoldsAt(Dressed(agent),0).
axiom(initially(dressed(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:165
% [agent]
 % HoldsAt(Awake(agent),0).
axiom(initially(awake(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:166
% [agent]
 % HoldsAt(Sleep3(agent),0).
axiom(initially(sleep3(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:167
% [agent]
 % HoldsAt(Standing(agent),0).
axiom(initially(standing(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:168
% HoldsAt(DoorUnlocked(Door1),0).
axiom(initially(doorUnlocked(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:169
% HoldsAt(DoorIsOpen(Door1),0).
axiom(initially(doorIsOpen(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:170
% HoldsAt(At(WaitingRoomSeat1,WaitingRoom1),0).
axiom(initially(at(waitingRoomSeat1, waitingRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:171
% HoldsAt(At(Passenger1,NearStation1),0).
axiom(initially(at(passenger1, nearStation1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:172
% HoldsAt(At(Train1,BeforeStation1),0).
axiom(initially(at(train1, beforeStation1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:173
% HoldsAt(OnVehicle(TrainSeat1,Train1),0).
axiom(initially(onVehicle(trainSeat1, train1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:174
% HoldsAt(OnVehicle(Conductor1,Train1),0).
axiom(initially(onVehicle(conductor1, train1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:175
% [object]
% object!=% TrainSeat1 & object!=Conductor1 ->
% !HoldsAt(OnVehicle(object,Train1),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:177
axiom(not(holds_at(onVehicle(Object, train1), t)),
    [dif(Object, trainSeat1), dif(Object, conductor1)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:178
% HoldsAt(At(Ticket1,WaitingRoom1),0).
axiom(initially(at(ticket1, waitingRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:179
% HoldsAt(At(TicketAgent1,WaitingRoom1),0).
axiom(initially(at(ticketAgent1, waitingRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:180
% HoldsAt(BeTicketAgent0(TicketAgent1),0).
axiom(initially(beTicketAgent0(ticketAgent1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:181
% [agent1,agent2,physobj]
 % !HoldsAt(KnowOrder(agent1,agent2,physobj),0).
 %  not(initially(knowOrder(Agent1,Agent2,Physobj))).
axiom(not(initially(knowOrder(KnowOrder_Param, _, KnowOrder_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:182
% [agent1,agent2,physobj]
 % !HoldsAt(KnowRequest(agent1,agent2,physobj),0).
 %  not(initially(knowRequest(Agent1,Agent2,Physobj))).
axiom(not(initially(knowRequest(KnowRequest_Param, _, KnowRequest_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:184
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:185
% Happens(WalkStreet12(Passenger1,Street1),0).
axiom(happens(walkStreet12(passenger1, street1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:186
% Happens(WalkThroughDoor12(Passenger1,Door1),1).
axiom(happens(walkThroughDoor12(passenger1, door1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:187
% Happens(Request(Passenger1,TicketAgent1,Ticket1),2).
axiom(happens(request(passenger1, ticketAgent1, ticket1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:188
% Happens(Pay(Passenger1,TicketAgent1),3).
axiom(happens(pay(passenger1, ticketAgent1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:189
%;TRIGGERED Happens(PickUp(TicketAgent1,Ticket1),3).
%;TRIGGERED Happens(HandTo(TicketAgent1,Passenger1,Ticket1),4).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:191
% Happens(SitOn(Passenger1,WaitingRoomSeat1),5).
axiom(happens(sitOn(passenger1, waitingRoomSeat1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:192
% Happens(RideTrack12(Train1,TrackToStation1),6).
axiom(happens(rideTrack12(train1, trackToStation1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:193
% Happens(RiseFrom(Passenger1,WaitingRoomSeat1),7).
axiom(happens(riseFrom(passenger1, waitingRoomSeat1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:194
% Happens(WalkThroughDoor21(Passenger1,Door1),8).
axiom(happens(walkThroughDoor21(passenger1, door1), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:195
% Happens(GetOnVehicle(Passenger1,Train1),9).
axiom(happens(getOnVehicle(passenger1, train1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:196
% Happens(SitOn(Passenger1,TrainSeat1),10).
axiom(happens(sitOn(passenger1, trainSeat1), t10),
    [is_time(10), b(t, t10), ignore(t+10=t10)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:197
% Happens(RideTrack12(Train1,TrackToBetweenStation1And2),11).
axiom(happens(rideTrack12(train1, trackToBetweenStation1And2), t11),
    [is_time(11), b(t, t11), ignore(t+11=t11)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:198
% Happens(HandTo(Passenger1,Conductor1,Ticket1),12).
axiom(happens(handTo(passenger1, conductor1, ticket1), t12),
    [is_time(12), b(t, t12), ignore(t+12=t12)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:199
%;OR PAY


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:200
% Happens(RideTrack12(Train1,TrackToStation2),13).
axiom(happens(rideTrack12(train1, trackToStation2), t13),
    [is_time(13), b(t, t13), ignore(t+13=t13)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:201
% Happens(RiseFrom(Passenger1,TrainSeat1),14).
axiom(happens(riseFrom(passenger1, trainSeat1), t14),
    [is_time(14), b(t, t14), ignore(t+14=t14)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:202
% Happens(GetOffVehicle(Passenger1,Train1),15).
axiom(happens(getOffVehicle(passenger1, train1), t15),
    [is_time(15), b(t, t15), ignore(t+15=t15)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:203
% Happens(WalkStreet12(Passenger1,Street2),16).
axiom(happens(walkStreet12(passenger1, street2), t16),
    [is_time(16), b(t, t16), ignore(t+16=t16)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:205
% range time 0 17
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:206
==> range(time,0,17).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:207
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:208
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingATrain.e:210
==> completion(happens).
%; End of file.
