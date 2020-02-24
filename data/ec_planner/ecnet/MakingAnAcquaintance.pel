:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/MakingAnAcquaintance.e').
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

% ignore FriendOf, NeutralOf, EnemyOf,
ignore(friendOf).
ignore(neutralOf).
ignore(enemyOf).

% ignore BecomeFriends, BecomeNeutral, BecomeEnemies
ignore(becomeFriends).
ignore(becomeNeutral).
ignore(becomeEnemies).

% ignore Happy, Calm, Unhappy
ignore(happy).
ignore(calm).
ignore(unhappy).

% ignore BecomeHappy, BecomeCalm, BecomeUnhappy
ignore(becomeHappy).
ignore(becomeCalm).
ignore(becomeUnhappy).

% ignore AngryAt, BecomeAngryAt
ignore(angryAt).
ignore(becomeAngryAt).

% ignore Like, Love, Dislike, LikeSnow
ignore(like).
ignore(love).
ignore(dislike).
ignore(likeSnow).

% ignore HandTo
ignore(handTo).

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

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/Mueller2003/Feeling.e

% load answers/Mueller2004c/HandTo.e

% load answers/Mueller2004c/RTSpaceM.e
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2003/Sleep.e

% load answers/Mueller2003/SpeechAct.e

% load answers/Mueller2004c/IPRel.e

% location Location1
==> t(location,location1).

% portal DummyPortal1
==> t(portal,dummyPortal1).

% agent Introducer1
==> t(agent,introducer1).

% agent Introducee1
==> t(agent,introducee1).

% agent Introduced1
==> t(agent,introduced1).
%; initial state
% [agent,physobj]
 % !HoldsAt(SittingOn(agent,physobj),0).
 %  not(initially(sittingOn(Agent,Physobj))).
axiom(not(initially(sittingOn(SittingOn_Param, SittingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:60
% [agent,physobj]
 % !HoldsAt(LyingOn(agent,physobj),0).
 %  not(initially(lyingOn(Agent,Physobj))).
axiom(not(initially(lyingOn(LyingOn_Param, LyingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:61
% [agent]
 % HoldsAt(Dressed(agent),0).
axiom(initially(dressed(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:62
% [agent]
 % HoldsAt(Awake(agent),0).
axiom(initially(awake(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:63
% [agent]
 % HoldsAt(Sleep3(agent),0).
axiom(initially(sleep3(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:64
% [agent]
 % HoldsAt(Standing(agent),0).
axiom(initially(standing(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:65
% HoldsAt(AcquaintanceOf(Introducer1,Introducee1),0).
axiom(initially(acquaintanceOf(introducer1, introducee1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:66
% HoldsAt(AcquaintanceOf(Introducer1,Introduced1),0).
axiom(initially(acquaintanceOf(introducer1, introduced1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:67
% !HoldsAt(AcquaintanceOf(Introducee1,Introduced1),0).
 %  not(initially(acquaintanceOf(introducee1,introduced1))).
axiom(not(initially(acquaintanceOf(introducee1, introduced1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:69
%; narrative
%;Happens(IntroduceMutual(Introducer1,Introducee1,Introduced1),0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:71
% Happens(Introduce(Introducee1,Introduced1),0).
axiom(happens(introduce(introducee1, introduced1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:72
%;Happens(Introduce(Introduced1,Introducee1),0).
%;Happens(Smile(Introducer1),1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:74
% Happens(Smile(Introducee1),1).
axiom(happens(smile(introducee1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:75
% Happens(Smile(Introduced1),2).
axiom(happens(smile(introduced1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:76
% Happens(SayPleasedToMeet(Introducee1,Introduced1),3).
axiom(happens(sayPleasedToMeet(introducee1, introduced1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:77
% Happens(SayPleasedToMeet(Introduced1,Introducee1),4).
axiom(happens(sayPleasedToMeet(introduced1, introducee1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:78
% Happens(ShakeHands(Introducee1,Introduced1),5).
axiom(happens(shakeHands(introducee1, introduced1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:80
% range time 0 6
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:81
==> range(time,0,6).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:82
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:83
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/MakingAnAcquaintance.e:85
==> completion(happens).
%; End of file.
