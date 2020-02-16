:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1997/Yale.e').
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
%; @article{HanksMcDermott:1987,
%;   author = "Steve Hanks and Drew V. McDermott",
%;   year = "1987",
%;   title = "Nonmonotonic logic and temporal projection",
%;   journal = "Artificial Intelligence",
%;   volume = "33",
%;   number = "3",
%;   pages = "379--412",
%; }
%;
%; \fullciteA[pp. 322--323]{Shanahan:1997}
%;
%; @book{Shanahan:1997,
%;   author = "Murray Shanahan",
%;   year = "1997",
%;   title = "Solving the Frame Problem",
%;   address = "Cambridge, MA",
%;   publisher = "MIT Press",
%; }
%;
%; deduction
%;
%; modifications from Shanahan's formulation:
%; InitiallyP -> HoldsAt
%; timestamps
%; added [time] Terminates(Shoot(),Loaded(),time).
%;

% option showpred off
:- set_ec_option(showpred, off).

% load foundations/Root.e

% load foundations/EC.e

% event Load()
 %  event(load()).
==> mpred_prop(load(),event).
==> meta_argtypes(load()).

% event Shoot()
 %  event(shoot()).
==> mpred_prop(shoot(),event).
==> meta_argtypes(shoot()).

% event Sneeze()
 %  event(sneeze()).
==> mpred_prop(sneeze(),event).
==> meta_argtypes(sneeze()).

% fluent Loaded()
 %  fluent(loaded()).
==> mpred_prop(loaded(),fluent).
==> meta_argtypes(loaded()).

% fluent Alive()
 %  fluent(alive()).
==> mpred_prop(alive(),fluent).
==> meta_argtypes(alive()).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:49
% [time]
 % Initiates(Load(),Loaded(),time).
axiom(initiates(load(), loaded(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:50
% [time]
 % HoldsAt(Loaded(),time) -> Terminates(Shoot(),Alive(),time).
axiom(terminates(shoot(), alive(), Time),
    [holds_at(loaded(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:51
% [time]
 % Terminates(Shoot(),Loaded(),time).
axiom(terminates(shoot(), loaded(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:53
% HoldsAt(Alive(),0).
axiom(initially(alive()),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:54
% !HoldsAt(Loaded(),0).
 %  not(initially(loaded())).
axiom(not(initially(loaded())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:55
% Happens(Load(),0).
axiom(happens(load(), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:56
% Happens(Sneeze(),1).
axiom(happens(sneeze(), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:57
% Happens(Shoot(),2).
axiom(happens(shoot(), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:59
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:60
==> completion(happens).

% range time 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:62
==> range(time,0,3).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/Yale.e:63
==> range(offset,1,1).
%; End of file.
