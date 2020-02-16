:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter10/OneScreen.e').
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
%; @phdthesis{Cassimatis:2002,
%;   author = "Nicholas L. Cassimatis",
%;   year = "2002",
%;   title = "Polyscheme: A Cognitive Architecture for Integrating Multiple Representation and Inference Schemes",
%;   address = "Cambridge, MA",
%;   school = "Program in Media Arts and Sciences, School of Architecture and Planning, Massachusetts Institute of Technology",
%; }
%;
%; @book{Mueller:2006,
%;   author = "Erik T. Mueller",
%;   year = "2006",
%;   title = "Commonsense Reasoning",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann/Elsevier",
%; }
%;

% load foundations/Root.e

% load foundations/EC.e

% sort object
==> sort(object).

% sort location
==> sort(location).

% object O1, O2
==> t(object,o1).
==> t(object,o2).

% location L1, L2, L3
==> t(location,l1).
==> t(location,l2).
==> t(location,l3).

% predicate Adjacent(location,location)
 %  predicate(adjacent(location,location)).
==> mpred_prop(adjacent(location,location),predicate).
==> meta_argtypes(adjacent(location,location)).

% predicate Equal(object,object)
 %  predicate(equal(object,object)).
==> mpred_prop(equal(object,object),predicate).
==> meta_argtypes(equal(object,object)).

% fluent At(object,location)
 %  fluent(at(object,location)).
==> mpred_prop(at(object,location),fluent).
==> meta_argtypes(at(object,location)).

% event Move(object,location,location)
 %  event(move(object,location,location)).
