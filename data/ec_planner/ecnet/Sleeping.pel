:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Sleeping.e').
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

% ignore Inside, Near
ignore(inside).
ignore(near).

% ignore See
ignore(see).

% ignore ActOnSleep5
ignore(actOnSleep5).

% option renaming off
:- set_ec_option(renaming, off).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2004c/OTSpaceM.e
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/Cognition.e

% load answers/Mueller2003/Sleep.e

% door Door1
==> t(door,door1).

% room Room0
==> t(room,room0).

% room Room1
==> t(room,room1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:46
% Side1(Door1)=Room0.
side1(door1,room0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:47
% Side2(Door1)=Room1.
side2(door1,room1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:49
% agent Sleeper1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:50
==> t(agent,sleeper1).

% bed Bed1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:52
==> t(bed,bed1).

% outside Outside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:54
==> t(outside,outside1).
%; initial state
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:56
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:57
% [agent,physobj]
 % !HoldsAt(SittingOn(agent,physobj),0).
 %  not(initially(sittingOn(Agent,Physobj))).
axiom(not(initially(sittingOn(SittingOn_Param, SittingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:58
% [agent,physobj]
 % !HoldsAt(LyingOn(agent,physobj),0).
 %  not(initially(lyingOn(Agent,Physobj))).
axiom(not(initially(lyingOn(LyingOn_Param, LyingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:59
% HoldsAt(Dressed(Sleeper1),0).
axiom(initially(dressed(sleeper1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:60
% HoldsAt(Awake(Sleeper1),0).
axiom(initially(awake(sleeper1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:61
% HoldsAt(Sleep3(Sleeper1),0).
axiom(initially(sleep3(sleeper1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:62
% HoldsAt(Standing(Sleeper1),0).
axiom(initially(standing(sleeper1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:63
% HoldsAt(DoorUnlocked(Door1),0).
axiom(initially(doorUnlocked(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:64
% HoldsAt(DoorIsOpen(Door1),0).
axiom(initially(doorIsOpen(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:65
% HoldsAt(At(Sleeper1,Room0),0).
axiom(initially(at(sleeper1, room0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:66
% HoldsAt(At(Bed1,Room1),0).
axiom(initially(at(bed1, room1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:68
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:69
% Happens(GetTired(Sleeper1),0).
axiom(happens(getTired(sleeper1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:70
% Happens(WalkThroughDoor12(Sleeper1,Door1),1).
axiom(happens(walkThroughDoor12(sleeper1, door1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:71
% Happens(GetUndressed(Sleeper1),2).
axiom(happens(getUndressed(sleeper1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:72
% Happens(LieOn(Sleeper1,Bed1),3).
axiom(happens(lieOn(sleeper1, bed1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:73
% Happens(FallAsleep(Sleeper1),4).
axiom(happens(fallAsleep(sleeper1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:74
% Happens(Dream(Sleeper1),5).
axiom(happens(dream(sleeper1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:75
% Happens(WakeUp(Sleeper1),6).
axiom(happens(wakeUp(sleeper1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:76
% Happens(RiseFrom(Sleeper1,Bed1),7).
axiom(happens(riseFrom(sleeper1, bed1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:77
% Happens(GetDressed(Sleeper1),8).
axiom(happens(getDressed(sleeper1), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:78
% Happens(WalkThroughDoor21(Sleeper1,Door1),9).
axiom(happens(walkThroughDoor21(sleeper1, door1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:80
% range time 0 10
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:81
==> range(time,0,10).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:82
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:83
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleeping.e:85
==> completion(happens).
%; End of file.
