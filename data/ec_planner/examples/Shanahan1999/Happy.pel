:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1999/Happy.e').
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
%; @incollection{Shanahan:1999,
%;   author = "Shanahan, Murray",
%;   year = "1999",
%;   title = "The Event Calculus explained",
%;   editor = "Michael J. Wooldridge and Manuela M. Veloso",
%;   booktitle = "Artificial Intelligence Today: Recent Trends and Developments",
%;   series = "Lecture Notes in Computer Science",
%;   volume = "1600",
%;   pages = "409--430",
%;   address = "Berlin",
%;   publisher = "Springer",
%; }
%;
%; deduction
%;
%; modifications from Shanahan's formulation:
%; InitiallyN -> !HoldsAt
%; InitiallyP -> HoldsAt
%; timestamps
%;

% load foundations/Root.e

% load foundations/EC.e

% sort person
==> sort(person).

% event Feed(person)
 %  event(feed(person)).
==> mpred_prop(feed(person),event).
==> meta_argtypes(feed(person)).

% event Clothe(person)
 %  event(clothe(person)).
==> mpred_prop(clothe(person),event).
==> meta_argtypes(clothe(person)).

% fluent Happy(person)
 %  fluent(happy(person)).
==> mpred_prop(happy(person),fluent).
==> meta_argtypes(happy(person)).

% fluent Hungry(person)
 %  fluent(hungry(person)).
==> mpred_prop(hungry(person),fluent).
==> meta_argtypes(hungry(person)).

% fluent Cold(person)
 %  fluent(cold(person)).
==> mpred_prop(cold(person),fluent).
==> meta_argtypes(cold(person)).

% noninertial Happy
==> noninertial(happy).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:42
% [person,time]
% HoldsAt(Happy(person),time) <->
% !HoldsAt(Hungry(person),time) &
% !HoldsAt(Cold(person),time).

 /*  holds_at(happy(Person), Time) <->
       not(holds_at(hungry(Person), Time)),
       not(holds_at(cold(Person), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:45
axiom(holds_at(happy(Person), Time),
   
    [ not(holds_at(hungry(Person), Time)),
      not(holds_at(cold(Person), Time))
    ]).

 /*   if(holds_at(happy(Person), Time),
          (not(holds_at(hungry(Person), Time)), not(holds_at(cold(Person), Time)))).
 */

 /*  not(holds_at(happy(Happy_Ret), Time2)) :-
       (   holds_at(hungry(Happy_Ret), Time2)
       ;   holds_at(cold(Happy_Ret), Time2)
       ).
 */
axiom(not(holds_at(happy(Happy_Ret), Time2)),
    [holds_at(hungry(Happy_Ret), Time2)]).
axiom(not(holds_at(happy(Happy_Ret), Time2)),
    [holds_at(cold(Happy_Ret), Time2)]).

 /*  not(holds_at(hungry(Hungry_Ret), Time4)) :-
       holds_at(happy(Hungry_Ret), Time4).
 */
axiom(not(holds_at(hungry(Hungry_Ret), Time4)),
    [holds_at(happy(Hungry_Ret), Time4)]).

 /*  not(holds_at(cold(Cold_Ret), Time6)) :-
       holds_at(happy(Cold_Ret), Time6).
 */
axiom(not(holds_at(cold(Cold_Ret), Time6)),
    [holds_at(happy(Cold_Ret), Time6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:47
% [person,time]
% Terminates(Feed(person),Hungry(person),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:48
axiom(terminates(feed(Person), hungry(Person), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:50
% [person,time]
% Terminates(Clothe(person),Cold(person),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:51
axiom(terminates(clothe(Person), cold(Person), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:53
% person Fred
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:54
==> t(person,fred).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:55
% HoldsAt(Hungry(Fred),0).
axiom(initially(hungry(fred)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:56
% !HoldsAt(Cold(Fred),0).
 %  not(initially(cold(fred))).
axiom(not(initially(cold(fred))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:57
% Happens(Feed(Fred),1).
axiom(happens(feed(fred), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:59
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:60
==> completion(happens).

% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:62
==> range(time,0,2).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/Happy.e:63
==> range(offset,1,1).
%; End of file.