==> mpred_prop(move(object,location,location),event).
==> meta_argtypes(move(object,location,location)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:42
%; Sigma
% [object,location1,location2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:45
% HoldsAt(At(object,location1),time) &
% Adjacent(location1,location2) ->
% Initiates(Move(object,location1,location2),At(object,location2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:47
axiom(initiates(move(Object, Location1, Location2), at(Object, Location2), Time),
   
    [ holds_at(at(Object, Location1), Time),
      adjacent(Location1, Location2)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:49
% [object,location1,location2,time]
% HoldsAt(At(object,location1),time) &
% Adjacent(location1,location2) ->
% Terminates(Move(object,location1,location2),At(object,location1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:52
axiom(terminates(move(Object, Location1, Location2), at(Object, Location1), Time),
   
    [ holds_at(at(Object, Location1), Time),
      adjacent(Location1, Location2)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:54
%; Psi
% [object,location1,location2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:57
% HoldsAt(At(object,location1),time) &
% HoldsAt(At(object,location2),time) ->
% location1=location2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:59
axiom(Location1=Location2,
   
    [ holds_at(at(Object, Location1), Time),
      holds_at(at(Object, Location2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:61
% [object,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:62
% {location} % HoldsAt(At(object,location),time).

 /*  exists([Location],
          holds_at(at(Object,Location),Time)).
 */

 /*  holds_at(at(At_Param, Location4), Time5) :-
       some(Location4, '$kolem_Fn_1'(At_Param, Time5)).
 */
axiom(holds_at(at(At_Param, Location4), Time5),
    [some(Location4, '$kolem_Fn_1'(At_Param, Time5))]).

 /*  not(some(Location7, '$kolem_Fn_1'(Fn_1_Param, Time8))) :-
       not(holds_at(at(Fn_1_Param, Location7), Time8)).
 */
axiom(not(some(Location7, '$kolem_Fn_1'(Fn_1_Param, Time8))),
    [not(holds_at(at(Fn_1_Param, Location7), Time8))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:64
% [object1,object2,location,time]
% HoldsAt(At(object1,location),time) &
% HoldsAt(At(object2,location),time) ->
% Equal(object1,object2).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:67
axiom(equal(Object1, Object2),
   
    [ holds_at(at(Object1, Location), Time),
      holds_at(at(Object2, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:69
% [location1, location2]
% Adjacent(location1,location2) <->
% Adjacent(location2,location1).

 /*  adjacent(Location1, Location2) <->
       adjacent(Location2, Location1).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:71
axiom(adjacent(Location1, Location2),
    [adjacent(Location2, Location1)]).
axiom(adjacent(Location2, Location1),
    [adjacent(Location1, Location2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:73
% [object1,object2]
% Equal(object1,object2) <->
% Equal(object2,object1).

 /*  equal(Object1, Object2) <->
       equal(Object2, Object1).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:75
axiom(equal(Object1, Object2),
    [equal(Object2, Object1)]).
axiom(equal(Object2, Object1),
    [equal(Object1, Object2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:77
%; Gamma
% [location1,location2]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:80
% Adjacent(location1,location2) <->
% (location1=L1 & location2=L2) |
% (location1=L2 & location2=L1) |
% (location1=L2 & location2=L3) |
% (location1=L3 & location2=L2).

 /*  adjacent(Location1, Location2) <->
       (   Location1=l1,
           Location2=l2
       ;   Location1=l2,
           Location2=l1
       ;   Location1=l2,
           Location2=l3
       ;   Location1=l3,
           Location2=l2
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:84
axiom(adjacent(Location1, Location2),
    [equals(Location1, l1), equals(Location2, l2)]).
axiom(adjacent(Location1, Location2),
    [equals(Location1, l2), equals(Location2, l1)]).
axiom(adjacent(Location1, Location2),
    [equals(Location1, l2), equals(Location2, l3)]).
axiom(adjacent(Location1, Location2),
    [equals(Location1, l3), equals(Location2, l2)]).

 /*   if(adjacent(Location1, Location2),
          (Location1=l1, Location2=l2;Location1=l2, Location2=l1;Location1=l2, Location2=l3;Location1=l3, Location2=l2)).
 */

 /*  not(adjacent(Adjacent_Param, Equals_Param)) :-
       (   not(equals(Adjacent_Param, l1))
       ;   not(equals(Equals_Param, l2))
       ),
       (   not(equals(Adjacent_Param, l2))
       ;   not(equals(Equals_Param, l1))
       ),
       (   not(equals(Adjacent_Param, l2))
       ;   not(equals(Equals_Param, l3))
       ),
       (   not(equals(Adjacent_Param, l3))
       ;   not(equals(Equals_Param, l2))
       ).
 */
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Adjacent_Param, l3)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Adjacent_Param, l1))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Equals_Param, l2)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Adjacent_Param, l1))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Adjacent_Param, l3)),
      not(equals(Equals_Param, l3)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Adjacent_Param, l1))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Equals_Param, l2)),
      not(equals(Equals_Param, l3)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Adjacent_Param, l1))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Adjacent_Param, l3)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Equals_Param, l1)),
      not(equals(Adjacent_Param, l1))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Equals_Param, l2)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Equals_Param, l1)),
      not(equals(Adjacent_Param, l1))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Adjacent_Param, l3)),
      not(equals(Equals_Param, l3)),
      not(equals(Equals_Param, l1)),
      not(equals(Adjacent_Param, l1))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Equals_Param, l2)),
      not(equals(Equals_Param, l3)),
      not(equals(Equals_Param, l1)),
      not(equals(Adjacent_Param, l1))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Adjacent_Param, l3)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Equals_Param, l2))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Equals_Param, l2)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Equals_Param, l2))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Adjacent_Param, l3)),
      not(equals(Equals_Param, l3)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Equals_Param, l2))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Equals_Param, l2)),
      not(equals(Equals_Param, l3)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Equals_Param, l2))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Adjacent_Param, l3)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Equals_Param, l1)),
      not(equals(Equals_Param, l2))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Equals_Param, l2)),
      not(equals(Adjacent_Param, l2)),
      not(equals(Equals_Param, l1)),
      not(equals(Equals_Param, l2))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Adjacent_Param, l3)),
      not(equals(Equals_Param, l3)),
      not(equals(Equals_Param, l1)),
      not(equals(Equals_Param, l2))
    ]).
