:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1997/StolenCar.e').
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
%; @inproceedings{Kautz:1986,
%;   author = "Henry A. Kautz",
%;   year = "1986",
%;   title = "The Logic of Persistence",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{F}ifth \uppercase{N}ational \uppercase{C}onference on \uppercase{A}rtificial \uppercase{I}ntelligence",
%;   pages = "401--405",
%;   address = "Los Altos, CA",
%;   publisher = "Morgan Kaufmann",
%; }
%;
%; \fullciteA[p. 359]{Shanahan:1997}
%;
%; @book{Shanahan:1997,
%;   author = "Murray Shanahan",
%;   year = "1997",
%;   title = "Solving the Frame Problem",
%;   address = "Cambridge, MA",
%;   publisher = "MIT Press",
%; }
%;
%; abduction
%;
%; modifications from Shanahan's formulation:
%; timestamps
%; added !HoldsAt(CarParked(),0).
%;

% load foundations/Root.e

% load foundations/EC.e

% event Park()
 %  event(park()).
==> mpred_prop(park(),event).
==> meta_argtypes(park()).

% event Steal()
 %  event(steal()).
==> mpred_prop(steal(),event).
==> meta_argtypes(steal()).

% fluent CarParked()
 %  fluent(carParked()).
==> mpred_prop(carParked(),fluent).
==> meta_argtypes(carParked()).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StolenCar.e:44
% [time]
 % Initiates(Park(),CarParked(),time).
axiom(initiates(park(), carParked(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StolenCar.e:45
% [time]
 % Terminates(Steal(),CarParked(),time).
axiom(terminates(steal(), carParked(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StolenCar.e:47
% !HoldsAt(CarParked(),0).
 %  not(initially(carParked())).
axiom(not(initially(carParked())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StolenCar.e:48
% Happens(Park(),0).
axiom(happens(park(), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StolenCar.e:49
%; ABDUCED Happens(Steal(), 1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StolenCar.e:50
% !HoldsAt(CarParked(),2).
 %  not(holds_at(carParked(),2)).
axiom(not(holds_at(carParked(), t2)),
    [b(t, t2), ignore(t+2=t2)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StolenCar.e:52
% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StolenCar.e:53
==> range(time,0,2).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StolenCar.e:54
==> range(offset,1,1).
%; End of file.
