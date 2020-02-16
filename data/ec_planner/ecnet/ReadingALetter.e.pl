:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/ReadingALetter.e').
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

% load answers/Mueller2004c/Cognition.e

% load answers/Mueller2003/Sleep.e

% load answers/Mueller2003/Vision.e

% load answers/Mueller2004c/HandTo.e

% location Location1
==> t(location,location1).

% portal DummyPortal1
==> t(portal,dummyPortal1).

% agent Recipient1
==> t(agent,recipient1).

% letter Letter1
==> t(letter,letter1).

% container Envelope1
==> t(container,envelope1).

% physobj Surface1
==> t(physobj,surface1).

% chair Chair1
==> t(chair,chair1).

% content Content1
==> t(content,content1).

% agent Carrier1
==> t(agent,carrier1).
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

% ona! Envelope1, Letter1
==> t(ona,envelope1).
==> t(ona,letter1).

% onb! Surface1
==> t(onb,surface1).

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

% insidea! Letter1
==> t(insidea,letter1).

% insideb! Envelope1
==> t(insideb,envelope1).
%; initial state
% [agent,physobj]
 % !HoldsAt(SittingOn(agent,physobj),0).
 %  not(initially(sittingOn(Agent,Physobj))).
axiom(not(initially(sittingOn(SittingOn_Param, SittingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:74
% [agent,physobj]
 % !HoldsAt(LyingOn(agent,physobj),0).
 %  not(initially(lyingOn(Agent,Physobj))).
axiom(not(initially(lyingOn(LyingOn_Param, LyingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:75
% HoldsAt(Dressed(Recipient1),0).
axiom(initially(dressed(recipient1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:76
% HoldsAt(Dressed(Carrier1),0).
axiom(initially(dressed(carrier1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:77
% HoldsAt(Awake(Recipient1),0).
axiom(initially(awake(recipient1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:78
% HoldsAt(Awake(Carrier1),0).
axiom(initially(awake(carrier1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:79
% HoldsAt(Sleep3(Recipient1),0).
axiom(initially(sleep3(recipient1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:80
% HoldsAt(Sleep3(Carrier1),0).
axiom(initially(sleep3(carrier1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:81
% HoldsAt(Standing(Recipient1),0).
axiom(initially(standing(recipient1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:82
% HoldsAt(Standing(Carrier1),0).
axiom(initially(standing(carrier1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:83
% HoldsAt(ContainerClosed(Envelope1),0).
axiom(initially(containerClosed(envelope1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:84
% HoldsAt(Inside(Letter1,Envelope1),0).
axiom(initially(inside(letter1, envelope1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:85
% [physobj1,physobj2]
% !(physobj1=Letter1 & physobj2=Envelope1) ->
% !HoldsAt(Inside(physobj1, physobj2),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:87
axiom(not(holds_at(inside(Physobj1, Physobj2), t)),
    [not(equals(Physobj1, letter1))]).
axiom(not(holds_at(inside(Physobj1, Physobj2), t)),
    [not(equals(Physobj2, envelope1))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:88
% [agent,object]
 % !HoldsAt(See(agent,object),0).
 %  not(initially(see(Agent,Object))).
axiom(not(initially(see(See_Param, See_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:89
% [agent,object]
% !(agent=Carrier1 & object=Envelope1) ->
% !HoldsAt(Holding(agent,object),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:91
axiom(not(holds_at(holding(Agent, Object), t)),
    [not(equals(Agent, carrier1))]).
axiom(not(holds_at(holding(Agent, Object), t)),
    [not(equals(Object, envelope1))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:92
% HoldsAt(Holding(Carrier1,Envelope1),0).
axiom(initially(holding(carrier1, envelope1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:93
% [physobj1,physobj2]
 % !HoldsAt(On(physobj1, physobj2),0).
 %  not(initially(on(Physobj1,Physobj2))).
axiom(not(initially(on(On_Param, On_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:95
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:96
% Happens(PlaceOn(Carrier1,Envelope1,Surface1),0).
axiom(happens(placeOn(carrier1, envelope1, surface1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:97
% Happens(TakeOffOf(Recipient1,Envelope1,Surface1),1).
axiom(happens(takeOffOf(recipient1, envelope1, surface1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:98
%;Happens(HandTo(Carrier1,Recipient1,Envelope1),0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:99
% Happens(SitOn(Recipient1,Chair1),2).
axiom(happens(sitOn(recipient1, chair1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:100
% Happens(ContainerOpen(Recipient1,Envelope1),3).
axiom(happens(containerOpen(recipient1, envelope1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:101
% Happens(TakeOutOf(Recipient1,Letter1,Envelope1),4).
axiom(happens(takeOutOf(recipient1, letter1, envelope1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:102
% Happens(LookAt(Recipient1,Letter1),5).
axiom(happens(lookAt(recipient1, letter1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:103
% Happens(Read(Recipient1,Letter1,Content1),6).
axiom(happens(read(recipient1, letter1, content1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:104
% Happens(ThinkAbout(Recipient1,Content1),7).
axiom(happens(thinkAbout(recipient1, content1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:105
% Happens(Understand(Recipient1,Content1),8).
axiom(happens(understand(recipient1, content1), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:106
% Happens(PutInside(Recipient1,Letter1,Envelope1),9).
axiom(happens(putInside(recipient1, letter1, envelope1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:107
% Happens(RiseFrom(Recipient1,Chair1),10).
axiom(happens(riseFrom(recipient1, chair1), t10),
    [is_time(10), b(t, t10), ignore(t+10=t10)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:108
% Happens(PlaceOn(Recipient1,Envelope1,Surface1),11).
axiom(happens(placeOn(recipient1, envelope1, surface1), t11),
    [is_time(11), b(t, t11), ignore(t+11=t11)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:110
% range time 0 12
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:111
==> range(time,0,12).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:112
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:113
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingALetter.e:115
==> completion(happens).
%; End of file.