axiom(not(adjacent(Adjacent_Param, Equals_Param)),
   
    [ not(equals(Equals_Param, l2)),
      not(equals(Equals_Param, l3)),
      not(equals(Equals_Param, l1)),
      not(equals(Equals_Param, l2))
    ]).

 /*  equals(Equals_Param4, l1) :-
       ( (   not(equals(Equals_Param4, l2))
         ;   not(equals(Equals_Param5, l1))
         ),
         (   not(equals(Equals_Param4, l2))
         ;   not(equals(Equals_Param5, l3))
         ),
         (   not(equals(Equals_Param4, l3))
         ;   not(equals(Equals_Param5, l2))
         )
       ),
       adjacent(Equals_Param4, Equals_Param5).
 */
axiom(equals(Equals_Param4, l1),
   
    [ not(equals(Equals_Param4, l3)),
      not(equals(Equals_Param4, l2)),
      not(equals(Equals_Param4, l2)),
      adjacent(Equals_Param4, Equals_Param5)
    ]).
axiom(equals(Equals_Param4, l1),
   
    [ not(equals(Equals_Param5, l2)),
      not(equals(Equals_Param4, l2)),
      not(equals(Equals_Param4, l2)),
      adjacent(Equals_Param4, Equals_Param5)
    ]).
axiom(equals(Equals_Param4, l1),
   
    [ not(equals(Equals_Param4, l3)),
      not(equals(Equals_Param5, l3)),
      not(equals(Equals_Param4, l2)),
      adjacent(Equals_Param4, Equals_Param5)
    ]).
axiom(equals(Equals_Param4, l1),
   
    [ not(equals(Equals_Param5, l2)),
      not(equals(Equals_Param5, l3)),
      not(equals(Equals_Param4, l2)),
      adjacent(Equals_Param4, Equals_Param5)
    ]).
axiom(equals(Equals_Param4, l1),
   
    [ not(equals(Equals_Param4, l3)),
      not(equals(Equals_Param4, l2)),
      not(equals(Equals_Param5, l1)),
      adjacent(Equals_Param4, Equals_Param5)
    ]).
axiom(equals(Equals_Param4, l1),
   
    [ not(equals(Equals_Param5, l2)),
      not(equals(Equals_Param4, l2)),
      not(equals(Equals_Param5, l1)),
      adjacent(Equals_Param4, Equals_Param5)
    ]).
axiom(equals(Equals_Param4, l1),
   
    [ not(equals(Equals_Param4, l3)),
      not(equals(Equals_Param5, l3)),
      not(equals(Equals_Param5, l1)),
      adjacent(Equals_Param4, Equals_Param5)
    ]).
axiom(equals(Equals_Param4, l1),
   
    [ not(equals(Equals_Param5, l2)),
      not(equals(Equals_Param5, l3)),
      not(equals(Equals_Param5, l1)),
      adjacent(Equals_Param4, Equals_Param5)
    ]).

 /*  equals(Equals_Param6, l2) :-
       ( (   not(equals(Equals_Param7, l2))
         ;   not(equals(Equals_Param6, l1))
         ),
         (   not(equals(Equals_Param7, l2))
         ;   not(equals(Equals_Param6, l3))
         ),
         (   not(equals(Equals_Param7, l3))
         ;   not(equals(Equals_Param6, l2))
         )
       ),
       adjacent(Equals_Param7, Equals_Param6).
 */
axiom(equals(Equals_Param6, l2),
   
    [ not(equals(Equals_Param7, l3)),
      not(equals(Equals_Param7, l2)),
      not(equals(Equals_Param7, l2)),
      adjacent(Equals_Param7, Equals_Param6)
    ]).
