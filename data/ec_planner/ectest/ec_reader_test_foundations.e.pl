:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ectest/ec_reader_test_foundations.e').
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: foundations/Root.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

% sort boolean
==> sort(boolean).

% sort integer
==> sort(integer).

% reified sort predicate
 %  reified_sort(predicate).
==> mpred_prop(predicate,reified_sort).

% reified sort function
 %  reified_sort(function).
==> mpred_prop(function,reified_sort).
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: foundations/EC.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
%; Event Calculus (EC)
%;
%; @incollection{MillerShanahan:2002,
%;   author = "Rob Miller and Murray Shanahan",
%;   year = "2002",
%;   title = "Some alternative formulations of the event calculus",
%;   editor = "Antonis C. Kakas and Fariba Sadri",
%;   booktitle = "Computational Logic: Logic Programming and Beyond: Essays in Honour of \uppercase{R}obert \uppercase{A}. \uppercase{K}owalski, Part \uppercase{II}",
%;   series = "Lecture Notes in Computer Science",
%;   volume = "2408",
%;   pages = "452--490",
%;   address = "Berlin",
%;   publisher = "Springer",
%; }
%;

% sort time: integer
==> subsort(time,integer).

% sort offset: integer
==> subsort(offset,integer).

% reified sort fluent
 %  reified_sort(fluent).
==> mpred_prop(fluent,reified_sort).

% reified sort event
 %  reified_sort(event).
==> mpred_prop(event,reified_sort).

% predicate Happens(event,time)
 %  predicate(happens(event,time)).
==> mpred_prop(happens(event,time),predicate).
==> meta_argtypes(happens(event,time)).

% predicate HoldsAt(fluent,time)
 %  predicate(holds_at(fluent,time)).
==> mpred_prop(holds_at(fluent,time),predicate).
==> meta_argtypes(holds_at(fluent,time)).

% predicate ReleasedAt(fluent,time)
 %  predicate(releasedAt(fluent,time)).
==> mpred_prop(releasedAt(fluent,time),predicate).
==> meta_argtypes(releasedAt(fluent,time)).

% predicate Initiates(event,fluent,time)
 %  predicate(initiates(event,fluent,time)).
==> mpred_prop(initiates(event,fluent,time),predicate).
==> meta_argtypes(initiates(event,fluent,time)).

% predicate Terminates(event,fluent,time)
 %  predicate(terminates(event,fluent,time)).
==> mpred_prop(terminates(event,fluent,time),predicate).
==> meta_argtypes(terminates(event,fluent,time)).

% predicate Releases(event,fluent,time)
 %  predicate(releases(event,fluent,time)).
==> mpred_prop(releases(event,fluent,time),predicate).
==> meta_argtypes(releases(event,fluent,time)).

% predicate Trajectory(fluent,time,fluent,offset)
 %  predicate(trajectory(fluent,time,fluent,offset)).
