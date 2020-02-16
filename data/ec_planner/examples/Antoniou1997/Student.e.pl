:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Antoniou1997/Student.e').
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
%; conflicting defaults: method (D)
%; \fullciteA[p. 157]{Antoniou:1997}
%;
%; @book{Antoniou:1997,
%;   author = "Grigoris Antoniou",
%;   year = "1997",
%;   title = "Nonmonotonic Reasoning",
%;   address = "Cambridge, MA",
%;   publisher = "MIT Press",
%; }
%;

% load foundations/Root.e

% load foundations/EC.e

% sort x
==> sort(x).

% predicate Adult(x)
 %  predicate(adult(x)).
==> mpred_prop(adult(x),predicate).
==> meta_argtypes(adult(x)).

% predicate Student(x)
 %  predicate(student(x)).
==> mpred_prop(student(x),predicate).
==> meta_argtypes(student(x)).

% predicate Employed(x)
 %  predicate(employed(x)).
==> mpred_prop(employed(x),predicate).
==> meta_argtypes(employed(x)).

% predicate Ab1(x)
 %  predicate(ab1(x)).
==> mpred_prop(ab1(x),predicate).
==> meta_argtypes(ab1(x)).

% predicate Ab2(x)
 %  predicate(ab2(x)).
==> mpred_prop(ab2(x),predicate).
==> meta_argtypes(ab2(x)).

% x Mary
==> t(x,mary).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:35
% Student(Mary).
student(mary).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:37
% [x]
 % Adult(x) & !Ab1(x) -> Employed(x).
axiom(employed(X),
    [adult(X), not(ab1(X))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:38
% [x]
 % Student(x) & !Ab2(x) -> !Employed(x).
axiom(not(employed(X)),
    [student(X), not(ab2(X))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:39
% [x]
 % Student(x) -> Adult(x).
axiom(adult(X),
    [student(X)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:40
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:40
% [x]
 % Student(x) -> Ab1(x).
axiom(ab1(X),
    [student(X)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:42
% range time 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:43
==> range(time,0,0).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:44
==> range(offset,1,1).

% completion Theta Ab1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:46
==> completion(theta).
==> completion(ab1).

% completion Theta Ab2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Student.e:47
==> completion(theta).
==> completion(ab2).
%; End of file.