axiom(equals(Equals_Param6, l2),
   
    [ not(equals(Equals_Param6, l2)),
      not(equals(Equals_Param7, l2)),
      not(equals(Equals_Param7, l2)),
      adjacent(Equals_Param7, Equals_Param6)
    ]).
axiom(equals(Equals_Param6, l2),
   
    [ not(equals(Equals_Param7, l3)),
      not(equals(Equals_Param6, l3)),
      not(equals(Equals_Param7, l2)),
      adjacent(Equals_Param7, Equals_Param6)
    ]).
axiom(equals(Equals_Param6, l2),
   
    [ not(equals(Equals_Param6, l2)),
      not(equals(Equals_Param6, l3)),
      not(equals(Equals_Param7, l2)),
      adjacent(Equals_Param7, Equals_Param6)
    ]).
axiom(equals(Equals_Param6, l2),
   
    [ not(equals(Equals_Param7, l3)),
      not(equals(Equals_Param7, l2)),
      not(equals(Equals_Param6, l1)),
      adjacent(Equals_Param7, Equals_Param6)
    ]).
axiom(equals(Equals_Param6, l2),
   
    [ not(equals(Equals_Param6, l2)),
      not(equals(Equals_Param7, l2)),
      not(equals(Equals_Param6, l1)),
      adjacent(Equals_Param7, Equals_Param6)
    ]).
axiom(equals(Equals_Param6, l2),
   
    [ not(equals(Equals_Param7, l3)),
      not(equals(Equals_Param6, l3)),
      not(equals(Equals_Param6, l1)),
      adjacent(Equals_Param7, Equals_Param6)
    ]).
axiom(equals(Equals_Param6, l2),
   
    [ not(equals(Equals_Param6, l2)),
      not(equals(Equals_Param6, l3)),
      not(equals(Equals_Param6, l1)),
      adjacent(Equals_Param7, Equals_Param6)
    ]).

 /*  equals(Equals_Param8, l2) :-
       ( (   not(equals(Equals_Param8, l2))
         ;   not(equals(Equals_Param9, l3))
         ),
         (   not(equals(Equals_Param8, l3))
         ;   not(equals(Equals_Param9, l2))
         )
       ),
       (   not(equals(Equals_Param8, l1))
       ;   not(equals(Equals_Param9, l2))
       ),
       adjacent(Equals_Param8, Equals_Param9).
 */
axiom(equals(Equals_Param8, l2),
   
    [ not(equals(Equals_Param8, l1)),
      not(equals(Equals_Param8, l3)),
      not(equals(Equals_Param8, l2)),
      adjacent(Equals_Param8, Equals_Param9)
    ]).
axiom(equals(Equals_Param8, l2),
   
    [ not(equals(Equals_Param9, l2)),
      not(equals(Equals_Param8, l3)),
      not(equals(Equals_Param8, l2)),
      adjacent(Equals_Param8, Equals_Param9)
    ]).
axiom(equals(Equals_Param8, l2),
   
    [ not(equals(Equals_Param8, l1)),
      not(equals(Equals_Param9, l2)),
      not(equals(Equals_Param8, l2)),
      adjacent(Equals_Param8, Equals_Param9)
    ]).
axiom(equals(Equals_Param8, l2),
   
    [ not(equals(Equals_Param9, l2)),
      not(equals(Equals_Param9, l2)),
      not(equals(Equals_Param8, l2)),
      adjacent(Equals_Param8, Equals_Param9)
    ]).
axiom(equals(Equals_Param8, l2),
   
    [ not(equals(Equals_Param8, l1)),
      not(equals(Equals_Param8, l3)),
      not(equals(Equals_Param9, l3)),
      adjacent(Equals_Param8, Equals_Param9)
    ]).
axiom(equals(Equals_Param8, l2),
   
    [ not(equals(Equals_Param9, l2)),
      not(equals(Equals_Param8, l3)),
      not(equals(Equals_Param9, l3)),
      adjacent(Equals_Param8, Equals_Param9)
    ]).