==> mpred_prop(trajectory(fluent,time,fluent,offset),predicate).
==> meta_argtypes(trajectory(fluent,time,fluent,offset)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:70
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: foundations/DEC.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
%; Discrete Event Calculus (DEC)
%;
%; @article{Mueller:2004a,
%;   author = "Erik T. Mueller",
%;   year = "2004",
%;   title = "Event calculus reasoning through satisfiability",
%;   journal = "Journal of Logic and Computation",
%;   volume = "14",
%;   number = "5",
%;   pages = "703--730",
%; }
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:101
% sort time: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:102
==> subsort(time,integer).

% sort offset: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:103
==> subsort(offset,integer).

% reified sort fluent
 %  reified_sort(fluent).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:105
==> mpred_prop(fluent,reified_sort).

% reified sort event
 %  reified_sort(event).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:106
==> mpred_prop(event,reified_sort).

% predicate Happens(event,time)
 %  predicate(happens(event,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:108
==> mpred_prop(happens(event,time),predicate).
==> meta_argtypes(happens(event,time)).

% predicate HoldsAt(fluent,time)
 %  predicate(holds_at(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:109
==> mpred_prop(holds_at(fluent,time),predicate).
==> meta_argtypes(holds_at(fluent,time)).

% predicate ReleasedAt(fluent,time)
 %  predicate(releasedAt(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:110
==> mpred_prop(releasedAt(fluent,time),predicate).
==> meta_argtypes(releasedAt(fluent,time)).

% predicate Initiates(event,fluent,time)
 %  predicate(initiates(event,fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:112
==> mpred_prop(initiates(event,fluent,time),predicate).
==> meta_argtypes(initiates(event,fluent,time)).

% predicate Terminates(event,fluent,time)
 %  predicate(terminates(event,fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:113
==> mpred_prop(terminates(event,fluent,time),predicate).
==> meta_argtypes(terminates(event,fluent,time)).

% predicate Releases(event,fluent,time)
 %  predicate(releases(event,fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:114
==> mpred_prop(releases(event,fluent,time),predicate).
==> meta_argtypes(releases(event,fluent,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:115
% [fluent,time]
% (HoldsAt(fluent,time) &
%  !ReleasedAt(fluent,time+1) &
%  !({event} Happens(event,time) & Terminates(event,fluent,time))) ->
% HoldsAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:119
axiom(holds_at(Fluent, start),
   
    [ not(happens(Event, t)),
      holds_at(Fluent, t),
      not(releasedAt(Fluent, t+1)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(Fluent, start),
   
    [ not(terminates(Event, Fluent, t)),
      holds_at(Fluent, t),
      not(releasedAt(Fluent, t+1)),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:121
% [fluent,time]
% (!HoldsAt(fluent,time) &
%  !ReleasedAt(fluent,time+1) &
%  !({event} Happens(event,time) & Initiates(event,fluent,time))) ->
% !HoldsAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:125
axiom(not(holds_at(Fluent, start)),
   
    [ not(happens(Event, t)),
      not(holds_at(Fluent, t)),
      not(releasedAt(Fluent, t+1)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(not(holds_at(Fluent, start)),
   
    [ not(initiates(Event, Fluent, t)),
      not(holds_at(Fluent, t)),
      not(releasedAt(Fluent, t+1)),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:127
% [fluent,time]
% (!ReleasedAt(fluent,time) &
%  !({event} Happens(event,time) & Releases(event,fluent,time))) ->
% !ReleasedAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:130
axiom(not(releasedAt(Fluent, Time+1)),
   
    [ not(happens(Event, Time)),
      not(releasedAt(Fluent, Time))
    ]).
axiom(not(releasedAt(Fluent, Time+1)),
   
    [ not(releases(Event, Fluent, Time)),
      not(releasedAt(Fluent, Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:132
% [fluent,time]
% (ReleasedAt(fluent,time) &
%  !({event} Happens(event,time) &
%    (Initiates(event,fluent,time) |
%     Terminates(event,fluent,time)))) ->
% ReleasedAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:137
axiom(releasedAt(Fluent, Time+1),
    [not(happens(Event, Time)), releasedAt(Fluent, Time)]).
axiom(releasedAt(Fluent, Time+1),
   
    [ not(initiates(Event, Fluent, Time)),
      not(terminates(Event, Fluent, Time)),
      releasedAt(Fluent, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:139
% [event,fluent,time]
% (Happens(event,time) & Initiates(event,fluent,time)) ->
% (HoldsAt(fluent,time+1) & !ReleasedAt(fluent,time+1)).

 /*   if((happens(Event, Time), initiates(Event, Fluent, Time)),
          (holds_at(Fluent, Time+1), not(releasedAt(Fluent, Time+1)))).
 */

 /*  not(happens(Happens_Param, Maptime)) :-
       initiates(Happens_Param, Holds_at_Param, Maptime),
       (   not(holds_at(Holds_at_Param, Maptime+1))
       ;   releasedAt(Holds_at_Param, Maptime+1)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:141
axiom(not(happens(Happens_Param, t)),
   
    [ not(holds_at(Holds_at_Param, start)),
      initiates(Happens_Param, Holds_at_Param, t),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(not(happens(Happens_Param, t)),
   
    [ releasedAt(Holds_at_Param, t+1),
      initiates(Happens_Param, Holds_at_Param, t)
    ]).

 /*  not(initiates(Initiates_Param, Holds_at_Param8, Maptime6)) :-
       happens(Initiates_Param, Maptime6),
       (   not(holds_at(Holds_at_Param8, Maptime6+1))
       ;   releasedAt(Holds_at_Param8, Maptime6+1)
       ).
 */
axiom(not(initiates(Initiates_Param, Holds_at_Param8, t)),
   
    [ not(holds_at(Holds_at_Param8, start)),
      happens(Initiates_Param, t),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(not(initiates(Initiates_Param, Holds_at_Param8, t)),
    [releasedAt(Holds_at_Param8, t+1), happens(Initiates_Param, t)]).

 /*  holds_at(Holds_at_Param10, Maptime9+1) :-
       happens(Happens_Param11, Maptime9),
       initiates(Happens_Param11, Holds_at_Param10, Maptime9).
 */
axiom(holds_at(Holds_at_Param10, start),
   
    [ happens(Happens_Param11, t),
      initiates(Happens_Param11, Holds_at_Param10, t),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  not(releasedAt(ReleasedAt_Param, Maptime12+1)) :-
       happens(Happens_Param14, Maptime12),
       initiates(Happens_Param14, ReleasedAt_Param, Maptime12).
 */
axiom(not(releasedAt(ReleasedAt_Param, Maptime12+1)),
   
    [ happens(Happens_Param14, Maptime12),
      initiates(Happens_Param14, ReleasedAt_Param, Maptime12)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:143
% [event,fluent,time]
% (Happens(event,time) & Terminates(event,fluent,time)) ->
% (!HoldsAt(fluent,time+1) & !ReleasedAt(fluent,time+1)).

 /*   if((happens(Event, Time), terminates(Event, Fluent, Time)),
          (not(holds_at(Fluent, Time+1)), not(releasedAt(Fluent, Time+1)))).
 */

 /*  not(happens(Happens_Param, Maptime)) :-
       terminates(Happens_Param, Holds_at_Param, Maptime),
       (   holds_at(Holds_at_Param, Maptime+1)
       ;   releasedAt(Holds_at_Param, Maptime+1)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:145
axiom(not(happens(Happens_Param, t)),
   
    [ holds_at(Holds_at_Param, start),
      terminates(Happens_Param, Holds_at_Param, t),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(not(happens(Happens_Param, t)),
   
    [ releasedAt(Holds_at_Param, t+1),
      terminates(Happens_Param, Holds_at_Param, t)
    ]).

 /*  not(terminates(Terminates_Param, Holds_at_Param8, Maptime6)) :-
       happens(Terminates_Param, Maptime6),
       (   holds_at(Holds_at_Param8, Maptime6+1)
       ;   releasedAt(Holds_at_Param8, Maptime6+1)
       ).
 */
axiom(not(terminates(Terminates_Param, Holds_at_Param8, t)),
   
    [ holds_at(Holds_at_Param8, start),
      happens(Terminates_Param, t),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(not(terminates(Terminates_Param, Holds_at_Param8, t)),
    [releasedAt(Holds_at_Param8, t+1), happens(Terminates_Param, t)]).

 /*  not(holds_at(Holds_at_Param10, Maptime9+1)) :-
       happens(Happens_Param11, Maptime9),
       terminates(Happens_Param11, Holds_at_Param10, Maptime9).
 */
axiom(not(holds_at(Holds_at_Param10, start)),
   
    [ happens(Happens_Param11, t),
      terminates(Happens_Param11, Holds_at_Param10, t),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  not(releasedAt(ReleasedAt_Param, Maptime12+1)) :-
       happens(Happens_Param14, Maptime12),
       terminates(Happens_Param14, ReleasedAt_Param, Maptime12).
 */
axiom(not(releasedAt(ReleasedAt_Param, Maptime12+1)),
   
    [ happens(Happens_Param14, Maptime12),
      terminates(Happens_Param14, ReleasedAt_Param, Maptime12)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:147
% [event,fluent,time]
% (Happens(event,time) & Releases(event,fluent,time)) ->
% ReleasedAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:149
axiom(releasedAt(Fluent, Time+1),
   
    [ happens(Event, Time),
      releases(Event, Fluent, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:151
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: foundations/ECCausal.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:182
% predicate Started(fluent,time)
 %  predicate(started(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:183
==> mpred_prop(started(fluent,time),predicate).
==> meta_argtypes(started(fluent,time)).

% predicate Stopped(fluent,time)
 %  predicate(stopped(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:184
==> mpred_prop(stopped(fluent,time),predicate).
==> meta_argtypes(stopped(fluent,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:185
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:188
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:190
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:193
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:195
% predicate Initiated(fluent,time)
 %  predicate(initiated(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:196
==> mpred_prop(initiated(fluent,time),predicate).
==> meta_argtypes(initiated(fluent,time)).

% predicate Terminated(fluent,time)
 %  predicate(terminated(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:197
==> mpred_prop(terminated(fluent,time),predicate).
==> meta_argtypes(terminated(fluent,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:198
% [fluent,time]
% Initiated(fluent,time) <->
% (Started(fluent,time) &
%  !({event} Happens(event,time) & Terminates(event,fluent,time))).

 /*  initiated(Fluent, Time) <->
       started(Fluent, Time),
       not(exists([Event],
                   (happens(Event, Time), terminates(Event, Fluent, Time)))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:201
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:203
% [fluent,time]
% Terminated(fluent,time) <->
% (Stopped(fluent,time) &
%  !({event} Happens(event,time) & Initiates(event,fluent,time))).

 /*  terminated(Fluent, Time) <->
       stopped(Fluent, Time),
       not(exists([Event],
                   (happens(Event, Time), initiates(Event, Fluent, Time)))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:206
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:208
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: foundations/ECTraj.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
%; @incollection{MillerShanahan:2002,
%;   author = "Rob Miller and Murray Shanahan",
%;   year = "2002",
%;   title = "Some alternative formulations of the event calculus",
%;   editor = "Antonis C. Kakas and Fariba Sadri",
%;   booktitle = "Computational Logic: Logic Programming and Beyond: Essays in Honour of \uppercase{R}obert \uppercase{A}. \uppercase{K}owalski, Part \uppercase{II}",
%;   series = "Lecture Notes in Computer Science",
%;   volume = "2408",
%;   pages = "452--490",
%;   address = "Berlin",
%;   publisher = "Springer",
%; }
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:240
% predicate Clipped(time,fluent,time)
 %  predicate(clipped(time,fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:241
==> mpred_prop(clipped(time,fluent,time),predicate).
==> meta_argtypes(clipped(time,fluent,time)).

% predicate Declipped(time,fluent,time)
 %  predicate(declipped(time,fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:242
==> mpred_prop(declipped(time,fluent,time),predicate).
==> meta_argtypes(declipped(time,fluent,time)).

% predicate Trajectory(fluent,time,fluent,offset)
 %  predicate(trajectory(fluent,time,fluent,offset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:244
==> mpred_prop(trajectory(fluent,time,fluent,offset),predicate).
==> meta_argtypes(trajectory(fluent,time,fluent,offset)).

% predicate AntiTrajectory(fluent,time,fluent,offset)
 %  predicate(antiTrajectory(fluent,time,fluent,offset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:245
==> mpred_prop(antiTrajectory(fluent,time,fluent,offset),predicate).
==> meta_argtypes(antiTrajectory(fluent,time,fluent,offset)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:246
% [event,fluent,fluent2,offset,time]
% Happens(event,time) &
% Initiates(event,fluent,time) &
% 0 < offset &
% Trajectory(fluent,time,fluent2,offset) &
% !Clipped(time,fluent,time+offset) ->
% HoldsAt(fluent2,time+offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:252
axiom(holds_at(Fluent2, Time),
   
    [ happens(Event, Time),
      initiates(Event, Fluent, Time),
      comparison(0, 0, <),
      trajectory(Fluent, Time, Fluent2, 0),
      not(clipped(Time, Fluent, Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:254
% [event,fluent,fluent2,offset,time]
% Happens(event,time) &
% Terminates(event,fluent,time) &
% 0 < offset &
% AntiTrajectory(fluent,time,fluent2,offset) &
% !Declipped(time,fluent,time+offset) ->
% HoldsAt(fluent2,time+offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:260
axiom(holds_at(Fluent2, Time),
   
    [ happens(Event, Time),
      terminates(Event, Fluent, Time),
      comparison(0, 0, <),
      antiTrajectory(Fluent, Time, Fluent2, 0),
      not(declipped(Time, Fluent, Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_foundations.e:262
%; End of file.
