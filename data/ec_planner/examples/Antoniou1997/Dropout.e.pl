:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Antoniou1997/Dropout.e').
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
%; dealing with conflicting defaults by adding conditions
%; to one of the conflicting rules
%; \fullciteA[p. 56]{Antoniou:1997}
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

% predicate Dropout(x)
 %  predicate(dropout(x)).
==> mpred_prop(dropout(x),predicate).
==> meta_argtypes(dropout(x)).

% predicate Adult(x)
 %  predicate(adult(x)).
==> mpred_prop(adult(x),predicate).
==> meta_argtypes(adult(x)).

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

% x Bill
==> t(x,bill).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Dropout.e:36
% Dropout(Bill).
dropout(bill).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Dropout.e:38
% [x]
 % Dropout(x) & !Ab1(x) -> Adult(x).
axiom(adult(X),
    [dropout(X), not(ab1(X))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Dropout.e:39
% [x]
 % Adult(x) & !Dropout(x) & !Ab2(x) -> Employed(x).
axiom(employed(X),
    [adult(X), not(dropout(X)), not(ab2(X))]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Dropout.e:41
% range time 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Dropout.e:42
==> range(time,0,0).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Dropout.e:43
==> range(offset,1,1).

% completion Theta Ab1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Dropout.e:45
==> completion(theta).
==> completion(ab1).

% completion Theta Ab2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Antoniou1997/Dropout.e:46
==> completion(theta).
==> completion(ab2).
%; End of file.