axiom(equals(Equals_Param8, l2),
   
    [ not(equals(Equals_Param8, l1)),
      not(equals(Equals_Param9, l2)),
      not(equals(Equals_Param9, l3)),
      adjacent(Equals_Param8, Equals_Param9)
    ]).
axiom(equals(Equals_Param8, l2),
   
    [ not(equals(Equals_Param9, l2)),
      not(equals(Equals_Param9, l2)),
      not(equals(Equals_Param9, l3)),
      adjacent(Equals_Param8, Equals_Param9)
    ]).

 /*  equals(Equals_Param10, l1) :-
       ( (   not(equals(Equals_Param11, l2))
         ;   not(equals(Equals_Param10, l3))
         ),
         (   not(equals(Equals_Param11, l3))
         ;   not(equals(Equals_Param10, l2))
         )
       ),
       (   not(equals(Equals_Param11, l1))
       ;   not(equals(Equals_Param10, l2))
       ),
       adjacent(Equals_Param11, Equals_Param10).
 */
axiom(equals(Equals_Param10, l1),
   
    [ not(equals(Equals_Param11, l1)),
      not(equals(Equals_Param11, l3)),
      not(equals(Equals_Param11, l2)),
      adjacent(Equals_Param11, Equals_Param10)
    ]).
axiom(equals(Equals_Param10, l1),
   
    [ not(equals(Equals_Param10, l2)),
      not(equals(Equals_Param11, l3)),
      not(equals(Equals_Param11, l2)),
      adjacent(Equals_Param11, Equals_Param10)
    ]).
axiom(equals(Equals_Param10, l1),
   
    [ not(equals(Equals_Param11, l1)),
      not(equals(Equals_Param10, l2)),
      not(equals(Equals_Param11, l2)),
      adjacent(Equals_Param11, Equals_Param10)
    ]).
axiom(equals(Equals_Param10, l1),
   
    [ not(equals(Equals_Param10, l2)),
      not(equals(Equals_Param10, l2)),
      not(equals(Equals_Param11, l2)),
      adjacent(Equals_Param11, Equals_Param10)
    ]).
axiom(equals(Equals_Param10, l1),
   
    [ not(equals(Equals_Param11, l1)),
      not(equals(Equals_Param11, l3)),
      not(equals(Equals_Param10, l3)),
      adjacent(Equals_Param11, Equals_Param10)
    ]).
axiom(equals(Equals_Param10, l1),
   
    [ not(equals(Equals_Param10, l2)),
      not(equals(Equals_Param11, l3)),
      not(equals(Equals_Param10, l3)),
      adjacent(Equals_Param11, Equals_Param10)
    ]).
axiom(equals(Equals_Param10, l1),
   
    [ not(equals(Equals_Param11, l1)),
      not(equals(Equals_Param10, l2)),
      not(equals(Equals_Param10, l3)),
      adjacent(Equals_Param11, Equals_Param10)
    ]).
axiom(equals(Equals_Param10, l1),
   
    [ not(equals(Equals_Param10, l2)),
      not(equals(Equals_Param10, l2)),
      not(equals(Equals_Param10, l3)),
      adjacent(Equals_Param11, Equals_Param10)
    ]).

 /*  equals(Equals_Param12, l2) :-
       (   not(equals(Equals_Param12, l3))
       ;   not(equals(Equals_Param13, l2))
       ),
       (   not(equals(Equals_Param12, l2))
       ;   not(equals(Equals_Param13, l1))
       ),
       (   not(equals(Equals_Param12, l1))
       ;   not(equals(Equals_Param13, l2))
       ),
       adjacent(Equals_Param12, Equals_Param13).
 */
axiom(equals(Equals_Param12, l2),
   
    [ not(equals(Equals_Param12, l1)),
      not(equals(Equals_Param12, l2)),
      not(equals(Equals_Param12, l3)),
      adjacent(Equals_Param12, Equals_Param13)
    ]).
