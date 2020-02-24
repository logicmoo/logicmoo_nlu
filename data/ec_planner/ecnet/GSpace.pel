:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/GSpace.e').
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
%; GSpace: grid space
%;
%; @book{Mueller:1998,
%;   author = "Erik T. Mueller",
%;   year = "1998",
%;   title = "Natural Language Processing with \uppercase{T}hought\uppercase{T}reasure",
%;   address = "New York",
%;   publisher = "Signiform",
%; }
%;

% sort coord: integer
==> subsort(coord,integer).

% sort grid
==> sort(grid).
%; object is at (coord1, coord2) in grid.

% fluent GridAt(grid,object,coord,coord)
 %  fluent(gridAt(grid,object,coord,coord)).
==> mpred_prop(gridAt(grid,object,coord,coord),fluent).
==> meta_argtypes(gridAt(grid,object,coord,coord)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:27
%; agent walks from (coord1, coord2)
%; to (coord3, coord4) in grid.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:29
% event GridWalk(grid,agent,coord,coord,coord,coord)
 %  event(gridWalk(grid,agent,coord,coord,coord,coord)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:30
==> mpred_prop(gridWalk(grid,agent,coord,coord,coord,coord),event).
==> meta_argtypes(gridWalk(grid,agent,coord,coord,coord,coord)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:31
%; A state constraint says that for a given grid an
%; object is at one cell in that grid at a time:
% [grid,object,coord1,coord2,coord3,coord4,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:34
% HoldsAt(GridAt(grid,object,coord1,coord2),time) &
% HoldsAt(GridAt(grid,object,coord3,coord4),time) ->
% coord1=coord3 & coord2=coord4.

 /*   if((holds_at(gridAt(Grid, Object, Coord1, Coord2), Time), holds_at(gridAt(Grid, Object, Coord3, Coord4), Time)),
          (Coord1=Coord3, Coord2=Coord4)).
 */

 /*  not(holds_at(gridAt(GridAt_Param, A, Equals_Param, Equals_Param10), Time7)) :-
       holds_at(gridAt(GridAt_Param,
                       A,
                       Equals_Ret,
                       GridAt_Ret),
                Time7),
       (   not(equals(Equals_Param, Equals_Ret))
       ;   not(equals(Equals_Param10, GridAt_Ret))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:36
axiom(not(holds_at(gridAt(GridAt_Param, A, Equals_Param, Equals_Param10), Time7)),
   
    [ not(equals(Equals_Param, Equals_Ret)),
      holds_at(gridAt(GridAt_Param,
                      A,
                      Equals_Ret,
                      GridAt_Ret),
               Time7)
    ]).
axiom(not(holds_at(gridAt(GridAt_Param, A, Equals_Param, Equals_Param10), Time7)),
   
    [ not(equals(Equals_Param10, GridAt_Ret)),
      holds_at(gridAt(GridAt_Param,
                      A,
                      Equals_Ret,
                      GridAt_Ret),
               Time7)
    ]).

 /*  not(holds_at(gridAt(GridAt_Param14, A, Equals_Ret18, GridAt_Ret17), Time13)) :-
       holds_at(gridAt(GridAt_Param14,
                       A,
                       Equals_Param15,
                       Equals_Param16),
                Time13),
       (   not(equals(Equals_Param15, Equals_Ret18))
       ;   not(equals(Equals_Param16, GridAt_Ret17))
       ).
 */
axiom(not(holds_at(gridAt(GridAt_Param14, A, Equals_Ret18, GridAt_Ret17), Time13)),
   
    [ not(equals(Equals_Param15, Equals_Ret18)),
      holds_at(gridAt(GridAt_Param14,
                      A,
                      Equals_Param15,
                      Equals_Param16),
               Time13)
    ]).
axiom(not(holds_at(gridAt(GridAt_Param14, A, Equals_Ret18, GridAt_Ret17), Time13)),
   
    [ not(equals(Equals_Param16, GridAt_Ret17)),
      holds_at(gridAt(GridAt_Param14,
                      A,
                      Equals_Param15,
                      Equals_Param16),
               Time13)
    ]).

 /*  equals(Equals_Param20, Equals_Ret22) :-
       holds_at(gridAt(GridAt_Param21,
                       A,
                       Equals_Param20,
                       GridAt_Ret23),
                Time19),
       holds_at(gridAt(GridAt_Param21,
                       A,
                       Equals_Ret22,
                       GridAt_Ret24),
                Time19).
 */
axiom(equals(Equals_Param20, Equals_Ret22),
   
    [ holds_at(gridAt(GridAt_Param21,
                      A,
                      Equals_Param20,
                      GridAt_Ret23),
               Time19),
      holds_at(gridAt(GridAt_Param21,
                      A,
                      Equals_Ret22,
                      GridAt_Ret24),
               Time19)
    ]).

 /*  equals(Equals_Param26, Equals_Ret28) :-
       holds_at(gridAt(GridAt_Param27, A, _, Equals_Param26),
                Time25),
       holds_at(gridAt(GridAt_Param27, A, _, Equals_Ret28),
                Time25).
 */
axiom(equals(Equals_Param26, Equals_Ret28),
   
    [ holds_at(gridAt(GridAt_Param27,
                      A,
                      _,
                      Equals_Param26),
               Time25),
      holds_at(gridAt(GridAt_Param27, A, _, Equals_Ret28),
               Time25)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:38
%; An effect axiom states that
%; if an agent walks from one cell in a grid to another cell,
%; the agent will be at second cell:
% [grid,agent,coord1,coord2,coord3,coord4,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:42
% Initiates(GridWalk(grid,agent,coord1,coord2,coord3,coord4),
%           GridAt(grid,agent,coord3,coord4),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:44
axiom(initiates(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), gridAt(Grid, Agent, Coord3, Coord4), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:46
%; An effect axiom states that
%; if an agent walks from one cell in a grid to another cell,
%; the agent will no longer be at the first cell:
% [grid,agent,coord1,coord2,coord3,coord4,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:50
% Terminates(GridWalk(grid,agent,coord1,coord2,coord3,coord4),
%            GridAt(grid,agent,coord1,coord2),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:52
axiom(terminates(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), gridAt(Grid, Agent, Coord1, Coord2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:54
%; A precondition axiom states that for an agent to walk
%; from one cell in a grid to another cell, the agent
%; must be at the first cell, the second cell must not
%; be occupied, and the first cell must be adjacent to
%; the second cell:
% [grid,agent,coord1,coord2,coord3,coord4,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:60
% Happens(GridWalk(grid,agent,coord1,coord2,coord3,coord4),time) ->
% HoldsAt(GridAt(grid,agent,coord1,coord2),time) &
% (!{object} HoldsAt(GridAt(grid,object,coord3,coord4),time)) &
% (coord1=coord3 |
%  coord1=coord3+1 |
%  coord1=coord3-1) &
% (coord2=coord4 |
%  coord2=coord4+1 |
%  coord2=coord4-1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:68
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4),
      equals(Coord1, Coord3),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4+1),
      equals(Coord1, Coord3),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4-1),
      equals(Coord1, Coord3),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4),
      equals(Coord1, Coord3+1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4+1),
      equals(Coord1, Coord3+1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4-1),
      equals(Coord1, Coord3+1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4),
      equals(Coord1, Coord3-1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4+1),
      equals(Coord1, Coord3-1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).
axiom(requires(gridWalk(Grid, Agent, Coord1, Coord2, Coord3, Coord4), Time),
   
    [ equals(Coord2, Coord4-1),
      equals(Coord1, Coord3-1),
      holds_at(gridAt(Grid, Agent, Coord1, Coord2),
               Time),
      not(holds_at(gridAt(Grid, Object, Coord3, Coord4),
                   Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/GSpace.e:70
%; End of file.
