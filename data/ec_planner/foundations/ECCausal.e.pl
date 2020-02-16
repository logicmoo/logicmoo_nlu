:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'foundations/ECCausal.e').
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:26
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:29
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:31
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:34
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:36
% predicate Initiated(fluent,time)
 %  predicate(initiated(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:37
==> mpred_prop(initiated(fluent,time),predicate).
==> meta_argtypes(initiated(fluent,time)).

% predicate Terminated(fluent,time)
 %  predicate(terminated(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:38
==> mpred_prop(terminated(fluent,time),predicate).
==> meta_argtypes(terminated(fluent,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:39
% [fluent,time]
% Initiated(fluent,time) <->
% (Started(fluent,time) &
%  !({event} Happens(event,time) & Terminates(event,fluent,time))).

 /*  initiated(Fluent, Time) <->
       started(Fluent, Time),
       not(exists([Event],
                   (happens(Event, Time), terminates(Event, Fluent, Time)))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:42
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:44
% [fluent,time]
% Terminated(fluent,time) <->
% (Stopped(fluent,time) &
%  !({event} Happens(event,time) & Initiates(event,fluent,time))).

 /*  terminated(Fluent, Time) <->
       stopped(Fluent, Time),
       not(exists([Event],
                   (happens(Event, Time), initiates(Event, Fluent, Time)))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:47
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/ECCausal.e:49
%; End of file.
