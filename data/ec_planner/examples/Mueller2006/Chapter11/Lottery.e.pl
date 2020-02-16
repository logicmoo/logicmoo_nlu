:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter11/Lottery.e').
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
%; @book{OrtonyCloreCollins:1988,
%;   author = "Andrew Ortony and Gerald L. Clore and Allan M. Collins",
%;   year = "1988",
%;   title = "The Cognitive Structure of Emotions",
%;   address = "Cambridge",
%;   publisher = "Cambridge University Press",
%; }
%;
%; @book{Mueller:2006,
%;   author = "Erik T. Mueller",
%;   year = "2006",
%;   title = "Commonsense Reasoning",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann/Elsevier",
%; }
%;

% option modeldiff on
:- set_ec_option(modeldiff, on).

% load foundations/Root.e

% load foundations/EC.e

% sort agent
==> sort(agent).

% sort aboutevent
==> sort(aboutevent).

% sort desirability: integer
==> subsort(desirability,integer).

% agent Kate, Lisa
==> t(agent,kate).
==> t(agent,lisa).

% aboutevent WinLotteryKate, WinLotteryLisa
==> t(aboutevent,winLotteryKate).
==> t(aboutevent,winLotteryLisa).

% fluent Joy(agent,aboutevent)
 %  fluent(joy(agent,aboutevent)).
==> mpred_prop(joy(agent,aboutevent),fluent).
==> meta_argtypes(joy(agent,aboutevent)).

% fluent Desirability(agent,agent,aboutevent,desirability)
 %  fluent(desirability(agent,agent,aboutevent,desirability)).
==> mpred_prop(desirability(agent,agent,aboutevent,desirability),
	       fluent).
==> meta_argtypes(desirability(agent,agent,aboutevent,desirability)).

% fluent Believe(agent,aboutevent)
 %  fluent(believe(agent,aboutevent)).
==> mpred_prop(believe(agent,aboutevent),fluent).
==> meta_argtypes(believe(agent,aboutevent)).

% fluent Like(agent,agent)
 %  fluent(like(agent,agent)).
==> mpred_prop(like(agent,agent),fluent).
==> meta_argtypes(like(agent,agent)).

% fluent HappyFor(agent,agent,aboutevent)
 %  fluent(happyFor(agent,agent,aboutevent)).
==> mpred_prop(happyFor(agent,agent,aboutevent),fluent).
==> meta_argtypes(happyFor(agent,agent,aboutevent)).

% event WinLottery(agent)
 %  event(winLottery(agent)).
==> mpred_prop(winLottery(agent),event).
==> meta_argtypes(winLottery(agent)).

% event AddJoy(agent,aboutevent)
 %  event(addJoy(agent,aboutevent)).
==> mpred_prop(addJoy(agent,aboutevent),event).
==> meta_argtypes(addJoy(agent,aboutevent)).

% event AddHappyFor(agent,agent,aboutevent)
 %  event(addHappyFor(agent,agent,aboutevent)).
