:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Feeling.e').
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
%; feeling = emotion, attitude, ...
%;
%; The Feeling representation includes simple positive, neutral, and
%; negative emotions, and positive, neutral, and negative attitudes
%; toward objects.
%;
%; emotions
%; agent is happy.

% fluent Happy(agent)
 %  fluent(happy(agent)).
==> mpred_prop(happy(agent),fluent).
==> meta_argtypes(happy(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:22
%; agent is emotionally neutral or calm.

% fluent Calm(agent)
 %  fluent(calm(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:24
==> mpred_prop(calm(agent),fluent).
==> meta_argtypes(calm(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:25
%; agent is unhappy.

% fluent Unhappy(agent)
 %  fluent(unhappy(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:27
==> mpred_prop(unhappy(agent),fluent).
==> meta_argtypes(unhappy(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:28
%; At any moment, an agent is in one of three emotional states:

% xor Happy, Calm, Unhappy
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:30
xor([happy,calm,unhappy]).
%; agent becomes happy.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:32
% event BecomeHappy(agent)
 %  event(becomeHappy(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:33
==> mpred_prop(becomeHappy(agent),event).
==> meta_argtypes(becomeHappy(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:34
%; agent becomes calm.

% event BecomeCalm(agent)
 %  event(becomeCalm(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:36
==> mpred_prop(becomeCalm(agent),event).
==> meta_argtypes(becomeCalm(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:37
%; agent becomes unhappy.

% event BecomeUnhappy(agent)
 %  event(becomeUnhappy(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:39
==> mpred_prop(becomeUnhappy(agent),event).
==> meta_argtypes(becomeUnhappy(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:40
%; A number of effect and precondition axioms deal with the transitions
%; from one emotional state to another:
% [agent,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:43
% Initiates(BecomeHappy(agent),Happy(agent),time).
axiom(initiates(becomeHappy(Agent), happy(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:45
% [agent,time]
% HoldsAt(Calm(agent),time) ->
% Terminates(BecomeHappy(agent),Calm(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:47
axiom(terminates(becomeHappy(Agent), calm(Agent), Time),
    [holds_at(calm(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:49
% [agent,time]
% HoldsAt(Unhappy(agent),time) ->
% Terminates(BecomeHappy(agent),Unhappy(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:51
axiom(terminates(becomeHappy(Agent), unhappy(Agent), Time),
    [holds_at(unhappy(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:53
% [agent,time]
% Happens(BecomeHappy(agent),time) ->
% !HoldsAt(Happy(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:55
axiom(requires(becomeHappy(Agent), Time),
    [not(holds_at(happy(Agent), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:57
% [agent,time]
% Initiates(BecomeCalm(agent),Calm(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:58
axiom(initiates(becomeCalm(Agent), calm(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:60
% [agent,time]
% HoldsAt(Happy(agent),time) ->
% Terminates(BecomeCalm(agent),Happy(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:62
axiom(terminates(becomeCalm(Agent), happy(Agent), Time),
    [holds_at(happy(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:64
% [agent,time]
% HoldsAt(Unhappy(agent),time) ->
% Terminates(BecomeCalm(agent),Unhappy(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:66
axiom(terminates(becomeCalm(Agent), unhappy(Agent), Time),
    [holds_at(unhappy(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:68
% [agent,time]
% Happens(BecomeCalm(agent),time) -> !HoldsAt(Calm(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:69
axiom(requires(becomeCalm(Agent), Time),
    [not(holds_at(calm(Agent), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:71
% [agent,time]
% Initiates(BecomeUnhappy(agent),Unhappy(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:72
axiom(initiates(becomeUnhappy(Agent), unhappy(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:74
% [agent,time]
% HoldsAt(Happy(agent),time) ->
% Terminates(BecomeUnhappy(agent),Happy(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:76
axiom(terminates(becomeUnhappy(Agent), happy(Agent), Time),
    [holds_at(happy(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:78
% [agent,time]
% HoldsAt(Calm(agent),time) ->
% Terminates(BecomeUnhappy(agent),Calm(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:80
axiom(terminates(becomeUnhappy(Agent), calm(Agent), Time),
    [holds_at(calm(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:82
% [agent,time]
% Happens(BecomeUnhappy(agent),time) -> !HoldsAt(Unhappy(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:83
axiom(requires(becomeUnhappy(Agent), Time),
    [not(holds_at(unhappy(Agent), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:85
%; anger

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:87
% fluent AngryAt(agent,agent)
 %  fluent(angryAt(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:88
==> mpred_prop(angryAt(agent,agent),fluent).
==> meta_argtypes(angryAt(agent,agent)).

% event BecomeAngryAt(agent,agent)
 %  event(becomeAngryAt(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:90
==> mpred_prop(becomeAngryAt(agent,agent),event).
==> meta_argtypes(becomeAngryAt(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:91
% [agent1,agent2,time]
% Initiates(BecomeAngryAt(agent1,agent2),AngryAt(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:92
axiom(initiates(becomeAngryAt(Agent1, Agent2), angryAt(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:94
% [agent1,agent2,time]
% Terminates(BecomeHappy(agent1),AngryAt(agent1,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:95
axiom(terminates(becomeHappy(Agent1), angryAt(Agent1, Agent2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:97
% [agent1,agent2,time]
% Happens(BecomeAngryAt(agent1,agent2),time) ->
% Happens(BecomeUnhappy(agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:99
axiom(happens(becomeUnhappy(Agent1), Time),
    [happens(becomeAngryAt(Agent1, Agent2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:101
%; attitudes
%; agent likes object.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:104
% fluent Like(agent,object)
 %  fluent(like(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:105
==> mpred_prop(like(agent,object),fluent).
==> meta_argtypes(like(agent,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:105
%; agent loves object.

% fluent Love(agent,object)
 %  fluent(love(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:107
==> mpred_prop(love(agent,object),fluent).
==> meta_argtypes(love(agent,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:107
%; agent dislikes object.

% fluent Dislike(agent,object)
 %  fluent(dislike(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:109
==> mpred_prop(dislike(agent,object),fluent).
==> meta_argtypes(dislike(agent,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:110
%; agent likes snow.

% fluent LikeSnow(agent)
 %  fluent(likeSnow(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:112
==> mpred_prop(likeSnow(agent),fluent).
==> meta_argtypes(likeSnow(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:113
%; A trigger axiom states that
%; if an agent is awake, likes snow, and is in a room that
%; looks out onto a location where it is snowing, that agent
%; becomes happy:
% [agent,room,outside,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:118
% !HoldsAt(Happy(agent),time) &
% HoldsAt(Awake(agent),time) &
% HoldsAt(LikeSnow(agent),time) &
% HoldsAt(At(agent,room),time) &
% LookOutOnto(room)=outside &
% HoldsAt(Snowing(outside),time) ->
% Happens(BecomeHappy(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:124
axiom(happens(becomeHappy(Agent), Time),
   
    [ not(holds_at(happy(Agent), Time)),
      holds_at(awake(Agent), Time),
      holds_at(likeSnow(Agent), Time),
      holds_at(at(Agent, Room), Time),
      equals(lookOutOnto(Room), Outside),
      holds_at(snowing(Outside), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:126
%; We introduced LikeSnow above since Like
%; can only be used to represent that an agent likes a
%; particular object, not snow in general.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:130
% event Smile(agent)
 %  event(smile(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:131
==> mpred_prop(smile(agent),event).
==> meta_argtypes(smile(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Feeling.e:132
%; End of file.
