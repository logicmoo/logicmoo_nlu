:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/PolySpace.e').
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
%; sorts

% sort object
==> sort(object).

% sort xcoord: integer
==> subsort(xcoord,integer).

% sort ycoord: integer
==> subsort(ycoord,integer).

% sort grid
==> sort(grid).

% sort shape
==> sort(shape).

% sort color
==> sort(color).
%; constants

% shape Round,Square
==> t(shape,round).
==> t(shape,square).

% color Red,Green
==> t(color,red).
==> t(color,green).
%; predicates, fluents, and events

% predicate Equal(object,object)
 %  predicate(equal(object,object)).
==> mpred_prop(equal(object,object),predicate).
==> meta_argtypes(equal(object,object)).

% predicate Shape(object,shape)
 %  predicate(shape(object,shape)).
==> mpred_prop(shape(object,shape),predicate).
==> meta_argtypes(shape(object,shape)).

% predicate Color(object,color)
 %  predicate(color(object,color)).
==> mpred_prop(color(object,color),predicate).
==> meta_argtypes(color(object,color)).

% fluent Location(grid,object,xcoord,ycoord)
 %  fluent(location(grid,object,xcoord,ycoord)).
==> mpred_prop(location(grid,object,xcoord,ycoord),fluent).
==> meta_argtypes(location(grid,object,xcoord,ycoord)).

% event Move(grid,object,xcoord,ycoord,xcoord,ycoord)
 %  event(move(grid,object,xcoord,ycoord,xcoord,ycoord)).