axiom(equals(Equals_Param12, l2),
   
    [ not(equals(Equals_Param13, l2)),
      not(equals(Equals_Param12, l2)),
      not(equals(Equals_Param12, l3)),
      adjacent(Equals_Param12, Equals_Param13)
    ]).
axiom(equals(Equals_Param12, l2),
   
    [ not(equals(Equals_Param12, l1)),
      not(equals(Equals_Param13, l1)),
      not(equals(Equals_Param12, l3)),
      adjacent(Equals_Param12, Equals_Param13)
    ]).
axiom(equals(Equals_Param12, l2),
   
    [ not(equals(Equals_Param13, l2)),
      not(equals(Equals_Param13, l1)),
      not(equals(Equals_Param12, l3)),
      adjacent(Equals_Param12, Equals_Param13)
    ]).
axiom(equals(Equals_Param12, l2),
   
    [ not(equals(Equals_Param12, l1)),
      not(equals(Equals_Param12, l2)),
      not(equals(Equals_Param13, l2)),
      adjacent(Equals_Param12, Equals_Param13)
    ]).
axiom(equals(Equals_Param12, l2),
   
    [ not(equals(Equals_Param13, l2)),
      not(equals(Equals_Param12, l2)),
      not(equals(Equals_Param13, l2)),
      adjacent(Equals_Param12, Equals_Param13)
    ]).
axiom(equals(Equals_Param12, l2),
   
    [ not(equals(Equals_Param12, l1)),
      not(equals(Equals_Param13, l1)),
      not(equals(Equals_Param13, l2)),
      adjacent(Equals_Param12, Equals_Param13)
    ]).
axiom(equals(Equals_Param12, l2),
   
    [ not(equals(Equals_Param13, l2)),
      not(equals(Equals_Param13, l1)),
      not(equals(Equals_Param13, l2)),
      adjacent(Equals_Param12, Equals_Param13)
    ]).

 /*  equals(Equals_Param14, l3) :-
       (   not(equals(Equals_Param15, l3))
       ;   not(equals(Equals_Param14, l2))
       ),
       (   not(equals(Equals_Param15, l2))
       ;   not(equals(Equals_Param14, l1))
       ),
       (   not(equals(Equals_Param15, l1))
       ;   not(equals(Equals_Param14, l2))
       ),
       adjacent(Equals_Param15, Equals_Param14).
 */
axiom(equals(Equals_Param14, l3),
   
    [ not(equals(Equals_Param15, l1)),
      not(equals(Equals_Param15, l2)),
      not(equals(Equals_Param15, l3)),
      adjacent(Equals_Param15, Equals_Param14)
    ]).
axiom(equals(Equals_Param14, l3),
   
    [ not(equals(Equals_Param14, l2)),
      not(equals(Equals_Param15, l2)),
      not(equals(Equals_Param15, l3)),
      adjacent(Equals_Param15, Equals_Param14)
    ]).
axiom(equals(Equals_Param14, l3),
   
    [ not(equals(Equals_Param15, l1)),
      not(equals(Equals_Param14, l1)),
      not(equals(Equals_Param15, l3)),
      adjacent(Equals_Param15, Equals_Param14)
    ]).
axiom(equals(Equals_Param14, l3),
   
    [ not(equals(Equals_Param14, l2)),
      not(equals(Equals_Param14, l1)),
      not(equals(Equals_Param15, l3)),
      adjacent(Equals_Param15, Equals_Param14)
    ]).
axiom(equals(Equals_Param14, l3),
   
    [ not(equals(Equals_Param15, l1)),
      not(equals(Equals_Param15, l2)),
      not(equals(Equals_Param14, l2)),
      adjacent(Equals_Param15, Equals_Param14)
    ]).
