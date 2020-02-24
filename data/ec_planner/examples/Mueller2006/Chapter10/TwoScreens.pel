:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter10/TwoScreens.e').
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

% location L1, L2, L3, L4, L5
==> t(location,l1).
==> t(location,l2).
==> t(location,l3).
==> t(location,l4).
==> t(location,l5).

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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:42
%; Sigma
% [object,location1,location2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:45
% HoldsAt(At(object,location1),time) &
% Adjacent(location1,location2) ->
% Initiates(Move(object,location1,location2),At(object,location2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:47
axiom(initiates(move(Object, Location1, Location2), at(Object, Location2), Time),
   
    [ holds_at(at(Object, Location1), Time),
      adjacent(Location1, Location2)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:49
% [object,location1,location2,time]
% HoldsAt(At(object,location1),time) &
% Adjacent(location1,location2) ->
% Terminates(Move(object,location1,location2),At(object,location1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:52
axiom(terminates(move(Object, Location1, Location2), at(Object, Location1), Time),
   
    [ holds_at(at(Object, Location1), Time),
      adjacent(Location1, Location2)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:54
%; Psi
% [object,location1,location2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:57
% HoldsAt(At(object,location1),time) &
% HoldsAt(At(object,location2),time) ->
% location1=location2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:59
axiom(Location1=Location2,
   
    [ holds_at(at(Object, Location1), Time),
      holds_at(at(Object, Location2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:61
% [object,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:62
% {location} % HoldsAt(At(object,location),time).

 /*  exists([Location],
          holds_at(at(Object,Location),Time)).
 */

 /*  holds_at(at(At_Param, Location4), Time5) :-
       some(Location4, '$kolem_Fn_2'(At_Param, Time5)).
 */
axiom(holds_at(at(At_Param, Location4), Time5),
    [some(Location4, '$kolem_Fn_2'(At_Param, Time5))]).

 /*  not(some(Location7, '$kolem_Fn_2'(Fn_2_Param, Time8))) :-
       not(holds_at(at(Fn_2_Param, Location7), Time8)).
 */
axiom(not(some(Location7, '$kolem_Fn_2'(Fn_2_Param, Time8))),
    [not(holds_at(at(Fn_2_Param, Location7), Time8))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:64
% [object1,object2,location,time]
% HoldsAt(At(object1,location),time) &
% HoldsAt(At(object2,location),time) ->
% Equal(object1,object2).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:67
axiom(equal(Object1, Object2),
   
    [ holds_at(at(Object1, Location), Time),
      holds_at(at(Object2, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:69
% [location1, location2]
% Adjacent(location1,location2) <->
% Adjacent(location2,location1).

 /*  adjacent(Location1, Location2) <->
       adjacent(Location2, Location1).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:71
axiom(adjacent(Location1, Location2),
    [adjacent(Location2, Location1)]).
axiom(adjacent(Location2, Location1),
    [adjacent(Location1, Location2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:73
% [object1,object2]
% Equal(object1,object2) <->
% Equal(object2,object1).

 /*  equal(Object1, Object2) <->
       equal(Object2, Object1).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:75
axiom(equal(Object1, Object2),
    [equal(Object2, Object1)]).
axiom(equal(Object2, Object1),
    [equal(Object1, Object2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:77
%; Gamma
% [location1,location2]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:80
% Adjacent(location1,location2) <->
% (location1=L1 & location2=L2) |
% (location1=L2 & location2=L1) |
% (location1=L2 & location2=L3) |
% (location1=L3 & location2=L2) |
% (location1=L3 & location2=L4) |
% (location1=L4 & location2=L3) |
% (location1=L4 & location2=L5) |
% (location1=L5 & location2=L4).

 /*  adjacent(Location1, Location2) <->
       (   Location1=l1,
           Location2=l2
       ;   Location1=l2,
           Location2=l1
       ;   Location1=l2,
           Location2=l3
       ;   Location1=l3,
           Location2=l2
       ;   Location1=l3,
           Location2=l4
       ;   Location1=l4,
           Location2=l3
       ;   Location1=l4,
           Location2=l5
       ;   Location1=l5,
           Location2=l4
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:88
axiom(adjacent(Location1, Location2),
    [equals(Location1, l1), equals(Location2, l2)]).
axiom(adjacent(Location1, Location2),
    [equals(Location1, l2), equals(Location2, l1)]).
axiom(adjacent(Location1, Location2),
    [equals(Location1, l2), equals(Location2, l3)]).
axiom(adjacent(Location1, Location2),
    [equals(Location1, l3), equals(Location2, l2)]).
axiom(adjacent(Location1, Location2),
    [equals(Location1, l3), equals(Location2, l4)]).
axiom(adjacent(Location1, Location2),
    [equals(Location1, l4), equals(Location2, l3)]).
axiom(adjacent(Location1, Location2),
    [equals(Location1, l4), equals(Location2, l5)]).
axiom(adjacent(Location1, Location2),
    [equals(Location1, l5), equals(Location2, l4)]).

 /*   if(adjacent(Location1, Location2),
          (Location1=l1, Location2=l2;Location1=l2, Location2=l1;Location1=l2, Location2=l3;Location1=l3, Location2=l2;Location1=l3, Location2=l4;Location1=l4, Location2=l3;Location1=l4, Location2=l5;Location1=l5, Location2=l4)).
 */
todo_later(if(adjacent(Location1, Location2),  (Location1=l1, Location2=l2;Location1=l2, Location2=l1;Location1=l2, Location2=l3;Location1=l3, Location2=l2;Location1=l3, Location2=l4;Location1=l4, Location2=l3;Location1=l4, Location2=l5;Location1=l5, Location2=l4)), [(not(adjacent(Adjacent_Param, Equals_Param)):-(not(equals(Adjacent_Param, l1));not(equals(Equals_Param, l2))), (not(equals(Adjacent_Param, l2));not(equals(Equals_Param, l1))), (not(equals(Adjacent_Param, l2));not(equals(Equals_Param, l3))), (not(equals(Adjacent_Param, l3));not(equals(Equals_Param, l2))), (not(equals(Adjacent_Param, l3));not(equals(Equals_Param, l4))), (not(equals(Adjacent_Param, l4));not(equals(Equals_Param, l3))), (not(equals(Adjacent_Param, l4));not(equals(Equals_Param, l5))), (not(equals(Adjacent_Param, l5));not(equals(Equals_Param, l4)))),  (equals(Equals_Param4, l1):-((not(equals(Equals_Param4, l2));not(equals(Equals_Param5, l1))), (not(equals(Equals_Param4, l2));not(equals(Equals_Param5, l3))), (not(equals(Equals_Param4, l3));not(equals(Equals_Param5, l2))), (not(equals(Equals_Param4, l3));not(equals(Equals_Param5, l4))), (not(equals(Equals_Param4, l4));not(equals(Equals_Param5, l3))), (not(equals(Equals_Param4, l4));not(equals(Equals_Param5, l5))), (not(equals(Equals_Param4, l5));not(equals(Equals_Param5, l4)))), adjacent(Equals_Param4, Equals_Param5)),  (equals(Equals_Param6, l2):-((not(equals(Equals_Param7, l2));not(equals(Equals_Param6, l1))), (not(equals(Equals_Param7, l2));not(equals(Equals_Param6, l3))), (not(equals(Equals_Param7, l3));not(equals(Equals_Param6, l2))), (not(equals(Equals_Param7, l3));not(equals(Equals_Param6, l4))), (not(equals(Equals_Param7, l4));not(equals(Equals_Param6, l3))), (not(equals(Equals_Param7, l4));not(equals(Equals_Param6, l5))), (not(equals(Equals_Param7, l5));not(equals(Equals_Param6, l4)))), adjacent(Equals_Param7, Equals_Param6)),  (equals(Equals_Param8, l2):-((not(equals(Equals_Param8, l2));not(equals(Equals_Param9, l3))), (not(equals(Equals_Param8, l3));not(equals(Equals_Param9, l2))), (not(equals(Equals_Param8, l3));not(equals(Equals_Param9, l4))), (not(equals(Equals_Param8, l4));not(equals(Equals_Param9, l3))), (not(equals(Equals_Param8, l4));not(equals(Equals_Param9, l5))), (not(equals(Equals_Param8, l5));not(equals(Equals_Param9, l4)))), (not(equals(Equals_Param8, l1));not(equals(Equals_Param9, l2))), adjacent(Equals_Param8, Equals_Param9)),  (equals(Equals_Param10, l1):-((not(equals(Equals_Param11, l2));not(equals(Equals_Param10, l3))), (not(equals(Equals_Param11, l3));not(equals(Equals_Param10, l2))), (not(equals(Equals_Param11, l3));not(equals(Equals_Param10, l4))), (not(equals(Equals_Param11, l4));not(equals(Equals_Param10, l3))), (not(equals(Equals_Param11, l4));not(equals(Equals_Param10, l5))), (not(equals(Equals_Param11, l5));not(equals(Equals_Param10, l4)))), (not(equals(Equals_Param11, l1));not(equals(Equals_Param10, l2))), adjacent(Equals_Param11, Equals_Param10)),  (equals(Equals_Param12, l2):-((not(equals(Equals_Param12, l3));not(equals(Equals_Param13, l2))), (not(equals(Equals_Param12, l3));not(equals(Equals_Param13, l4))), (not(equals(Equals_Param12, l4));not(equals(Equals_Param13, l3))), (not(equals(Equals_Param12, l4));not(equals(Equals_Param13, l5))), (not(equals(Equals_Param12, l5));not(equals(Equals_Param13, l4)))), (not(equals(Equals_Param12, l2));not(equals(Equals_Param13, l1))), (not(equals(Equals_Param12, l1));not(equals(Equals_Param13, l2))), adjacent(Equals_Param12, Equals_Param13)),  (equals(Equals_Param14, l3):-((not(equals(Equals_Param15, l3));not(equals(Equals_Param14, l2))), (not(equals(Equals_Param15, l3));not(equals(Equals_Param14, l4))), (not(equals(Equals_Param15, l4));not(equals(Equals_Param14, l3))), (not(equals(Equals_Param15, l4));not(equals(Equals_Param14, l5))), (not(equals(Equals_Param15, l5));not(equals(Equals_Param14, l4)))), (not(equals(Equals_Param15, l2));not(equals(Equals_Param14, l1))), (not(equals(Equals_Param15, l1));not(equals(Equals_Param14, l2))), adjacent(Equals_Param15, Equals_Param14)),  (equals(Equals_Param16, l3):-((not(equals(Equals_Param16, l3));not(equals(Equals_Param17, l4))), (not(equals(Equals_Param16, l4));not(equals(Equals_Param17, l3))), (not(equals(Equals_Param16, l4));not(equals(Equals_Param17, l5))), (not(equals(Equals_Param16, l5));not(equals(Equals_Param17, l4)))), (not(equals(Equals_Param16, l2));not(equals(Equals_Param17, l3))), (not(equals(Equals_Param16, l2));not(equals(Equals_Param17, l1))), (not(equals(Equals_Param16, l1));not(equals(Equals_Param17, l2))), adjacent(Equals_Param16, Equals_Param17)),  (equals(Equals_Param18, l2):-((not(equals(Equals_Param19, l3));not(equals(Equals_Param18, l4))), (not(equals(Equals_Param19, l4));not(equals(Equals_Param18, l3))), (not(equals(Equals_Param19, l4));not(equals(Equals_Param18, l5))), (not(equals(Equals_Param19, l5));not(equals(Equals_Param18, l4)))), (not(equals(Equals_Param19, l2));not(equals(Equals_Param18, l3))), (not(equals(Equals_Param19, l2));not(equals(Equals_Param18, l1))), (not(equals(Equals_Param19, l1));not(equals(Equals_Param18, l2))), adjacent(Equals_Param19, Equals_Param18)),  (equals(Equals_Param20, l3):-((not(equals(Equals_Param20, l4));not(equals(Equals_Param21, l3))), (not(equals(Equals_Param20, l4));not(equals(Equals_Param21, l5))), (not(equals(Equals_Param20, l5));not(equals(Equals_Param21, l4)))), (not(equals(Equals_Param20, l3));not(equals(Equals_Param21, l2))), (not(equals(Equals_Param20, l2));not(equals(Equals_Param21, l3))), (not(equals(Equals_Param20, l2));not(equals(Equals_Param21, l1))), (not(equals(Equals_Param20, l1));not(equals(Equals_Param21, l2))), adjacent(Equals_Param20, Equals_Param21)),  (equals(Equals_Param22, l4):-((not(equals(Equals_Param23, l4));not(equals(Equals_Param22, l3))), (not(equals(Equals_Param23, l4));not(equals(Equals_Param22, l5))), (not(equals(Equals_Param23, l5));not(equals(Equals_Param22, l4)))), (not(equals(Equals_Param23, l3));not(equals(Equals_Param22, l2))), (not(equals(Equals_Param23, l2));not(equals(Equals_Param22, l3))), (not(equals(Equals_Param23, l2));not(equals(Equals_Param22, l1))), (not(equals(Equals_Param23, l1));not(equals(Equals_Param22, l2))), adjacent(Equals_Param23, Equals_Param22)),  (equals(Equals_Param24, l4):-((not(equals(Equals_Param24, l4));not(equals(Equals_Param25, l5))), (not(equals(Equals_Param24, l5));not(equals(Equals_Param25, l4)))), (not(equals(Equals_Param24, l3));not(equals(Equals_Param25, l4))), (not(equals(Equals_Param24, l3));not(equals(Equals_Param25, l2))), (not(equals(Equals_Param24, l2));not(equals(Equals_Param25, l3))), (not(equals(Equals_Param24, l2));not(equals(Equals_Param25, l1))), (not(equals(Equals_Param24, l1));not(equals(Equals_Param25, l2))), adjacent(Equals_Param24, Equals_Param25)),  (equals(Equals_Param26, l3):-((not(equals(Equals_Param27, l4));not(equals(Equals_Param26, l5))), (not(equals(Equals_Param27, l5));not(equals(Equals_Param26, l4)))), (not(equals(Equals_Param27, l3));not(equals(Equals_Param26, l4))), (not(equals(Equals_Param27, l3));not(equals(Equals_Param26, l2))), (not(equals(Equals_Param27, l2));not(equals(Equals_Param26, l3))), (not(equals(Equals_Param27, l2));not(equals(Equals_Param26, l1))), (not(equals(Equals_Param27, l1));not(equals(Equals_Param26, l2))), adjacent(Equals_Param27, Equals_Param26)),  (equals(Equals_Param28, l4):-(not(equals(Equals_Param28, l5));not(equals(Equals_Param29, l4))), (not(equals(Equals_Param28, l4));not(equals(Equals_Param29, l3))), (not(equals(Equals_Param28, l3));not(equals(Equals_Param29, l4))), (not(equals(Equals_Param28, l3));not(equals(Equals_Param29, l2))), (not(equals(Equals_Param28, l2));not(equals(Equals_Param29, l3))), (not(equals(Equals_Param28, l2));not(equals(Equals_Param29, l1))), (not(equals(Equals_Param28, l1));not(equals(Equals_Param29, l2))), adjacent(Equals_Param28, Equals_Param29)),  (equals(Equals_Param30, l5):-(not(equals(Equals_Param31, l5));not(equals(Equals_Param30, l4))), (not(equals(Equals_Param31, l4));not(equals(Equals_Param30, l3))), (not(equals(Equals_Param31, l3));not(equals(Equals_Param30, l4))), (not(equals(Equals_Param31, l3));not(equals(Equals_Param30, l2))), (not(equals(Equals_Param31, l2));not(equals(Equals_Param30, l3))), (not(equals(Equals_Param31, l2));not(equals(Equals_Param30, l1))), (not(equals(Equals_Param31, l1));not(equals(Equals_Param30, l2))), adjacent(Equals_Param31, Equals_Param30)),  (equals(Equals_Param32, l5):-(not(equals(Equals_Param32, l4));not(equals(Equals_Param33, l5))), (not(equals(Equals_Param32, l4));not(equals(Equals_Param33, l3))), (not(equals(Equals_Param32, l3));not(equals(Equals_Param33, l4))), (not(equals(Equals_Param32, l3));not(equals(Equals_Param33, l2))), (not(equals(Equals_Param32, l2));not(equals(Equals_Param33, l3))), (not(equals(Equals_Param32, l2));not(equals(Equals_Param33, l1))), (not(equals(Equals_Param32, l1));not(equals(Equals_Param33, l2))), adjacent(Equals_Param32, Equals_Param33)),  (equals(Equals_Param34, l4):-(not(equals(Equals_Param35, l4));not(equals(Equals_Param34, l5))), (not(equals(Equals_Param35, l4));not(equals(Equals_Param34, l3))), (not(equals(Equals_Param35, l3));not(equals(Equals_Param34, l4))), (not(equals(Equals_Param35, l3));not(equals(Equals_Param34, l2))), (not(equals(Equals_Param35, l2));not(equals(Equals_Param34, l3))), (not(equals(Equals_Param35, l2));not(equals(Equals_Param34, l1))), (not(equals(Equals_Param35, l1));not(equals(Equals_Param34, l2))), adjacent(Equals_Param35, Equals_Param34))], 17==17).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:90
% HoldsAt(At(O1,L1),0).
axiom(initially(at(o1, l1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:91
% [object]
 % !HoldsAt(At(object,L5),0).
 %  not(initially(at(Object,l5))).
axiom(not(initially(at(At_Param, l5))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:93
% HoldsAt(At(O2,L5),4).
holds_at(at(o2,l5),4).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:94
% [object]
 % !HoldsAt(At(object,L1),4).
 %  not(holds_at(at(Object,l1),4)).
axiom(not(holds_at(at(At_Param, l1), t4)),
    [b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:96
% [object,time]
 % !HoldsAt(At(object,L3),time).
 %  not(holds_at(at(Object,l3),Time)).
axiom(not(holds_at(at(At_Param, l3), Time2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:98
%; ADDED:
% [object,location1,location2,time]
% Happens(Move(object,location1,location2),time) ->
% HoldsAt(At(object,location1),time) &
% Adjacent(location1,location2).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:102
axiom(requires(move(Object, Location1, Location2), Time),
   
    [ holds_at(at(Object, Location1), Time),
      adjacent(Location1, Location2)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:104
% [object1,object2,location1,location2,time]
% Equal(object1,object2) &
% Happens(Move(object1,location1,location2),time) ->
% Happens(Move(object2,location1,location2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:107
axiom(happens(move(Object2, Location1, Location2), Time),
   
    [ equal(Object1, Object2),
      happens(move(Object1, Location1, Location2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:109
%; entailed: !Equal(O1,O2).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:111
% range time 0 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:112
==> range(time,0,4).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter10/TwoScreens.e:113
==> range(offset,1,1).
%; End of file.
