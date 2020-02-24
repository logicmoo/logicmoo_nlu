:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/IPRel.e').
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
%; IPRel: interpersonal relations
%;

% fluent FriendOf(agent,agent)
 %  fluent(friendOf(agent,agent)).
==> mpred_prop(friendOf(agent,agent),fluent).
==> meta_argtypes(friendOf(agent,agent)).

% fluent NeutralOf(agent,agent)
 %  fluent(neutralOf(agent,agent)).
==> mpred_prop(neutralOf(agent,agent),fluent).
==> meta_argtypes(neutralOf(agent,agent)).

% fluent EnemyOf(agent,agent)
 %  fluent(enemyOf(agent,agent)).
==> mpred_prop(enemyOf(agent,agent),fluent).
==> meta_argtypes(enemyOf(agent,agent)).

% event BecomeFriends(agent,agent)
 %  event(becomeFriends(agent,agent)).
==> mpred_prop(becomeFriends(agent,agent),event).
==> meta_argtypes(becomeFriends(agent,agent)).

% event BecomeNeutral(agent,agent)
 %  event(becomeNeutral(agent,agent)).
==> mpred_prop(becomeNeutral(agent,agent),event).
==> meta_argtypes(becomeNeutral(agent,agent)).

% event BecomeEnemies(agent,agent)
 %  event(becomeEnemies(agent,agent)).
