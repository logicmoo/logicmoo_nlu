:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'foundations/DEC.e').
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:37
% [fluent,time]
% (HoldsAt(fluent,time) &
%  !ReleasedAt(fluent,time+1) &
%  !({event} Happens(event,time) & Terminates(event,fluent,time))) ->
% HoldsAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:41
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:43
% [fluent,time]
% (!HoldsAt(fluent,time) &
%  !ReleasedAt(fluent,time+1) &
%  !({event} Happens(event,time) & Initiates(event,fluent,time))) ->
% !HoldsAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:47
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:49
% [fluent,time]
% (!ReleasedAt(fluent,time) &
%  !({event} Happens(event,time) & Releases(event,fluent,time))) ->
% !ReleasedAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:52
axiom(not(releasedAt(Fluent, Time+1)),
   
    [ not(happens(Event, Time)),
      not(releasedAt(Fluent, Time))
    ]).
axiom(not(releasedAt(Fluent, Time+1)),
   
    [ not(releases(Event, Fluent, Time)),
      not(releasedAt(Fluent, Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:54
% [fluent,time]
% (ReleasedAt(fluent,time) &
%  !({event} Happens(event,time) &
%    (Initiates(event,fluent,time) |
%     Terminates(event,fluent,time)))) ->
% ReleasedAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:59
axiom(releasedAt(Fluent, Time+1),
    [not(happens(Event, Time)), releasedAt(Fluent, Time)]).
axiom(releasedAt(Fluent, Time+1),
   
    [ not(initiates(Event, Fluent, Time)),
      not(terminates(Event, Fluent, Time)),
      releasedAt(Fluent, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:61
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:63
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:65
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
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:67
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:69
% [event,fluent,time]
% (Happens(event,time) & Releases(event,fluent,time)) ->
% ReleasedAt(fluent,time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:71
axiom(releasedAt(Fluent, Time+1),
   
    [ happens(Event, Time),
      releases(Event, Fluent, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/DEC.e:73
%; End of file.
