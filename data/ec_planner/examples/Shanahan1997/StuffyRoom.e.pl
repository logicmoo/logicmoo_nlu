:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1997/StuffyRoom.e').
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
%; @article{GinsbergSmith:1988a,
%;   author = "Matthew L. Ginsberg and David E. Smith",
%;   year = "1988",
%;   title = "Reasoning about action \uppercase{I}: \uppercase{A} possible worlds approach",
%;   journal = "Artificial Intelligence",
%;   volume = "35",
%;   number = "2",
%;   pages = "165--195",
%; }
%;
%; \fullciteA[pp. 288--289]{Shanahan:1997}
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
%; timestamps
%; added:
%; !HoldsAt(Blocked1(),0).
%; !HoldsAt(Blocked2(),0).
%;

% load foundations/Root.e

% load foundations/EC.e

% event Close1()
 %  event(close1()).
==> mpred_prop(close1(),event).
==> meta_argtypes(close1()).

% event Close2()
 %  event(close2()).
==> mpred_prop(close2(),event).
==> meta_argtypes(close2()).

% event Start()
 %  event(start()).
==> mpred_prop(start(),event).
==> meta_argtypes(start()).

% fluent Blocked1()
 %  fluent(blocked1()).
==> mpred_prop(blocked1(),fluent).
==> meta_argtypes(blocked1()).

% fluent Blocked2()
 %  fluent(blocked2()).
==> mpred_prop(blocked2(),fluent).
==> meta_argtypes(blocked2()).

% fluent Stuffy()
 %  fluent(stuffy()).
==> mpred_prop(stuffy(),fluent).
==> meta_argtypes(stuffy()).

% noninertial Stuffy
==> noninertial(stuffy).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:50
% [time]
 % Initiates(Close1(),Blocked1(),time).
axiom(initiates(close1(), blocked1(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:51
% [time]
 % Initiates(Close2(),Blocked2(),time).
axiom(initiates(close2(), blocked2(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:53
% [time]
% HoldsAt(Stuffy(),time) <->
% HoldsAt(Blocked1(),time)&HoldsAt(Blocked2(),time).

 /*  holds_at(stuffy(), Time) <->
       holds_at(blocked1(), Time),
       holds_at(blocked2(), Time).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:55
axiom(holds_at(stuffy(), Time),
    [holds_at(blocked1(), Time), holds_at(blocked2(), Time)]).

 /*   if(holds_at(stuffy(), Time),
          (holds_at(blocked1(), Time), holds_at(blocked2(), Time))).
 */

 /*  not(holds_at(stuffy(), Time1)) :-
       (   not(holds_at(blocked1(), Time1))
       ;   not(holds_at(blocked2(), Time1))
       ).
 */
axiom(not(holds_at(stuffy(), Time1)),
    [not(holds_at(blocked1(), Time1))]).
axiom(not(holds_at(stuffy(), Time1)),
    [not(holds_at(blocked2(), Time1))]).

 /*  holds_at(blocked1(), Time2) :-
       holds_at(stuffy(), Time2).
 */
axiom(holds_at(blocked1(), Time2),
    [holds_at(stuffy(), Time2)]).

 /*  holds_at(blocked2(), Time3) :-
       holds_at(stuffy(), Time3).
 */
axiom(holds_at(blocked2(), Time3),
    [holds_at(stuffy(), Time3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:57
% [time]
 % Initiates(Start(),Blocked1(),time).
axiom(initiates(start(), blocked1(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:58
% [time]
 % Terminates(Start(),Blocked2(),time).
axiom(terminates(start(), blocked2(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:60
% !HoldsAt(Blocked1(),0).
 %  not(initially(blocked1())).
axiom(not(initially(blocked1())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:61
% !HoldsAt(Blocked2(),0).
 %  not(initially(blocked2())).
axiom(not(initially(blocked2())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:62
% Happens(Start(),0).
axiom(happens(start(), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:63
% Happens(Close2(),1).
axiom(happens(close2(), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:65
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:66
==> completion(happens).

% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:68
==> range(time,0,2).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1997/StuffyRoom.e:69
==> range(offset,1,1).
%; End of file.
