:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Cassimatis2002/TwoScreens.e').
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

% load foundations/Root.e

% load foundations/EC.e

% load examples/Cassimatis2002/PolySpace.e

% grid G1
==> t(grid,g1).

% object X,Y,Screen1,Screen2
==> t(object,x).
==> t(object,y).
==> t(object,screen1).
==> t(object,screen2).
%; perceptions:


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:27
% Shape(X,Round).
shape(x,round).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:28
% Color(X,Red).
color(x,red).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:29
% Shape(Y,Round).
shape(y,round).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:30
% Color(Y,Red).
color(y,red).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:31
% Shape(Screen1,Square).
shape(screen1,square).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:32
% Color(Screen1,Green).
color(screen1,green).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:33
% Shape(Screen2,Square).
shape(screen2,square).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:34
% Color(Screen2,Green).
color(screen2,green).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:35
% [time]
 % HoldsAt(Location(G1,Screen1,2,0),time).
holds_at(location(g1,screen1,2,0),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:36
% [time]
 % HoldsAt(Location(G1,Screen2,4,0),time).
holds_at(location(g1,screen2,4,0),Time).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:37
% HoldsAt(Location(G1,X,1,1),0).
axiom(initially(location(g1, x, 1, 1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:38
% HoldsAt(Location(G1,Y,5,1),4).
holds_at(location(g1,y,5,1),4).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:40
% [xcoord,ycoord,time]
% xcoord!=% 2 & xcoord!=4 & !(xcoord=1 & ycoord=1 & time=0) ->
% !HoldsAt(Location(G1,X,xcoord,ycoord),time) |
% xcoord=5 & ycoord=1 & time=4 & Equal(X,Y).

 /*   if(({dif(Xcoord, 2)}, {dif(Xcoord, 4)}, (not(equals(Xcoord, 1));not(equals(Ycoord, 1));not(equals(Time, 0)))),
          (not(holds_at(location(g1, x, Xcoord, Ycoord), Time));Xcoord=5, Ycoord=1, Time=4, equal(x, y))).
 */

 /*  not({dif(X, 2)}) :-
       ( { dif(X, 4)
         },
         (   not(equals(X, 1))
         ;   not(equals(Equals_Param, 1))
         ;   not(equals(Time4, 0))
         )
       ),
       holds_at(location(g1, x, X, Equals_Param), Time4),
       (   not(equals(X, 5))
       ;   not(equals(Equals_Param, 1))
       ;   not(equals(Time4, 4))
       ;   not(equal(x, y))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:43
axiom(not({dif(X, 2)}),
   
    [ not(equals(X, 5)),
      not(equals(X, 1)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equals(Equals_Param, 1)),
      not(equals(X, 1)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equals(Time4, 4)),
      not(equals(X, 1)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equal(x, y)),
      not(equals(X, 1)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equals(X, 5)),
      not(equals(Equals_Param, 1)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equals(Equals_Param, 1)),
      not(equals(Equals_Param, 1)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equals(Time4, 4)),
      not(equals(Equals_Param, 1)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equal(x, y)),
      not(equals(Equals_Param, 1)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equals(X, 5)),
      not(equals(Time4, 0)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equals(Equals_Param, 1)),
      not(equals(Time4, 0)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equals(Time4, 4)),
      not(equals(Time4, 0)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).
axiom(not({dif(X, 2)}),
   
    [ not(equal(x, y)),
      not(equals(Time4, 0)),
      { dif(X, 4)
      },
      holds_at(location(g1, x, X, Equals_Param), Time4)
    ]).

 /*  not({dif(X6, 4)}) :-
       (   not(equals(X6, 1))
       ;   not(equals(Equals_Param8, 1))
       ;   not(equals(Time7, 0))
       ),
       { dif(X6, 2)
       },
       holds_at(location(g1, x, X6, Equals_Param8), Time7),
       (   not(equals(X6, 5))
       ;   not(equals(Equals_Param8, 1))
       ;   not(equals(Time7, 4))
       ;   not(equal(x, y))
       ).
 */
axiom(not({dif(X6, 4)}),
   
    [ not(equals(X6, 5)),
      not(equals(X6, 1)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equals(Equals_Param8, 1)),
      not(equals(X6, 1)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equals(Time7, 4)),
      not(equals(X6, 1)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equal(x, y)),
      not(equals(X6, 1)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equals(X6, 5)),
      not(equals(Equals_Param8, 1)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equals(Equals_Param8, 1)),
      not(equals(Equals_Param8, 1)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equals(Time7, 4)),
      not(equals(Equals_Param8, 1)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equal(x, y)),
      not(equals(Equals_Param8, 1)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equals(X6, 5)),
      not(equals(Time7, 0)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equals(Equals_Param8, 1)),
      not(equals(Time7, 0)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equals(Time7, 4)),
      not(equals(Time7, 0)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).
axiom(not({dif(X6, 4)}),
   
    [ not(equal(x, y)),
      not(equals(Time7, 0)),
      { dif(X6, 2)
      },
      holds_at(location(g1, x, X6, Equals_Param8), Time7)
    ]).

 /*  equals(X9, 1) :-
       { dif(X9, 4)
       },
       { dif(X9, 2)
       },
       holds_at(location(g1, x, X9, Equals_Param11), Time10),
       (   not(equals(X9, 5))
       ;   not(equals(Equals_Param11, 1))
       ;   not(equals(Time10, 4))
       ;   not(equal(x, y))
       ).
 */
axiom(equals(X9, 1),
   
    [ not(equals(X9, 5)),
      dif(X9, 4),
      dif(X9, 2),
      holds_at(location(g1, x, X9, Equals_Param11), Time10)
    ]).
axiom(equals(X9, 1),
   
    [ not(equals(Equals_Param11, 1)),
      dif(X9, 4),
      dif(X9, 2),
      holds_at(location(g1, x, X9, Equals_Param11), Time10)
    ]).
axiom(equals(X9, 1),
   
    [ not(equals(Time10, 4)),
      dif(X9, 4),
      dif(X9, 2),
      holds_at(location(g1, x, X9, Equals_Param11), Time10)
    ]).
axiom(equals(X9, 1),
   
    [ not(equal(x, y)),
      dif(X9, 4),
      dif(X9, 2),
      holds_at(location(g1, x, X9, Equals_Param11), Time10)
    ]).

 /*  equals(Equals_Param14, 1) :-
       { dif(X12, 4)
       },
       { dif(X12, 2)
       },
       holds_at(location(g1, x, X12, Equals_Param14), Time13),
       (   not(equals(X12, 5))
       ;   not(equals(Equals_Param14, 1))
       ;   not(equals(Time13, 4))
       ;   not(equal(x, y))
       ).
 */
axiom(equals(Equals_Param14, 1),
   
    [ not(equals(X12, 5)),
      dif(X12, 4),
      dif(X12, 2),
      holds_at(location(g1, x, X12, Equals_Param14), Time13)
    ]).
axiom(equals(Equals_Param14, 1),
   
    [ not(equals(Equals_Param14, 1)),
      dif(X12, 4),
      dif(X12, 2),
      holds_at(location(g1, x, X12, Equals_Param14), Time13)
    ]).
axiom(equals(Equals_Param14, 1),
   
    [ not(equals(Time13, 4)),
      dif(X12, 4),
      dif(X12, 2),
      holds_at(location(g1, x, X12, Equals_Param14), Time13)
    ]).
axiom(equals(Equals_Param14, 1),
   
    [ not(equal(x, y)),
      dif(X12, 4),
      dif(X12, 2),
      holds_at(location(g1, x, X12, Equals_Param14), Time13)
    ]).

 /*  equals(Time16, 0) :-
       { dif(X15, 4)
       },
       { dif(X15, 2)
       },
       holds_at(location(g1, x, X15, Equals_Param17), Time16),
       (   not(equals(X15, 5))
       ;   not(equals(Equals_Param17, 1))
       ;   not(equals(Time16, 4))
       ;   not(equal(x, y))
       ).
 */
axiom(equals(Time16, 0),
   
    [ not(equals(X15, 5)),
      dif(X15, 4),
      dif(X15, 2),
      holds_at(location(g1, x, X15, Equals_Param17), Time16)
    ]).
axiom(equals(Time16, 0),
   
    [ not(equals(Equals_Param17, 1)),
      dif(X15, 4),
      dif(X15, 2),
      holds_at(location(g1, x, X15, Equals_Param17), Time16)
    ]).
axiom(equals(Time16, 0),
   
    [ not(equals(Time16, 4)),
      dif(X15, 4),
      dif(X15, 2),
      holds_at(location(g1, x, X15, Equals_Param17), Time16)
    ]).
axiom(equals(Time16, 0),
   
    [ not(equal(x, y)),
      dif(X15, 4),
      dif(X15, 2),
      holds_at(location(g1, x, X15, Equals_Param17), Time16)
    ]).

 /*  not(holds_at(location(g1, x, X18, Equals_Param20), Time19)) :-
       (   not(equals(X18, 5))
       ;   not(equals(Equals_Param20, 1))
       ;   not(equals(Time19, 4))
       ;   not(equal(x, y))
       ),
       { dif(X18, 2)
       },
       { dif(X18, 4)
       },
       (   not(equals(X18, 1))
       ;   not(equals(Equals_Param20, 1))
       ;   not(equals(Time19, 0))
       ).
 */
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(X18, 1)),
      not(equals(X18, 5)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(Equals_Param20, 1)),
      not(equals(X18, 5)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(Time19, 0)),
      not(equals(X18, 5)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(X18, 1)),
      not(equals(Equals_Param20, 1)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(Equals_Param20, 1)),
      not(equals(Equals_Param20, 1)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(Time19, 0)),
      not(equals(Equals_Param20, 1)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(X18, 1)),
      not(equals(Time19, 4)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(Equals_Param20, 1)),
      not(equals(Time19, 4)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(Time19, 0)),
      not(equals(Time19, 4)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(X18, 1)),
      not(equal(x, y)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(Equals_Param20, 1)),
      not(equal(x, y)),
      dif(X18, 2),
      dif(X18, 4)
    ]).
axiom(not(holds_at(location(g1, x, X18, Equals_Param20), Time19)),
   
    [ not(equals(Time19, 0)),
      not(equal(x, y)),
      dif(X18, 2),
      dif(X18, 4)
    ]).

 /*  equals(X21, 5) :-
       holds_at(location(g1, x, X21, Equals_Param23), Time22),
       { dif(X21, 2)
       },
       { dif(X21, 4)
       },
       (   not(equals(X21, 1))
       ;   not(equals(Equals_Param23, 1))
       ;   not(equals(Time22, 0))
       ).
 */
axiom(equals(X21, 5),
   
    [ not(equals(X21, 1)),
      holds_at(location(g1, x, X21, Equals_Param23), Time22),
      dif(X21, 2),
      dif(X21, 4)
    ]).
axiom(equals(X21, 5),
   
    [ not(equals(Equals_Param23, 1)),
      holds_at(location(g1, x, X21, Equals_Param23), Time22),
      dif(X21, 2),
      dif(X21, 4)
    ]).
axiom(equals(X21, 5),
   
    [ not(equals(Time22, 0)),
      holds_at(location(g1, x, X21, Equals_Param23), Time22),
      dif(X21, 2),
      dif(X21, 4)
    ]).

 /*  equals(Equals_Param26, 1) :-
       holds_at(location(g1, x, X24, Equals_Param26), Time25),
       { dif(X24, 2)
       },
       { dif(X24, 4)
       },
       (   not(equals(X24, 1))
       ;   not(equals(Equals_Param26, 1))
       ;   not(equals(Time25, 0))
       ).
 */
axiom(equals(Equals_Param26, 1),
   
    [ not(equals(X24, 1)),
      holds_at(location(g1, x, X24, Equals_Param26), Time25),
      dif(X24, 2),
      dif(X24, 4)
    ]).
axiom(equals(Equals_Param26, 1),
   
    [ not(equals(Equals_Param26, 1)),
      holds_at(location(g1, x, X24, Equals_Param26), Time25),
      dif(X24, 2),
      dif(X24, 4)
    ]).
axiom(equals(Equals_Param26, 1),
   
    [ not(equals(Time25, 0)),
      holds_at(location(g1, x, X24, Equals_Param26), Time25),
      dif(X24, 2),
      dif(X24, 4)
    ]).

 /*  equals(Time28, 4) :-
       holds_at(location(g1, x, X27, Equals_Param29), Time28),
       { dif(X27, 2)
       },
       { dif(X27, 4)
       },
       (   not(equals(X27, 1))
       ;   not(equals(Equals_Param29, 1))
       ;   not(equals(Time28, 0))
       ).
 */
axiom(equals(Time28, 4),
   
    [ not(equals(X27, 1)),
      holds_at(location(g1, x, X27, Equals_Param29), Time28),
      dif(X27, 2),
      dif(X27, 4)
    ]).
axiom(equals(Time28, 4),
   
    [ not(equals(Equals_Param29, 1)),
      holds_at(location(g1, x, X27, Equals_Param29), Time28),
      dif(X27, 2),
      dif(X27, 4)
    ]).
axiom(equals(Time28, 4),
   
    [ not(equals(Time28, 0)),
      holds_at(location(g1, x, X27, Equals_Param29), Time28),
      dif(X27, 2),
      dif(X27, 4)
    ]).

 /*  equal(x, y) :-
       holds_at(location(g1, x, X30, Equals_Param32), Time31),
       { dif(X30, 2)
       },
       { dif(X30, 4)
       },
       (   not(equals(X30, 1))
       ;   not(equals(Equals_Param32, 1))
       ;   not(equals(Time31, 0))
       ).
 */
axiom(equal(x, y),
   
    [ not(equals(X30, 1)),
      holds_at(location(g1, x, X30, Equals_Param32), Time31),
      dif(X30, 2),
      dif(X30, 4)
    ]).
axiom(equal(x, y),
   
    [ not(equals(Equals_Param32, 1)),
      holds_at(location(g1, x, X30, Equals_Param32), Time31),
      dif(X30, 2),
      dif(X30, 4)
    ]).
axiom(equal(x, y),
   
    [ not(equals(Time31, 0)),
      holds_at(location(g1, x, X30, Equals_Param32), Time31),
      dif(X30, 2),
      dif(X30, 4)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:45
% [xcoord,ycoord,time]
% xcoord!=% 2 & xcoord!=4 & !(xcoord=5 & ycoord=1 & time=4) ->
% !HoldsAt(Location(G1,Y,xcoord,ycoord),time) |
% xcoord=1 & ycoord=1 & time=0 & Equal(X,Y).

 /*   if(({dif(Xcoord, 2)}, {dif(Xcoord, 4)}, (not(equals(Xcoord, 5));not(equals(Ycoord, 1));not(equals(Time, 4)))),
          (not(holds_at(location(g1, y, Xcoord, Ycoord), Time));Xcoord=1, Ycoord=1, Time=0, equal(x, y))).
 */

 /*  not({dif(Y, 2)}) :-
       ( { dif(Y, 4)
         },
         (   not(equals(Y, 5))
         ;   not(equals(Equals_Param, 1))
         ;   not(equals(Time4, 4))
         )
       ),
       holds_at(location(g1, y, Y, Equals_Param), Time4),
       (   not(equals(Y, 1))
       ;   not(equals(Equals_Param, 1))
       ;   not(equals(Time4, 0))
       ;   not(equal(x, y))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:48
axiom(not({dif(Y, 2)}),
   
    [ not(equals(Y, 1)),
      not(equals(Y, 5)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equals(Equals_Param, 1)),
      not(equals(Y, 5)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equals(Time4, 0)),
      not(equals(Y, 5)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equal(x, y)),
      not(equals(Y, 5)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equals(Y, 1)),
      not(equals(Equals_Param, 1)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equals(Equals_Param, 1)),
      not(equals(Equals_Param, 1)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equals(Time4, 0)),
      not(equals(Equals_Param, 1)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equal(x, y)),
      not(equals(Equals_Param, 1)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equals(Y, 1)),
      not(equals(Time4, 4)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equals(Equals_Param, 1)),
      not(equals(Time4, 4)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equals(Time4, 0)),
      not(equals(Time4, 4)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).
axiom(not({dif(Y, 2)}),
   
    [ not(equal(x, y)),
      not(equals(Time4, 4)),
      { dif(Y, 4)
      },
      holds_at(location(g1, y, Y, Equals_Param), Time4)
    ]).

 /*  not({dif(Y6, 4)}) :-
       (   not(equals(Y6, 5))
       ;   not(equals(Equals_Param8, 1))
       ;   not(equals(Time7, 4))
       ),
       { dif(Y6, 2)
       },
       holds_at(location(g1, y, Y6, Equals_Param8), Time7),
       (   not(equals(Y6, 1))
       ;   not(equals(Equals_Param8, 1))
       ;   not(equals(Time7, 0))
       ;   not(equal(x, y))
       ).
 */
axiom(not({dif(Y6, 4)}),
   
    [ not(equals(Y6, 1)),
      not(equals(Y6, 5)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equals(Equals_Param8, 1)),
      not(equals(Y6, 5)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equals(Time7, 0)),
      not(equals(Y6, 5)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equal(x, y)),
      not(equals(Y6, 5)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equals(Y6, 1)),
      not(equals(Equals_Param8, 1)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equals(Equals_Param8, 1)),
      not(equals(Equals_Param8, 1)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equals(Time7, 0)),
      not(equals(Equals_Param8, 1)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equal(x, y)),
      not(equals(Equals_Param8, 1)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equals(Y6, 1)),
      not(equals(Time7, 4)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equals(Equals_Param8, 1)),
      not(equals(Time7, 4)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equals(Time7, 0)),
      not(equals(Time7, 4)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).
axiom(not({dif(Y6, 4)}),
   
    [ not(equal(x, y)),
      not(equals(Time7, 4)),
      { dif(Y6, 2)
      },
      holds_at(location(g1, y, Y6, Equals_Param8), Time7)
    ]).

 /*  equals(Y9, 5) :-
       { dif(Y9, 4)
       },
       { dif(Y9, 2)
       },
       holds_at(location(g1, y, Y9, Equals_Param11), Time10),
       (   not(equals(Y9, 1))
       ;   not(equals(Equals_Param11, 1))
       ;   not(equals(Time10, 0))
       ;   not(equal(x, y))
       ).
 */
axiom(equals(Y9, 5),
   
    [ not(equals(Y9, 1)),
      dif(Y9, 4),
      dif(Y9, 2),
      holds_at(location(g1, y, Y9, Equals_Param11), Time10)
    ]).
axiom(equals(Y9, 5),
   
    [ not(equals(Equals_Param11, 1)),
      dif(Y9, 4),
      dif(Y9, 2),
      holds_at(location(g1, y, Y9, Equals_Param11), Time10)
    ]).
axiom(equals(Y9, 5),
   
    [ not(equals(Time10, 0)),
      dif(Y9, 4),
      dif(Y9, 2),
      holds_at(location(g1, y, Y9, Equals_Param11), Time10)
    ]).
axiom(equals(Y9, 5),
   
    [ not(equal(x, y)),
      dif(Y9, 4),
      dif(Y9, 2),
      holds_at(location(g1, y, Y9, Equals_Param11), Time10)
    ]).

 /*  equals(Equals_Param14, 1) :-
       { dif(Y12, 4)
       },
       { dif(Y12, 2)
       },
       holds_at(location(g1, y, Y12, Equals_Param14), Time13),
       (   not(equals(Y12, 1))
       ;   not(equals(Equals_Param14, 1))
       ;   not(equals(Time13, 0))
       ;   not(equal(x, y))
       ).
 */
axiom(equals(Equals_Param14, 1),
   
    [ not(equals(Y12, 1)),
      dif(Y12, 4),
      dif(Y12, 2),
      holds_at(location(g1, y, Y12, Equals_Param14), Time13)
    ]).
axiom(equals(Equals_Param14, 1),
   
    [ not(equals(Equals_Param14, 1)),
      dif(Y12, 4),
      dif(Y12, 2),
      holds_at(location(g1, y, Y12, Equals_Param14), Time13)
    ]).
axiom(equals(Equals_Param14, 1),
   
    [ not(equals(Time13, 0)),
      dif(Y12, 4),
      dif(Y12, 2),
      holds_at(location(g1, y, Y12, Equals_Param14), Time13)
    ]).
axiom(equals(Equals_Param14, 1),
   
    [ not(equal(x, y)),
      dif(Y12, 4),
      dif(Y12, 2),
      holds_at(location(g1, y, Y12, Equals_Param14), Time13)
    ]).

 /*  equals(Time16, 4) :-
       { dif(Y15, 4)
       },
       { dif(Y15, 2)
       },
       holds_at(location(g1, y, Y15, Equals_Param17), Time16),
       (   not(equals(Y15, 1))
       ;   not(equals(Equals_Param17, 1))
       ;   not(equals(Time16, 0))
       ;   not(equal(x, y))
       ).
 */
axiom(equals(Time16, 4),
   
    [ not(equals(Y15, 1)),
      dif(Y15, 4),
      dif(Y15, 2),
      holds_at(location(g1, y, Y15, Equals_Param17), Time16)
    ]).
axiom(equals(Time16, 4),
   
    [ not(equals(Equals_Param17, 1)),
      dif(Y15, 4),
      dif(Y15, 2),
      holds_at(location(g1, y, Y15, Equals_Param17), Time16)
    ]).
axiom(equals(Time16, 4),
   
    [ not(equals(Time16, 0)),
      dif(Y15, 4),
      dif(Y15, 2),
      holds_at(location(g1, y, Y15, Equals_Param17), Time16)
    ]).
axiom(equals(Time16, 4),
   
    [ not(equal(x, y)),
      dif(Y15, 4),
      dif(Y15, 2),
      holds_at(location(g1, y, Y15, Equals_Param17), Time16)
    ]).

 /*  not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)) :-
       (   not(equals(Y18, 1))
       ;   not(equals(Equals_Param20, 1))
       ;   not(equals(Time19, 0))
       ;   not(equal(x, y))
       ),
       { dif(Y18, 2)
       },
       { dif(Y18, 4)
       },
       (   not(equals(Y18, 5))
       ;   not(equals(Equals_Param20, 1))
       ;   not(equals(Time19, 4))
       ).
 */
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Y18, 5)),
      not(equals(Y18, 1)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Equals_Param20, 1)),
      not(equals(Y18, 1)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Time19, 4)),
      not(equals(Y18, 1)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Y18, 5)),
      not(equals(Equals_Param20, 1)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Equals_Param20, 1)),
      not(equals(Equals_Param20, 1)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Time19, 4)),
      not(equals(Equals_Param20, 1)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Y18, 5)),
      not(equals(Time19, 0)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Equals_Param20, 1)),
      not(equals(Time19, 0)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Time19, 4)),
      not(equals(Time19, 0)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Y18, 5)),
      not(equal(x, y)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Equals_Param20, 1)),
      not(equal(x, y)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).
