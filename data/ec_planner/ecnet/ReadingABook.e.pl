:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/ReadingABook.e').
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

% option renaming off
:- set_ec_option(renaming, off).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2004c/OTSpaceM.e
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/Book.e

% load answers/Mueller2004c/Cognition.e

% load answers/Mueller2003/Sleep.e

% load answers/Mueller2003/Vision.e

% door Door1
==> t(door,door1).

% room Room0
==> t(room,room0).

% room Room1
==> t(room,room1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:46
% Side1(Door1)=Room0.
side1(door1,room0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:47
% Side2(Door1)=Room1.
side2(door1,room1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:49
% agent Reader1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:50
==> t(agent,reader1).

% book Book1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:52
==> t(book,book1).

% chair Chair1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:54
==> t(chair,chair1).

% physobj BookSupport1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:56
==> t(physobj,bookSupport1).

% content Content1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:58
==> t(content,content1).
%; initial state
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:60
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:61
% [agent,physobj]
 % !HoldsAt(SittingOn(agent,physobj),0).
 %  not(initially(sittingOn(Agent,Physobj))).
axiom(not(initially(sittingOn(SittingOn_Param, SittingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:62
% [agent,physobj]
 % !HoldsAt(LyingOn(agent,physobj),0).
 %  not(initially(lyingOn(Agent,Physobj))).
axiom(not(initially(lyingOn(LyingOn_Param, LyingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:63
% !{page}% HoldsAt(BookIsOpenTo(Book1,page),0).
 %  not(exists([Page],holds_at(bookIsOpenTo(book1,Page),0))).
axiom(not(holds_at(bookIsOpenTo(book1, BookIsOpenTo_Ret), t)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:64
% [physobj1,physobj2]
% !(physobj1=Book1 & physobj2=BookSupport1) ->
% !HoldsAt(On(physobj1, physobj2),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:66
axiom(not(holds_at(on(Physobj1, Physobj2), t)),
    [not(equals(Physobj1, book1))]).
axiom(not(holds_at(on(Physobj1, Physobj2), t)),
    [not(equals(Physobj2, bookSupport1))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:67
% HoldsAt(Dressed(Reader1),0).
axiom(initially(dressed(reader1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:68
% HoldsAt(Awake(Reader1),0).
axiom(initially(awake(reader1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:69
% HoldsAt(Sleep3(Reader1),0).
axiom(initially(sleep3(reader1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:70
% HoldsAt(Standing(Reader1),0).
axiom(initially(standing(reader1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:71
% HoldsAt(DoorUnlocked(Door1),0).
axiom(initially(doorUnlocked(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:72
% HoldsAt(DoorIsOpen(Door1),0).
axiom(initially(doorIsOpen(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:73
% HoldsAt(At(Reader1,Room0),0).
axiom(initially(at(reader1, room0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:74
% HoldsAt(At(Chair1,Room1),0).
axiom(initially(at(chair1, room1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:75
% HoldsAt(At(Book1,Room1),0).
axiom(initially(at(book1, room1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:76
% HoldsAt(On(Book1,BookSupport1),0).
axiom(initially(on(book1, bookSupport1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:77
% [object]
 % !HoldsAt(See(Reader1,object),0).
 %  not(initially(see(reader1,Object))).
axiom(not(initially(see(reader1, See_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:79
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:80
% Happens(WalkThroughDoor12(Reader1,Door1),0).
axiom(happens(walkThroughDoor12(reader1, door1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:81
% Happens(TakeOffOf(Reader1,Book1,BookSupport1),1).
axiom(happens(takeOffOf(reader1, book1, bookSupport1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:82
% Happens(SitOn(Reader1,Chair1),2).
axiom(happens(sitOn(reader1, chair1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:83
% Happens(BookOpenTo(Reader1,Book1,1),3).
axiom(happens(bookOpenTo(reader1, book1, 1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:84
% Happens(LookAt(Reader1,Book1),4).
axiom(happens(lookAt(reader1, book1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:85
% Happens(Read(Reader1,Book1,Content1),5).
axiom(happens(read(reader1, book1, content1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:86
% Happens(ThinkAbout(Reader1,Content1),6).
axiom(happens(thinkAbout(reader1, content1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:87
% Happens(Understand(Reader1,Content1),7).
axiom(happens(understand(reader1, content1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:88
% Happens(BookTurnPageTo(Reader1,Book1,2),8).
axiom(happens(bookTurnPageTo(reader1, book1, 2), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:89
% Happens(BookTurnPageTo(Reader1,Book1,3),9).
axiom(happens(bookTurnPageTo(reader1, book1, 3), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:90
% Happens(BookClose(Reader1,Book1),10).
axiom(happens(bookClose(reader1, book1), t10),
    [is_time(10), b(t, t10), ignore(t+10=t10)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:91
% Happens(RiseFrom(Reader1,Chair1),11).
axiom(happens(riseFrom(reader1, chair1), t11),
    [is_time(11), b(t, t11), ignore(t+11=t11)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:92
% Happens(PlaceOn(Reader1,Book1,BookSupport1),12).
axiom(happens(placeOn(reader1, book1, bookSupport1), t12),
    [is_time(12), b(t, t12), ignore(t+12=t12)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:93
% Happens(WalkThroughDoor21(Reader1,Door1),13).
axiom(happens(walkThroughDoor21(reader1, door1), t13),
    [is_time(13), b(t, t13), ignore(t+13=t13)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:95
% range time 0 14
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:96
==> range(time,0,14).

% range page 1 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:97
==> range(page,1,3).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:98
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:99
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/ReadingABook.e:101
==> completion(happens).
%; End of file.