==> mpred_prop(addHappyFor(agent,agent,aboutevent),event).
==> meta_argtypes(addHappyFor(agent,agent,aboutevent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:49
%; Sigma
% [agent,aboutevent,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:52
% Initiates(AddJoy(agent,aboutevent),Joy(agent,aboutevent),time).
axiom(initiates(addJoy(Agent, Aboutevent), joy(Agent, Aboutevent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:54
% [agent1,agent2,aboutevent,time]
% Initiates(AddHappyFor(agent1,agent2,aboutevent),
%           HappyFor(agent1,agent2,aboutevent),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:57
axiom(initiates(addHappyFor(Agent1, Agent2, Aboutevent), happyFor(Agent1, Agent2, Aboutevent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:59
% [agent1,agent2,aboutevent,time]
% (agent1=Kate & aboutevent=WinLotteryKate) |
% (agent1=Lisa & aboutevent=WinLotteryLisa) ->
% Initiates(WinLottery(agent1),Believe(agent2,aboutevent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:62
axiom(initiates(winLottery(Agent1), believe(Agent2, Aboutevent), Time),
    [equals(Agent1, kate), equals(Aboutevent, winLotteryKate)]).
axiom(initiates(winLottery(Agent1), believe(Agent2, Aboutevent), Time),
    [equals(Agent1, lisa), equals(Aboutevent, winLotteryLisa)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:64
%; Delta
% [agent,aboutevent,desirability,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:67
% !HoldsAt(Joy(agent,aboutevent),time) &
% HoldsAt(Desirability(agent,agent,aboutevent,desirability),time) &
% desirability=1 &
% HoldsAt(Believe(agent,aboutevent),time) ->
% Happens(AddJoy(agent,aboutevent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:71
axiom(happens(addJoy(Agent, Aboutevent), Time),
   
    [ not(holds_at(joy(Agent, Aboutevent), Time)),
      holds_at(desirability(Agent,
                            Agent,
                            Aboutevent,
                            Desirability),
               Time),
      equals(Desirability, 1),
      holds_at(believe(Agent, Aboutevent), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:73
% [agent1,agent2,aboutevent,desirability1,desirability2,time]
% !HoldsAt(HappyFor(agent1,agent2,aboutevent),time) &
% HoldsAt(Desirability(agent1,agent2,aboutevent,desirability1),time) &
% desirability1=1 &
% HoldsAt(Desirability(agent1,agent1,aboutevent,desirability2),time) &
% desirability2=1 &
% HoldsAt(Like(agent1,agent2),time) &
% HoldsAt(Believe(agent1,aboutevent),time) &
% agent1 != agent2 ->
% Happens(AddHappyFor(agent1,agent2,aboutevent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:82
axiom(happens(addHappyFor(Agent1, Agent2, Aboutevent), Time),
   
    [ not(holds_at(happyFor(Agent1, Agent2, Aboutevent),
                   Time)),
      holds_at(desirability(Agent1,
                            Agent2,
                            Aboutevent,
                            Desirability1),
               Time),
      equals(Desirability1, 1),
      holds_at(desirability(Agent1,
                            Agent1,
                            Aboutevent,
                            Desirability2),
               Time),
      equals(Desirability2, 1),
      holds_at(like(Agent1, Agent2), Time),
      holds_at(believe(Agent1, Aboutevent), Time),
      dif(Agent1, Agent2)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:84
% Happens(WinLottery(Kate),0).
axiom(happens(winLottery(kate), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:86
%; Psi
% [agent1,agent2,aboutevent,desirability1,desirability2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:89
% HoldsAt(Desirability(agent1,agent2,aboutevent,desirability1),time) &
% HoldsAt(Desirability(agent1,agent2,aboutevent,desirability2),time) ->
% desirability1 = desirability2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:91
axiom(Desirability1=Desirability2,
   
    [ holds_at(desirability(Agent1,
                            Agent2,
                            Aboutevent,
                            Desirability1),
               Time),
      holds_at(desirability(Agent1,
                            Agent2,
                            Aboutevent,
                            Desirability2),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:93
%; Gamma
% [agent,aboutevent]
 % !HoldsAt(Joy(agent,aboutevent),0).
 %  not(initially(joy(Agent,Aboutevent))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:95
axiom(not(initially(joy(Joy_Param, Joy_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:96
% [agent1,agent2,aboutevent]
 % !HoldsAt(HappyFor(agent1,agent2,aboutevent),0).
 %  not(initially(happyFor(Agent1,Agent2,Aboutevent))).
axiom(not(initially(happyFor(HappyFor_Param, _, HappyFor_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:97
% [aboutevent]
 % !HoldsAt(Believe(Kate,aboutevent),0).
 %  not(initially(believe(kate,Aboutevent))).
axiom(not(initially(believe(kate, Believe_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:98
% [aboutevent]
 % !HoldsAt(Believe(Lisa,aboutevent),0).
 %  not(initially(believe(lisa,Aboutevent))).
axiom(not(initially(believe(lisa, Believe_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:99
% [agent1,agent2,time]
 % HoldsAt(Like(agent1,agent2),time).
holds_at(like(Agent1,Agent2),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:101
% [time]
 % HoldsAt(Desirability(Lisa,Kate,WinLotteryKate,1),time).
holds_at(desirability(lisa,kate,winLotteryKate,1),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:102
% [time]
 % HoldsAt(Desirability(Kate,Kate,WinLotteryKate,1),time).
holds_at(desirability(kate,kate,winLotteryKate,1),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:103
% [time]
 % HoldsAt(Desirability(Lisa,Lisa,WinLotteryKate,1),time).
holds_at(desirability(lisa,lisa,winLotteryKate,1),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:104
% [time]
 % HoldsAt(Desirability(Kate,Kate,WinLotteryLisa,0),time).
holds_at(desirability(kate,kate,winLotteryLisa,0),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:105
% [time]
 % HoldsAt(Desirability(Kate,Lisa,WinLotteryLisa,0),time).
holds_at(desirability(kate,lisa,winLotteryLisa,0),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:106
% [time]
 % HoldsAt(Desirability(Kate,Kate,WinLotteryLisa,0),time).
holds_at(desirability(kate,kate,winLotteryLisa,0),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:107
% [time]
 % HoldsAt(Desirability(Kate,Lisa,WinLotteryKate,0),time).
holds_at(desirability(kate,lisa,winLotteryKate,0),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:108
% [time]
 % HoldsAt(Desirability(Lisa,Lisa,WinLotteryLisa,0),time).
holds_at(desirability(lisa,lisa,winLotteryLisa,0),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:109
% [time]
 % HoldsAt(Desirability(Lisa,Kate,WinLotteryLisa,1),time).
holds_at(desirability(lisa,kate,winLotteryLisa,1),Time).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:111
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:112
==> completion(happens).

% range time 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:114
==> range(time,0,3).

% range desirability -1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:115
==> range(desirability,-1,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/Lottery.e:116
==> range(offset,1,1).
%; End of file.
