:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/WritingABook.e').
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

% ignore Inside
ignore(inside).

% ignore Near, WalkFrom, WalkFromTo, RunFromTo
ignore(near).
ignore(walkFrom).
ignore(walkFromTo).
ignore(runFromTo).

% ignore See
ignore(see).

% option renaming off
:- set_ec_option(renaming, off).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2004c/OTSpaceM.e
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/HandTo.e

% load answers/Mueller2003/Sleep.e

% load answers/Mueller2004c/Cognition.e

% door Door1
==> t(door,door1).

% room Room0
==> t(room,room0).

% room Room1
==> t(room,room1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:46
% Side1(Door1)=Room0.
side1(door1,room0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:47
% Side2(Door1)=Room1.
side2(door1,room1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:49
% agent Writer1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:50
==> t(agent,writer1).

% paper Paper1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:52
==> t(paper,paper1).

% pen Pen1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:54
==> t(pen,pen1).

% chair Chair1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:56
==> t(chair,chair1).

% physobj Desk1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:58
==> t(physobj,desk1).
%; initial state
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:60
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:61
% [agent,physobj]
 % !HoldsAt(SittingOn(agent,physobj),0).
 %  not(initially(sittingOn(Agent,Physobj))).
axiom(not(initially(sittingOn(SittingOn_Param, SittingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:62
% [agent,physobj]
 % !HoldsAt(LyingOn(agent,physobj),0).
 %  not(initially(lyingOn(Agent,Physobj))).
axiom(not(initially(lyingOn(LyingOn_Param, LyingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:63
% [physobj1,physobj2]
% !(physobj1=Pen1 & physobj2=Desk1) &
% !(physobj1=Paper1 & physobj2=Desk1) ->
% !HoldsAt(On(physobj1, physobj2),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:66
axiom(not(holds_at(on(Physobj1, Physobj2), t)),
    [not(equals(Physobj1, paper1)), not(equals(Physobj1, pen1))]).
axiom(not(holds_at(on(Physobj1, Physobj2), t)),
    [not(equals(Physobj2, desk1)), not(equals(Physobj1, pen1))]).
axiom(not(holds_at(on(Physobj1, Physobj2), t)),
    [not(equals(Physobj1, paper1)), not(equals(Physobj2, desk1))]).
axiom(not(holds_at(on(Physobj1, Physobj2), t)),
    [not(equals(Physobj2, desk1)), not(equals(Physobj2, desk1))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:67
% HoldsAt(On(Paper1,Desk1),0).
axiom(initially(on(paper1, desk1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:68
% HoldsAt(On(Pen1,Desk1),0).
axiom(initially(on(pen1, desk1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:69
% HoldsAt(Dressed(Writer1),0).
axiom(initially(dressed(writer1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:70
% HoldsAt(Awake(Writer1),0).
axiom(initially(awake(writer1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:71
% HoldsAt(Sleep3(Writer1),0).
axiom(initially(sleep3(writer1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:72
% HoldsAt(Standing(Writer1),0).
axiom(initially(standing(writer1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:73
% HoldsAt(DoorUnlocked(Door1),0).
axiom(initially(doorUnlocked(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:74
% HoldsAt(DoorIsOpen(Door1),0).
axiom(initially(doorIsOpen(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:75
% HoldsAt(At(Writer1,Room0),0).
axiom(initially(at(writer1, room0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:76
% HoldsAt(At(Chair1,Room1),0).
axiom(initially(at(chair1, room1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:77
% HoldsAt(At(Desk1,Room1),0).
axiom(initially(at(desk1, room1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:79
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:80
% Happens(WalkThroughDoor12(Writer1,Door1),0).
axiom(happens(walkThroughDoor12(writer1, door1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:81
% Happens(SitOn(Writer1,Chair1),1).
axiom(happens(sitOn(writer1, chair1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:82
% Happens(TakeOffOf(Writer1,Pen1,Desk1),2).
axiom(happens(takeOffOf(writer1, pen1, desk1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:83
% Happens(Think(Writer1),3).
axiom(happens(think(writer1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:84
% Happens(WriteOn(Writer1,Paper1,Pen1),4).
axiom(happens(writeOn(writer1, paper1, pen1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:85
% Happens(WriteOn(Writer1,Paper1,Pen1),5).
axiom(happens(writeOn(writer1, paper1, pen1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:86
% Happens(PlaceOn(Writer1,Pen1,Desk1),6).
axiom(happens(placeOn(writer1, pen1, desk1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:87
% Happens(RiseFrom(Writer1,Chair1),7).
axiom(happens(riseFrom(writer1, chair1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:88
% Happens(WalkThroughDoor21(Writer1,Door1),8).
axiom(happens(walkThroughDoor21(writer1, door1), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:90
% range time 0 9
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:91
==> range(time,0,9).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:92
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:93
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/WritingABook.e:95
==> completion(happens).
%; End of file.