axiom(equals(Equals_Param14, l3),
   
    [ not(equals(Equals_Param14, l2)),
      not(equals(Equals_Param15, l2)),
      not(equals(Equals_Param14, l2)),
      adjacent(Equals_Param15, Equals_Param14)
    ]).
axiom(equals(Equals_Param14, l3),
   
    [ not(equals(Equals_Param15, l1)),
      not(equals(Equals_Param14, l1)),
      not(equals(Equals_Param14, l2)),
      adjacent(Equals_Param15, Equals_Param14)
    ]).
axiom(equals(Equals_Param14, l3),
   
    [ not(equals(Equals_Param14, l2)),
      not(equals(Equals_Param14, l1)),
      not(equals(Equals_Param14, l2)),
      adjacent(Equals_Param15, Equals_Param14)
    ]).

 /*  equals(Equals_Param16, l3) :-
       (   not(equals(Equals_Param16, l2))
       ;   not(equals(Equals_Param17, l3))
       ),
       (   not(equals(Equals_Param16, l2))
       ;   not(equals(Equals_Param17, l1))
       ),
       (   not(equals(Equals_Param16, l1))
       ;   not(equals(Equals_Param17, l2))
       ),
       adjacent(Equals_Param16, Equals_Param17).
 */
axiom(equals(Equals_Param16, l3),
   
    [ not(equals(Equals_Param16, l1)),
      not(equals(Equals_Param16, l2)),
      not(equals(Equals_Param16, l2)),
      adjacent(Equals_Param16, Equals_Param17)
    ]).
axiom(equals(Equals_Param16, l3),
   
    [ not(equals(Equals_Param17, l2)),
      not(equals(Equals_Param16, l2)),
      not(equals(Equals_Param16, l2)),
      adjacent(Equals_Param16, Equals_Param17)
    ]).
axiom(equals(Equals_Param16, l3),
   
    [ not(equals(Equals_Param16, l1)),
      not(equals(Equals_Param17, l1)),
      not(equals(Equals_Param16, l2)),
      adjacent(Equals_Param16, Equals_Param17)
    ]).
axiom(equals(Equals_Param16, l3),
   
    [ not(equals(Equals_Param17, l2)),
      not(equals(Equals_Param17, l1)),
      not(equals(Equals_Param16, l2)),
      adjacent(Equals_Param16, Equals_Param17)
    ]).
axiom(equals(Equals_Param16, l3),
   
    [ not(equals(Equals_Param16, l1)),
      not(equals(Equals_Param16, l2)),
      not(equals(Equals_Param17, l3)),
      adjacent(Equals_Param16, Equals_Param17)
    ]).
axiom(equals(Equals_Param16, l3),
   
    [ not(equals(Equals_Param17, l2)),
      not(equals(Equals_Param16, l2)),
      not(equals(Equals_Param17, l3)),
      adjacent(Equals_Param16, Equals_Param17)
    ]).
axiom(equals(Equals_Param16, l3),
   
    [ not(equals(Equals_Param16, l1)),
      not(equals(Equals_Param17, l1)),
      not(equals(Equals_Param17, l3)),
      adjacent(Equals_Param16, Equals_Param17)
    ]).
axiom(equals(Equals_Param16, l3),
   
    [ not(equals(Equals_Param17, l2)),
      not(equals(Equals_Param17, l1)),
      not(equals(Equals_Param17, l3)),
      adjacent(Equals_Param16, Equals_Param17)
    ]).

 /*  equals(Equals_Param18, l2) :-
       (   not(equals(Equals_Param19, l2))
       ;   not(equals(Equals_Param18, l3))
       ),
       (   not(equals(Equals_Param19, l2))
       ;   not(equals(Equals_Param18, l1))
       ),
       (   not(equals(Equals_Param19, l1))
       ;   not(equals(Equals_Param18, l2))
       ),
       adjacent(Equals_Param19, Equals_Param18).
 */
