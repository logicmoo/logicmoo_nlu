:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Exercises/TelephoneBugs.e').
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
%; Example: Telephone
%;
%; @book{Mueller:2006,
%;   author = "Erik T. Mueller",
%;   year = "2006",
%;   title = "Commonsense Reasoning",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann/Elsevier",
%; }
%;

% load foundations/Root.e

% load foundations/EC.e

% sort agent
==> sort(agent).

% sort phone
==> sort(phone).

% agent Agent1, Agent2
==> t(agent,agent1).
==> t(agent,agent2).

% phone Phone1, Phone2
==> t(phone,phone1).
==> t(phone,phone2).

% fluent Ringing(phone,phone)
 %  fluent(ringing(phone,phone)).
==> mpred_prop(ringing(phone,phone),fluent).
==> meta_argtypes(ringing(phone,phone)).

% fluent DialTone(phone)
 %  fluent(dialTone(phone)).
==> mpred_prop(dialTone(phone),fluent).
==> meta_argtypes(dialTone(phone)).

% fluent BusySignal(phone)
 %  fluent(busySignal(phone)).
==> mpred_prop(busySignal(phone),fluent).
==> meta_argtypes(busySignal(phone)).

% fluent Idle(phone)
 %  fluent(idle(phone)).
==> mpred_prop(idle(phone),fluent).
==> meta_argtypes(idle(phone)).

% fluent Connected(phone,phone)
 %  fluent(connected(phone,phone)).
==> mpred_prop(connected(phone,phone),fluent).
==> meta_argtypes(connected(phone,phone)).

% fluent Disconnected(phone)
 %  fluent(disconnected(phone)).
==> mpred_prop(disconnected(phone),fluent).
==> meta_argtypes(disconnected(phone)).

% event PickUp(agent,phone)
 %  event(pickUp(agent,phone)).
==> mpred_prop(pickUp(agent,phone),event).
==> meta_argtypes(pickUp(agent,phone)).

% event SetDown(agent,phone)
 %  event(setDown(agent,phone)).
==> mpred_prop(setDown(agent,phone),event).
==> meta_argtypes(setDown(agent,phone)).

% event Dial(agent,phone,phone)
 %  event(dial(agent,phone,phone)).