==> mpred_prop(becomeEnemies(agent,agent),event).
==> meta_argtypes(becomeEnemies(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:23
% [agent1,agent2,time]
% HoldsAt(FriendOf(agent1,agent2),time) ->
% !Holds(EnemyOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:25
axiom(not(holds(enemyOf(Agent1, Agent2), Time)),
    [holds_at(friendOf(Agent1, Agent2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:27
% [agent1,agent2,time]
% HoldsAt(NeutralOf(agent1,agent2),time) ->
% !Holds(EnemyOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:29
axiom(not(holds(enemyOf(Agent1, Agent2), Time)),
    [holds_at(neutralOf(Agent1, Agent2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:31
% [agent1,agent2,time]
% HoldsAt(FriendOf(agent1,agent2),time) ->
% HoldsAt(FriendOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:33
axiom(holds_at(friendOf(Agent2, Agent1), Time),
    [holds_at(friendOf(Agent1, Agent2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:35
% [agent1,agent2,time]
% HoldsAt(NeutralOf(agent1,agent2),time) ->
% HoldsAt(NeutralOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:37
axiom(holds_at(neutralOf(Agent2, Agent1), Time),
    [holds_at(neutralOf(Agent1, Agent2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:39
% [agent1,agent2,time]
% HoldsAt(EnemyOf(agent1,agent2),time) ->
% HoldsAt(EnemyOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:41
axiom(holds_at(enemyOf(Agent2, Agent1), Time),
    [holds_at(enemyOf(Agent1, Agent2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:43
% [agent1,agent2,time]
% Initiates(BecomeFriends(agent1,agent2),FriendOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:44
axiom(initiates(becomeFriends(Agent1, Agent2), friendOf(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:46
% [agent1,agent2,time]
% Initiates(BecomeFriends(agent1,agent2),FriendOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:47
axiom(initiates(becomeFriends(Agent1, Agent2), friendOf(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:49
% [agent1,agent2,time]
% Terminates(BecomeFriends(agent1,agent2),NeutralOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:50
axiom(terminates(becomeFriends(Agent1, Agent2), neutralOf(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:52
% [agent1,agent2,time]
% Terminates(BecomeFriends(agent1,agent2),NeutralOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:53
axiom(terminates(becomeFriends(Agent1, Agent2), neutralOf(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:55
% [agent1,agent2,time]
% Terminates(BecomeFriends(agent1,agent2),EnemyOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:56
axiom(terminates(becomeFriends(Agent1, Agent2), enemyOf(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:58
% [agent1,agent2,time]
% Terminates(BecomeFriends(agent1,agent2),EnemyOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:59
axiom(terminates(becomeFriends(Agent1, Agent2), enemyOf(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:61
% [agent1,agent2,time]
% Initiates(BecomeEnemies(agent1,agent2),EnemyOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:62
axiom(initiates(becomeEnemies(Agent1, Agent2), enemyOf(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:64
% [agent1,agent2,time]
% Initiates(BecomeEnemies(agent1,agent2),EnemyOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:65
axiom(initiates(becomeEnemies(Agent1, Agent2), enemyOf(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:67
% [agent1,agent2,time]
% Terminates(BecomeEnemies(agent1,agent2),NeutralOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:68
axiom(terminates(becomeEnemies(Agent1, Agent2), neutralOf(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:70
% [agent1,agent2,time]
% Terminates(BecomeEnemies(agent1,agent2),NeutralOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:71
axiom(terminates(becomeEnemies(Agent1, Agent2), neutralOf(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:73
% [agent1,agent2,time]
% Terminates(BecomeEnemies(agent1,agent2),FriendOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:74
axiom(terminates(becomeEnemies(Agent1, Agent2), friendOf(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:76
% [agent1,agent2,time]
% Terminates(BecomeEnemies(agent1,agent2),FriendOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:77
axiom(terminates(becomeEnemies(Agent1, Agent2), friendOf(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:79
% [agent1,agent2,time]
% Initiates(BecomeNeutral(agent1,agent2),NeutralOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:80
axiom(initiates(becomeNeutral(Agent1, Agent2), neutralOf(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:82
% [agent1,agent2,time]
% Initiates(BecomeNeutral(agent1,agent2),NeutralOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:83
axiom(initiates(becomeNeutral(Agent1, Agent2), neutralOf(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:85
% [agent1,agent2,time]
% Terminates(BecomeNeutral(agent1,agent2),FriendOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:86
axiom(terminates(becomeNeutral(Agent1, Agent2), friendOf(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:88
% [agent1,agent2,time]
% Terminates(BecomeNeutral(agent1,agent2),FriendOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:89
axiom(terminates(becomeNeutral(Agent1, Agent2), friendOf(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:91
% [agent1,agent2,time]
% Terminates(BecomeNeutral(agent1,agent2),EnemyOf(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:92
axiom(terminates(becomeNeutral(Agent1, Agent2), enemyOf(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:94
% [agent1,agent2,time]
% Terminates(BecomeNeutral(agent1,agent2),EnemyOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:95
axiom(terminates(becomeNeutral(Agent1, Agent2), enemyOf(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:97
% [agent1,agent2,time]
% HoldsAt(FriendOf(agent1,agent2),time) ->
% HoldsAt(Like(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:99
axiom(holds_at(like(Agent1, Agent2), Time),
    [holds_at(friendOf(Agent1, Agent2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:101
% [agent1,agent2,time]
% HoldsAt(EnemyOf(agent1,agent2),time) ->
% HoldsAt(Dislike(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:103
axiom(holds_at(dislike(Agent1, Agent2), Time),
    [holds_at(enemyOf(Agent1, Agent2), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:105
% fluent AcquaintanceOf(agent,agent)
 %  fluent(acquaintanceOf(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:106
==> mpred_prop(acquaintanceOf(agent,agent),fluent).
==> meta_argtypes(acquaintanceOf(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:107
% [agent,time]
 % HoldsAt(AcquaintanceOf(agent,agent),time).
holds_at(acquaintanceOf(Agent,Agent),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:109
% [agent1,agent2,time]
% HoldsAt(AcquaintanceOf(agent1,agent2),time) ->
% HoldsAt(AcquaintanceOf(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:111
axiom(holds_at(acquaintanceOf(Agent2, Agent1), Time),
    [holds_at(acquaintanceOf(Agent1, Agent2), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:113
% event Introduce(agent,agent)
 %  event(introduce(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:114
==> mpred_prop(introduce(agent,agent),event).
==> meta_argtypes(introduce(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:115
% [agent1,agent2,time]
% Initiates(Introduce(agent1,agent2),
%           AcquaintanceOf(agent1,agent2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:118
axiom(initiates(introduce(Agent1, Agent2), acquaintanceOf(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:120
% [agent1,agent2,time]
% Initiates(Introduce(agent1,agent2),
%           AcquaintanceOf(agent2,agent1),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:123
axiom(initiates(introduce(Agent1, Agent2), acquaintanceOf(Agent2, Agent1), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:125
% event IntroduceMutual(agent,agent,agent)
 %  event(introduceMutual(agent,agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:126
==> mpred_prop(introduceMutual(agent,agent,agent),event).
==> meta_argtypes(introduceMutual(agent,agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:127
% [agent1,agent2,agent3,time]
% Initiates(IntroduceMutual(agent1,agent2,agent3),
%           AcquaintanceOf(agent2,agent3),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:130
axiom(initiates(introduceMutual(Agent1, Agent2, Agent3), acquaintanceOf(Agent2, Agent3), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:132
% [agent1,agent2,agent3,time]
% Initiates(IntroduceMutual(agent1,agent2,agent3),
%           AcquaintanceOf(agent3,agent2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:135
axiom(initiates(introduceMutual(Agent1, Agent2, Agent3), acquaintanceOf(Agent3, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:137
% [agent1,agent2,agent3,time]
% Happens(IntroduceMutual(agent1,agent2,agent3),time) ->
% HoldsAt(AcquaintanceOf(agent1,agent2),time) &
% HoldsAt(AcquaintanceOf(agent1,agent3),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:140
axiom(requires(introduceMutual(Agent1, Agent2, Agent3), Time),
   
    [ holds_at(acquaintanceOf(Agent1, Agent2), Time),
      holds_at(acquaintanceOf(Agent1, Agent3), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/IPRel.e:142
%; End of file.