axiom(not(holds_at(location(g1, y, Y18, Equals_Param20), Time19)),
   
    [ not(equals(Time19, 4)),
      not(equal(x, y)),
      dif(Y18, 2),
      dif(Y18, 4)
    ]).

 /*  equals(Y21, 1) :-
       holds_at(location(g1, y, Y21, Equals_Param23), Time22),
       { dif(Y21, 2)
       },
       { dif(Y21, 4)
       },
       (   not(equals(Y21, 5))
       ;   not(equals(Equals_Param23, 1))
       ;   not(equals(Time22, 4))
       ).
 */
axiom(equals(Y21, 1),
   
    [ not(equals(Y21, 5)),
      holds_at(location(g1, y, Y21, Equals_Param23), Time22),
      dif(Y21, 2),
      dif(Y21, 4)
    ]).
axiom(equals(Y21, 1),
   
    [ not(equals(Equals_Param23, 1)),
      holds_at(location(g1, y, Y21, Equals_Param23), Time22),
      dif(Y21, 2),
      dif(Y21, 4)
    ]).
axiom(equals(Y21, 1),
   
    [ not(equals(Time22, 4)),
      holds_at(location(g1, y, Y21, Equals_Param23), Time22),
      dif(Y21, 2),
      dif(Y21, 4)
    ]).

 /*  equals(Equals_Param26, 1) :-
       holds_at(location(g1, y, Y24, Equals_Param26), Time25),
       { dif(Y24, 2)
       },
       { dif(Y24, 4)
       },
       (   not(equals(Y24, 5))
       ;   not(equals(Equals_Param26, 1))
       ;   not(equals(Time25, 4))
       ).
 */