==> mpred_prop(move(grid,object,xcoord,ycoord,xcoord,ycoord),event).
==> meta_argtypes(move(grid,object,xcoord,ycoord,xcoord,ycoord)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:38
%; axioms
% [object1,object2]
 % Equal(object1,object2) -> Equal(object2,object1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:40
axiom(equal(Object2, Object1),
    [equal(Object1, Object2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:42
%; objects have unique shape
% [object,shape1,shape2]
% Shape(object,shape1) & Shape(object,shape2) ->
% shape1=shape2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:45
axiom(Shape1=Shape2,
    [shape(Object, Shape1), shape(Object, Shape2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:47
%; objects have unique color
% [object,color1,color2]
% Color(object,color1) & Color(object,color2) ->
% color1=color2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:50
axiom(Color1=Color2,
    [color(Object, Color1), color(Object, Color2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:52
%; if objects are the same, they have the same shape
% [object1,object2]
% Equal(object1,object2) ->
% ({shape} Shape(object1,shape) & Shape(object2,shape)).

 /*   if(equal(Object1, Object2),
         exists([Shape],
                 (shape(Object1, Shape), shape(Object2, Shape)))).
 */

 /*  not(equal(Equal_Param, Shape_Param)) :-
       (   not(shape(Equal_Param, Shape_Ret))
       ;   not(shape(Shape_Param, Shape_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:55
axiom(not(equal(Equal_Param, Shape_Param)),
    [not(shape(Equal_Param, Shape_Ret))]).
axiom(not(equal(Equal_Param, Shape_Param)),
    [not(shape(Shape_Param, Shape_Ret))]).

 /*  shape(Shape_Param6, Shape_Ret7) :-
       equal(Shape_Param6, Equal_Ret).
 */
axiom(shape(Shape_Param6, Shape_Ret7),
    [equal(Shape_Param6, Equal_Ret)]).

 /*  shape(Shape_Param9, Shape_Ret11) :-
       equal(Equal_Param10, Shape_Param9).
 */
axiom(shape(Shape_Param9, Shape_Ret11),
    [equal(Equal_Param10, Shape_Param9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:57
%; if objects are the same, they have the same color
% [object1,object2]
% Equal(object1,object2) ->
% ({color} Color(object1,color) & Color(object2,color)).

 /*   if(equal(Object1, Object2),
         exists([Color],
                 (color(Object1, Color), color(Object2, Color)))).
 */

 /*  not(equal(Equal_Param, Color_Param)) :-
       (   not(color(Equal_Param, Color_Ret))
       ;   not(color(Color_Param, Color_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:60
axiom(not(equal(Equal_Param, Color_Param)),
    [not(color(Equal_Param, Color_Ret))]).
axiom(not(equal(Equal_Param, Color_Param)),
    [not(color(Color_Param, Color_Ret))]).

 /*  color(Color_Param6, Color_Ret7) :-
       equal(Color_Param6, Equal_Ret).
 */
axiom(color(Color_Param6, Color_Ret7),
    [equal(Color_Param6, Equal_Ret)]).

 /*  color(Color_Param9, Color_Ret11) :-
       equal(Equal_Param10, Color_Param9).
 */
axiom(color(Color_Param9, Color_Ret11),
    [equal(Equal_Param10, Color_Param9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:62
%; if objects are the same, they have the same location
% [grid,object1,object2,xcoord1,ycoord1,xcoord2,ycoord2,time]
% Equal(object1,object2) ->
% (HoldsAt(Location(grid,object1,xcoord1,ycoord1),time) &
%  HoldsAt(Location(grid,object2,xcoord2,ycoord2),time) ->
%  xcoord1=xcoord2 & ycoord1=ycoord2).

 /*   if(equal(Object1, Object2),
         if((holds_at(location(Grid, Object1, Xcoord1, Ycoord1), Time), holds_at(location(Grid, Object2, Xcoord2, Ycoord2), Time)),
             (Xcoord1=Xcoord2, Ycoord1=Ycoord2))).
 */

 /*  not(equal(Equal_Param, Equal_Ret)) :-
       ( holds_at(location(Location_Param,
                           Equal_Param,
                           Equals_Param,
                           Equals_Param12),
                  Time8),
         holds_at(location(Location_Param,
                           Equal_Ret,
                           Equals_Ret,
                           Location_Ret),
                  Time8)
       ),
       (   not(equals(Equals_Param, Equals_Ret))
       ;   not(equals(Equals_Param12, Location_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:67
axiom(not(equal(Equal_Param, Equal_Ret)),
   
    [ not(equals(Equals_Param, Equals_Ret)),
      holds_at(location(Location_Param,
                        Equal_Param,
                        Equals_Param,
                        Equals_Param12),
               Time8),
      holds_at(location(Location_Param,
                        Equal_Ret,
                        Equals_Ret,
                        Location_Ret),
               Time8)
    ]).
axiom(not(equal(Equal_Param, Equal_Ret)),
   
    [ not(equals(Equals_Param12, Location_Ret)),
      holds_at(location(Location_Param,
                        Equal_Param,
                        Equals_Param,
                        Equals_Param12),
               Time8),
      holds_at(location(Location_Param,
                        Equal_Ret,
                        Equals_Ret,
                        Location_Ret),
               Time8)
    ]).

 /*  not(holds_at(location(Location_Param17, Equal_Param20, Equals_Param18, Equals_Param19), Time16)) :-
       holds_at(location(Location_Param17,
                         Equal_Ret23,
                         Equals_Ret22,
                         Location_Ret21),
                Time16),
       (   not(equals(Equals_Param18, Equals_Ret22))
       ;   not(equals(Equals_Param19, Location_Ret21))
       ),
       equal(Equal_Param20, Equal_Ret23).
 */
axiom(not(holds_at(location(Location_Param17, Equal_Param20, Equals_Param18, Equals_Param19), Time16)),
   
    [ not(equals(Equals_Param18, Equals_Ret22)),
      holds_at(location(Location_Param17,
                        Equal_Ret23,
                        Equals_Ret22,
                        Location_Ret21),
               Time16),
      equal(Equal_Param20, Equal_Ret23)
    ]).
axiom(not(holds_at(location(Location_Param17, Equal_Param20, Equals_Param18, Equals_Param19), Time16)),
   
    [ not(equals(Equals_Param19, Location_Ret21)),
      holds_at(location(Location_Param17,
                        Equal_Ret23,
                        Equals_Ret22,
                        Location_Ret21),
               Time16),
      equal(Equal_Param20, Equal_Ret23)
    ]).

 /*  not(holds_at(location(Location_Param25, Equal_Ret31, Equals_Ret30, Location_Ret29), Time24)) :-
       holds_at(location(Location_Param25,
                         Equal_Param28,
                         Equals_Param26,
                         Equals_Param27),
                Time24),
       (   not(equals(Equals_Param26, Equals_Ret30))
       ;   not(equals(Equals_Param27, Location_Ret29))
       ),
       equal(Equal_Param28, Equal_Ret31).
 */
axiom(not(holds_at(location(Location_Param25, Equal_Ret31, Equals_Ret30, Location_Ret29), Time24)),
   
    [ not(equals(Equals_Param26, Equals_Ret30)),
      holds_at(location(Location_Param25,
                        Equal_Param28,
                        Equals_Param26,
                        Equals_Param27),
               Time24),
      equal(Equal_Param28, Equal_Ret31)
    ]).
axiom(not(holds_at(location(Location_Param25, Equal_Ret31, Equals_Ret30, Location_Ret29), Time24)),
   
    [ not(equals(Equals_Param27, Location_Ret29)),
      holds_at(location(Location_Param25,
                        Equal_Param28,
                        Equals_Param26,
                        Equals_Param27),
               Time24),
      equal(Equal_Param28, Equal_Ret31)
    ]).

 /*  equals(Equals_Param33, Equals_Ret36) :-
       ( holds_at(location(Location_Param34,
                           Equal_Param35,
                           Equals_Param33,
                           Location_Ret37),
                  Time32),
         holds_at(location(Location_Param34,
                           Equal_Ret39,
                           Equals_Ret36,
                           Location_Ret38),
                  Time32)
       ),
       equal(Equal_Param35, Equal_Ret39).
 */
axiom(equals(Equals_Param33, Equals_Ret36),
   
    [ holds_at(location(Location_Param34,
                        Equal_Param35,
                        Equals_Param33,
                        Location_Ret37),
               Time32),
      holds_at(location(Location_Param34,
                        Equal_Ret39,
                        Equals_Ret36,
                        Location_Ret38),
               Time32),
      equal(Equal_Param35, Equal_Ret39)
    ]).

 /*  equals(Equals_Param41, Equals_Ret44) :-
       ( holds_at(location(Location_Param42,
                           Equal_Param43,
                           _,
                           Equals_Param41),
                  Time40),
         holds_at(location(Location_Param42,
                           Equal_Ret45,
                           _,
                           Equals_Ret44),
                  Time40)
       ),
       equal(Equal_Param43, Equal_Ret45).
 */
axiom(equals(Equals_Param41, Equals_Ret44),
   
    [ holds_at(location(Location_Param42,
                        Equal_Param43,
                        _,
                        Equals_Param41),
               Time40),
      holds_at(location(Location_Param42,
                        Equal_Ret45,
                        _,
                        Equals_Ret44),
               Time40),
      equal(Equal_Param43, Equal_Ret45)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:69
%; object in one location at a time
% [grid,object,xcoord1,ycoord1,xcoord2,ycoord2,time]
% HoldsAt(Location(grid,object,xcoord1,ycoord1),time) &
% HoldsAt(Location(grid,object,xcoord2,ycoord2),time) ->
% xcoord1=xcoord2 & ycoord1=ycoord2.

 /*   if((holds_at(location(Grid, Object, Xcoord1, Ycoord1), Time), holds_at(location(Grid, Object, Xcoord2, Ycoord2), Time)),
          (Xcoord1=Xcoord2, Ycoord1=Ycoord2)).
 */

 /*  not(holds_at(location(Location_Param, A, Equals_Param, Equals_Param10), Time7)) :-
       holds_at(location(Location_Param,
                         A,
                         Equals_Ret,
                         Location_Ret),
                Time7),
       (   not(equals(Equals_Param, Equals_Ret))
       ;   not(equals(Equals_Param10, Location_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:73
axiom(not(holds_at(location(Location_Param, A, Equals_Param, Equals_Param10), Time7)),
   
    [ not(equals(Equals_Param, Equals_Ret)),
      holds_at(location(Location_Param,
                        A,
                        Equals_Ret,
                        Location_Ret),
               Time7)
    ]).
axiom(not(holds_at(location(Location_Param, A, Equals_Param, Equals_Param10), Time7)),
   
    [ not(equals(Equals_Param10, Location_Ret)),
      holds_at(location(Location_Param,
                        A,
                        Equals_Ret,
                        Location_Ret),
               Time7)
    ]).

 /*  not(holds_at(location(Location_Param14, A, Equals_Ret18, Location_Ret17), Time13)) :-
       holds_at(location(Location_Param14,
                         A,
                         Equals_Param15,
                         Equals_Param16),
                Time13),
       (   not(equals(Equals_Param15, Equals_Ret18))
       ;   not(equals(Equals_Param16, Location_Ret17))
       ).
 */
axiom(not(holds_at(location(Location_Param14, A, Equals_Ret18, Location_Ret17), Time13)),
   
    [ not(equals(Equals_Param15, Equals_Ret18)),
      holds_at(location(Location_Param14,
                        A,
                        Equals_Param15,
                        Equals_Param16),
               Time13)
    ]).
axiom(not(holds_at(location(Location_Param14, A, Equals_Ret18, Location_Ret17), Time13)),
   
    [ not(equals(Equals_Param16, Location_Ret17)),
      holds_at(location(Location_Param14,
                        A,
                        Equals_Param15,
                        Equals_Param16),
               Time13)
    ]).

 /*  equals(Equals_Param20, Equals_Ret22) :-
       holds_at(location(Location_Param21,
                         A,
                         Equals_Param20,
                         Location_Ret23),
                Time19),
       holds_at(location(Location_Param21,
                         A,
                         Equals_Ret22,
                         Location_Ret24),
                Time19).
 */
axiom(equals(Equals_Param20, Equals_Ret22),
   
    [ holds_at(location(Location_Param21,
                        A,
                        Equals_Param20,
                        Location_Ret23),
               Time19),
      holds_at(location(Location_Param21,
                        A,
                        Equals_Ret22,
                        Location_Ret24),
               Time19)
    ]).

 /*  equals(Equals_Param26, Equals_Ret28) :-
       holds_at(location(Location_Param27,
                         A,
                         _,
                         Equals_Param26),
                Time25),
       holds_at(location(Location_Param27,
                         A,
                         _,
                         Equals_Ret28),
                Time25).
 */
axiom(equals(Equals_Param26, Equals_Ret28),
   
    [ holds_at(location(Location_Param27,
                        A,
                        _,
                        Equals_Param26),
               Time25),
      holds_at(location(Location_Param27,
                        A,
                        _,
                        Equals_Ret28),
               Time25)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:75
%; objects have locations
% [grid,object,time]
% (
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:77
% {xcoord,ycoord} HoldsAt(Location(grid,object,xcoord,ycoord),time)).

 /*  exists([Xcoord,Ycoord],
          holds_at(location(Grid,
   			 Object,
   			 Xcoord,
   			 Ycoord),
   		Time)).
 */
axiom(holds_at(location(Location_Param, _, _, Location_Ret), Time5),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:79
%; different objects are not at same location
% [grid,object1,object2,xcoord1,ycoord1,time]
% HoldsAt(Location(grid,object1,xcoord1,ycoord1),time) &
% HoldsAt(Location(grid,object2,xcoord1,ycoord1),time) ->
% Equal(object1,object2).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:83
axiom(equal(Object1, Object2),
   
    [ holds_at(location(Grid, Object1, Xcoord1, Ycoord1),
               Time),
      holds_at(location(Grid, Object2, Xcoord1, Ycoord1),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:85
%; moving to a location causes an object to be at that location
% [grid,object,xcoord1,ycoord1,xcoord2,ycoord2,time]
% Initiates(Move(grid,object,xcoord1,ycoord1,xcoord2,ycoord2),
%           Location(grid,object,xcoord2,ycoord2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:89
axiom(initiates(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), location(Grid, Object, Xcoord2, Ycoord2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:91
%; moving to a location causes the object no longer to be at its previous
%; location
% [grid,object,xcoord1,ycoord1,xcoord2,ycoord2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:94
% Terminates(Move(grid,object,xcoord1,ycoord1,xcoord2,ycoord2),
%            Location(grid,object,xcoord1,ycoord1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:96
axiom(terminates(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), location(Grid, Object, Xcoord1, Ycoord1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:98
%;; allow diagonal movements
%;[grid,object,xcoord1,ycoord1,xcoord2,ycoord2,time]
%;Happens(Move(grid,object,xcoord1,ycoord1,xcoord2,ycoord2),time) ->
%;HoldsAt(Location(grid,object,xcoord1,ycoord1),time) &
%;(xcoord1=xcoord2 |
%; xcoord1=xcoord2+1 |
%; xcoord1=xcoord2-1) &
%;(ycoord1=ycoord2 |
%; ycoord1=ycoord2+1 |
%; ycoord1=ycoord2-1).
%; only allow right angle movements
% [grid,object,xcoord1,ycoord1,xcoord2,ycoord2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:111
% Happens(Move(grid,object,xcoord1,ycoord1,xcoord2,ycoord2),time) ->
% HoldsAt(Location(grid,object,xcoord1,ycoord1),time) &
% ((xcoord1=xcoord2 & (ycoord1=ycoord2+1 | ycoord1=ycoord2-1)) |
%  (ycoord1=ycoord2 & (xcoord1=xcoord2+1 | xcoord1=xcoord2-1))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:114
axiom(requires(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), Time),
   
    [ equals(Ycoord1, Ycoord2+1),
      equals(Xcoord1, Xcoord2),
      holds_at(location(Grid, Object, Xcoord1, Ycoord1),
               Time)
    ]).
axiom(requires(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), Time),
   
    [ equals(Ycoord1, Ycoord2-1),
      equals(Xcoord1, Xcoord2),
      holds_at(location(Grid, Object, Xcoord1, Ycoord1),
               Time)
    ]).
axiom(requires(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), Time),
   
    [ equals(Xcoord1, Xcoord2+1),
      equals(Ycoord1, Ycoord2),
      holds_at(location(Grid, Object, Xcoord1, Ycoord1),
               Time)
    ]).
axiom(requires(move(Grid, Object, Xcoord1, Ycoord1, Xcoord2, Ycoord2), Time),
   
    [ equals(Xcoord1, Xcoord2-1),
      equals(Ycoord1, Ycoord2),
      holds_at(location(Grid, Object, Xcoord1, Ycoord1),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/PolySpace.e:116
%; End of file.
