:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/BrewkaDixKonolige1997/Wine.e').
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
%; reasoning by cases
%; \fullciteA[p. 45]{BrewkaDixKonolige:1997}
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

% x Person
==> t(x,person).

% predicate LikesWine(x)
 %  predicate(likesWine(x)).
==> mpred_prop(likesWine(x),predicate).
==> meta_argtypes(likesWine(x)).

% predicate Italian(x)
 %  predicate(italian(x)).
==> mpred_prop(italian(x),predicate).
==> meta_argtypes(italian(x)).

% predicate French(x)
 %  predicate(french(x)).
==> mpred_prop(french(x),predicate).
==> meta_argtypes(french(x)).

% predicate Ab1(x)
 %  predicate(ab1(x)).
==> mpred_prop(ab1(x),predicate).
==> meta_argtypes(ab1(x)).

% predicate Ab2(x)
 %  predicate(ab2(x)).
==> mpred_prop(ab2(x),predicate).
==> meta_argtypes(ab2(x)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/BrewkaDixKonolige1997/Wine.e:34
% [x]
 % Italian(x) & !Ab1(x) -> LikesWine(x).
axiom(likesWine(X),
    [italian(X), not(ab1(X))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/BrewkaDixKonolige1997/Wine.e:35
% [x]
 % French(x) & !Ab2(x) -> LikesWine(x).
axiom(likesWine(X),
    [french(X), not(ab2(X))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/BrewkaDixKonolige1997/Wine.e:36
% [x]
 % Italian(x) -> !French(x).
axiom(not(french(X)),
    [italian(X)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/BrewkaDixKonolige1997/Wine.e:38
% Italian(Person) | French(Person).

 /*   (   italian(person)
      ;   french(person)
      ).
 */

 /*  italian(person) :-
       not(french(person)).
 */
axiom(italian(person),
    [not(french(person))]).

 /*  french(person) :-
       not(italian(person)).
 */
axiom(french(person),
    [not(italian(person))]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/BrewkaDixKonolige1997/Wine.e:40
% range time 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/BrewkaDixKonolige1997/Wine.e:41
==> range(time,0,0).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/BrewkaDixKonolige1997/Wine.e:42
==> range(offset,1,1).

% completion Theta Ab1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/BrewkaDixKonolige1997/Wine.e:44
==> completion(theta).
==> completion(ab1).

% completion Theta Ab2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/BrewkaDixKonolige1997/Wine.e:45
==> completion(theta).
==> completion(ab2).
%; End of file.
