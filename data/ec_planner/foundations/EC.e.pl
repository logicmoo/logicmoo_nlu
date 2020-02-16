:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'foundations/EC.e').
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/foundations/EC.e:40
%; End of file.
