:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/TakingAWalk.e').
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

% ignore LieOn, SitOn, RiseFrom, LyingOn, SittingOn
ignore(lieOn).
ignore(sitOn).
ignore(riseFrom).
ignore(lyingOn).
ignore(sittingOn).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2004c/OTSpaceM.e
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2003/Sleep.e

% load answers/Mueller2004c/Dress.e

% load answers/Mueller2004c/Rain.e

% room Origin1
==> t(room,origin1).

% door OriginDoor1
==> t(door,originDoor1).

% outside OriginOutside1
==> t(outside,originOutside1).

% street StreetFromOriginToMiddle1
==> t(street,streetFromOriginToMiddle1).

% outside Middle1
==> t(outside,middle1).

% street StreetFromMiddleToDestination1
==> t(street,streetFromMiddleToDestination1).

% outside DestinationOutside1
==> t(outside,destinationOutside1).

% door DestinationDoor1
==> t(door,destinationDoor1).

% room Destination1
==> t(room,destination1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:61
% Side1(OriginDoor1)=OriginOutside1.
side1(originDoor1,originOutside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:62
% Side2(OriginDoor1)=Origin1.
side2(originDoor1,origin1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:64
% Side1(StreetFromOriginToMiddle1)=OriginOutside1.
side1(streetFromOriginToMiddle1,originOutside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:65
% Side2(StreetFromOriginToMiddle1)=Middle1.
side2(streetFromOriginToMiddle1,middle1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:67
% Side1(StreetFromMiddleToDestination1)=Middle1.
side1(streetFromMiddleToDestination1,middle1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:68
% Side2(StreetFromMiddleToDestination1)=DestinationOutside1.
side2(streetFromMiddleToDestination1,destinationOutside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:70
% Side1(DestinationDoor1)=DestinationOutside1.
side1(destinationDoor1,destinationOutside1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:71
% Side2(DestinationDoor1)=Destination1.
side2(destinationDoor1,destination1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:73
% agent Walker1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:74
==> t(agent,walker1).

% clothing Clothes1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:76
==> t(clothing,clothes1).

% umbrella Umbrella1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:78
==> t(umbrella,umbrella1).
%; initial state
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:80
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:81
% [agent]
 % HoldsAt(Dressed(agent),0).
axiom(initially(dressed(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:82
% [agent]
 % HoldsAt(Awake(agent),0).
axiom(initially(awake(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:83
% [agent]
 % HoldsAt(Sleep3(agent),0).
axiom(initially(sleep3(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:84
% [agent]
 % HoldsAt(Standing(agent),0).
axiom(initially(standing(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:85
% HoldsAt(DoorUnlocked(OriginDoor1),0).
axiom(initially(doorUnlocked(originDoor1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:86
% !HoldsAt(DoorIsOpen(OriginDoor1),0).
 %  not(initially(doorIsOpen(originDoor1))).
axiom(not(initially(doorIsOpen(originDoor1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:87
% HoldsAt(DoorUnlocked(DestinationDoor1),0).
axiom(initially(doorUnlocked(destinationDoor1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:88
% !HoldsAt(DoorIsOpen(DestinationDoor1),0).
 %  not(initially(doorIsOpen(destinationDoor1))).
axiom(not(initially(doorIsOpen(destinationDoor1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:89
% HoldsAt(At(Walker1,Origin1),0).
axiom(initially(at(walker1, origin1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:90
% HoldsAt(At(Clothes1,Origin1),0).
axiom(initially(at(clothes1, origin1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:91
% HoldsAt(At(Umbrella1,Origin1),0).
axiom(initially(at(umbrella1, origin1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:92
% [outside,time]
 % HoldsAt(Raining(outside),time).
holds_at(raining(Outside),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:93
% [object]
 % !HoldsAt(Wet(object),0).
 %  not(initially(wet(Object))).
axiom(not(initially(wet(Wet_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:95
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:96
% Happens(PutOn(Walker1,Clothes1),0).
axiom(happens(putOn(walker1, clothes1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:97
% Happens(PickUp(Walker1,Umbrella1),1).
axiom(happens(pickUp(walker1, umbrella1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:98
% Happens(DoorOpen(Walker1,OriginDoor1),2).
axiom(happens(doorOpen(walker1, originDoor1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:99
% Happens(WalkThroughDoor21(Walker1,OriginDoor1),3).
axiom(happens(walkThroughDoor21(walker1, originDoor1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:100
% Happens(DoorClose(Walker1,OriginDoor1),4).
axiom(happens(doorClose(walker1, originDoor1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:101
% Happens(WalkStreet12(Walker1,StreetFromOriginToMiddle1),5).
axiom(happens(walkStreet12(walker1, streetFromOriginToMiddle1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:102
% Happens(WalkStreet12(Walker1,StreetFromMiddleToDestination1),6).
axiom(happens(walkStreet12(walker1, streetFromMiddleToDestination1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:103
% Happens(DoorOpen(Walker1,DestinationDoor1),7).
axiom(happens(doorOpen(walker1, destinationDoor1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:104
% Happens(WalkThroughDoor12(Walker1,DestinationDoor1),8).
axiom(happens(walkThroughDoor12(walker1, destinationDoor1), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:105
% Happens(DoorClose(Walker1,DestinationDoor1),9).
axiom(happens(doorClose(walker1, destinationDoor1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:106
% Happens(TakeOff(Walker1,Clothes1),10).
axiom(happens(takeOff(walker1, clothes1), t10),
    [is_time(10), b(t, t10), ignore(t+10=t10)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:108
% range time 0 11
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:109
==> range(time,0,11).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:110
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:111
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/TakingAWalk.e:113
==> completion(happens).
%; End of file.