axiom(equals(Equals_Param18, l2),
   
    [ not(equals(Equals_Param19, l1)),
      not(equals(Equals_Param19, l2)),
      not(equals(Equals_Param19, l2)),
      adjacent(Equals_Param19, Equals_Param18)
    ]).
axiom(equals(Equals_Param18, l2),
   
    [ not(equals(Equals_Param18, l2)),
      not(equals(Equals_Param19, l2)),
      not(equals(Equals_Param19, l2)),
      adjacent(Equals_Param19, Equals_Param18)
    ]).
axiom(equals(Equals_Param18, l2),
   
    [ not(equals(Equals_Param19, l1)),
      not(equals(Equals_Param18, l1)),
      not(equals(Equals_Param19, l2)),
      adjacent(Equals_Param19, Equals_Param18)
    ]).
axiom(equals(Equals_Param18, l2),
   
    [ not(equals(Equals_Param18, l2)),
      not(equals(Equals_Param18, l1)),
      not(equals(Equals_Param19, l2)),
      adjacent(Equals_Param19, Equals_Param18)
    ]).
axiom(equals(Equals_Param18, l2),
   
    [ not(equals(Equals_Param19, l1)),
      not(equals(Equals_Param19, l2)),
      not(equals(Equals_Param18, l3)),
      adjacent(Equals_Param19, Equals_Param18)
    ]).
axiom(equals(Equals_Param18, l2),
   
    [ not(equals(Equals_Param18, l2)),
      not(equals(Equals_Param19, l2)),
      not(equals(Equals_Param18, l3)),
      adjacent(Equals_Param19, Equals_Param18)
    ]).
axiom(equals(Equals_Param18, l2),
   
    [ not(equals(Equals_Param19, l1)),
      not(equals(Equals_Param18, l1)),
      not(equals(Equals_Param18, l3)),
      adjacent(Equals_Param19, Equals_Param18)
    ]).
axiom(equals(Equals_Param18, l2),
   
    [ not(equals(Equals_Param18, l2)),
      not(equals(Equals_Param18, l1)),
      not(equals(Equals_Param18, l3)),
      adjacent(Equals_Param19, Equals_Param18)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:86
% HoldsAt(At(O1,L1),0).
axiom(initially(at(o1, l1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:87
% [object]
 % !HoldsAt(At(object,L3),0).
 %  not(initially(at(Object,l3))).
axiom(not(initially(at(At_Param, l3))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:89
% [object]
 % !HoldsAt(At(object,L1),1).
 %  not(holds_at(at(Object,l1),1)).
axiom(not(holds_at(at(At_Param, l1), start)),
    [b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:90
% [object]
 % !HoldsAt(At(object,L3),1).
 %  not(holds_at(at(Object,l3),1)).
axiom(not(holds_at(at(At_Param, l3), start)),
    [b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:92
% HoldsAt(At(O2,L3),2).
holds_at(at(o2,l3),2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:93
% [object]
 % !HoldsAt(At(object,L1),2).
 %  not(holds_at(at(Object,l1),2)).
axiom(not(holds_at(at(At_Param, l1), t2)),
    [b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:95
%; ADDED:
% [object,location1,location2,time]
% Happens(Move(object,location1,location2),time) ->
% HoldsAt(At(object,location1),time) &
% Adjacent(location1,location2).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:99
axiom(requires(move(Object, Location1, Location2), Time),
   
    [ holds_at(at(Object, Location1), Time),
      adjacent(Location1, Location2)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:101
% [object1,object2,location1,location2,time]
% Equal(object1,object2) &
% Happens(Move(object1,location1,location2),time) ->
% Happens(Move(object2,location1,location2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:104
axiom(happens(move(Object2, Location1, Location2), Time),
   
    [ equal(Object1, Object2),
      happens(move(Object1, Location1, Location2), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:106
% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:107
==> range(time,0,2).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/OneScreen.e:108
==> range(offset,1,1).
%; End of file.