axiom(equals(Equals_Param26, 1),
   
    [ not(equals(Y24, 5)),
      holds_at(location(g1, y, Y24, Equals_Param26), Time25),
      dif(Y24, 2),
      dif(Y24, 4)
    ]).
axiom(equals(Equals_Param26, 1),
   
    [ not(equals(Equals_Param26, 1)),
      holds_at(location(g1, y, Y24, Equals_Param26), Time25),
      dif(Y24, 2),
      dif(Y24, 4)
    ]).
axiom(equals(Equals_Param26, 1),
   
    [ not(equals(Time25, 4)),
      holds_at(location(g1, y, Y24, Equals_Param26), Time25),
      dif(Y24, 2),
      dif(Y24, 4)
    ]).

 /*  equals(Time28, 0) :-
       holds_at(location(g1, y, Y27, Equals_Param29), Time28),
       { dif(Y27, 2)
       },
       { dif(Y27, 4)
       },
       (   not(equals(Y27, 5))
       ;   not(equals(Equals_Param29, 1))
       ;   not(equals(Time28, 4))
       ).
 */
axiom(equals(Time28, 0),
   
    [ not(equals(Y27, 5)),
      holds_at(location(g1, y, Y27, Equals_Param29), Time28),
      dif(Y27, 2),
      dif(Y27, 4)
    ]).
