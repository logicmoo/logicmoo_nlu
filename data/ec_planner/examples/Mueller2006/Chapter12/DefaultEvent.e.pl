:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter12/DefaultEvent.e').
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

% sort clock
==> sort(clock).

% fluent Beeping(clock)
 %  fluent(beeping(clock)).
==> mpred_prop(beeping(clock),fluent).
==> meta_argtypes(beeping(clock)).

% fluent AlarmTime(clock,time)
 %  fluent(alarmTime(clock,time)).
==> mpred_prop(alarmTime(clock,time),fluent).
==> meta_argtypes(alarmTime(clock,time)).

% fluent AlarmOn(clock)
 %  fluent(alarmOn(clock)).
==> mpred_prop(alarmOn(clock),fluent).
==> meta_argtypes(alarmOn(clock)).

% event SetAlarmTime(agent,clock,time)
 %  event(setAlarmTime(agent,clock,time)).
==> mpred_prop(setAlarmTime(agent,clock,time),event).
==> meta_argtypes(setAlarmTime(agent,clock,time)).

% event StartBeeping(clock)
 %  event(startBeeping(clock)).
==> mpred_prop(startBeeping(clock),event).
==> meta_argtypes(startBeeping(clock)).

% event TurnOnAlarm(agent,clock)
 %  event(turnOnAlarm(agent,clock)).
==> mpred_prop(turnOnAlarm(agent,clock),event).
==> meta_argtypes(turnOnAlarm(agent,clock)).

% event TurnOffAlarm(agent,clock)
 %  event(turnOffAlarm(agent,clock)).
==> mpred_prop(turnOffAlarm(agent,clock),event).
==> meta_argtypes(turnOffAlarm(agent,clock)).

% predicate Ab1(clock,time)
 %  predicate(ab1(clock,time)).
==> mpred_prop(ab1(clock,time),predicate).
==> meta_argtypes(ab1(clock,time)).

% agent Nathan
==> t(agent,nathan).

% clock Clock
==> t(clock,clock).
%; Sigma
% [agent,clock,time1,time2,time]
% HoldsAt(AlarmTime(clock,time1),time) &
% time1!=time2 ->
% Initiates(SetAlarmTime(agent,clock,time2),AlarmTime(clock,time2),time).
axiom(initiates(setAlarmTime(Agent, Clock, Time2), alarmTime(Clock, Time2), Time),
   
    [ holds_at(alarmTime(Clock, Time1), Time),
      { dif(Time1, Time2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:48
% [agent,clock,time1,time2,time]
% HoldsAt(AlarmTime(clock,time1),time) &
% time1!=time2 ->
% Terminates(SetAlarmTime(agent,clock,time2),AlarmTime(clock,time1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:51
axiom(terminates(setAlarmTime(Agent, Clock, Time2), alarmTime(Clock, Time1), Time),
   
    [ holds_at(alarmTime(Clock, Time1), Time),
      { dif(Time1, Time2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:53
% [agent,clock,time]
% Initiates(TurnOnAlarm(agent,clock),AlarmOn(clock),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:54
axiom(initiates(turnOnAlarm(Agent, Clock), alarmOn(Clock), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:56
% [agent,clock,time]
% Terminates(TurnOffAlarm(agent,clock),AlarmOn(clock),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:57
axiom(terminates(turnOffAlarm(Agent, Clock), alarmOn(Clock), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:59
% [clock,time]
% Initiates(StartBeeping(clock),Beeping(clock),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:60
axiom(initiates(startBeeping(Clock), beeping(Clock), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:62
% [agent,clock,time]
% Terminates(TurnOffAlarm(agent,clock),Beeping(clock),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:63
axiom(terminates(turnOffAlarm(Agent, Clock), beeping(Clock), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:65
%; Delta
% [clock,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:68
% HoldsAt(AlarmTime(clock,time),time) &
% HoldsAt(AlarmOn(clock),time) &
% !Ab1(clock,time) ->
% Happens(StartBeeping(clock),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:71
axiom(happens(startBeeping(Clock), Time),
   
    [ holds_at(alarmTime(Clock, Time), Time),
      holds_at(alarmOn(Clock), Time),
      not(ab1(Clock, Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:73
% Happens(SetAlarmTime(Nathan,Clock,2),0).
axiom(happens(setAlarmTime(nathan, clock, 2), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:74
% Happens(TurnOnAlarm(Nathan,Clock),1).
axiom(happens(turnOnAlarm(nathan, clock), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:76
%; Psi
% [clock,time1,time2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:79
% HoldsAt(AlarmTime(clock,time1),time) &
% HoldsAt(AlarmTime(clock,time2),time) ->
% time1=time2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:81
axiom(Time1=Time2,
   
    [ holds_at(alarmTime(Clock, Time1), Time),
      holds_at(alarmTime(Clock, Time2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:83
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:85
% !HoldsAt(AlarmOn(Clock),0).
 %  not(initially(alarmOn(clock))).
axiom(not(initially(alarmOn(clock))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:86
% !HoldsAt(Beeping(Clock),0).
 %  not(initially(beeping(clock))).
axiom(not(initially(beeping(clock))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:87
% HoldsAt(AlarmTime(Clock,3),0).
axiom(initially(alarmTime(clock, 3)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:89
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:90
==> completion(happens).

% completion Theta Ab1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:91
==> completion(theta).
==> completion(ab1).

% range time 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:93
==> range(time,0,3).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter12/DefaultEvent.e:94
==> range(offset,1,1).
%; End of file.