==> mpred_prop(dial(agent,phone,phone),event).
==> meta_argtypes(dial(agent,phone,phone)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:41
%; Sigma
% [agent,phone,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:44
% HoldsAt(Idle(phone),time) ->
% Initiates(PickUp(agent,phone),DialTone(phone),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:45
axiom(initiates(pickUp(Agent, Phone), dialTone(Phone), Time),
    [holds_at(idle(Phone), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:47
% [agent,phone,time]
% HoldsAt(Idle(phone),time) ->
% Terminates(PickUp(agent,phone),Idle(phone),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:49
axiom(terminates(pickUp(Agent, Phone), idle(Phone), Time),
    [holds_at(idle(Phone), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:51
% [agent,phone,time]
% HoldsAt(DialTone(phone),time) ->
% Initiates(SetDown(agent,phone),Idle(phone),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:53
axiom(initiates(setDown(Agent, Phone), idle(Phone), Time),
    [holds_at(dialTone(Phone), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:55
% [agent,phone,time]
% HoldsAt(DialTone(phone),time) ->
% Terminates(SetDown(agent,phone),DialTone(phone),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:57
axiom(terminates(setDown(Agent, Phone), dialTone(Phone), Time),
    [holds_at(dialTone(Phone), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:59
% [agent,phone1,phone2,time]
% HoldsAt(DialTone(phone1),time) &
% HoldsAt(Idle(phone2),time) ->
% Initiates(Dial(agent,phone1,phone2),Ringing(phone1,phone2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:62
axiom(initiates(dial(Agent, Phone1, Phone2), ringing(Phone1, Phone2), Time),
   
    [ holds_at(dialTone(Phone1), Time),
      holds_at(idle(Phone2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:64
% [agent,phone1,phone2,time]
% HoldsAt(DialTone(phone1),time) &
% HoldsAt(Idle(phone2),time) ->
% Terminates(Dial(agent,phone1,phone2),DialTone(phone1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:67
axiom(terminates(dial(Agent, Phone1, Phone2), dialTone(Phone1), Time),
   
    [ holds_at(dialTone(Phone1), Time),
      holds_at(idle(Phone2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:69
% [agent,phone1,phone2,time]
% HoldsAt(DialTone(phone1),time) &
% HoldsAt(Idle(phone2),time) ->
% Terminates(Dial(agent,phone1,phone2),Idle(phone2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:72
axiom(terminates(dial(Agent, Phone1, Phone2), idle(Phone2), Time),
   
    [ holds_at(dialTone(Phone1), Time),
      holds_at(idle(Phone2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:74
% [agent,phone1,phone2,time]
% HoldsAt(DialTone(phone1),time) &
% !HoldsAt(Idle(phone2),time) ->
% Initiates(Dial(agent,phone1,phone2),BusySignal(phone1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:77
axiom(initiates(dial(Agent, Phone1, Phone2), busySignal(Phone1), Time),
   
    [ holds_at(dialTone(Phone1), Time),
      not(holds_at(idle(Phone2), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:79
% [agent,phone1,phone2,time]
% HoldsAt(DialTone(phone1),time) &
% !HoldsAt(Idle(phone2),time) ->
% Terminates(Dial(agent,phone1,phone2),DialTone(phone1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:82
axiom(terminates(dial(Agent, Phone1, Phone2), dialTone(Phone1), Time),
   
    [ holds_at(dialTone(Phone1), Time),
      not(holds_at(idle(Phone2), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:84
% [agent,phone,time]
% HoldsAt(BusySignal(phone),time) ->
% Initiates(SetDown(agent,phone),Idle(phone),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:86
axiom(initiates(setDown(Agent, Phone), idle(Phone), Time),
    [holds_at(busySignal(Phone), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:88
% [agent,phone,time]
% HoldsAt(BusySignal(phone),time) ->
% Terminates(SetDown(agent,phone),BusySignal(phone),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:90
axiom(terminates(setDown(Agent, Phone), busySignal(Phone), Time),
    [holds_at(busySignal(Phone), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:92
% [agent,phone1,phone2,time]
% HoldsAt(Ringing(phone1,phone2),time) ->
% Initiates(SetDown(agent,phone1),Idle(phone1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:94
axiom(initiates(setDown(Agent, Phone1), idle(Phone1), Time),
    [holds_at(ringing(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:96
% [agent,phone1,phone2,time]
% HoldsAt(Ringing(phone1,phone2),time) ->
% Initiates(SetDown(agent,phone1),Idle(phone2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:98
axiom(initiates(setDown(Agent, Phone1), idle(Phone2), Time),
    [holds_at(ringing(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:100
% [agent,phone1,phone2,time]
% HoldsAt(Ringing(phone1,phone2),time) ->
% Terminates(SetDown(agent,phone1),Ringing(phone1,phone2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:102
axiom(terminates(setDown(Agent, Phone1), ringing(Phone1, Phone2), Time),
    [holds_at(ringing(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:104
% [agent,phone1,phone2,time]
% HoldsAt(Ringing(phone1,phone2),time) ->
% Initiates(PickUp(agent,phone2),Connected(phone1,phone2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:106
axiom(initiates(pickUp(Agent, Phone2), connected(Phone1, Phone2), Time),
    [holds_at(ringing(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:108
% [agent,phone1,phone2,time]
% HoldsAt(Ringing(phone1,phone2),time) ->
% Terminates(PickUp(agent,phone2),Ringing(phone1,phone2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:110
axiom(terminates(pickUp(Agent, Phone2), ringing(Phone1, Phone2), Time),
    [holds_at(ringing(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:112
% [agent,phone1,phone2,time]
% HoldsAt(Connected(phone1,phone2),time) ->
% Initiates(SetDown(agent,phone1),Idle(phone1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:114
axiom(initiates(setDown(Agent, Phone1), idle(Phone1), Time),
    [holds_at(connected(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:116
% [agent,phone1,phone2,time]
% HoldsAt(Connected(phone1,phone2),time) ->
% Initiates(SetDown(agent,phone1),Disconnected(phone2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:118
axiom(initiates(setDown(Agent, Phone1), disconnected(Phone2), Time),
    [holds_at(connected(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:120
% [agent,phone1,phone2,time]
% HoldsAt(Connected(phone1,phone2),time) ->
% Terminates(SetDown(agent,phone1),Connected(phone1,phone2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:122
axiom(terminates(setDown(Agent, Phone1), connected(Phone1, Phone2), Time),
    [holds_at(connected(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:124
% [agent,phone1,phone2,time]
% HoldsAt(Connected(phone1,phone2),time) ->
% Initiates(SetDown(agent,phone2),Idle(phone2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:126
axiom(initiates(setDown(Agent, Phone2), idle(Phone2), Time),
    [holds_at(connected(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:128
% [agent,phone1,phone2,time]
% HoldsAt(Connected(phone1,phone2),time) ->
% Initiates(SetDown(agent,phone2),Disconnected(phone1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:130
axiom(initiates(setDown(Agent, Phone2), disconnected(Phone1), Time),
    [holds_at(connected(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:132
% [agent,phone1,phone2,time]
% HoldsAt(Connected(phone1,phone2),time) ->
% Terminates(SetDown(agent,phone2),Connected(phone1,phone2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:134
axiom(terminates(setDown(Agent, Phone2), connected(Phone1, Phone2), Time),
    [holds_at(connected(Phone1, Phone2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:136
% [agent,phone,time]
% HoldsAt(Disconnected(phone),time) ->
% Initiates(SetDown(agent,phone),Idle(phone),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:138
axiom(initiates(setDown(Agent, Phone), idle(Phone), Time),
    [holds_at(disconnected(Phone), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:140
% [agent,phone,time]
% HoldsAt(Disconnected(phone),time) ->
% Terminates(SetDown(agent,phone),Disconnected(phone),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:142
axiom(terminates(setDown(Agent, Phone), disconnected(Phone), Time),
    [holds_at(disconnected(Phone), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:144
%; Delta
%; (1) Two agents dial each other simultaneously without first
%; picking up phone.


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:148
% Happens(Dial(Agent1,Phone1,Phone2),0).
axiom(happens(dial(agent1, phone1, phone2), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:149
% Happens(Dial(Agent2,Phone2,Phone1),0).
axiom(happens(dial(agent2, phone2, phone1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:151
%; (2) Two agents dial each other simultaneously.


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:152
% Happens(PickUp(Agent1,Phone1),1).
axiom(happens(pickUp(agent1, phone1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:153
% Happens(PickUp(Agent2,Phone2),1).
axiom(happens(pickUp(agent2, phone2), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:154
% Happens(Dial(Agent1,Phone1,Phone2),2).
axiom(happens(dial(agent1, phone1, phone2), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:155
% Happens(Dial(Agent2,Phone2,Phone1),2).
axiom(happens(dial(agent2, phone2, phone1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:156
% Happens(SetDown(Agent1,Phone1),3).
axiom(happens(setDown(agent1, phone1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:157
% Happens(SetDown(Agent2,Phone2),3).
axiom(happens(setDown(agent2, phone2), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:159
%; (3) One agent dials another agent just as the other
%; agent picks up the phone.


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:161
% Happens(PickUp(Agent1,Phone1),4).
axiom(happens(pickUp(agent1, phone1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:162
% Happens(Dial(Agent1,Phone1,Phone2),5).
axiom(happens(dial(agent1, phone1, phone2), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:163
% Happens(PickUp(Agent2,Phone2),5).
axiom(happens(pickUp(agent2, phone2), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:165
%; Psi
% [phone,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:168
% !HoldsAt(Ringing(phone,phone),time).
 %  not(holds_at(ringing(Phone,Phone),Time)).
axiom(not(holds_at(ringing(Ringing_Param, Ringing_Param), Time2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:170
% [phone1,phone2,time]
% HoldsAt(Ringing(phone1,phone2),time) &
% phone1!=phone2 ->
% !HoldsAt(Ringing(phone2,phone1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:173
axiom(not(holds_at(ringing(Phone2, Phone1), Time)),
   
    [ holds_at(ringing(Phone1, Phone2), Time),
      dif(Phone1, Phone2)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:175
% [phone,time]
% !HoldsAt(Connected(phone,phone),time).
 %  not(holds_at(connected(Phone,Phone),Time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:176
axiom(not(holds_at(connected(Connected_Param, Connected_Param), Time2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:178
% [phone1,phone2,time]
% HoldsAt(Connected(phone1,phone2),time) &
% phone1!=phone2 ->
% !HoldsAt(Connected(phone2,phone1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:181
axiom(not(holds_at(connected(Phone2, Phone1), Time)),
   
    [ holds_at(connected(Phone1, Phone2), Time),
      dif(Phone1, Phone2)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:183
% mutex Idle, DialTone, BusySignal, Disconnected
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:184
mutex(idle).
mutex(dialTone).
mutex(busySignal).
mutex(disconnected).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:185
% [phone1,phone2,time]
% HoldsAt(Idle(phone1),time) ->
% !HoldsAt(Ringing(phone1,phone2),time) &
% !HoldsAt(Connected(phone1,phone2),time).

 /*   if(holds_at(idle(Phone1), Time),
          (not(holds_at(ringing(Phone1, Phone2), Time)), not(holds_at(connected(Phone1, Phone2), Time)))).
 */

 /*  not(holds_at(idle(Ringing_Param), Time3)) :-
       (   holds_at(ringing(Ringing_Param, Ringing_Ret), Time3)
       ;   holds_at(connected(Ringing_Param, Ringing_Ret), Time3)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:188
axiom(not(holds_at(idle(Ringing_Param), Time3)),
    [holds_at(ringing(Ringing_Param, Ringing_Ret), Time3)]).
axiom(not(holds_at(idle(Ringing_Param), Time3)),
    [holds_at(connected(Ringing_Param, Ringing_Ret), Time3)]).

 /*  not(holds_at(ringing(Ringing_Param7, Ringing_Ret8), Time6)) :-
       holds_at(idle(Ringing_Param7), Time6).
 */
axiom(not(holds_at(ringing(Ringing_Param7, Ringing_Ret8), Time6)),
    [holds_at(idle(Ringing_Param7), Time6)]).

 /*  not(holds_at(connected(Connected_Param, Connected_Ret), Time9)) :-
       holds_at(idle(Connected_Param), Time9).
 */
axiom(not(holds_at(connected(Connected_Param, Connected_Ret), Time9)),
    [holds_at(idle(Connected_Param), Time9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:190
%; contradicts (3) above:
%;[phone1,phone2,time]
%;HoldsAt(DialTone(phone2),time) ->
%;!HoldsAt(Ringing(phone1,phone2),time) &
%;!HoldsAt(Connected(phone1,phone2),time).
%; etc.
%; Gamma
% [phone]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:200
% HoldsAt(Idle(phone),0).
axiom(initially(idle(Phone)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:202
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:203
==> completion(happens).

% range time 0 6
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:205
==> range(time,0,6).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TelephoneBugs.e:206
==> range(offset,1,1).
%; End of file.