axiom(equals(Time28, 0),
   
    [ not(equals(Equals_Param29, 1)),
      holds_at(location(g1, y, Y27, Equals_Param29), Time28),
      dif(Y27, 2),
      dif(Y27, 4)
    ]).
axiom(equals(Time28, 0),
   
    [ not(equals(Time28, 4)),
      holds_at(location(g1, y, Y27, Equals_Param29), Time28),
      dif(Y27, 2),
      dif(Y27, 4)
    ]).

 /*  equal(x, y) :-
       holds_at(location(g1, y, Y30, Equals_Param32), Time31),
       { dif(Y30, 2)
       },
       { dif(Y30, 4)
       },
       (   not(equals(Y30, 5))
       ;   not(equals(Equals_Param32, 1))
       ;   not(equals(Time31, 4))
       ).
 */
axiom(equal(x, y),
   
    [ not(equals(Y30, 5)),
      holds_at(location(g1, y, Y30, Equals_Param32), Time31),
      dif(Y30, 2),
      dif(Y30, 4)
    ]).
axiom(equal(x, y),
   
    [ not(equals(Equals_Param32, 1)),
      holds_at(location(g1, y, Y30, Equals_Param32), Time31),
      dif(Y30, 2),
      dif(Y30, 4)
    ]).
axiom(equal(x, y),
   
    [ not(equals(Time31, 4)),
      holds_at(location(g1, y, Y30, Equals_Param32), Time31),
      dif(Y30, 2),
      dif(Y30, 4)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:50
% range time 0 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:51
==> range(time,0,4).

% range xcoord 0 5
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:52
==> range(xcoord,0,5).

% range ycoord 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:53
==> range(ycoord,0,1).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Cassimatis2002/TwoScreens.e:54
==> range(offset,0,0).
%; End of file.
