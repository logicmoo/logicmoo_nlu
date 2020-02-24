:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1997/BusRide.e').
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
%; @article{Kartha:1994,
%;   author = "G. Neelakantan Kartha",
%;   year = "1994",
%;   title = "Two counterexamples related to \uppercase{B}aker's approach to the frame problem",
%;   journal = "Artificial Intelligence",
%;   volume = "69",
%;   number = "1--2",
%;   pages = "379--391",
%; }
%;
%; \fullciteA[pp. 359--361]{Shanahan:1997}
%;
%; @book{Shanahan:1997,
%;   author = "Murray Shanahan",
%;   year = "1997",
%;   title = "Solving the Frame Problem",
%;   address = "Cambridge, MA",
%;   publisher = "MIT Press",
%; }
%;
%; modifications from Shanahan's formulation:
%; InitiallyN -> !HoldsAt
%; timestamps
%;

% load foundations/Root.e

% load foundations/EC.e

% fluent HasTicket()
 %  fluent(hasTicket()).
==> mpred_prop(hasTicket(),fluent).
==> meta_argtypes(hasTicket()).

% fluent OnRed()
 %  fluent(onRed()).
==> mpred_prop(onRed(),fluent).
==> meta_argtypes(onRed()).

% fluent OnYellow()
 %  fluent(onYellow()).
==> mpred_prop(onYellow(),fluent).
==> meta_argtypes(onYellow()).

% event Buy()
 %  event(buy()).
==> mpred_prop(buy(),event).
==> meta_argtypes(buy()).

% event Board()
 %  event(board()).
==> mpred_prop(board(),event).
==> meta_argtypes(board()).

% event BoardRed()
 %  event(boardRed()).
==> mpred_prop(boardRed(),event).
==> meta_argtypes(boardRed()).

% event BoardYellow()
 %  event(boardYellow()).
==> mpred_prop(boardYellow(),event).
==> meta_argtypes(boardYellow()).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:46
% [time]
 % Happens(Board(),time) -> Happens(BoardRed(),time) | Happens(BoardYellow(),time).

 /*   if(happens(board(), Time),
          (happens(boardRed(), Time);happens(boardYellow(), Time))).
 */

 /*  happens(boardRed(), Maptime) :-
       not(happens(boardYellow(), Maptime)),
       happens(board(), Maptime).
 */
axiom(happens(boardRed(), Maptime),
    [not(happens(boardYellow(), Maptime)), happens(board(), Maptime)]).

 /*  happens(boardYellow(), Maptime2) :-
       not(happens(boardRed(), Maptime2)),
       happens(board(), Maptime2).
 */
axiom(happens(boardYellow(), Maptime2),
    [not(happens(boardRed(), Maptime2)), happens(board(), Maptime2)]).

 /*  not(happens(board(), Maptime3)) :-
       not(happens(boardRed(), Maptime3)),
       not(happens(boardYellow(), Maptime3)).
 */
axiom(not(happens(board(), Maptime3)),
   
    [ not(happens(boardRed(), Maptime3)),
      not(happens(boardYellow(), Maptime3))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:48
% [time]
 % Initiates(Buy(),HasTicket(),time).
axiom(initiates(buy(), hasTicket(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:49
% [time]
 % HoldsAt(HasTicket(),time) -> Initiates(BoardRed(),OnRed(),time).
axiom(initiates(boardRed(), onRed(), Time),
    [holds_at(hasTicket(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:50
% [time]
 % HoldsAt(HasTicket(),time) -> Initiates(BoardYellow(),OnYellow(),time).
axiom(initiates(boardYellow(), onYellow(), Time),
    [holds_at(hasTicket(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:52
% [time]
 % !(HoldsAt(OnRed(),time) & HoldsAt(OnYellow(),time)).

 /*   not(( holds_at(onRed(), Time),
            holds_at(onYellow(), Time)
          )).
 */

 /*  not(holds_at(onRed(), Time1)) :-
       holds_at(onYellow(), Time1).
 */
axiom(not(holds_at(onRed(), Time1)),
    [holds_at(onYellow(), Time1)]).

 /*  not(holds_at(onYellow(), Time2)) :-
       holds_at(onRed(), Time2).
 */
axiom(not(holds_at(onYellow(), Time2)),
    [holds_at(onRed(), Time2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:53
% [time]
 % HoldsAt(OnRed(),time) -> HoldsAt(HasTicket(),time).
axiom(holds_at(hasTicket(), Time),
    [holds_at(onRed(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:54
% [time]
 % HoldsAt(OnYellow(),time) -> HoldsAt(HasTicket(),time).
axiom(holds_at(hasTicket(), Time),
    [holds_at(onYellow(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:56
% HoldsAt(OnRed(),2).
holds_at(onRed(),2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:58
% !HoldsAt(HasTicket(),0).
 %  not(initially(hasTicket())).
axiom(not(initially(hasTicket())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:59
% Happens(Buy(),0).
axiom(happens(buy(), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:60
% Happens(Board(),1).
axiom(happens(board(), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:61
%; ABDUCED Happens(BoardRed(), 1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:63
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:64
==> completion(happens).

% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:66
==> range(time,0,2).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/BusRide.e:67
==> range(offset,1,1).
%; End of file.
