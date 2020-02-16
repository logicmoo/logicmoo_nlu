:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1997/DeadOrAlive.e').
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
%; \fullciteA[p. 324]{Shanahan:1997}
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

% fluent Dead()
 %  fluent(dead()).
==> mpred_prop(dead(),fluent).
==> meta_argtypes(dead()).

% noninertial Dead
==> noninertial(dead).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:39
% [time]
 % Initiates(Load(),Loaded(),time).
axiom(initiates(load(), loaded(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:40
% [time]
 % HoldsAt(Loaded(),time) -> Terminates(Shoot(),Alive(),time).
axiom(terminates(shoot(), alive(), Time),
    [holds_at(loaded(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:41
% [time]
 % Terminates(Shoot(),Loaded(),time).
axiom(terminates(shoot(), loaded(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:42
% [time]
 % HoldsAt(Dead(),time) <-> !HoldsAt(Alive(),time).

 /*  holds_at(dead(), Time) <->
       not(holds_at(alive(), Time)).
 */
axiom(holds_at(dead(), Time),
    [not(holds_at(alive(), Time))]).
axiom(not(holds_at(alive(), Time)),
    [holds_at(dead(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:44
% HoldsAt(Alive(),0).
axiom(initially(alive()),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:45
% !HoldsAt(Loaded(),0).
 %  not(initially(loaded())).
axiom(not(initially(loaded())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:46
% Happens(Load(),0).
axiom(happens(load(), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:47
% Happens(Sneeze(),1).
axiom(happens(sneeze(), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:48
% Happens(Shoot(),2).
axiom(happens(shoot(), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:50
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:51
==> completion(happens).

% range time 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:53
==> range(time,0,3).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/DeadOrAlive.e:54
==> range(offset,1,1).
%; End of file.
