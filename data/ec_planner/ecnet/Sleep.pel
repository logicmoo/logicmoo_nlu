:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Sleep.e').
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
%; The Sleep representation deals with the activity of sleeping and
%; body posture.
%; It is similar to the finite automaton representation of sleep
%; used in ThoughtTreasure \fullcite[chap. 7]{Mueller:1998}.
%;
%; @book{Mueller:1998,
%;   author = "Erik T. Mueller",
%;   year = "1998",
%;   title = "Natural Language Processing with \uppercase{T}hought\uppercase{T}reasure",
%;   address = "New York",
%;   publisher = "Signiform",
%; }
%;
%; sleep
%; agent wakes up.

% event WakeUp(agent)
 %  event(wakeUp(agent)).
==> mpred_prop(wakeUp(agent),event).
==> meta_argtypes(wakeUp(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:29
%; agent gets tired.

% event GetTired(agent)
 %  event(getTired(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:31
==> mpred_prop(getTired(agent),event).
==> meta_argtypes(getTired(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:32
%; agent falls asleep.

% event FallAsleep(agent)
 %  event(fallAsleep(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:34
==> mpred_prop(fallAsleep(agent),event).
==> meta_argtypes(fallAsleep(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:35
%; agent is asleep.

% fluent Sleep0(agent)
 %  fluent(sleep0(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:37
==> mpred_prop(sleep0(agent),fluent).
==> meta_argtypes(sleep0(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:37
%; agent is awake and in bed.

% fluent Sleep1(agent)
 %  fluent(sleep1(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:39
==> mpred_prop(sleep1(agent),fluent).
==> meta_argtypes(sleep1(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:39
%; agent is awake, out of bed, and undressed.

% fluent Sleep2(agent)
 %  fluent(sleep2(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:41
==> mpred_prop(sleep2(agent),fluent).
==> meta_argtypes(sleep2(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:41
%; agent is awake and dressed.

% fluent Sleep3(agent)
 %  fluent(sleep3(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:43
==> mpred_prop(sleep3(agent),fluent).
==> meta_argtypes(sleep3(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:43
%; agent is tired and dressed.

% fluent Sleep4(agent)
 %  fluent(sleep4(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:45
==> mpred_prop(sleep4(agent),fluent).
==> meta_argtypes(sleep4(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:45
%; agent is tired and undressed.

% fluent Sleep5(agent)
 %  fluent(sleep5(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:47
==> mpred_prop(sleep5(agent),fluent).
==> meta_argtypes(sleep5(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:47
%; agent is in bed, waiting to fall asleep.

% fluent Sleep6(agent)
 %  fluent(sleep6(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:49
==> mpred_prop(sleep6(agent),fluent).
==> meta_argtypes(sleep6(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:50
%; At any time, an agent is in one of seven sleep states:

% xor Sleep0, Sleep1, Sleep2, Sleep3, Sleep4, Sleep5, Sleep6
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:52
xor([sleep0,sleep1,sleep2,sleep3,sleep4,sleep5,sleep6]).
%; constraints
%; agent is asleep.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:56
% fluent Asleep(agent)
 %  fluent(asleep(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:57
==> mpred_prop(asleep(agent),fluent).
==> meta_argtypes(asleep(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:57
%; agent is awake.

% fluent Awake(agent)
 %  fluent(awake(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:59
==> mpred_prop(awake(agent),fluent).
==> meta_argtypes(awake(agent)).

% noninertial Asleep
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:60
==> noninertial(asleep).

% noninertial Awake
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:61
==> noninertial(awake).
%; Sleep0 indicates that the agent is asleep:
% [agent,time]
 % HoldsAt(Asleep(agent),time) <-> HoldsAt(Sleep0(agent),time).

 /*  holds_at(asleep(Agent), Time) <->
       holds_at(sleep0(Agent), Time).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:63
axiom(holds_at(asleep(Agent), Time),
    [holds_at(sleep0(Agent), Time)]).
axiom(holds_at(sleep0(Agent), Time),
    [holds_at(asleep(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:65
%; In all other sleep states, the agent is awake:
% [agent,time]
% HoldsAt(Awake(agent),time) <->
% HoldsAt(Sleep1(agent),time) |
% HoldsAt(Sleep2(agent),time) |
% HoldsAt(Sleep3(agent),time) |
% HoldsAt(Sleep4(agent),time) |
% HoldsAt(Sleep5(agent),time) |
% HoldsAt(Sleep6(agent),time).

 /*  holds_at(awake(Agent), Time) <->
       (   holds_at(sleep1(Agent), Time)
       ;   holds_at(sleep2(Agent), Time)
       ;   holds_at(sleep3(Agent), Time)
       ;   holds_at(sleep4(Agent), Time)
       ;   holds_at(sleep5(Agent), Time)
       ;   holds_at(sleep6(Agent), Time)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:73
axiom(holds_at(awake(Agent), Time),
    [holds_at(sleep1(Agent), Time)]).
axiom(holds_at(awake(Agent), Time),
    [holds_at(sleep2(Agent), Time)]).
axiom(holds_at(awake(Agent), Time),
    [holds_at(sleep3(Agent), Time)]).
axiom(holds_at(awake(Agent), Time),
    [holds_at(sleep4(Agent), Time)]).
axiom(holds_at(awake(Agent), Time),
    [holds_at(sleep5(Agent), Time)]).
axiom(holds_at(awake(Agent), Time),
    [holds_at(sleep6(Agent), Time)]).

 /*   if(holds_at(awake(Agent), Time),
          (holds_at(sleep1(Agent), Time);holds_at(sleep2(Agent), Time);holds_at(sleep3(Agent), Time);holds_at(sleep4(Agent), Time);holds_at(sleep5(Agent), Time);holds_at(sleep6(Agent), Time))).
 */

 /*  holds_at(sleep1(Sleep1_Ret), Time2) :-
       ( not(holds_at(sleep2(Sleep1_Ret), Time2)),
         not(holds_at(sleep3(Sleep1_Ret), Time2)),
         not(holds_at(sleep4(Sleep1_Ret), Time2)),
         not(holds_at(sleep5(Sleep1_Ret), Time2)),
         not(holds_at(sleep6(Sleep1_Ret), Time2))
       ),
       holds_at(awake(Sleep1_Ret), Time2).
 */
axiom(holds_at(sleep1(Sleep1_Ret), Time2),
   
    [ not(holds_at(sleep2(Sleep1_Ret), Time2)),
      not(holds_at(sleep3(Sleep1_Ret), Time2)),
      not(holds_at(sleep4(Sleep1_Ret), Time2)),
      not(holds_at(sleep5(Sleep1_Ret), Time2)),
      not(holds_at(sleep6(Sleep1_Ret), Time2)),
      holds_at(awake(Sleep1_Ret), Time2)
    ]).

 /*  holds_at(sleep2(Sleep2_Ret), Time4) :-
       ( not(holds_at(sleep3(Sleep2_Ret), Time4)),
         not(holds_at(sleep4(Sleep2_Ret), Time4)),
         not(holds_at(sleep5(Sleep2_Ret), Time4)),
         not(holds_at(sleep6(Sleep2_Ret), Time4))
       ),
       not(holds_at(sleep1(Sleep2_Ret), Time4)),
       holds_at(awake(Sleep2_Ret), Time4).
 */
axiom(holds_at(sleep2(Sleep2_Ret), Time4),
   
    [ not(holds_at(sleep3(Sleep2_Ret), Time4)),
      not(holds_at(sleep4(Sleep2_Ret), Time4)),
      not(holds_at(sleep5(Sleep2_Ret), Time4)),
      not(holds_at(sleep6(Sleep2_Ret), Time4)),
      not(holds_at(sleep1(Sleep2_Ret), Time4)),
      holds_at(awake(Sleep2_Ret), Time4)
    ]).

 /*  holds_at(sleep3(Sleep3_Ret), Time6) :-
       ( not(holds_at(sleep4(Sleep3_Ret), Time6)),
         not(holds_at(sleep5(Sleep3_Ret), Time6)),
         not(holds_at(sleep6(Sleep3_Ret), Time6))
       ),
       not(holds_at(sleep2(Sleep3_Ret), Time6)),
       not(holds_at(sleep1(Sleep3_Ret), Time6)),
       holds_at(awake(Sleep3_Ret), Time6).
 */
axiom(holds_at(sleep3(Sleep3_Ret), Time6),
   
    [ not(holds_at(sleep4(Sleep3_Ret), Time6)),
      not(holds_at(sleep5(Sleep3_Ret), Time6)),
      not(holds_at(sleep6(Sleep3_Ret), Time6)),
      not(holds_at(sleep2(Sleep3_Ret), Time6)),
      not(holds_at(sleep1(Sleep3_Ret), Time6)),
      holds_at(awake(Sleep3_Ret), Time6)
    ]).

 /*  holds_at(sleep4(Sleep4_Ret), Time8) :-
       ( not(holds_at(sleep5(Sleep4_Ret), Time8)),
         not(holds_at(sleep6(Sleep4_Ret), Time8))
       ),
       not(holds_at(sleep3(Sleep4_Ret), Time8)),
       not(holds_at(sleep2(Sleep4_Ret), Time8)),
       not(holds_at(sleep1(Sleep4_Ret), Time8)),
       holds_at(awake(Sleep4_Ret), Time8).
 */
axiom(holds_at(sleep4(Sleep4_Ret), Time8),
   
    [ not(holds_at(sleep5(Sleep4_Ret), Time8)),
      not(holds_at(sleep6(Sleep4_Ret), Time8)),
      not(holds_at(sleep3(Sleep4_Ret), Time8)),
      not(holds_at(sleep2(Sleep4_Ret), Time8)),
      not(holds_at(sleep1(Sleep4_Ret), Time8)),
      holds_at(awake(Sleep4_Ret), Time8)
    ]).

 /*  holds_at(sleep5(Sleep5_Ret), Time10) :-
       not(holds_at(sleep6(Sleep5_Ret), Time10)),
       not(holds_at(sleep4(Sleep5_Ret), Time10)),
       not(holds_at(sleep3(Sleep5_Ret), Time10)),
       not(holds_at(sleep2(Sleep5_Ret), Time10)),
       not(holds_at(sleep1(Sleep5_Ret), Time10)),
       holds_at(awake(Sleep5_Ret), Time10).
 */
axiom(holds_at(sleep5(Sleep5_Ret), Time10),
   
    [ not(holds_at(sleep6(Sleep5_Ret), Time10)),
      not(holds_at(sleep4(Sleep5_Ret), Time10)),
      not(holds_at(sleep3(Sleep5_Ret), Time10)),
      not(holds_at(sleep2(Sleep5_Ret), Time10)),
      not(holds_at(sleep1(Sleep5_Ret), Time10)),
      holds_at(awake(Sleep5_Ret), Time10)
    ]).

 /*  holds_at(sleep6(Sleep6_Ret), Time12) :-
       not(holds_at(sleep5(Sleep6_Ret), Time12)),
       not(holds_at(sleep4(Sleep6_Ret), Time12)),
       not(holds_at(sleep3(Sleep6_Ret), Time12)),
       not(holds_at(sleep2(Sleep6_Ret), Time12)),
       not(holds_at(sleep1(Sleep6_Ret), Time12)),
       holds_at(awake(Sleep6_Ret), Time12).
 */
axiom(holds_at(sleep6(Sleep6_Ret), Time12),
   
    [ not(holds_at(sleep5(Sleep6_Ret), Time12)),
      not(holds_at(sleep4(Sleep6_Ret), Time12)),
      not(holds_at(sleep3(Sleep6_Ret), Time12)),
      not(holds_at(sleep2(Sleep6_Ret), Time12)),
      not(holds_at(sleep1(Sleep6_Ret), Time12)),
      holds_at(awake(Sleep6_Ret), Time12)
    ]).

 /*  not(holds_at(awake(Awake_Ret), Time14)) :-
       not(holds_at(sleep1(Awake_Ret), Time14)),
       not(holds_at(sleep2(Awake_Ret), Time14)),
       not(holds_at(sleep3(Awake_Ret), Time14)),
       not(holds_at(sleep4(Awake_Ret), Time14)),
       not(holds_at(sleep5(Awake_Ret), Time14)),
       not(holds_at(sleep6(Awake_Ret), Time14)).
 */
axiom(not(holds_at(awake(Awake_Ret), Time14)),
   
    [ not(holds_at(sleep1(Awake_Ret), Time14)),
      not(holds_at(sleep2(Awake_Ret), Time14)),
      not(holds_at(sleep3(Awake_Ret), Time14)),
      not(holds_at(sleep4(Awake_Ret), Time14)),
      not(holds_at(sleep5(Awake_Ret), Time14)),
      not(holds_at(sleep6(Awake_Ret), Time14))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:75
%; A number of axioms are used to specify the transitions of
%; a finite automaton.
%;--
%; Waking up causes a transition from Sleep0
%; to Sleep1:
% [agent,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:81
% Terminates(WakeUp(agent),Sleep0(agent),time).
axiom(terminates(wakeUp(Agent), sleep0(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:83
% [agent,time]
 % Initiates(WakeUp(agent),Sleep1(agent),time).
axiom(initiates(wakeUp(Agent), sleep1(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:85
% [agent,time]
 % Happens(WakeUp(agent),time) -> HoldsAt(Sleep0(agent),time).
axiom(requires(wakeUp(Agent), Time),
    [holds_at(sleep0(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:87
%;--
%; Getting out of bed causes a transition from Sleep1
%; to Sleep2:
% [agent,bed,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:91
% Terminates(RiseFrom(agent,bed),Sleep1(agent),time).
axiom(terminates(riseFrom(Agent, Bed), sleep1(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:93
% [agent,bed,time]
 % Initiates(RiseFrom(agent,bed),Sleep2(agent),time).
axiom(initiates(riseFrom(Agent, Bed), sleep2(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:95
% [agent,bed,time]
% Happens(RiseFrom(agent,bed),time) -> HoldsAt(Sleep1(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:96
axiom(requires(riseFrom(Agent, Bed), Time),
    [holds_at(sleep1(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:98
%;--
%; Getting dressed causes a transition from Sleep2
%; to Sleep3, the normal state of awakeness:
% [agent,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:102
% Terminates(GetDressed(agent),Sleep2(agent),time).
axiom(terminates(getDressed(Agent), sleep2(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:104
% [agent,time]
 % Initiates(GetDressed(agent),Sleep3(agent),time).
axiom(initiates(getDressed(Agent), sleep3(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:106
% [agent,time]
 % Happens(GetDressed(agent),time) -> HoldsAt(Sleep2(agent),time).
axiom(requires(getDressed(Agent), Time),
    [holds_at(sleep2(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:108
%;--
%; Getting tired causes a transition from Sleep3
%; to Sleep4:
% [agent,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:112
% Terminates(GetTired(agent),Sleep3(agent),time).
axiom(terminates(getTired(Agent), sleep3(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:114
% [agent,time]
 % Initiates(GetTired(agent),Sleep4(agent),time).
axiom(initiates(getTired(Agent), sleep4(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:116
% [agent,time]
 % Happens(GetTired(agent),time) -> HoldsAt(Sleep3(agent),time).
axiom(requires(getTired(Agent), Time),
    [holds_at(sleep3(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:118
%;--
%; Getting undressed causes a transition from Sleep4
%; to Sleep5:
% [agent,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:122
% Terminates(GetUndressed(agent),Sleep4(agent),time).
axiom(terminates(getUndressed(Agent), sleep4(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:124
% [agent,time]
 % Initiates(GetUndressed(agent),Sleep5(agent),time).
axiom(initiates(getUndressed(Agent), sleep5(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:126
% [agent,time]
 % Happens(GetUndressed(agent),time) -> HoldsAt(Sleep4(agent),time).
axiom(requires(getUndressed(Agent), Time),
    [holds_at(sleep4(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:128
%;--
%; Lying on a bed causes a transition from Sleep5
%; to Sleep6:
% [agent,bed,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:132
% Terminates(LieOn(agent,bed),Sleep5(agent),time).
axiom(terminates(lieOn(Agent, Bed), sleep5(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:134
% [agent,bed,time]
 % Initiates(LieOn(agent,bed),Sleep6(agent),time).
axiom(initiates(lieOn(Agent, Bed), sleep6(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:136
% [agent,bed,time]
 % Happens(LieOn(agent,bed),time) -> HoldsAt(Sleep5(agent),time).
axiom(requires(lieOn(Agent, Bed), Time),
    [holds_at(sleep5(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:138
%;--
%; Falling asleep causes a transition from Sleep6
%; to Sleep0:
% [agent,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:142
% Terminates(FallAsleep(agent),Sleep6(agent),time).
axiom(terminates(fallAsleep(Agent), sleep6(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:144
% [agent,time]
 % Initiates(FallAsleep(agent),Sleep0(agent),time).
axiom(initiates(fallAsleep(Agent), sleep0(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:146
% [agent,time]
 % Happens(FallAsleep(agent),time) -> HoldsAt(Sleep6(agent),time).
axiom(requires(fallAsleep(Agent), Time),
    [holds_at(sleep6(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:148
%;--
%; agent acts on being in state Sleep5.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:151
% fluent ActOnSleep5(agent)
 %  fluent(actOnSleep5(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:152
==> mpred_prop(actOnSleep5(agent),fluent).
==> meta_argtypes(actOnSleep5(agent)).

% noninertial ActOnSleep5
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:153
==> noninertial(actOnSleep5).
%; We reduce the number of models by asserting that
%; an agent only acts on being in state Sleep5 while in
%; that state:
% [agent,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:158
% !HoldsAt(Sleep5(agent),time) ->
% !HoldsAt(ActOnSleep5(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:159
axiom(not(holds_at(actOnSleep5(Agent), Time)),
    [not(holds_at(sleep5(Agent), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:161
%; Undressed is like IntentionToPlay
%; ActOnSleep5 is like ActOnIntentionToPlay
%; A trigger axiom states that if an agent is in state Sleep5,
%; the agent acts on this state, the agent is in a room, and
%; a bed is at the room, the agent lies on the bed:
% [agent,room,bed,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:168
% HoldsAt(Sleep5(agent),time) &
% HoldsAt(ActOnSleep5(agent),time) &
% HoldsAt(At(agent,room),time) &
% HoldsAt(At(bed,room),time) ->
% Happens(LieOn(agent,bed),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:172
axiom(happens(lieOn(Agent, Bed), Time),
   
    [ holds_at(sleep5(Agent), Time),
      holds_at(actOnSleep5(Agent), Time),
      holds_at(at(Agent, Room), Time),
      holds_at(at(Bed, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:174
%; A precondition axiom states that for
%; an agent to lie on a bed,
%; the agent must be in state Sleep5,
%; the agent must act on this state, and
%; there must be a room such that
%; the agent is in the room and the bed is in the room:
% [agent,bed,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:181
% Happens(LieOn(agent,bed),time) ->
% HoldsAt(Sleep5(agent),time) &
% HoldsAt(ActOnSleep5(agent),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:184
% {room}% 
%  HoldsAt(At(agent,room),time) &
%  HoldsAt(At(bed,room),time).

 /*   exists([Room],
             if(happens(lieOn(Agent, Bed), Time),
                 (holds_at(sleep5(Agent), Time), holds_at(actOnSleep5(Agent), Time), holds_at(at(Agent, Room), Time), holds_at(at(Bed, Room), Time)))).
 */

 /*  not(some(Location, '$kolem_Fn_186'(Fn_186_Param, At_Param, Maptime))) :-
       happens(lieOn(Fn_186_Param, At_Param), Maptime),
       (   not(holds_at(sleep5(Fn_186_Param), Maptime))
       ;   not(holds_at(actOnSleep5(Fn_186_Param), Maptime))
       ;   not(holds_at(at(Fn_186_Param, Location), Maptime))
       ;   not(holds_at(at(At_Param, Location), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:186
axiom(not(some(Location, '$kolem_Fn_186'(Fn_186_Param, At_Param, Maptime))),
   
    [ not(holds_at(sleep5(Fn_186_Param), Maptime)),
      happens(lieOn(Fn_186_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location, '$kolem_Fn_186'(Fn_186_Param, At_Param, Maptime))),
   
    [ not(holds_at(actOnSleep5(Fn_186_Param), Maptime)),
      happens(lieOn(Fn_186_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location, '$kolem_Fn_186'(Fn_186_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_186_Param, Location), Maptime)),
      happens(lieOn(Fn_186_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location, '$kolem_Fn_186'(Fn_186_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location), Maptime)),
      happens(lieOn(Fn_186_Param, At_Param), Maptime)
    ]).

 /*  not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(sleep5(LieOn_Param), Maptime9))
       ;   not(holds_at(actOnSleep5(LieOn_Param), Maptime9))
       ;   not(holds_at(at(LieOn_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_186'(LieOn_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(sleep5(LieOn_Param), Maptime9)),
      some(Location10,
           '$kolem_Fn_186'(LieOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(actOnSleep5(LieOn_Param), Maptime9)),
      some(Location10,
           '$kolem_Fn_186'(LieOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(LieOn_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_186'(LieOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_186'(LieOn_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(sleep5(LieOn_Param14), Time13) :-
       happens(lieOn(LieOn_Param14, LieOn_Ret), Time13),
       some(Some_Param,
            '$kolem_Fn_186'(LieOn_Param14, LieOn_Ret, Time13)).
 */
axiom(holds_at(sleep5(LieOn_Param14), Time13),
   
    [ happens(lieOn(LieOn_Param14, LieOn_Ret), Time13),
      some(Some_Param,
           '$kolem_Fn_186'(LieOn_Param14, LieOn_Ret, Time13))
    ]).

 /*  holds_at(actOnSleep5(LieOn_Param18), Time17) :-
       happens(lieOn(LieOn_Param18, LieOn_Ret20), Time17),
       some(Some_Param19,
            '$kolem_Fn_186'(LieOn_Param18, LieOn_Ret20, Time17)).
 */
axiom(holds_at(actOnSleep5(LieOn_Param18), Time17),
   
    [ happens(lieOn(LieOn_Param18, LieOn_Ret20), Time17),
      some(Some_Param19,
           '$kolem_Fn_186'(LieOn_Param18, LieOn_Ret20, Time17))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(lieOn(At_Param23, LieOn_Ret24), Time22),
       some(Location21,
            '$kolem_Fn_186'(At_Param23, LieOn_Ret24, Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(lieOn(At_Param23, LieOn_Ret24), Time22),
      some(Location21,
           '$kolem_Fn_186'(At_Param23, LieOn_Ret24, Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(lieOn(LieOn_Param28, At_Param27), Time26),
       some(Location25,
            '$kolem_Fn_186'(LieOn_Param28, At_Param27, Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(lieOn(LieOn_Param28, At_Param27), Time26),
      some(Location25,
           '$kolem_Fn_186'(LieOn_Param28, At_Param27, Time26))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:188
%; (body) posture
%; agent lies on physobj.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:191
% event LieOn(agent,physobj)
 %  event(lieOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:192
==> mpred_prop(lieOn(agent,physobj),event).
==> meta_argtypes(lieOn(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:193
%; agent sits on physobj.

% event SitOn(agent,physobj)
 %  event(sitOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:195
==> mpred_prop(sitOn(agent,physobj),event).
==> meta_argtypes(sitOn(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:196
% [agent,physobj,time]
% Happens(SitOn(agent,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:198
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(physobj,location),time).

 /*   exists([Location],
             if(happens(sitOn(Agent, Physobj), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Physobj, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_187'(Fn_187_Param, At_Param, Maptime))) :-
       happens(sitOn(Fn_187_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_187_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:200
axiom(not(some(Location6, '$kolem_Fn_187'(Fn_187_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_187_Param, Location6), Maptime)),
      happens(sitOn(Fn_187_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_187'(Fn_187_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(sitOn(Fn_187_Param, At_Param), Maptime)
    ]).

 /*  not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(SitOn_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_187'(SitOn_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(SitOn_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_187'(SitOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_187'(SitOn_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(sitOn(At_Param15, SitOn_Ret), Time14),
       some(Location13,
            '$kolem_Fn_187'(At_Param15, SitOn_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(sitOn(At_Param15, SitOn_Ret), Time14),
      some(Location13,
           '$kolem_Fn_187'(At_Param15, SitOn_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(sitOn(SitOn_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_187'(SitOn_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(sitOn(SitOn_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_187'(SitOn_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:202
%; agent rises from physobj.

% event RiseFrom(agent,physobj)
 %  event(riseFrom(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:204
==> mpred_prop(riseFrom(agent,physobj),event).
==> meta_argtypes(riseFrom(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:205
%; agent is lying on physobj.

% fluent LyingOn(agent,physobj)
 %  fluent(lyingOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:207
==> mpred_prop(lyingOn(agent,physobj),fluent).
==> meta_argtypes(lyingOn(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:207
%; agent is sitting on physobj.

% fluent SittingOn(agent,physobj)
 %  fluent(sittingOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:209
==> mpred_prop(sittingOn(agent,physobj),fluent).
==> meta_argtypes(sittingOn(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:209
%; agent is standing.

% fluent Standing(agent)
 %  fluent(standing(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:211
==> mpred_prop(standing(agent),fluent).
==> meta_argtypes(standing(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:212
%; agent is lying down.

% fluent Lying(agent)
 %  fluent(lying(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:214
==> mpred_prop(lying(agent),fluent).
==> meta_argtypes(lying(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:214
%; agent is sitting.

% fluent Sitting(agent)
 %  fluent(sitting(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:216
==> mpred_prop(sitting(agent),fluent).
==> meta_argtypes(sitting(agent)).

% noninertial Lying
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:217
==> noninertial(lying).

% noninertial Sitting
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:218
==> noninertial(sitting).
%; At any time, an agent is either lying, sitting, or standing:

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:220
% xor Lying, Sitting, Standing
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:221
xor([lying,sitting,standing]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:222
% [agent,physobj,time]
% HoldsAt(LyingOn(agent,physobj),time) ->
% HoldsAt(Lying(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:224
axiom(holds_at(lying(Agent), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:226
% [agent,physobj,time]
% HoldsAt(SittingOn(agent,physobj),time) ->
% HoldsAt(Sitting(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:228
axiom(holds_at(sitting(Agent), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:230
%; State constraints represent that an agent can lie or sit
%; on at most one object at a time:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:233
% HoldsAt(LyingOn(agent,physobj1),time) &
% HoldsAt(LyingOn(agent,physobj2),time) ->
% physobj1=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:235
axiom(Physobj1=Physobj2,
   
    [ holds_at(lyingOn(Agent, Physobj1), Time),
      holds_at(lyingOn(Agent, Physobj2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:237
% [agent,physobj1,physobj2,time]
% HoldsAt(SittingOn(agent,physobj1),time) &
% HoldsAt(SittingOn(agent,physobj2),time) ->
% physobj1=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:240
axiom(Physobj1=Physobj2,
   
    [ holds_at(sittingOn(Agent, Physobj1), Time),
      holds_at(sittingOn(Agent, Physobj2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:242
%; An effect axiom states that if an agent is standing and
%; lies on a physical object, the agent will be lying on
%; the physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:246
% HoldsAt(Standing(agent),time) ->
% Initiates(LieOn(agent,physobj),
%           LyingOn(agent,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:249
axiom(initiates(lieOn(Agent, Physobj), lyingOn(Agent, Physobj), Time),
    [holds_at(standing(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:251
%; An effect axiom states that if an agent
%; lies on a physical object, the agent will no longer
%; be standing:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:255
% Terminates(LieOn(agent,physobj),
%            Standing(agent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:257
axiom(terminates(lieOn(Agent, Physobj), standing(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:259
%; An effect axiom states that if an agent is standing and
%; sits on a physical object, the agent will be sitting on
%; the physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:263
% HoldsAt(Standing(agent),time) ->
% Initiates(SitOn(agent,physobj),
%           SittingOn(agent,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:266
axiom(initiates(sitOn(Agent, Physobj), sittingOn(Agent, Physobj), Time),
    [holds_at(standing(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:268
%; An effect axiom states that if an agent
%; sits on a physical object, the agent will no longer
%; be standing:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:272
% Terminates(SitOn(agent,physobj),
%            Standing(agent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:274
axiom(terminates(sitOn(Agent, Physobj), standing(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:276
%; An effect axiom states that if an agent
%; is sitting or lying on a physical object and
%; the agent rises from the physical object,
%; the agent will be standing:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:281
% (HoldsAt(SittingOn(agent,physobj),time) |
%  HoldsAt(LyingOn(agent,physobj),time)) ->
% Initiates(RiseFrom(agent,physobj),
%           Standing(agent),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:285
axiom(initiates(riseFrom(Agent, Physobj), standing(Agent), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).
axiom(initiates(riseFrom(Agent, Physobj), standing(Agent), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:287
%; An effect axiom states that if an agent is sitting on
%; a physical object and the agent rises from the physical
%; object, the agent will no longer be sitting on the
%; physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:292
% HoldsAt(SittingOn(agent,physobj),time) ->
% Terminates(RiseFrom(agent,physobj),
%            SittingOn(agent,physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:295
axiom(terminates(riseFrom(Agent, Physobj), sittingOn(Agent, Physobj), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:297
%; An effect axiom states that if an agent is lying on
%; a physical object and the agent rises from the physical
%; object, the agent will no longer be lying on the
%; physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:302
% HoldsAt(LyingOn(agent,physobj),time) ->
% Terminates(RiseFrom(agent,physobj),
%            LyingOn(agent,physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:305
axiom(terminates(riseFrom(Agent, Physobj), lyingOn(Agent, Physobj), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:307
%; dressing
%; agent gets undressed.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:310
% event GetDressed(agent)
 %  event(getDressed(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:311
==> mpred_prop(getDressed(agent),event).
==> meta_argtypes(getDressed(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:311
%; agent gets dressed.

% event GetUndressed(agent)
 %  event(getUndressed(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:313
==> mpred_prop(getUndressed(agent),event).
==> meta_argtypes(getUndressed(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:313
%; agent is dressed.

% fluent Dressed(agent)
 %  fluent(dressed(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:315
==> mpred_prop(dressed(agent),fluent).
==> meta_argtypes(dressed(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:316
%; Effect axioms deal with getting dressed and undressed:
% [agent,time]
 % Initiates(GetDressed(agent),Dressed(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:317
axiom(initiates(getDressed(Agent), dressed(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:318
% [agent,time]
 % Terminates(GetUndressed(agent),Dressed(agent),time).
axiom(terminates(getUndressed(Agent), dressed(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Sleep.e:320
%; End of file.
