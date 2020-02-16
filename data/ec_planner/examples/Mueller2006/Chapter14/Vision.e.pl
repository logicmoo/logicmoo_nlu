:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter14/Vision.e').
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
%; @inproceedings{ShanahanRandell:2004,
%;   author = "Murray Shanahan and David A. Randell",
%;   year = "2004",
%;   title = "A logic-based formulation of active visual perception",
%;   editor = "Didier Dubois and Christopher A. Welty and Mary-Anne Williams",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{N}inth \uppercase{I}nternational \uppercase{C}onference on \uppercase{P}rinciples of \uppercase{K}nowledge \uppercase{R}epresentation and \uppercase{R}easoning",
%;   pages = "64--72",
%;   address = "Menlo Park, CA",
%;   publisher = "AAAI Press",
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

% option modeldiff on
:- set_ec_option(modeldiff, on).

% load foundations/Root.e

% load foundations/EC.e

% sort object
==> sort(object).

% sort shape
==> sort(shape).

% sort aspect
==> sort(aspect).

% object Object1
==> t(object,object1).

% aspect Aspect1, Aspect2, Aspect3
==> t(aspect,aspect1).
==> t(aspect,aspect2).
==> t(aspect,aspect3).

% shape Shape1, Shape2
==> t(shape,shape1).
==> t(shape,shape2).

% predicate Shape(object,shape)
 %  predicate(shape(object,shape)).
==> mpred_prop(shape(object,shape),predicate).
==> meta_argtypes(shape(object,shape)).

% predicate Arc(shape,aspect,aspect)
 %  predicate(arc(shape,aspect,aspect)).
==> mpred_prop(arc(shape,aspect,aspect),predicate).
==> meta_argtypes(arc(shape,aspect,aspect)).

% fluent Aspect(object,aspect)
 %  fluent(aspect(object,aspect)).
==> mpred_prop(aspect(object,aspect),fluent).
==> meta_argtypes(aspect(object,aspect)).

% event Change(object,aspect,aspect)
 %  event(change(object,aspect,aspect)).
==> mpred_prop(change(object,aspect,aspect),event).
==> meta_argtypes(change(object,aspect,aspect)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:48
%; Sigma
% [object,aspect1,aspect2,shape,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:51
% HoldsAt(Aspect(object,aspect1),time) &
% Shape(object,shape) &
% (Arc(shape,aspect1,aspect2) |
%  Arc(shape,aspect2,aspect1)) ->
% Initiates(Change(object,aspect1,aspect2),Aspect(object,aspect2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:55
axiom(initiates(change(Object, Aspect1, Aspect2), aspect(Object, Aspect2), Time),
   
    [ arc(Shape, Aspect1, Aspect2),
      holds_at(aspect(Object, Aspect1), Time),
      shape(Object, Shape)
    ]).
axiom(initiates(change(Object, Aspect1, Aspect2), aspect(Object, Aspect2), Time),
   
    [ arc(Shape, Aspect2, Aspect1),
      holds_at(aspect(Object, Aspect1), Time),
      shape(Object, Shape)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:57
% [object,aspect1,aspect2,shape,time]
% HoldsAt(Aspect(object,aspect1),time) &
% Shape(object,shape) &
% (Arc(shape,aspect1,aspect2) |
%  Arc(shape,aspect2,aspect1)) ->
% Terminates(Change(object,aspect1,aspect2),Aspect(object,aspect1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:62
axiom(terminates(change(Object, Aspect1, Aspect2), aspect(Object, Aspect1), Time),
   
    [ arc(Shape, Aspect1, Aspect2),
      holds_at(aspect(Object, Aspect1), Time),
      shape(Object, Shape)
    ]).
axiom(terminates(change(Object, Aspect1, Aspect2), aspect(Object, Aspect1), Time),
   
    [ arc(Shape, Aspect2, Aspect1),
      holds_at(aspect(Object, Aspect1), Time),
      shape(Object, Shape)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:64
%; preconditions (added)
% [object,aspect1,aspect2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:67
% Happens(Change(object,aspect1,aspect2),time) ->
% HoldsAt(Aspect(object,aspect1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:68
axiom(requires(change(Object, Aspect1, Aspect2), Time),
    [holds_at(aspect(Object, Aspect1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:70
% [object,aspect1,aspect2,aspect3,time]
% Happens(Change(object,aspect1,aspect2),time) &
% Happens(Change(object,aspect1,aspect3),time) ->
% aspect2=aspect3.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:73
axiom(Aspect2=Aspect3,
   
    [ happens(change(Object, Aspect1, Aspect2), Time),
      happens(change(Object, Aspect1, Aspect3), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:75
%; Psi
% [object,shape1,shape2]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:78
% Shape(object,shape1) &
% Shape(object,shape2) ->
% shape1=shape2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:80
axiom(Shape1=Shape2,
    [shape(Object, Shape1), shape(Object, Shape2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:82
% [object,aspect1,aspect2,time]
% HoldsAt(Aspect(object,aspect1),time) &
% HoldsAt(Aspect(object,aspect2),time) ->
% aspect1=aspect2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:85
axiom(Aspect1=Aspect2,
   
    [ holds_at(aspect(Object, Aspect1), Time),
      holds_at(aspect(Object, Aspect2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:87
% [aspect1,aspect2]
% Arc(Shape1,aspect1,aspect2) <->
% (aspect1=Aspect1 & aspect2=Aspect2).

 /*  arc(shape1, Aspect1, Aspect2) <->
       Aspect1=aspect1,
       Aspect2=aspect2.
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:89
axiom(arc(shape1, Aspect1, Aspect2),
    [equals(Aspect1, aspect1), equals(Aspect2, aspect2)]).

 /*   if(arc(shape1, Aspect1, Aspect2),
          (Aspect1=aspect1, Aspect2=aspect2)).
 */

 /*  not(arc(shape1, Equals_Param, Equals_Param3)) :-
       (   not(equals(Equals_Param, aspect1))
       ;   not(equals(Equals_Param3, aspect2))
       ).
 */
axiom(not(arc(shape1, Equals_Param, Equals_Param3)),
    [not(equals(Equals_Param, aspect1))]).
axiom(not(arc(shape1, Equals_Param, Equals_Param3)),
    [not(equals(Equals_Param3, aspect2))]).

 /*  equals(Equals_Param4, aspect1) :-
       arc(shape1, Equals_Param4, Arc_Ret).
 */
axiom(equals(Equals_Param4, aspect1),
    [arc(shape1, Equals_Param4, Arc_Ret)]).

 /*  equals(Equals_Param6, aspect2) :-
       arc(shape1, _, Equals_Param6).
 */
axiom(equals(Equals_Param6, aspect2),
    [arc(shape1, _, Equals_Param6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:91
% [aspect1,aspect2]
% Arc(Shape2,aspect1,aspect2) <->
% ((aspect1=Aspect1 & aspect2=Aspect3) |
%  (aspect1=Aspect3 & aspect2=Aspect2)).

 /*  arc(shape2, Aspect1, Aspect2) <->
       (   Aspect1=aspect1,
           Aspect2=aspect3
       ;   Aspect1=aspect3,
           Aspect2=aspect2
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:94
axiom(arc(shape2, Aspect1, Aspect2),
    [equals(Aspect1, aspect1), equals(Aspect2, aspect3)]).
axiom(arc(shape2, Aspect1, Aspect2),
    [equals(Aspect1, aspect3), equals(Aspect2, aspect2)]).

 /*   if(arc(shape2, Aspect1, Aspect2),
          (Aspect1=aspect1, Aspect2=aspect3;Aspect1=aspect3, Aspect2=aspect2)).
 */

 /*  not(arc(shape2, Equals_Param, Equals_Param3)) :-
       (   not(equals(Equals_Param, aspect1))
       ;   not(equals(Equals_Param3, aspect3))
       ),
       (   not(equals(Equals_Param, aspect3))
       ;   not(equals(Equals_Param3, aspect2))
       ).
 */
axiom(not(arc(shape2, Equals_Param, Equals_Param3)),
   
    [ not(equals(Equals_Param, aspect3)),
      not(equals(Equals_Param, aspect1))
    ]).
axiom(not(arc(shape2, Equals_Param, Equals_Param3)),
   
    [ not(equals(Equals_Param3, aspect2)),
      not(equals(Equals_Param, aspect1))
    ]).
axiom(not(arc(shape2, Equals_Param, Equals_Param3)),
   
    [ not(equals(Equals_Param, aspect3)),
      not(equals(Equals_Param3, aspect3))
    ]).
axiom(not(arc(shape2, Equals_Param, Equals_Param3)),
   
    [ not(equals(Equals_Param3, aspect2)),
      not(equals(Equals_Param3, aspect3))
    ]).

 /*  equals(Equals_Param4, aspect1) :-
       (   not(equals(Equals_Param4, aspect3))
       ;   not(equals(Equals_Param5, aspect2))
       ),
       arc(shape2, Equals_Param4, Equals_Param5).
 */
axiom(equals(Equals_Param4, aspect1),
   
    [ not(equals(Equals_Param4, aspect3)),
      arc(shape2, Equals_Param4, Equals_Param5)
    ]).
axiom(equals(Equals_Param4, aspect1),
   
    [ not(equals(Equals_Param5, aspect2)),
      arc(shape2, Equals_Param4, Equals_Param5)
    ]).

 /*  equals(Equals_Param6, aspect3) :-
       (   not(equals(Equals_Param7, aspect3))
       ;   not(equals(Equals_Param6, aspect2))
       ),
       arc(shape2, Equals_Param7, Equals_Param6).
 */
axiom(equals(Equals_Param6, aspect3),
   
    [ not(equals(Equals_Param7, aspect3)),
      arc(shape2, Equals_Param7, Equals_Param6)
    ]).
axiom(equals(Equals_Param6, aspect3),
   
    [ not(equals(Equals_Param6, aspect2)),
      arc(shape2, Equals_Param7, Equals_Param6)
    ]).

 /*  equals(Equals_Param8, aspect3) :-
       (   not(equals(Equals_Param8, aspect1))
       ;   not(equals(Equals_Param9, aspect3))
       ),
       arc(shape2, Equals_Param8, Equals_Param9).
 */
axiom(equals(Equals_Param8, aspect3),
   
    [ not(equals(Equals_Param8, aspect1)),
      arc(shape2, Equals_Param8, Equals_Param9)
    ]).
axiom(equals(Equals_Param8, aspect3),
   
    [ not(equals(Equals_Param9, aspect3)),
      arc(shape2, Equals_Param8, Equals_Param9)
    ]).

 /*  equals(Equals_Param10, aspect2) :-
       (   not(equals(Equals_Param11, aspect1))
       ;   not(equals(Equals_Param10, aspect3))
       ),
       arc(shape2, Equals_Param11, Equals_Param10).
 */
axiom(equals(Equals_Param10, aspect2),
   
    [ not(equals(Equals_Param11, aspect1)),
      arc(shape2, Equals_Param11, Equals_Param10)
    ]).
axiom(equals(Equals_Param10, aspect2),
   
    [ not(equals(Equals_Param10, aspect3)),
      arc(shape2, Equals_Param11, Equals_Param10)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:96
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:98
% HoldsAt(Aspect(Object1,Aspect1),0).
axiom(initially(aspect(object1, aspect1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:99
% HoldsAt(Aspect(Object1,Aspect2),1).
holds_at(aspect(object1,aspect2),1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:101
%;completion Delta Happens

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:103
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:104
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Vision.e:105
==> range(offset,1,1).
%; End of file.
