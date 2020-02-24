:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/ReiterCriscuolo1981/NixonDiamond2.e').
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
%; \fullciteA[p. 274]{ReiterCriscuolo:1981}
%; \fullciteA[pp. 98--99]{McCarthy:1986}
%; \fullciteA[p. 18]{BrewkaDixKonolige:1997}
%;
%; @inproceedings{ReiterCriscuolo:1981,
%;   author = "Raymond Reiter and Giovanni Criscuolo",
%;   year = "1981",
%;   title = "On interacting defaults",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{S}eventh \uppercase{I}nternational \uppercase{J}oint \uppercase{C}onference on \uppercase{A}rtificial \uppercase{I}ntelligence",
%;   volume = "1",
%;   pages = "270--276",
%;   address = "Los Altos, CA",
%;   publisher = "William Kaufmann",
%; }
%;
%; @article{McCarthy:1986,
%;   author = "John McCarthy",
%;   year = "1986",
%;   title = "Applications of circumscription to formalizing common-sense knowledge",
%;   journal = "Artificial Intelligence",
%;   volume = "28",
%;   pages = "89--116".
%; }
%;
%; @book{BrewkaDixKonolige:1997,
%;   author = "Gerhard Brewka and J{\"{u}}rgen Dix and Kurt Konolige",
%;   year = "1997",
%;   title = "Nonmonotonic Reasoning: An Overview",
%;   address = "Stanford, CA",
%;   publisher = "CSLI",
%; }
%;

% load foundations/Root.e

% load foundations/EC.e

% sort x
==> sort(x).

% predicate Republican(x)
 %  predicate(republican(x)).
==> mpred_prop(republican(x),predicate).
==> meta_argtypes(republican(x)).

% predicate Quaker(x)
 %  predicate(quaker(x)).
==> mpred_prop(quaker(x),predicate).
==> meta_argtypes(quaker(x)).

% predicate Pacifist(x)
 %  predicate(pacifist(x)).
==> mpred_prop(pacifist(x),predicate).
==> meta_argtypes(pacifist(x)).

% predicate Ab1(x)
 %  predicate(ab1(x)).
==> mpred_prop(ab1(x),predicate).
==> meta_argtypes(ab1(x)).

% predicate Ab2(x)
 %  predicate(ab2(x)).
==> mpred_prop(ab2(x),predicate).
==> meta_argtypes(ab2(x)).

% x John
==> t(x,john).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:57
% Republican(John).
republican(john).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:58
% Quaker(John).
quaker(john).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:60
% [x]
 % Republican(x) & !Ab1(x) -> !Pacifist(x).
axiom(not(pacifist(X)),
    [republican(X), not(ab1(X))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:61
% [x]
 % Quaker(x) & !Ab2(x) -> Pacifist(x).
axiom(pacifist(X),
    [quaker(X), not(ab2(X))]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:62
% Theta: 
next_axiom_uses(theta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:62
% [x]
 % Republican(x) -> Ab2(x).
axiom(ab2(X),
    [republican(X)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:64
% range time 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:65
==> range(time,0,0).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:66
==> range(offset,1,1).

% completion Theta Ab1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:68
==> completion(theta).
==> completion(ab1).

% completion Theta Ab2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/ReiterCriscuolo1981/NixonDiamond2.e:69
==> completion(theta).
==> completion(ab2).
%; End of file.
