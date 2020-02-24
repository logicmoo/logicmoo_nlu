:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter6/ThielscherCircuit1.e').
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
%; @article{Thielscher:1997,
%;   author = "Michael Thielscher",
%;   year = "1997",
%;   title = "Ramification and causality",
%;   journal = "Artificial Intelligence",
%;   volume = "89",
%;   pages = "317--364",
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

% load foundations/Root.e

% load foundations/EC.e

% load foundations/ECCausal.e
 %  loading(changed,'foundations/ECCausal.e').
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
%; Causal Constraints
%;
%; @inproceedings{Shanahan:1999a,
%;   author = "Murray Shanahan",
%;   year = "1999",
%;   title = "The ramification problem in the event calculus",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{S}ixteenth \uppercase{I}nternational \uppercase{J}oint \uppercase{C}onference on \uppercase{A}rtificial \uppercase{I}ntelligence",
%;   pages = "140--146",
%;   address = "San Mateo, CA",
%;   publisher = "Morgan Kaufmann",
%; }
%;

% predicate Started(fluent,time)
 %  predicate(started(fluent,time)).
==> mpred_prop(started(fluent,time),predicate).
==> meta_argtypes(started(fluent,time)).

% predicate Stopped(fluent,time)
 %  predicate(stopped(fluent,time)).
==> mpred_prop(stopped(fluent,time),predicate).
==> meta_argtypes(stopped(fluent,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:31
% [fluent,time]
% Started(fluent,time) <->
% (HoldsAt(fluent,time) |
%  ({event} Happens(event,time) & Initiates(event,fluent,time))).

 /*  started(Fluent, Time) <->
       (   holds_at(Fluent, Time)
       ;   exists([Event],
                   (happens(Event, Time), initiates(Event, Fluent, Time)))
       ).
 */
axiom(started(Fluent, Time),
    [holds_at(Fluent, Time)]).
axiom(started(Fluent, Time),
   
    [ happens(Event, Time),
      initiates(Event, Fluent, Time)
    ]).

 /*   if(started(Fluent, Time),
          (holds_at(Fluent, Time);exists([Event],  (happens(Event, Time), initiates(Event, Fluent, Time))))).
 */

 /*  not(started(Started_Param, Time3)) :-
       not(holds_at(Started_Param, Time3)),
       (   not(happens(Happens_Param, Time3))
       ;   not(initiates(Happens_Param, Started_Param, Time3))
       ).
 */
axiom(not(started(Started_Param, Time3)),
   
    [ not(happens(Happens_Param, Time3)),
      not(holds_at(Started_Param, Time3))
    ]).
axiom(not(started(Started_Param, Time3)),
   
    [ not(initiates(Happens_Param, Started_Param, Time3)),
      not(holds_at(Started_Param, Time3))
    ]).

 /*  holds_at(Holds_at_Param, Time6) :-
       (   not(happens(Happens_Param8, Time6))
       ;   not(initiates(Happens_Param8, Holds_at_Param, Time6))
       ),
       started(Holds_at_Param, Time6).
 */
axiom(holds_at(Holds_at_Param, Time6),
   
    [ not(happens(Happens_Param8, Time6)),
      started(Holds_at_Param, Time6)
    ]).
axiom(holds_at(Holds_at_Param, Time6),
   
    [ not(initiates(Happens_Param8, Holds_at_Param, Time6)),
      started(Holds_at_Param, Time6)
    ]).

 /*  happens(Happens_Param10, Maptime) :-
       not(holds_at(Holds_at_Param11, Maptime)),
       started(Holds_at_Param11, Maptime).
 */
axiom(happens(Happens_Param10, Maptime),
   
    [ not(holds_at(Holds_at_Param11, Maptime)),
      started(Holds_at_Param11, Maptime)
    ]).

 /*  initiates(Initiates_Param, Holds_at_Param14, Time12) :-
       not(holds_at(Holds_at_Param14, Time12)),
       started(Holds_at_Param14, Time12).
 */
axiom(initiates(Initiates_Param, Holds_at_Param14, Time12),
   
    [ not(holds_at(Holds_at_Param14, Time12)),
      started(Holds_at_Param14, Time12)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:31
% [fluent,time]
% Stopped(fluent,time) <->
% (!HoldsAt(fluent,time) |
%  ({event} Happens(event,time) & Terminates(event,fluent,time))).

 /*  stopped(Fluent, Time) <->
       (   not(holds_at(Fluent, Time))
       ;   exists([Event],
                   (happens(Event, Time), terminates(Event, Fluent, Time)))
       ).
 */
axiom(stopped(Fluent, Time),
    [not(holds_at(Fluent, Time))]).
axiom(stopped(Fluent, Time),
   
    [ happens(Event, Time),
      terminates(Event, Fluent, Time)
    ]).

 /*   if(stopped(Fluent, Time),
          (not(holds_at(Fluent, Time));exists([Event],  (happens(Event, Time), terminates(Event, Fluent, Time))))).
 */

 /*  not(stopped(Stopped_Param, Time3)) :-
       holds_at(Stopped_Param, Time3),
       (   not(happens(Happens_Param, Time3))
       ;   not(terminates(Happens_Param, Stopped_Param, Time3))
       ).
 */
axiom(not(stopped(Stopped_Param, Time3)),
   
    [ not(happens(Happens_Param, Time3)),
      holds_at(Stopped_Param, Time3)
    ]).
axiom(not(stopped(Stopped_Param, Time3)),
   
    [ not(terminates(Happens_Param, Stopped_Param, Time3)),
      holds_at(Stopped_Param, Time3)
    ]).

 /*  not(holds_at(Holds_at_Param, Time6)) :-
       (   not(happens(Happens_Param8, Time6))
       ;   not(terminates(Happens_Param8, Holds_at_Param, Time6))
       ),
       stopped(Holds_at_Param, Time6).
 */
axiom(not(holds_at(Holds_at_Param, Time6)),
   
    [ not(happens(Happens_Param8, Time6)),
      stopped(Holds_at_Param, Time6)
    ]).
axiom(not(holds_at(Holds_at_Param, Time6)),
   
    [ not(terminates(Happens_Param8, Holds_at_Param, Time6)),
      stopped(Holds_at_Param, Time6)
    ]).

 /*  happens(Happens_Param10, Maptime) :-
       holds_at(Holds_at_Param11, Maptime),
       stopped(Holds_at_Param11, Maptime).
 */
axiom(happens(Happens_Param10, Maptime),
   
    [ holds_at(Holds_at_Param11, Maptime),
      stopped(Holds_at_Param11, Maptime)
    ]).

 /*  terminates(Terminates_Param, Holds_at_Param14, Time12) :-
       holds_at(Holds_at_Param14, Time12),
       stopped(Holds_at_Param14, Time12).
 */
axiom(terminates(Terminates_Param, Holds_at_Param14, Time12),
   
    [ holds_at(Holds_at_Param14, Time12),
      stopped(Holds_at_Param14, Time12)
    ]).

% predicate Initiated(fluent,time)
 %  predicate(initiated(fluent,time)).
==> mpred_prop(initiated(fluent,time),predicate).
==> meta_argtypes(initiated(fluent,time)).

% predicate Terminated(fluent,time)
 %  predicate(terminated(fluent,time)).
==> mpred_prop(terminated(fluent,time),predicate).
==> meta_argtypes(terminated(fluent,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:31
% [fluent,time]
% Initiated(fluent,time) <->
% (Started(fluent,time) &
%  !({event} Happens(event,time) & Terminates(event,fluent,time))).

 /*  initiated(Fluent, Time) <->
       started(Fluent, Time),
       not(exists([Event],
                   (happens(Event, Time), terminates(Event, Fluent, Time)))).
 */
axiom(initiated(Fluent, Time),
    [not(happens(Event, Time)), started(Fluent, Time)]).
axiom(initiated(Fluent, Time),
   
    [ not(terminates(Event, Fluent, Time)),
      started(Fluent, Time)
    ]).

 /*   if(initiated(Fluent, Time),
          (started(Fluent, Time), not(exists([Event],  (happens(Event, Time), terminates(Event, Fluent, Time)))))).
 */

 /*  not(initiated(Initiated_Param, Maptime)) :-
       (   not(started(Initiated_Param, Maptime))
       ;   happens(Happens_Param, Maptime),
           terminates(Happens_Param, Initiated_Param, Maptime)
       ).
 */
axiom(not(initiated(Initiated_Param, Maptime)),
    [not(started(Initiated_Param, Maptime))]).
axiom(not(initiated(Initiated_Param, Maptime)),
   
    [ happens(Happens_Param, Maptime),
      terminates(Happens_Param, Initiated_Param, Maptime)
    ]).

 /*  started(Started_Param, Started_Ret) :-
       initiated(Started_Param, Started_Ret).
 */
axiom(started(Started_Param, Started_Ret),
    [initiated(Started_Param, Started_Ret)]).

 /*  not(happens(Happens_Param9, Maptime8)) :-
       terminates(Happens_Param9, Initiated_Param10, Maptime8),
       initiated(Initiated_Param10, Maptime8).
 */
axiom(not(happens(Happens_Param9, Maptime8)),
   
    [ terminates(Happens_Param9, Initiated_Param10, Maptime8),
      initiated(Initiated_Param10, Maptime8)
    ]).

 /*  not(terminates(Terminates_Param, Initiated_Param13, Maptime11)) :-
       happens(Terminates_Param, Maptime11),
       initiated(Initiated_Param13, Maptime11).
 */
axiom(not(terminates(Terminates_Param, Initiated_Param13, Maptime11)),
   
    [ happens(Terminates_Param, Maptime11),
      initiated(Initiated_Param13, Maptime11)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:31
% [fluent,time]
% Terminated(fluent,time) <->
% (Stopped(fluent,time) &
%  !({event} Happens(event,time) & Initiates(event,fluent,time))).

 /*  terminated(Fluent, Time) <->
       stopped(Fluent, Time),
       not(exists([Event],
                   (happens(Event, Time), initiates(Event, Fluent, Time)))).
 */
axiom(terminated(Fluent, Time),
    [not(happens(Event, Time)), stopped(Fluent, Time)]).
axiom(terminated(Fluent, Time),
   
    [ not(initiates(Event, Fluent, Time)),
      stopped(Fluent, Time)
    ]).

 /*   if(terminated(Fluent, Time),
          (stopped(Fluent, Time), not(exists([Event],  (happens(Event, Time), initiates(Event, Fluent, Time)))))).
 */

 /*  not(terminated(Terminated_Param, Maptime)) :-
       (   not(stopped(Terminated_Param, Maptime))
       ;   happens(Happens_Param, Maptime),
           initiates(Happens_Param, Terminated_Param, Maptime)
       ).
 */
axiom(not(terminated(Terminated_Param, Maptime)),
    [not(stopped(Terminated_Param, Maptime))]).
axiom(not(terminated(Terminated_Param, Maptime)),
   
    [ happens(Happens_Param, Maptime),
      initiates(Happens_Param, Terminated_Param, Maptime)
    ]).

 /*  stopped(Stopped_Param, Stopped_Ret) :-
       terminated(Stopped_Param, Stopped_Ret).
 */
axiom(stopped(Stopped_Param, Stopped_Ret),
    [terminated(Stopped_Param, Stopped_Ret)]).

 /*  not(happens(Happens_Param9, Maptime8)) :-
       initiates(Happens_Param9, Terminated_Param10, Maptime8),
       terminated(Terminated_Param10, Maptime8).
 */
axiom(not(happens(Happens_Param9, Maptime8)),
   
    [ initiates(Happens_Param9, Terminated_Param10, Maptime8),
      terminated(Terminated_Param10, Maptime8)
    ]).

 /*  not(initiates(Initiates_Param, Terminated_Param13, Maptime11)) :-
       happens(Initiates_Param, Maptime11),
       terminated(Terminated_Param13, Maptime11).
 */
axiom(not(initiates(Initiates_Param, Terminated_Param13, Maptime11)),
   
    [ happens(Initiates_Param, Maptime11),
      terminated(Terminated_Param13, Maptime11)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:31
%; End of file.

% sort switch
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:33
==> sort(switch).

% sort relay
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:34
==> sort(relay).

% sort light
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:35
==> sort(light).

% switch S1, S2, S3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:37
==> t(switch,s1).
==> t(switch,s2).
==> t(switch,s3).

% relay R
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:38
==> t(relay,r).

% light L
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:39
==> t(light,l).

% event Light(light)
 %  event(light(light)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:41
==> mpred_prop(light(light),event).
==> meta_argtypes(light(light)).

% event Close(switch)
 %  event(close(switch)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:42
==> mpred_prop(close(switch),event).
==> meta_argtypes(close(switch)).

% event Open(switch)
 %  event(open(switch)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:43
==> mpred_prop(open(switch),event).
==> meta_argtypes(open(switch)).

% event Activate(relay)
 %  event(activate(relay)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:44
==> mpred_prop(activate(relay),event).
==> meta_argtypes(activate(relay)).

% fluent Lit(light)
 %  fluent(lit(light)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:46
==> mpred_prop(lit(light),fluent).
==> meta_argtypes(lit(light)).

% fluent Closed(switch)
 %  fluent(closed(switch)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:47
==> mpred_prop(closed(switch),fluent).
==> meta_argtypes(closed(switch)).

% fluent Activated(relay)
 %  fluent(activated(relay)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:48
==> mpred_prop(activated(relay),fluent).
==> meta_argtypes(activated(relay)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:49
% [time]
% Stopped(Lit(L),time) &
% Initiated(Closed(S1),time) &
% Initiated(Closed(S2),time) ->
% Happens(Light(L),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:53
axiom(happens(light(l), Time),
   
    [ stopped(lit(l), Time),
      initiated(closed(s1), Time),
      initiated(closed(s2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:55
% [time]
% Started(Closed(S2),time) &
% Initiated(Activated(R),time) ->
% Happens(Open(S2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:58
axiom(happens(open(s2), Time),
    [started(closed(s2), Time), initiated(activated(r), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:60
% [time]
% Stopped(Activated(R),time) &
% Initiated(Closed(S1),time) &
% Initiated(Closed(S3),time) ->
% Happens(Activate(R),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:64
axiom(happens(activate(r), Time),
   
    [ stopped(activated(r), Time),
      initiated(closed(s1), Time),
      initiated(closed(s3), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:66
% [switch,time]
 % Initiates(Close(switch),Closed(switch),time).
axiom(initiates(close(Switch), closed(Switch), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:67
% [switch,time]
 % Terminates(Open(switch),Closed(switch),time).
axiom(terminates(open(Switch), closed(Switch), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:68
% [relay,time]
 % Initiates(Activate(relay),Activated(relay),time).
axiom(initiates(activate(Relay), activated(Relay), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:69
% [light,time]
 % Initiates(Light(light),Lit(light),time).
axiom(initiates(light(Light), lit(Light), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:71
% !HoldsAt(Closed(S1),0).
 %  not(initially(closed(s1))).
axiom(not(initially(closed(s1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:72
% HoldsAt(Closed(S2),0).
axiom(initially(closed(s2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:73
% HoldsAt(Closed(S3),0).
axiom(initially(closed(s3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:74
% !HoldsAt(Activated(R),0).
 %  not(initially(activated(r))).
axiom(not(initially(activated(r))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:75
% !HoldsAt(Lit(L),0).
 %  not(initially(lit(l))).
axiom(not(initially(lit(l))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:77
% Happens(Close(S1),0).
axiom(happens(close(s1), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:79
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:80
==> completion(happens).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:82
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit1.e:83
==> range(offset,1,1).
%; End of file.
