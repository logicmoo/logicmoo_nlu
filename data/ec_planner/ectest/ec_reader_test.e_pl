:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ectest/ec_reader_test.e').
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:70
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:101
% sort time: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:102
==> subsort(time,integer).

% sort offset: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:103
==> subsort(offset,integer).

% reified sort fluent
 %  reified_sort(fluent).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:105
==> mpred_prop(fluent,reified_sort).

% reified sort event
 %  reified_sort(event).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:106
==> mpred_prop(event,reified_sort).

% predicate Happens(event,time)
 %  predicate(happens(event,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:108
==> mpred_prop(happens(event,time),predicate).
==> meta_argtypes(happens(event,time)).

% predicate HoldsAt(fluent,time)
 %  predicate(holds_at(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:109
==> mpred_prop(holds_at(fluent,time),predicate).
==> meta_argtypes(holds_at(fluent,time)).

% predicate ReleasedAt(fluent,time)
 %  predicate(releasedAt(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:110
==> mpred_prop(releasedAt(fluent,time),predicate).
==> meta_argtypes(releasedAt(fluent,time)).

% predicate Initiates(event,fluent,time)
 %  predicate(initiates(event,fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:112
==> mpred_prop(initiates(event,fluent,time),predicate).
==> meta_argtypes(initiates(event,fluent,time)).

% predicate Terminates(event,fluent,time)
 %  predicate(terminates(event,fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:113
==> mpred_prop(terminates(event,fluent,time),predicate).
==> meta_argtypes(terminates(event,fluent,time)).

% predicate Releases(event,fluent,time)
 %  predicate(releases(event,fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:114
==> mpred_prop(releases(event,fluent,time),predicate).
==> meta_argtypes(releases(event,fluent,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:115
% [fluent,time]
% (HoldsAt(fluent,time) &
%  !ReleasedAt(fluent,time+1) &
%  !({event} Happens(event,time) & Terminates(event,fluent,time))) ->
% HoldsAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:119
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:121
% [fluent,time]
% (!HoldsAt(fluent,time) &
%  !ReleasedAt(fluent,time+1) &
%  !({event} Happens(event,time) & Initiates(event,fluent,time))) ->
% !HoldsAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:125
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:127
% [fluent,time]
% (!ReleasedAt(fluent,time) &
%  !({event} Happens(event,time) & Releases(event,fluent,time))) ->
% !ReleasedAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:130
axiom(not(releasedAt(Fluent, Time+1)),
   
    [ not(happens(Event, Time)),
      not(releasedAt(Fluent, Time))
    ]).
axiom(not(releasedAt(Fluent, Time+1)),
   
    [ not(releases(Event, Fluent, Time)),
      not(releasedAt(Fluent, Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:132
% [fluent,time]
% (ReleasedAt(fluent,time) &
%  !({event} Happens(event,time) &
%    (Initiates(event,fluent,time) |
%     Terminates(event,fluent,time)))) ->
% ReleasedAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:137
axiom(releasedAt(Fluent, Time+1),
    [not(happens(Event, Time)), releasedAt(Fluent, Time)]).
axiom(releasedAt(Fluent, Time+1),
   
    [ not(initiates(Event, Fluent, Time)),
      not(terminates(Event, Fluent, Time)),
      releasedAt(Fluent, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:139
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:141
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:143
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:145
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:147
% [event,fluent,time]
% (Happens(event,time) & Releases(event,fluent,time)) ->
% ReleasedAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:149
axiom(releasedAt(Fluent, Time+1),
   
    [ happens(Event, Time),
      releases(Event, Fluent, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:151
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:182
% predicate Started(fluent,time)
 %  predicate(started(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:183
==> mpred_prop(started(fluent,time),predicate).
==> meta_argtypes(started(fluent,time)).

% predicate Stopped(fluent,time)
 %  predicate(stopped(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:184
==> mpred_prop(stopped(fluent,time),predicate).
==> meta_argtypes(stopped(fluent,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:185
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:188
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:190
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:193
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:195
% predicate Initiated(fluent,time)
 %  predicate(initiated(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:196
==> mpred_prop(initiated(fluent,time),predicate).
==> meta_argtypes(initiated(fluent,time)).

% predicate Terminated(fluent,time)
 %  predicate(terminated(fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:197
==> mpred_prop(terminated(fluent,time),predicate).
==> meta_argtypes(terminated(fluent,time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:198
% [fluent,time]
% Initiated(fluent,time) <->
% (Started(fluent,time) &
%  !({event} Happens(event,time) & Terminates(event,fluent,time))).

 /*  initiated(Fluent, Time) <->
       started(Fluent, Time),
       not(exists([Event],
                   (happens(Event, Time), terminates(Event, Fluent, Time)))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:201
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:203
% [fluent,time]
% Terminated(fluent,time) <->
% (Stopped(fluent,time) &
%  !({event} Happens(event,time) & Initiates(event,fluent,time))).

 /*  terminated(Fluent, Time) <->
       stopped(Fluent, Time),
       not(exists([Event],
                   (happens(Event, Time), initiates(Event, Fluent, Time)))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:206
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:208
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:240
% predicate Clipped(time,fluent,time)
 %  predicate(clipped(time,fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:241
==> mpred_prop(clipped(time,fluent,time),predicate).
==> meta_argtypes(clipped(time,fluent,time)).

% predicate Declipped(time,fluent,time)
 %  predicate(declipped(time,fluent,time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:242
==> mpred_prop(declipped(time,fluent,time),predicate).
==> meta_argtypes(declipped(time,fluent,time)).

% predicate Trajectory(fluent,time,fluent,offset)
 %  predicate(trajectory(fluent,time,fluent,offset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:244
==> mpred_prop(trajectory(fluent,time,fluent,offset),predicate).
==> meta_argtypes(trajectory(fluent,time,fluent,offset)).

% predicate AntiTrajectory(fluent,time,fluent,offset)
 %  predicate(antiTrajectory(fluent,time,fluent,offset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:245
==> mpred_prop(antiTrajectory(fluent,time,fluent,offset),predicate).
==> meta_argtypes(antiTrajectory(fluent,time,fluent,offset)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:246
% [event,fluent,fluent2,offset,time]
% Happens(event,time) &
% Initiates(event,fluent,time) &
% 0 < offset &
% Trajectory(fluent,time,fluent2,offset) &
% !Clipped(time,fluent,time+offset) ->
% HoldsAt(fluent2,time+offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:252
axiom(holds_at(Fluent2, Time),
   
    [ happens(Event, Time),
      initiates(Event, Fluent, Time),
      comparison(0, 0, <),
      trajectory(Fluent, Time, Fluent2, 0),
      not(clipped(Time, Fluent, Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:254
% [event,fluent,fluent2,offset,time]
% Happens(event,time) &
% Terminates(event,fluent,time) &
% 0 < offset &
% AntiTrajectory(fluent,time,fluent2,offset) &
% !Declipped(time,fluent,time+offset) ->
% HoldsAt(fluent2,time+offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:260
axiom(holds_at(Fluent2, Time),
   
    [ happens(Event, Time),
      terminates(Event, Fluent, Time),
      comparison(0, 0, <),
      antiTrajectory(Fluent, Time, Fluent2, 0),
      not(declipped(Time, Fluent, Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:262
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/Ontology.e
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
%; integer
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:283
% sort diameter: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:284
==> subsort(diameter,integer).
%; object

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:287
% sort object
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:288
==> sort(object).

% sort agent: object
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:290
==> subsort(agent,object).

% sort physobj: object
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:292
==> subsort(physobj,object).

% sort bed: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:293
==> subsort(bed,physobj).

% sort snowflake: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:294
==> subsort(snowflake,physobj).

% sort sky: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:295
==> subsort(sky,physobj).

% sort stuff: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:297
==> subsort(stuff,physobj).

% sort surface: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:299
==> subsort(surface,physobj).

% sort ground: surface
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:300
==> subsort(ground,surface).

% sort snow: stuff
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:302
==> subsort(snow,stuff).

% sort ball
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:303
==> sort(ball).

% sort food: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:305
==> subsort(food,physobj).

% sort fruit: food
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:306
==> subsort(fruit,food).

% sort orange: fruit
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:307
==> subsort(orange,fruit).

% sort salad: food
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:308
==> subsort(salad,food).

% sort clothing: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:310
==> subsort(clothing,physobj).

% sort scarf: clothing
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:311
==> subsort(scarf,clothing).

% sort hat: clothing
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:312
==> subsort(hat,clothing).

% sort vegetablematter: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:314
==> subsort(vegetablematter,physobj).

% sort coal: vegetablematter
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:315
==> subsort(coal,vegetablematter).

% sort bodypart: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:317
==> subsort(bodypart,physobj).

% sort hand: bodypart
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:318
==> subsort(hand,bodypart).

% sort papertowels: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:320
==> subsort(papertowels,physobj).

% sort device: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:321
==> subsort(device,physobj).

% sort electronicdevice: device
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:322
==> subsort(electronicdevice,device).

% sort lamp: electronicdevice
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:323
==> subsort(lamp,electronicdevice).

% sort cat: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:325
==> subsort(cat,physobj).

% sort horse: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:326
==> subsort(horse,physobj).

% sort weapon: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:328
==> subsort(weapon,physobj).

% sort gun: weapon
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:329
==> subsort(gun,weapon).

% sort bomb: weapon
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:330
==> subsort(bomb,weapon).

% sort bullet: weapon
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:331
==> subsort(bullet,weapon).
%; location

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:334
% sort location
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:335
==> sort(location).

% sort room: location, outside: location
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:336
==> subsort(room,location).
==> subsort(outside,location).
%; portal

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:339
% sort portal
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:340
==> sort(portal).

% sort door: portal, staircase: portal
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:341
==> subsort(door,portal).
==> subsort(staircase,portal).

% sort street: portal
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:342
==> subsort(street,portal).

% sort track: portal
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:343
==> subsort(track,portal).

% sort building
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:345
==> sort(building).

% sort fire: object
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:347
==> subsort(fire,object).

% sort smoke: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:348
==> subsort(smoke,physobj).

% sort furniture: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:350
==> subsort(furniture,physobj).

% sort chair: furniture
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:351
==> subsort(chair,furniture).

% sort table: furniture
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:352
==> subsort(table,furniture).

% sort bill: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:354
==> subsort(bill,physobj).

% sort ticket: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:355
==> subsort(ticket,physobj).

% sort envelope: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:356
==> subsort(envelope,physobj).

% sort text: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:358
==> subsort(text,physobj).

% sort book: text
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:359
==> subsort(book,text).

% sort letter: text
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:360
==> subsort(letter,text).

% sort menu: text
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:361
==> subsort(menu,text).

% sort paper: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:363
==> subsort(paper,physobj).

% sort content
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:365
==> sort(content).

% sort script
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:366
==> sort(script).

% sort container: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:368
==> subsort(container,physobj).

% sort cigarette: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:369
==> subsort(cigarette,physobj).

% sort ashtray: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:370
==> subsort(ashtray,physobj).

% sort umbrella: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:371
==> subsort(umbrella,physobj).

% sort pen: physobj
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:373
==> subsort(pen,physobj).
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/RTSpace.e
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
%; RTSpace: room-scale topological space
%;
%; We use topological and metric representations of space,
%; at two levels of granularity---room-scale and object-scale.
%; The RTSpace representation deals with topological space at
%; the scale of rooms and outdoor locations.
%; This representation of space consists of locations, which
%; are connected by portals. There are two types of locations:
%; rooms and outside areas (outsides).
%;
%; object is at location.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:404
% fluent At(object,location)
 %  fluent(at(object,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:405
==> mpred_prop(at(object,location),fluent).
==> meta_argtypes(at(object,location)).

% manualrelease At
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:406
manualrelease(at).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:407
% [object1,location,time]
% (
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:408
% {object2} PartOf(object1,object2)) ->
% ReleasedAt(At(object1,location),time).

 /*  exists([Object2],
          if(partOf(Object1,Object2),
   	  releasedAt(at(Object1,Location),Time))).
 */

 /*  releasedAt(at(At_Param, Location5), Time6) :-
       partOf(At_Param, Some_Param),
       some(Some_Param,
            '$kolem_Fn_212'(At_Param, Location5, Time6)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:409
axiom(releasedAt(at(At_Param, Location5), Time6),
   
    [ partOf(At_Param, Some_Param),
      some(Some_Param,
           '$kolem_Fn_212'(At_Param, Location5, Time6))
    ]).

 /*  not(partOf(PartOf_Param, Some_Param12)) :-
       not(releasedAt(at(PartOf_Param, Location9), Time10)),
       some(Some_Param12,
            '$kolem_Fn_212'(PartOf_Param, Location9, Time10)).
 */
axiom(not(partOf(PartOf_Param, Some_Param12)),
   
    [ not(releasedAt(at(PartOf_Param, Location9), Time10)),
      some(Some_Param12,
           '$kolem_Fn_212'(PartOf_Param, Location9, Time10))
    ]).

 /*  not(some(Some_Param15, '$kolem_Fn_212'(Fn_212_Param, Location13, Time14))) :-
       not(releasedAt(at(Fn_212_Param, Location13), Time14)),
       partOf(Fn_212_Param, Some_Param15).
 */
axiom(not(some(Some_Param15, '$kolem_Fn_212'(Fn_212_Param, Location13, Time14))),
   
    [ not(releasedAt(at(Fn_212_Param, Location13), Time14)),
      partOf(Fn_212_Param, Some_Param15)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:411
%; A state constraint says that an object
%; is at one location at a time:
% [object,location1,location2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:414
% HoldsAt(At(object,location1),time) &
% HoldsAt(At(object,location2),time) ->
% location1=location2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:416
axiom(Location1=Location2,
   
    [ holds_at(at(Object, Location1), Time),
      holds_at(at(Object, Location2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:418
%; connectivity
%; Side one of portal is location.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:421
% function Side1(portal): location
 %  functional_predicate(side1(portal,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:422
==> mpred_prop(side1(portal,location),functional_predicate).
==> meta_argtypes(side1(portal,location)).
resultIsa(side1,location).
%; Side two of portal is location.

% function Side2(portal): location
 %  functional_predicate(side2(portal,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:424
==> mpred_prop(side2(portal,location),functional_predicate).
==> meta_argtypes(side2(portal,location)).
resultIsa(side2,location).
%; The building of room is building.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:426
% function BuildingOf(room): building
 %  functional_predicate(buildingOf(room,building)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:427
==> mpred_prop(buildingOf(room,building),functional_predicate).
==> meta_argtypes(buildingOf(room,building)).
resultIsa(buildingOf,building).
%; object is at a location that has portal.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:429
% fluent NearPortal(object,portal)
 %  fluent(nearPortal(object,portal)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:430
==> mpred_prop(nearPortal(object,portal),fluent).
==> meta_argtypes(nearPortal(object,portal)).

% noninertial NearPortal
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:431
==> noninertial(nearPortal).
%; A state constraint says that an object is near
%; a portal if and only if there is a location such that
%; the object is at the location and one of the sides
%; of the portal is the location:
% [object,portal,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:437
% HoldsAt(NearPortal(object,portal),time) <->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:438
% {location}% 
%  (Side1(portal)=location|
%   Side2(portal)=location) &
%  HoldsAt(At(object,location),time).

 /*   exists([Location],
             equiv(holds_at(nearPortal(Object, Portal), Time),
                    ((side1(Portal)=Location;side2(Portal)=Location), holds_at(at(Object, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_213'(Fn_213_Param, NearPortal_Ret, Time5))) :-
       (   holds_at(nearPortal(Fn_213_Param, NearPortal_Ret),
                    Time5),
           (   not(equals(side1(NearPortal_Ret), Location6)),
               not(equals(side2(NearPortal_Ret), Location6))
           ;   not(holds_at(at(Fn_213_Param, Location6), Time5))
           )
       ;   not(holds_at(nearPortal(Fn_213_Param, NearPortal_Ret),
                        Time5)),
           holds_at(at(Fn_213_Param, Location6), Time5),
           (   equals(side1(NearPortal_Ret), Location6)
           ;   equals(side2(NearPortal_Ret), Location6)
           )
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:441
axiom(not(some(Location6, '$kolem_Fn_213'(Fn_213_Param, NearPortal_Ret, Time5))),
   
    [ not(equals(side1(NearPortal_Ret), Location6)),
      not(equals(side2(NearPortal_Ret), Location6)),
      holds_at(nearPortal(Fn_213_Param, NearPortal_Ret),
               Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_213'(Fn_213_Param, NearPortal_Ret, Time5))),
   
    [ not(holds_at(at(Fn_213_Param, Location6), Time5)),
      holds_at(nearPortal(Fn_213_Param, NearPortal_Ret),
               Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_213'(Fn_213_Param, NearPortal_Ret, Time5))),
   
    [ equals(side1(NearPortal_Ret), Location6),
      not(holds_at(nearPortal(Fn_213_Param, NearPortal_Ret),
                   Time5)),
      holds_at(at(Fn_213_Param, Location6), Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_213'(Fn_213_Param, NearPortal_Ret, Time5))),
   
    [ equals(side2(NearPortal_Ret), Location6),
      not(holds_at(nearPortal(Fn_213_Param, NearPortal_Ret),
                   Time5)),
      holds_at(at(Fn_213_Param, Location6), Time5)
    ]).

 /*  not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)) :-
       (   not(equals(side1(NearPortal_Ret12), Location10)),
           not(equals(side2(NearPortal_Ret12), Location10))
       ;   not(holds_at(at(NearPortal_Param, Location10), Time9))
       ),
       some(Location10,
            '$kolem_Fn_213'(NearPortal_Param,
                            NearPortal_Ret12,
                            Time9)).
 */
axiom(not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)),
   
    [ not(equals(side1(NearPortal_Ret12), Location10)),
      not(equals(side2(NearPortal_Ret12), Location10)),
      some(Location10,
           '$kolem_Fn_213'(NearPortal_Param,
                           NearPortal_Ret12,
                           Time9))
    ]).
axiom(not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)),
   
    [ not(holds_at(at(NearPortal_Param, Location10), Time9)),
      some(Location10,
           '$kolem_Fn_213'(NearPortal_Param,
                           NearPortal_Ret12,
                           Time9))
    ]).

 /*  equals(side1(Side1_Ret), Some_Param) :-
       not(equals(side2(Side1_Ret), Some_Param)),
       holds_at(nearPortal(NearPortal_Param14, Side1_Ret),
                Time13),
       some(Some_Param,
            '$kolem_Fn_213'(NearPortal_Param14, Side1_Ret, Time13)).
 */
axiom(equals(side1(Side1_Ret), Some_Param),
   
    [ not(equals(side2(Side1_Ret), Some_Param)),
      holds_at(nearPortal(NearPortal_Param14, Side1_Ret),
               Time13),
      some(Some_Param,
           '$kolem_Fn_213'(NearPortal_Param14,
                           Side1_Ret,
                           Time13))
    ]).

 /*  equals(side2(Side2_Ret), Some_Param19) :-
       not(equals(side1(Side2_Ret), Some_Param19)),
       holds_at(nearPortal(NearPortal_Param18, Side2_Ret),
                Time17),
       some(Some_Param19,
            '$kolem_Fn_213'(NearPortal_Param18, Side2_Ret, Time17)).
 */
axiom(equals(side2(Side2_Ret), Some_Param19),
   
    [ not(equals(side1(Side2_Ret), Some_Param19)),
      holds_at(nearPortal(NearPortal_Param18, Side2_Ret),
               Time17),
      some(Some_Param19,
           '$kolem_Fn_213'(NearPortal_Param18,
                           Side2_Ret,
                           Time17))
    ]).

 /*  holds_at(at(At_Param, Location21), Time22) :-
       holds_at(nearPortal(At_Param, NearPortal_Ret24), Time22),
       some(Location21,
            '$kolem_Fn_213'(At_Param, NearPortal_Ret24, Time22)).
 */
axiom(holds_at(at(At_Param, Location21), Time22),
   
    [ holds_at(nearPortal(At_Param, NearPortal_Ret24), Time22),
      some(Location21,
           '$kolem_Fn_213'(At_Param, NearPortal_Ret24, Time22))
    ]).

 /*  holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25) :-
       ( holds_at(at(NearPortal_Param27, Location26), Time25),
         (   equals(side1(NearPortal_Ret28), Location26)
         ;   equals(side2(NearPortal_Ret28), Location26)
         )
       ),
       some(Location26,
            '$kolem_Fn_213'(NearPortal_Param27,
                            NearPortal_Ret28,
                            Time25)).
 */
axiom(holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25),
   
    [ equals(side1(NearPortal_Ret28), Location26),
      holds_at(at(NearPortal_Param27, Location26), Time25),
      some(Location26,
           '$kolem_Fn_213'(NearPortal_Param27,
                           NearPortal_Ret28,
                           Time25))
    ]).
axiom(holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25),
   
    [ equals(side2(NearPortal_Ret28), Location26),
      holds_at(at(NearPortal_Param27, Location26), Time25),
      some(Location26,
           '$kolem_Fn_213'(NearPortal_Param27,
                           NearPortal_Ret28,
                           Time25))
    ]).

 /*  not(holds_at(at(At_Param31, Location29), Time30)) :-
       (   equals(side1(Side1_Ret32), Location29)
       ;   equals(side2(Side1_Ret32), Location29)
       ),
       not(holds_at(nearPortal(At_Param31, Side1_Ret32), Time30)),
       some(Location29,
            '$kolem_Fn_213'(At_Param31, Side1_Ret32, Time30)).
 */
axiom(not(holds_at(at(At_Param31, Location29), Time30)),
   
    [ equals(side1(Side1_Ret32), Location29),
      not(holds_at(nearPortal(At_Param31, Side1_Ret32),
                   Time30)),
      some(Location29,
           '$kolem_Fn_213'(At_Param31, Side1_Ret32, Time30))
    ]).
axiom(not(holds_at(at(At_Param31, Location29), Time30)),
   
    [ equals(side2(Side1_Ret32), Location29),
      not(holds_at(nearPortal(At_Param31, Side1_Ret32),
                   Time30)),
      some(Location29,
           '$kolem_Fn_213'(At_Param31, Side1_Ret32, Time30))
    ]).

 /*  not(equals(side1(Side1_Ret36), Location33)) :-
       holds_at(at(At_Param35, Location33), Time34),
       not(holds_at(nearPortal(At_Param35, Side1_Ret36), Time34)),
       some(Location33,
            '$kolem_Fn_213'(At_Param35, Side1_Ret36, Time34)).
 */
axiom(not(equals(side1(Side1_Ret36), Location33)),
   
    [ holds_at(at(At_Param35, Location33), Time34),
      not(holds_at(nearPortal(At_Param35, Side1_Ret36),
                   Time34)),
      some(Location33,
           '$kolem_Fn_213'(At_Param35, Side1_Ret36, Time34))
    ]).

 /*  not(equals(side2(Side2_Ret40), Location37)) :-
       holds_at(at(At_Param39, Location37), Time38),
       not(holds_at(nearPortal(At_Param39, Side2_Ret40), Time38)),
       some(Location37,
            '$kolem_Fn_213'(At_Param39, Side2_Ret40, Time38)).
 */
axiom(not(equals(side2(Side2_Ret40), Location37)),
   
    [ holds_at(at(At_Param39, Location37), Time38),
      not(holds_at(nearPortal(At_Param39, Side2_Ret40),
                   Time38)),
      some(Location37,
           '$kolem_Fn_213'(At_Param39, Side2_Ret40, Time38))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:443
%; locking and unlocking doors
%; agent unlocks door.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:446
% event DoorUnlock(agent,door)
 %  event(doorUnlock(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:447
==> mpred_prop(doorUnlock(agent,door),event).
==> meta_argtypes(doorUnlock(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:447
%; agent locks door.

% event DoorLock(agent,door)
 %  event(doorLock(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:449
==> mpred_prop(doorLock(agent,door),event).
==> meta_argtypes(doorLock(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:449
%; door is unlocked.

% fluent DoorUnlocked(door)
 %  fluent(doorUnlocked(door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:451
==> mpred_prop(doorUnlocked(door),fluent).
==> meta_argtypes(doorUnlocked(door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:452
%; A precondition axiom states that
%; for an agent to unlock a door,
%; the agent must be awake,
%; the door must not already be unlocked, and
%; the agent must be near the door:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:458
% Happens(DoorUnlock(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% !HoldsAt(DoorUnlocked(door),time) &
% HoldsAt(NearPortal(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:461
axiom(requires(doorUnlock(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      not(holds_at(doorUnlocked(Door), Time)),
      holds_at(nearPortal(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:463
%; An effect axiom states that
%; if an agent unlocks a door,
%; the door will be unlocked:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:467
% Initiates(DoorUnlock(agent,door),DoorUnlocked(door),time).
axiom(initiates(doorUnlock(Agent, Door), doorUnlocked(Door), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:469
%; A precondition axiom states that
%; for an agent to lock a door,
%; the agent must be awake,
%; the door must be unlocked, and
%; the agent must be near the door:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:475
% Happens(DoorLock(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(DoorUnlocked(door),time) &
% HoldsAt(NearPortal(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:478
axiom(requires(doorLock(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(doorUnlocked(Door), Time),
      holds_at(nearPortal(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:480
%; An effect axiom states that
%; if an agent locks a door,
%; the door will no longer be unlocked.
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:484
% Terminates(DoorLock(agent,door),DoorUnlocked(door),time).
axiom(terminates(doorLock(Agent, Door), doorUnlocked(Door), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:486
%; A state constraint says that if a door is open,
%; it is unlocked:
% [door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:489
% HoldsAt(DoorIsOpen(door),time) -> HoldsAt(DoorUnlocked(door),time).
axiom(holds_at(doorUnlocked(Door), Time),
    [holds_at(doorIsOpen(Door), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:491
%; opening and closing doors
%; agent opens door.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:494
% event DoorOpen(agent,door)
 %  event(doorOpen(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:495
==> mpred_prop(doorOpen(agent,door),event).
==> meta_argtypes(doorOpen(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:495
%; agent closes door.

% event DoorClose(agent,door)
 %  event(doorClose(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:497
==> mpred_prop(doorClose(agent,door),event).
==> meta_argtypes(doorClose(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:497
%; door is open.

% fluent DoorIsOpen(door)
 %  fluent(doorIsOpen(door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:499
==> mpred_prop(doorIsOpen(door),fluent).
==> meta_argtypes(doorIsOpen(door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:500
%; A precondition axiom states that
%; for an agent to open a door,
%; the agent must be awake,
%; the door must not already be open,
%; the door must be unlocked, and
%; the agent must be near the door:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:507
% Happens(DoorOpen(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% !HoldsAt(DoorIsOpen(door),time) &
% HoldsAt(DoorUnlocked(door),time) &
% HoldsAt(NearPortal(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:511
axiom(requires(doorOpen(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      not(holds_at(doorIsOpen(Door), Time)),
      holds_at(doorUnlocked(Door), Time),
      holds_at(nearPortal(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:513
%; An effect axiom states that
%; if an agent opens a door,
%; the door will be open:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:517
% Initiates(DoorOpen(agent,door),DoorIsOpen(door),time).
axiom(initiates(doorOpen(Agent, Door), doorIsOpen(Door), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:519
%; A precondition axiom states that
%; for an agent to close a door,
%; the agent must be awake,
%; the door must be open,
%; the door must be unlocked, and
%; the agent must be near the door:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:526
% Happens(DoorClose(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(DoorIsOpen(door),time) &
% HoldsAt(DoorUnlocked(door),time) &
% HoldsAt(NearPortal(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:530
axiom(requires(doorClose(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(doorIsOpen(Door), Time),
      holds_at(doorUnlocked(Door), Time),
      holds_at(nearPortal(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:532
%; An effect axiom states that
%; if an agent closes a door,
%; the door will no longer be open:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:536
% Terminates(DoorClose(agent,door),DoorIsOpen(door),time).
axiom(terminates(doorClose(Agent, Door), doorIsOpen(Door), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:538
%; passing through doors
%; agent walks through side one of door.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:541
% event WalkThroughDoor12(agent,door)
 %  event(walkThroughDoor12(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:542
==> mpred_prop(walkThroughDoor12(agent,door),event).
==> meta_argtypes(walkThroughDoor12(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:542
%; agent walks through side two of door.

% event WalkThroughDoor21(agent,door)
 %  event(walkThroughDoor21(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:544
==> mpred_prop(walkThroughDoor21(agent,door),event).
==> meta_argtypes(walkThroughDoor21(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:545
%; Precondition axioms state that
%; for an agent to walk through a side of a door,
%; the agent must be awake and standing,
%; the door must be open, and
%; the agent must be at the side of the door that
%; the agent walks through:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:552
% Happens(WalkThroughDoor12(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(DoorIsOpen(door),time) &
% HoldsAt(At(agent,Side1(door)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:556
axiom(requires(walkThroughDoor12(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(doorIsOpen(Door), Time),
      holds_at(at(Agent, side1(Door)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:558
% [agent,door,time]
% Happens(WalkThroughDoor21(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(DoorIsOpen(door),time) &
% HoldsAt(At(agent,Side2(door)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:563
axiom(requires(walkThroughDoor21(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(doorIsOpen(Door), Time),
      holds_at(at(Agent, side2(Door)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:565
%; Effect axioms state that
%; if an agent walks through one side of a door,
%; the agent will be at the other side of the door:
% [agent,door,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:569
% Side2(door)=location ->
% Initiates(WalkThroughDoor12(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:570
axiom(initiates(walkThroughDoor12(Agent, Door), at(Agent, Location), Time),
    [equals(side2(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:572
% [agent,door,location,time]
% Side1(door)=location ->
% Initiates(WalkThroughDoor21(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:574
axiom(initiates(walkThroughDoor21(Agent, Door), at(Agent, Location), Time),
    [equals(side1(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:576
% [agent,door,location,time]
% Side1(door)=location ->
% Terminates(WalkThroughDoor12(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:578
axiom(terminates(walkThroughDoor12(Agent, Door), at(Agent, Location), Time),
    [equals(side1(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:580
% [agent,door,location,time]
% Side2(door)=location ->
% Terminates(WalkThroughDoor21(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:582
axiom(terminates(walkThroughDoor21(Agent, Door), at(Agent, Location), Time),
    [equals(side2(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:584
%; walking from one end of a street to another
%; agent walks from the first end of street to the second end.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:587
% event WalkStreet12(agent,street)
 %  event(walkStreet12(agent,street)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:588
==> mpred_prop(walkStreet12(agent,street),event).
==> meta_argtypes(walkStreet12(agent,street)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:588
%; agent walks from the second end of street to the first end.

% event WalkStreet21(agent,street)
 %  event(walkStreet21(agent,street)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:590
==> mpred_prop(walkStreet21(agent,street),event).
==> meta_argtypes(walkStreet21(agent,street)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:591
%; Precondition axioms state that
%; for an agent to walk from one end of a street to another,
%; the agent must be awake,
%; the agent must be standing, and
%; the agent must be at the first end of the street:
% [agent,street,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:597
% Happens(WalkStreet12(agent,street),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side1(street)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:600
axiom(requires(walkStreet12(Agent, Street), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(at(Agent, side1(Street)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:602
% [agent,street,time]
% Happens(WalkStreet21(agent,street),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side2(street)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:606
axiom(requires(walkStreet21(Agent, Street), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(at(Agent, side2(Street)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:608
%; Effect axioms state that
%; if an agent walks from one end of a street to another,
%; the agent will be at the other end of the street:
% [agent,street,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:612
% Side2(street)=location ->
% Initiates(WalkStreet12(agent,street),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:613
axiom(initiates(walkStreet12(Agent, Street), at(Agent, Location), Time),
    [equals(side2(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:615
% [agent,street,location,time]
% Side1(street)=location ->
% Initiates(WalkStreet21(agent,street),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:617
axiom(initiates(walkStreet21(Agent, Street), at(Agent, Location), Time),
    [equals(side1(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:619
% [agent,street,location,time]
% Side1(street)=location ->
% Terminates(WalkStreet12(agent,street),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:621
axiom(terminates(walkStreet12(Agent, Street), at(Agent, Location), Time),
    [equals(side1(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:623
% [agent,street,location,time]
% Side2(street)=location ->
% Terminates(WalkStreet21(agent,street),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:625
axiom(terminates(walkStreet21(Agent, Street), at(Agent, Location), Time),
    [equals(side2(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:627
%; floors
%; The floor of room is integer.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:630
% function Floor(room): integer
 %  functional_predicate(floor(room,integer)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:631
==> mpred_prop(floor(room,integer),functional_predicate).
==> meta_argtypes(floor(room,integer)).
resultIsa(floor,integer).
%; walking up and down staircases
%; agent walks down staircase.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:635
% event WalkDownStaircase(agent,staircase)
 %  event(walkDownStaircase(agent,staircase)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:636
==> mpred_prop(walkDownStaircase(agent,staircase),event).
==> meta_argtypes(walkDownStaircase(agent,staircase)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:636
%; agent walks up staircase.

% event WalkUpStaircase(agent,staircase)
 %  event(walkUpStaircase(agent,staircase)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:638
==> mpred_prop(walkUpStaircase(agent,staircase),event).
==> meta_argtypes(walkUpStaircase(agent,staircase)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:639
%; Precondition axioms state that
%; for an agent to walk down (up) a staircase,
%; the agent must be awake, standing, and
%; at the top (bottom) of the staircase:
% [agent,staircase,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:644
% Happens(WalkDownStaircase(agent,staircase),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side2(staircase)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:647
axiom(requires(walkDownStaircase(Agent, Staircase), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(at(Agent, side2(Staircase)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:649
% [agent,staircase,time]
% Happens(WalkUpStaircase(agent,staircase),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side1(staircase)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:653
axiom(requires(walkUpStaircase(Agent, Staircase), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(at(Agent, side1(Staircase)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:655
%; Effect axioms state that
%; if an agent walks down (up) a staircase,
%; the agent will be at the bottom (top) of the staircase:
% [agent,staircase,room,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:659
% Side1(staircase)=room ->
% Initiates(WalkDownStaircase(agent,staircase),At(agent,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:660
axiom(initiates(walkDownStaircase(Agent, Staircase), at(Agent, Room), Time),
    [equals(side1(Staircase), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:662
% [agent,staircase,room,time]
% Side2(staircase)=room ->
% Terminates(WalkDownStaircase(agent,staircase),At(agent,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:664
axiom(terminates(walkDownStaircase(Agent, Staircase), at(Agent, Room), Time),
    [equals(side2(Staircase), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:666
% [agent,staircase,room,time]
% Side2(staircase)=room ->
% Initiates(WalkUpStaircase(agent,staircase),At(agent,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:668
axiom(initiates(walkUpStaircase(Agent, Staircase), at(Agent, Room), Time),
    [equals(side2(Staircase), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:670
% [agent,staircase,room,time]
% Side1(staircase)=room ->
% Terminates(WalkUpStaircase(agent,staircase),At(agent,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:672
axiom(terminates(walkUpStaircase(Agent, Staircase), at(Agent, Room), Time),
    [equals(side1(Staircase), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:674
%; A state constraint says that if an agent is outside,
%; the agent is dressed.
% [agent,outside,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:677
% HoldsAt(At(agent,outside),time) ->
% HoldsAt(Dressed(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:678
axiom(holds_at(dressed(Agent), Time),
    [holds_at(at(Agent, Outside), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:680
%; room looks out onto outside.

% function LookOutOnto(room): outside
 %  functional_predicate(lookOutOnto(room,outside)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:682
==> mpred_prop(lookOutOnto(room,outside),functional_predicate).
==> meta_argtypes(lookOutOnto(room,outside)).
resultIsa(lookOutOnto,outside).
%; location1 is adjacent to location2.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:684
% predicate Adjacent(location,location)
 %  predicate(adjacent(location,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:685
==> mpred_prop(adjacent(location,location),predicate).
==> meta_argtypes(adjacent(location,location)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:686
%; A state constraint says that
%; two locations are adjacent if and only if
%; they have a portal in common:
% [location1,location2]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:689
% Adjacent(location1,location2) <->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:690
% {portal}% 
% (Side1(portal)=location1 &
%  Side2(portal)=location2) |
% (Side2(portal)=location1 &
%  Side1(portal)=location2).

 /*   exists([Portal],
             equiv(adjacent(Location1, Location2),
                    (side1(Portal)=Location1, side2(Portal)=Location2;side2(Portal)=Location1, side1(Portal)=Location2))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_214'(Fn_214_Param, Fn_214_Ret))) :-
       (   not(adjacent(Fn_214_Param, Fn_214_Ret)),
           (   equals(side1(Some_Param), Fn_214_Param),
               equals(side2(Some_Param), Fn_214_Ret)
           ;   equals(side2(Some_Param), Fn_214_Param),
               equals(side1(Some_Param), Fn_214_Ret)
           )
       ;   adjacent(Fn_214_Param, Fn_214_Ret),
           (   not(equals(side1(Some_Param), Fn_214_Param))
           ;   not(equals(side2(Some_Param), Fn_214_Ret))
           ),
           (   not(equals(side2(Some_Param), Fn_214_Param))
           ;   not(equals(side1(Some_Param), Fn_214_Ret))
           )
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:694
axiom(not(some(Some_Param, '$kolem_Fn_214'(Fn_214_Param, Fn_214_Ret))),
   
    [ equals(side1(Some_Param), Fn_214_Param),
      equals(side2(Some_Param), Fn_214_Ret),
      not(adjacent(Fn_214_Param, Fn_214_Ret))
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_214'(Fn_214_Param, Fn_214_Ret))),
   
    [ equals(side2(Some_Param), Fn_214_Param),
      equals(side1(Some_Param), Fn_214_Ret),
      not(adjacent(Fn_214_Param, Fn_214_Ret))
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_214'(Fn_214_Param, Fn_214_Ret))),
   
    [ not(equals(side2(Some_Param), Fn_214_Param)),
      not(equals(side1(Some_Param), Fn_214_Param)),
      adjacent(Fn_214_Param, Fn_214_Ret)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_214'(Fn_214_Param, Fn_214_Ret))),
   
    [ not(equals(side1(Some_Param), Fn_214_Ret)),
      not(equals(side1(Some_Param), Fn_214_Param)),
      adjacent(Fn_214_Param, Fn_214_Ret)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_214'(Fn_214_Param, Fn_214_Ret))),
   
    [ not(equals(side2(Some_Param), Fn_214_Param)),
      not(equals(side2(Some_Param), Fn_214_Ret)),
      adjacent(Fn_214_Param, Fn_214_Ret)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_214'(Fn_214_Param, Fn_214_Ret))),
   
    [ not(equals(side1(Some_Param), Fn_214_Ret)),
      not(equals(side2(Some_Param), Fn_214_Ret)),
      adjacent(Fn_214_Param, Fn_214_Ret)
    ]).

 /*  adjacent(Adjacent_Param, Adjacent_Ret) :-
       (   equals(side1(Some_Param8), Adjacent_Param),
           equals(side2(Some_Param8), Adjacent_Ret)
       ;   equals(side2(Some_Param8), Adjacent_Param),
           equals(side1(Some_Param8), Adjacent_Ret)
       ),
       some(Some_Param8,
            '$kolem_Fn_214'(Adjacent_Param, Adjacent_Ret)).
 */
axiom(adjacent(Adjacent_Param, Adjacent_Ret),
   
    [ equals(side1(Some_Param8), Adjacent_Param),
      equals(side2(Some_Param8), Adjacent_Ret),
      some(Some_Param8,
           '$kolem_Fn_214'(Adjacent_Param, Adjacent_Ret))
    ]).
axiom(adjacent(Adjacent_Param, Adjacent_Ret),
   
    [ equals(side2(Some_Param8), Adjacent_Param),
      equals(side1(Some_Param8), Adjacent_Ret),
      some(Some_Param8,
           '$kolem_Fn_214'(Adjacent_Param, Adjacent_Ret))
    ]).

 /*  not(equals(side1(Some_Param11), Adjacent_Param10)) :-
       equals(side2(Some_Param11), Equals_Ret),
       not(adjacent(Adjacent_Param10, Equals_Ret)),
       some(Some_Param11,
            '$kolem_Fn_214'(Adjacent_Param10, Equals_Ret)).
 */
axiom(not(equals(side1(Some_Param11), Adjacent_Param10)),
   
    [ equals(side2(Some_Param11), Equals_Ret),
      not(adjacent(Adjacent_Param10, Equals_Ret)),
      some(Some_Param11,
           '$kolem_Fn_214'(Adjacent_Param10, Equals_Ret))
    ]).

 /*  not(equals(side2(Some_Param14), Equals_Ret15)) :-
       equals(side1(Some_Param14), Adjacent_Param13),
       not(adjacent(Adjacent_Param13, Equals_Ret15)),
       some(Some_Param14,
            '$kolem_Fn_214'(Adjacent_Param13, Equals_Ret15)).
 */
axiom(not(equals(side2(Some_Param14), Equals_Ret15)),
   
    [ equals(side1(Some_Param14), Adjacent_Param13),
      not(adjacent(Adjacent_Param13, Equals_Ret15)),
      some(Some_Param14,
           '$kolem_Fn_214'(Adjacent_Param13, Equals_Ret15))
    ]).

 /*  not(equals(side2(Some_Param17), Adjacent_Param16)) :-
       equals(side1(Some_Param17), Equals_Ret18),
       not(adjacent(Adjacent_Param16, Equals_Ret18)),
       some(Some_Param17,
            '$kolem_Fn_214'(Adjacent_Param16, Equals_Ret18)).
 */
axiom(not(equals(side2(Some_Param17), Adjacent_Param16)),
   
    [ equals(side1(Some_Param17), Equals_Ret18),
      not(adjacent(Adjacent_Param16, Equals_Ret18)),
      some(Some_Param17,
           '$kolem_Fn_214'(Adjacent_Param16, Equals_Ret18))
    ]).

 /*  not(equals(side1(Some_Param20), Equals_Ret21)) :-
       equals(side2(Some_Param20), Adjacent_Param19),
       not(adjacent(Adjacent_Param19, Equals_Ret21)),
       some(Some_Param20,
            '$kolem_Fn_214'(Adjacent_Param19, Equals_Ret21)).
 */
axiom(not(equals(side1(Some_Param20), Equals_Ret21)),
   
    [ equals(side2(Some_Param20), Adjacent_Param19),
      not(adjacent(Adjacent_Param19, Equals_Ret21)),
      some(Some_Param20,
           '$kolem_Fn_214'(Adjacent_Param19, Equals_Ret21))
    ]).

 /*  not(adjacent(Adjacent_Param22, Adjacent_Ret24)) :-
       ( (   not(equals(side1(Some_Param23), Adjacent_Param22))
         ;   not(equals(side2(Some_Param23), Adjacent_Ret24))
         ),
         (   not(equals(side2(Some_Param23), Adjacent_Param22))
         ;   not(equals(side1(Some_Param23), Adjacent_Ret24))
         )
       ),
       some(Some_Param23,
            '$kolem_Fn_214'(Adjacent_Param22, Adjacent_Ret24)).
 */
axiom(not(adjacent(Adjacent_Param22, Adjacent_Ret24)),
   
    [ not(equals(side2(Some_Param23), Adjacent_Param22)),
      not(equals(side1(Some_Param23), Adjacent_Param22)),
      some(Some_Param23,
           '$kolem_Fn_214'(Adjacent_Param22, Adjacent_Ret24))
    ]).
axiom(not(adjacent(Adjacent_Param22, Adjacent_Ret24)),
   
    [ not(equals(side1(Some_Param23), Adjacent_Ret24)),
      not(equals(side1(Some_Param23), Adjacent_Param22)),
      some(Some_Param23,
           '$kolem_Fn_214'(Adjacent_Param22, Adjacent_Ret24))
    ]).
axiom(not(adjacent(Adjacent_Param22, Adjacent_Ret24)),
   
    [ not(equals(side2(Some_Param23), Adjacent_Param22)),
      not(equals(side2(Some_Param23), Adjacent_Ret24)),
      some(Some_Param23,
           '$kolem_Fn_214'(Adjacent_Param22, Adjacent_Ret24))
    ]).
axiom(not(adjacent(Adjacent_Param22, Adjacent_Ret24)),
   
    [ not(equals(side1(Some_Param23), Adjacent_Ret24)),
      not(equals(side2(Some_Param23), Adjacent_Ret24)),
      some(Some_Param23,
           '$kolem_Fn_214'(Adjacent_Param22, Adjacent_Ret24))
    ]).

 /*  equals(side1(Some_Param26), Adjacent_Param25) :-
       (   not(equals(side2(Some_Param26), Adjacent_Param25))
       ;   not(equals(side1(Some_Param26), Equals_Ret27))
       ),
       adjacent(Adjacent_Param25, Equals_Ret27),
       some(Some_Param26,
            '$kolem_Fn_214'(Adjacent_Param25, Equals_Ret27)).
 */
axiom(equals(side1(Some_Param26), Adjacent_Param25),
   
    [ not(equals(side2(Some_Param26), Adjacent_Param25)),
      adjacent(Adjacent_Param25, Equals_Ret27),
      some(Some_Param26,
           '$kolem_Fn_214'(Adjacent_Param25, Equals_Ret27))
    ]).
axiom(equals(side1(Some_Param26), Adjacent_Param25),
   
    [ not(equals(side1(Some_Param26), Equals_Ret27)),
      adjacent(Adjacent_Param25, Equals_Ret27),
      some(Some_Param26,
           '$kolem_Fn_214'(Adjacent_Param25, Equals_Ret27))
    ]).

 /*  equals(side2(Some_Param29), Equals_Ret30) :-
       (   not(equals(side2(Some_Param29), Adjacent_Param28))
       ;   not(equals(side1(Some_Param29), Equals_Ret30))
       ),
       adjacent(Adjacent_Param28, Equals_Ret30),
       some(Some_Param29,
            '$kolem_Fn_214'(Adjacent_Param28, Equals_Ret30)).
 */
axiom(equals(side2(Some_Param29), Equals_Ret30),
   
    [ not(equals(side2(Some_Param29), Adjacent_Param28)),
      adjacent(Adjacent_Param28, Equals_Ret30),
      some(Some_Param29,
           '$kolem_Fn_214'(Adjacent_Param28, Equals_Ret30))
    ]).
axiom(equals(side2(Some_Param29), Equals_Ret30),
   
    [ not(equals(side1(Some_Param29), Equals_Ret30)),
      adjacent(Adjacent_Param28, Equals_Ret30),
      some(Some_Param29,
           '$kolem_Fn_214'(Adjacent_Param28, Equals_Ret30))
    ]).

 /*  equals(side2(Some_Param32), Adjacent_Param31) :-
       (   not(equals(side1(Some_Param32), Adjacent_Param31))
       ;   not(equals(side2(Some_Param32), Equals_Ret33))
       ),
       adjacent(Adjacent_Param31, Equals_Ret33),
       some(Some_Param32,
            '$kolem_Fn_214'(Adjacent_Param31, Equals_Ret33)).
 */
axiom(equals(side2(Some_Param32), Adjacent_Param31),
   
    [ not(equals(side1(Some_Param32), Adjacent_Param31)),
      adjacent(Adjacent_Param31, Equals_Ret33),
      some(Some_Param32,
           '$kolem_Fn_214'(Adjacent_Param31, Equals_Ret33))
    ]).
axiom(equals(side2(Some_Param32), Adjacent_Param31),
   
    [ not(equals(side2(Some_Param32), Equals_Ret33)),
      adjacent(Adjacent_Param31, Equals_Ret33),
      some(Some_Param32,
           '$kolem_Fn_214'(Adjacent_Param31, Equals_Ret33))
    ]).

 /*  equals(side1(Some_Param35), Equals_Ret36) :-
       (   not(equals(side1(Some_Param35), Adjacent_Param34))
       ;   not(equals(side2(Some_Param35), Equals_Ret36))
       ),
       adjacent(Adjacent_Param34, Equals_Ret36),
       some(Some_Param35,
            '$kolem_Fn_214'(Adjacent_Param34, Equals_Ret36)).
 */
axiom(equals(side1(Some_Param35), Equals_Ret36),
   
    [ not(equals(side1(Some_Param35), Adjacent_Param34)),
      adjacent(Adjacent_Param34, Equals_Ret36),
      some(Some_Param35,
           '$kolem_Fn_214'(Adjacent_Param34, Equals_Ret36))
    ]).
axiom(equals(side1(Some_Param35), Equals_Ret36),
   
    [ not(equals(side2(Some_Param35), Equals_Ret36)),
      adjacent(Adjacent_Param34, Equals_Ret36),
      some(Some_Param35,
           '$kolem_Fn_214'(Adjacent_Param34, Equals_Ret36))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:696
%; The ground of outside is ground.

% function GroundOf(outside): ground
 %  functional_predicate(groundOf(outside,ground)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:698
==> mpred_prop(groundOf(outside,ground),functional_predicate).
==> meta_argtypes(groundOf(outside,ground)).
resultIsa(groundOf,ground).
%; The sky of outside is sky.

% function SkyOf(outside): sky
 %  functional_predicate(skyOf(outside,sky)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:700
==> mpred_prop(skyOf(outside,sky),functional_predicate).
==> meta_argtypes(skyOf(outside,sky)).
resultIsa(skyOf,sky).
%; State constraints fix the location of ground and sky:
% [outside,ground,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:703
% GroundOf(outside) = ground ->
% HoldsAt(At(ground,outside),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:704
axiom(holds_at(at(Ground, Outside), Time),
    [equals(groundOf(Outside), Ground)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:706
% [outside,sky,time]
% SkyOf(outside) = sky ->
% HoldsAt(At(sky,outside),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:708
axiom(holds_at(at(Sky, Outside), Time),
    [equals(skyOf(Outside), Sky)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:710
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/OTSpace.e
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
%; OTSpace: object-scale topological space
%;
%; The OTSpace representation deals with topological space at
%; the scale of objects such as agents (humans and animals)
%; and physical objects.
%;
%; PartOf
%; physobj is a part of object.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:738
% predicate PartOf(physobj,object)
 %  predicate(partOf(physobj,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:739
==> mpred_prop(partOf(physobj,object),predicate).
==> meta_argtypes(partOf(physobj,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:740
%; A state constraint says that if a physical object
%; is part of an object, the location of the
%; physical object is the same as the location of the object:
% [physobj,object,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:744
% PartOf(physobj,object) &
% HoldsAt(At(object,location),time) ->
% HoldsAt(At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:746
axiom(holds_at(at(Physobj, Location), Time),
   
    [ partOf(Physobj, Object),
      holds_at(at(Object, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:748
%; rolling a snowball bigger
%; agent rolls stuff1 along stuff2.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:751
% event RollAlong(agent,stuff,stuff)
 %  event(rollAlong(agent,stuff,stuff)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:752
==> mpred_prop(rollAlong(agent,stuff,stuff),event).
==> meta_argtypes(rollAlong(agent,stuff,stuff)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:752
%; The diameter of ball is diameter.

% fluent Diameter(ball,diameter)
 %  fluent(diameter(ball,diameter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:754
==> mpred_prop(diameter(ball,diameter),fluent).
==> meta_argtypes(diameter(ball,diameter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:755
%; A state constraint says that a ball has a unique diameter:
% [ball,diameter1,diameter2,time]
% HoldsAt(Diameter(ball,diameter1),time) &
% HoldsAt(Diameter(ball,diameter2),time) ->
% diameter1=diameter2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:759
axiom(Diameter1=Diameter2,
   
    [ holds_at(diameter(Ball, Diameter1), Time),
      holds_at(diameter(Ball, Diameter2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:761
%; Effect axiom state that if an agent rolls some snow along
%; some other snow, the diameter of the first snow will increase:
% [agent,snow1,snow2,diameter1,diameter2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:764
% HoldsAt(Diameter(snow1,diameter1),time) &
% diameter2 = diameter1+1 ->
% Initiates(RollAlong(agent,snow1,snow2),
%           Diameter(snow1,diameter2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:768
axiom(initiates(rollAlong(Agent, Snow1, Snow2), diameter(Snow1, Diameter2), Time),
   
    [ holds_at(diameter(Snow1, Diameter1), Time),
      equals(Diameter2, Diameter1+1)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:770
% [agent,snow1,snow2,diameter1,time]
% HoldsAt(Diameter(snow1,diameter1),time) ->
% Terminates(RollAlong(agent,snow1,snow2),
%            Diameter(snow1,diameter1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:774
axiom(terminates(rollAlong(Agent, Snow1, Snow2), diameter(Snow1, Diameter1), Time),
    [holds_at(diameter(Snow1, Diameter1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:776
%; A precondition axiom states that
%; for an agent to roll some snow along some other snow,
%; there must be a location such that
%; the agent is at the location,
%; the first snow is at the location, and
%; the second snow is at the location:
%;[agent,snow1,snow2,time]
%;Happens(RollAlong(agent,snow1,snow2),time) ->
%;{location}
%;HoldsAt(At(agent,location),time) &
%;HoldsAt(At(snow1,location),time) &
%;HoldsAt(At(snow2,location),time).
%; motion
%; object moves (in place).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:792
% event Move(object)
 %  event(move(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:793
==> mpred_prop(move(object),event).
==> meta_argtypes(move(object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:794
%; Holding
%; agent is holding physobj.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:797
% fluent Holding(agent,physobj)
 %  fluent(holding(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:798
==> mpred_prop(holding(agent,physobj),fluent).
==> meta_argtypes(holding(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:798
%; agent holds or picks up physobj.

% event Hold(agent,physobj)
 %  event(hold(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:800
==> mpred_prop(hold(agent,physobj),event).
==> meta_argtypes(hold(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:800
%; agent picks up some stuff1 from stuff2.

% event HoldSome(agent,stuff,stuff)
 %  event(holdSome(agent,stuff,stuff)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:802
==> mpred_prop(holdSome(agent,stuff,stuff),event).
==> meta_argtypes(holdSome(agent,stuff,stuff)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:802
%; agent releases or lets go of physobj.

% event LetGoOf(agent,physobj)
 %  event(letGoOf(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:804
==> mpred_prop(letGoOf(agent,physobj),event).
==> meta_argtypes(letGoOf(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:805
%; An effect axiom states that if an agent holds
%; a physical object, the agent will be holding the
%; physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:809
% Initiates(Hold(agent,physobj),Holding(agent,physobj),time).
axiom(initiates(hold(Agent, Physobj), holding(Agent, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:811
%; A precondition axiom states that
%; for an agent to hold a physical object,
%; there must be a location such that
%; the agent is at the location and
%; the physical object is at the location:
%;[agent,physobj,time]
%;Happens(Hold(agent,physobj),time) ->
%;{location}
%;  HoldsAt(At(agent,location),time) &
%;  HoldsAt(At(physobj,location),time).
%; An effect axiom states that if an agent
%; lets go of a physical object, the agent is no longer holding
%; the physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:826
% Terminates(LetGoOf(agent,physobj),Holding(agent,physobj),time).
axiom(terminates(letGoOf(Agent, Physobj), holding(Agent, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:828
%; A precondition axiom states that
%; for an agent to let go of a physical object,
%; the agent must be holding the physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:832
% Happens(LetGoOf(agent,physobj),time) ->
% HoldsAt(Holding(agent,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:833
axiom(requires(letGoOf(Agent, Physobj), Time),
    [holds_at(holding(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:835
%; A releases axiom states that if an agent holds
%; a physical object,
%; the physical object's location will be released
%; from inertia:
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:840
% Releases(Hold(agent,physobj),At(physobj,location),time).
axiom(releases(hold(Agent, Physobj), at(Physobj, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:842
%; A state constraint says that if an agent is holding
%; a physical object and the agent is at a location,
%; the physical object is also at the location:
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:846
% HoldsAt(Holding(agent,physobj),time) &
% HoldsAt(At(agent,location),time) ->
% HoldsAt(At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:848
axiom(holds_at(at(Physobj, Location), Time),
   
    [ holds_at(holding(Agent, Physobj), Time),
      holds_at(at(Agent, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:850
%; A releases axiom states that if an agent holds
%; a physical object,
%; the locations of the parts of the physical object
%; will be released from inertia:
% [agent,physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:855
% PartOf(physobj1,physobj2) ->
% Releases(Hold(agent,physobj2),At(physobj1,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:856
axiom(releases(hold(Agent, Physobj2), at(Physobj1, Location), Time),
    [partOf(Physobj1, Physobj2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:858
%; Further, if an agent holds a physical object,
%; the locations of the physical objects of which
%; the physical object is a part
%; will be released from inertia:
% [agent,physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:863
% PartOf(physobj1,physobj2) ->
% Releases(Hold(agent,physobj1),At(physobj2,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:864
axiom(releases(hold(Agent, Physobj1), at(Physobj2, Location), Time),
    [partOf(Physobj1, Physobj2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:866
%;[agent,physobj,location1,location2,time]
%;(!{object} PartOf(physobj,object)) &
%;HoldsAt(At(agent,location1),time) &
%;location1 != location2 ->
%;Terminates(LetGoOf(agent,physobj),At(physobj,location2),time).
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:873
% (!{object} PartOf(physobj,object)) &
% HoldsAt(At(agent,location),time) ->
% Initiates(LetGoOf(agent,physobj),At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:875
axiom(initiates(letGoOf(Agent, Physobj), at(Physobj, Location), Time),
   
    [ not(partOf(Physobj, Object)),
      holds_at(at(Agent, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:877
%;[agent,physobj1,physobj2,location1,location2,time]
%;PartOf(physobj1,physobj2) &
%;(!{object} PartOf(physobj2,object)) &
%;HoldsAt(At(agent,location1),time) &
%;location1 != location2 ->
%;Terminates(LetGoOf(agent,physobj1),At(physobj2,location2),time).
% [agent,physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:885
% PartOf(physobj1,physobj2) &
% (!{object} PartOf(physobj2,object)) &
% HoldsAt(At(agent,location),time) ->
% Initiates(LetGoOf(agent,physobj1),At(physobj2,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:888
axiom(initiates(letGoOf(Agent, Physobj1), at(Physobj2, Location), Time),
   
    [ partOf(Physobj1, Physobj2),
      not(partOf(Physobj2, Object)),
      holds_at(at(Agent, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:890
%; An effect axiom states that if an agent is at a location
%; and lets go of a physical object, the physical object
%; will be at the location:
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:894
% HoldsAt(At(agent,location),time) ->
% Initiates(LetGoOf(agent,physobj),At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:895
axiom(initiates(letGoOf(Agent, Physobj), at(Physobj, Location), Time),
    [holds_at(at(Agent, Location), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:897
%; An effect axiom states that if an agent picks up
%; some stuff out of some other stuff, the agent will
%; be holding the first stuff:
% [agent,stuff1,stuff2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:901
% Initiates(HoldSome(agent,stuff1,stuff2),
%           Holding(agent,stuff1),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:903
axiom(initiates(holdSome(Agent, Stuff1, Stuff2), holding(Agent, Stuff1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:905
%; A precondition axiom states that
%; for an agent to pick up some stuff out of some other stuff,
%; the first stuff must be a part of the second stuff and
%; there must be a location such that the agent is at the location,
%; the first stuff is at the location, and the second stuff is
%; at the location:
% [agent,stuff1,stuff2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:912
% Happens(HoldSome(agent,stuff1,stuff2),time) ->
% PartOf(stuff1,stuff2) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:914
% {location}% 
%   HoldsAt(At(agent,location),time) &
%   HoldsAt(At(stuff1,location),time) &
%   HoldsAt(At(stuff2,location),time).

 /*   exists([Location],
             if(happens(holdSome(Agent, Stuff1, Stuff2),
                        Time),
                 (partOf(Stuff1, Stuff2), holds_at(at(Agent, Location), Time), holds_at(at(Stuff1, Location), Time), holds_at(at(Stuff2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_217'(Fn_217_Param, PartOf_Param, At_Param, Maptime))) :-
       happens(holdSome(Fn_217_Param, PartOf_Param, At_Param),
               Maptime),
       (   not(partOf(PartOf_Param, At_Param))
       ;   not(holds_at(at(Fn_217_Param, Location7), Maptime))
       ;   not(holds_at(at(PartOf_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:917
axiom(not(some(Location7, '$kolem_Fn_217'(Fn_217_Param, PartOf_Param, At_Param, Maptime))),
   
    [ not(partOf(PartOf_Param, At_Param)),
      happens(holdSome(Fn_217_Param, PartOf_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_217'(Fn_217_Param, PartOf_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_217_Param, Location7), Maptime)),
      happens(holdSome(Fn_217_Param, PartOf_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_217'(Fn_217_Param, PartOf_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(PartOf_Param, Location7), Maptime)),
      happens(holdSome(Fn_217_Param, PartOf_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_217'(Fn_217_Param, PartOf_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(holdSome(Fn_217_Param, PartOf_Param, At_Param),
              Maptime)
    ]).

 /*  not(happens(holdSome(HoldSome_Param, PartOf_Param14, At_Param15), Maptime11)) :-
       (   not(partOf(PartOf_Param14, At_Param15))
       ;   not(holds_at(at(HoldSome_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(PartOf_Param14, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_217'(HoldSome_Param,
                            PartOf_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(holdSome(HoldSome_Param, PartOf_Param14, At_Param15), Maptime11)),
   
    [ not(partOf(PartOf_Param14, At_Param15)),
      some(Location12,
           '$kolem_Fn_217'(HoldSome_Param,
                           PartOf_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(holdSome(HoldSome_Param, PartOf_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(HoldSome_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_217'(HoldSome_Param,
                           PartOf_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(holdSome(HoldSome_Param, PartOf_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(PartOf_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_217'(HoldSome_Param,
                           PartOf_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(holdSome(HoldSome_Param, PartOf_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_217'(HoldSome_Param,
                           PartOf_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  partOf(PartOf_Param17, PartOf_Ret) :-
       happens(holdSome(HoldSome_Param18,
                        PartOf_Param17,
                        PartOf_Ret),
               Maptime16),
       some(Some_Param,
            '$kolem_Fn_217'(HoldSome_Param18,
                            PartOf_Param17,
                            PartOf_Ret,
                            Maptime16)).
 */
axiom(partOf(PartOf_Param17, PartOf_Ret),
   
    [ happens(holdSome(HoldSome_Param18,
                       PartOf_Param17,
                       PartOf_Ret),
              Maptime16),
      some(Some_Param,
           '$kolem_Fn_217'(HoldSome_Param18,
                           PartOf_Param17,
                           PartOf_Ret,
                           Maptime16))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(holdSome(At_Param23, A, HoldSome_Ret),
               Time22),
       some(Location21,
            '$kolem_Fn_217'(At_Param23,
                            A,
                            HoldSome_Ret,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(holdSome(At_Param23, A, HoldSome_Ret),
              Time22),
      some(Location21,
           '$kolem_Fn_217'(At_Param23,
                           A,
                           HoldSome_Ret,
                           Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(holdSome(HoldSome_Param28,
                        At_Param27,
                        HoldSome_Ret29),
               Time26),
       some(Location25,
            '$kolem_Fn_217'(HoldSome_Param28,
                            At_Param27,
                            HoldSome_Ret29,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(holdSome(HoldSome_Param28,
                       At_Param27,
                       HoldSome_Ret29),
              Time26),
      some(Location25,
           '$kolem_Fn_217'(HoldSome_Param28,
                           At_Param27,
                           HoldSome_Ret29,
                           Time26))
    ]).

 /*  holds_at(at(At_Param32, Location30), Time31) :-
       happens(holdSome(HoldSome_Param33, A, At_Param32),
               Time31),
       some(Location30,
            '$kolem_Fn_217'(HoldSome_Param33,
                            A,
                            At_Param32,
                            Time31)).
 */
axiom(holds_at(at(At_Param32, Location30), Time31),
   
    [ happens(holdSome(HoldSome_Param33, A, At_Param32),
              Time31),
      some(Location30,
           '$kolem_Fn_217'(HoldSome_Param33,
                           A,
                           At_Param32,
                           Time31))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:919
%; A releases axiom states that if an agent picks up some
%; stuff out of some other stuff,
%; the first stuff's location will be released
%; from inertia:
% [agent,stuff1,stuff2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:926
% Releases(HoldSome(agent,stuff1,stuff2),At(stuff1,location),time).
axiom(releases(holdSome(Agent, Stuff1, Stuff2), at(Stuff1, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:928
%; Inside
%; physobj1 is inside physobj2.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:931
% fluent Inside(physobj,physobj)
 %  fluent(inside(physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:932
==> mpred_prop(inside(physobj,physobj),fluent).
==> meta_argtypes(inside(physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:932
%; agent puts physobj1 inside physobj2.

% event PutInside(agent,physobj,physobj)
 %  event(putInside(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:934
==> mpred_prop(putInside(agent,physobj,physobj),event).
==> meta_argtypes(putInside(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:934
%; agent takes physobj1 out of physobj2.

% event TakeOutOf(agent,physobj,physobj)
 %  event(takeOutOf(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:936
==> mpred_prop(takeOutOf(agent,physobj,physobj),event).
==> meta_argtypes(takeOutOf(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:937
%; A state constraint says that a physical object cannot
%; be inside itself:
% [physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:941
% HoldsAt(Inside(physobj1,physobj2),time) ->
% physobj1!=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:942
axiom(Physobj1\=Physobj2,
    [holds_at(inside(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:944
% holdsAt(inside(physobj1,physobj2),time) -> physobj1 != physobj2.
axiom(physobj1\=physobj2,
    [holds_at(inside(physobj1, physobj2), time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:947
%; A state constraint says that if a physical object is
%; inside another physical object, the second physical object
%; is not inside the first physical object:
% [physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:951
% HoldsAt(Inside(physobj1,physobj2),time) ->
% !HoldsAt(Inside(physobj2,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:952
axiom(not(holds_at(inside(Physobj2, Physobj1), Time)),
    [holds_at(inside(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:954
%; An effect axiom states that if an agent puts a physical
%; object inside another physical object, the first
%; physical object will be inside the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:958
% Initiates(PutInside(agent,physobj1,physobj2),
%           Inside(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:959
axiom(initiates(putInside(Agent, Physobj1, Physobj2), inside(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:961
%; An effect axiom states that if an agent puts a physical
%; object inside another physical object, the agent will
%; no longer be holding the first physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:965
% Terminates(PutInside(agent,physobj1,physobj2),
%            Holding(agent,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:966
axiom(terminates(putInside(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:968
%; A precondition axiom states that
%; for an agent to put a physical object inside another
%; physical object,
%; the agent must be holding the first physical object
%; and there must be a location such that
%; the agent is at the location and
%; the second physical object is at the location:
%;[agent,physobj1,physobj2,time]
%;Happens(PutInside(agent,physobj1,physobj2),time) ->
%;HoldsAt(Holding(agent,physobj1),time) &
%;{location}
%; HoldsAt(At(agent,location),time) &
%; HoldsAt(At(physobj2,location),time).
%; An effect axiom states that
%; if an agent takes a physical object out of another
%; physical object, the first physical object
%; will no longer be inside the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:987
% Terminates(TakeOutOf(agent,physobj1,physobj2),
%            Inside(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:988
axiom(terminates(takeOutOf(Agent, Physobj1, Physobj2), inside(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:990
%; A precondition axiom states that
%; for an agent to take a physical object out of another
%; physical object,
%; the first physical object must be inside the second physical object
%; and there must be a location such that
%; the agent is at the location,
%; the first physical object is at the location, and
%; the second physical object is at the location:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:999
% Happens(TakeOutOf(agent,physobj1,physobj2),time) ->
% HoldsAt(Inside(physobj1,physobj2),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1001
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(physobj1,location),time) &
%  HoldsAt(At(physobj2,location),time).

 /*   exists([Location],
             if(happens(takeOutOf(Agent, Physobj1, Physobj2),
                        Time),
                 (holds_at(inside(Physobj1, Physobj2), Time), holds_at(at(Agent, Location), Time), holds_at(at(Physobj1, Location), Time), holds_at(at(Physobj2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_218'(Fn_218_Param, Inside_Param, At_Param, Maptime))) :-
       happens(takeOutOf(Fn_218_Param, Inside_Param, At_Param),
               Maptime),
       (   not(holds_at(inside(Inside_Param, At_Param), Maptime))
       ;   not(holds_at(at(Fn_218_Param, Location7), Maptime))
       ;   not(holds_at(at(Inside_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1004
axiom(not(some(Location7, '$kolem_Fn_218'(Fn_218_Param, Inside_Param, At_Param, Maptime))),
   
    [ not(holds_at(inside(Inside_Param, At_Param), Maptime)),
      happens(takeOutOf(Fn_218_Param, Inside_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_218'(Fn_218_Param, Inside_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_218_Param, Location7), Maptime)),
      happens(takeOutOf(Fn_218_Param, Inside_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_218'(Fn_218_Param, Inside_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Inside_Param, Location7), Maptime)),
      happens(takeOutOf(Fn_218_Param, Inside_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_218'(Fn_218_Param, Inside_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(takeOutOf(Fn_218_Param, Inside_Param, At_Param),
              Maptime)
    ]).

 /*  not(happens(takeOutOf(TakeOutOf_Param, Inside_Param14, At_Param15), Maptime11)) :-
       (   not(holds_at(inside(Inside_Param14, At_Param15),
                        Maptime11))
       ;   not(holds_at(at(TakeOutOf_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(Inside_Param14, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_218'(TakeOutOf_Param,
                            Inside_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(takeOutOf(TakeOutOf_Param, Inside_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(inside(Inside_Param14, At_Param15),
                   Maptime11)),
      some(Location12,
           '$kolem_Fn_218'(TakeOutOf_Param,
                           Inside_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOutOf(TakeOutOf_Param, Inside_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(TakeOutOf_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_218'(TakeOutOf_Param,
                           Inside_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOutOf(TakeOutOf_Param, Inside_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(Inside_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_218'(TakeOutOf_Param,
                           Inside_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOutOf(TakeOutOf_Param, Inside_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_218'(TakeOutOf_Param,
                           Inside_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  holds_at(inside(Inside_Param17, Inside_Ret), Time16) :-
       happens(takeOutOf(TakeOutOf_Param18,
                         Inside_Param17,
                         Inside_Ret),
               Time16),
       some(Some_Param,
            '$kolem_Fn_218'(TakeOutOf_Param18,
                            Inside_Param17,
                            Inside_Ret,
                            Time16)).
 */
axiom(holds_at(inside(Inside_Param17, Inside_Ret), Time16),
   
    [ happens(takeOutOf(TakeOutOf_Param18,
                        Inside_Param17,
                        Inside_Ret),
              Time16),
      some(Some_Param,
           '$kolem_Fn_218'(TakeOutOf_Param18,
                           Inside_Param17,
                           Inside_Ret,
                           Time16))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(takeOutOf(At_Param23, A, TakeOutOf_Ret),
               Time22),
       some(Location21,
            '$kolem_Fn_218'(At_Param23,
                            A,
                            TakeOutOf_Ret,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(takeOutOf(At_Param23, A, TakeOutOf_Ret),
              Time22),
      some(Location21,
           '$kolem_Fn_218'(At_Param23,
                           A,
                           TakeOutOf_Ret,
                           Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(takeOutOf(TakeOutOf_Param28,
                         At_Param27,
                         TakeOutOf_Ret29),
               Time26),
       some(Location25,
            '$kolem_Fn_218'(TakeOutOf_Param28,
                            At_Param27,
                            TakeOutOf_Ret29,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(takeOutOf(TakeOutOf_Param28,
                        At_Param27,
                        TakeOutOf_Ret29),
              Time26),
      some(Location25,
           '$kolem_Fn_218'(TakeOutOf_Param28,
                           At_Param27,
                           TakeOutOf_Ret29,
                           Time26))
    ]).

 /*  holds_at(at(At_Param32, Location30), Time31) :-
       happens(takeOutOf(TakeOutOf_Param33, A, At_Param32),
               Time31),
       some(Location30,
            '$kolem_Fn_218'(TakeOutOf_Param33,
                            A,
                            At_Param32,
                            Time31)).
 */
axiom(holds_at(at(At_Param32, Location30), Time31),
   
    [ happens(takeOutOf(TakeOutOf_Param33, A, At_Param32),
              Time31),
      some(Location30,
           '$kolem_Fn_218'(TakeOutOf_Param33,
                           A,
                           At_Param32,
                           Time31))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1006
%; A releases axiom states that if an agent puts a physical
%; object inside another physical object,
%; the first physical object's location will be released
%; from inertia:
% [agent,physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1011
% Releases(PutInside(agent,physobj1,physobj2),
%          At(physobj1,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1012
axiom(releases(putInside(Agent, Physobj1, Physobj2), at(Physobj1, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1014
%; A state constraint says that if a physical object is inside
%; another physical object and the second physical object is
%; at a location, the first physical object is also at the location:
% [physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1018
% HoldsAt(Inside(physobj1,physobj2),time) &
% HoldsAt(At(physobj2,location),time) ->
% HoldsAt(At(physobj1,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1020
axiom(holds_at(at(Physobj1, Location), Time),
   
    [ holds_at(inside(Physobj1, Physobj2), Time),
      holds_at(at(Physobj2, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1022
%; An effect axiom states that if an agent takes a physical
%; object out of another physical object,
%; the agent will be holding the first physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1026
% Initiates(TakeOutOf(agent,physobj1,physobj2),
%           Holding(agent,physobj1),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1028
axiom(initiates(takeOutOf(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1030
%; On
%; physobj1 is on physobj2.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1033
% fluent On(physobj,physobj)
 %  fluent(on(physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1034
==> mpred_prop(on(physobj,physobj),fluent).
==> meta_argtypes(on(physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1035
%; agent places physobj1 on physobj2.

% event PlaceOn(agent,physobj,physobj)
 %  event(placeOn(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1037
==> mpred_prop(placeOn(agent,physobj,physobj),event).
==> meta_argtypes(placeOn(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1037
%; agent takes physobj1 off of physobj2.

% event TakeOffOf(agent,physobj,physobj)
 %  event(takeOffOf(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1039
==> mpred_prop(takeOffOf(agent,physobj,physobj),event).
==> meta_argtypes(takeOffOf(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1040
%; A state constraint says that a physical object cannot
%; be on itself:
% [physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1043
% HoldsAt(On(physobj1,physobj2),time) ->
% physobj1!=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1044
axiom(Physobj1\=Physobj2,
    [holds_at(on(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1046
%; A state constraint says that if a physical object is
%; on another physical object, the second physical object
%; is not on the first physical object:
% [physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1050
% HoldsAt(On(physobj1,physobj2),time) ->
% !HoldsAt(On(physobj2,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1051
axiom(not(holds_at(on(Physobj2, Physobj1), Time)),
    [holds_at(on(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1053
%; An effect axiom states that if an agent places a physical
%; object on another physical object, the first
%; physical object will be on the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1057
% Initiates(PlaceOn(agent,physobj1,physobj2),
%           On(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1058
axiom(initiates(placeOn(Agent, Physobj1, Physobj2), on(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1060
%; An effect axiom states that if an agent places a physical
%; object on another physical object, the agent will
%; no longer be holding the first physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1064
% Terminates(PlaceOn(agent,physobj1,physobj2),
%            Holding(agent,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1065
axiom(terminates(placeOn(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1067
%; A precondition axiom states that
%; for an agent to place a physical object on another
%; physical object,
%; the agent must be holding the first physical object
%; and there must be a location such that
%; the agent is at the location and
%; the second physical object is at the location:
%;[agent,physobj1,physobj2,time]
%;Happens(PlaceOn(agent,physobj1,physobj2),time) ->
%;HoldsAt(Holding(agent,physobj1),time) &
%;{location}
%; HoldsAt(At(agent,location),time) &
%; HoldsAt(At(physobj2,location),time).
%; An effect axiom states that
%; if an agent takes a physical object off of another
%; physical object, the first physical object
%; will no longer be on the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1086
% Terminates(TakeOffOf(agent,physobj1,physobj2),
%            On(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1087
axiom(terminates(takeOffOf(Agent, Physobj1, Physobj2), on(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1089
%; An effect axiom states that if an agent takes a physical
%; object off of another physical object,
%; the agent will be holding the first physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1093
% Initiates(TakeOffOf(agent,physobj1,physobj2),
%           Holding(agent,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1094
axiom(initiates(takeOffOf(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1096
%; A precondition axiom states that
%; for an agent to take a physical object off of another
%; physical object,
%; the first physical object must be on the second physical object
%; and there must be a location such that
%; the agent is at the location and
%; the first physical object is at the location:
%; the second physical object is at the location:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1105
% Happens(TakeOffOf(agent,physobj1,physobj2),time) ->
% HoldsAt(On(physobj1,physobj2),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1107
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(physobj1,location),time) &
%  HoldsAt(At(physobj2,location),time).

 /*   exists([Location],
             if(happens(takeOffOf(Agent, Physobj1, Physobj2),
                        Time),
                 (holds_at(on(Physobj1, Physobj2), Time), holds_at(at(Agent, Location), Time), holds_at(at(Physobj1, Location), Time), holds_at(at(Physobj2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_219'(Fn_219_Param, On_Param, At_Param, Maptime))) :-
       happens(takeOffOf(Fn_219_Param, On_Param, At_Param),
               Maptime),
       (   not(holds_at(on(On_Param, At_Param), Maptime))
       ;   not(holds_at(at(Fn_219_Param, Location7), Maptime))
       ;   not(holds_at(at(On_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1110
axiom(not(some(Location7, '$kolem_Fn_219'(Fn_219_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(on(On_Param, At_Param), Maptime)),
      happens(takeOffOf(Fn_219_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_219'(Fn_219_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_219_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_219_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_219'(Fn_219_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(On_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_219_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_219'(Fn_219_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_219_Param, On_Param, At_Param),
              Maptime)
    ]).

 /*  not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)) :-
       (   not(holds_at(on(On_Param14, At_Param15), Maptime11))
       ;   not(holds_at(at(TakeOffOf_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(On_Param14, Location12), Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_219'(TakeOffOf_Param,
                            On_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(on(On_Param14, At_Param15), Maptime11)),
      some(Location12,
           '$kolem_Fn_219'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(TakeOffOf_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_219'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(On_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_219'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_219'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  holds_at(on(On_Param17, On_Ret), Time16) :-
       happens(takeOffOf(TakeOffOf_Param18, On_Param17, On_Ret),
               Time16),
       some(Some_Param,
            '$kolem_Fn_219'(TakeOffOf_Param18,
                            On_Param17,
                            On_Ret,
                            Time16)).
 */
axiom(holds_at(on(On_Param17, On_Ret), Time16),
   
    [ happens(takeOffOf(TakeOffOf_Param18, On_Param17, On_Ret),
              Time16),
      some(Some_Param,
           '$kolem_Fn_219'(TakeOffOf_Param18,
                           On_Param17,
                           On_Ret,
                           Time16))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(takeOffOf(At_Param23, A, TakeOffOf_Ret),
               Time22),
       some(Location21,
            '$kolem_Fn_219'(At_Param23,
                            A,
                            TakeOffOf_Ret,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(takeOffOf(At_Param23, A, TakeOffOf_Ret),
              Time22),
      some(Location21,
           '$kolem_Fn_219'(At_Param23,
                           A,
                           TakeOffOf_Ret,
                           Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(takeOffOf(TakeOffOf_Param28,
                         At_Param27,
                         TakeOffOf_Ret29),
               Time26),
       some(Location25,
            '$kolem_Fn_219'(TakeOffOf_Param28,
                            At_Param27,
                            TakeOffOf_Ret29,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(takeOffOf(TakeOffOf_Param28,
                        At_Param27,
                        TakeOffOf_Ret29),
              Time26),
      some(Location25,
           '$kolem_Fn_219'(TakeOffOf_Param28,
                           At_Param27,
                           TakeOffOf_Ret29,
                           Time26))
    ]).

 /*  holds_at(at(At_Param32, Location30), Time31) :-
       happens(takeOffOf(TakeOffOf_Param33, A, At_Param32),
               Time31),
       some(Location30,
            '$kolem_Fn_219'(TakeOffOf_Param33,
                            A,
                            At_Param32,
                            Time31)).
 */
axiom(holds_at(at(At_Param32, Location30), Time31),
   
    [ happens(takeOffOf(TakeOffOf_Param33, A, At_Param32),
              Time31),
      some(Location30,
           '$kolem_Fn_219'(TakeOffOf_Param33,
                           A,
                           At_Param32,
                           Time31))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1112
%; A releases axiom states that if an agent places a physical
%; object on another physical object,
%; the first physical object's location will be released
%; from inertia:
% [agent,physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1117
% Releases(PlaceOn(agent,physobj1,physobj2),
%          At(physobj1,location),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1119
axiom(releases(placeOn(Agent, Physobj1, Physobj2), at(Physobj1, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1121
%; A state constraint says that if a physical object is on
%; another physical object and the second physical object is
%; at a location, the first physical object is also at the location:
% [physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1125
% HoldsAt(On(physobj1,physobj2),time) &
% HoldsAt(At(physobj2,location),time) ->
% HoldsAt(At(physobj1,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1127
axiom(holds_at(at(Physobj1, Location), Time),
   
    [ holds_at(on(Physobj1, Physobj2), Time),
      holds_at(at(Physobj2, Location), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1129
% fluent Near(agent,object)
 %  fluent(near(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1130
==> mpred_prop(near(agent,object),fluent).
==> meta_argtypes(near(agent,object)).

% event WalkFromTo(agent,object,object)
 %  event(walkFromTo(agent,object,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1131
==> mpred_prop(walkFromTo(agent,object,object),event).
==> meta_argtypes(walkFromTo(agent,object,object)).

% event WalkFrom(agent,object)
 %  event(walkFrom(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1132
==> mpred_prop(walkFrom(agent,object),event).
==> meta_argtypes(walkFrom(agent,object)).

% event RunFromTo(agent,object,object)
 %  event(runFromTo(agent,object,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1133
==> mpred_prop(runFromTo(agent,object,object),event).
==> meta_argtypes(runFromTo(agent,object,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1134
% [agent,object1,object2,time]
% Initiates(WalkFromTo(agent,object1,object2),
%           Near(agent,object2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1137
axiom(initiates(walkFromTo(Agent, Object1, Object2), near(Agent, Object2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1139
% [agent,object1,object2,time]
% Terminates(WalkFromTo(agent,object1,object2),
%            Near(agent,object1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1142
axiom(terminates(walkFromTo(Agent, Object1, Object2), near(Agent, Object1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1144
% [agent,object1,object2,time]
% Happens(WalkFromTo(agent,object1,object2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1146
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object1,location),time) &
% HoldsAt(At(object2,location),time).

 /*   exists([Location],
             if(happens(walkFromTo(Agent, Object1, Object2),
                        Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Object1, Location), Time), holds_at(at(Object2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_220'(Fn_220_Param, At_Param, At_Param10, Maptime))) :-
       happens(walkFromTo(Fn_220_Param, At_Param, At_Param10),
               Maptime),
       (   not(holds_at(at(Fn_220_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param10, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1149
axiom(not(some(Location7, '$kolem_Fn_220'(Fn_220_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(Fn_220_Param, Location7), Maptime)),
      happens(walkFromTo(Fn_220_Param, At_Param, At_Param10),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_220'(Fn_220_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(walkFromTo(Fn_220_Param, At_Param, At_Param10),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_220'(Fn_220_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(At_Param10, Location7), Maptime)),
      happens(walkFromTo(Fn_220_Param, At_Param, At_Param10),
              Maptime)
    ]).

 /*  not(happens(walkFromTo(WalkFromTo_Param, At_Param14, At_Param15), Maptime11)) :-
       (   not(holds_at(at(WalkFromTo_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_220'(WalkFromTo_Param,
                            At_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(walkFromTo(WalkFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(WalkFromTo_Param, Location12),
                   Maptime11)),
      some(Location12,
           '$kolem_Fn_220'(WalkFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(walkFromTo(WalkFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_220'(WalkFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(walkFromTo(WalkFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_220'(WalkFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(walkFromTo(At_Param18, A, WalkFromTo_Ret),
               Time17),
       some(Location16,
            '$kolem_Fn_220'(At_Param18,
                            A,
                            WalkFromTo_Ret,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(walkFromTo(At_Param18, A, WalkFromTo_Ret),
              Time17),
      some(Location16,
           '$kolem_Fn_220'(At_Param18,
                           A,
                           WalkFromTo_Ret,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(walkFromTo(WalkFromTo_Param23,
                          At_Param22,
                          WalkFromTo_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_220'(WalkFromTo_Param23,
                            At_Param22,
                            WalkFromTo_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(walkFromTo(WalkFromTo_Param23,
                         At_Param22,
                         WalkFromTo_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_220'(WalkFromTo_Param23,
                           At_Param22,
                           WalkFromTo_Ret24,
                           Time21))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(walkFromTo(WalkFromTo_Param28, A, At_Param27),
               Time26),
       some(Location25,
            '$kolem_Fn_220'(WalkFromTo_Param28,
                            A,
                            At_Param27,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(walkFromTo(WalkFromTo_Param28, A, At_Param27),
              Time26),
      some(Location25,
           '$kolem_Fn_220'(WalkFromTo_Param28,
                           A,
                           At_Param27,
                           Time26))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1151
% [agent,object1,object2,time]
% Initiates(RunFromTo(agent,object1,object2),
%           Near(agent,object2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1154
axiom(initiates(runFromTo(Agent, Object1, Object2), near(Agent, Object2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1156
% [agent,object1,object2,time]
% Terminates(RunFromTo(agent,object1,object2),
%            Near(agent,object1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1159
axiom(terminates(runFromTo(Agent, Object1, Object2), near(Agent, Object1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1161
% [agent,object1,object2,time]
% Happens(RunFromTo(agent,object1,object2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1163
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object1,location),time) &
% HoldsAt(At(object2,location),time).

 /*   exists([Location],
             if(happens(runFromTo(Agent, Object1, Object2),
                        Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Object1, Location), Time), holds_at(at(Object2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_221'(Fn_221_Param, At_Param, At_Param10, Maptime))) :-
       happens(runFromTo(Fn_221_Param, At_Param, At_Param10),
               Maptime),
       (   not(holds_at(at(Fn_221_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param10, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1166
axiom(not(some(Location7, '$kolem_Fn_221'(Fn_221_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(Fn_221_Param, Location7), Maptime)),
      happens(runFromTo(Fn_221_Param, At_Param, At_Param10),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_221'(Fn_221_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(runFromTo(Fn_221_Param, At_Param, At_Param10),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_221'(Fn_221_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(At_Param10, Location7), Maptime)),
      happens(runFromTo(Fn_221_Param, At_Param, At_Param10),
              Maptime)
    ]).

 /*  not(happens(runFromTo(RunFromTo_Param, At_Param14, At_Param15), Maptime11)) :-
       (   not(holds_at(at(RunFromTo_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_221'(RunFromTo_Param,
                            At_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(runFromTo(RunFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(RunFromTo_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_221'(RunFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(runFromTo(RunFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_221'(RunFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(runFromTo(RunFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_221'(RunFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(runFromTo(At_Param18, A, RunFromTo_Ret),
               Time17),
       some(Location16,
            '$kolem_Fn_221'(At_Param18,
                            A,
                            RunFromTo_Ret,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(runFromTo(At_Param18, A, RunFromTo_Ret),
              Time17),
      some(Location16,
           '$kolem_Fn_221'(At_Param18,
                           A,
                           RunFromTo_Ret,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(runFromTo(RunFromTo_Param23,
                         At_Param22,
                         RunFromTo_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_221'(RunFromTo_Param23,
                            At_Param22,
                            RunFromTo_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(runFromTo(RunFromTo_Param23,
                        At_Param22,
                        RunFromTo_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_221'(RunFromTo_Param23,
                           At_Param22,
                           RunFromTo_Ret24,
                           Time21))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(runFromTo(RunFromTo_Param28, A, At_Param27),
               Time26),
       some(Location25,
            '$kolem_Fn_221'(RunFromTo_Param28,
                            A,
                            At_Param27,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(runFromTo(RunFromTo_Param28, A, At_Param27),
              Time26),
      some(Location25,
           '$kolem_Fn_221'(RunFromTo_Param28,
                           A,
                           At_Param27,
                           Time26))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1168
% [agent,object,time]
% Terminates(WalkFrom(agent,object),
%            Near(agent,object),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1171
axiom(terminates(walkFrom(Agent, Object), near(Agent, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1173
% [agent,object,location,door,time]
% HoldsAt(Near(agent,object),time) &
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object,location),time) &
% Side1(door)=location &
% Happens(WalkThroughDoor12(agent,door),time) ->
% Happens(WalkFrom(agent,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1179
axiom(happens(walkFrom(Agent, Object), Time),
   
    [ holds_at(near(Agent, Object), Time),
      holds_at(at(Agent, Location), Time),
      holds_at(at(Object, Location), Time),
      equals(side1(Door), Location),
      happens(walkThroughDoor12(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1181
% [agent,object,location,door,time]
% HoldsAt(Near(agent,object),time) &
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object,location),time) &
% Side2(door)=location &
% Happens(WalkThroughDoor21(agent,door),time) ->
% Happens(WalkFrom(agent,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1187
axiom(happens(walkFrom(Agent, Object), Time),
   
    [ holds_at(near(Agent, Object), Time),
      holds_at(at(Agent, Location), Time),
      holds_at(at(Object, Location), Time),
      equals(side2(Door), Location),
      happens(walkThroughDoor21(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1189
% [agent,object,room,staircase,time]
% HoldsAt(Near(agent,object),time) &
% HoldsAt(At(agent,room),time) &
% HoldsAt(At(object,room),time) &
% Side1(staircase)=room &
% Happens(WalkUpStaircase(agent,staircase),time) ->
% Happens(WalkFrom(agent,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1195
axiom(happens(walkFrom(Agent, Object), Time),
   
    [ holds_at(near(Agent, Object), Time),
      holds_at(at(Agent, Room), Time),
      holds_at(at(Object, Room), Time),
      equals(side1(Staircase), Room),
      happens(walkUpStaircase(Agent, Staircase), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1197
% [agent,object,room,staircase,time]
% HoldsAt(Near(agent,object),time) &
% HoldsAt(At(agent,room),time) &
% HoldsAt(At(object,room),time) &
% Side2(staircase)=room &
% Happens(WalkDownStaircase(agent,staircase),time) ->
% Happens(WalkFrom(agent,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1203
axiom(happens(walkFrom(Agent, Object), Time),
   
    [ holds_at(near(Agent, Object), Time),
      holds_at(at(Agent, Room), Time),
      holds_at(at(Object, Room), Time),
      equals(side2(Staircase), Room),
      happens(walkDownStaircase(Agent, Staircase), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1205
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/OMSpace.e
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
%; OMSpace: object-scale metric space
%;
%; The OMSpace representation deals with metric space at
%; the scale of objects.
%;
%; @article{Morgenstern:2001,
%;   author = "Morgenstern, Leora",
%;   year = "2001",
%;   title = "Mid-sized axiomatizations of commonsense problems: A case study in egg cracking",
%;   journal = "Studia Logica",
%;   volume = "67",
%;   pages = "333--384",
%; }
%;
%; @article{Shanahan:2003,
%;   author = "Shanahan, Murray",
%;   year = "2004",
%;   title = "An attempt to formalise a non-trivial benchmark problem in common sense reasoning",
%;   journal = "Artificial Intelligence",
%;   volume = "153",
%;   pages = "141--165",
%; }
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1247
% sort height: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1248
==> subsort(height,integer).

% sort distance: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1249
==> subsort(distance,integer).
%; Height
%; The height of object is height.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1253
% fluent Height(object,height)
 %  fluent(height(object,height)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1254
==> mpred_prop(height(object,height),fluent).
==> meta_argtypes(height(object,height)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1255
%; State constraint represent the fact that each
%; object has a unique height:
% [object,height1,height2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1258
% HoldsAt(Height(object,height1),time) &
% HoldsAt(Height(object,height2),time) ->
% height1=height2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1260
axiom(Height1=Height2,
   
    [ holds_at(height(Object, Height1), Time),
      holds_at(height(Object, Height2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1262
% [object,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1263
% {height}% HoldsAt(Height(object,height),time).

 /*  exists([Height],
          holds_at(height(Object,Height),Time)).
 */

 /*  holds_at(height(Height_Param, Some_Param), Time4) :-
       some(Some_Param, '$kolem_Fn_222'(Height_Param, Time4)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1264
axiom(holds_at(height(Height_Param, Some_Param), Time4),
    [some(Some_Param, '$kolem_Fn_222'(Height_Param, Time4))]).

 /*  not(some(Some_Param8, '$kolem_Fn_222'(Fn_222_Param, Time7))) :-
       not(holds_at(height(Fn_222_Param, Some_Param8), Time7)).
 */
axiom(not(some(Some_Param8, '$kolem_Fn_222'(Fn_222_Param, Time7))),
    [not(holds_at(height(Fn_222_Param, Some_Param8), Time7))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1266
%; falling
%; physobj1 is falling from physobj2 to physobj3.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1269
% fluent FallingFromTo(physobj,physobj,physobj)
 %  fluent(fallingFromTo(physobj,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1270
==> mpred_prop(fallingFromTo(physobj,physobj,physobj),fluent).
==> meta_argtypes(fallingFromTo(physobj,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1270
%; physobj1 starts falling from physobj2 to physobj3.

% event StartFallingFromTo(physobj,physobj,physobj)
 %  event(startFallingFromTo(physobj,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1272
==> mpred_prop(startFallingFromTo(physobj,physobj,physobj),event).
==> meta_argtypes(startFallingFromTo(physobj,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1272
%; physobj1 collides with physobj2.

% event CollideWith(physobj,physobj)
 %  event(collideWith(physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1274
==> mpred_prop(collideWith(physobj,physobj),event).
==> meta_argtypes(collideWith(physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1275
%; An effect axiom states that if a first physical object starts
%; falling from a second physical object to a third physical
%; object, the first physical object will be falling from the
%; second physical object to the third physical object:
% [physobj1,physobj2,physobj3,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1280
% Initiates(StartFallingFromTo(physobj1,physobj2,physobj3),
%           FallingFromTo(physobj1,physobj2,physobj3),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1282
axiom(initiates(startFallingFromTo(Physobj1, Physobj2, Physobj3), fallingFromTo(Physobj1, Physobj2, Physobj3), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1284
%; A precondition axiom states that for
%; a first physical object to start
%; falling from a second physical object to a third physical
%; object,
%; the height of the first physical object and the
%; second physical object must be the same.
% [physobj1,physobj2,physobj3,height1,height2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1291
% Happens(StartFallingFromTo(physobj1,physobj2,physobj3),time) &
% HoldsAt(Height(physobj1,height1),time) &
% HoldsAt(Height(physobj2,height2),time) ->
% height1=height2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1294
axiom(Height1=Height2,
   
    [ happens(startFallingFromTo(Physobj1, Physobj2, Physobj3),
              Time),
      holds_at(height(Physobj1, Height1), Time),
      holds_at(height(Physobj2, Height2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1296
%; A state constraint says that a physical object
%; cannot fall from itself, cannot fall to itself,
%; and cannot fall from and to the same physical object:
% [physobj1,physobj2,physobj3,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1300
% HoldsAt(FallingFromTo(physobj1,physobj2,physobj3),time) ->
% physobj1!=physobj2 &
% physobj1!=physobj3 &
% physobj2!=physobj3.

 /*   if(holds_at(fallingFromTo(Physobj1, Physobj2, Physobj3),
                  Time),
          (Physobj1\=Physobj2, Physobj1\=Physobj3, Physobj2\=Physobj3)).
 */

 /*  not(holds_at(fallingFromTo(FallingFromTo_Param, Dif_Param, FallingFromTo_Ret), Time4)) :-
       (   not({dif(FallingFromTo_Param, Dif_Param)})
       ;   not({dif(FallingFromTo_Param, FallingFromTo_Ret)})
       ;   not({dif(Dif_Param, FallingFromTo_Ret)})
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1303
axiom(not(holds_at(fallingFromTo(FallingFromTo_Param, Dif_Param, FallingFromTo_Ret), Time4)),
    [not({dif(FallingFromTo_Param, Dif_Param)})]).
axiom(not(holds_at(fallingFromTo(FallingFromTo_Param, Dif_Param, FallingFromTo_Ret), Time4)),
    [not({dif(FallingFromTo_Param, FallingFromTo_Ret)})]).
axiom(not(holds_at(fallingFromTo(FallingFromTo_Param, Dif_Param, FallingFromTo_Ret), Time4)),
    [not({dif(Dif_Param, FallingFromTo_Ret)})]).

 /*  { dif(Dif_Param9, Dif_Ret)
   } :-
       holds_at(fallingFromTo(Dif_Param9,
                              Dif_Ret,
                              FallingFromTo_Ret11),
                Time8).
 */
axiom({ dif(Dif_Param9, Dif_Ret)
},
   
    [ holds_at(fallingFromTo(Dif_Param9,
                             Dif_Ret,
                             FallingFromTo_Ret11),
               Time8)
    ]).

 /*  { dif(Dif_Param13, Dif_Ret14)
   } :-
       holds_at(fallingFromTo(Dif_Param13, _, Dif_Ret14),
                Time12).
 */
axiom({ dif(Dif_Param13, Dif_Ret14)
},
   
    [ holds_at(fallingFromTo(Dif_Param13, _, Dif_Ret14),
               Time12)
    ]).

 /*  { dif(Dif_Param16, Dif_Ret18)
   } :-
       holds_at(fallingFromTo(FallingFromTo_Param17,
                              Dif_Param16,
                              Dif_Ret18),
                Time15).
 */
axiom({ dif(Dif_Param16, Dif_Ret18)
},
   
    [ holds_at(fallingFromTo(FallingFromTo_Param17,
                             Dif_Param16,
                             Dif_Ret18),
               Time15)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1305
%; A state constraint says that the sky cannot fall:
% [sky,physobj1,physobj2,time]
% !HoldsAt(FallingFromTo(sky,physobj1,physobj2),time).

 /*  not(holds_at(fallingFromTo(Sky,Physobj1,Physobj2),
   	     Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1307
axiom(not(holds_at(fallingFromTo(FallingFromTo_Param, _, FallingFromTo_Ret), Time4)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1309
%; A releases axiom states that if
%; if a first physical object starts
%; falling from a second physical object to a third physical
%; object, the height of the first physical object
%; will be released from inertia:
% [physobj1,physobj2,physobj3,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1315
% Releases(StartFallingFromTo(physobj1,physobj2,physobj3),
%          Height(physobj1,height),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1317
axiom(releases(startFallingFromTo(Physobj1, Physobj2, Physobj3), height(Physobj1, Height), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1319
%; A trajectory axiom states that
%; if a first physical object starts falling
%; from a second physical object
%; to a third physical object
%; at a time and
%; the first physical object has a height at the time,
%; then the first physical object will have a height
%; equal to the height minus an offset
%; at a time equal to the time plus the offset:
% [physobj1,physobj2,physobj3,height1,height2,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1329
% HoldsAt(Height(physobj1,height1),time) &
% height2=height1-offset ->
% Trajectory(FallingFromTo(physobj1,physobj2,physobj3),time,
%            Height(physobj1,height2),offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1332
axiom(trajectory(fallingFromTo(Physobj1, Physobj2, Physobj3), Time, height(Physobj1, Height2), Offset),
   
    [ holds_at(height(Physobj1, Height1), Time),
      equals(Height2, Height1-Offset)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1334
%; A trigger axiom states that
%; if a first physical object is falling
%; from a second physical object
%; to a third physical object and
%; the height of the first physical object
%; is the same as the height of the third physical object,
%; the first physical object collides with the
%; third physical object:
% [physobj1,physobj2,physobj3,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1343
% HoldsAt(FallingFromTo(physobj1,physobj2,physobj3),time) &
% HoldsAt(Height(physobj1,height),time) &
% HoldsAt(Height(physobj3,height),time) ->
% Happens(CollideWith(physobj1,physobj3),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1346
axiom(happens(collideWith(Physobj1, Physobj3), Time),
   
    [ holds_at(fallingFromTo(Physobj1, Physobj2, Physobj3),
               Time),
      holds_at(height(Physobj1, Height), Time),
      holds_at(height(Physobj3, Height), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1348
%; An effect axiom states that
%; if a first physical object is falling
%; from a second physical object
%; to a third physical object and
%; the first physical object collides with
%; the third physical object,
%; the first physical object will be on the third physical object:
% [physobj1,physobj2,physobj3,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1356
% HoldsAt(FallingFromTo(physobj1,physobj2,physobj3),time) ->
% Initiates(CollideWith(physobj1,physobj3),
%           On(physobj1,physobj3),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1359
axiom(initiates(collideWith(Physobj1, Physobj3), on(Physobj1, Physobj3), Time),
   
    [ holds_at(fallingFromTo(Physobj1, Physobj2, Physobj3),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1361
%; An effect axiom states that
%; if a physical object collides with another
%; physical object,
%; the height of the first physical object will
%; be the height of the second physical object:
% [physobj1,physobj2,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1367
% HoldsAt(Height(physobj2,height),time) ->
% Initiates(CollideWith(physobj1,physobj2),
%           Height(physobj1,height),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1370
axiom(initiates(collideWith(Physobj1, Physobj2), height(Physobj1, Height), Time),
    [holds_at(height(Physobj2, Height), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1372
%;[physobj1,physobj2,height1,height2,time]
%;HoldsAt(Height(physobj2,height1),time) &
%;height1 != height2 ->
%;Terminates(CollideWith(physobj1,physobj2),
%;           Height(physobj1,height2),
%;           time).
%; An effect axiom states that
%; if a first physical object is falling
%; from a second physical object
%; to a third physical object and
%; the first physical object collides with
%; the third physical object,
%; the first physical object will no longer be
%; falling from the second physical object to the
%; third physical object:
% [physobj1,physobj2,physobj3,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1389
% HoldsAt(FallingFromTo(physobj1,physobj2,physobj3),time) ->
% Terminates(CollideWith(physobj1,physobj3),
%            FallingFromTo(physobj1,physobj2,physobj3),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1392
axiom(terminates(collideWith(Physobj1, Physobj3), fallingFromTo(Physobj1, Physobj2, Physobj3), Time),
   
    [ holds_at(fallingFromTo(Physobj1, Physobj2, Physobj3),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1394
%; flying
%; agent is flying from physobj1 to physobj2.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1397
% fluent FlyingFromTo(agent,physobj,physobj)
 %  fluent(flyingFromTo(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1398
==> mpred_prop(flyingFromTo(agent,physobj,physobj),fluent).
==> meta_argtypes(flyingFromTo(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1398
%; agent starts flying from physobj1 to physobj2.

% event StartFlyingFromTo(agent,physobj,physobj)
 %  event(startFlyingFromTo(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1400
==> mpred_prop(startFlyingFromTo(agent,physobj,physobj),event).
==> meta_argtypes(startFlyingFromTo(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1400
%; agent reaches physobj.

% event Reach(agent,physobj)
 %  event(reach(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1402
==> mpred_prop(reach(agent,physobj),event).
==> meta_argtypes(reach(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1403
%; An effect axiom states that if an agent starts
%; flying from a physical object to another physical object,
%; the agent will be flying from the first physical object
%; to the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1408
% Initiates(StartFlyingFromTo(agent,physobj1,physobj2),
%           FlyingFromTo(agent,physobj1,physobj2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1410
axiom(initiates(startFlyingFromTo(Agent, Physobj1, Physobj2), flyingFromTo(Agent, Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1412
%; A precondition axiom states that for
%; an agent to start flying from a physical object to
%; another physical object,
%; the height of the agent and
%; the first physical object must be the same:
% [agent,physobj1,physobj2,height1,height2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1418
% Happens(StartFlyingFromTo(agent,physobj1,physobj2),time) &
% HoldsAt(Height(agent,height1),time) &
% HoldsAt(Height(physobj1,height2),time) ->
% height1=height2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1421
axiom(Height1=Height2,
   
    [ happens(startFlyingFromTo(Agent, Physobj1, Physobj2),
              Time),
      holds_at(height(Agent, Height1), Time),
      holds_at(height(Physobj1, Height2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1423
%; A state constraint says that an agent
%; cannot fly from and to the same physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1426
% HoldsAt(FlyingFromTo(agent,physobj1,physobj2),time) ->
% physobj1!=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1427
axiom(Physobj1\=Physobj2,
   
    [ holds_at(flyingFromTo(Agent, Physobj1, Physobj2),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1429
%; A releases axiom states that if an agent
%; starts flying from a physical object to another
%; physical object, the height of the agent will
%; be released from inertia:
% [agent,physobj1,physobj2,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1434
% Releases(StartFlyingFromTo(agent,physobj1,physobj2),
%          Height(agent,height),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1436
axiom(releases(startFlyingFromTo(Agent, Physobj1, Physobj2), height(Agent, Height), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1438
%; A trajectory axiom states that
%; if an agent starts flying from
%; from a physical object
%; to another physical object
%; at a time and
%; the agent has a height at the time,
%; then the agent will have a height
%; equal to the height plus an offset
%; at a time equal to the time plus the offset:
% [agent,physobj1,physobj2,height1,height2,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1448
% HoldsAt(Height(agent,height1),time) &
% height2=height1+offset ->
% Trajectory(FlyingFromTo(agent,physobj1,physobj2),time,
%            Height(agent,height2),offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1451
axiom(trajectory(flyingFromTo(Agent, Physobj1, Physobj2), Time, height(Agent, Height2), Offset),
   
    [ holds_at(height(Agent, Height1), Time),
      equals(Height2, Height1+Offset)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1453
%; A trigger axiom states that
%; if an agent is flying
%; from a physical object
%; to another physical object and
%; the height of the agent
%; is the same as the height of the second physical object,
%; the agent reaches the second physical object:
% [agent,physobj1,physobj2,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1461
% HoldsAt(FlyingFromTo(agent,physobj1,physobj2),time) &
% HoldsAt(Height(agent,height),time) &
% HoldsAt(Height(physobj2,height),time) ->
% Happens(Reach(agent,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1464
axiom(happens(reach(Agent, Physobj2), Time),
   
    [ holds_at(flyingFromTo(Agent, Physobj1, Physobj2),
               Time),
      holds_at(height(Agent, Height), Time),
      holds_at(height(Physobj2, Height), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1466
%; An effect axiom states that
%; if an agent reaches a physical object,
%; the height of the agent will be the
%; height of the physical object:
% [agent,physobj,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1471
% HoldsAt(Height(physobj,height),time) ->
% Initiates(Reach(agent,physobj),Height(agent,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1472
axiom(initiates(reach(Agent, Physobj), height(Agent, Height), Time),
    [holds_at(height(Physobj, Height), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1474
%;[agent,physobj,height1,height2,time]
%;HoldsAt(Height(physobj,height1),time) &
%;height1!=height2 ->
%;Terminates(Reach(agent,physobj),Height(agent,height2),time).
%; An effect axiom states that
%; if an agent is flying
%; from a physical object
%; to another physical object and
%; the agent reaches the second physical object,
%; the agent will no longer be
%; flying from the first physical object
%; to the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1488
% HoldsAt(FlyingFromTo(agent,physobj1,physobj2),time) ->
% Terminates(Reach(agent,physobj2),
%            FlyingFromTo(agent,physobj1,physobj2),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1491
axiom(terminates(reach(Agent, Physobj2), flyingFromTo(Agent, Physobj1, Physobj2), Time),
   
    [ holds_at(flyingFromTo(Agent, Physobj1, Physobj2),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1493
%; A releases axiom states that
%; if an agent holds a physical object,
%; the height of the physical object is released from inertia:
% [agent,physobj,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1497
% Releases(Hold(agent,physobj),Height(physobj,height),time).
axiom(releases(hold(Agent, Physobj), height(Physobj, Height), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1499
%;[agent,physobj,height1,height2,time]
%;(!{object} PartOf(physobj,object)) &
%;HoldsAt(Height(physobj,height1),time) &
%;height1 != height2 ->
%;Terminates(LetGoOf(agent,physobj),Height(physobj,height2),time).
% [agent,physobj,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1506
% (!{object} PartOf(physobj,object)) &
% HoldsAt(Height(physobj,height),time) ->
% Initiates(LetGoOf(agent,physobj),Height(physobj,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1508
axiom(initiates(letGoOf(Agent, Physobj), height(Physobj, Height), Time),
   
    [ not(partOf(Physobj, Object)),
      holds_at(height(Physobj, Height), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1510
%; A state constraint says that
%; if an agent is holding a physical object and
%; the height of the agent is height,
%; the height of the physical object is height:
% [agent,physobj,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1515
% HoldsAt(Holding(agent,physobj),time) &
% HoldsAt(Height(agent,height),time) ->
% HoldsAt(Height(physobj,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1517
axiom(holds_at(height(Physobj, Height), Time),
   
    [ holds_at(holding(Agent, Physobj), Time),
      holds_at(height(Agent, Height), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1519
%; A state constraint says that if a physical object
%; is part of an object,
%; the height of the physical object
%; is the same as the height of the object:
% [physobj,object,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1524
% PartOf(physobj,object) &
% HoldsAt(Height(object,height),time) ->
% HoldsAt(Height(physobj,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1526
axiom(holds_at(height(Physobj, Height), Time),
   
    [ partOf(Physobj, Object),
      holds_at(height(Object, Height), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1528
%;event Catch(agent,physobj)
%;event HitFromTo(agent,physobj,object,object)
%;fluent Distance(physobj,physobj,distance)
%;fluent FlyingAcrossFromTo(physobj,object,object)
%;[agent,physobj1,physobj2,physobj3,time]
%;Initiates(HitFromTo(agent,physobj1,physobj2,physobj3),
%;          FlyingAcrossFromTo(physobj1,physobj2,physobj3),
%;          time).
%;[agent,physobj1,physobj2,physobj3,distance,time]
%;Releases(HitFromTo(agent,physobj1,physobj2,physobj3),
%;         Distance(physobj1,physobj2,distance),
%;         time).
%;[agent,physobj1,physobj2,physobj3,distance,time]
%;Releases(HitFromTo(agent,physobj1,physobj2,physobj3),
%;         Distance(physobj1,physobj3,distance),
%;         time).
%;[physobj1,physobj2,physobj3,offset,time]
%;Trajectory(FlyingAcrossFromTo(physobj1,physobj2,physobj3),time,
%;           Distance(physobj1,physobj2,offset),offset).
%;[physobj1,physobj2,physobj3,distance1,distance2,offset,time]
%;HoldsAt(Distance(physobj2,physobj3,distance1),time) &
%;distance2 = distance1 - time ->
%;Trajectory(FlyingAcrossFromTo(physobj1,physobj2,physobj3),time,
%;           Distance(physobj1,physobj3,distance2),offset).
%;[agent,physobj1,physobj2,physobj3,time]
%;HoldsAt(FlyingAcrossFromTo(physobj1,physobj2,physobj3),time) ->
%;Initiates(Catch(agent,physobj1),
%;          Holding(agent,physobj1),
%;          time).
%;[agent,physobj1,physobj2,physobj3,time]
%;HoldsAt(FlyingAcrossFromTo(physobj1,physobj2,physobj3),time) ->
%;Terminates(Catch(agent,physobj1),
%;           FlyingAcrossFromTo(physobj1,physobj2,physobj3),
%;           time).
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/GSpace.e
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
%; GSpace: grid space
%;
%; @book{Mueller:1998,
%;   author = "Erik T. Mueller",
%;   year = "1998",
%;   title = "Natural Language Processing with \uppercase{T}hought\uppercase{T}reasure",
%;   address = "New York",
%;   publisher = "Signiform",
%; }
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1599
% sort coord: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1600
==> subsort(coord,integer).

% sort grid
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1601
==> sort(grid).
%; object is at (coord1, coord2) in grid.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1603
% fluent GridAt(grid,object,coord,coord)
 %  fluent(gridAt(grid,object,coord,coord)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1604
==> mpred_prop(gridAt(grid,object,coord,coord),fluent).
==> meta_argtypes(gridAt(grid,object,coord,coord)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1605
%; agent walks from (coord1, coord2)
%; to (coord3, coord4) in grid.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1607
% event GridWalk(grid,agent,coord,coord,coord,coord)
 %  event(gridWalk(grid,agent,coord,coord,coord,coord)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1608
==> mpred_prop(gridWalk(grid,agent,coord,coord,coord,coord),event).
==> meta_argtypes(gridWalk(grid,agent,coord,coord,coord,coord)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1609
%; A state constraint says that for a given grid an
%; object is at one cell in that grid at a time:
% [grid,object,coord1,coord2,coord3,coord4,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1612
% HoldsAt(GridAt(grid,object,coord1,coord2),time) &
% HoldsAt(GridAt(grid,object,coord3,coord4),time) ->
% coord1=coord3 & coord2=coord4.

 /*   if((holds_at(gridAt(Grid, Object, Coord1, Coord2), Time), holds_at(gridAt(Grid, Object, Coord3, Coord4), Time)),
          (Coord1=Coord3, Coord2=Coord4)).
 */

 /*  not(holds_at(gridAt(GridAt_Param, A, Equals_Param, Equals_Param10), Time7)) :-
       holds_at(gridAt(GridAt_Param,
                       A,
                       Equals_Ret,
                       GridAt_Ret),
                Time7),
       (   not(equals(Equals_Param, Equals_Ret))
       ;   not(equals(Equals_Param10, GridAt_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1614
axiom(not(holds_at(gridAt(GridAt_Param, A, Equals_Param, Equals_Param10), Time7)),
   
    [ not(equals(Equals_Param, Equals_Ret)),
      holds_at(gridAt(GridAt_Param,
                      A,
                      Equals_Ret,
                      GridAt_Ret),
               Time7)
    ]).
axiom(not(holds_at(gridAt(GridAt_Param, A, Equals_Param, Equals_Param10), Time7)),
   
    [ not(equals(Equals_Param10, GridAt_Ret)),
      holds_at(gridAt(GridAt_Param,
                      A,
                      Equals_Ret,
                      GridAt_Ret),
               Time7)
    ]).

 /*  not(holds_at(gridAt(GridAt_Param14, A, Equals_Ret18, GridAt_Ret17), Time13)) :-
       holds_at(gridAt(GridAt_Param14,
                       A,
                       Equals_Param15,
                       Equals_Param16),
                Time13),
       (   not(equals(Equals_Param15, Equals_Ret18))
       ;   not(equals(Equals_Param16, GridAt_Ret17))
       ).
 */
axiom(not(holds_at(gridAt(GridAt_Param14, A, Equals_Ret18, GridAt_Ret17), Time13)),
   
    [ not(equals(Equals_Param15, Equals_Ret18)),
      holds_at(gridAt(GridAt_Param14,
                      A,
                      Equals_Param15,
                      Equals_Param16),
               Time13)
    ]).
axiom(not(holds_at(gridAt(GridAt_Param14, A, Equals_Ret18, GridAt_Ret17), Time13)),
   
    [ not(equals(Equals_Param16, GridAt_Ret17)),
      holds_at(gridAt(GridAt_Param14,
                      A,
                      Equals_Param15,
                      Equals_Param16),
               Time13)
    ]).

 /*  equals(Equals_Param20, Equals_Ret22) :-
       holds_at(gridAt(GridAt_Param21,
                       A,
                       Equals_Param20,
                       GridAt_Ret23),
                Time19),
       holds_at(gridAt(GridAt_Param21,
                       A,
                       Equals_Ret22,
                       GridAt_Ret24),
                Time19).
 */
axiom(equals(Equals_Param20, Equals_Ret22),
   
    [ holds_at(gridAt(GridAt_Param21,
                      A,
                      Equals_Param20,
                      GridAt_Ret23),
               Time19),
      holds_at(gridAt(GridAt_Param21,
                      A,
                      Equals_Ret22,
                      GridAt_Ret24),
               Time19)
    ]).

 /*  equals(Equals_Param26, Equals_Ret28) :-
       holds_at(gridAt(GridAt_Param27, A, _, Equals_Param26),
                Time25),
       holds_at(gridAt(GridAt_Param27, A, _, Equals_Ret28),
                Time25).
 */
axiom(equals(Equals_Param26, Equals_Ret28),
   
    [ holds_at(gridAt(GridAt_Param27,
                      A,
                      _,
                      Equals_Param26),
               Time25),
      holds_at(gridAt(GridAt_Param27, A, _, Equals_Ret28),
               Time25)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1616
%; An effect axiom states that
%; if an agent walks from one cell in a grid to another cell,
%; the agent will be at second cell:
% [grid,agent,coord1,coord2,coord3,coord4,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1620
% Initiates(GridWalk(grid,agent,coord1,coord2,coord3,coord4),
%           GridAt(grid,agent,coord3,coord4),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1622
axiom(initiates(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), gridAt(Grid, Agent, Coord3, Coord4), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1624
%; An effect axiom states that
%; if an agent walks from one cell in a grid to another cell,
%; the agent will no longer be at the first cell:
% [grid,agent,coord1,coord2,coord3,coord4,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1628
% Terminates(GridWalk(grid,agent,coord1,coord2,coord3,coord4),
%            GridAt(grid,agent,coord1,coord2),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1630
axiom(terminates(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), gridAt(Grid, Agent, Coord1, Coord2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1632
%; A precondition axiom states that for an agent to walk
%; from one cell in a grid to another cell, the agent
%; must be at the first cell, the second cell must not
%; be occupied, and the first cell must be adjacent to
%; the second cell:
% [grid,agent,coord1,coord2,coord3,coord4,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1638
% Happens(GridWalk(grid,agent,coord1,coord2,coord3,coord4),time) ->
% HoldsAt(GridAt(grid,agent,coord1,coord2),time) &
% (!{object} HoldsAt(GridAt(grid,object,coord3,coord4),time)) &
% (coord1=coord3 |
%  coord1=coord3+1 |
%  coord1=coord3-1) &
% (coord2=coord4 |
%  coord2=coord4+1 |
%  coord2=coord4-1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1646
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4),
      equals(Coord1, Coord3),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4+1),
      equals(Coord1, Coord3),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4-1),
      equals(Coord1, Coord3),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4),
      equals(Coord1, Coord3+1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4+1),
      equals(Coord1, Coord3+1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4-1),
      equals(Coord1, Coord3+1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4),
      equals(Coord1, Coord3-1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4+1),
      equals(Coord1, Coord3-1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4-1),
      equals(Coord1, Coord3-1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1648
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/PolySpace.e
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
%; @phdthesis{Cassimatis:2002,
%;   author = "Nicholas L. Cassimatis",
%;   year = "2002",
%;   title = "Polyscheme: A Cognitive Architecture for Integrating Multiple Representation and Inference Schemes",
%;   address = "Cambridge, MA",
%;   school = "Program in Media Arts and Sciences, School of Architecture and Planning, Massachusetts Institute of Technology",
%; }
%;
%; sorts

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1676
% sort object
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1677
==> sort(object).

% sort xcoord: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1678
==> subsort(xcoord,integer).

% sort ycoord: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1679
==> subsort(ycoord,integer).

% sort grid
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1680
==> sort(grid).

% sort shape
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1681
==> sort(shape).

% sort color
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1682
==> sort(color).
%; constants

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1684
% shape Round,Square
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1685
==> t(shape,round).
==> t(shape,square).

% color Red,Green
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1686
==> t(color,red).
==> t(color,green).
%; predicates, fluents, and events

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1688
% predicate Equal(object,object)
 %  predicate(equal(object,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1689
==> mpred_prop(equal(object,object),predicate).
==> meta_argtypes(equal(object,object)).

% predicate Shape(object,shape)
 %  predicate(shape(object,shape)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1690
==> mpred_prop(shape(object,shape),predicate).
==> meta_argtypes(shape(object,shape)).

% predicate Color(object,color)
 %  predicate(color(object,color)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1691
==> mpred_prop(color(object,color),predicate).
==> meta_argtypes(color(object,color)).

% fluent Location(grid,object,xcoord,ycoord)
 %  fluent(location(grid,object,xcoord,ycoord)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1692
==> mpred_prop(location(grid,object,xcoord,ycoord),fluent).
==> meta_argtypes(location(grid,object,xcoord,ycoord)).

% event Move(grid,object,xcoord,ycoord,xcoord,ycoord)
 %  event(move(grid,object,xcoord,ycoord,xcoord,ycoord)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1693
==> mpred_prop(move(grid,object,xcoord,ycoord,xcoord,ycoord),event).
==> meta_argtypes(move(grid,object,xcoord,ycoord,xcoord,ycoord)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1694
%; axioms
% [object1,object2]
 % Equal(object1,object2) -> Equal(object2,object1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1696
axiom(equal(Object2, Object1),
    [equal(Object1, Object2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1698
%; objects have unique shape
% [object,shape1,shape2]
% Shape(object,shape1) & Shape(object,shape2) ->
% shape1=shape2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1701
axiom(Shape1=Shape2,
    [shape(Object, Shape1), shape(Object, Shape2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1703
%; objects have unique color
% [object,color1,color2]
% Color(object,color1) & Color(object,color2) ->
% color1=color2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1706
axiom(Color1=Color2,
    [color(Object, Color1), color(Object, Color2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1708
%; if objects are the same, they have the same shape
% [object1,object2]
% Equal(object1,object2) ->
% ({shape} Shape(object1,shape) & Shape(object2,shape)).

 /*   if(equal(Object1, Object2),
         exists([Shape],
                 (shape(Object1, Shape), shape(Object2, Shape)))).
 */

 /*  not(equal(Equal_Param, Shape_Param)) :-
       (   not(shape(Equal_Param, Shape_Ret))
       ;   not(shape(Shape_Param, Shape_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1711
axiom(not(equal(Equal_Param, Shape_Param)),
    [not(shape(Equal_Param, Shape_Ret))]).
axiom(not(equal(Equal_Param, Shape_Param)),
    [not(shape(Shape_Param, Shape_Ret))]).

 /*  shape(Shape_Param6, Shape_Ret7) :-
       equal(Shape_Param6, Equal_Ret).
 */
axiom(shape(Shape_Param6, Shape_Ret7),
    [equal(Shape_Param6, Equal_Ret)]).

 /*  shape(Shape_Param9, Shape_Ret11) :-
       equal(Equal_Param10, Shape_Param9).
 */
axiom(shape(Shape_Param9, Shape_Ret11),
    [equal(Equal_Param10, Shape_Param9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1713
%; if objects are the same, they have the same color
% [object1,object2]
% Equal(object1,object2) ->
% ({color} Color(object1,color) & Color(object2,color)).

 /*   if(equal(Object1, Object2),
         exists([Color],
                 (color(Object1, Color), color(Object2, Color)))).
 */

 /*  not(equal(Equal_Param, Color_Param)) :-
       (   not(color(Equal_Param, Color_Ret))
       ;   not(color(Color_Param, Color_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1716
axiom(not(equal(Equal_Param, Color_Param)),
    [not(color(Equal_Param, Color_Ret))]).
axiom(not(equal(Equal_Param, Color_Param)),
    [not(color(Color_Param, Color_Ret))]).

 /*  color(Color_Param6, Color_Ret7) :-
       equal(Color_Param6, Equal_Ret).
 */
axiom(color(Color_Param6, Color_Ret7),
    [equal(Color_Param6, Equal_Ret)]).

 /*  color(Color_Param9, Color_Ret11) :-
       equal(Equal_Param10, Color_Param9).
 */
axiom(color(Color_Param9, Color_Ret11),
    [equal(Equal_Param10, Color_Param9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1718
%; if objects are the same, they have the same location
% [grid,object1,object2,xcoord1,ycoord1,xcoord2,ycoord2,time]
% Equal(object1,object2) ->
% (HoldsAt(Location(grid,object1,xcoord1,ycoord1),time) &
%  HoldsAt(Location(grid,object2,xcoord2,ycoord2),time) ->
%  xcoord1=xcoord2 & ycoord1=ycoord2).

 /*   if(equal(Object1, Object2),
         if((holds_at(location(Grid, Object1, Xcoord1, Ycoord1), Time), holds_at(location(Grid, Object2, Xcoord2, Ycoord2), Time)),
             (Xcoord1=Xcoord2, Ycoord1=Ycoord2))).
 */

 /*  not(equal(Equal_Param, Equal_Ret)) :-
       ( holds_at(location(Location_Param,
                           Equal_Param,
                           Equals_Param,
                           Equals_Param12),
                  Time8),
         holds_at(location(Location_Param,
                           Equal_Ret,
                           Equals_Ret,
                           Location_Ret),
                  Time8)
       ),
       (   not(equals(Equals_Param, Equals_Ret))
       ;   not(equals(Equals_Param12, Location_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1723
axiom(not(equal(Equal_Param, Equal_Ret)),
   
    [ not(equals(Equals_Param, Equals_Ret)),
      holds_at(location(Location_Param,
                        Equal_Param,
                        Equals_Param,
                        Equals_Param12),
               Time8),
      holds_at(location(Location_Param,
                        Equal_Ret,
                        Equals_Ret,
                        Location_Ret),
               Time8)
    ]).
axiom(not(equal(Equal_Param, Equal_Ret)),
   
    [ not(equals(Equals_Param12, Location_Ret)),
      holds_at(location(Location_Param,
                        Equal_Param,
                        Equals_Param,
                        Equals_Param12),
               Time8),
      holds_at(location(Location_Param,
                        Equal_Ret,
                        Equals_Ret,
                        Location_Ret),
               Time8)
    ]).

 /*  not(holds_at(location(Location_Param17, Equal_Param20, Equals_Param18, Equals_Param19), Time16)) :-
       holds_at(location(Location_Param17,
                         Equal_Ret23,
                         Equals_Ret22,
                         Location_Ret21),
                Time16),
       (   not(equals(Equals_Param18, Equals_Ret22))
       ;   not(equals(Equals_Param19, Location_Ret21))
       ),
       equal(Equal_Param20, Equal_Ret23).
 */
axiom(not(holds_at(location(Location_Param17, Equal_Param20, Equals_Param18, Equals_Param19), Time16)),
   
    [ not(equals(Equals_Param18, Equals_Ret22)),
      holds_at(location(Location_Param17,
                        Equal_Ret23,
                        Equals_Ret22,
                        Location_Ret21),
               Time16),
      equal(Equal_Param20, Equal_Ret23)
    ]).
axiom(not(holds_at(location(Location_Param17, Equal_Param20, Equals_Param18, Equals_Param19), Time16)),
   
    [ not(equals(Equals_Param19, Location_Ret21)),
      holds_at(location(Location_Param17,
                        Equal_Ret23,
                        Equals_Ret22,
                        Location_Ret21),
               Time16),
      equal(Equal_Param20, Equal_Ret23)
    ]).

 /*  not(holds_at(location(Location_Param25, Equal_Ret31, Equals_Ret30, Location_Ret29), Time24)) :-
       holds_at(location(Location_Param25,
                         Equal_Param28,
                         Equals_Param26,
                         Equals_Param27),
                Time24),
       (   not(equals(Equals_Param26, Equals_Ret30))
       ;   not(equals(Equals_Param27, Location_Ret29))
       ),
       equal(Equal_Param28, Equal_Ret31).
 */
axiom(not(holds_at(location(Location_Param25, Equal_Ret31, Equals_Ret30, Location_Ret29), Time24)),
   
    [ not(equals(Equals_Param26, Equals_Ret30)),
      holds_at(location(Location_Param25,
                        Equal_Param28,
                        Equals_Param26,
                        Equals_Param27),
               Time24),
      equal(Equal_Param28, Equal_Ret31)
    ]).
axiom(not(holds_at(location(Location_Param25, Equal_Ret31, Equals_Ret30, Location_Ret29), Time24)),
   
    [ not(equals(Equals_Param27, Location_Ret29)),
      holds_at(location(Location_Param25,
                        Equal_Param28,
                        Equals_Param26,
                        Equals_Param27),
               Time24),
      equal(Equal_Param28, Equal_Ret31)
    ]).

 /*  equals(Equals_Param33, Equals_Ret36) :-
       ( holds_at(location(Location_Param34,
                           Equal_Param35,
                           Equals_Param33,
                           Location_Ret37),
                  Time32),
         holds_at(location(Location_Param34,
                           Equal_Ret39,
                           Equals_Ret36,
                           Location_Ret38),
                  Time32)
       ),
       equal(Equal_Param35, Equal_Ret39).
 */
axiom(equals(Equals_Param33, Equals_Ret36),
   
    [ holds_at(location(Location_Param34,
                        Equal_Param35,
                        Equals_Param33,
                        Location_Ret37),
               Time32),
      holds_at(location(Location_Param34,
                        Equal_Ret39,
                        Equals_Ret36,
                        Location_Ret38),
               Time32),
      equal(Equal_Param35, Equal_Ret39)
    ]).

 /*  equals(Equals_Param41, Equals_Ret44) :-
       ( holds_at(location(Location_Param42,
                           Equal_Param43,
                           _,
                           Equals_Param41),
                  Time40),
         holds_at(location(Location_Param42,
                           Equal_Ret45,
                           _,
                           Equals_Ret44),
                  Time40)
       ),
       equal(Equal_Param43, Equal_Ret45).
 */
axiom(equals(Equals_Param41, Equals_Ret44),
   
    [ holds_at(location(Location_Param42,
                        Equal_Param43,
                        _,
                        Equals_Param41),
               Time40),
      holds_at(location(Location_Param42,
                        Equal_Ret45,
                        _,
                        Equals_Ret44),
               Time40),
      equal(Equal_Param43, Equal_Ret45)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1725
%; object in one location at a time
% [grid,object,xcoord1,ycoord1,xcoord2,ycoord2,time]
% HoldsAt(Location(grid,object,xcoord1,ycoord1),time) &
% HoldsAt(Location(grid,object,xcoord2,ycoord2),time) ->
% xcoord1=xcoord2 & ycoord1=ycoord2.

 /*   if((holds_at(location(Grid, Object, Xcoord1, Ycoord1), Time), holds_at(location(Grid, Object, Xcoord2, Ycoord2), Time)),
          (Xcoord1=Xcoord2, Ycoord1=Ycoord2)).
 */

 /*  not(holds_at(location(Location_Param, A, Equals_Param, Equals_Param10), Time7)) :-
       holds_at(location(Location_Param,
                         A,
                         Equals_Ret,
                         Location_Ret),
                Time7),
       (   not(equals(Equals_Param, Equals_Ret))
       ;   not(equals(Equals_Param10, Location_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1729
axiom(not(holds_at(location(Location_Param, A, Equals_Param, Equals_Param10), Time7)),
   
    [ not(equals(Equals_Param, Equals_Ret)),
      holds_at(location(Location_Param,
                        A,
                        Equals_Ret,
                        Location_Ret),
               Time7)
    ]).
axiom(not(holds_at(location(Location_Param, A, Equals_Param, Equals_Param10), Time7)),
   
    [ not(equals(Equals_Param10, Location_Ret)),
      holds_at(location(Location_Param,
                        A,
                        Equals_Ret,
                        Location_Ret),
               Time7)
    ]).

 /*  not(holds_at(location(Location_Param14, A, Equals_Ret18, Location_Ret17), Time13)) :-
       holds_at(location(Location_Param14,
                         A,
                         Equals_Param15,
                         Equals_Param16),
                Time13),
       (   not(equals(Equals_Param15, Equals_Ret18))
       ;   not(equals(Equals_Param16, Location_Ret17))
       ).
 */
axiom(not(holds_at(location(Location_Param14, A, Equals_Ret18, Location_Ret17), Time13)),
   
    [ not(equals(Equals_Param15, Equals_Ret18)),
      holds_at(location(Location_Param14,
                        A,
                        Equals_Param15,
                        Equals_Param16),
               Time13)
    ]).
axiom(not(holds_at(location(Location_Param14, A, Equals_Ret18, Location_Ret17), Time13)),
   
    [ not(equals(Equals_Param16, Location_Ret17)),
      holds_at(location(Location_Param14,
                        A,
                        Equals_Param15,
                        Equals_Param16),
               Time13)
    ]).

 /*  equals(Equals_Param20, Equals_Ret22) :-
       holds_at(location(Location_Param21,
                         A,
                         Equals_Param20,
                         Location_Ret23),
                Time19),
       holds_at(location(Location_Param21,
                         A,
                         Equals_Ret22,
                         Location_Ret24),
                Time19).
 */
axiom(equals(Equals_Param20, Equals_Ret22),
   
    [ holds_at(location(Location_Param21,
                        A,
                        Equals_Param20,
                        Location_Ret23),
               Time19),
      holds_at(location(Location_Param21,
                        A,
                        Equals_Ret22,
                        Location_Ret24),
               Time19)
    ]).

 /*  equals(Equals_Param26, Equals_Ret28) :-
       holds_at(location(Location_Param27,
                         A,
                         _,
                         Equals_Param26),
                Time25),
       holds_at(location(Location_Param27,
                         A,
                         _,
                         Equals_Ret28),
                Time25).
 */
axiom(equals(Equals_Param26, Equals_Ret28),
   
    [ holds_at(location(Location_Param27,
                        A,
                        _,
                        Equals_Param26),
               Time25),
      holds_at(location(Location_Param27,
                        A,
                        _,
                        Equals_Ret28),
               Time25)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1731
%; objects have locations
% [grid,object,time]
% (
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1733
% {xcoord,ycoord} HoldsAt(Location(grid,object,xcoord,ycoord),time)).

 /*  exists([Xcoord,Ycoord],
          holds_at(location(Grid,
   			 Object,
   			 Xcoord,
   			 Ycoord),
   		Time)).
 */
axiom(holds_at(location(Location_Param, _, _, Location_Ret), Time5),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1735
%; different objects are not at same location
% [grid,object1,object2,xcoord1,ycoord1,time]
% HoldsAt(Location(grid,object1,xcoord1,ycoord1),time) &
% HoldsAt(Location(grid,object2,xcoord1,ycoord1),time) ->
% Equal(object1,object2).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1739
axiom(equal(Object1, Object2),
   
    [ holds_at(location(Grid, Object1, Xcoord1, Ycoord1),
               Time),
      holds_at(location(Grid, Object2, Xcoord1, Ycoord1),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1741
%; moving to a location causes an object to be at that location
% [grid,object,xcoord1,ycoord1,xcoord2,ycoord2,time]
% Initiates(Move(grid,object,xcoord1,ycoord1,xcoord2,ycoord2),
%           Location(grid,object,xcoord2,ycoord2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1745
axiom(initiates(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), location(Grid, Object, Xcoord2, Ycoord2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1747
%; moving to a location causes the object no longer to be at its previous
%; location
% [grid,object,xcoord1,ycoord1,xcoord2,ycoord2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1750
% Terminates(Move(grid,object,xcoord1,ycoord1,xcoord2,ycoord2),
%            Location(grid,object,xcoord1,ycoord1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1752
axiom(terminates(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), location(Grid, Object, Xcoord1, Ycoord1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1754
%;; allow diagonal movements
%;[grid,object,xcoord1,ycoord1,xcoord2,ycoord2,time]
%;Happens(Move(grid,object,xcoord1,ycoord1,xcoord2,ycoord2),time) ->
%;HoldsAt(Location(grid,object,xcoord1,ycoord1),time) &
%;(xcoord1=xcoord2 |
%; xcoord1=xcoord2+1 |
%; xcoord1=xcoord2-1) &
%;(ycoord1=ycoord2 |
%; ycoord1=ycoord2+1 |
%; ycoord1=ycoord2-1).
%; only allow right angle movements
% [grid,object,xcoord1,ycoord1,xcoord2,ycoord2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1767
% Happens(Move(grid,object,xcoord1,ycoord1,xcoord2,ycoord2),time) ->
% HoldsAt(Location(grid,object,xcoord1,ycoord1),time) &
% ((xcoord1=xcoord2 & (ycoord1=ycoord2+1 | ycoord1=ycoord2-1)) |
%  (ycoord1=ycoord2 & (xcoord1=xcoord2+1 | xcoord1=xcoord2-1))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1770
axiom(requires(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), Time),
   
    [ equals(Ycoord1, Ycoord2+1),
      equals(Xcoord1, Xcoord2),
      holds_at(location(Grid, Object, Xcoord1, Ycoord1),
               Time)
    ]).
axiom(requires(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), Time),
   
    [ equals(Ycoord1, Ycoord2-1),
      equals(Xcoord1, Xcoord2),
      holds_at(location(Grid, Object, Xcoord1, Ycoord1),
               Time)
    ]).
axiom(requires(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), Time),
   
    [ equals(Xcoord1, Xcoord2+1),
      equals(Ycoord1, Ycoord2),
      holds_at(location(Grid, Object, Xcoord1, Ycoord1),
               Time)
    ]).
axiom(requires(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), Time),
   
    [ equals(Xcoord1, Xcoord2-1),
      equals(Ycoord1, Ycoord2),
      holds_at(location(Grid, Object, Xcoord1, Ycoord1),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1772
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/HandTo.e
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1791
% event HandTo(agent,agent,physobj)
 %  event(handTo(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1792
==> mpred_prop(handTo(agent,agent,physobj),event).
==> meta_argtypes(handTo(agent,agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1793
% [agent1,agent2,physobj,time]
% Initiates(HandTo(agent1,agent2,physobj),
%           Holding(agent2,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1796
axiom(initiates(handTo(Agent1, Agent2, Physobj), holding(Agent2, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1798
% [agent1,agent2,physobj,time]
% Terminates(HandTo(agent1,agent2,physobj),
%            Holding(agent1,physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1801
axiom(terminates(handTo(Agent1, Agent2, Physobj), holding(Agent1, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1803
% [agent1,agent2,physobj,time]
% Happens(HandTo(agent1,agent2,physobj),time) ->
% HoldsAt(Holding(agent1,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1805
axiom(requires(handTo(Agent1, Agent2, Physobj), Time),
    [holds_at(holding(Agent1, Physobj), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1807
% event ShakeHands(agent,agent)
 %  event(shakeHands(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1808
==> mpred_prop(shakeHands(agent,agent),event).
==> meta_argtypes(shakeHands(agent,agent)).

% event WriteOn(agent,paper,pen)
 %  event(writeOn(agent,paper,pen)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1810
==> mpred_prop(writeOn(agent,paper,pen),event).
==> meta_argtypes(writeOn(agent,paper,pen)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1813
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/Container.e
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
%;
%; Container: container
%;
%; linkage to OTSpace(M):
% [agent,container1,container2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1833
% Happens(TakeOutOf(agent,container1,container2),time) ->
% HoldsAt(ContainerIsOpen(container2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1834
axiom(requires(takeOutOf(Agent, Container1, Container2), Time),
    [holds_at(containerIsOpen(Container2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1836
% [agent,container1,container2,time]
% Happens(PutInside(agent,container1,container2),time) ->
% HoldsAt(ContainerIsOpen(container2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1838
axiom(requires(putInside(Agent, Container1, Container2), Time),
    [holds_at(containerIsOpen(Container2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1840
%; agent opens container.

% event ContainerOpen(agent,container)
 %  event(containerOpen(agent,container)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1842
==> mpred_prop(containerOpen(agent,container),event).
==> meta_argtypes(containerOpen(agent,container)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1843
%; agent closes container.

% event ContainerClose(agent,container)
 %  event(containerClose(agent,container)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1845
==> mpred_prop(containerClose(agent,container),event).
==> meta_argtypes(containerClose(agent,container)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1846
%; container is open.

% fluent ContainerIsOpen(container)
 %  fluent(containerIsOpen(container)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1848
==> mpred_prop(containerIsOpen(container),fluent).
==> meta_argtypes(containerIsOpen(container)).

% fluent ContainerClosed(container)
 %  fluent(containerClosed(container)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1850
==> mpred_prop(containerClosed(container),fluent).
==> meta_argtypes(containerClosed(container)).

% noninertial ContainerClosed
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1851
==> noninertial(containerClosed).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1852
% [container,time]
% HoldsAt(ContainerClosed(container),time) <->
% !HoldsAt(ContainerIsOpen(container),time).

 /*  holds_at(containerClosed(Container), Time) <->
       not(holds_at(containerIsOpen(Container), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1854
axiom(holds_at(containerClosed(Container), Time),
    [not(holds_at(containerIsOpen(Container), Time))]).
axiom(not(holds_at(containerIsOpen(Container), Time)),
    [holds_at(containerClosed(Container), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1856
%; A precondition axiom states that
%; for an agent to open a container,
%; the agent must be awake,
%; the container must not already be open, and
%; the agent must be holding the container.
% [agent,container,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1862
% Happens(ContainerOpen(agent,container),time) ->
% HoldsAt(Awake(agent),time) &
% !HoldsAt(ContainerIsOpen(container),time) &
% HoldsAt(Holding(agent,container),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1865
axiom(requires(containerOpen(Agent, Container), Time),
   
    [ holds_at(awake(Agent), Time),
      not(holds_at(containerIsOpen(Container), Time)),
      holds_at(holding(Agent, Container), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1867
%; An effect axiom states that
%; if an agent opens a container,
%; the container will be open:
% [agent,container,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1871
% Initiates(ContainerOpen(agent,container),ContainerIsOpen(container),time).
axiom(initiates(containerOpen(Agent, Container), containerIsOpen(Container), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1873
%; A precondition axiom states that
%; for an agent to close a container,
%; the agent must be awake,
%; the container must be open, and
%; the agent must be holding the container.
% [agent,container,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1879
% Happens(ContainerClose(agent,container),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(ContainerIsOpen(container),time) &
% HoldsAt(Holding(agent,container),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1882
axiom(requires(containerClose(Agent, Container), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(containerIsOpen(Container), Time),
      holds_at(holding(Agent, Container), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1884
%; An effect axiom states that
%; if an agent closes a container,
%; the container will no longer be open:
% [agent,container,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1888
% Terminates(ContainerClose(agent,container),ContainerIsOpen(container),time).
axiom(terminates(containerClose(Agent, Container), containerIsOpen(Container), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1890
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/SpeechAct.e
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
%; The SpeechAct representation deals with a few speech acts
%; \fullcite{Searle:1969}.
%;
%; @book{Searle:1969,
%;   author = "John R. Searle",
%;   year = "1969",
%;   title = "Speech Acts: An Essay in the Philosophy of Language",
%;   address = "Cambridge",
%;   publisher = "Cambridge University Press",
%; }
%;
%; We handle
%; the illocutionary acts of
%; inviting someone into one's house (a form of request) and
%; greeting someone,
%; and the expressive speech act of crying for joy.
%;
%; inviting in
%; agent1 invites agent2 into room.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1929
% event InviteIn(agent,agent,room)
 %  event(inviteIn(agent,agent,room)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1930
==> mpred_prop(inviteIn(agent,agent,room),event).
==> meta_argtypes(inviteIn(agent,agent,room)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1930
%; agent1 is invited into room by agent2.

% fluent InvitedIn(agent,room,agent)
 %  fluent(invitedIn(agent,room,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1932
==> mpred_prop(invitedIn(agent,room,agent),fluent).
==> meta_argtypes(invitedIn(agent,room,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1933
%; A precondition axiom states that for
%; an agent to invite another agent into a room,
%; the first agent must be in the room and
%; there must be an outside area such that
%; the second agent is at the outside area and
%; the outside area is adjacent to the room:
% [agent1,agent2,room,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1940
% Happens(InviteIn(agent1,agent2,room),time) ->
% HoldsAt(At(agent1,room),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1942
% {outside}% 
% HoldsAt(At(agent2,outside),time) &
% Adjacent(room,outside).

 /*   exists([Outside],
             if(happens(inviteIn(Agent1, Agent2, Room),
                        Time),
                 (holds_at(at(Agent1, Room), Time), holds_at(at(Agent2, Outside), Time), adjacent(Room, Outside)))).
 */

 /*  not(some(Location8, '$kolem_Fn_228'(Fn_228_Param, At_Param, Location, Maptime))) :-
       happens(inviteIn(Fn_228_Param, At_Param, Location),
               Maptime),
       (   not(holds_at(at(Fn_228_Param, Location), Maptime))
       ;   not(holds_at(at(At_Param, Location8), Maptime))
       ;   not(adjacent(Location, Location8))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1944
axiom(not(some(Location8, '$kolem_Fn_228'(Fn_228_Param, At_Param, Location, Maptime))),
   
    [ not(holds_at(at(Fn_228_Param, Location), Maptime)),
      happens(inviteIn(Fn_228_Param, At_Param, Location),
              Maptime)
    ]).
axiom(not(some(Location8, '$kolem_Fn_228'(Fn_228_Param, At_Param, Location, Maptime))),
   
    [ not(holds_at(at(At_Param, Location8), Maptime)),
      happens(inviteIn(Fn_228_Param, At_Param, Location),
              Maptime)
    ]).
axiom(not(some(Location8, '$kolem_Fn_228'(Fn_228_Param, At_Param, Location, Maptime))),
   
    [ not(adjacent(Location, Location8)),
      happens(inviteIn(Fn_228_Param, At_Param, Location),
              Maptime)
    ]).

 /*  not(happens(inviteIn(InviteIn_Param, At_Param15, Location12), Maptime11)) :-
       (   not(holds_at(at(InviteIn_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param15, Location13), Maptime11))
       ;   not(adjacent(Location12, Location13))
       ),
       some(Location13,
            '$kolem_Fn_228'(InviteIn_Param,
                            At_Param15,
                            Location12,
                            Maptime11)).
 */
axiom(not(happens(inviteIn(InviteIn_Param, At_Param15, Location12), Maptime11)),
   
    [ not(holds_at(at(InviteIn_Param, Location12), Maptime11)),
      some(Location13,
           '$kolem_Fn_228'(InviteIn_Param,
                           At_Param15,
                           Location12,
                           Maptime11))
    ]).
axiom(not(happens(inviteIn(InviteIn_Param, At_Param15, Location12), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location13), Maptime11)),
      some(Location13,
           '$kolem_Fn_228'(InviteIn_Param,
                           At_Param15,
                           Location12,
                           Maptime11))
    ]).
axiom(not(happens(inviteIn(InviteIn_Param, At_Param15, Location12), Maptime11)),
   
    [ not(adjacent(Location12, Location13)),
      some(Location13,
           '$kolem_Fn_228'(InviteIn_Param,
                           At_Param15,
                           Location12,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(inviteIn(At_Param18, A, Location16), Time17),
       some(Some_Param,
            '$kolem_Fn_228'(At_Param18, A, Location16, Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(inviteIn(At_Param18, A, Location16),
              Time17),
      some(Some_Param,
           '$kolem_Fn_228'(At_Param18,
                           A,
                           Location16,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(inviteIn(InviteIn_Param23,
                        At_Param22,
                        InviteIn_Ret),
               Time21),
       some(Location20,
            '$kolem_Fn_228'(InviteIn_Param23,
                            At_Param22,
                            InviteIn_Ret,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(inviteIn(InviteIn_Param23,
                       At_Param22,
                       InviteIn_Ret),
              Time21),
      some(Location20,
           '$kolem_Fn_228'(InviteIn_Param23,
                           At_Param22,
                           InviteIn_Ret,
                           Time21))
    ]).

 /*  adjacent(Adjacent_Param, Some_Param28) :-
       happens(inviteIn(InviteIn_Param27, A, Adjacent_Param),
               Maptime25),
       some(Some_Param28,
            '$kolem_Fn_228'(InviteIn_Param27,
                            A,
                            Adjacent_Param,
                            Maptime25)).
 */
axiom(adjacent(Adjacent_Param, Some_Param28),
   
    [ happens(inviteIn(InviteIn_Param27, A, Adjacent_Param),
              Maptime25),
      some(Some_Param28,
           '$kolem_Fn_228'(InviteIn_Param27,
                           A,
                           Adjacent_Param,
                           Maptime25))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1946
%; An effect axiom states that if
%; an agent invites another agent into a room,
%; the second agent will be invited into the room by the first agent:
% [agent1,agent2,room,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1950
% Initiates(InviteIn(agent1,agent2,room),
%           InvitedIn(agent2,room,agent1),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1952
axiom(initiates(inviteIn(Agent1, Agent2, Room), invitedIn(Agent2, Room, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1954
%; agent intends to walk into room.

% event IntendToWalkIn(agent,room)
 %  event(intendToWalkIn(agent,room)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1956
==> mpred_prop(intendToWalkIn(agent,room),event).
==> meta_argtypes(intendToWalkIn(agent,room)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1956
%; agent has the intention to walk into room.

% fluent IntentionToWalkIn(agent,room)
 %  fluent(intentionToWalkIn(agent,room)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1958
==> mpred_prop(intentionToWalkIn(agent,room),fluent).
==> meta_argtypes(intentionToWalkIn(agent,room)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1958
%; agent acts on the intention to walk into room.

% fluent ActOnIntentionToWalkIn(agent,room)
 %  fluent(actOnIntentionToWalkIn(agent,room)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1960
==> mpred_prop(actOnIntentionToWalkIn(agent,room),fluent).
==> meta_argtypes(actOnIntentionToWalkIn(agent,room)).

% noninertial ActOnIntentionToWalkIn
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1961
==> noninertial(actOnIntentionToWalkIn).
%; A trigger axiom states that
%; if an agent is invited into a room by another agent,
%; the first agent likes the second agent, and
%; the first agent does not already have the intention to
%; walk into the room,
%; the first agent intends to walk into the room:
% [agent1,agent2,room,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1969
% HoldsAt(InvitedIn(agent1,room,agent2),time) &
% HoldsAt(Like(agent1,agent2),time) &
% !HoldsAt(IntentionToWalkIn(agent1,room),time) ->
% Happens(IntendToWalkIn(agent1,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1972
axiom(happens(intendToWalkIn(Agent1, Room), Time),
   
    [ holds_at(invitedIn(Agent1, Room, Agent2), Time),
      holds_at(like(Agent1, Agent2), Time),
      not(holds_at(intentionToWalkIn(Agent1, Room), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1974
%; An effect axiom states that
%; if an agent intends to walk into a room,
%; the agent will have the intention to walk into the room:
% [agent,room,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1978
% Initiates(IntendToWalkIn(agent,room),
%           IntentionToWalkIn(agent,room),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1980
axiom(initiates(intendToWalkIn(Agent, Room), intentionToWalkIn(Agent, Room), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1982
%; Two trigger axioms state that
%; if an agent has the intention to walk into a room,
%; the agent acts on the intention to walk into the room,
%; the agent is at a location,
%; side one (two) of a door is the room,
%; side two (one) of the door is the location,
%; agent will walk through side two (one) of the door:
% [agent,room,location,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1990
% HoldsAt(IntentionToWalkIn(agent,room),time) &
% HoldsAt(ActOnIntentionToWalkIn(agent,room),time) &
% HoldsAt(At(agent,location),time) &
% Side1(door)=room &
% Side2(door)=location ->
% Happens(WalkThroughDoor21(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1995
axiom(happens(walkThroughDoor21(Agent, Door), Time),
   
    [ holds_at(intentionToWalkIn(Agent, Room), Time),
      holds_at(actOnIntentionToWalkIn(Agent, Room), Time),
      holds_at(at(Agent, Location), Time),
      equals(side1(Door), Room),
      equals(side2(Door), Location)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:1997
% [agent,room,location,door,time]
% HoldsAt(IntentionToWalkIn(agent,room),time) &
% HoldsAt(ActOnIntentionToWalkIn(agent,room),time) &
% HoldsAt(At(agent,location),time) &
% Side2(door)=room &
% Side1(door)=location ->
% Happens(WalkThroughDoor12(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2003
axiom(happens(walkThroughDoor12(Agent, Door), Time),
   
    [ holds_at(intentionToWalkIn(Agent, Room), Time),
      holds_at(actOnIntentionToWalkIn(Agent, Room), Time),
      holds_at(at(Agent, Location), Time),
      equals(side2(Door), Room),
      equals(side1(Door), Location)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2005
%; Two effect axioms state that
%; if side one (two) of a door is a room and
%; an agent walks through side two (one) of the door,
%; the agent will no longer have the intention to
%; walk into the room:
% [agent,room,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2011
% Side1(door)=room ->
% Terminates(WalkThroughDoor21(agent,door),
%            IntentionToWalkIn(agent,room),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2014
axiom(terminates(walkThroughDoor21(Agent, Door), intentionToWalkIn(Agent, Room), Time),
    [equals(side1(Door), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2016
% [agent,room,door,time]
% Side2(door)=room ->
% Terminates(WalkThroughDoor12(agent,door),
%            IntentionToWalkIn(agent,room),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2020
axiom(terminates(walkThroughDoor12(Agent, Door), intentionToWalkIn(Agent, Room), Time),
    [equals(side2(Door), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2022
%; agent greets object.

% event Greet(agent,object)
 %  event(greet(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2024
==> mpred_prop(greet(agent,object),event).
==> meta_argtypes(greet(agent,object)).

% event SayPleasedToMeet(agent,agent)
 %  event(sayPleasedToMeet(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2026
==> mpred_prop(sayPleasedToMeet(agent,agent),event).
==> meta_argtypes(sayPleasedToMeet(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2027
%; agent says goodbye to object.

% event SayGoodbye(agent,object)
 %  event(sayGoodbye(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2029
==> mpred_prop(sayGoodbye(agent,object),event).
==> meta_argtypes(sayGoodbye(agent,object)).

% event TalkAbout(agent,content)
 %  event(talkAbout(agent,content)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2031
==> mpred_prop(talkAbout(agent,content),event).
==> meta_argtypes(talkAbout(agent,content)).

% event Converse(agent,agent)
 %  event(converse(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2033
==> mpred_prop(converse(agent,agent),event).
==> meta_argtypes(converse(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2034
% [agent1,agent2,time]
% Happens(Converse(agent1,agent2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2036
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(converse(Agent1, Agent2), Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_229'(Fn_229_Param, At_Param, Maptime))) :-
       happens(converse(Fn_229_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_229_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2038
axiom(not(some(Location6, '$kolem_Fn_229'(Fn_229_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_229_Param, Location6), Maptime)),
      happens(converse(Fn_229_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_229'(Fn_229_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(converse(Fn_229_Param, At_Param), Maptime)
    ]).

 /*  not(happens(converse(Converse_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(Converse_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_229'(Converse_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(converse(Converse_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(Converse_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_229'(Converse_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(converse(Converse_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_229'(Converse_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(converse(At_Param15, Converse_Ret), Time14),
       some(Location13,
            '$kolem_Fn_229'(At_Param15, Converse_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(converse(At_Param15, Converse_Ret), Time14),
      some(Location13,
           '$kolem_Fn_229'(At_Param15, Converse_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(converse(Converse_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_229'(Converse_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(converse(Converse_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_229'(Converse_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2040
%; A precondition axiom states that for
%; an agent to greet an object,
%; there must be a location such that
%; the agent is at the location and
%; the object is at the location:
% [agent,object,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2046
% Happens(Greet(agent,object),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2047
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object,location),time).

 /*   exists([Location],
             if(happens(greet(Agent, Object), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Object, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_230'(Fn_230_Param, At_Param, Maptime))) :-
       happens(greet(Fn_230_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_230_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2049
axiom(not(some(Location6, '$kolem_Fn_230'(Fn_230_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_230_Param, Location6), Maptime)),
      happens(greet(Fn_230_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_230'(Fn_230_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(greet(Fn_230_Param, At_Param), Maptime)
    ]).

 /*  not(happens(greet(Greet_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(Greet_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_230'(Greet_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(greet(Greet_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(Greet_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_230'(Greet_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(greet(Greet_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_230'(Greet_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(greet(At_Param15, Greet_Ret), Time14),
       some(Location13,
            '$kolem_Fn_230'(At_Param15, Greet_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(greet(At_Param15, Greet_Ret), Time14),
      some(Location13,
           '$kolem_Fn_230'(At_Param15, Greet_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(greet(Greet_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_230'(Greet_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(greet(Greet_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_230'(Greet_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2051
% [agent,object,time]
% Happens(SayGoodbye(agent,object),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2053
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object,location),time).

 /*   exists([Location],
             if(happens(sayGoodbye(Agent, Object), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Object, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_231'(Fn_231_Param, At_Param, Maptime))) :-
       happens(sayGoodbye(Fn_231_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_231_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2055
axiom(not(some(Location6, '$kolem_Fn_231'(Fn_231_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_231_Param, Location6), Maptime)),
      happens(sayGoodbye(Fn_231_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_231'(Fn_231_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(sayGoodbye(Fn_231_Param, At_Param), Maptime)
    ]).

 /*  not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(SayGoodbye_Param, Location10),
                        Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_231'(SayGoodbye_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(SayGoodbye_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_231'(SayGoodbye_Param,
                           At_Param12,
                           Maptime9))
    ]).
axiom(not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_231'(SayGoodbye_Param,
                           At_Param12,
                           Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(sayGoodbye(At_Param15, SayGoodbye_Ret), Time14),
       some(Location13,
            '$kolem_Fn_231'(At_Param15, SayGoodbye_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(sayGoodbye(At_Param15, SayGoodbye_Ret), Time14),
      some(Location13,
           '$kolem_Fn_231'(At_Param15, SayGoodbye_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(sayGoodbye(SayGoodbye_Param20, At_Param19),
               Time18),
       some(Location17,
            '$kolem_Fn_231'(SayGoodbye_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(sayGoodbye(SayGoodbye_Param20, At_Param19),
              Time18),
      some(Location17,
           '$kolem_Fn_231'(SayGoodbye_Param20,
                           At_Param19,
                           Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2057
%; speech: expression of emotions
%; agent cries for joy.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2060
% event CryForJoy(agent)
 %  event(cryForJoy(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2061
==> mpred_prop(cryForJoy(agent),event).
==> meta_argtypes(cryForJoy(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2062
%; A precondition axiom states that for
%; an agent to cry for joy,
%; the agent must be happy:
% [agent,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2067
% Happens(CryForJoy(agent),time) ->
% HoldsAt(Happy(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2068
axiom(requires(cryForJoy(Agent), Time),
    [holds_at(happy(Agent), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2070
% event Threaten(agent,agent,weapon)
 %  event(threaten(agent,agent,weapon)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2071
==> mpred_prop(threaten(agent,agent,weapon),event).
==> meta_argtypes(threaten(agent,agent,weapon)).

% event ReleaseFromThreat(agent,agent)
 %  event(releaseFromThreat(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2073
==> mpred_prop(releaseFromThreat(agent,agent),event).
==> meta_argtypes(releaseFromThreat(agent,agent)).

% fluent ThreatenedBy(agent,agent)
 %  fluent(threatenedBy(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2075
==> mpred_prop(threatenedBy(agent,agent),fluent).
==> meta_argtypes(threatenedBy(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2076
% [agent1,agent2,weapon,time]
% Happens(Threaten(agent1,agent2,weapon), time) ->
% HoldsAt(Holding(agent1,weapon),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2079
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(threaten(Agent1, Agent2, Weapon),
                        Time),
                 (holds_at(holding(Agent1, Weapon), Time), holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_232'(Fn_232_Param, At_Param, Threaten_Ret, Maptime))) :-
       happens(threaten(Fn_232_Param, At_Param, Threaten_Ret),
               Maptime),
       (   not(holds_at(holding(Fn_232_Param, Threaten_Ret),
                        Maptime))
       ;   not(holds_at(at(Fn_232_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2081
axiom(not(some(Location7, '$kolem_Fn_232'(Fn_232_Param, At_Param, Threaten_Ret, Maptime))),
   
    [ not(holds_at(holding(Fn_232_Param, Threaten_Ret),
                   Maptime)),
      happens(threaten(Fn_232_Param, At_Param, Threaten_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_232'(Fn_232_Param, At_Param, Threaten_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_232_Param, Location7), Maptime)),
      happens(threaten(Fn_232_Param, At_Param, Threaten_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_232'(Fn_232_Param, At_Param, Threaten_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(threaten(Fn_232_Param, At_Param, Threaten_Ret),
              Maptime)
    ]).

 /*  not(happens(threaten(Threaten_Param, At_Param14, Threaten_Ret15), Maptime11)) :-
       (   not(holds_at(holding(Threaten_Param, Threaten_Ret15),
                        Maptime11))
       ;   not(holds_at(at(Threaten_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_232'(Threaten_Param,
                            At_Param14,
                            Threaten_Ret15,
                            Maptime11)).
 */
axiom(not(happens(threaten(Threaten_Param, At_Param14, Threaten_Ret15), Maptime11)),
   
    [ not(holds_at(holding(Threaten_Param, Threaten_Ret15),
                   Maptime11)),
      some(Location12,
           '$kolem_Fn_232'(Threaten_Param,
                           At_Param14,
                           Threaten_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(threaten(Threaten_Param, At_Param14, Threaten_Ret15), Maptime11)),
   
    [ not(holds_at(at(Threaten_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_232'(Threaten_Param,
                           At_Param14,
                           Threaten_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(threaten(Threaten_Param, At_Param14, Threaten_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_232'(Threaten_Param,
                           At_Param14,
                           Threaten_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(holding(Holding_Param, Holding_Ret), Time16) :-
       happens(threaten(Holding_Param, A, Holding_Ret),
               Time16),
       some(Some_Param,
            '$kolem_Fn_232'(Holding_Param,
                            A,
                            Holding_Ret,
                            Time16)).
 */
axiom(holds_at(holding(Holding_Param, Holding_Ret), Time16),
   
    [ happens(threaten(Holding_Param, A, Holding_Ret),
              Time16),
      some(Some_Param,
           '$kolem_Fn_232'(Holding_Param,
                           A,
                           Holding_Ret,
                           Time16))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(threaten(At_Param22, A, Threaten_Ret23),
               Time21),
       some(Location20,
            '$kolem_Fn_232'(At_Param22,
                            A,
                            Threaten_Ret23,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(threaten(At_Param22, A, Threaten_Ret23),
              Time21),
      some(Location20,
           '$kolem_Fn_232'(At_Param22,
                           A,
                           Threaten_Ret23,
                           Time21))
    ]).

 /*  holds_at(at(At_Param26, Location24), Time25) :-
       happens(threaten(Threaten_Param27,
                        At_Param26,
                        Threaten_Ret28),
               Time25),
       some(Location24,
            '$kolem_Fn_232'(Threaten_Param27,
                            At_Param26,
                            Threaten_Ret28,
                            Time25)).
 */
axiom(holds_at(at(At_Param26, Location24), Time25),
   
    [ happens(threaten(Threaten_Param27,
                       At_Param26,
                       Threaten_Ret28),
              Time25),
      some(Location24,
           '$kolem_Fn_232'(Threaten_Param27,
                           At_Param26,
                           Threaten_Ret28,
                           Time25))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2083
% [agent1,agent2,weapon,time]
% Happens(Threaten(agent1,agent2,weapon), time) ->
% Happens(BecomeAngryAt(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2085
axiom(happens(becomeAngryAt(Agent2, Agent1), Time),
    [happens(threaten(Agent1, Agent2, Weapon), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2087
% [agent1,agent2,weapon,time]
% Initiates(Threaten(agent1,agent2,weapon),
%           ThreatenedBy(agent2,agent1),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2090
axiom(initiates(threaten(Agent1, Agent2, Weapon), threatenedBy(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2092
% [agent1,agent2,time]
% Terminates(ReleaseFromThreat(agent1,agent2),
%            ThreatenedBy(agent2,agent1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2095
axiom(terminates(releaseFromThreat(Agent1, Agent2), threatenedBy(Agent2, Agent1), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2097
% event Order(agent,agent,physobj)
 %  event(order(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2098
==> mpred_prop(order(agent,agent,physobj),event).
==> meta_argtypes(order(agent,agent,physobj)).

% fluent KnowOrder(agent,agent,physobj)
 %  fluent(knowOrder(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2100
==> mpred_prop(knowOrder(agent,agent,physobj),fluent).
==> meta_argtypes(knowOrder(agent,agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2101
% [agent1,agent2,physobj,time]
% Initiates(Order(agent1,agent2,physobj),
%           KnowOrder(agent2,agent1,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2104
axiom(initiates(order(Agent1, Agent2, Physobj), knowOrder(Agent2, Agent1, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2106
% [agent1,agent2,physobj,time]
% Happens(Order(agent1,agent2,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2108
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(order(Agent1, Agent2, Physobj),
                        Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_233'(Fn_233_Param, At_Param, Order_Ret, Maptime))) :-
       happens(order(Fn_233_Param, At_Param, Order_Ret),
               Maptime),
       (   not(holds_at(at(Fn_233_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2110
axiom(not(some(Location7, '$kolem_Fn_233'(Fn_233_Param, At_Param, Order_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_233_Param, Location7), Maptime)),
      happens(order(Fn_233_Param, At_Param, Order_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_233'(Fn_233_Param, At_Param, Order_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(order(Fn_233_Param, At_Param, Order_Ret),
              Maptime)
    ]).

 /*  not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)) :-
       (   not(holds_at(at(Order_Param, Location12), Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_233'(Order_Param,
                            At_Param14,
                            Order_Ret15,
                            Maptime11)).
 */
axiom(not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)),
   
    [ not(holds_at(at(Order_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_233'(Order_Param,
                           At_Param14,
                           Order_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_233'(Order_Param,
                           At_Param14,
                           Order_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(order(At_Param18, A, Order_Ret19), Time17),
       some(Location16,
            '$kolem_Fn_233'(At_Param18,
                            A,
                            Order_Ret19,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(order(At_Param18, A, Order_Ret19), Time17),
      some(Location16,
           '$kolem_Fn_233'(At_Param18,
                           A,
                           Order_Ret19,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(order(Order_Param23, At_Param22, Order_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_233'(Order_Param23,
                            At_Param22,
                            Order_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(order(Order_Param23, At_Param22, Order_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_233'(Order_Param23,
                           At_Param22,
                           Order_Ret24,
                           Time21))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2112
% event Request(agent,agent,physobj)
 %  event(request(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2113
==> mpred_prop(request(agent,agent,physobj),event).
==> meta_argtypes(request(agent,agent,physobj)).

% fluent KnowRequest(agent,agent,physobj)
 %  fluent(knowRequest(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2115
==> mpred_prop(knowRequest(agent,agent,physobj),fluent).
==> meta_argtypes(knowRequest(agent,agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2116
% [agent1,agent2,physobj,time]
% Initiates(Request(agent1,agent2,physobj),
%           KnowRequest(agent2,agent1,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2119
axiom(initiates(request(Agent1, Agent2, Physobj), knowRequest(Agent2, Agent1, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2121
% [agent1,agent2,physobj,time]
% Happens(Request(agent1,agent2,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2123
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(request(Agent1, Agent2, Physobj),
                        Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_234'(Fn_234_Param, At_Param, Request_Ret, Maptime))) :-
       happens(request(Fn_234_Param, At_Param, Request_Ret),
               Maptime),
       (   not(holds_at(at(Fn_234_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2125
axiom(not(some(Location7, '$kolem_Fn_234'(Fn_234_Param, At_Param, Request_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_234_Param, Location7), Maptime)),
      happens(request(Fn_234_Param, At_Param, Request_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_234'(Fn_234_Param, At_Param, Request_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(request(Fn_234_Param, At_Param, Request_Ret),
              Maptime)
    ]).

 /*  not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)) :-
       (   not(holds_at(at(Request_Param, Location12), Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_234'(Request_Param,
                            At_Param14,
                            Request_Ret15,
                            Maptime11)).
 */
axiom(not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)),
   
    [ not(holds_at(at(Request_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_234'(Request_Param,
                           At_Param14,
                           Request_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_234'(Request_Param,
                           At_Param14,
                           Request_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(request(At_Param18, A, Request_Ret19),
               Time17),
       some(Location16,
            '$kolem_Fn_234'(At_Param18,
                            A,
                            Request_Ret19,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(request(At_Param18, A, Request_Ret19),
              Time17),
      some(Location16,
           '$kolem_Fn_234'(At_Param18,
                           A,
                           Request_Ret19,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(request(Request_Param23,
                       At_Param22,
                       Request_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_234'(Request_Param23,
                            At_Param22,
                            Request_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(request(Request_Param23,
                      At_Param22,
                      Request_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_234'(Request_Param23,
                           At_Param22,
                           Request_Ret24,
                           Time21))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2127
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/Sleep.e
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2162
% event WakeUp(agent)
 %  event(wakeUp(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2163
==> mpred_prop(wakeUp(agent),event).
==> meta_argtypes(wakeUp(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2164
%; agent gets tired.

% event GetTired(agent)
 %  event(getTired(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2166
==> mpred_prop(getTired(agent),event).
==> meta_argtypes(getTired(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2167
%; agent falls asleep.

% event FallAsleep(agent)
 %  event(fallAsleep(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2169
==> mpred_prop(fallAsleep(agent),event).
==> meta_argtypes(fallAsleep(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2170
%; agent is asleep.

% fluent Sleep0(agent)
 %  fluent(sleep0(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2172
==> mpred_prop(sleep0(agent),fluent).
==> meta_argtypes(sleep0(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2172
%; agent is awake and in bed.

% fluent Sleep1(agent)
 %  fluent(sleep1(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2174
==> mpred_prop(sleep1(agent),fluent).
==> meta_argtypes(sleep1(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2174
%; agent is awake, out of bed, and undressed.

% fluent Sleep2(agent)
 %  fluent(sleep2(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2176
==> mpred_prop(sleep2(agent),fluent).
==> meta_argtypes(sleep2(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2176
%; agent is awake and dressed.

% fluent Sleep3(agent)
 %  fluent(sleep3(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2178
==> mpred_prop(sleep3(agent),fluent).
==> meta_argtypes(sleep3(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2178
%; agent is tired and dressed.

% fluent Sleep4(agent)
 %  fluent(sleep4(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2180
==> mpred_prop(sleep4(agent),fluent).
==> meta_argtypes(sleep4(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2180
%; agent is tired and undressed.

% fluent Sleep5(agent)
 %  fluent(sleep5(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2182
==> mpred_prop(sleep5(agent),fluent).
==> meta_argtypes(sleep5(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2182
%; agent is in bed, waiting to fall asleep.

% fluent Sleep6(agent)
 %  fluent(sleep6(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2184
==> mpred_prop(sleep6(agent),fluent).
==> meta_argtypes(sleep6(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2185
%; At any time, an agent is in one of seven sleep states:

% xor Sleep0, Sleep1, Sleep2, Sleep3, Sleep4, Sleep5, Sleep6
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2187
xor([sleep0,sleep1,sleep2,sleep3,sleep4,sleep5,sleep6]).
%; constraints
%; agent is asleep.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2191
% fluent Asleep(agent)
 %  fluent(asleep(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2192
==> mpred_prop(asleep(agent),fluent).
==> meta_argtypes(asleep(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2192
%; agent is awake.

% fluent Awake(agent)
 %  fluent(awake(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2194
==> mpred_prop(awake(agent),fluent).
==> meta_argtypes(awake(agent)).

% noninertial Asleep
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2195
==> noninertial(asleep).

% noninertial Awake
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2196
==> noninertial(awake).
%; Sleep0 indicates that the agent is asleep:
% [agent,time]
 % HoldsAt(Asleep(agent),time) <-> HoldsAt(Sleep0(agent),time).

 /*  holds_at(asleep(Agent), Time) <->
       holds_at(sleep0(Agent), Time).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2198
axiom(holds_at(asleep(Agent), Time),
    [holds_at(sleep0(Agent), Time)]).
axiom(holds_at(sleep0(Agent), Time),
    [holds_at(asleep(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2200
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2208
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2210
%; A number of axioms are used to specify the transitions of
%; a finite automaton.
%;--
%; Waking up causes a transition from Sleep0
%; to Sleep1:
% [agent,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2216
% Terminates(WakeUp(agent),Sleep0(agent),time).
axiom(terminates(wakeUp(Agent), sleep0(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2218
% [agent,time]
 % Initiates(WakeUp(agent),Sleep1(agent),time).
axiom(initiates(wakeUp(Agent), sleep1(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2220
% [agent,time]
 % Happens(WakeUp(agent),time) -> HoldsAt(Sleep0(agent),time).
axiom(requires(wakeUp(Agent), Time),
    [holds_at(sleep0(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2222
%;--
%; Getting out of bed causes a transition from Sleep1
%; to Sleep2:
% [agent,bed,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2226
% Terminates(RiseFrom(agent,bed),Sleep1(agent),time).
axiom(terminates(riseFrom(Agent, Bed), sleep1(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2228
% [agent,bed,time]
 % Initiates(RiseFrom(agent,bed),Sleep2(agent),time).
axiom(initiates(riseFrom(Agent, Bed), sleep2(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2230
% [agent,bed,time]
% Happens(RiseFrom(agent,bed),time) -> HoldsAt(Sleep1(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2231
axiom(requires(riseFrom(Agent, Bed), Time),
    [holds_at(sleep1(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2233
%;--
%; Getting dressed causes a transition from Sleep2
%; to Sleep3, the normal state of awakeness:
% [agent,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2237
% Terminates(GetDressed(agent),Sleep2(agent),time).
axiom(terminates(getDressed(Agent), sleep2(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2239
% [agent,time]
 % Initiates(GetDressed(agent),Sleep3(agent),time).
axiom(initiates(getDressed(Agent), sleep3(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2241
% [agent,time]
 % Happens(GetDressed(agent),time) -> HoldsAt(Sleep2(agent),time).
axiom(requires(getDressed(Agent), Time),
    [holds_at(sleep2(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2243
%;--
%; Getting tired causes a transition from Sleep3
%; to Sleep4:
% [agent,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2247
% Terminates(GetTired(agent),Sleep3(agent),time).
axiom(terminates(getTired(Agent), sleep3(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2249
% [agent,time]
 % Initiates(GetTired(agent),Sleep4(agent),time).
axiom(initiates(getTired(Agent), sleep4(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2251
% [agent,time]
 % Happens(GetTired(agent),time) -> HoldsAt(Sleep3(agent),time).
axiom(requires(getTired(Agent), Time),
    [holds_at(sleep3(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2253
%;--
%; Getting undressed causes a transition from Sleep4
%; to Sleep5:
% [agent,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2257
% Terminates(GetUndressed(agent),Sleep4(agent),time).
axiom(terminates(getUndressed(Agent), sleep4(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2259
% [agent,time]
 % Initiates(GetUndressed(agent),Sleep5(agent),time).
axiom(initiates(getUndressed(Agent), sleep5(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2261
% [agent,time]
 % Happens(GetUndressed(agent),time) -> HoldsAt(Sleep4(agent),time).
axiom(requires(getUndressed(Agent), Time),
    [holds_at(sleep4(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2263
%;--
%; Lying on a bed causes a transition from Sleep5
%; to Sleep6:
% [agent,bed,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2267
% Terminates(LieOn(agent,bed),Sleep5(agent),time).
axiom(terminates(lieOn(Agent, Bed), sleep5(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2269
% [agent,bed,time]
 % Initiates(LieOn(agent,bed),Sleep6(agent),time).
axiom(initiates(lieOn(Agent, Bed), sleep6(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2271
% [agent,bed,time]
 % Happens(LieOn(agent,bed),time) -> HoldsAt(Sleep5(agent),time).
axiom(requires(lieOn(Agent, Bed), Time),
    [holds_at(sleep5(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2273
%;--
%; Falling asleep causes a transition from Sleep6
%; to Sleep0:
% [agent,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2277
% Terminates(FallAsleep(agent),Sleep6(agent),time).
axiom(terminates(fallAsleep(Agent), sleep6(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2279
% [agent,time]
 % Initiates(FallAsleep(agent),Sleep0(agent),time).
axiom(initiates(fallAsleep(Agent), sleep0(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2281
% [agent,time]
 % Happens(FallAsleep(agent),time) -> HoldsAt(Sleep6(agent),time).
axiom(requires(fallAsleep(Agent), Time),
    [holds_at(sleep6(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2283
%;--
%; agent acts on being in state Sleep5.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2286
% fluent ActOnSleep5(agent)
 %  fluent(actOnSleep5(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2287
==> mpred_prop(actOnSleep5(agent),fluent).
==> meta_argtypes(actOnSleep5(agent)).

% noninertial ActOnSleep5
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2288
==> noninertial(actOnSleep5).
%; We reduce the number of models by asserting that
%; an agent only acts on being in state Sleep5 while in
%; that state:
% [agent,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2293
% !HoldsAt(Sleep5(agent),time) ->
% !HoldsAt(ActOnSleep5(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2294
axiom(not(holds_at(actOnSleep5(Agent), Time)),
    [not(holds_at(sleep5(Agent), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2296
%; Undressed is like IntentionToPlay
%; ActOnSleep5 is like ActOnIntentionToPlay
%; A trigger axiom states that if an agent is in state Sleep5,
%; the agent acts on this state, the agent is in a room, and
%; a bed is at the room, the agent lies on the bed:
% [agent,room,bed,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2303
% HoldsAt(Sleep5(agent),time) &
% HoldsAt(ActOnSleep5(agent),time) &
% HoldsAt(At(agent,room),time) &
% HoldsAt(At(bed,room),time) ->
% Happens(LieOn(agent,bed),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2307
axiom(happens(lieOn(Agent, Bed), Time),
   
    [ holds_at(sleep5(Agent), Time),
      holds_at(actOnSleep5(Agent), Time),
      holds_at(at(Agent, Room), Time),
      holds_at(at(Bed, Room), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2309
%; A precondition axiom states that for
%; an agent to lie on a bed,
%; the agent must be in state Sleep5,
%; the agent must act on this state, and
%; there must be a room such that
%; the agent is in the room and the bed is in the room:
% [agent,bed,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2316
% Happens(LieOn(agent,bed),time) ->
% HoldsAt(Sleep5(agent),time) &
% HoldsAt(ActOnSleep5(agent),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2319
% {room}% 
%  HoldsAt(At(agent,room),time) &
%  HoldsAt(At(bed,room),time).

 /*   exists([Room],
             if(happens(lieOn(Agent, Bed), Time),
                 (holds_at(sleep5(Agent), Time), holds_at(actOnSleep5(Agent), Time), holds_at(at(Agent, Room), Time), holds_at(at(Bed, Room), Time)))).
 */

 /*  not(some(Location, '$kolem_Fn_235'(Fn_235_Param, At_Param, Maptime))) :-
       happens(lieOn(Fn_235_Param, At_Param), Maptime),
       (   not(holds_at(sleep5(Fn_235_Param), Maptime))
       ;   not(holds_at(actOnSleep5(Fn_235_Param), Maptime))
       ;   not(holds_at(at(Fn_235_Param, Location), Maptime))
       ;   not(holds_at(at(At_Param, Location), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2321
axiom(not(some(Location, '$kolem_Fn_235'(Fn_235_Param, At_Param, Maptime))),
   
    [ not(holds_at(sleep5(Fn_235_Param), Maptime)),
      happens(lieOn(Fn_235_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location, '$kolem_Fn_235'(Fn_235_Param, At_Param, Maptime))),
   
    [ not(holds_at(actOnSleep5(Fn_235_Param), Maptime)),
      happens(lieOn(Fn_235_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location, '$kolem_Fn_235'(Fn_235_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_235_Param, Location), Maptime)),
      happens(lieOn(Fn_235_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location, '$kolem_Fn_235'(Fn_235_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location), Maptime)),
      happens(lieOn(Fn_235_Param, At_Param), Maptime)
    ]).

 /*  not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(sleep5(LieOn_Param), Maptime9))
       ;   not(holds_at(actOnSleep5(LieOn_Param), Maptime9))
       ;   not(holds_at(at(LieOn_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_235'(LieOn_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(sleep5(LieOn_Param), Maptime9)),
      some(Location10,
           '$kolem_Fn_235'(LieOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(actOnSleep5(LieOn_Param), Maptime9)),
      some(Location10,
           '$kolem_Fn_235'(LieOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(LieOn_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_235'(LieOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_235'(LieOn_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(sleep5(LieOn_Param14), Time13) :-
       happens(lieOn(LieOn_Param14, LieOn_Ret), Time13),
       some(Some_Param,
            '$kolem_Fn_235'(LieOn_Param14, LieOn_Ret, Time13)).
 */
axiom(holds_at(sleep5(LieOn_Param14), Time13),
   
    [ happens(lieOn(LieOn_Param14, LieOn_Ret), Time13),
      some(Some_Param,
           '$kolem_Fn_235'(LieOn_Param14, LieOn_Ret, Time13))
    ]).

 /*  holds_at(actOnSleep5(LieOn_Param18), Time17) :-
       happens(lieOn(LieOn_Param18, LieOn_Ret20), Time17),
       some(Some_Param19,
            '$kolem_Fn_235'(LieOn_Param18, LieOn_Ret20, Time17)).
 */
axiom(holds_at(actOnSleep5(LieOn_Param18), Time17),
   
    [ happens(lieOn(LieOn_Param18, LieOn_Ret20), Time17),
      some(Some_Param19,
           '$kolem_Fn_235'(LieOn_Param18, LieOn_Ret20, Time17))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(lieOn(At_Param23, LieOn_Ret24), Time22),
       some(Location21,
            '$kolem_Fn_235'(At_Param23, LieOn_Ret24, Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(lieOn(At_Param23, LieOn_Ret24), Time22),
      some(Location21,
           '$kolem_Fn_235'(At_Param23, LieOn_Ret24, Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(lieOn(LieOn_Param28, At_Param27), Time26),
       some(Location25,
            '$kolem_Fn_235'(LieOn_Param28, At_Param27, Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(lieOn(LieOn_Param28, At_Param27), Time26),
      some(Location25,
           '$kolem_Fn_235'(LieOn_Param28, At_Param27, Time26))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2323
%; (body) posture
%; agent lies on physobj.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2326
% event LieOn(agent,physobj)
 %  event(lieOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2327
==> mpred_prop(lieOn(agent,physobj),event).
==> meta_argtypes(lieOn(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2328
%; agent sits on physobj.

% event SitOn(agent,physobj)
 %  event(sitOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2330
==> mpred_prop(sitOn(agent,physobj),event).
==> meta_argtypes(sitOn(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2331
% [agent,physobj,time]
% Happens(SitOn(agent,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2333
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(physobj,location),time).

 /*   exists([Location],
             if(happens(sitOn(Agent, Physobj), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Physobj, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_236'(Fn_236_Param, At_Param, Maptime))) :-
       happens(sitOn(Fn_236_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_236_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2335
axiom(not(some(Location6, '$kolem_Fn_236'(Fn_236_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_236_Param, Location6), Maptime)),
      happens(sitOn(Fn_236_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_236'(Fn_236_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(sitOn(Fn_236_Param, At_Param), Maptime)
    ]).

 /*  not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(SitOn_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_236'(SitOn_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(SitOn_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_236'(SitOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_236'(SitOn_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(sitOn(At_Param15, SitOn_Ret), Time14),
       some(Location13,
            '$kolem_Fn_236'(At_Param15, SitOn_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(sitOn(At_Param15, SitOn_Ret), Time14),
      some(Location13,
           '$kolem_Fn_236'(At_Param15, SitOn_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(sitOn(SitOn_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_236'(SitOn_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(sitOn(SitOn_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_236'(SitOn_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2337
%; agent rises from physobj.

% event RiseFrom(agent,physobj)
 %  event(riseFrom(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2339
==> mpred_prop(riseFrom(agent,physobj),event).
==> meta_argtypes(riseFrom(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2340
%; agent is lying on physobj.

% fluent LyingOn(agent,physobj)
 %  fluent(lyingOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2342
==> mpred_prop(lyingOn(agent,physobj),fluent).
==> meta_argtypes(lyingOn(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2342
%; agent is sitting on physobj.

% fluent SittingOn(agent,physobj)
 %  fluent(sittingOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2344
==> mpred_prop(sittingOn(agent,physobj),fluent).
==> meta_argtypes(sittingOn(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2344
%; agent is standing.

% fluent Standing(agent)
 %  fluent(standing(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2346
==> mpred_prop(standing(agent),fluent).
==> meta_argtypes(standing(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2347
%; agent is lying down.

% fluent Lying(agent)
 %  fluent(lying(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2349
==> mpred_prop(lying(agent),fluent).
==> meta_argtypes(lying(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2349
%; agent is sitting.

% fluent Sitting(agent)
 %  fluent(sitting(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2351
==> mpred_prop(sitting(agent),fluent).
==> meta_argtypes(sitting(agent)).

% noninertial Lying
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2352
==> noninertial(lying).

% noninertial Sitting
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2353
==> noninertial(sitting).
%; At any time, an agent is either lying, sitting, or standing:

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2355
% xor Lying, Sitting, Standing
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2356
xor([lying,sitting,standing]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2357
% [agent,physobj,time]
% HoldsAt(LyingOn(agent,physobj),time) ->
% HoldsAt(Lying(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2359
axiom(holds_at(lying(Agent), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2361
% [agent,physobj,time]
% HoldsAt(SittingOn(agent,physobj),time) ->
% HoldsAt(Sitting(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2363
axiom(holds_at(sitting(Agent), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2365
%; State constraints represent that an agent can lie or sit
%; on at most one object at a time:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2368
% HoldsAt(LyingOn(agent,physobj1),time) &
% HoldsAt(LyingOn(agent,physobj2),time) ->
% physobj1=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2370
axiom(Physobj1=Physobj2,
   
    [ holds_at(lyingOn(Agent, Physobj1), Time),
      holds_at(lyingOn(Agent, Physobj2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2372
% [agent,physobj1,physobj2,time]
% HoldsAt(SittingOn(agent,physobj1),time) &
% HoldsAt(SittingOn(agent,physobj2),time) ->
% physobj1=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2375
axiom(Physobj1=Physobj2,
   
    [ holds_at(sittingOn(Agent, Physobj1), Time),
      holds_at(sittingOn(Agent, Physobj2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2377
%; An effect axiom states that if an agent is standing and
%; lies on a physical object, the agent will be lying on
%; the physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2381
% HoldsAt(Standing(agent),time) ->
% Initiates(LieOn(agent,physobj),
%           LyingOn(agent,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2384
axiom(initiates(lieOn(Agent, Physobj), lyingOn(Agent, Physobj), Time),
    [holds_at(standing(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2386
%; An effect axiom states that if an agent
%; lies on a physical object, the agent will no longer
%; be standing:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2390
% Terminates(LieOn(agent,physobj),
%            Standing(agent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2392
axiom(terminates(lieOn(Agent, Physobj), standing(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2394
%; An effect axiom states that if an agent is standing and
%; sits on a physical object, the agent will be sitting on
%; the physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2398
% HoldsAt(Standing(agent),time) ->
% Initiates(SitOn(agent,physobj),
%           SittingOn(agent,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2401
axiom(initiates(sitOn(Agent, Physobj), sittingOn(Agent, Physobj), Time),
    [holds_at(standing(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2403
%; An effect axiom states that if an agent
%; sits on a physical object, the agent will no longer
%; be standing:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2407
% Terminates(SitOn(agent,physobj),
%            Standing(agent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2409
axiom(terminates(sitOn(Agent, Physobj), standing(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2411
%; An effect axiom states that if an agent
%; is sitting or lying on a physical object and
%; the agent rises from the physical object,
%; the agent will be standing:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2416
% (HoldsAt(SittingOn(agent,physobj),time) |
%  HoldsAt(LyingOn(agent,physobj),time)) ->
% Initiates(RiseFrom(agent,physobj),
%           Standing(agent),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2420
axiom(initiates(riseFrom(Agent, Physobj), standing(Agent), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).
axiom(initiates(riseFrom(Agent, Physobj), standing(Agent), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2422
%; An effect axiom states that if an agent is sitting on
%; a physical object and the agent rises from the physical
%; object, the agent will no longer be sitting on the
%; physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2427
% HoldsAt(SittingOn(agent,physobj),time) ->
% Terminates(RiseFrom(agent,physobj),
%            SittingOn(agent,physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2430
axiom(terminates(riseFrom(Agent, Physobj), sittingOn(Agent, Physobj), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2432
%; An effect axiom states that if an agent is lying on
%; a physical object and the agent rises from the physical
%; object, the agent will no longer be lying on the
%; physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2437
% HoldsAt(LyingOn(agent,physobj),time) ->
% Terminates(RiseFrom(agent,physobj),
%            LyingOn(agent,physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2440
axiom(terminates(riseFrom(Agent, Physobj), lyingOn(Agent, Physobj), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2442
%; dressing
%; agent gets undressed.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2445
% event GetDressed(agent)
 %  event(getDressed(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2446
==> mpred_prop(getDressed(agent),event).
==> meta_argtypes(getDressed(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2446
%; agent gets dressed.

% event GetUndressed(agent)
 %  event(getUndressed(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2448
==> mpred_prop(getUndressed(agent),event).
==> meta_argtypes(getUndressed(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2448
%; agent is dressed.

% fluent Dressed(agent)
 %  fluent(dressed(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2450
==> mpred_prop(dressed(agent),fluent).
==> meta_argtypes(dressed(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2451
%; Effect axioms deal with getting dressed and undressed:
% [agent,time]
 % Initiates(GetDressed(agent),Dressed(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2452
axiom(initiates(getDressed(Agent), dressed(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2453
% [agent,time]
 % Terminates(GetUndressed(agent),Dressed(agent),time).
axiom(terminates(getUndressed(Agent), dressed(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2455
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/Sleeping.e
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2484
% option modeldiff on
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2485
:- set_ec_option(modeldiff, on).

% ignore Love, ThreatenedBy
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2487
ignore(love).
ignore(threatenedBy).

% ignore LookOutOnto, Floor, BuildingOf, SkyOf, GroundOf
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2488
ignore(lookOutOnto).
ignore(floor).
ignore(buildingOf).
ignore(skyOf).
ignore(groundOf).

% ignore Inside, Near
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2489
ignore(inside).
ignore(near).

% ignore See
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2490
ignore(see).

% ignore ActOnSleep5
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2492
ignore(actOnSleep5).

% option renaming off
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2494
:- set_ec_option(renaming, off).

% load foundations/Root.e

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2496
% load foundations/EC.e

% load answers/Mueller2003/Ontology.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2498
load('answers/Mueller2003/Ontology.e').

% load answers/Mueller2004c/RTSpaceM.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2499
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2004c/OTSpaceM.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2500
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/Cognition.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2501
load('answers/Mueller2004c/Cognition.e').

% load answers/Mueller2003/Sleep.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2502
load('answers/Mueller2003/Sleep.e').

% door Door1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2504
==> t(door,door1).

% room Room0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2506
==> t(room,room0).

% room Room1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2508
==> t(room,room1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2509
% Side1(Door1)=Room0.
side1(door1,room0).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2510
% Side2(Door1)=Room1.
side2(door1,room1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2512
% agent Sleeper1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2513
==> t(agent,sleeper1).

% bed Bed1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2515
==> t(bed,bed1).

% outside Outside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2517
==> t(outside,outside1).
%; initial state
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2519
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2520
% [agent,physobj]
 % !HoldsAt(SittingOn(agent,physobj),0).
 %  not(initially(sittingOn(Agent,Physobj))).
axiom(not(initially(sittingOn(SittingOn_Param, SittingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2521
% [agent,physobj]
 % !HoldsAt(LyingOn(agent,physobj),0).
 %  not(initially(lyingOn(Agent,Physobj))).
axiom(not(initially(lyingOn(LyingOn_Param, LyingOn_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2522
% HoldsAt(Dressed(Sleeper1),0).
axiom(initially(dressed(sleeper1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2523
% HoldsAt(Awake(Sleeper1),0).
axiom(initially(awake(sleeper1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2524
% HoldsAt(Sleep3(Sleeper1),0).
axiom(initially(sleep3(sleeper1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2525
% HoldsAt(Standing(Sleeper1),0).
axiom(initially(standing(sleeper1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2526
% HoldsAt(DoorUnlocked(Door1),0).
axiom(initially(doorUnlocked(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2527
% HoldsAt(DoorIsOpen(Door1),0).
axiom(initially(doorIsOpen(door1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2528
% HoldsAt(At(Sleeper1,Room0),0).
axiom(initially(at(sleeper1, room0)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2529
% HoldsAt(At(Bed1,Room1),0).
axiom(initially(at(bed1, room1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2531
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2532
% Happens(GetTired(Sleeper1),0).
axiom(happens(getTired(sleeper1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2533
% Happens(WalkThroughDoor12(Sleeper1,Door1),1).
axiom(happens(walkThroughDoor12(sleeper1, door1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2534
% Happens(GetUndressed(Sleeper1),2).
axiom(happens(getUndressed(sleeper1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2535
% Happens(LieOn(Sleeper1,Bed1),3).
axiom(happens(lieOn(sleeper1, bed1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2536
% Happens(FallAsleep(Sleeper1),4).
axiom(happens(fallAsleep(sleeper1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2537
% Happens(Dream(Sleeper1),5).
axiom(happens(dream(sleeper1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2538
% Happens(WakeUp(Sleeper1),6).
axiom(happens(wakeUp(sleeper1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2539
% Happens(RiseFrom(Sleeper1,Bed1),7).
axiom(happens(riseFrom(sleeper1, bed1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2540
% Happens(GetDressed(Sleeper1),8).
axiom(happens(getDressed(sleeper1), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2541
% Happens(WalkThroughDoor21(Sleeper1,Door1),9).
axiom(happens(walkThroughDoor21(sleeper1, door1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2543
% range time 0 10
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2544
==> range(time,0,10).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2545
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2546
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2548
==> completion(happens).
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/Rest.e
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
%; @article{Mueller:InPress,
%;   author = "Erik T. Mueller",
%;   year = "in press",
%;   title = "Modelling space and time in narratives about restaurants",
%;   journal = "Literary and Linguistic Computing",
%; }
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2575
% option renaming off
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2576
:- set_ec_option(renaming, off).

% option encoding 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2577
:- set_ec_option(encoding, 3).

% load foundations/Root.e

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2579
% load foundations/EC.e

% load answers/Mueller2003/Ontology.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2581
load('answers/Mueller2003/Ontology.e').

% load answers/MuellerInPress/RepRest.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2582
load('answers/MuellerInPress/RepRest.e').

% door MainEntrance1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2584
==> t(door,mainEntrance1).
%; room-scale topological space

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2586
% outside Street1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2587
==> t(outside,street1).

% room DiningRoom1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2588
==> t(room,diningRoom1).

% door KitchenDoor1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2589
==> t(door,kitchenDoor1).

% room Kitchen1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2590
==> t(room,kitchen1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2590
% Side1(MainEntrance1)=Street1.
side1(mainEntrance1,street1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2591
% Side2(MainEntrance1)=DiningRoom1.
side2(mainEntrance1,diningRoom1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2592
% Side1(KitchenDoor1)=DiningRoom1.
side1(kitchenDoor1,diningRoom1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2593
% Side2(KitchenDoor1)=Kitchen1.
side2(kitchenDoor1,kitchen1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2595
% agent Customer1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2596
==> t(agent,customer1).

% menu Menu1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2597
==> t(menu,menu1).

% chair Chair1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2598
==> t(chair,chair1).

% food Food1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2599
==> t(food,food1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2599
% HoldsAt(At(Customer1,Street1),0).
axiom(initially(at(customer1, street1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2600
% HoldsAt(Hungry(Customer1),0).
axiom(initially(hungry(customer1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2601
% HoldsAt(At(Chair1,DiningRoom1),0).
axiom(initially(at(chair1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2602
% HoldsAt(At(Menu1,DiningRoom1),0).
axiom(initially(at(menu1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2603
% HoldsAt(On(Menu1,Table1),0).
axiom(initially(on(menu1, table1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2604
% HoldsAt(At(Food1,Kitchen1),0).
axiom(initially(at(food1, kitchen1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2606
% waiter Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2607
==> t(waiter,waiter1).

% cook Cook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2608
==> t(cook,cook1).
%; props

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2610
% table Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2611
==> t(table,table1).

% bill Bill1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2612
==> t(bill,bill1).
%; restaurant

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2614
% restaurant Restaurant1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2615
==> t(restaurant,restaurant1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2615
% CookOf(Restaurant1)=Cook1.
cookOf(restaurant1,cook1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2616
% TableOf(Restaurant1)=Table1.
tableOf(restaurant1,table1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2617
% WaiterOf(Restaurant1)=Waiter1.
waiterOf(restaurant1,waiter1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2618
% KitchenDoorOf(Restaurant1)=KitchenDoor1.
kitchenDoorOf(restaurant1,kitchenDoor1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2619
% BillOf(Restaurant1)=Bill1.
billOf(restaurant1,bill1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2621
%; prune

% sort ona, onb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2623
==> sort(ona).
==> sort(onb).

% fluent! On(ona,onb)
 %  fluent(on(ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2624
==> mpred_prop(on(ona,onb),fluent).
==> meta_argtypes(on(ona,onb)).

% event! PlaceOn(agent,ona,onb)
 %  event(placeOn(agent,ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2625
==> mpred_prop(placeOn(agent,ona,onb),event).
==> meta_argtypes(placeOn(agent,ona,onb)).

% event! TakeOffOf(agent,ona,onb)
 %  event(takeOffOf(agent,ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2626
==> mpred_prop(takeOffOf(agent,ona,onb),event).
==> meta_argtypes(takeOffOf(agent,ona,onb)).

% sort ordera, orderb, orderc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2628
==> sort(ordera).
==> sort(orderb).
==> sort(orderc).

% event! Order(ordera,orderb,orderc)
 %  event(order(ordera,orderb,orderc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2629
==> mpred_prop(order(ordera,orderb,orderc),event).
==> meta_argtypes(order(ordera,orderb,orderc)).

% fluent! KnowOrder(orderb,ordera,orderc)
 %  fluent(knowOrder(orderb,ordera,orderc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2630
==> mpred_prop(knowOrder(orderb,ordera,orderc),fluent).
==> meta_argtypes(knowOrder(orderb,ordera,orderc)).

% sort requesta, requestb, requestc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2632
==> sort(requesta).
==> sort(requestb).
==> sort(requestc).

% event! Request(requesta,requestb,requestc)
 %  event(request(requesta,requestb,requestc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2633
==> mpred_prop(request(requesta,requestb,requestc),event).
==> meta_argtypes(request(requesta,requestb,requestc)).

% fluent! KnowRequest(requestb,requesta,requestc)
 %  fluent(knowRequest(requestb,requesta,requestc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2634
==> mpred_prop(knowRequest(requestb,requesta,requestc),fluent).
==> meta_argtypes(knowRequest(requestb,requesta,requestc)).

% sort holda, holdb, holdc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2636
==> sort(holda).
==> sort(holdb).
==> sort(holdc).

% event! TakeOffOf(holda,holdb,holdc)
 %  event(takeOffOf(holda,holdb,holdc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2637
==> mpred_prop(takeOffOf(holda,holdb,holdc),event).
==> meta_argtypes(takeOffOf(holda,holdb,holdc)).

% event! PickUp(holda,holdb)
 %  event(pickUp(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2638
==> mpred_prop(pickUp(holda,holdb),event).
==> meta_argtypes(pickUp(holda,holdb)).

% event! LetGoOf(holda,holdb)
 %  event(letGoOf(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2639
==> mpred_prop(letGoOf(holda,holdb),event).
==> meta_argtypes(letGoOf(holda,holdb)).

% event! Hold(holda,holdb)
 %  event(hold(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2640
==> mpred_prop(hold(holda,holdb),event).
==> meta_argtypes(hold(holda,holdb)).

% fluent! Holding(holda,holdb)
 %  fluent(holding(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2641
==> mpred_prop(holding(holda,holdb),fluent).
==> meta_argtypes(holding(holda,holdb)).

% sort sita, sitb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2643
==> sort(sita).
==> sort(sitb).

% event! LieOn(sita,sitb)
 %  event(lieOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2644
==> mpred_prop(lieOn(sita,sitb),event).
==> meta_argtypes(lieOn(sita,sitb)).

% event! SitOn(sita,sitb)
 %  event(sitOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2645
==> mpred_prop(sitOn(sita,sitb),event).
==> meta_argtypes(sitOn(sita,sitb)).

% event! RiseFrom(sita,sitb)
 %  event(riseFrom(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2646
==> mpred_prop(riseFrom(sita,sitb),event).
==> meta_argtypes(riseFrom(sita,sitb)).

% fluent! LyingOn(sita,sitb)
 %  fluent(lyingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2647
==> mpred_prop(lyingOn(sita,sitb),fluent).
==> meta_argtypes(lyingOn(sita,sitb)).

% fluent! SittingOn(sita,sitb)
 %  fluent(sittingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2648
==> mpred_prop(sittingOn(sita,sitb),fluent).
==> meta_argtypes(sittingOn(sita,sitb)).

% sort greeta, greetb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2650
==> sort(greeta).
==> sort(greetb).

% event! Greet(greeta,greetb)
 %  event(greet(greeta,greetb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2651
==> mpred_prop(greet(greeta,greetb),event).
==> meta_argtypes(greet(greeta,greetb)).

% ona! Menu1, Food1, Bill1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2653
==> t(ona,menu1).
==> t(ona,food1).
==> t(ona,bill1).

% onb! Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2654
==> t(onb,table1).

% ordera! Customer1, Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2655
==> t(ordera,customer1).
==> t(ordera,waiter1).

% orderb! Waiter1, Cook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2656
==> t(orderb,waiter1).
==> t(orderb,cook1).

% orderc! Food1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2657
==> t(orderc,food1).

% requesta! Customer1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2658
==> t(requesta,customer1).

% requestb! Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2659
==> t(requestb,waiter1).

% requestc! Bill1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2660
==> t(requestc,bill1).

% holda! Customer1, Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2661
==> t(holda,customer1).
==> t(holda,waiter1).

% holdb! Menu1, Food1, Bill1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2662
==> t(holdb,menu1).
==> t(holdb,food1).
==> t(holdb,bill1).

% holdc! Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2663
==> t(holdc,table1).

% sita! Customer1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2664
==> t(sita,customer1).

% sitb! Chair1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2665
==> t(sitb,chair1).

% greeta! Customer1, Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2666
==> t(greeta,customer1).
==> t(greeta,waiter1).

% greetb! Customer1, Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2667
==> t(greetb,customer1).
==> t(greetb,waiter1).
%; initial situation


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2669
% HoldsAt(At(Waiter1,DiningRoom1),0).
axiom(initially(at(waiter1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2670
% HoldsAt(At(Cook1,Kitchen1),0).
axiom(initially(at(cook1, kitchen1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2671
% HoldsAt(At(Table1,DiningRoom1),0).
axiom(initially(at(table1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2672
% !HoldsAt(On(Bill1,Table1),0).
 %  not(initially(on(bill1,table1))).
axiom(not(initially(on(bill1, table1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2673
% HoldsAt(At(Bill1,DiningRoom1),0).
axiom(initially(at(bill1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2674
% [agent]
 % HoldsAt(Standing(agent),0).
axiom(initially(standing(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2675
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2676
% [agent1,agent2,physobj]
 % !HoldsAt(KnowOrder(agent1,agent2,physobj),0).
 %  not(initially(knowOrder(Agent1,Agent2,Physobj))).
axiom(not(initially(knowOrder(KnowOrder_Param, _, KnowOrder_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2677
% [agent1,agent2,physobj]
 % !HoldsAt(KnowRequest(agent1,agent2,physobj),0).
 %  not(initially(knowRequest(Agent1,Agent2,Physobj))).
axiom(not(initially(knowRequest(KnowRequest_Param, _, KnowRequest_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2678
% HoldsAt(BeWaiter0(Waiter1),0).
axiom(initially(beWaiter0(waiter1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2679
% HoldsAt(BeCook0(Cook1),0).
axiom(initially(beCook0(cook1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2680
% [food]
 % !HoldsAt(FoodPrepared(food),0).
 %  not(initially(foodPrepared(Food))).
axiom(not(initially(foodPrepared(FoodPrepared_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2681
% !HoldsAt(Hungry(Cook1),0).
 %  not(initially(hungry(cook1))).
axiom(not(initially(hungry(cook1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2682
% !HoldsAt(Hungry(Waiter1),0).
 %  not(initially(hungry(waiter1))).
axiom(not(initially(hungry(waiter1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2684
% Happens(WalkThroughDoor12(Customer1,MainEntrance1),0).
axiom(happens(walkThroughDoor12(customer1, mainEntrance1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2685
% Happens(Greet(Waiter1,Customer1),1).
axiom(happens(greet(waiter1, customer1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2686
% Happens(SitOn(Customer1,Chair1),2).
axiom(happens(sitOn(customer1, chair1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2687
% Happens(TakeOffOf(Customer1,Menu1,Table1),3).
axiom(happens(takeOffOf(customer1, menu1, table1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2688
% Happens(Order(Customer1,Waiter1,Food1),4).
axiom(happens(order(customer1, waiter1, food1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2689
% Happens(PlaceOn(Customer1,Menu1,Table1),5).
axiom(happens(placeOn(customer1, menu1, table1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2690
% Happens(Eat(Customer1,Food1),11).
axiom(happens(eat(customer1, food1), t11),
    [is_time(11), b(t, t11), ignore(t+11=t11)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2691
% Happens(Request(Customer1,Waiter1,Bill1),12).
axiom(happens(request(customer1, waiter1, bill1), t12),
    [is_time(12), b(t, t12), ignore(t+12=t12)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2692
% Happens(Pay(Customer1,Waiter1),15).
axiom(happens(pay(customer1, waiter1), t15),
    [is_time(15), b(t, t15), ignore(t+15=t15)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2693
% Happens(Tip(Customer1,Waiter1),15).
axiom(happens(tip(customer1, waiter1), t15),
    [is_time(15), b(t, t15), ignore(t+15=t15)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2694
% Happens(RiseFrom(Customer1,Chair1),16).
axiom(happens(riseFrom(customer1, chair1), t16),
    [is_time(16), b(t, t16), ignore(t+16=t16)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2695
% Happens(SayGoodbye(Customer1,Waiter1),17).
axiom(happens(sayGoodbye(customer1, waiter1), t17),
    [is_time(17), b(t, t17), ignore(t+17=t17)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2696
% Happens(WalkThroughDoor21(Customer1,MainEntrance1),18).
axiom(happens(walkThroughDoor21(customer1, mainEntrance1), t18),
    [is_time(18), b(t, t18), ignore(t+18=t18)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2698
% range time 0 19
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2699
==> range(time,0,19).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2700
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2701
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2703
==> completion(happens).
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/RepRest.e
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
%; @article{Mueller:InPress,
%;   author = "Erik T. Mueller",
%;   year = "in press",
%;   title = "Modelling space and time in narratives about restaurants",
%;   journal = "Literary and Linguistic Computing",
%; }
%;
%;sort boolean
%;sort integer
%;reified sort predicate
%;reified sort function
%;
%;sort time: integer
%;sort offset: integer
%;
%;reified sort fluent
%;reified sort event
%;
%;predicate Happens(event,time)
%;predicate HoldsAt(fluent,time)
%;predicate ReleasedAt(fluent,time)
%;predicate Initiates(event,fluent,time)
%;predicate Terminates(event,fluent,time)
%;predicate Releases(event,fluent,time)
%;
%;sort diameter: integer
%;
%;sort object
%;
%;sort agent: object
%;
%;sort physobj: object
%;sort bed: physobj
%;sort snowflake: physobj
%;sort sky: physobj
%;
%;sort stuff: physobj
%;
%;sort surface: physobj
%;sort ground: surface
%;
%;sort snow: stuff
%;sort ball
%;
%;sort food: physobj
%;sort fruit: food
%;sort orange: fruit
%;sort salad: food
%;
%;sort clothing: physobj
%;sort scarf: clothing
%;sort hat: clothing
%;
%;sort vegetablematter: physobj
%;sort coal: vegetablematter
%;
%;sort bodypart: physobj
%;sort hand: bodypart
%;
%;sort papertowels: physobj
%;sort device: physobj
%;sort electronicdevice: device
%;sort lamp: electronicdevice
%;
%;sort cat: physobj
%;
%;sort weapon: physobj
%;sort gun: weapon
%;sort bomb: weapon
%;sort bullet: weapon
%;
%;sort location
%;sort room: location, outside: location
%;
%;sort portal
%;sort door: portal, staircase: portal
%;sort street: portal
%;
%;sort building
%;
%;sort fire: object
%;
%;sort furniture: physobj
%;sort chair: furniture
%;sort table: furniture
%;
%;sort menu: physobj
%;sort bill: physobj
%;
%;sort script
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2814
% fluent Holding(agent,physobj)
 %  fluent(holding(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2815
==> mpred_prop(holding(agent,physobj),fluent).
==> meta_argtypes(holding(agent,physobj)).

% event PickUp(agent,physobj)
 %  event(pickUp(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2816
==> mpred_prop(pickUp(agent,physobj),event).
==> meta_argtypes(pickUp(agent,physobj)).

% event LetGoOf(agent,physobj)
 %  event(letGoOf(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2817
==> mpred_prop(letGoOf(agent,physobj),event).
==> meta_argtypes(letGoOf(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2818
% [agent,physobj,time]
% Initiates(PickUp(agent,physobj),Holding(agent,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2819
axiom(initiates(pickUp(Agent, Physobj), holding(Agent, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2821
% [agent,physobj,time]
% Happens(PickUp(agent,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2823
% {location}% 
%   HoldsAt(At(agent,location),time) &
%   HoldsAt(At(physobj,location),time).

 /*   exists([Location],
             if(happens(pickUp(Agent, Physobj), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Physobj, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_237'(Fn_237_Param, At_Param, Maptime))) :-
       happens(pickUp(Fn_237_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_237_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2825
axiom(not(some(Location6, '$kolem_Fn_237'(Fn_237_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_237_Param, Location6), Maptime)),
      happens(pickUp(Fn_237_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_237'(Fn_237_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(pickUp(Fn_237_Param, At_Param), Maptime)
    ]).

 /*  not(happens(pickUp(PickUp_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(PickUp_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_237'(PickUp_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(pickUp(PickUp_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(PickUp_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_237'(PickUp_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(pickUp(PickUp_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_237'(PickUp_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(pickUp(At_Param15, PickUp_Ret), Time14),
       some(Location13,
            '$kolem_Fn_237'(At_Param15, PickUp_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(pickUp(At_Param15, PickUp_Ret), Time14),
      some(Location13,
           '$kolem_Fn_237'(At_Param15, PickUp_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(pickUp(PickUp_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_237'(PickUp_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(pickUp(PickUp_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_237'(PickUp_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2827
% [agent,physobj,time]
% Terminates(LetGoOf(agent,physobj),Holding(agent,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2828
axiom(terminates(letGoOf(Agent, Physobj), holding(Agent, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2830
% [agent,physobj,time]
% Happens(LetGoOf(agent,physobj),time) ->
% HoldsAt(Holding(agent,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2832
axiom(requires(letGoOf(Agent, Physobj), Time),
    [holds_at(holding(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2834
% [agent,physobj,location,time]
% Releases(PickUp(agent,physobj),At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2835
axiom(releases(pickUp(Agent, Physobj), at(Physobj, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2837
% [agent,physobj,location,time]
% HoldsAt(Holding(agent,physobj),time) &
% HoldsAt(At(agent,location),time) ->
% HoldsAt(At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2840
axiom(holds_at(at(Physobj, Location), Time),
   
    [ holds_at(holding(Agent, Physobj), Time),
      holds_at(at(Agent, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2842
%;[agent,physobj,location1,location2,time]
%;HoldsAt(At(agent,location1),time) &
%;location1!=location2 ->
%;Terminates(LetGoOf(agent,physobj),At(physobj,location2),time).
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2848
% HoldsAt(At(agent,location),time) ->
% Initiates(LetGoOf(agent,physobj),At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2849
axiom(initiates(letGoOf(Agent, Physobj), at(Physobj, Location), Time),
    [holds_at(at(Agent, Location), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2851
% fluent On(physobj,physobj)
 %  fluent(on(physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2852
==> mpred_prop(on(physobj,physobj),fluent).
==> meta_argtypes(on(physobj,physobj)).

% event PlaceOn(agent,physobj,physobj)
 %  event(placeOn(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2854
==> mpred_prop(placeOn(agent,physobj,physobj),event).
==> meta_argtypes(placeOn(agent,physobj,physobj)).

% event TakeOffOf(agent,physobj,physobj)
 %  event(takeOffOf(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2856
==> mpred_prop(takeOffOf(agent,physobj,physobj),event).
==> meta_argtypes(takeOffOf(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2857
% [physobj1,physobj2,time]
% HoldsAt(On(physobj1,physobj2),time) ->
% physobj1!=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2859
axiom(Physobj1\=Physobj2,
    [holds_at(on(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2861
% [physobj1,physobj2,time]
% HoldsAt(On(physobj1,physobj2),time) ->
% !HoldsAt(On(physobj2,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2863
axiom(not(holds_at(on(Physobj2, Physobj1), Time)),
    [holds_at(on(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2865
% [agent,physobj1,physobj2,time]
% Initiates(PlaceOn(agent,physobj1,physobj2),
%           On(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2867
axiom(initiates(placeOn(Agent, Physobj1, Physobj2), on(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2869
% [agent,physobj1,physobj2,time]
% Terminates(PlaceOn(agent,physobj1,physobj2),
%            Holding(agent,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2871
axiom(terminates(placeOn(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2873
% [agent,physobj1,physobj2,time]
% Happens(PlaceOn(agent,physobj1,physobj2),time) ->
% HoldsAt(Holding(agent,physobj1),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2876
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(physobj2,location),time).

 /*   exists([Location],
             if(happens(placeOn(Agent, Physobj1, Physobj2),
                        Time),
                 (holds_at(holding(Agent, Physobj1), Time), holds_at(at(Agent, Location), Time), holds_at(at(Physobj2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_238'(Fn_238_Param, Holding_Ret, At_Param, Maptime))) :-
       happens(placeOn(Fn_238_Param, Holding_Ret, At_Param),
               Maptime),
       (   not(holds_at(holding(Fn_238_Param, Holding_Ret),
                        Maptime))
       ;   not(holds_at(at(Fn_238_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2878
axiom(not(some(Location7, '$kolem_Fn_238'(Fn_238_Param, Holding_Ret, At_Param, Maptime))),
   
    [ not(holds_at(holding(Fn_238_Param, Holding_Ret),
                   Maptime)),
      happens(placeOn(Fn_238_Param, Holding_Ret, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_238'(Fn_238_Param, Holding_Ret, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_238_Param, Location7), Maptime)),
      happens(placeOn(Fn_238_Param, Holding_Ret, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_238'(Fn_238_Param, Holding_Ret, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(placeOn(Fn_238_Param, Holding_Ret, At_Param),
              Maptime)
    ]).

 /*  not(happens(placeOn(PlaceOn_Param, Holding_Ret15, At_Param14), Maptime11)) :-
       (   not(holds_at(holding(PlaceOn_Param, Holding_Ret15),
                        Maptime11))
       ;   not(holds_at(at(PlaceOn_Param, Location12), Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_238'(PlaceOn_Param,
                            Holding_Ret15,
                            At_Param14,
                            Maptime11)).
 */
axiom(not(happens(placeOn(PlaceOn_Param, Holding_Ret15, At_Param14), Maptime11)),
   
    [ not(holds_at(holding(PlaceOn_Param, Holding_Ret15),
                   Maptime11)),
      some(Location12,
           '$kolem_Fn_238'(PlaceOn_Param,
                           Holding_Ret15,
                           At_Param14,
                           Maptime11))
    ]).
axiom(not(happens(placeOn(PlaceOn_Param, Holding_Ret15, At_Param14), Maptime11)),
   
    [ not(holds_at(at(PlaceOn_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_238'(PlaceOn_Param,
                           Holding_Ret15,
                           At_Param14,
                           Maptime11))
    ]).
axiom(not(happens(placeOn(PlaceOn_Param, Holding_Ret15, At_Param14), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_238'(PlaceOn_Param,
                           Holding_Ret15,
                           At_Param14,
                           Maptime11))
    ]).

 /*  holds_at(holding(Holding_Param, Holding_Ret19), Time16) :-
       happens(placeOn(Holding_Param, Holding_Ret19, PlaceOn_Ret),
               Time16),
       some(Some_Param,
            '$kolem_Fn_238'(Holding_Param,
                            Holding_Ret19,
                            PlaceOn_Ret,
                            Time16)).
 */
axiom(holds_at(holding(Holding_Param, Holding_Ret19), Time16),
   
    [ happens(placeOn(Holding_Param,
                      Holding_Ret19,
                      PlaceOn_Ret),
              Time16),
      some(Some_Param,
           '$kolem_Fn_238'(Holding_Param,
                           Holding_Ret19,
                           PlaceOn_Ret,
                           Time16))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(placeOn(At_Param23, A, PlaceOn_Ret24),
               Time22),
       some(Location21,
            '$kolem_Fn_238'(At_Param23,
                            A,
                            PlaceOn_Ret24,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(placeOn(At_Param23, A, PlaceOn_Ret24),
              Time22),
      some(Location21,
           '$kolem_Fn_238'(At_Param23,
                           A,
                           PlaceOn_Ret24,
                           Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(placeOn(PlaceOn_Param28, A, At_Param27),
               Time26),
       some(Location25,
            '$kolem_Fn_238'(PlaceOn_Param28,
                            A,
                            At_Param27,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(placeOn(PlaceOn_Param28, A, At_Param27),
              Time26),
      some(Location25,
           '$kolem_Fn_238'(PlaceOn_Param28,
                           A,
                           At_Param27,
                           Time26))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2880
% [agent,physobj1,physobj2,time]
% Terminates(TakeOffOf(agent,physobj1,physobj2),
%            On(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2882
axiom(terminates(takeOffOf(Agent, Physobj1, Physobj2), on(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2884
% [agent,physobj1,physobj2,time]
% Initiates(TakeOffOf(agent,physobj1,physobj2),
%           Holding(agent,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2886
axiom(initiates(takeOffOf(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2888
% [agent,physobj1,physobj2,location,time]
% Releases(TakeOffOf(agent,physobj1,physobj2),
%          At(physobj1,location),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2891
axiom(releases(takeOffOf(Agent, Physobj1, Physobj2), at(Physobj1, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2893
% [agent,physobj1,physobj2,time]
% Happens(TakeOffOf(agent,physobj1,physobj2),time) ->
% HoldsAt(On(physobj1,physobj2),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2896
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(physobj1,location),time) &
%  HoldsAt(At(physobj2,location),time).

 /*   exists([Location],
             if(happens(takeOffOf(Agent, Physobj1, Physobj2),
                        Time),
                 (holds_at(on(Physobj1, Physobj2), Time), holds_at(at(Agent, Location), Time), holds_at(at(Physobj1, Location), Time), holds_at(at(Physobj2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_239'(Fn_239_Param, On_Param, At_Param, Maptime))) :-
       happens(takeOffOf(Fn_239_Param, On_Param, At_Param),
               Maptime),
       (   not(holds_at(on(On_Param, At_Param), Maptime))
       ;   not(holds_at(at(Fn_239_Param, Location7), Maptime))
       ;   not(holds_at(at(On_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2899
axiom(not(some(Location7, '$kolem_Fn_239'(Fn_239_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(on(On_Param, At_Param), Maptime)),
      happens(takeOffOf(Fn_239_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_239'(Fn_239_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_239_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_239_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_239'(Fn_239_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(On_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_239_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_239'(Fn_239_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_239_Param, On_Param, At_Param),
              Maptime)
    ]).

 /*  not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)) :-
       (   not(holds_at(on(On_Param14, At_Param15), Maptime11))
       ;   not(holds_at(at(TakeOffOf_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(On_Param14, Location12), Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_239'(TakeOffOf_Param,
                            On_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(on(On_Param14, At_Param15), Maptime11)),
      some(Location12,
           '$kolem_Fn_239'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(TakeOffOf_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_239'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(On_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_239'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_239'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  holds_at(on(On_Param17, On_Ret), Time16) :-
       happens(takeOffOf(TakeOffOf_Param18, On_Param17, On_Ret),
               Time16),
       some(Some_Param,
            '$kolem_Fn_239'(TakeOffOf_Param18,
                            On_Param17,
                            On_Ret,
                            Time16)).
 */
axiom(holds_at(on(On_Param17, On_Ret), Time16),
   
    [ happens(takeOffOf(TakeOffOf_Param18, On_Param17, On_Ret),
              Time16),
      some(Some_Param,
           '$kolem_Fn_239'(TakeOffOf_Param18,
                           On_Param17,
                           On_Ret,
                           Time16))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(takeOffOf(At_Param23, A, TakeOffOf_Ret),
               Time22),
       some(Location21,
            '$kolem_Fn_239'(At_Param23,
                            A,
                            TakeOffOf_Ret,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(takeOffOf(At_Param23, A, TakeOffOf_Ret),
              Time22),
      some(Location21,
           '$kolem_Fn_239'(At_Param23,
                           A,
                           TakeOffOf_Ret,
                           Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(takeOffOf(TakeOffOf_Param28,
                         At_Param27,
                         TakeOffOf_Ret29),
               Time26),
       some(Location25,
            '$kolem_Fn_239'(TakeOffOf_Param28,
                            At_Param27,
                            TakeOffOf_Ret29,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(takeOffOf(TakeOffOf_Param28,
                        At_Param27,
                        TakeOffOf_Ret29),
              Time26),
      some(Location25,
           '$kolem_Fn_239'(TakeOffOf_Param28,
                           At_Param27,
                           TakeOffOf_Ret29,
                           Time26))
    ]).

 /*  holds_at(at(At_Param32, Location30), Time31) :-
       happens(takeOffOf(TakeOffOf_Param33, A, At_Param32),
               Time31),
       some(Location30,
            '$kolem_Fn_239'(TakeOffOf_Param33,
                            A,
                            At_Param32,
                            Time31)).
 */
axiom(holds_at(at(At_Param32, Location30), Time31),
   
    [ happens(takeOffOf(TakeOffOf_Param33, A, At_Param32),
              Time31),
      some(Location30,
           '$kolem_Fn_239'(TakeOffOf_Param33,
                           A,
                           At_Param32,
                           Time31))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2901
% [agent,physobj1,physobj2,location,time]
% Releases(PlaceOn(agent,physobj1,physobj2),
%          At(physobj1,location),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2904
axiom(releases(placeOn(Agent, Physobj1, Physobj2), at(Physobj1, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2906
% [physobj1,physobj2,location,time]
% HoldsAt(On(physobj1,physobj2),time) &
% HoldsAt(At(physobj2,location),time) ->
% HoldsAt(At(physobj1,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2909
axiom(holds_at(at(Physobj1, Location), Time),
   
    [ holds_at(on(Physobj1, Physobj2), Time),
      holds_at(at(Physobj2, Location), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2911
% fluent At(object,location)
 %  fluent(at(object,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2912
==> mpred_prop(at(object,location),fluent).
==> meta_argtypes(at(object,location)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2913
% [object,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2914
% {location} % HoldsAt(At(object,location),time).

 /*  exists([Location],
          holds_at(at(Object,Location),Time)).
 */

 /*  holds_at(at(At_Param, Location4), Time5) :-
       some(Location4, '$kolem_Fn_240'(At_Param, Time5)).
 */
axiom(holds_at(at(At_Param, Location4), Time5),
    [some(Location4, '$kolem_Fn_240'(At_Param, Time5))]).

 /*  not(some(Location7, '$kolem_Fn_240'(Fn_240_Param, Time8))) :-
       not(holds_at(at(Fn_240_Param, Location7), Time8)).
 */
axiom(not(some(Location7, '$kolem_Fn_240'(Fn_240_Param, Time8))),
    [not(holds_at(at(Fn_240_Param, Location7), Time8))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2916
% [object,location1,location2,time]
% HoldsAt(At(object,location1),time) &
% HoldsAt(At(object,location2),time) ->
% location1=location2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2919
axiom(Location1=Location2,
   
    [ holds_at(at(Object, Location1), Time),
      holds_at(at(Object, Location2), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2921
% function Side1(portal): location
 %  functional_predicate(side1(portal,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2922
==> mpred_prop(side1(portal,location),functional_predicate).
==> meta_argtypes(side1(portal,location)).
resultIsa(side1,location).

% function Side2(portal): location
 %  functional_predicate(side2(portal,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2923
==> mpred_prop(side2(portal,location),functional_predicate).
==> meta_argtypes(side2(portal,location)).
resultIsa(side2,location).

% fluent NearPortal(object,portal)
 %  fluent(nearPortal(object,portal)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2925
==> mpred_prop(nearPortal(object,portal),fluent).
==> meta_argtypes(nearPortal(object,portal)).

% noninertial NearPortal
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2926
==> noninertial(nearPortal).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2927
% [object,portal,time]
% HoldsAt(NearPortal(object,portal),time) <->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2929
% {location}% 
%  (Side1(portal)=location|
%   Side2(portal)=location) &
%  HoldsAt(At(object,location),time).

 /*   exists([Location],
             equiv(holds_at(nearPortal(Object, Portal), Time),
                    ((side1(Portal)=Location;side2(Portal)=Location), holds_at(at(Object, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_241'(Fn_241_Param, NearPortal_Ret, Time5))) :-
       (   holds_at(nearPortal(Fn_241_Param, NearPortal_Ret),
                    Time5),
           (   not(equals(side1(NearPortal_Ret), Location6)),
               not(equals(side2(NearPortal_Ret), Location6))
           ;   not(holds_at(at(Fn_241_Param, Location6), Time5))
           )
       ;   not(holds_at(nearPortal(Fn_241_Param, NearPortal_Ret),
                        Time5)),
           holds_at(at(Fn_241_Param, Location6), Time5),
           (   equals(side1(NearPortal_Ret), Location6)
           ;   equals(side2(NearPortal_Ret), Location6)
           )
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2932
axiom(not(some(Location6, '$kolem_Fn_241'(Fn_241_Param, NearPortal_Ret, Time5))),
   
    [ not(equals(side1(NearPortal_Ret), Location6)),
      not(equals(side2(NearPortal_Ret), Location6)),
      holds_at(nearPortal(Fn_241_Param, NearPortal_Ret),
               Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_241'(Fn_241_Param, NearPortal_Ret, Time5))),
   
    [ not(holds_at(at(Fn_241_Param, Location6), Time5)),
      holds_at(nearPortal(Fn_241_Param, NearPortal_Ret),
               Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_241'(Fn_241_Param, NearPortal_Ret, Time5))),
   
    [ equals(side1(NearPortal_Ret), Location6),
      not(holds_at(nearPortal(Fn_241_Param, NearPortal_Ret),
                   Time5)),
      holds_at(at(Fn_241_Param, Location6), Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_241'(Fn_241_Param, NearPortal_Ret, Time5))),
   
    [ equals(side2(NearPortal_Ret), Location6),
      not(holds_at(nearPortal(Fn_241_Param, NearPortal_Ret),
                   Time5)),
      holds_at(at(Fn_241_Param, Location6), Time5)
    ]).

 /*  not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)) :-
       (   not(equals(side1(NearPortal_Ret12), Location10)),
           not(equals(side2(NearPortal_Ret12), Location10))
       ;   not(holds_at(at(NearPortal_Param, Location10), Time9))
       ),
       some(Location10,
            '$kolem_Fn_241'(NearPortal_Param,
                            NearPortal_Ret12,
                            Time9)).
 */
axiom(not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)),
   
    [ not(equals(side1(NearPortal_Ret12), Location10)),
      not(equals(side2(NearPortal_Ret12), Location10)),
      some(Location10,
           '$kolem_Fn_241'(NearPortal_Param,
                           NearPortal_Ret12,
                           Time9))
    ]).
axiom(not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)),
   
    [ not(holds_at(at(NearPortal_Param, Location10), Time9)),
      some(Location10,
           '$kolem_Fn_241'(NearPortal_Param,
                           NearPortal_Ret12,
                           Time9))
    ]).

 /*  equals(side1(Side1_Ret), Some_Param) :-
       not(equals(side2(Side1_Ret), Some_Param)),
       holds_at(nearPortal(NearPortal_Param14, Side1_Ret),
                Time13),
       some(Some_Param,
            '$kolem_Fn_241'(NearPortal_Param14, Side1_Ret, Time13)).
 */
axiom(equals(side1(Side1_Ret), Some_Param),
   
    [ not(equals(side2(Side1_Ret), Some_Param)),
      holds_at(nearPortal(NearPortal_Param14, Side1_Ret),
               Time13),
      some(Some_Param,
           '$kolem_Fn_241'(NearPortal_Param14,
                           Side1_Ret,
                           Time13))
    ]).

 /*  equals(side2(Side2_Ret), Some_Param19) :-
       not(equals(side1(Side2_Ret), Some_Param19)),
       holds_at(nearPortal(NearPortal_Param18, Side2_Ret),
                Time17),
       some(Some_Param19,
            '$kolem_Fn_241'(NearPortal_Param18, Side2_Ret, Time17)).
 */
axiom(equals(side2(Side2_Ret), Some_Param19),
   
    [ not(equals(side1(Side2_Ret), Some_Param19)),
      holds_at(nearPortal(NearPortal_Param18, Side2_Ret),
               Time17),
      some(Some_Param19,
           '$kolem_Fn_241'(NearPortal_Param18,
                           Side2_Ret,
                           Time17))
    ]).

 /*  holds_at(at(At_Param, Location21), Time22) :-
       holds_at(nearPortal(At_Param, NearPortal_Ret24), Time22),
       some(Location21,
            '$kolem_Fn_241'(At_Param, NearPortal_Ret24, Time22)).
 */
axiom(holds_at(at(At_Param, Location21), Time22),
   
    [ holds_at(nearPortal(At_Param, NearPortal_Ret24), Time22),
      some(Location21,
           '$kolem_Fn_241'(At_Param, NearPortal_Ret24, Time22))
    ]).

 /*  holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25) :-
       ( holds_at(at(NearPortal_Param27, Location26), Time25),
         (   equals(side1(NearPortal_Ret28), Location26)
         ;   equals(side2(NearPortal_Ret28), Location26)
         )
       ),
       some(Location26,
            '$kolem_Fn_241'(NearPortal_Param27,
                            NearPortal_Ret28,
                            Time25)).
 */
axiom(holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25),
   
    [ equals(side1(NearPortal_Ret28), Location26),
      holds_at(at(NearPortal_Param27, Location26), Time25),
      some(Location26,
           '$kolem_Fn_241'(NearPortal_Param27,
                           NearPortal_Ret28,
                           Time25))
    ]).
axiom(holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25),
   
    [ equals(side2(NearPortal_Ret28), Location26),
      holds_at(at(NearPortal_Param27, Location26), Time25),
      some(Location26,
           '$kolem_Fn_241'(NearPortal_Param27,
                           NearPortal_Ret28,
                           Time25))
    ]).

 /*  not(holds_at(at(At_Param31, Location29), Time30)) :-
       (   equals(side1(Side1_Ret32), Location29)
       ;   equals(side2(Side1_Ret32), Location29)
       ),
       not(holds_at(nearPortal(At_Param31, Side1_Ret32), Time30)),
       some(Location29,
            '$kolem_Fn_241'(At_Param31, Side1_Ret32, Time30)).
 */
axiom(not(holds_at(at(At_Param31, Location29), Time30)),
   
    [ equals(side1(Side1_Ret32), Location29),
      not(holds_at(nearPortal(At_Param31, Side1_Ret32),
                   Time30)),
      some(Location29,
           '$kolem_Fn_241'(At_Param31, Side1_Ret32, Time30))
    ]).
axiom(not(holds_at(at(At_Param31, Location29), Time30)),
   
    [ equals(side2(Side1_Ret32), Location29),
      not(holds_at(nearPortal(At_Param31, Side1_Ret32),
                   Time30)),
      some(Location29,
           '$kolem_Fn_241'(At_Param31, Side1_Ret32, Time30))
    ]).

 /*  not(equals(side1(Side1_Ret36), Location33)) :-
       holds_at(at(At_Param35, Location33), Time34),
       not(holds_at(nearPortal(At_Param35, Side1_Ret36), Time34)),
       some(Location33,
            '$kolem_Fn_241'(At_Param35, Side1_Ret36, Time34)).
 */
axiom(not(equals(side1(Side1_Ret36), Location33)),
   
    [ holds_at(at(At_Param35, Location33), Time34),
      not(holds_at(nearPortal(At_Param35, Side1_Ret36),
                   Time34)),
      some(Location33,
           '$kolem_Fn_241'(At_Param35, Side1_Ret36, Time34))
    ]).

 /*  not(equals(side2(Side2_Ret40), Location37)) :-
       holds_at(at(At_Param39, Location37), Time38),
       not(holds_at(nearPortal(At_Param39, Side2_Ret40), Time38)),
       some(Location37,
            '$kolem_Fn_241'(At_Param39, Side2_Ret40, Time38)).
 */
axiom(not(equals(side2(Side2_Ret40), Location37)),
   
    [ holds_at(at(At_Param39, Location37), Time38),
      not(holds_at(nearPortal(At_Param39, Side2_Ret40),
                   Time38)),
      some(Location37,
           '$kolem_Fn_241'(At_Param39, Side2_Ret40, Time38))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2934
% event WalkThroughDoor12(agent,door)
 %  event(walkThroughDoor12(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2935
==> mpred_prop(walkThroughDoor12(agent,door),event).
==> meta_argtypes(walkThroughDoor12(agent,door)).

% event WalkThroughDoor21(agent,door)
 %  event(walkThroughDoor21(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2936
==> mpred_prop(walkThroughDoor21(agent,door),event).
==> meta_argtypes(walkThroughDoor21(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2937
% [agent,door,time]
% Happens(WalkThroughDoor12(agent,door),time) ->
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side1(door)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2940
axiom(requires(walkThroughDoor12(Agent, Door), Time),
   
    [ holds_at(standing(Agent), Time),
      holds_at(at(Agent, side1(Door)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2942
% [agent,door,time]
% Happens(WalkThroughDoor21(agent,door),time) ->
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side2(door)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2945
axiom(requires(walkThroughDoor21(Agent, Door), Time),
   
    [ holds_at(standing(Agent), Time),
      holds_at(at(Agent, side2(Door)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2947
% [agent,door,location,time]
% Side2(door)=location ->
% Initiates(WalkThroughDoor12(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2949
axiom(initiates(walkThroughDoor12(Agent, Door), at(Agent, Location), Time),
    [equals(side2(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2951
% [agent,door,location,time]
% Side1(door)=location ->
% Initiates(WalkThroughDoor21(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2953
axiom(initiates(walkThroughDoor21(Agent, Door), at(Agent, Location), Time),
    [equals(side1(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2955
% [agent,door,location,time]
% Side1(door)=location ->
% Terminates(WalkThroughDoor12(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2957
axiom(terminates(walkThroughDoor12(Agent, Door), at(Agent, Location), Time),
    [equals(side1(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2959
% [agent,door,location,time]
% Side2(door)=location ->
% Terminates(WalkThroughDoor21(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2961
axiom(terminates(walkThroughDoor21(Agent, Door), at(Agent, Location), Time),
    [equals(side2(Door), Location)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2963
% fluent Hungry(agent)
 %  fluent(hungry(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2964
==> mpred_prop(hungry(agent),fluent).
==> meta_argtypes(hungry(agent)).

% fluent Satiated(agent)
 %  fluent(satiated(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2966
==> mpred_prop(satiated(agent),fluent).
==> meta_argtypes(satiated(agent)).

% noninertial Satiated
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2967
==> noninertial(satiated).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2968
% [agent,time]
 % HoldsAt(Hungry(agent),time) <-> !HoldsAt(Satiated(agent),time).

 /*  holds_at(hungry(Agent), Time) <->
       not(holds_at(satiated(Agent), Time)).
 */
axiom(holds_at(hungry(Agent), Time),
    [not(holds_at(satiated(Agent), Time))]).
axiom(not(holds_at(satiated(Agent), Time)),
    [holds_at(hungry(Agent), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2970
% event Eat(agent,food)
 %  event(eat(agent,food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2971
==> mpred_prop(eat(agent,food),event).
==> meta_argtypes(eat(agent,food)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2972
% [agent,food,time]
% Happens(Eat(agent,food),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2974
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(food,location),time).

 /*   exists([Location],
             if(happens(eat(Agent, Food), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Food, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_242'(Fn_242_Param, At_Param, Maptime))) :-
       happens(eat(Fn_242_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_242_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2976
axiom(not(some(Location6, '$kolem_Fn_242'(Fn_242_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_242_Param, Location6), Maptime)),
      happens(eat(Fn_242_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_242'(Fn_242_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(eat(Fn_242_Param, At_Param), Maptime)
    ]).

 /*  not(happens(eat(Eat_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(Eat_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_242'(Eat_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(eat(Eat_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(Eat_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_242'(Eat_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(eat(Eat_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_242'(Eat_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(eat(At_Param15, Eat_Ret), Time14),
       some(Location13,
            '$kolem_Fn_242'(At_Param15, Eat_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(eat(At_Param15, Eat_Ret), Time14),
      some(Location13,
           '$kolem_Fn_242'(At_Param15, Eat_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(eat(Eat_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_242'(Eat_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(eat(Eat_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_242'(Eat_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2978
% [agent,food,time]
% Terminates(Eat(agent,food),Hungry(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2979
axiom(terminates(eat(Agent, Food), hungry(Agent), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2981
% sort restaurant: script
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2982
==> subsort(restaurant,script).

% sort waiter: agent
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2983
==> subsort(waiter,agent).

% sort cook: agent
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2984
==> subsort(cook,agent).

% function BillOf(restaurant): bill
 %  functional_predicate(billOf(restaurant,bill)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2986
==> mpred_prop(billOf(restaurant,bill),functional_predicate).
==> meta_argtypes(billOf(restaurant,bill)).
resultIsa(billOf,bill).

% function CookOf(restaurant): cook
 %  functional_predicate(cookOf(restaurant,cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2987
==> mpred_prop(cookOf(restaurant,cook),functional_predicate).
==> meta_argtypes(cookOf(restaurant,cook)).
resultIsa(cookOf,cook).

% function TableOf(restaurant): table
 %  functional_predicate(tableOf(restaurant,table)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2988
==> mpred_prop(tableOf(restaurant,table),functional_predicate).
==> meta_argtypes(tableOf(restaurant,table)).
resultIsa(tableOf,table).

% function WaiterOf(restaurant): waiter
 %  functional_predicate(waiterOf(restaurant,waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2989
==> mpred_prop(waiterOf(restaurant,waiter),functional_predicate).
==> meta_argtypes(waiterOf(restaurant,waiter)).
resultIsa(waiterOf,waiter).

% function KitchenDoorOf(restaurant): door
 %  functional_predicate(kitchenDoorOf(restaurant,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2990
==> mpred_prop(kitchenDoorOf(restaurant,door),functional_predicate).
==> meta_argtypes(kitchenDoorOf(restaurant,door)).
resultIsa(kitchenDoorOf,door).

% fluent BeWaiter0(waiter)
 %  fluent(beWaiter0(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2992
==> mpred_prop(beWaiter0(waiter),fluent).
==> meta_argtypes(beWaiter0(waiter)).

% fluent BeWaiter1(waiter)
 %  fluent(beWaiter1(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2994
==> mpred_prop(beWaiter1(waiter),fluent).
==> meta_argtypes(beWaiter1(waiter)).

% fluent BeWaiter2(waiter)
 %  fluent(beWaiter2(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2996
==> mpred_prop(beWaiter2(waiter),fluent).
==> meta_argtypes(beWaiter2(waiter)).

% fluent BeWaiter3(waiter)
 %  fluent(beWaiter3(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:2998
==> mpred_prop(beWaiter3(waiter),fluent).
==> meta_argtypes(beWaiter3(waiter)).

% fluent BeWaiter4(waiter)
 %  fluent(beWaiter4(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3000
==> mpred_prop(beWaiter4(waiter),fluent).
==> meta_argtypes(beWaiter4(waiter)).

% fluent BeWaiter5(waiter)
 %  fluent(beWaiter5(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3002
==> mpred_prop(beWaiter5(waiter),fluent).
==> meta_argtypes(beWaiter5(waiter)).

% fluent BeWaiter6(waiter)
 %  fluent(beWaiter6(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3004
==> mpred_prop(beWaiter6(waiter),fluent).
==> meta_argtypes(beWaiter6(waiter)).

% fluent BeWaiter7(waiter)
 %  fluent(beWaiter7(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3006
==> mpred_prop(beWaiter7(waiter),fluent).
==> meta_argtypes(beWaiter7(waiter)).

% fluent BeWaiter8(waiter)
 %  fluent(beWaiter8(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3008
==> mpred_prop(beWaiter8(waiter),fluent).
==> meta_argtypes(beWaiter8(waiter)).

% fluent BeWaiter9(waiter)
 %  fluent(beWaiter9(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3010
==> mpred_prop(beWaiter9(waiter),fluent).
==> meta_argtypes(beWaiter9(waiter)).

% xor BeWaiter0, BeWaiter1, BeWaiter2, BeWaiter3, BeWaiter4, BeWaiter5, BeWaiter6, BeWaiter7, BeWaiter8, BeWaiter9
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3012
xor([ beWaiter0,
      beWaiter1,
      beWaiter2,
      beWaiter3,
      beWaiter4,
      beWaiter5,
      beWaiter6,
      beWaiter7,
      beWaiter8,
      beWaiter9
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3013
% [waiter,agent,time]
% HoldsAt(BeWaiter0(waiter),time) ->
% Terminates(Greet(waiter,agent),
%            BeWaiter0(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3017
axiom(terminates(greet(Waiter, Agent), beWaiter0(Waiter), Time),
    [holds_at(beWaiter0(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3019
% [waiter,agent,time]
% HoldsAt(BeWaiter0(waiter),time) ->
% Initiates(Greet(waiter,agent),
%           BeWaiter1(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3023
axiom(initiates(greet(Waiter, Agent), beWaiter1(Waiter), Time),
    [holds_at(beWaiter0(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3025
% [waiter,agent,food,time]
% HoldsAt(BeWaiter1(waiter),time) ->
% Terminates(Order(agent,waiter,food),
%            BeWaiter1(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3029
axiom(terminates(order(Agent, Waiter, Food), beWaiter1(Waiter), Time),
    [holds_at(beWaiter1(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3031
% [waiter,agent,food,time]
% HoldsAt(BeWaiter1(waiter),time) ->
% Initiates(Order(agent,waiter,food),
%           BeWaiter2(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3035
axiom(initiates(order(Agent, Waiter, Food), beWaiter2(Waiter), Time),
    [holds_at(beWaiter1(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3037
% [restaurant,waiter,time]
% WaiterOf(restaurant)=waiter &
% HoldsAt(BeWaiter2(waiter),time) ->
% Happens(WalkThroughDoor12(waiter,KitchenDoorOf(restaurant)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3040
axiom(happens(walkThroughDoor12(Waiter, kitchenDoorOf(Restaurant)), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      holds_at(beWaiter2(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3042
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter2(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Terminates(WalkThroughDoor12(waiter,door),
%            BeWaiter2(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3048
axiom(terminates(walkThroughDoor12(Waiter, Door), beWaiter2(Waiter), Time),
   
    [ holds_at(beWaiter2(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3050
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter2(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Initiates(WalkThroughDoor12(waiter,door),
%           BeWaiter3(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3056
axiom(initiates(walkThroughDoor12(Waiter, Door), beWaiter3(Waiter), Time),
   
    [ holds_at(beWaiter2(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3058
% [restaurant,food,time]
% HoldsAt(BeWaiter3(WaiterOf(restaurant)),time) &
% ({agent} HoldsAt(KnowOrder(WaiterOf(restaurant),agent,food),time)) ->
% Happens(Order(WaiterOf(restaurant),CookOf(restaurant),food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3061
axiom(happens(order(waiterOf(Restaurant), cookOf(Restaurant), Food), Time),
   
    [ holds_at(beWaiter3(waiterOf(Restaurant)), Time),
      holds_at(knowOrder(waiterOf(Restaurant), Agent, Food),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3063
% [restaurant,waiter,cook,food,time]
% WaiterOf(restaurant)=waiter &
% CookOf(restaurant)=cook &
% HoldsAt(BeWaiter3(waiter),time) ->
% Terminates(Order(waiter,cook,food),
%            BeWaiter3(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3069
axiom(terminates(order(Waiter, Cook, Food), beWaiter3(Waiter), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(cookOf(Restaurant), Cook),
      holds_at(beWaiter3(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3071
% [restaurant,waiter,cook,food,time]
% WaiterOf(restaurant)=waiter &
% CookOf(restaurant)=cook &
% HoldsAt(BeWaiter3(waiter),time) ->
% Initiates(Order(waiter,cook,food),
%           BeWaiter4(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3077
axiom(initiates(order(Waiter, Cook, Food), beWaiter4(Waiter), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(cookOf(Restaurant), Cook),
      holds_at(beWaiter3(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3079
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) &
% HoldsAt(FoodPrepared(food),time) ->
% Happens(PickUp(waiter,food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3083
axiom(happens(pickUp(Waiter, Food), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time),
      holds_at(foodPrepared(Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3085
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) ->
% Terminates(PickUp(waiter,food),
%            BeWaiter4(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3090
axiom(terminates(pickUp(Waiter, Food), beWaiter4(Waiter), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3092
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) ->
% Initiates(PickUp(waiter,food),
%           BeWaiter5(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3097
axiom(initiates(pickUp(Waiter, Food), beWaiter5(Waiter), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3099
% [restaurant,waiter,time]
% WaiterOf(restaurant)=waiter &
% HoldsAt(BeWaiter5(waiter),time) ->
% Happens(WalkThroughDoor21(waiter,KitchenDoorOf(restaurant)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3102
axiom(happens(walkThroughDoor21(Waiter, kitchenDoorOf(Restaurant)), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      holds_at(beWaiter5(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3104
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter5(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Terminates(WalkThroughDoor21(waiter,door),
%            BeWaiter5(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3110
axiom(terminates(walkThroughDoor21(Waiter, Door), beWaiter5(Waiter), Time),
   
    [ holds_at(beWaiter5(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3112
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter5(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Initiates(WalkThroughDoor21(waiter,door),
%           BeWaiter6(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3118
axiom(initiates(walkThroughDoor21(Waiter, Door), beWaiter6(Waiter), Time),
   
    [ holds_at(beWaiter5(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3120
% [restaurant,waiter,table,food,time]
% WaiterOf(restaurant)=waiter &
% TableOf(restaurant)=table &
% HoldsAt(BeWaiter6(waiter),time) &
% HoldsAt(Holding(waiter,food),time) ->
% Happens(PlaceOn(waiter,food,table),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3125
axiom(happens(placeOn(Waiter, Food, Table), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(tableOf(Restaurant), Table),
      holds_at(beWaiter6(Waiter), Time),
      holds_at(holding(Waiter, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3127
% [waiter,food,table,time]
% HoldsAt(BeWaiter6(waiter),time) ->
% Terminates(PlaceOn(waiter,food,table),
%            BeWaiter6(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3131
axiom(terminates(placeOn(Waiter, Food, Table), beWaiter6(Waiter), Time),
    [holds_at(beWaiter6(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3133
% [waiter,food,table,time]
% HoldsAt(BeWaiter6(waiter),time) ->
% Initiates(PlaceOn(waiter,food,table),
%           BeWaiter7(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3137
axiom(initiates(placeOn(Waiter, Food, Table), beWaiter7(Waiter), Time),
    [holds_at(beWaiter6(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3139
% [waiter,agent,bill,time]
% HoldsAt(BeWaiter7(waiter),time) ->
% Terminates(Request(agent,waiter,bill),
%            BeWaiter7(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3143
axiom(terminates(request(Agent, Waiter, Bill), beWaiter7(Waiter), Time),
    [holds_at(beWaiter7(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3145
% [waiter,agent,bill,time]
% HoldsAt(BeWaiter7(waiter),time) ->
% Initiates(Request(agent,waiter,bill),
%           BeWaiter8(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3149
axiom(initiates(request(Agent, Waiter, Bill), beWaiter8(Waiter), Time),
    [holds_at(beWaiter7(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3151
% [restaurant,waiter,bill,time]
% WaiterOf(restaurant)=waiter &
% BillOf(restaurant)=bill &
% HoldsAt(BeWaiter8(waiter),time) ->
% Happens(PickUp(waiter,bill),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3155
axiom(happens(pickUp(Waiter, Bill), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(billOf(Restaurant), Bill),
      holds_at(beWaiter8(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3157
% [waiter,bill,time]
% HoldsAt(BeWaiter8(waiter),time) ->
% Terminates(PickUp(waiter,bill),
%            BeWaiter8(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3161
axiom(terminates(pickUp(Waiter, Bill), beWaiter8(Waiter), Time),
    [holds_at(beWaiter8(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3163
% [waiter,bill,time]
% HoldsAt(BeWaiter8(waiter),time) ->
% Initiates(PickUp(waiter,bill),
%           BeWaiter9(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3167
axiom(initiates(pickUp(Waiter, Bill), beWaiter9(Waiter), Time),
    [holds_at(beWaiter8(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3169
% [restaurant,waiter,bill,table,time]
% WaiterOf(restaurant)=waiter &
% BillOf(restaurant)=bill &
% TableOf(restaurant)=table &
% HoldsAt(BeWaiter9(waiter),time) ->
% Happens(PlaceOn(waiter,bill,table),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3174
axiom(happens(placeOn(Waiter, Bill, Table), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(billOf(Restaurant), Bill),
      equals(tableOf(Restaurant), Table),
      holds_at(beWaiter9(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3176
% [waiter,bill,table,time]
% HoldsAt(BeWaiter9(waiter),time) ->
% Terminates(PlaceOn(waiter,bill,table),
%            BeWaiter9(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3180
axiom(terminates(placeOn(Waiter, Bill, Table), beWaiter9(Waiter), Time),
    [holds_at(beWaiter9(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3182
% [waiter,bill,table,time]
% HoldsAt(BeWaiter9(waiter),time) ->
% Initiates(PlaceOn(waiter,bill,table),
%           BeWaiter0(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3186
axiom(initiates(placeOn(Waiter, Bill, Table), beWaiter0(Waiter), Time),
    [holds_at(beWaiter9(Waiter), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3188
% fluent BeCook0(cook)
 %  fluent(beCook0(cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3189
==> mpred_prop(beCook0(cook),fluent).
==> meta_argtypes(beCook0(cook)).

% fluent BeCook1(cook)
 %  fluent(beCook1(cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3191
==> mpred_prop(beCook1(cook),fluent).
==> meta_argtypes(beCook1(cook)).

% xor BeCook0, BeCook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3193
xor([beCook0,beCook1]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3194
% [cook,agent,food,time]
% HoldsAt(BeCook0(cook),time) ->
% Terminates(Order(agent,cook,food),
%            BeCook0(cook),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3198
axiom(terminates(order(Agent, Cook, Food), beCook0(Cook), Time),
    [holds_at(beCook0(Cook), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3200
% [cook,agent,food,time]
% HoldsAt(BeCook0(cook),time) ->
% Initiates(Order(agent,cook,food),
%           BeCook1(cook),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3204
axiom(initiates(order(Agent, Cook, Food), beCook1(Cook), Time),
    [holds_at(beCook0(Cook), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3206
% event FoodPrepare(agent,food)
 %  event(foodPrepare(agent,food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3207
==> mpred_prop(foodPrepare(agent,food),event).
==> meta_argtypes(foodPrepare(agent,food)).

% fluent FoodPrepared(food)
 %  fluent(foodPrepared(food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3209
==> mpred_prop(foodPrepared(food),fluent).
==> meta_argtypes(foodPrepared(food)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3210
% [agent,food,time]
% Initiates(FoodPrepare(agent,food),
%           FoodPrepared(food),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3213
axiom(initiates(foodPrepare(Agent, Food), foodPrepared(Food), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3215
% [agent,food,time]
% Happens(FoodPrepare(agent,food),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3217
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(food,location),time).

 /*   exists([Location],
             if(happens(foodPrepare(Agent, Food), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Food, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_247'(Fn_247_Param, At_Param, Maptime))) :-
       happens(foodPrepare(Fn_247_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_247_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3219
axiom(not(some(Location6, '$kolem_Fn_247'(Fn_247_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_247_Param, Location6), Maptime)),
      happens(foodPrepare(Fn_247_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_247'(Fn_247_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(foodPrepare(Fn_247_Param, At_Param), Maptime)
    ]).

 /*  not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(FoodPrepare_Param, Location10),
                        Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_247'(FoodPrepare_Param,
                            At_Param12,
                            Maptime9)).
 */
axiom(not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(FoodPrepare_Param, Location10),
                   Maptime9)),
      some(Location10,
           '$kolem_Fn_247'(FoodPrepare_Param,
                           At_Param12,
                           Maptime9))
    ]).
axiom(not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_247'(FoodPrepare_Param,
                           At_Param12,
                           Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(foodPrepare(At_Param15, FoodPrepare_Ret), Time14),
       some(Location13,
            '$kolem_Fn_247'(At_Param15, FoodPrepare_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(foodPrepare(At_Param15, FoodPrepare_Ret),
              Time14),
      some(Location13,
           '$kolem_Fn_247'(At_Param15, FoodPrepare_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(foodPrepare(FoodPrepare_Param20, At_Param19),
               Time18),
       some(Location17,
            '$kolem_Fn_247'(FoodPrepare_Param20,
                            At_Param19,
                            Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(foodPrepare(FoodPrepare_Param20, At_Param19),
              Time18),
      some(Location17,
           '$kolem_Fn_247'(FoodPrepare_Param20,
                           At_Param19,
                           Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3221
% [cook,agent,food,time]
% HoldsAt(BeCook1(cook),time) &
% HoldsAt(KnowOrder(cook,agent,food),time) ->
% Happens(FoodPrepare(cook,food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3224
axiom(happens(foodPrepare(Cook, Food), Time),
   
    [ holds_at(beCook1(Cook), Time),
      holds_at(knowOrder(Cook, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3226
% [cook,food,time]
% HoldsAt(BeCook1(cook),time) ->
% Terminates(FoodPrepare(cook,food),
%            BeCook1(cook),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3230
axiom(terminates(foodPrepare(Cook, Food), beCook1(Cook), Time),
    [holds_at(beCook1(Cook), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3232
% [cook,food,time]
% HoldsAt(BeCook1(cook),time) ->
% Initiates(FoodPrepare(cook,food),
%           BeCook0(cook),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3236
axiom(initiates(foodPrepare(Cook, Food), beCook0(Cook), Time),
    [holds_at(beCook1(Cook), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3238
% event Pay(agent,agent)
 %  event(pay(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3239
==> mpred_prop(pay(agent,agent),event).
==> meta_argtypes(pay(agent,agent)).

% event Tip(agent,agent)
 %  event(tip(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3241
==> mpred_prop(tip(agent,agent),event).
==> meta_argtypes(tip(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3242
% [agent,physobj,time]
% Happens(LieOn(agent,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3244
% {room}% 
%  HoldsAt(At(agent,room),time) &
%  HoldsAt(At(physobj,room),time).

 /*   exists([Room],
             if(happens(lieOn(Agent, Physobj), Time),
                 (holds_at(at(Agent, Room), Time), holds_at(at(Physobj, Room), Time)))).
 */

 /*  not(some(Location, '$kolem_Fn_248'(Fn_248_Param, At_Param, Maptime))) :-
       happens(lieOn(Fn_248_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_248_Param, Location), Maptime))
       ;   not(holds_at(at(At_Param, Location), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3246
axiom(not(some(Location, '$kolem_Fn_248'(Fn_248_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_248_Param, Location), Maptime)),
      happens(lieOn(Fn_248_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location, '$kolem_Fn_248'(Fn_248_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location), Maptime)),
      happens(lieOn(Fn_248_Param, At_Param), Maptime)
    ]).

 /*  not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(LieOn_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_248'(LieOn_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(LieOn_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_248'(LieOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_248'(LieOn_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(lieOn(At_Param15, LieOn_Ret), Time14),
       some(Location13,
            '$kolem_Fn_248'(At_Param15, LieOn_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(lieOn(At_Param15, LieOn_Ret), Time14),
      some(Location13,
           '$kolem_Fn_248'(At_Param15, LieOn_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(lieOn(LieOn_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_248'(LieOn_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(lieOn(LieOn_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_248'(LieOn_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3248
% [agent,physobj,time]
% Happens(SitOn(agent,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3250
% {room}% 
%  HoldsAt(At(agent,room),time) &
%  HoldsAt(At(physobj,room),time).

 /*   exists([Room],
             if(happens(sitOn(Agent, Physobj), Time),
                 (holds_at(at(Agent, Room), Time), holds_at(at(Physobj, Room), Time)))).
 */

 /*  not(some(Location, '$kolem_Fn_249'(Fn_249_Param, At_Param, Maptime))) :-
       happens(sitOn(Fn_249_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_249_Param, Location), Maptime))
       ;   not(holds_at(at(At_Param, Location), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3252
axiom(not(some(Location, '$kolem_Fn_249'(Fn_249_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_249_Param, Location), Maptime)),
      happens(sitOn(Fn_249_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location, '$kolem_Fn_249'(Fn_249_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location), Maptime)),
      happens(sitOn(Fn_249_Param, At_Param), Maptime)
    ]).

 /*  not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(SitOn_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_249'(SitOn_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(SitOn_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_249'(SitOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_249'(SitOn_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(sitOn(At_Param15, SitOn_Ret), Time14),
       some(Location13,
            '$kolem_Fn_249'(At_Param15, SitOn_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(sitOn(At_Param15, SitOn_Ret), Time14),
      some(Location13,
           '$kolem_Fn_249'(At_Param15, SitOn_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(sitOn(SitOn_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_249'(SitOn_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(sitOn(SitOn_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_249'(SitOn_Param20, At_Param19, Time18))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3254
% event LieOn(agent,physobj)
 %  event(lieOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3255
==> mpred_prop(lieOn(agent,physobj),event).
==> meta_argtypes(lieOn(agent,physobj)).

% event SitOn(agent,physobj)
 %  event(sitOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3257
==> mpred_prop(sitOn(agent,physobj),event).
==> meta_argtypes(sitOn(agent,physobj)).

% event RiseFrom(agent,physobj)
 %  event(riseFrom(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3259
==> mpred_prop(riseFrom(agent,physobj),event).
==> meta_argtypes(riseFrom(agent,physobj)).

% fluent LyingOn(agent,physobj)
 %  fluent(lyingOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3261
==> mpred_prop(lyingOn(agent,physobj),fluent).
==> meta_argtypes(lyingOn(agent,physobj)).

% fluent SittingOn(agent,physobj)
 %  fluent(sittingOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3262
==> mpred_prop(sittingOn(agent,physobj),fluent).
==> meta_argtypes(sittingOn(agent,physobj)).

% fluent Standing(agent)
 %  fluent(standing(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3263
==> mpred_prop(standing(agent),fluent).
==> meta_argtypes(standing(agent)).

% fluent Lying(agent)
 %  fluent(lying(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3265
==> mpred_prop(lying(agent),fluent).
==> meta_argtypes(lying(agent)).

% fluent Sitting(agent)
 %  fluent(sitting(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3266
==> mpred_prop(sitting(agent),fluent).
==> meta_argtypes(sitting(agent)).

% noninertial Lying
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3267
==> noninertial(lying).

% noninertial Sitting
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3268
==> noninertial(sitting).

% xor Lying, Sitting, Standing
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3270
xor([lying,sitting,standing]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3271
% [agent,physobj,time]
% HoldsAt(LyingOn(agent,physobj),time) ->
% HoldsAt(Lying(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3273
axiom(holds_at(lying(Agent), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3275
% [agent,physobj,time]
% HoldsAt(SittingOn(agent,physobj),time) ->
% HoldsAt(Sitting(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3277
axiom(holds_at(sitting(Agent), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3279
% [agent,physobj1,physobj2,time]
% HoldsAt(LyingOn(agent,physobj1),time) &
% HoldsAt(LyingOn(agent,physobj2),time) ->
% physobj1=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3282
axiom(Physobj1=Physobj2,
   
    [ holds_at(lyingOn(Agent, Physobj1), Time),
      holds_at(lyingOn(Agent, Physobj2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3284
% [agent,physobj1,physobj2,time]
% HoldsAt(SittingOn(agent,physobj1),time) &
% HoldsAt(SittingOn(agent,physobj2),time) ->
% physobj1=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3287
axiom(Physobj1=Physobj2,
   
    [ holds_at(sittingOn(Agent, Physobj1), Time),
      holds_at(sittingOn(Agent, Physobj2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3289
% [agent,physobj,time]
% HoldsAt(Standing(agent),time) ->
% Initiates(LieOn(agent,physobj),
%           LyingOn(agent,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3293
axiom(initiates(lieOn(Agent, Physobj), lyingOn(Agent, Physobj), Time),
    [holds_at(standing(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3295
% [agent,physobj,time]
% Terminates(LieOn(agent,physobj),
%            Standing(agent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3298
axiom(terminates(lieOn(Agent, Physobj), standing(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3300
% [agent,physobj,time]
% HoldsAt(Standing(agent),time) ->
% Initiates(SitOn(agent,physobj),
%           SittingOn(agent,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3304
axiom(initiates(sitOn(Agent, Physobj), sittingOn(Agent, Physobj), Time),
    [holds_at(standing(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3306
% [agent,physobj,time]
% Terminates(SitOn(agent,physobj),
%            Standing(agent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3309
axiom(terminates(sitOn(Agent, Physobj), standing(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3311
% [agent,physobj,time]
% (HoldsAt(SittingOn(agent,physobj),time) |
%  HoldsAt(LyingOn(agent,physobj),time)) ->
% Initiates(RiseFrom(agent,physobj),
%           Standing(agent),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3316
axiom(initiates(riseFrom(Agent, Physobj), standing(Agent), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).
axiom(initiates(riseFrom(Agent, Physobj), standing(Agent), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3318
% [agent,physobj,time]
% HoldsAt(LyingOn(agent,physobj),time) ->
% Terminates(RiseFrom(agent,physobj),
%            LyingOn(agent,physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3322
axiom(terminates(riseFrom(Agent, Physobj), lyingOn(Agent, Physobj), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3324
% [agent,physobj,time]
% HoldsAt(SittingOn(agent,physobj),time) ->
% Terminates(RiseFrom(agent,physobj),
%            SittingOn(agent,physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3328
axiom(terminates(riseFrom(Agent, Physobj), sittingOn(Agent, Physobj), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3330
% event Greet(agent,agent)
 %  event(greet(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3331
==> mpred_prop(greet(agent,agent),event).
==> meta_argtypes(greet(agent,agent)).

% event SayGoodbye(agent,agent)
 %  event(sayGoodbye(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3333
==> mpred_prop(sayGoodbye(agent,agent),event).
==> meta_argtypes(sayGoodbye(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3334
% [agent1,agent2,time]
% Happens(Greet(agent1,agent2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3336
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(greet(Agent1, Agent2), Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_250'(Fn_250_Param, At_Param, Maptime))) :-
       happens(greet(Fn_250_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_250_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3338
axiom(not(some(Location6, '$kolem_Fn_250'(Fn_250_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_250_Param, Location6), Maptime)),
      happens(greet(Fn_250_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_250'(Fn_250_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(greet(Fn_250_Param, At_Param), Maptime)
    ]).

 /*  not(happens(greet(Greet_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(Greet_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_250'(Greet_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(greet(Greet_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(Greet_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_250'(Greet_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(greet(Greet_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_250'(Greet_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(greet(At_Param15, Greet_Ret), Time14),
       some(Location13,
            '$kolem_Fn_250'(At_Param15, Greet_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(greet(At_Param15, Greet_Ret), Time14),
      some(Location13,
           '$kolem_Fn_250'(At_Param15, Greet_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(greet(Greet_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_250'(Greet_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(greet(Greet_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_250'(Greet_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3340
% [agent1,agent2,time]
% Happens(SayGoodbye(agent1,agent2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3342
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(sayGoodbye(Agent1, Agent2), Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_251'(Fn_251_Param, At_Param, Maptime))) :-
       happens(sayGoodbye(Fn_251_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_251_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3344
axiom(not(some(Location6, '$kolem_Fn_251'(Fn_251_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_251_Param, Location6), Maptime)),
      happens(sayGoodbye(Fn_251_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_251'(Fn_251_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(sayGoodbye(Fn_251_Param, At_Param), Maptime)
    ]).

 /*  not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(SayGoodbye_Param, Location10),
                        Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_251'(SayGoodbye_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(SayGoodbye_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_251'(SayGoodbye_Param,
                           At_Param12,
                           Maptime9))
    ]).
axiom(not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_251'(SayGoodbye_Param,
                           At_Param12,
                           Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(sayGoodbye(At_Param15, SayGoodbye_Ret), Time14),
       some(Location13,
            '$kolem_Fn_251'(At_Param15, SayGoodbye_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(sayGoodbye(At_Param15, SayGoodbye_Ret), Time14),
      some(Location13,
           '$kolem_Fn_251'(At_Param15, SayGoodbye_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(sayGoodbye(SayGoodbye_Param20, At_Param19),
               Time18),
       some(Location17,
            '$kolem_Fn_251'(SayGoodbye_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(sayGoodbye(SayGoodbye_Param20, At_Param19),
              Time18),
      some(Location17,
           '$kolem_Fn_251'(SayGoodbye_Param20,
                           At_Param19,
                           Time18))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3346
% event Order(agent,agent,physobj)
 %  event(order(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3347
==> mpred_prop(order(agent,agent,physobj),event).
==> meta_argtypes(order(agent,agent,physobj)).

% fluent KnowOrder(agent,agent,physobj)
 %  fluent(knowOrder(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3349
==> mpred_prop(knowOrder(agent,agent,physobj),fluent).
==> meta_argtypes(knowOrder(agent,agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3350
% [agent1,agent2,physobj,time]
% Initiates(Order(agent1,agent2,physobj),
%           KnowOrder(agent2,agent1,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3353
axiom(initiates(order(Agent1, Agent2, Physobj), knowOrder(Agent2, Agent1, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3355
% [agent1,agent2,physobj,time]
% Happens(Order(agent1,agent2,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3357
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(order(Agent1, Agent2, Physobj),
                        Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_252'(Fn_252_Param, At_Param, Order_Ret, Maptime))) :-
       happens(order(Fn_252_Param, At_Param, Order_Ret),
               Maptime),
       (   not(holds_at(at(Fn_252_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3359
axiom(not(some(Location7, '$kolem_Fn_252'(Fn_252_Param, At_Param, Order_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_252_Param, Location7), Maptime)),
      happens(order(Fn_252_Param, At_Param, Order_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_252'(Fn_252_Param, At_Param, Order_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(order(Fn_252_Param, At_Param, Order_Ret),
              Maptime)
    ]).

 /*  not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)) :-
       (   not(holds_at(at(Order_Param, Location12), Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_252'(Order_Param,
                            At_Param14,
                            Order_Ret15,
                            Maptime11)).
 */
axiom(not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)),
   
    [ not(holds_at(at(Order_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_252'(Order_Param,
                           At_Param14,
                           Order_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_252'(Order_Param,
                           At_Param14,
                           Order_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(order(At_Param18, A, Order_Ret19), Time17),
       some(Location16,
            '$kolem_Fn_252'(At_Param18,
                            A,
                            Order_Ret19,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(order(At_Param18, A, Order_Ret19), Time17),
      some(Location16,
           '$kolem_Fn_252'(At_Param18,
                           A,
                           Order_Ret19,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(order(Order_Param23, At_Param22, Order_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_252'(Order_Param23,
                            At_Param22,
                            Order_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(order(Order_Param23, At_Param22, Order_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_252'(Order_Param23,
                           At_Param22,
                           Order_Ret24,
                           Time21))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3361
% event Request(agent,agent,physobj)
 %  event(request(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3362
==> mpred_prop(request(agent,agent,physobj),event).
==> meta_argtypes(request(agent,agent,physobj)).

% fluent KnowRequest(agent,agent,physobj)
 %  fluent(knowRequest(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3364
==> mpred_prop(knowRequest(agent,agent,physobj),fluent).
==> meta_argtypes(knowRequest(agent,agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3365
% [agent1,agent2,physobj,time]
% Initiates(Request(agent1,agent2,physobj),
%           KnowRequest(agent2,agent1,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3368
axiom(initiates(request(Agent1, Agent2, Physobj), knowRequest(Agent2, Agent1, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3370
% [agent1,agent2,physobj,time]
% Happens(Request(agent1,agent2,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3372
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(request(Agent1, Agent2, Physobj),
                        Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_253'(Fn_253_Param, At_Param, Request_Ret, Maptime))) :-
       happens(request(Fn_253_Param, At_Param, Request_Ret),
               Maptime),
       (   not(holds_at(at(Fn_253_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3374
axiom(not(some(Location7, '$kolem_Fn_253'(Fn_253_Param, At_Param, Request_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_253_Param, Location7), Maptime)),
      happens(request(Fn_253_Param, At_Param, Request_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_253'(Fn_253_Param, At_Param, Request_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(request(Fn_253_Param, At_Param, Request_Ret),
              Maptime)
    ]).

 /*  not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)) :-
       (   not(holds_at(at(Request_Param, Location12), Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_253'(Request_Param,
                            At_Param14,
                            Request_Ret15,
                            Maptime11)).
 */
axiom(not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)),
   
    [ not(holds_at(at(Request_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_253'(Request_Param,
                           At_Param14,
                           Request_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_253'(Request_Param,
                           At_Param14,
                           Request_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(request(At_Param18, A, Request_Ret19),
               Time17),
       some(Location16,
            '$kolem_Fn_253'(At_Param18,
                            A,
                            Request_Ret19,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(request(At_Param18, A, Request_Ret19),
              Time17),
      some(Location16,
           '$kolem_Fn_253'(At_Param18,
                           A,
                           Request_Ret19,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(request(Request_Param23,
                       At_Param22,
                       Request_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_253'(Request_Param23,
                            At_Param22,
                            Request_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(request(Request_Param23,
                      At_Param22,
                      Request_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_253'(Request_Param23,
                           At_Param22,
                           Request_Ret24,
                           Time21))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3376
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/Diving.e
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
%; scuba diving
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3397
% sort object
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3398
==> sort(object).

% sort agent: object
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3399
==> subsort(agent,object).

% sort diver: agent
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3400
==> subsort(diver,agent).

% sort depth: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3401
==> subsort(depth,integer).

% sort boat: object
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3402
==> subsort(boat,object).
%; reference line, anchor line, shotline, SMB line, ...

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3404
% sort line: object
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3405
==> subsort(line,object).

% sort equipment: object
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3407
==> subsort(equipment,object).

% sort weight: equipment
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3408
==> subsort(weight,equipment).

% sort fin: equipment
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3409
==> subsort(fin,equipment).

% sort airtank: equipment
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3410
==> subsort(airtank,equipment).
%; buoyancy compensator (BC)
%; buoyancy control device (BCD)

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3413
% sort computer: equipment
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3414
==> subsort(computer,equipment).

% sort bc: equipment
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3415
==> subsort(bc,equipment).

% fluent AtDepth(object,depth)
 %  fluent(atDepth(object,depth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3417
==> mpred_prop(atDepth(object,depth),fluent).
==> meta_argtypes(atDepth(object,depth)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3418
% [object,depth1,depth2,time]
% HoldsAt(AtDepth(object,depth1),time) &
% HoldsAt(AtDepth(object,depth2),time) ->
% depth1 = depth2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3421
axiom(Depth1=Depth2,
   
    [ holds_at(atDepth(Object, Depth1), Time),
      holds_at(atDepth(Object, Depth2), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3423
% event Ascend(diver,depth)
 %  event(ascend(diver,depth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3424
==> mpred_prop(ascend(diver,depth),event).
==> meta_argtypes(ascend(diver,depth)).

% event Descend(diver,depth)
 %  event(descend(diver,depth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3426
==> mpred_prop(descend(diver,depth),event).
==> meta_argtypes(descend(diver,depth)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3427
% [diver,depth1,depth2,time]
% HoldsAt(AtDepth(diver,depth1),time) &
% Happens(Descend(diver,depth2),time) ->
% depth2>depth1.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3430
axiom(Depth2>Depth1,
   
    [ holds_at(atDepth(Diver, Depth1), Time),
      happens(descend(Diver, Depth2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3432
% [diver,depth1,depth2,time]
% HoldsAt(AtDepth(diver,depth1),time) &
% Happens(Ascend(diver,depth2),time) ->
% depth2<depth1.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3435
axiom(Depth2<Depth1,
   
    [ holds_at(atDepth(Diver, Depth1), Time),
      happens(ascend(Diver, Depth2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3437
% [diver,depth,time]
% Initiates(Descend(diver,depth),AtDepth(diver,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3438
axiom(initiates(descend(Diver, Depth), atDepth(Diver, Depth), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3440
% [diver,depth1,depth2,time]
% HoldsAt(AtDepth(diver,depth1),time) ->
% Terminates(Descend(diver,depth2),AtDepth(diver,depth1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3442
axiom(terminates(descend(Diver, Depth2), atDepth(Diver, Depth1), Time),
    [holds_at(atDepth(Diver, Depth1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3444
% [diver,depth,time]
% Initiates(Ascend(diver,depth),AtDepth(diver,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3445
axiom(initiates(ascend(Diver, Depth), atDepth(Diver, Depth), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3447
% [diver,depth1,depth2,time]
% HoldsAt(AtDepth(diver,depth1),time) ->
% Terminates(Ascend(diver,depth2),AtDepth(diver,depth1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3449
axiom(terminates(ascend(Diver, Depth2), atDepth(Diver, Depth1), Time),
    [holds_at(atDepth(Diver, Depth1), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3451
% fluent Wearing(diver,equipment)
 %  fluent(wearing(diver,equipment)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3452
==> mpred_prop(wearing(diver,equipment),fluent).
==> meta_argtypes(wearing(diver,equipment)).

% event PutOn(diver,equipment)
 %  event(putOn(diver,equipment)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3454
==> mpred_prop(putOn(diver,equipment),event).
==> meta_argtypes(putOn(diver,equipment)).

% event TakeOff(diver,equipment)
 %  event(takeOff(diver,equipment)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3456
==> mpred_prop(takeOff(diver,equipment),event).
==> meta_argtypes(takeOff(diver,equipment)).

% event Lose(diver,equipment)
 %  event(lose(diver,equipment)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3458
==> mpred_prop(lose(diver,equipment),event).
==> meta_argtypes(lose(diver,equipment)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3459
% [diver,equipment,depth,time]
% Releases(PutOn(diver,equipment),AtDepth(equipment,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3460
axiom(releases(putOn(Diver, Equipment), atDepth(Equipment, Depth), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3462
% [diver,equipment,time]
% Releases(PutOn(diver,equipment),UnderWater(equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3463
axiom(releases(putOn(Diver, Equipment), underWater(Equipment), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3465
% [diver,equipment,time]
% Happens(PutOn(diver,equipment),time) ->
% !{diver1} HoldsAt(Wearing(diver1,equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3467
axiom(requires(putOn(Diver, Equipment), Time),
    [not(holds_at(wearing(Diver1, Equipment), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3469
% [diver,depth,equipment,time]
% HoldsAt(Wearing(diver,equipment),time) ->
% (HoldsAt(AtDepth(diver,depth),time) <->
%  HoldsAt(AtDepth(equipment,depth),time)).

 /*  if(holds_at(wearing(Diver,Equipment),Time),
      equiv(holds_at(atDepth(Diver,Depth),Time),
   	 holds_at(atDepth(Equipment,Depth),Time))).
 */

 /*  not(holds_at(wearing(Wearing_Param, AtDepth_Param), Time4)) :-
       (   not(holds_at(atDepth(AtDepth_Param, AtDepth_Ret),
                        Time4)),
           holds_at(atDepth(Wearing_Param, AtDepth_Ret), Time4)
       ;   not(holds_at(atDepth(Wearing_Param, AtDepth_Ret),
                        Time4)),
           holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3472
axiom(not(holds_at(wearing(Wearing_Param, AtDepth_Param), Time4)),
   
    [ not(holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)),
      holds_at(atDepth(Wearing_Param, AtDepth_Ret), Time4)
    ]).
axiom(not(holds_at(wearing(Wearing_Param, AtDepth_Param), Time4)),
   
    [ not(holds_at(atDepth(Wearing_Param, AtDepth_Ret), Time4)),
      holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)
    ]).

 /*  holds_at(atDepth(AtDepth_Param9, AtDepth_Ret11), Time8) :-
       holds_at(atDepth(AtDepth_Param10, AtDepth_Ret11), Time8),
       holds_at(wearing(AtDepth_Param10, AtDepth_Param9), Time8).
 */
axiom(holds_at(atDepth(AtDepth_Param9, AtDepth_Ret11), Time8),
   
    [ holds_at(atDepth(AtDepth_Param10, AtDepth_Ret11), Time8),
      holds_at(wearing(AtDepth_Param10, AtDepth_Param9),
               Time8)
    ]).

 /*  not(holds_at(atDepth(AtDepth_Param13, AtDepth_Ret15), Time12)) :-
       not(holds_at(atDepth(AtDepth_Param14, AtDepth_Ret15),
                    Time12)),
       holds_at(wearing(AtDepth_Param13, AtDepth_Param14),
                Time12).
 */
axiom(not(holds_at(atDepth(AtDepth_Param13, AtDepth_Ret15), Time12)),
   
    [ not(holds_at(atDepth(AtDepth_Param14, AtDepth_Ret15),
                   Time12)),
      holds_at(wearing(AtDepth_Param13, AtDepth_Param14),
               Time12)
    ]).

 /*  holds_at(atDepth(AtDepth_Param17, AtDepth_Ret19), Time16) :-
       holds_at(atDepth(AtDepth_Param18, AtDepth_Ret19), Time16),
       holds_at(wearing(AtDepth_Param17, AtDepth_Param18),
                Time16).
 */
axiom(holds_at(atDepth(AtDepth_Param17, AtDepth_Ret19), Time16),
   
    [ holds_at(atDepth(AtDepth_Param18, AtDepth_Ret19),
               Time16),
      holds_at(wearing(AtDepth_Param17, AtDepth_Param18),
               Time16)
    ]).

 /*  not(holds_at(atDepth(AtDepth_Param21, AtDepth_Ret23), Time20)) :-
       not(holds_at(atDepth(AtDepth_Param22, AtDepth_Ret23),
                    Time20)),
       holds_at(wearing(AtDepth_Param22, AtDepth_Param21),
                Time20).
 */
axiom(not(holds_at(atDepth(AtDepth_Param21, AtDepth_Ret23), Time20)),
   
    [ not(holds_at(atDepth(AtDepth_Param22, AtDepth_Ret23),
                   Time20)),
      holds_at(wearing(AtDepth_Param22, AtDepth_Param21),
               Time20)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3474
% [diver,depth,object,time]
% HoldsAt(Holding(diver,object),time) ->
% (HoldsAt(AtDepth(diver,depth),time) <->
%  HoldsAt(AtDepth(object,depth),time)).

 /*  if(holds_at(holding(Diver,Object),Time),
      equiv(holds_at(atDepth(Diver,Depth),Time),
   	 holds_at(atDepth(Object,Depth),Time))).
 */

 /*  not(holds_at(holding(Holding_Param, AtDepth_Param), Time4)) :-
       (   not(holds_at(atDepth(AtDepth_Param, AtDepth_Ret),
                        Time4)),
           holds_at(atDepth(Holding_Param, AtDepth_Ret), Time4)
       ;   not(holds_at(atDepth(Holding_Param, AtDepth_Ret),
                        Time4)),
           holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3477
axiom(not(holds_at(holding(Holding_Param, AtDepth_Param), Time4)),
   
    [ not(holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)),
      holds_at(atDepth(Holding_Param, AtDepth_Ret), Time4)
    ]).
axiom(not(holds_at(holding(Holding_Param, AtDepth_Param), Time4)),
   
    [ not(holds_at(atDepth(Holding_Param, AtDepth_Ret), Time4)),
      holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)
    ]).

 /*  holds_at(atDepth(AtDepth_Param9, AtDepth_Ret11), Time8) :-
       holds_at(atDepth(AtDepth_Param10, AtDepth_Ret11), Time8),
       holds_at(holding(AtDepth_Param10, AtDepth_Param9), Time8).
 */
axiom(holds_at(atDepth(AtDepth_Param9, AtDepth_Ret11), Time8),
   
    [ holds_at(atDepth(AtDepth_Param10, AtDepth_Ret11), Time8),
      holds_at(holding(AtDepth_Param10, AtDepth_Param9),
               Time8)
    ]).

 /*  not(holds_at(atDepth(AtDepth_Param13, AtDepth_Ret15), Time12)) :-
       not(holds_at(atDepth(AtDepth_Param14, AtDepth_Ret15),
                    Time12)),
       holds_at(holding(AtDepth_Param13, AtDepth_Param14),
                Time12).
 */
axiom(not(holds_at(atDepth(AtDepth_Param13, AtDepth_Ret15), Time12)),
   
    [ not(holds_at(atDepth(AtDepth_Param14, AtDepth_Ret15),
                   Time12)),
      holds_at(holding(AtDepth_Param13, AtDepth_Param14),
               Time12)
    ]).

 /*  holds_at(atDepth(AtDepth_Param17, AtDepth_Ret19), Time16) :-
       holds_at(atDepth(AtDepth_Param18, AtDepth_Ret19), Time16),
       holds_at(holding(AtDepth_Param17, AtDepth_Param18),
                Time16).
 */
axiom(holds_at(atDepth(AtDepth_Param17, AtDepth_Ret19), Time16),
   
    [ holds_at(atDepth(AtDepth_Param18, AtDepth_Ret19),
               Time16),
      holds_at(holding(AtDepth_Param17, AtDepth_Param18),
               Time16)
    ]).

 /*  not(holds_at(atDepth(AtDepth_Param21, AtDepth_Ret23), Time20)) :-
       not(holds_at(atDepth(AtDepth_Param22, AtDepth_Ret23),
                    Time20)),
       holds_at(holding(AtDepth_Param22, AtDepth_Param21),
                Time20).
 */
axiom(not(holds_at(atDepth(AtDepth_Param21, AtDepth_Ret23), Time20)),
   
    [ not(holds_at(atDepth(AtDepth_Param22, AtDepth_Ret23),
                   Time20)),
      holds_at(holding(AtDepth_Param22, AtDepth_Param21),
               Time20)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3479
% [diver,equipment,time]
% HoldsAt(Wearing(diver,equipment),time) ->
% (HoldsAt(UnderWater(diver),time) <->
%  HoldsAt(UnderWater(equipment),time)).

 /*  if(holds_at(wearing(Diver,Equipment),Time),
      equiv(holds_at(underWater(Diver),Time),
   	 holds_at(underWater(Equipment),Time))).
 */

 /*  not(holds_at(wearing(Wearing_Param, Wearing_Ret), Time3)) :-
       (   not(holds_at(underWater(Wearing_Ret), Time3)),
           holds_at(underWater(Wearing_Param), Time3)
       ;   not(holds_at(underWater(Wearing_Param), Time3)),
           holds_at(underWater(Wearing_Ret), Time3)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3482
axiom(not(holds_at(wearing(Wearing_Param, Wearing_Ret), Time3)),
   
    [ not(holds_at(underWater(Wearing_Ret), Time3)),
      holds_at(underWater(Wearing_Param), Time3)
    ]).
axiom(not(holds_at(wearing(Wearing_Param, Wearing_Ret), Time3)),
   
    [ not(holds_at(underWater(Wearing_Param), Time3)),
      holds_at(underWater(Wearing_Ret), Time3)
    ]).

 /*  holds_at(underWater(UnderWater_Ret), Time6) :-
       holds_at(underWater(Wearing_Param7), Time6),
       holds_at(wearing(Wearing_Param7, UnderWater_Ret), Time6).
 */
axiom(holds_at(underWater(UnderWater_Ret), Time6),
   
    [ holds_at(underWater(Wearing_Param7), Time6),
      holds_at(wearing(Wearing_Param7, UnderWater_Ret), Time6)
    ]).

 /*  not(holds_at(underWater(Wearing_Param10), Time9)) :-
       not(holds_at(underWater(UnderWater_Ret11), Time9)),
       holds_at(wearing(Wearing_Param10, UnderWater_Ret11),
                Time9).
 */
axiom(not(holds_at(underWater(Wearing_Param10), Time9)),
   
    [ not(holds_at(underWater(UnderWater_Ret11), Time9)),
      holds_at(wearing(Wearing_Param10, UnderWater_Ret11),
               Time9)
    ]).

 /*  holds_at(underWater(Wearing_Param13), Time12) :-
       holds_at(underWater(UnderWater_Ret14), Time12),
       holds_at(wearing(Wearing_Param13, UnderWater_Ret14),
                Time12).
 */
axiom(holds_at(underWater(Wearing_Param13), Time12),
   
    [ holds_at(underWater(UnderWater_Ret14), Time12),
      holds_at(wearing(Wearing_Param13, UnderWater_Ret14),
               Time12)
    ]).

 /*  not(holds_at(underWater(UnderWater_Ret17), Time15)) :-
       not(holds_at(underWater(Wearing_Param16), Time15)),
       holds_at(wearing(Wearing_Param16, UnderWater_Ret17),
                Time15).
 */
axiom(not(holds_at(underWater(UnderWater_Ret17), Time15)),
   
    [ not(holds_at(underWater(Wearing_Param16), Time15)),
      holds_at(wearing(Wearing_Param16, UnderWater_Ret17),
               Time15)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3484
% [diver,object,time]
% HoldsAt(Holding(diver,object),time) ->
% (HoldsAt(UnderWater(diver),time) <->
%  HoldsAt(UnderWater(object),time)).

 /*  if(holds_at(holding(Diver,Object),Time),
      equiv(holds_at(underWater(Diver),Time),
   	 holds_at(underWater(Object),Time))).
 */

 /*  not(holds_at(holding(Holding_Param, Holding_Ret), Time3)) :-
       (   not(holds_at(underWater(Holding_Ret), Time3)),
           holds_at(underWater(Holding_Param), Time3)
       ;   not(holds_at(underWater(Holding_Param), Time3)),
           holds_at(underWater(Holding_Ret), Time3)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3487
axiom(not(holds_at(holding(Holding_Param, Holding_Ret), Time3)),
   
    [ not(holds_at(underWater(Holding_Ret), Time3)),
      holds_at(underWater(Holding_Param), Time3)
    ]).
axiom(not(holds_at(holding(Holding_Param, Holding_Ret), Time3)),
   
    [ not(holds_at(underWater(Holding_Param), Time3)),
      holds_at(underWater(Holding_Ret), Time3)
    ]).

 /*  holds_at(underWater(UnderWater_Ret), Time6) :-
       holds_at(underWater(Holding_Param7), Time6),
       holds_at(holding(Holding_Param7, UnderWater_Ret), Time6).
 */
axiom(holds_at(underWater(UnderWater_Ret), Time6),
   
    [ holds_at(underWater(Holding_Param7), Time6),
      holds_at(holding(Holding_Param7, UnderWater_Ret), Time6)
    ]).

 /*  not(holds_at(underWater(Holding_Param10), Time9)) :-
       not(holds_at(underWater(UnderWater_Ret11), Time9)),
       holds_at(holding(Holding_Param10, UnderWater_Ret11),
                Time9).
 */
axiom(not(holds_at(underWater(Holding_Param10), Time9)),
   
    [ not(holds_at(underWater(UnderWater_Ret11), Time9)),
      holds_at(holding(Holding_Param10, UnderWater_Ret11),
               Time9)
    ]).

 /*  holds_at(underWater(Holding_Param13), Time12) :-
       holds_at(underWater(UnderWater_Ret14), Time12),
       holds_at(holding(Holding_Param13, UnderWater_Ret14),
                Time12).
 */
axiom(holds_at(underWater(Holding_Param13), Time12),
   
    [ holds_at(underWater(UnderWater_Ret14), Time12),
      holds_at(holding(Holding_Param13, UnderWater_Ret14),
               Time12)
    ]).

 /*  not(holds_at(underWater(UnderWater_Ret17), Time15)) :-
       not(holds_at(underWater(Holding_Param16), Time15)),
       holds_at(holding(Holding_Param16, UnderWater_Ret17),
                Time15).
 */
axiom(not(holds_at(underWater(UnderWater_Ret17), Time15)),
   
    [ not(holds_at(underWater(Holding_Param16), Time15)),
      holds_at(holding(Holding_Param16, UnderWater_Ret17),
               Time15)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3489
% [diver,depth,equipment,time]
% HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Wearing(diver,equipment),time) ->
% Initiates(TakeOff(diver,equipment),AtDepth(equipment,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3492
axiom(initiates(takeOff(Diver, Equipment), atDepth(Equipment, Depth), Time),
   
    [ holds_at(atDepth(Diver, Depth), Time),
      holds_at(wearing(Diver, Equipment), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3494
% [diver,depth,equipment,time]
% !HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Wearing(diver,equipment),time) ->
% Terminates(TakeOff(diver,equipment),AtDepth(equipment,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3497
axiom(terminates(takeOff(Diver, Equipment), atDepth(Equipment, Depth), Time),
   
    [ not(holds_at(atDepth(Diver, Depth), Time)),
      holds_at(wearing(Diver, Equipment), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3499
% [diver,equipment,time]
% HoldsAt(UnderWater(diver),time) ->
% Initiates(TakeOff(diver,equipment),UnderWater(equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3501
axiom(initiates(takeOff(Diver, Equipment), underWater(Equipment), Time),
    [holds_at(underWater(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3503
% [diver,equipment,time]
% !HoldsAt(UnderWater(diver),time) ->
% Terminates(TakeOff(diver,equipment),UnderWater(equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3505
axiom(terminates(takeOff(Diver, Equipment), underWater(Equipment), Time),
    [not(holds_at(underWater(Diver), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3507
% [diver,equipment,depth,time]
% HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Wearing(diver,equipment),time) ->
% Initiates(Lose(diver,equipment),AtDepth(equipment,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3510
axiom(initiates(lose(Diver, Equipment), atDepth(Equipment, Depth), Time),
   
    [ holds_at(atDepth(Diver, Depth), Time),
      holds_at(wearing(Diver, Equipment), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3512
% [diver,equipment,depth,time]
% !HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Wearing(diver,equipment),time) ->
% Terminates(Lose(diver,equipment),AtDepth(equipment,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3515
axiom(terminates(lose(Diver, Equipment), atDepth(Equipment, Depth), Time),
   
    [ not(holds_at(atDepth(Diver, Depth), Time)),
      holds_at(wearing(Diver, Equipment), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3517
% [diver,equipment,time]
% HoldsAt(UnderWater(diver),time) ->
% Initiates(Lose(diver,equipment),UnderWater(equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3519
axiom(initiates(lose(Diver, Equipment), underWater(Equipment), Time),
    [holds_at(underWater(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3521
% [diver,equipment,time]
% !HoldsAt(UnderWater(diver),time) ->
% Terminates(Lose(diver,equipment),UnderWater(equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3523
axiom(terminates(lose(Diver, Equipment), underWater(Equipment), Time),
    [not(holds_at(underWater(Diver), Time))]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3525
% fluent Holding(diver,object)
 %  fluent(holding(diver,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3526
==> mpred_prop(holding(diver,object),fluent).
==> meta_argtypes(holding(diver,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3527
% [diver1,diver2,time]
% HoldsAt(Holding(diver1,diver2),time) ->
% !HoldsAt(Holding(diver2,diver1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3529
axiom(not(holds_at(holding(Diver2, Diver1), Time)),
    [holds_at(holding(Diver1, Diver2), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3531
% event Grab(diver,object)
 %  event(grab(diver,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3532
==> mpred_prop(grab(diver,object),event).
==> meta_argtypes(grab(diver,object)).

% event LetGoOf(diver,object)
 %  event(letGoOf(diver,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3534
==> mpred_prop(letGoOf(diver,object),event).
==> meta_argtypes(letGoOf(diver,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3535
% [diver,object,time]
% Initiates(Grab(diver,object),Holding(diver,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3536
axiom(initiates(grab(Diver, Object), holding(Diver, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3538
% [diver,object,time]
% Terminates(LetGoOf(diver,object),Holding(diver,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3539
axiom(terminates(letGoOf(Diver, Object), holding(Diver, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3541
% [diver,object,depth,time]
% Releases(Grab(diver,object),AtDepth(object,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3542
axiom(releases(grab(Diver, Object), atDepth(Object, Depth), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3544
% [diver,object,time]
% Releases(Grab(diver,object),UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3545
axiom(releases(grab(Diver, Object), underWater(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3547
% [diver,object,depth,time]
% HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Holding(diver,object),time) ->
% Initiates(LetGoOf(diver,object),AtDepth(object,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3550
axiom(initiates(letGoOf(Diver, Object), atDepth(Object, Depth), Time),
   
    [ holds_at(atDepth(Diver, Depth), Time),
      holds_at(holding(Diver, Object), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3552
% [diver,object,depth,time]
% !HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Holding(diver,object),time) ->
% Terminates(LetGoOf(diver,object),AtDepth(object,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3555
axiom(terminates(letGoOf(Diver, Object), atDepth(Object, Depth), Time),
   
    [ not(holds_at(atDepth(Diver, Depth), Time)),
      holds_at(holding(Diver, Object), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3557
% [diver,object,time]
% HoldsAt(UnderWater(diver),time) ->
% Initiates(LetGoOf(diver,object),UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3559
axiom(initiates(letGoOf(Diver, Object), underWater(Object), Time),
    [holds_at(underWater(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3561
% [diver,object,time]
% !HoldsAt(UnderWater(diver),time) ->
% Terminates(LetGoOf(diver,object),UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3563
axiom(terminates(letGoOf(Diver, Object), underWater(Object), Time),
    [not(holds_at(underWater(Diver), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3565
% [diver,equipment,time]
% Initiates(PutOn(diver,equipment),Wearing(diver,equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3566
axiom(initiates(putOn(Diver, Equipment), wearing(Diver, Equipment), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3568
% [diver,equipment,time]
% Happens(PutOn(diver,equipment),time) ->
% !HoldsAt(UnderWater(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3570
axiom(requires(putOn(Diver, Equipment), Time),
    [not(holds_at(underWater(Diver), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3572
% [diver,equipment,time]
% Terminates(TakeOff(diver,equipment),Wearing(diver,equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3573
axiom(terminates(takeOff(Diver, Equipment), wearing(Diver, Equipment), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3575
% [diver,equipment,time]
% Terminates(Lose(diver,equipment),Wearing(diver,equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3576
axiom(terminates(lose(Diver, Equipment), wearing(Diver, Equipment), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3578
% fluent Vertical(diver)
 %  fluent(vertical(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3579
==> mpred_prop(vertical(diver),fluent).
==> meta_argtypes(vertical(diver)).

% fluent HorizontalDown(diver)
 %  fluent(horizontalDown(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3581
==> mpred_prop(horizontalDown(diver),fluent).
==> meta_argtypes(horizontalDown(diver)).

% fluent Inverted(diver)
 %  fluent(inverted(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3583
==> mpred_prop(inverted(diver),fluent).
==> meta_argtypes(inverted(diver)).

% fluent HorizontalUp(diver)
 %  fluent(horizontalUp(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3585
==> mpred_prop(horizontalUp(diver),fluent).
==> meta_argtypes(horizontalUp(diver)).

% xor Vertical, HorizontalDown, Inverted, HorizontalUp
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3587
xor([vertical,horizontalDown,inverted,horizontalUp]).

% event RotatePitch(diver)
 %  event(rotatePitch(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3589
==> mpred_prop(rotatePitch(diver),event).
==> meta_argtypes(rotatePitch(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3590
% [diver,time]
% HoldsAt(Vertical(diver),time) ->
% Initiates(RotatePitch(diver),HorizontalDown(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3592
axiom(initiates(rotatePitch(Diver), horizontalDown(Diver), Time),
    [holds_at(vertical(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3594
% [diver,time]
% HoldsAt(HorizontalDown(diver),time) ->
% Initiates(RotatePitch(diver),Inverted(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3596
axiom(initiates(rotatePitch(Diver), inverted(Diver), Time),
    [holds_at(horizontalDown(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3598
% [diver,time]
% HoldsAt(HorizontalDown(diver),time) ->
% Terminates(RotatePitch(diver),HorizontalDown(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3600
axiom(terminates(rotatePitch(Diver), horizontalDown(Diver), Time),
    [holds_at(horizontalDown(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3602
% [diver,time]
% HoldsAt(Inverted(diver),time) ->
% Initiates(RotatePitch(diver),HorizontalUp(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3604
axiom(initiates(rotatePitch(Diver), horizontalUp(Diver), Time),
    [holds_at(inverted(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3606
% [diver,time]
% HoldsAt(Inverted(diver),time) ->
% Terminates(RotatePitch(diver),Inverted(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3608
axiom(terminates(rotatePitch(Diver), inverted(Diver), Time),
    [holds_at(inverted(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3610
% [diver,time]
% HoldsAt(HorizontalUp(diver),time) ->
% Initiates(RotatePitch(diver),Vertical(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3612
axiom(initiates(rotatePitch(Diver), vertical(Diver), Time),
    [holds_at(horizontalUp(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3614
% [diver,time]
% HoldsAt(HorizontalUp(diver),time) ->
% Terminates(RotatePitch(diver),HorizontalUp(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3616
axiom(terminates(rotatePitch(Diver), horizontalUp(Diver), Time),
    [holds_at(horizontalUp(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3618
% event RotateYaw(diver)
 %  event(rotateYaw(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3619
==> mpred_prop(rotateYaw(diver),event).
==> meta_argtypes(rotateYaw(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3620
%; try taking out Holding condition here
% [diver,time]
% Happens(Ascend1(diver),time) &
% !Happens(RapidAscendToSurface(diver),time) &
% !({diver1} HoldsAt(Holding(diver,diver1),time)) ->
% Happens(RotateYaw(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3625
axiom(happens(rotateYaw(Diver), Time),
   
    [ happens(ascend1(Diver), Time),
      not(happens(rapidAscendToSurface(Diver), Time)),
      not(holds_at(holding(Diver, Diver1), Time))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3627
% fluent UnderWater(object)
 %  fluent(underWater(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3628
==> mpred_prop(underWater(object),fluent).
==> meta_argtypes(underWater(object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3629
% [object,depth,time]
% depth>% 0 &
% HoldsAt(AtDepth(object,depth),time) ->
% HoldsAt(UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3632
axiom(holds_at(underWater(Object), Time),
   
    [ comparison(Depth, 0, >),
      holds_at(atDepth(Object, Depth), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3634
% event EnterWater(object)
 %  event(enterWater(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3635
==> mpred_prop(enterWater(object),event).
==> meta_argtypes(enterWater(object)).

% event Surface(object)
 %  event(surface(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3637
==> mpred_prop(surface(object),event).
==> meta_argtypes(surface(object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3638
% [object,time]
% Initiates(EnterWater(object),UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3639
axiom(initiates(enterWater(Object), underWater(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3641
% [diver,time]
% Happens(EnterWater(diver),time) ->
% !{diver1} HoldsAt(Holding(diver1,diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3643
axiom(requires(enterWater(Diver), Time),
    [not(holds_at(holding(Diver1, Diver), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3645
% [object,depth,time]
% depth=% 0 ->
% Initiates(EnterWater(object),AtDepth(object,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3647
axiom(initiates(enterWater(Object), atDepth(Object, Depth), Time),
    [equals(Depth, 0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3649
% [object,time]
% Terminates(Surface(object),UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3650
axiom(terminates(surface(Object), underWater(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3652
% [diver,time]
% Terminates(Surface(diver),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3653
axiom(terminates(surface(Diver), positivelyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3655
% [diver,time]
% Terminates(Surface(diver),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3656
axiom(terminates(surface(Diver), negativelyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3658
% [diver,time]
% Terminates(Surface(diver),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3659
axiom(terminates(surface(Diver), neutrallyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3661
% [object,depth,time]
% Terminates(Surface(object),AtDepth(object,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3662
axiom(terminates(surface(Object), atDepth(Object, Depth), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3664
% [diver,time]
 % Happens(EnterWater(diver),time) ->
% HoldsAt(Vertical(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3665
axiom(requires(enterWater(Diver), Time),
    [holds_at(vertical(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3667
% fluent StandingOn(diver,boat)
 %  fluent(standingOn(diver,boat)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3668
==> mpred_prop(standingOn(diver,boat),fluent).
==> meta_argtypes(standingOn(diver,boat)).

% event StandOn(diver,boat)
 %  event(standOn(diver,boat)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3670
==> mpred_prop(standOn(diver,boat),event).
==> meta_argtypes(standOn(diver,boat)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3671
% [diver,boat,time]
% Terminates(EnterWater(diver),StandingOn(diver,boat),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3672
axiom(terminates(enterWater(Diver), standingOn(Diver, Boat), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3674
% [diver,boat,time]
% Initiates(StandOn(diver,boat),StandingOn(diver,boat),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3675
axiom(initiates(standOn(Diver, Boat), standingOn(Diver, Boat), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3677
% fluent PositivelyBuoyant(diver)
 %  fluent(positivelyBuoyant(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3678
==> mpred_prop(positivelyBuoyant(diver),fluent).
==> meta_argtypes(positivelyBuoyant(diver)).

% fluent NeutrallyBuoyant(diver)
 %  fluent(neutrallyBuoyant(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3680
==> mpred_prop(neutrallyBuoyant(diver),fluent).
==> meta_argtypes(neutrallyBuoyant(diver)).

% fluent NegativelyBuoyant(diver)
 %  fluent(negativelyBuoyant(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3682
==> mpred_prop(negativelyBuoyant(diver),fluent).
==> meta_argtypes(negativelyBuoyant(diver)).

% mutex PositivelyBuoyant, NeutrallyBuoyant, NegativelyBuoyant
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3684
mutex(positivelyBuoyant).
mutex(neutrallyBuoyant).
mutex(negativelyBuoyant).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3685
% [diver,time]
% HoldsAt(PositivelyBuoyant(diver),time) ->
% HoldsAt(UnderWater(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3687
axiom(holds_at(underWater(Diver), Time),
    [holds_at(positivelyBuoyant(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3689
% [diver,time]
% HoldsAt(NeutrallyBuoyant(diver),time) ->
% HoldsAt(UnderWater(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3691
axiom(holds_at(underWater(Diver), Time),
    [holds_at(neutrallyBuoyant(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3693
% [diver,time]
% HoldsAt(NegativelyBuoyant(diver),time) ->
% HoldsAt(UnderWater(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3695
axiom(holds_at(underWater(Diver), Time),
    [holds_at(negativelyBuoyant(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3697
% event PressDeflateButton(diver,bc)
 %  event(pressDeflateButton(diver,bc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3698
==> mpred_prop(pressDeflateButton(diver,bc),event).
==> meta_argtypes(pressDeflateButton(diver,bc)).

% event PressDumpButton(diver,bc)
 %  event(pressDumpButton(diver,bc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3700
==> mpred_prop(pressDumpButton(diver,bc),event).
==> meta_argtypes(pressDumpButton(diver,bc)).

% event PressInflateButton(diver,bc)
 %  event(pressInflateButton(diver,bc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3702
==> mpred_prop(pressInflateButton(diver,bc),event).
==> meta_argtypes(pressInflateButton(diver,bc)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3703
% [diver,bc,time]
% Happens(PressDeflateButton(diver,bc),time) ->
% HoldsAt(Vertical(diver),time) &
% HoldsAt(UnderWater(bc),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3706
axiom(requires(pressDeflateButton(Diver, Bc), Time),
   
    [ holds_at(vertical(Diver), Time),
      holds_at(underWater(Bc), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3708
% [diver,bc,time]
% Happens(PressDumpButton(diver,bc),time) ->
% HoldsAt(Vertical(diver),time) &
% HoldsAt(UnderWater(bc),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3711
axiom(requires(pressDumpButton(Diver, Bc), Time),
   
    [ holds_at(vertical(Diver), Time),
      holds_at(underWater(Bc), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3713
% [diver,bc,time]
 % Happens(PressDumpButton(diver,bc),time) ->
% HoldsAt(UncontrolledBuoyancy(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3714
axiom(requires(pressDumpButton(Diver, Bc), Time),
    [holds_at(uncontrolledBuoyancy(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3716
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Initiates(PressDeflateButton(diver,bc),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3718
axiom(initiates(pressDeflateButton(Diver, Bc), negativelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3720
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressDeflateButton(diver,bc),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3722
axiom(terminates(pressDeflateButton(Diver, Bc), neutrallyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3724
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressDeflateButton(diver,bc),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3726
axiom(terminates(pressDeflateButton(Diver, Bc), positivelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3728
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Initiates(PressDumpButton(diver,bc),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3730
axiom(initiates(pressDumpButton(Diver, Bc), negativelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3732
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressDumpButton(diver,bc),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3734
axiom(terminates(pressDumpButton(Diver, Bc), neutrallyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3736
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressDumpButton(diver,bc),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3738
axiom(terminates(pressDumpButton(Diver, Bc), positivelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3740
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Initiates(PressInflateButton(diver,bc),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3742
axiom(initiates(pressInflateButton(Diver, Bc), neutrallyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3744
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressInflateButton(diver,bc),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3746
axiom(terminates(pressInflateButton(Diver, Bc), positivelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3748
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressInflateButton(diver,bc),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3750
axiom(terminates(pressInflateButton(Diver, Bc), negativelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3752
% [diver,weight,time]
% HoldsAt(Wearing(diver,weight),time) ->
% Initiates(TakeOff(diver,weight),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3754
axiom(initiates(takeOff(Diver, Weight), positivelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Weight), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3756
% [diver,weight,time]
% HoldsAt(Wearing(diver,weight),time) ->
% Terminates(TakeOff(diver,weight),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3758
axiom(terminates(takeOff(Diver, Weight), negativelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Weight), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3760
% [diver,weight,time]
% HoldsAt(Wearing(diver,weight),time) ->
% Terminates(TakeOff(diver,weight),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3762
axiom(terminates(takeOff(Diver, Weight), neutrallyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Weight), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3764
% fluent UncontrolledBuoyancy(diver)
 %  fluent(uncontrolledBuoyancy(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3765
==> mpred_prop(uncontrolledBuoyancy(diver),fluent).
==> meta_argtypes(uncontrolledBuoyancy(diver)).

% event LoseBuoyancyControl(diver)
 %  event(loseBuoyancyControl(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3767
==> mpred_prop(loseBuoyancyControl(diver),event).
==> meta_argtypes(loseBuoyancyControl(diver)).

% predicate IsInexperiencedDiver(diver)
 %  predicate(isInexperiencedDiver(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3769
==> mpred_prop(isInexperiencedDiver(diver),predicate).
==> meta_argtypes(isInexperiencedDiver(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3770
% [diver,time]
% Happens(LoseBuoyancyControl(diver),time) ->
% IsInexperiencedDiver(diver).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3772
axiom(requires(loseBuoyancyControl(Diver), Time),
    [isInexperiencedDiver(Diver)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3774
% [diver,time]
% Initiates(LoseBuoyancyControl(diver),UncontrolledBuoyancy(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3775
axiom(initiates(loseBuoyancyControl(Diver), uncontrolledBuoyancy(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3777
% [diver,time]
% Initiates(LoseBuoyancyControl(diver),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3778
axiom(initiates(loseBuoyancyControl(Diver), positivelyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3780
% [diver,time]
% Terminates(LoseBuoyancyControl(diver),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3781
axiom(terminates(loseBuoyancyControl(Diver), negativelyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3783
% [diver,time]
% Terminates(LoseBuoyancyControl(diver),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3784
axiom(terminates(loseBuoyancyControl(Diver), neutrallyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3786
%; determining fluent

% fluent AscendDescendAmount(diver,depth)
 %  fluent(ascendDescendAmount(diver,depth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3788
==> mpred_prop(ascendDescendAmount(diver,depth),fluent).
==> meta_argtypes(ascendDescendAmount(diver,depth)).

% noninertial AscendDescendAmount
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3789
==> noninertial(ascendDescendAmount).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3790
% [diver,depth1,depth2,time]
% HoldsAt(AscendDescendAmount(diver,depth1),time) &
% HoldsAt(AscendDescendAmount(diver,depth2),time) ->
% depth1=depth2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3793
axiom(Depth1=Depth2,
   
    [ holds_at(ascendDescendAmount(Diver, Depth1), Time),
      holds_at(ascendDescendAmount(Diver, Depth2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3795
% [diver,depth,time]
% Happens(Descend(diver,depth),time) ->
% HoldsAt(NegativelyBuoyant(diver),time) &
% ({depth1}
%  HoldsAt(AscendDescendAmount(diver,depth1),time) &
%  HoldsAt(AtDepth(diver,depth-depth1),time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3800
axiom(requires(descend(Diver, Depth), Time),
   
    [ holds_at(negativelyBuoyant(Diver), Time),
      holds_at(ascendDescendAmount(Diver, Depth1), Time),
      holds_at(atDepth(Diver, Depth-Depth1), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3802
% event KickUp(diver)
 %  event(kickUp(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3803
==> mpred_prop(kickUp(diver),event).
==> meta_argtypes(kickUp(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3804
% [diver,depth,time]
% Happens(Ascend(diver,depth),time) ->
% (HoldsAt(PositivelyBuoyant(diver),time) |
%  (HoldsAt(NeutrallyBuoyant(diver),time) & Happens(KickUp(diver),time))) &
% ({depth1}
%  HoldsAt(AscendDescendAmount(diver,depth1),time) &
%  HoldsAt(AtDepth(diver,depth+depth1),time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3810
axiom(requires(ascend(Diver, Depth), Time),
   
    [ holds_at(positivelyBuoyant(Diver), Time),
      holds_at(ascendDescendAmount(Diver, Depth1), Time),
      holds_at(atDepth(Diver, Depth+Depth1), Time)
    ]).
axiom(requires(ascend(Diver, Depth), Time),
   
    [ holds_at(neutrallyBuoyant(Diver), Time),
      happens(kickUp(Diver), Time),
      holds_at(ascendDescendAmount(Diver, Depth1), Time),
      holds_at(atDepth(Diver, Depth+Depth1), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3812
% [diver,time]
% Happens(KickUp(diver),time) ->
% HoldsAt(Vertical(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3814
axiom(requires(kickUp(Diver), Time),
    [holds_at(vertical(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3816
% event SwimAround(diver)
 %  event(swimAround(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3817
==> mpred_prop(swimAround(diver),event).
==> meta_argtypes(swimAround(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3818
% [diver,time]
% Happens(SwimAround(diver),time) ->
% HoldsAt(HorizontalDown(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3820
axiom(requires(swimAround(Diver), Time),
    [holds_at(horizontalDown(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3822
%; signaling

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3824
% event SignalDescend(diver,diver)
 %  event(signalDescend(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3825
==> mpred_prop(signalDescend(diver,diver),event).
==> meta_argtypes(signalDescend(diver,diver)).

% event SignalOutOfTime(diver,diver)
 %  event(signalOutOfTime(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3827
==> mpred_prop(signalOutOfTime(diver,diver),event).
==> meta_argtypes(signalOutOfTime(diver,diver)).

% event SignalAscend(diver,diver)
 %  event(signalAscend(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3829
==> mpred_prop(signalAscend(diver,diver),event).
==> meta_argtypes(signalAscend(diver,diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3830
%;[diver1,diver2,time]
%;Happens(SignalAscend(diver1,diver2),time) ->
%;Happens(SignalOutOfTime(diver1,diver2),time-1).
%;[diver1,diver2,time]
%;Happens(SignalDescend(diver1,diver2),time) ->
%;HoldsAt(See(diver1,diver2),time) &
%;HoldsAt(See(diver2,diver1),time).
%;[diver1,diver2,time]
%;Happens(SignalOutOfTime(diver1,diver2),time) ->
%;HoldsAt(See(diver1,diver2),time) &
%;HoldsAt(See(diver2,diver1),time).
%;[diver1,diver2,time]
%;Happens(SignalAscend(diver1,diver2),time) ->
%;HoldsAt(See(diver1,diver2),time) &
%;HoldsAt(See(diver2,diver1),time).
%;event LookAt(agent,object)
%;fluent See(agent,object)
%;[agent,object,time]
%;Initiates(LookAt(agent,object),See(agent,object),time).
%;[agent,object1,object2,time]
%;object1!=object2 ->
%;Terminates(LookAt(agent,object1),
%;           See(agent,object2),
%;           time).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3862
% event Descend1(diver)
 %  event(descend1(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3863
==> mpred_prop(descend1(diver),event).
==> meta_argtypes(descend1(diver)).

% event Ascend1(diver)
 %  event(ascend1(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3865
==> mpred_prop(ascend1(diver),event).
==> meta_argtypes(ascend1(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3866
%;[diver,object,time]
%;Terminates(Descend1(diver),See(diver,object),time).
%;[diver,object,time]
%;Terminates(Ascend1(diver),See(diver,object),time).
%;[diver,object,time]
%;Terminates(RotateYaw(diver),See(diver,object),time).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3875
% event RapidAscendToSurface(diver)
 %  event(rapidAscendToSurface(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3876
==> mpred_prop(rapidAscendToSurface(diver),event).
==> meta_argtypes(rapidAscendToSurface(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3877
% [diver,time]
% Happens(Descend1(diver),time) <->
% ({depth} Happens(Descend(diver,depth),time)).

 /*  happens(descend1(Diver), Time) <->
       exists([Depth], happens(descend(Diver, Depth), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3879
axiom(happens(descend1(Diver), Time),
    [happens(descend(Diver, Depth), Time)]).

 /*  if(happens(descend1(Diver),Time),
      exists([Depth],
   	  happens(descend(Diver,Depth),Time))).
 */

 /*  happens(descend(Descend_Param, Descend_Ret), Maptime) :-
       happens(descend1(Descend_Param), Maptime).
 */
axiom(happens(descend(Descend_Param, Descend_Ret), Maptime),
    [happens(descend1(Descend_Param), Maptime)]).

 /*  not(happens(descend1(Descend_Param7), Maptime6)) :-
       not(happens(descend(Descend_Param7, Descend_Ret8),
                   Maptime6)).
 */
axiom(not(happens(descend1(Descend_Param7), Maptime6)),
   
    [ not(happens(descend(Descend_Param7, Descend_Ret8),
                  Maptime6))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3881
% [diver,time]
% Happens(Ascend1(diver),time) <->
% ({depth} Happens(Ascend(diver,depth),time)).

 /*  happens(ascend1(Diver), Time) <->
       exists([Depth], happens(ascend(Diver, Depth), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3883
axiom(happens(ascend1(Diver), Time),
    [happens(ascend(Diver, Depth), Time)]).

 /*  if(happens(ascend1(Diver),Time),
      exists([Depth],
   	  happens(ascend(Diver,Depth),Time))).
 */

 /*  happens(ascend(Ascend_Param, Ascend_Ret), Maptime) :-
       happens(ascend1(Ascend_Param), Maptime).
 */
axiom(happens(ascend(Ascend_Param, Ascend_Ret), Maptime),
    [happens(ascend1(Ascend_Param), Maptime)]).

 /*  not(happens(ascend1(Ascend_Param7), Maptime6)) :-
       not(happens(ascend(Ascend_Param7, Ascend_Ret8), Maptime6)).
 */
axiom(not(happens(ascend1(Ascend_Param7), Maptime6)),
   
    [ not(happens(ascend(Ascend_Param7, Ascend_Ret8),
                  Maptime6))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3885
% [diver,time]
% Happens(RapidAscendToSurface(diver),time) ->
% Happens(Ascend(diver,0),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3887
axiom(happens(ascend(Diver, 0), Time),
    [happens(rapidAscendToSurface(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3889
% event AscendLine(diver,line)
 %  event(ascendLine(diver,line)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3890
==> mpred_prop(ascendLine(diver,line),event).
==> meta_argtypes(ascendLine(diver,line)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3891
% [diver,line,time]
% Happens(AscendLine(diver,line),time) ->
% Happens(Ascend1(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3893
axiom(happens(ascend1(Diver), Time),
    [happens(ascendLine(Diver, Line), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3895
% fluent Disoriented(diver)
 %  fluent(disoriented(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3896
==> mpred_prop(disoriented(diver),fluent).
==> meta_argtypes(disoriented(diver)).

% event BecomeDisoriented(diver)
 %  event(becomeDisoriented(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3898
==> mpred_prop(becomeDisoriented(diver),event).
==> meta_argtypes(becomeDisoriented(diver)).

% event BecomeReoriented(diver)
 %  event(becomeReoriented(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3900
==> mpred_prop(becomeReoriented(diver),event).
==> meta_argtypes(becomeReoriented(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3901
% [diver,time]
% Initiates(BecomeDisoriented(diver),Disoriented(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3902
axiom(initiates(becomeDisoriented(Diver), disoriented(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3904
% [diver,time]
% Terminates(BecomeReoriented(diver),Disoriented(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3905
axiom(terminates(becomeReoriented(Diver), disoriented(Diver), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3907
% fluent DisturbedSilt()
 %  fluent(disturbedSilt()).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3908
==> mpred_prop(disturbedSilt(),fluent).
==> meta_argtypes(disturbedSilt()).

% event DisturbSilt(diver)
 %  event(disturbSilt(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3910
==> mpred_prop(disturbSilt(diver),event).
==> meta_argtypes(disturbSilt(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3911
% [diver,time]
% Initiates(DisturbSilt(diver),DisturbedSilt(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3912
axiom(initiates(disturbSilt(Diver), disturbedSilt(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3914
% [diver,time]
% Happens(BecomeDisoriented(diver),time) ->
% (!HoldsAt(DisturbedSilt(),time-1) &
%  HoldsAt(DisturbedSilt(),time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3917
axiom(requires(becomeDisoriented(Diver), start),
   
    [ not(holds_at(disturbedSilt(), t)),
      holds_at(disturbedSilt(), start),
      b(t, start),
      ignore(start-1=t)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3919
% event Panic(diver)
 %  event(panic(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3920
==> mpred_prop(panic(diver),event).
==> meta_argtypes(panic(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3921
% [diver,time]
 % Happens(Panic(diver),time) ->
% HoldsAt(Disoriented(diver),time) |
% HoldsAt(UncontrolledBuoyancy(diver),time) |
% ({equipment} Happens(Lose(diver,equipment),time-1)) |
% Happens(Vomit(diver),time-1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3925
axiom(requires(panic(Diver), Time),
    [holds_at(disoriented(Diver), Time)]).
axiom(requires(panic(Diver), Time),
    [holds_at(uncontrolledBuoyancy(Diver), Time)]).
axiom(requires(lose(Diver, Equipment), Time-1),
    [requires(panic(Diver), Time)]).
axiom(requires(vomit(Diver), Time-1),
    [requires(panic(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3927
% event Vomit(diver)
 %  event(vomit(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3928
==> mpred_prop(vomit(diver),event).
==> meta_argtypes(vomit(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3929
%; conditions

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3931
% fluent Unconscious(diver)
 %  fluent(unconscious(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3932
==> mpred_prop(unconscious(diver),fluent).
==> meta_argtypes(unconscious(diver)).

% event GoUnconscious(diver)
 %  event(goUnconscious(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3934
==> mpred_prop(goUnconscious(diver),event).
==> meta_argtypes(goUnconscious(diver)).

% event RegainConsciousness(diver)
 %  event(regainConsciousness(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3936
==> mpred_prop(regainConsciousness(diver),event).
==> meta_argtypes(regainConsciousness(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3937
% [diver,time]
% Initiates(GoUnconscious(diver),Unconscious(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3938
axiom(initiates(goUnconscious(Diver), unconscious(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3940
% [diver,time]
% Terminates(RegainConsciousness(diver),Unconscious(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3941
axiom(terminates(regainConsciousness(Diver), unconscious(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3943
% [diver,time]
% Happens(GoUnconscious(diver),time) ->
% Happens(RapidAscendToSurface(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3945
axiom(happens(rapidAscendToSurface(Diver), Time),
    [happens(goUnconscious(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3947
% fluent HasEarPain(diver)
 %  fluent(hasEarPain(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3948
==> mpred_prop(hasEarPain(diver),fluent).
==> meta_argtypes(hasEarPain(diver)).

% event StartEarPain(diver)
 %  event(startEarPain(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3950
==> mpred_prop(startEarPain(diver),event).
==> meta_argtypes(startEarPain(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3951
% [diver,time]
 % Initiates(StartEarPain(diver),HasEarPain(diver),time).
axiom(initiates(startEarPain(Diver), hasEarPain(Diver), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3953
% fluent HasRupturedEardrum(diver)
 %  fluent(hasRupturedEardrum(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3954
==> mpred_prop(hasRupturedEardrum(diver),fluent).
==> meta_argtypes(hasRupturedEardrum(diver)).

% event RuptureEardrum(diver)
 %  event(ruptureEardrum(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3956
==> mpred_prop(ruptureEardrum(diver),event).
==> meta_argtypes(ruptureEardrum(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3957
% [diver,time]
% Initiates(RuptureEardrum(diver),HasRupturedEardrum(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3958
axiom(initiates(ruptureEardrum(Diver), hasRupturedEardrum(Diver), Time),
    []).

% fluent ConditionOK(diver)
 %  fluent(conditionOK(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3960
==> mpred_prop(conditionOK(diver),fluent).
==> meta_argtypes(conditionOK(diver)).

% fluent HasDecompressionIllness(diver)
 %  fluent(hasDecompressionIllness(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3962
==> mpred_prop(hasDecompressionIllness(diver),fluent).
==> meta_argtypes(hasDecompressionIllness(diver)).

% event StartDecompressionIllness(diver)
 %  event(startDecompressionIllness(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3964
==> mpred_prop(startDecompressionIllness(diver),event).
==> meta_argtypes(startDecompressionIllness(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3965
% [diver,time]
% Initiates(StartDecompressionIllness(diver),
%           HasDecompressionIllness(diver),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3968
axiom(initiates(startDecompressionIllness(Diver), hasDecompressionIllness(Diver), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3970
% fluent SignalingDecompress(computer,diver)
 %  fluent(signalingDecompress(computer,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3971
==> mpred_prop(signalingDecompress(computer,diver),fluent).
==> meta_argtypes(signalingDecompress(computer,diver)).

% fluent SignalingLowOnAir(computer,airtank,diver)
 %  fluent(signalingLowOnAir(computer,airtank,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3973
==> mpred_prop(signalingLowOnAir(computer,airtank,diver),fluent).
==> meta_argtypes(signalingLowOnAir(computer,airtank,diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3974
% [computer,airtank,diver,time]
% HoldsAt(SignalingLowOnAir(computer,airtank,diver),time) ->
% HoldsAt(LowOnAir(airtank),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3976
axiom(holds_at(lowOnAir(Airtank), Time),
   
    [ holds_at(signalingLowOnAir(Computer, Airtank, Diver),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3978
% [computer,diver,time]
% HoldsAt(SignalingDecompress(computer,diver),time) ->
% !{time1} time1<time & Happens(Decompress(diver),time1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3980
axiom(not(exists([Time1],  (Time1<Time, happens(decompress(Diver), Time1)))),
    [holds_at(signalingDecompress(Computer, Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3982
% event Decompress(diver)
 %  event(decompress(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3983
==> mpred_prop(decompress(diver),event).
==> meta_argtypes(decompress(diver)).

% event EqualizeEars(diver)
 %  event(equalizeEars(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3985
==> mpred_prop(equalizeEars(diver),event).
==> meta_argtypes(equalizeEars(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3986
% [diver,time]
% (Happens(Descend1(diver),time) | Happens(Ascend1(diver),time)) &
% !Happens(EqualizeEars(diver),time) ->
% Happens(StartEarPain(diver),time) &
% Happens(RuptureEardrum(diver),time).

 /*   if(((happens(descend1(Diver), Time);happens(ascend1(Diver), Time)), not(happens(equalizeEars(Diver), Time))),
          (happens(startEarPain(Diver), Time), happens(ruptureEardrum(Diver), Time))).
 */

 /*  happens(startEarPain(StartEarPain_Ret), Maptime) :-
       not(happens(equalizeEars(StartEarPain_Ret), Maptime)),
       (   happens(descend1(StartEarPain_Ret), Maptime)
       ;   happens(ascend1(StartEarPain_Ret), Maptime)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3990
axiom(happens(startEarPain(StartEarPain_Ret), Maptime),
   
    [ happens(descend1(StartEarPain_Ret), Maptime),
      not(happens(equalizeEars(StartEarPain_Ret), Maptime))
    ]).
axiom(happens(startEarPain(StartEarPain_Ret), Maptime),
   
    [ happens(ascend1(StartEarPain_Ret), Maptime),
      not(happens(equalizeEars(StartEarPain_Ret), Maptime))
    ]).

 /*  happens(ruptureEardrum(RuptureEardrum_Ret), Maptime4) :-
       not(happens(equalizeEars(RuptureEardrum_Ret), Maptime4)),
       (   happens(descend1(RuptureEardrum_Ret), Maptime4)
       ;   happens(ascend1(RuptureEardrum_Ret), Maptime4)
       ).
 */
axiom(happens(ruptureEardrum(RuptureEardrum_Ret), Maptime4),
   
    [ happens(descend1(RuptureEardrum_Ret), Maptime4),
      not(happens(equalizeEars(RuptureEardrum_Ret), Maptime4))
    ]).
axiom(happens(ruptureEardrum(RuptureEardrum_Ret), Maptime4),
   
    [ happens(ascend1(RuptureEardrum_Ret), Maptime4),
      not(happens(equalizeEars(RuptureEardrum_Ret), Maptime4))
    ]).

 /*  happens(equalizeEars(EqualizeEars_Ret), Maptime6) :-
       (   happens(descend1(EqualizeEars_Ret), Maptime6)
       ;   happens(ascend1(EqualizeEars_Ret), Maptime6)
       ),
       (   not(happens(startEarPain(EqualizeEars_Ret), Maptime6))
       ;   not(happens(ruptureEardrum(EqualizeEars_Ret), Maptime6))
       ).
 */
axiom(happens(equalizeEars(EqualizeEars_Ret), Maptime6),
   
    [ not(happens(startEarPain(EqualizeEars_Ret), Maptime6)),
      happens(descend1(EqualizeEars_Ret), Maptime6)
    ]).
axiom(happens(equalizeEars(EqualizeEars_Ret), Maptime6),
   
    [ not(happens(ruptureEardrum(EqualizeEars_Ret), Maptime6)),
      happens(descend1(EqualizeEars_Ret), Maptime6)
    ]).
axiom(happens(equalizeEars(EqualizeEars_Ret), Maptime6),
   
    [ not(happens(startEarPain(EqualizeEars_Ret), Maptime6)),
      happens(ascend1(EqualizeEars_Ret), Maptime6)
    ]).
axiom(happens(equalizeEars(EqualizeEars_Ret), Maptime6),
   
    [ not(happens(ruptureEardrum(EqualizeEars_Ret), Maptime6)),
      happens(ascend1(EqualizeEars_Ret), Maptime6)
    ]).

 /*  not(happens(descend1(Descend1_Ret), Maptime8)) :-
       not(happens(equalizeEars(Descend1_Ret), Maptime8)),
       (   not(happens(startEarPain(Descend1_Ret), Maptime8))
       ;   not(happens(ruptureEardrum(Descend1_Ret), Maptime8))
       ).
 */
axiom(not(happens(descend1(Descend1_Ret), Maptime8)),
   
    [ not(happens(startEarPain(Descend1_Ret), Maptime8)),
      not(happens(equalizeEars(Descend1_Ret), Maptime8))
    ]).
axiom(not(happens(descend1(Descend1_Ret), Maptime8)),
   
    [ not(happens(ruptureEardrum(Descend1_Ret), Maptime8)),
      not(happens(equalizeEars(Descend1_Ret), Maptime8))
    ]).

 /*  not(happens(ascend1(Ascend1_Ret), Maptime10)) :-
       not(happens(equalizeEars(Ascend1_Ret), Maptime10)),
       (   not(happens(startEarPain(Ascend1_Ret), Maptime10))
       ;   not(happens(ruptureEardrum(Ascend1_Ret), Maptime10))
       ).
 */
axiom(not(happens(ascend1(Ascend1_Ret), Maptime10)),
   
    [ not(happens(startEarPain(Ascend1_Ret), Maptime10)),
      not(happens(equalizeEars(Ascend1_Ret), Maptime10))
    ]).
axiom(not(happens(ascend1(Ascend1_Ret), Maptime10)),
   
    [ not(happens(ruptureEardrum(Ascend1_Ret), Maptime10)),
      not(happens(equalizeEars(Ascend1_Ret), Maptime10))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3992
% [diver,time]
% Happens(Ascend1(diver),time) &
% !Happens(Decompress(diver),time) ->
% Happens(StartDecompressionIllness(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3995
axiom(happens(startDecompressionIllness(Diver), Time),
   
    [ happens(ascend1(Diver), Time),
      not(happens(decompress(Diver), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:3997
% [diver1,diver2,time]
% HoldsAt(Holding(diver1,diver2),time) &
% Happens(Ascend1(diver1),time) &
% !Happens(Decompress(diver2),time) ->
% Happens(StartDecompressionIllness(diver2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4001
axiom(happens(startDecompressionIllness(Diver2), Time),
   
    [ holds_at(holding(Diver1, Diver2), Time),
      happens(ascend1(Diver1), Time),
      not(happens(decompress(Diver2), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4003
% [diver,time]
% Happens(Decompress(diver),time) ->
% ({depth} depth>0 & HoldsAt(AtDepth(diver,depth),time)) &
% !HoldsAt(UncontrolledBuoyancy(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4006
axiom(requires(decompress(Diver), Time),
   
    [ comparison(Depth, 0, >),
      holds_at(atDepth(Diver, Depth), Time),
      not(holds_at(uncontrolledBuoyancy(Diver), Time))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4008
% fluent HasHeadache(diver)
 %  fluent(hasHeadache(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4009
==> mpred_prop(hasHeadache(diver),fluent).
==> meta_argtypes(hasHeadache(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4010
% [diver,time]
% HoldsAt(ConditionOK(diver),time) ->
% !HoldsAt(Unconscious(diver),time) &
% !HoldsAt(HasEarPain(diver),time) &
% !HoldsAt(HasRupturedEardrum(diver),time) &
% !HoldsAt(HasDecompressionIllness(diver),time) &
% !HoldsAt(HasHeadache(diver),time).

 /*   if(holds_at(conditionOK(Diver), Time),
          (not(holds_at(unconscious(Diver), Time)), not(holds_at(hasEarPain(Diver), Time)), not(holds_at(hasRupturedEardrum(Diver), Time)), not(holds_at(hasDecompressionIllness(Diver), Time)), not(holds_at(hasHeadache(Diver), Time)))).
 */

 /*  not(holds_at(conditionOK(ConditionOK_Ret), Time2)) :-
       (   holds_at(unconscious(ConditionOK_Ret), Time2)
       ;   holds_at(hasEarPain(ConditionOK_Ret), Time2)
       ;   holds_at(hasRupturedEardrum(ConditionOK_Ret), Time2)
       ;   holds_at(hasDecompressionIllness(ConditionOK_Ret), Time2)
       ;   holds_at(hasHeadache(ConditionOK_Ret), Time2)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4016
axiom(not(holds_at(conditionOK(ConditionOK_Ret), Time2)),
    [holds_at(unconscious(ConditionOK_Ret), Time2)]).
axiom(not(holds_at(conditionOK(ConditionOK_Ret), Time2)),
    [holds_at(hasEarPain(ConditionOK_Ret), Time2)]).
axiom(not(holds_at(conditionOK(ConditionOK_Ret), Time2)),
    [holds_at(hasRupturedEardrum(ConditionOK_Ret), Time2)]).
axiom(not(holds_at(conditionOK(ConditionOK_Ret), Time2)),
    [holds_at(hasDecompressionIllness(ConditionOK_Ret), Time2)]).
axiom(not(holds_at(conditionOK(ConditionOK_Ret), Time2)),
    [holds_at(hasHeadache(ConditionOK_Ret), Time2)]).

 /*  not(holds_at(unconscious(Unconscious_Ret), Time4)) :-
       holds_at(conditionOK(Unconscious_Ret), Time4).
 */
axiom(not(holds_at(unconscious(Unconscious_Ret), Time4)),
    [holds_at(conditionOK(Unconscious_Ret), Time4)]).

 /*  not(holds_at(hasEarPain(HasEarPain_Ret), Time6)) :-
       holds_at(conditionOK(HasEarPain_Ret), Time6).
 */
axiom(not(holds_at(hasEarPain(HasEarPain_Ret), Time6)),
    [holds_at(conditionOK(HasEarPain_Ret), Time6)]).

 /*  not(holds_at(hasRupturedEardrum(HasRupturedEardrum_Ret), Time8)) :-
       holds_at(conditionOK(HasRupturedEardrum_Ret), Time8).
 */
axiom(not(holds_at(hasRupturedEardrum(HasRupturedEardrum_Ret), Time8)),
    [holds_at(conditionOK(HasRupturedEardrum_Ret), Time8)]).

 /*  not(holds_at(hasDecompressionIllness(HasDecompressionIllness_Ret), Time10)) :-
       holds_at(conditionOK(HasDecompressionIllness_Ret), Time10).
 */
axiom(not(holds_at(hasDecompressionIllness(HasDecompressionIllness_Ret), Time10)),
    [holds_at(conditionOK(HasDecompressionIllness_Ret), Time10)]).

 /*  not(holds_at(hasHeadache(HasHeadache_Ret), Time12)) :-
       holds_at(conditionOK(HasHeadache_Ret), Time12).
 */
axiom(not(holds_at(hasHeadache(HasHeadache_Ret), Time12)),
    [holds_at(conditionOK(HasHeadache_Ret), Time12)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4018
% event BeAirlifted(diver)
 %  event(beAirlifted(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4019
==> mpred_prop(beAirlifted(diver),event).
==> meta_argtypes(beAirlifted(diver)).

% event TakeInWater(diver)
 %  event(takeInWater(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4021
==> mpred_prop(takeInWater(diver),event).
==> meta_argtypes(takeInWater(diver)).

% fluent LowOnAir(airtank)
 %  fluent(lowOnAir(airtank)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4023
==> mpred_prop(lowOnAir(airtank),fluent).
==> meta_argtypes(lowOnAir(airtank)).

% event BecomeLowOnAir(airtank)
 %  event(becomeLowOnAir(airtank)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4025
==> mpred_prop(becomeLowOnAir(airtank),event).
==> meta_argtypes(becomeLowOnAir(airtank)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4026
% [airtank,time]
% Initiates(BecomeLowOnAir(airtank),LowOnAir(airtank),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4027
axiom(initiates(becomeLowOnAir(Airtank), lowOnAir(Airtank), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4029
%; initial state
% [diver]
 % HoldsAt(ConditionOK(diver),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4030
axiom(initially(conditionOK(Diver)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4031
% [diver]
 % HoldsAt(Vertical(diver),0).
axiom(initially(vertical(Diver)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4032
% !HoldsAt(DisturbedSilt(),0).
 %  not(initially(disturbedSilt())).
axiom(not(initially(disturbedSilt())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4033
% [diver]
 % !HoldsAt(UncontrolledBuoyancy(diver),0).
 %  not(initially(uncontrolledBuoyancy(Diver))).
axiom(not(initially(uncontrolledBuoyancy(UncontrolledBuoyancy_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4034
% [diver]
 % !HoldsAt(Disoriented(diver),0).
 %  not(initially(disoriented(Diver))).
axiom(not(initially(disoriented(Disoriented_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4035
% [diver]
 % !HoldsAt(PositivelyBuoyant(diver),0) &
%         !HoldsAt(NeutrallyBuoyant(diver),0) &
%         !HoldsAt(NegativelyBuoyant(diver),0).

 /*   not(holds_at(positivelyBuoyant(Diver), 0)),
      not(holds_at(neutrallyBuoyant(Diver), 0)),
      not(holds_at(negativelyBuoyant(Diver), 0)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4037
axiom(not(holds_at(positivelyBuoyant(PositivelyBuoyant_Ret), t)),
    []).
axiom(not(holds_at(neutrallyBuoyant(NeutrallyBuoyant_Ret), t)),
    []).
axiom(not(holds_at(negativelyBuoyant(NegativelyBuoyant_Ret), t)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4038
% [diver,object]
 % !HoldsAt(Wearing(diver,object),0).
 %  not(initially(wearing(Diver,Object))).
axiom(not(initially(wearing(Wearing_Param, Wearing_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4039
% [diver,object]
 % !HoldsAt(Holding(diver,object),0).
 %  not(initially(holding(Diver,Object))).
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4040
% [diver1,diver2]
 % !HoldsAt(Separated(diver1,diver2),0).
 %  not(initially(separated(Diver1,Diver2))).
axiom(not(initially(separated(Separated_Param, Separated_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4041
%;[agent,object] !HoldsAt(See(agent,object),0).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4043
% fluent Separated(diver,diver)
 %  fluent(separated(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4044
==> mpred_prop(separated(diver,diver),fluent).
==> meta_argtypes(separated(diver,diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4045
% [diver1,diver2,time]
% HoldsAt(Separated(diver1,diver2),time) ->
% HoldsAt(Separated(diver2,diver1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4047
axiom(holds_at(separated(Diver2, Diver1), Time),
    [holds_at(separated(Diver1, Diver2), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4049
% event BecomeSeparated(diver,diver)
 %  event(becomeSeparated(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4050
==> mpred_prop(becomeSeparated(diver,diver),event).
==> meta_argtypes(becomeSeparated(diver,diver)).

% event BeReunitedWith(diver,diver)
 %  event(beReunitedWith(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4052
==> mpred_prop(beReunitedWith(diver,diver),event).
==> meta_argtypes(beReunitedWith(diver,diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4053
% [diver1,diver2,time]
% Initiates(BecomeSeparated(diver1,diver2),Separated(diver1,diver2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4054
axiom(initiates(becomeSeparated(Diver1, Diver2), separated(Diver1, Diver2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4056
% [diver1,diver2,time]
% Initiates(BecomeSeparated(diver1,diver2),Separated(diver2,diver1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4057
axiom(initiates(becomeSeparated(Diver1, Diver2), separated(Diver2, Diver1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4059
% [diver1,diver2,time]
% Terminates(BeReunitedWith(diver1,diver2),Separated(diver1,diver2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4060
axiom(terminates(beReunitedWith(Diver1, Diver2), separated(Diver1, Diver2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4062
% [diver1,diver2,time]
% Terminates(BeReunitedWith(diver1,diver2),Separated(diver2,diver1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4063
axiom(terminates(beReunitedWith(Diver1, Diver2), separated(Diver2, Diver1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4065
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/Dress.e
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
%; Dress
%; (cf Sleep)
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4087
% event PutOn(agent,clothing)
 %  event(putOn(agent,clothing)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4088
==> mpred_prop(putOn(agent,clothing),event).
==> meta_argtypes(putOn(agent,clothing)).

% event TakeOff(agent,clothing)
 %  event(takeOff(agent,clothing)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4090
==> mpred_prop(takeOff(agent,clothing),event).
==> meta_argtypes(takeOff(agent,clothing)).

% fluent Wearing(agent,clothing)
 %  fluent(wearing(agent,clothing)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4092
==> mpred_prop(wearing(agent,clothing),fluent).
==> meta_argtypes(wearing(agent,clothing)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4093
% [agent,clothing,time]
% Initiates(PutOn(agent,clothing),
%           Wearing(agent,clothing),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4096
axiom(initiates(putOn(Agent, Clothing), wearing(Agent, Clothing), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4098
% [agent,clothing,time]
% Happens(PutOn(agent,clothing),time) ->
% !HoldsAt(Wearing(agent,clothing),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4101
% {location}%  HoldsAt(At(agent,location),time) &
%            HoldsAt(At(clothing,location),time).

 /*   exists([Location],
             if(happens(putOn(Agent, Clothing), Time),
                 (not(holds_at(wearing(Agent, Clothing), Time)), holds_at(at(Agent, Location), Time), holds_at(at(Clothing, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_267'(Fn_267_Param, At_Param, Maptime))) :-
       happens(putOn(Fn_267_Param, At_Param), Maptime),
       (   holds_at(wearing(Fn_267_Param, At_Param), Maptime)
       ;   not(holds_at(at(Fn_267_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4102
axiom(not(some(Location6, '$kolem_Fn_267'(Fn_267_Param, At_Param, Maptime))),
   
    [ holds_at(wearing(Fn_267_Param, At_Param), Maptime),
      happens(putOn(Fn_267_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_267'(Fn_267_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_267_Param, Location6), Maptime)),
      happens(putOn(Fn_267_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_267'(Fn_267_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(putOn(Fn_267_Param, At_Param), Maptime)
    ]).

 /*  not(happens(putOn(PutOn_Param, At_Param12), Maptime9)) :-
       (   holds_at(wearing(PutOn_Param, At_Param12), Maptime9)
       ;   not(holds_at(at(PutOn_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_267'(PutOn_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(putOn(PutOn_Param, At_Param12), Maptime9)),
   
    [ holds_at(wearing(PutOn_Param, At_Param12), Maptime9),
      some(Location10,
           '$kolem_Fn_267'(PutOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(putOn(PutOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(PutOn_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_267'(PutOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(putOn(PutOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_267'(PutOn_Param, At_Param12, Maptime9))
    ]).

 /*  not(holds_at(wearing(Wearing_Param, Wearing_Ret), Time13)) :-
       happens(putOn(Wearing_Param, Wearing_Ret), Time13),
       some(Some_Param,
            '$kolem_Fn_267'(Wearing_Param, Wearing_Ret, Time13)).
 */
axiom(not(holds_at(wearing(Wearing_Param, Wearing_Ret), Time13)),
   
    [ happens(putOn(Wearing_Param, Wearing_Ret), Time13),
      some(Some_Param,
           '$kolem_Fn_267'(Wearing_Param, Wearing_Ret, Time13))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(putOn(At_Param19, PutOn_Ret), Time18),
       some(Location17,
            '$kolem_Fn_267'(At_Param19, PutOn_Ret, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(putOn(At_Param19, PutOn_Ret), Time18),
      some(Location17,
           '$kolem_Fn_267'(At_Param19, PutOn_Ret, Time18))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(putOn(PutOn_Param24, At_Param23), Time22),
       some(Location21,
            '$kolem_Fn_267'(PutOn_Param24, At_Param23, Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(putOn(PutOn_Param24, At_Param23), Time22),
      some(Location21,
           '$kolem_Fn_267'(PutOn_Param24, At_Param23, Time22))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4104
% [agent,clothing,time]
% Terminates(TakeOff(agent,clothing),
%            Wearing(agent,clothing),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4107
axiom(terminates(takeOff(Agent, Clothing), wearing(Agent, Clothing), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4109
% [agent,clothing,time]
% Happens(TakeOff(agent,clothing),time) ->
% HoldsAt(Wearing(agent,clothing),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4111
axiom(requires(takeOff(Agent, Clothing), Time),
    [holds_at(wearing(Agent, Clothing), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4113
% [agent,clothing,location,time]
% Releases(PutOn(agent,clothing),At(clothing,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4114
axiom(releases(putOn(Agent, Clothing), at(Clothing, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4116
% [agent,clothing,location,time]
% HoldsAt(Wearing(agent,clothing),time) &
% HoldsAt(At(agent,location),time) ->
% HoldsAt(At(clothing,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4119
axiom(holds_at(at(Clothing, Location), Time),
   
    [ holds_at(wearing(Agent, Clothing), Time),
      holds_at(at(Agent, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4121
%;[agent,clothing,location1,location2,time]
%;HoldsAt(At(agent,location1),time) &
%;location1 != location2 ->
%;Terminates(TakeOff(agent,clothing),At(clothing,location2),time).
% [agent,clothing,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4127
% HoldsAt(At(agent,location),time) ->
% Initiates(TakeOff(agent,clothing),At(clothing,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4128
axiom(initiates(takeOff(Agent, Clothing), at(Clothing, Location), Time),
    [holds_at(at(Agent, Location), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4130
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/HungerNeed.e
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
%; hunger need
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4151
% fluent Hungry(agent)
 %  fluent(hungry(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4152
==> mpred_prop(hungry(agent),fluent).
==> meta_argtypes(hungry(agent)).

% fluent Satiated(agent)
 %  fluent(satiated(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4154
==> mpred_prop(satiated(agent),fluent).
==> meta_argtypes(satiated(agent)).

% noninertial Satiated
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4155
==> noninertial(satiated).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4156
% [agent,time]
 % HoldsAt(Hungry(agent),time) <-> !HoldsAt(Satiated(agent),time).

 /*  holds_at(hungry(Agent), Time) <->
       not(holds_at(satiated(Agent), Time)).
 */
axiom(holds_at(hungry(Agent), Time),
    [not(holds_at(satiated(Agent), Time))]).
axiom(not(holds_at(satiated(Agent), Time)),
    [holds_at(hungry(Agent), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4158
% event Eat(agent,food)
 %  event(eat(agent,food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4159
==> mpred_prop(eat(agent,food),event).
==> meta_argtypes(eat(agent,food)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4160
% [agent,food,time]
% Happens(Eat(agent,food),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4162
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(food,location),time).

 /*   exists([Location],
             if(happens(eat(Agent, Food), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Food, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_268'(Fn_268_Param, At_Param, Maptime))) :-
       happens(eat(Fn_268_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_268_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4164
axiom(not(some(Location6, '$kolem_Fn_268'(Fn_268_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_268_Param, Location6), Maptime)),
      happens(eat(Fn_268_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_268'(Fn_268_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(eat(Fn_268_Param, At_Param), Maptime)
    ]).

 /*  not(happens(eat(Eat_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(Eat_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_268'(Eat_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(eat(Eat_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(Eat_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_268'(Eat_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(eat(Eat_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_268'(Eat_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(eat(At_Param15, Eat_Ret), Time14),
       some(Location13,
            '$kolem_Fn_268'(At_Param15, Eat_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(eat(At_Param15, Eat_Ret), Time14),
      some(Location13,
           '$kolem_Fn_268'(At_Param15, Eat_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(eat(Eat_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_268'(Eat_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(eat(Eat_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_268'(Eat_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4166
% [agent,food,time]
% Terminates(Eat(agent,food),Hungry(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4167
axiom(terminates(eat(Agent, Food), hungry(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4169
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/Restaurant.e
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4187
% sort restaurant: script
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4188
==> subsort(restaurant,script).

% sort waiter: agent
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4189
==> subsort(waiter,agent).

% sort cook: agent
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4190
==> subsort(cook,agent).

% function BillOf(restaurant): bill
 %  functional_predicate(billOf(restaurant,bill)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4192
==> mpred_prop(billOf(restaurant,bill),functional_predicate).
==> meta_argtypes(billOf(restaurant,bill)).
resultIsa(billOf,bill).

% function CookOf(restaurant): cook
 %  functional_predicate(cookOf(restaurant,cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4193
==> mpred_prop(cookOf(restaurant,cook),functional_predicate).
==> meta_argtypes(cookOf(restaurant,cook)).
resultIsa(cookOf,cook).

% function TableOf(restaurant): table
 %  functional_predicate(tableOf(restaurant,table)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4194
==> mpred_prop(tableOf(restaurant,table),functional_predicate).
==> meta_argtypes(tableOf(restaurant,table)).
resultIsa(tableOf,table).

% function WaiterOf(restaurant): waiter
 %  functional_predicate(waiterOf(restaurant,waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4195
==> mpred_prop(waiterOf(restaurant,waiter),functional_predicate).
==> meta_argtypes(waiterOf(restaurant,waiter)).
resultIsa(waiterOf,waiter).

% function KitchenDoorOf(restaurant): door
 %  functional_predicate(kitchenDoorOf(restaurant,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4196
==> mpred_prop(kitchenDoorOf(restaurant,door),functional_predicate).
==> meta_argtypes(kitchenDoorOf(restaurant,door)).
resultIsa(kitchenDoorOf,door).
%; awaiting customer/waiter has set down bill on customer's table

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4198
% fluent BeWaiter0(waiter)
 %  fluent(beWaiter0(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4199
==> mpred_prop(beWaiter0(waiter),fluent).
==> meta_argtypes(beWaiter0(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4200
%; awaiting customer order

% fluent BeWaiter1(waiter)
 %  fluent(beWaiter1(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4202
==> mpred_prop(beWaiter1(waiter),fluent).
==> meta_argtypes(beWaiter1(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4203
%; has customer order

% fluent BeWaiter2(waiter)
 %  fluent(beWaiter2(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4205
==> mpred_prop(beWaiter2(waiter),fluent).
==> meta_argtypes(beWaiter2(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4206
%; in kitchen

% fluent BeWaiter3(waiter)
 %  fluent(beWaiter3(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4208
==> mpred_prop(beWaiter3(waiter),fluent).
==> meta_argtypes(beWaiter3(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4209
%; awaiting preparation of order

% fluent BeWaiter4(waiter)
 %  fluent(beWaiter4(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4211
==> mpred_prop(beWaiter4(waiter),fluent).
==> meta_argtypes(beWaiter4(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4212
%; has order

% fluent BeWaiter5(waiter)
 %  fluent(beWaiter5(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4214
==> mpred_prop(beWaiter5(waiter),fluent).
==> meta_argtypes(beWaiter5(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4215
%; back in dining room

% fluent BeWaiter6(waiter)
 %  fluent(beWaiter6(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4217
==> mpred_prop(beWaiter6(waiter),fluent).
==> meta_argtypes(beWaiter6(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4218
%; order delivered to customer (can ask if all is OK)

% fluent BeWaiter7(waiter)
 %  fluent(beWaiter7(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4220
==> mpred_prop(beWaiter7(waiter),fluent).
==> meta_argtypes(beWaiter7(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4221
%; customer has requested bill

% fluent BeWaiter8(waiter)
 %  fluent(beWaiter8(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4223
==> mpred_prop(beWaiter8(waiter),fluent).
==> meta_argtypes(beWaiter8(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4224
%; waiter is holding bill

% fluent BeWaiter9(waiter)
 %  fluent(beWaiter9(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4226
==> mpred_prop(beWaiter9(waiter),fluent).
==> meta_argtypes(beWaiter9(waiter)).

% xor BeWaiter0, BeWaiter1, BeWaiter2, BeWaiter3, BeWaiter4, BeWaiter5, BeWaiter6, BeWaiter7, BeWaiter8, BeWaiter9
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4228
xor([ beWaiter0,
      beWaiter1,
      beWaiter2,
      beWaiter3,
      beWaiter4,
      beWaiter5,
      beWaiter6,
      beWaiter7,
      beWaiter8,
      beWaiter9
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4229
% [waiter,agent,time]
% HoldsAt(BeWaiter0(waiter),time) ->
% Terminates(Greet(waiter,agent),
%            BeWaiter0(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4233
axiom(terminates(greet(Waiter, Agent), beWaiter0(Waiter), Time),
    [holds_at(beWaiter0(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4235
% [waiter,agent,time]
% HoldsAt(BeWaiter0(waiter),time) ->
% Initiates(Greet(waiter,agent),
%           BeWaiter1(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4239
axiom(initiates(greet(Waiter, Agent), beWaiter1(Waiter), Time),
    [holds_at(beWaiter0(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4241
% [waiter,agent,food,time]
% HoldsAt(BeWaiter1(waiter),time) ->
% Terminates(Order(agent,waiter,food),
%            BeWaiter1(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4245
axiom(terminates(order(Agent, Waiter, Food), beWaiter1(Waiter), Time),
    [holds_at(beWaiter1(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4247
% [waiter,agent,food,time]
% HoldsAt(BeWaiter1(waiter),time) ->
% Initiates(Order(agent,waiter,food),
%           BeWaiter2(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4251
axiom(initiates(order(Agent, Waiter, Food), beWaiter2(Waiter), Time),
    [holds_at(beWaiter1(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4253
% [restaurant,waiter,time]
% WaiterOf(restaurant)=waiter &
% HoldsAt(BeWaiter2(waiter),time) ->
% Happens(WalkThroughDoor12(waiter,KitchenDoorOf(restaurant)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4256
axiom(happens(walkThroughDoor12(Waiter, kitchenDoorOf(Restaurant)), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      holds_at(beWaiter2(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4258
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter2(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Terminates(WalkThroughDoor12(waiter,door),
%            BeWaiter2(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4264
axiom(terminates(walkThroughDoor12(Waiter, Door), beWaiter2(Waiter), Time),
   
    [ holds_at(beWaiter2(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4266
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter2(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Initiates(WalkThroughDoor12(waiter,door),
%           BeWaiter3(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4272
axiom(initiates(walkThroughDoor12(Waiter, Door), beWaiter3(Waiter), Time),
   
    [ holds_at(beWaiter2(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4274
% [restaurant,food,time]
% HoldsAt(BeWaiter3(WaiterOf(restaurant)),time) &
% ({agent} HoldsAt(KnowOrder(WaiterOf(restaurant),agent,food),time)) ->
% Happens(Order(WaiterOf(restaurant),CookOf(restaurant),food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4277
axiom(happens(order(waiterOf(Restaurant), cookOf(Restaurant), Food), Time),
   
    [ holds_at(beWaiter3(waiterOf(Restaurant)), Time),
      holds_at(knowOrder(waiterOf(Restaurant), Agent, Food),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4279
% [restaurant,waiter,cook,food,time]
% WaiterOf(restaurant)=waiter &
% CookOf(restaurant)=cook &
% HoldsAt(BeWaiter3(waiter),time) ->
% Terminates(Order(waiter,cook,food),
%            BeWaiter3(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4285
axiom(terminates(order(Waiter, Cook, Food), beWaiter3(Waiter), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(cookOf(Restaurant), Cook),
      holds_at(beWaiter3(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4287
% [restaurant,waiter,cook,food,time]
% WaiterOf(restaurant)=waiter &
% CookOf(restaurant)=cook &
% HoldsAt(BeWaiter3(waiter),time) ->
% Initiates(Order(waiter,cook,food),
%           BeWaiter4(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4293
axiom(initiates(order(Waiter, Cook, Food), beWaiter4(Waiter), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(cookOf(Restaurant), Cook),
      holds_at(beWaiter3(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4295
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) &
% HoldsAt(FoodPrepared(food),time) ->
% Happens(PickUp(waiter,food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4299
axiom(happens(pickUp(Waiter, Food), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time),
      holds_at(foodPrepared(Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4301
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) ->
% Terminates(PickUp(waiter,food),
%            BeWaiter4(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4306
axiom(terminates(pickUp(Waiter, Food), beWaiter4(Waiter), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4308
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) ->
% Initiates(PickUp(waiter,food),
%           BeWaiter5(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4313
axiom(initiates(pickUp(Waiter, Food), beWaiter5(Waiter), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4315
% [restaurant,waiter,time]
% WaiterOf(restaurant)=waiter &
% HoldsAt(BeWaiter5(waiter),time) ->
% Happens(WalkThroughDoor21(waiter,KitchenDoorOf(restaurant)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4318
axiom(happens(walkThroughDoor21(Waiter, kitchenDoorOf(Restaurant)), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      holds_at(beWaiter5(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4320
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter5(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Terminates(WalkThroughDoor21(waiter,door),
%            BeWaiter5(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4326
axiom(terminates(walkThroughDoor21(Waiter, Door), beWaiter5(Waiter), Time),
   
    [ holds_at(beWaiter5(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4328
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter5(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Initiates(WalkThroughDoor21(waiter,door),
%           BeWaiter6(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4334
axiom(initiates(walkThroughDoor21(Waiter, Door), beWaiter6(Waiter), Time),
   
    [ holds_at(beWaiter5(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4336
% [restaurant,waiter,table,food,time]
% WaiterOf(restaurant)=waiter &
% TableOf(restaurant)=table &
% HoldsAt(BeWaiter6(waiter),time) &
% HoldsAt(Holding(waiter,food),time) ->
% Happens(PlaceOn(waiter,food,table),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4341
axiom(happens(placeOn(Waiter, Food, Table), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(tableOf(Restaurant), Table),
      holds_at(beWaiter6(Waiter), Time),
      holds_at(holding(Waiter, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4343
% [waiter,food,table,time]
% HoldsAt(BeWaiter6(waiter),time) ->
% Terminates(PlaceOn(waiter,food,table),
%            BeWaiter6(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4347
axiom(terminates(placeOn(Waiter, Food, Table), beWaiter6(Waiter), Time),
    [holds_at(beWaiter6(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4349
% [waiter,food,table,time]
% HoldsAt(BeWaiter6(waiter),time) ->
% Initiates(PlaceOn(waiter,food,table),
%           BeWaiter7(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4353
axiom(initiates(placeOn(Waiter, Food, Table), beWaiter7(Waiter), Time),
    [holds_at(beWaiter6(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4355
% [waiter,agent,bill,time]
% HoldsAt(BeWaiter7(waiter),time) ->
% Terminates(Request(agent,waiter,bill),
%            BeWaiter7(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4359
axiom(terminates(request(Agent, Waiter, Bill), beWaiter7(Waiter), Time),
    [holds_at(beWaiter7(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4361
% [waiter,agent,bill,time]
% HoldsAt(BeWaiter7(waiter),time) ->
% Initiates(Request(agent,waiter,bill),
%           BeWaiter8(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4365
axiom(initiates(request(Agent, Waiter, Bill), beWaiter8(Waiter), Time),
    [holds_at(beWaiter7(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4367
% [restaurant,waiter,bill,time]
% WaiterOf(restaurant)=waiter &
% BillOf(restaurant)=bill &
% HoldsAt(BeWaiter8(waiter),time) ->
% Happens(PickUp(waiter,bill),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4371
axiom(happens(pickUp(Waiter, Bill), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(billOf(Restaurant), Bill),
      holds_at(beWaiter8(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4373
% [waiter,bill,time]
% HoldsAt(BeWaiter8(waiter),time) ->
% Terminates(PickUp(waiter,bill),
%            BeWaiter8(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4377
axiom(terminates(pickUp(Waiter, Bill), beWaiter8(Waiter), Time),
    [holds_at(beWaiter8(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4379
% [waiter,bill,time]
% HoldsAt(BeWaiter8(waiter),time) ->
% Initiates(PickUp(waiter,bill),
%           BeWaiter9(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4383
axiom(initiates(pickUp(Waiter, Bill), beWaiter9(Waiter), Time),
    [holds_at(beWaiter8(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4385
% [restaurant,waiter,bill,table,time]
% WaiterOf(restaurant)=waiter &
% BillOf(restaurant)=bill &
% TableOf(restaurant)=table &
% HoldsAt(BeWaiter9(waiter),time) ->
% Happens(PlaceOn(waiter,bill,table),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4390
axiom(happens(placeOn(Waiter, Bill, Table), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(billOf(Restaurant), Bill),
      equals(tableOf(Restaurant), Table),
      holds_at(beWaiter9(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4392
% [waiter,bill,table,time]
% HoldsAt(BeWaiter9(waiter),time) ->
% Terminates(PlaceOn(waiter,bill,table),
%            BeWaiter9(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4396
axiom(terminates(placeOn(Waiter, Bill, Table), beWaiter9(Waiter), Time),
    [holds_at(beWaiter9(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4398
% [waiter,bill,table,time]
% HoldsAt(BeWaiter9(waiter),time) ->
% Initiates(PlaceOn(waiter,bill,table),
%           BeWaiter0(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4402
axiom(initiates(placeOn(Waiter, Bill, Table), beWaiter0(Waiter), Time),
    [holds_at(beWaiter9(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4404
%; awaiting next waiter order

% fluent BeCook0(cook)
 %  fluent(beCook0(cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4406
==> mpred_prop(beCook0(cook),fluent).
==> meta_argtypes(beCook0(cook)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4407
%; waiter order received

% fluent BeCook1(cook)
 %  fluent(beCook1(cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4409
==> mpred_prop(beCook1(cook),fluent).
==> meta_argtypes(beCook1(cook)).

% xor BeCook0, BeCook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4411
xor([beCook0,beCook1]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4412
% [cook,agent,food,time]
% HoldsAt(BeCook0(cook),time) ->
% Terminates(Order(agent,cook,food),
%            BeCook0(cook),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4416
axiom(terminates(order(Agent, Cook, Food), beCook0(Cook), Time),
    [holds_at(beCook0(Cook), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4418
% [cook,agent,food,time]
% HoldsAt(BeCook0(cook),time) ->
% Initiates(Order(agent,cook,food),
%           BeCook1(cook),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4422
axiom(initiates(order(Agent, Cook, Food), beCook1(Cook), Time),
    [holds_at(beCook0(Cook), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4424
% event FoodPrepare(agent,food)
 %  event(foodPrepare(agent,food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4425
==> mpred_prop(foodPrepare(agent,food),event).
==> meta_argtypes(foodPrepare(agent,food)).

% fluent FoodPrepared(food)
 %  fluent(foodPrepared(food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4427
==> mpred_prop(foodPrepared(food),fluent).
==> meta_argtypes(foodPrepared(food)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4428
% [agent,food,time]
% Initiates(FoodPrepare(agent,food),
%           FoodPrepared(food),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4431
axiom(initiates(foodPrepare(Agent, Food), foodPrepared(Food), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4433
% [agent,food,time]
% Happens(FoodPrepare(agent,food),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4435
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(food,location),time).

 /*   exists([Location],
             if(happens(foodPrepare(Agent, Food), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Food, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_273'(Fn_273_Param, At_Param, Maptime))) :-
       happens(foodPrepare(Fn_273_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_273_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4437
axiom(not(some(Location6, '$kolem_Fn_273'(Fn_273_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_273_Param, Location6), Maptime)),
      happens(foodPrepare(Fn_273_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_273'(Fn_273_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(foodPrepare(Fn_273_Param, At_Param), Maptime)
    ]).

 /*  not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(FoodPrepare_Param, Location10),
                        Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_273'(FoodPrepare_Param,
                            At_Param12,
                            Maptime9)).
 */
axiom(not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(FoodPrepare_Param, Location10),
                   Maptime9)),
      some(Location10,
           '$kolem_Fn_273'(FoodPrepare_Param,
                           At_Param12,
                           Maptime9))
    ]).
axiom(not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_273'(FoodPrepare_Param,
                           At_Param12,
                           Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(foodPrepare(At_Param15, FoodPrepare_Ret), Time14),
       some(Location13,
            '$kolem_Fn_273'(At_Param15, FoodPrepare_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(foodPrepare(At_Param15, FoodPrepare_Ret),
              Time14),
      some(Location13,
           '$kolem_Fn_273'(At_Param15, FoodPrepare_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(foodPrepare(FoodPrepare_Param20, At_Param19),
               Time18),
       some(Location17,
            '$kolem_Fn_273'(FoodPrepare_Param20,
                            At_Param19,
                            Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(foodPrepare(FoodPrepare_Param20, At_Param19),
              Time18),
      some(Location17,
           '$kolem_Fn_273'(FoodPrepare_Param20,
                           At_Param19,
                           Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4439
% [cook,agent,food,time]
% HoldsAt(BeCook1(cook),time) &
% HoldsAt(KnowOrder(cook,agent,food),time) ->
% Happens(FoodPrepare(cook,food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4442
axiom(happens(foodPrepare(Cook, Food), Time),
   
    [ holds_at(beCook1(Cook), Time),
      holds_at(knowOrder(Cook, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4444
% [cook,food,time]
% HoldsAt(BeCook1(cook),time) ->
% Terminates(FoodPrepare(cook,food),
%            BeCook1(cook),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4448
axiom(terminates(foodPrepare(Cook, Food), beCook1(Cook), Time),
    [holds_at(beCook1(Cook), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4450
% [cook,food,time]
% HoldsAt(BeCook1(cook),time) ->
% Initiates(FoodPrepare(cook,food),
%           BeCook0(cook),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4454
axiom(initiates(foodPrepare(Cook, Food), beCook0(Cook), Time),
    [holds_at(beCook1(Cook), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4456
%; End of file.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: ecnet/EatingInAHouse.e
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

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4485
% option modeldiff on
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4486
:- set_ec_option(modeldiff, on).

% option encoding 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4487
:- set_ec_option(encoding, 3).

% option renaming off
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4488
:- set_ec_option(renaming, off).

% ignore Love, ThreatenedBy
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4490
ignore(love).
ignore(threatenedBy).

% ignore LookOutOnto, Floor, BuildingOf, SkyOf, GroundOf
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4491
ignore(lookOutOnto).
ignore(floor).
ignore(buildingOf).
ignore(skyOf).
ignore(groundOf).

% ignore Inside
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4492
ignore(inside).

% ignore Near, WalkFrom, WalkFromTo, RunFromTo
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4493
ignore(near).
ignore(walkFrom).
ignore(walkFromTo).
ignore(runFromTo).

% ignore BillOf, CookOf, TableOf, WaiterOf, KitchenDoorOf
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4494
ignore(billOf).
ignore(cookOf).
ignore(tableOf).
ignore(waiterOf).
ignore(kitchenDoorOf).

% ignore BeWaiter0, BeWaiter1, BeWaiter2, BeWaiter3, BeWaiter4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4495
ignore(beWaiter0).
ignore(beWaiter1).
ignore(beWaiter2).
ignore(beWaiter3).
ignore(beWaiter4).

% ignore BeWaiter5, BeWaiter6, BeWaiter7, BeWaiter8, BeWaiter9
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4496
ignore(beWaiter5).
ignore(beWaiter6).
ignore(beWaiter7).
ignore(beWaiter8).
ignore(beWaiter9).

% ignore BeCook0, BeCook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4497
ignore(beCook0).
ignore(beCook1).

% ignore InviteIn, InvitedIn, IntendToWalkIn, IntentionToWalkIn
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4498
ignore(inviteIn).
ignore(invitedIn).
ignore(intendToWalkIn).
ignore(intentionToWalkIn).

% ignore ActOnIntentionToWalkIn, Greet, SayGoodbye, CryForJoy
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4499
ignore(actOnIntentionToWalkIn).
ignore(greet).
ignore(sayGoodbye).
ignore(cryForJoy).

% ignore Threaten, ReleaseFromThreat, ThreatenedBy
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4500
ignore(threaten).
ignore(releaseFromThreat).
ignore(threatenedBy).

% ignore Order, KnowOrder, Request, KnowRequest
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4501
ignore(order).
ignore(knowOrder).
ignore(request).
ignore(knowRequest).

% ignore PutInside, TakeOutOf
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4502
ignore(putInside).
ignore(takeOutOf).

% ignore SayPleaseToMeet, Move
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4503
ignore(sayPleaseToMeet).
ignore(move).

% load foundations/Root.e

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4505
% load foundations/EC.e

% load answers/Mueller2003/Ontology.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4507
load('answers/Mueller2003/Ontology.e').

% load answers/Mueller2004c/RTSpaceM.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4508
load('answers/Mueller2004c/RTSpaceM.e').

% load answers/Mueller2004c/OTSpaceM.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4509
load('answers/Mueller2004c/OTSpaceM.e').

% load answers/Mueller2004c/HungerNeed.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4510
load('answers/Mueller2004c/HungerNeed.e').

% load answers/Mueller2004c/Restaurant.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4511
load('answers/Mueller2004c/Restaurant.e').

% load answers/Mueller2003/Sleep.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4512
load('answers/Mueller2003/Sleep.e').

% load answers/Mueller2003/SpeechAct.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4513
load('answers/Mueller2003/SpeechAct.e').

% load answers/Mueller2004c/Dress.e
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4514
load('answers/Mueller2004c/Dress.e').

% room Upstairs1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4516
==> t(room,upstairs1).

% staircase Staircase1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4518
==> t(staircase,staircase1).

% room Hallway1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4520
==> t(room,hallway1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4521
% Side1(Staircase1)=Hallway1.
side1(staircase1,hallway1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4522
% Side2(Staircase1)=Upstairs1.
side2(staircase1,upstairs1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4524
% door DiningRoomDoor1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4525
==> t(door,diningRoomDoor1).

% room DiningRoom1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4527
==> t(room,diningRoom1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4528
% Side1(DiningRoomDoor1)=Hallway1.
side1(diningRoomDoor1,hallway1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4529
% Side2(DiningRoomDoor1)=DiningRoom1.
side2(diningRoomDoor1,diningRoom1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4531
% door KitchenDoor1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4532
==> t(door,kitchenDoor1).

% room Kitchen1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4534
==> t(room,kitchen1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4535
% Side1(KitchenDoor1)=DiningRoom1.
side1(kitchenDoor1,diningRoom1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4536
% Side2(KitchenDoor1)=Kitchen1.
side2(kitchenDoor1,kitchen1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4538
% agent Eater1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4539
==> t(agent,eater1).

% agent Eater2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4541
==> t(agent,eater2).

% clothing Clothing1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4543
==> t(clothing,clothing1).

% clothing Clothing2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4545
==> t(clothing,clothing2).

% chair Chair1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4547
==> t(chair,chair1).

% chair Chair2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4549
==> t(chair,chair2).

% food Food1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4551
==> t(food,food1).

% agent Cook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4553
==> t(agent,cook1).

% table Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4555
==> t(table,table1).

% content Content1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4557
==> t(content,content1).

% content Content2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4559
==> t(content,content2).

% outside DummyOutside1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4561
==> t(outside,dummyOutside1).
%; prune

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4563
% sort ona, onb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4564
==> sort(ona).
==> sort(onb).

% fluent! On(ona,onb)
 %  fluent(on(ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4565
==> mpred_prop(on(ona,onb),fluent).
==> meta_argtypes(on(ona,onb)).

% event! PlaceOn(agent,ona,onb)
 %  event(placeOn(agent,ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4566
==> mpred_prop(placeOn(agent,ona,onb),event).
==> meta_argtypes(placeOn(agent,ona,onb)).

% event! TakeOffOf(agent,ona,onb)
 %  event(takeOffOf(agent,ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4567
==> mpred_prop(takeOffOf(agent,ona,onb),event).
==> meta_argtypes(takeOffOf(agent,ona,onb)).

% sort ordera, orderb, orderc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4569
==> sort(ordera).
==> sort(orderb).
==> sort(orderc).

% event! Order(ordera,orderb,orderc)
 %  event(order(ordera,orderb,orderc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4570
==> mpred_prop(order(ordera,orderb,orderc),event).
==> meta_argtypes(order(ordera,orderb,orderc)).

% fluent! KnowOrder(orderb,ordera,orderc)
 %  fluent(knowOrder(orderb,ordera,orderc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4571
==> mpred_prop(knowOrder(orderb,ordera,orderc),fluent).
==> meta_argtypes(knowOrder(orderb,ordera,orderc)).

% sort requesta, requestb, requestc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4573
==> sort(requesta).
==> sort(requestb).
==> sort(requestc).

% event! Request(requesta,requestb,requestc)
 %  event(request(requesta,requestb,requestc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4574
==> mpred_prop(request(requesta,requestb,requestc),event).
==> meta_argtypes(request(requesta,requestb,requestc)).

% fluent! KnowRequest(requestb,requesta,requestc)
 %  fluent(knowRequest(requestb,requesta,requestc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4575
==> mpred_prop(knowRequest(requestb,requesta,requestc),fluent).
==> meta_argtypes(knowRequest(requestb,requesta,requestc)).

% sort holda, holdb, holdc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4577
==> sort(holda).
==> sort(holdb).
==> sort(holdc).

% event! TakeOffOf(holda,holdb,holdc)
 %  event(takeOffOf(holda,holdb,holdc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4578
==> mpred_prop(takeOffOf(holda,holdb,holdc),event).
==> meta_argtypes(takeOffOf(holda,holdb,holdc)).

% event! PickUp(holda,holdb)
 %  event(pickUp(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4579
==> mpred_prop(pickUp(holda,holdb),event).
==> meta_argtypes(pickUp(holda,holdb)).

% event! LetGoOf(holda,holdb)
 %  event(letGoOf(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4580
==> mpred_prop(letGoOf(holda,holdb),event).
==> meta_argtypes(letGoOf(holda,holdb)).

% event! Hold(holda,holdb)
 %  event(hold(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4581
==> mpred_prop(hold(holda,holdb),event).
==> meta_argtypes(hold(holda,holdb)).

% fluent! Holding(holda,holdb)
 %  fluent(holding(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4582
==> mpred_prop(holding(holda,holdb),fluent).
==> meta_argtypes(holding(holda,holdb)).

% sort sita, sitb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4584
==> sort(sita).
==> sort(sitb).

% event! LieOn(sita,sitb)
 %  event(lieOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4585
==> mpred_prop(lieOn(sita,sitb),event).
==> meta_argtypes(lieOn(sita,sitb)).

% event! SitOn(sita,sitb)
 %  event(sitOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4586
==> mpred_prop(sitOn(sita,sitb),event).
==> meta_argtypes(sitOn(sita,sitb)).

% event! RiseFrom(sita,sitb)
 %  event(riseFrom(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4587
==> mpred_prop(riseFrom(sita,sitb),event).
==> meta_argtypes(riseFrom(sita,sitb)).

% fluent! LyingOn(sita,sitb)
 %  fluent(lyingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4588
==> mpred_prop(lyingOn(sita,sitb),fluent).
==> meta_argtypes(lyingOn(sita,sitb)).

% fluent! SittingOn(sita,sitb)
 %  fluent(sittingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4589
==> mpred_prop(sittingOn(sita,sitb),fluent).
==> meta_argtypes(sittingOn(sita,sitb)).

% ona! Food1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4591
==> t(ona,food1).

% onb! Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4592
==> t(onb,table1).

% holda! Cook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4593
==> t(holda,cook1).

% holdb! Food1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4594
==> t(holdb,food1).

% holdc! Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4595
==> t(holdc,table1).

% sita! Eater1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4596
==> t(sita,eater1).

% sitb! Chair1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4597
==> t(sitb,chair1).
%; initial situation
% [agent]
 % HoldsAt(Dressed(agent),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4599
axiom(initially(dressed(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4600
% [agent]
 % HoldsAt(Awake(agent),0).
axiom(initially(awake(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4601
% [agent]
 % HoldsAt(Sleep3(agent),0).
axiom(initially(sleep3(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4602
% [agent]
 % HoldsAt(Standing(agent),0).
axiom(initially(standing(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4603
% [agent]
 % HoldsAt(Standing(agent),0).
axiom(initially(standing(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4604
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4605
% [food]
 % HoldsAt(At(food,Kitchen1),0).
axiom(initially(at(Food, kitchen1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4606
% [food]
 % !HoldsAt(FoodPrepared(food),0).
 %  not(initially(foodPrepared(Food))).
axiom(not(initially(foodPrepared(FoodPrepared_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4607
% [agent]
 % HoldsAt(Hungry(agent),0).
axiom(initially(hungry(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4608
% [door]
 % HoldsAt(DoorIsOpen(door),0).
axiom(initially(doorIsOpen(Door)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4609
% [clothing]
 % HoldsAt(At(clothing,Upstairs1),0).
axiom(initially(at(Clothing, upstairs1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4610
% [chair]
 % HoldsAt(At(chair,DiningRoom1),0).
axiom(initially(at(Chair, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4611
% HoldsAt(At(Cook1,Kitchen1),0).
axiom(initially(at(cook1, kitchen1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4612
% HoldsAt(At(Table1,DiningRoom1),0).
axiom(initially(at(table1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4613
% [agent,clothing]
 % !HoldsAt(Wearing(agent,clothing),0).
 %  not(initially(wearing(Agent,Clothing))).
axiom(not(initially(wearing(Wearing_Param, Wearing_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4615
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4616
% HoldsAt(At(Cook1,Kitchen1),0).
axiom(initially(at(cook1, kitchen1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4617
% HoldsAt(At(Eater1,Upstairs1),0).
axiom(initially(at(eater1, upstairs1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4618
% HoldsAt(At(Eater2,Upstairs1),0).
axiom(initially(at(eater2, upstairs1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4619
% Happens(FoodPrepare(Cook1,Food1),0).
axiom(happens(foodPrepare(cook1, food1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4620
% Happens(PutOn(Eater1,Clothing1),1).
axiom(happens(putOn(eater1, clothing1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4621
% Happens(PutOn(Eater2,Clothing2),2).
axiom(happens(putOn(eater2, clothing2), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4622
% Happens(WalkDownStaircase(Eater1,Staircase1),3).
axiom(happens(walkDownStaircase(eater1, staircase1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4623
% Happens(WalkDownStaircase(Eater2,Staircase1),4).
axiom(happens(walkDownStaircase(eater2, staircase1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4624
% Happens(WalkThroughDoor12(Eater1,DiningRoomDoor1),5).
axiom(happens(walkThroughDoor12(eater1, diningRoomDoor1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4625
% Happens(WalkThroughDoor12(Eater2,DiningRoomDoor1),6).
axiom(happens(walkThroughDoor12(eater2, diningRoomDoor1), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4626
% Happens(SitOn(Eater1,Chair1),7).
axiom(happens(sitOn(eater1, chair1), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4627
% Happens(SitOn(Eater2,Chair2),8).
axiom(happens(sitOn(eater2, chair2), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4628
% Happens(PickUp(Cook1, Food1),9).
axiom(happens(pickUp(cook1, food1), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4629
% Happens(WalkThroughDoor21(Cook1, KitchenDoor1),10).
axiom(happens(walkThroughDoor21(cook1, kitchenDoor1), t10),
    [is_time(10), b(t, t10), ignore(t+10=t10)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4630
% Happens(PlaceOn(Cook1, Food1, Table1),11).
axiom(happens(placeOn(cook1, food1, table1), t11),
    [is_time(11), b(t, t11), ignore(t+11=t11)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4631
% Happens(WalkThroughDoor12(Cook1, KitchenDoor1),12).
axiom(happens(walkThroughDoor12(cook1, kitchenDoor1), t12),
    [is_time(12), b(t, t12), ignore(t+12=t12)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4632
% Happens(Eat(Eater1,Food1),13).
axiom(happens(eat(eater1, food1), t13),
    [is_time(13), b(t, t13), ignore(t+13=t13)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4633
% Happens(Eat(Eater2,Food1),14).
axiom(happens(eat(eater2, food1), t14),
    [is_time(14), b(t, t14), ignore(t+14=t14)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4634
% Happens(Converse(Eater1,Eater2),15).
axiom(happens(converse(eater1, eater2), t15),
    [is_time(15), b(t, t15), ignore(t+15=t15)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4635
% Happens(TalkAbout(Eater1,Content1),16).
axiom(happens(talkAbout(eater1, content1), t16),
    [is_time(16), b(t, t16), ignore(t+16=t16)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4636
% Happens(TalkAbout(Eater2,Content2),17).
axiom(happens(talkAbout(eater2, content2), t17),
    [is_time(17), b(t, t17), ignore(t+17=t17)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4637
% Happens(RiseFrom(Eater1,Chair1),18).
axiom(happens(riseFrom(eater1, chair1), t18),
    [is_time(18), b(t, t18), ignore(t+18=t18)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4638
% Happens(RiseFrom(Eater2,Chair2),19).
axiom(happens(riseFrom(eater2, chair2), t19),
    [is_time(19), b(t, t19), ignore(t+19=t19)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4640
% range time 0 20
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4641
==> range(time,0,20).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4642
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4643
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test.e:4645
==> completion(happens).
%; End of file.
