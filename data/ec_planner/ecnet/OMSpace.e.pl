:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/OMSpace.e').


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:0
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
%; OMSpace: object-scale metric space
%;
%; The OMSpace representation deals with metric space at
%; the scale of objects.
%;
%; @article{Morgenstern:2001,
%;   author = "Morgenstern, Leora",
%;   year = "2001",
%;   title = "Mid-sized axiomatizations of commonsense problems: A case study in egg cracking",
%;   journal = "Studia Logica",
%;   volume = "67",
%;   pages = "333--384",
%; }
%;
%; @article{Shanahan:2003,
%;   author = "Shanahan, Murray",
%;   year = "2004",
%;   title = "An attempt to formalise a non-trivial benchmark problem in common sense reasoning",
%;   journal = "Artificial Intelligence",
%;   volume = "153",
%;   pages = "141--165",
%; }
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:34
% sort height: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:35
==> subsort(height,integer).

% sort distance: integer
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:36
==> subsort(distance,integer).
%; Height
%; The height of object is height.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:40
% fluent Height(object,height)
 %  fluent(height(object,height)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:41
==> mpred_prop(height(object,height),fluent).
==> meta_argtypes(height(object,height)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:42
%; State constraint represent the fact that each
%; object has a unique height:
% [object,height1,height2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:45
% HoldsAt(Height(object,height1),time) &
% HoldsAt(Height(object,height2),time) ->
% height1=height2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:47
axiom(Height1=Height2,
   
    [ holds_at(height(Object, Height1), Time),
      holds_at(height(Object, Height2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:49
% [object,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:50
% {height}% HoldsAt(Height(object,height),time).

 /*  exists([Height],
          holds_at(height(Object,Height),Time)).
 */

 /*  holds_at(height(Height_Param, Some_Param), Time4) :-
       some(Some_Param, '$kolem_Fn_147'(Height_Param, Time4)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:51
axiom(holds_at(height(Height_Param, Some_Param), Time4),
    [some(Some_Param, '$kolem_Fn_147'(Height_Param, Time4))]).

 /*  not(some(Some_Param8, '$kolem_Fn_147'(Fn_147_Param, Time7))) :-
       not(holds_at(height(Fn_147_Param, Some_Param8), Time7)).
 */
axiom(not(some(Some_Param8, '$kolem_Fn_147'(Fn_147_Param, Time7))),
    [not(holds_at(height(Fn_147_Param, Some_Param8), Time7))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:53
%; falling
%; physobj1 is falling from physobj2 to physobj3.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:56
% fluent FallingFromTo(physobj,physobj,physobj)
 %  fluent(fallingFromTo(physobj,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:57
==> mpred_prop(fallingFromTo(physobj,physobj,physobj),fluent).
==> meta_argtypes(fallingFromTo(physobj,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:57
%; physobj1 starts falling from physobj2 to physobj3.

% event StartFallingFromTo(physobj,physobj,physobj)
 %  event(startFallingFromTo(physobj,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:59
==> mpred_prop(startFallingFromTo(physobj,physobj,physobj),event).
==> meta_argtypes(startFallingFromTo(physobj,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:59
%; physobj1 collides with physobj2.

% event CollideWith(physobj,physobj)
 %  event(collideWith(physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:61
==> mpred_prop(collideWith(physobj,physobj),event).
==> meta_argtypes(collideWith(physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:62
%; An effect axiom states that if a first physical object starts
%; falling from a second physical object to a third physical
%; object, the first physical object will be falling from the
%; second physical object to the third physical object:
% [physobj1,physobj2,physobj3,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:67
% Initiates(StartFallingFromTo(physobj1,physobj2,physobj3),
%           FallingFromTo(physobj1,physobj2,physobj3),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:69
axiom(initiates(startFallingFromTo(Physobj1, Physobj2, Physobj3), fallingFromTo(Physobj1, Physobj2, Physobj3), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:71
%; A precondition axiom states that for
%; a first physical object to start
%; falling from a second physical object to a third physical
%; object,
%; the height of the first physical object and the
%; second physical object must be the same.
% [physobj1,physobj2,physobj3,height1,height2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:78
% Happens(StartFallingFromTo(physobj1,physobj2,physobj3),time) &
% HoldsAt(Height(physobj1,height1),time) &
% HoldsAt(Height(physobj2,height2),time) ->
% height1=height2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:81
axiom(Height1=Height2,
   
    [ happens(startFallingFromTo(Physobj1, Physobj2, Physobj3),
              Time),
      holds_at(height(Physobj1, Height1), Time),
      holds_at(height(Physobj2, Height2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:83
%; A state constraint says that a physical object
%; cannot fall from itself, cannot fall to itself,
%; and cannot fall from and to the same physical object:
% [physobj1,physobj2,physobj3,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:87
% HoldsAt(FallingFromTo(physobj1,physobj2,physobj3),time) ->
% physobj1!=physobj2 &
% physobj1!=physobj3 &
% physobj2!=physobj3.

 /*   if(holds_at(fallingFromTo(Physobj1, Physobj2, Physobj3),
                  Time),
          (Physobj1\=Physobj2, Physobj1\=Physobj3, Physobj2\=Physobj3)).
 */

 /*  not(holds_at(fallingFromTo(FallingFromTo_Param, Dif_Param, FallingFromTo_Ret), Time4)) :-
       (   not({dif(FallingFromTo_Param, Dif_Param)})
       ;   not({dif(FallingFromTo_Param, FallingFromTo_Ret)})
       ;   not({dif(Dif_Param, FallingFromTo_Ret)})
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:90
axiom(not(holds_at(fallingFromTo(FallingFromTo_Param, Dif_Param, FallingFromTo_Ret), Time4)),
    [not({dif(FallingFromTo_Param, Dif_Param)})]).
axiom(not(holds_at(fallingFromTo(FallingFromTo_Param, Dif_Param, FallingFromTo_Ret), Time4)),
    [not({dif(FallingFromTo_Param, FallingFromTo_Ret)})]).
axiom(not(holds_at(fallingFromTo(FallingFromTo_Param, Dif_Param, FallingFromTo_Ret), Time4)),
    [not({dif(Dif_Param, FallingFromTo_Ret)})]).

 /*  { dif(Dif_Param9, Dif_Ret)
   } :-
       holds_at(fallingFromTo(Dif_Param9,
                              Dif_Ret,
                              FallingFromTo_Ret11),
                Time8).
 */
axiom({ dif(Dif_Param9, Dif_Ret)
},
   
    [ holds_at(fallingFromTo(Dif_Param9,
                             Dif_Ret,
                             FallingFromTo_Ret11),
               Time8)
    ]).

 /*  { dif(Dif_Param13, Dif_Ret14)
   } :-
       holds_at(fallingFromTo(Dif_Param13, _, Dif_Ret14),
                Time12).
 */
axiom({ dif(Dif_Param13, Dif_Ret14)
},
   
    [ holds_at(fallingFromTo(Dif_Param13, _, Dif_Ret14),
               Time12)
    ]).

 /*  { dif(Dif_Param16, Dif_Ret18)
   } :-
       holds_at(fallingFromTo(FallingFromTo_Param17,
                              Dif_Param16,
                              Dif_Ret18),
                Time15).
 */
axiom({ dif(Dif_Param16, Dif_Ret18)
},
   
    [ holds_at(fallingFromTo(FallingFromTo_Param17,
                             Dif_Param16,
                             Dif_Ret18),
               Time15)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:92
%; A state constraint says that the sky cannot fall:
% [sky,physobj1,physobj2,time]
% !HoldsAt(FallingFromTo(sky,physobj1,physobj2),time).

 /*  not(holds_at(fallingFromTo(Sky,Physobj1,Physobj2),
   	     Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:94
axiom(not(holds_at(fallingFromTo(FallingFromTo_Param, _, FallingFromTo_Ret), Time4)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:96
%; A releases axiom states that if
%; if a first physical object starts
%; falling from a second physical object to a third physical
%; object, the height of the first physical object
%; will be released from inertia:
% [physobj1,physobj2,physobj3,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:102
% Releases(StartFallingFromTo(physobj1,physobj2,physobj3),
%          Height(physobj1,height),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:104
axiom(releases(startFallingFromTo(Physobj1, Physobj2, Physobj3), height(Physobj1, Height), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:106
%; A trajectory axiom states that
%; if a first physical object starts falling
%; from a second physical object
%; to a third physical object
%; at a time and
%; the first physical object has a height at the time,
%; then the first physical object will have a height
%; equal to the height minus an offset
%; at a time equal to the time plus the offset:
% [physobj1,physobj2,physobj3,height1,height2,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:116
% HoldsAt(Height(physobj1,height1),time) &
% height2=height1-offset ->
% Trajectory(FallingFromTo(physobj1,physobj2,physobj3),time,
%            Height(physobj1,height2),offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:119
axiom(trajectory(fallingFromTo(Physobj1, Physobj2, Physobj3), Time, height(Physobj1, Height2), Offset),
   
    [ holds_at(height(Physobj1, Height1), Time),
      equals(Height2, Height1-Offset)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:121
%; A trigger axiom states that
%; if a first physical object is falling
%; from a second physical object
%; to a third physical object and
%; the height of the first physical object
%; is the same as the height of the third physical object,
%; the first physical object collides with the
%; third physical object:
% [physobj1,physobj2,physobj3,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:130
% HoldsAt(FallingFromTo(physobj1,physobj2,physobj3),time) &
% HoldsAt(Height(physobj1,height),time) &
% HoldsAt(Height(physobj3,height),time) ->
% Happens(CollideWith(physobj1,physobj3),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:133
axiom(happens(collideWith(Physobj1, Physobj3), Time),
   
    [ holds_at(fallingFromTo(Physobj1, Physobj2, Physobj3),
               Time),
      holds_at(height(Physobj1, Height), Time),
      holds_at(height(Physobj3, Height), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:135
%; An effect axiom states that
%; if a first physical object is falling
%; from a second physical object
%; to a third physical object and
%; the first physical object collides with
%; the third physical object,
%; the first physical object will be on the third physical object:
% [physobj1,physobj2,physobj3,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:143
% HoldsAt(FallingFromTo(physobj1,physobj2,physobj3),time) ->
% Initiates(CollideWith(physobj1,physobj3),
%           On(physobj1,physobj3),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:146
axiom(initiates(collideWith(Physobj1, Physobj3), on(Physobj1, Physobj3), Time),
   
    [ holds_at(fallingFromTo(Physobj1, Physobj2, Physobj3),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:148
%; An effect axiom states that
%; if a physical object collides with another
%; physical object,
%; the height of the first physical object will
%; be the height of the second physical object:
% [physobj1,physobj2,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:154
% HoldsAt(Height(physobj2,height),time) ->
% Initiates(CollideWith(physobj1,physobj2),
%           Height(physobj1,height),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:157
axiom(initiates(collideWith(Physobj1, Physobj2), height(Physobj1, Height), Time),
    [holds_at(height(Physobj2, Height), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:159
%;[physobj1,physobj2,height1,height2,time]
%;HoldsAt(Height(physobj2,height1),time) &
%;height1 != height2 ->
%;Terminates(CollideWith(physobj1,physobj2),
%;           Height(physobj1,height2),
%;           time).
%; An effect axiom states that
%; if a first physical object is falling
%; from a second physical object
%; to a third physical object and
%; the first physical object collides with
%; the third physical object,
%; the first physical object will no longer be
%; falling from the second physical object to the
%; third physical object:
% [physobj1,physobj2,physobj3,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:176
% HoldsAt(FallingFromTo(physobj1,physobj2,physobj3),time) ->
% Terminates(CollideWith(physobj1,physobj3),
%            FallingFromTo(physobj1,physobj2,physobj3),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:179
axiom(terminates(collideWith(Physobj1, Physobj3), fallingFromTo(Physobj1, Physobj2, Physobj3), Time),
   
    [ holds_at(fallingFromTo(Physobj1, Physobj2, Physobj3),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:181
%; flying
%; agent is flying from physobj1 to physobj2.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:184
% fluent FlyingFromTo(agent,physobj,physobj)
 %  fluent(flyingFromTo(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:185
==> mpred_prop(flyingFromTo(agent,physobj,physobj),fluent).
==> meta_argtypes(flyingFromTo(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:185
%; agent starts flying from physobj1 to physobj2.

% event StartFlyingFromTo(agent,physobj,physobj)
 %  event(startFlyingFromTo(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:187
==> mpred_prop(startFlyingFromTo(agent,physobj,physobj),event).
==> meta_argtypes(startFlyingFromTo(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:187
%; agent reaches physobj.

% event Reach(agent,physobj)
 %  event(reach(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:189
==> mpred_prop(reach(agent,physobj),event).
==> meta_argtypes(reach(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:190
%; An effect axiom states that if an agent starts
%; flying from a physical object to another physical object,
%; the agent will be flying from the first physical object
%; to the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:195
% Initiates(StartFlyingFromTo(agent,physobj1,physobj2),
%           FlyingFromTo(agent,physobj1,physobj2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:197
axiom(initiates(startFlyingFromTo(Agent, Physobj1, Physobj2), flyingFromTo(Agent, Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:199
%; A precondition axiom states that for
%; an agent to start flying from a physical object to
%; another physical object,
%; the height of the agent and
%; the first physical object must be the same:
% [agent,physobj1,physobj2,height1,height2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:205
% Happens(StartFlyingFromTo(agent,physobj1,physobj2),time) &
% HoldsAt(Height(agent,height1),time) &
% HoldsAt(Height(physobj1,height2),time) ->
% height1=height2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:208
axiom(Height1=Height2,
   
    [ happens(startFlyingFromTo(Agent, Physobj1, Physobj2),
              Time),
      holds_at(height(Agent, Height1), Time),
      holds_at(height(Physobj1, Height2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:210
%; A state constraint says that an agent
%; cannot fly from and to the same physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:213
% HoldsAt(FlyingFromTo(agent,physobj1,physobj2),time) ->
% physobj1!=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:214
axiom(Physobj1\=Physobj2,
   
    [ holds_at(flyingFromTo(Agent, Physobj1, Physobj2),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:216
%; A releases axiom states that if an agent
%; starts flying from a physical object to another
%; physical object, the height of the agent will
%; be released from inertia:
% [agent,physobj1,physobj2,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:221
% Releases(StartFlyingFromTo(agent,physobj1,physobj2),
%          Height(agent,height),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:223
axiom(releases(startFlyingFromTo(Agent, Physobj1, Physobj2), height(Agent, Height), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:225
%; A trajectory axiom states that
%; if an agent starts flying from
%; from a physical object
%; to another physical object
%; at a time and
%; the agent has a height at the time,
%; then the agent will have a height
%; equal to the height plus an offset
%; at a time equal to the time plus the offset:
% [agent,physobj1,physobj2,height1,height2,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:235
% HoldsAt(Height(agent,height1),time) &
% height2=height1+offset ->
% Trajectory(FlyingFromTo(agent,physobj1,physobj2),time,
%            Height(agent,height2),offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:238
axiom(trajectory(flyingFromTo(Agent, Physobj1, Physobj2), Time, height(Agent, Height2), Offset),
   
    [ holds_at(height(Agent, Height1), Time),
      equals(Height2, Height1+Offset)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:240
%; A trigger axiom states that
%; if an agent is flying
%; from a physical object
%; to another physical object and
%; the height of the agent
%; is the same as the height of the second physical object,
%; the agent reaches the second physical object:
% [agent,physobj1,physobj2,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:248
% HoldsAt(FlyingFromTo(agent,physobj1,physobj2),time) &
% HoldsAt(Height(agent,height),time) &
% HoldsAt(Height(physobj2,height),time) ->
% Happens(Reach(agent,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:251
axiom(happens(reach(Agent, Physobj2), Time),
   
    [ holds_at(flyingFromTo(Agent, Physobj1, Physobj2),
               Time),
      holds_at(height(Agent, Height), Time),
      holds_at(height(Physobj2, Height), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:253
%; An effect axiom states that
%; if an agent reaches a physical object,
%; the height of the agent will be the
%; height of the physical object:
% [agent,physobj,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:258
% HoldsAt(Height(physobj,height),time) ->
% Initiates(Reach(agent,physobj),Height(agent,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:259
axiom(initiates(reach(Agent, Physobj), height(Agent, Height), Time),
    [holds_at(height(Physobj, Height), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:261
%;[agent,physobj,height1,height2,time]
%;HoldsAt(Height(physobj,height1),time) &
%;height1!=height2 ->
%;Terminates(Reach(agent,physobj),Height(agent,height2),time).
%; An effect axiom states that
%; if an agent is flying
%; from a physical object
%; to another physical object and
%; the agent reaches the second physical object,
%; the agent will no longer be
%; flying from the first physical object
%; to the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:275
% HoldsAt(FlyingFromTo(agent,physobj1,physobj2),time) ->
% Terminates(Reach(agent,physobj2),
%            FlyingFromTo(agent,physobj1,physobj2),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:278
axiom(terminates(reach(Agent, Physobj2), flyingFromTo(Agent, Physobj1, Physobj2), Time),
   
    [ holds_at(flyingFromTo(Agent, Physobj1, Physobj2),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:280
%; A releases axiom states that
%; if an agent holds a physical object,
%; the height of the physical object is released from inertia:
% [agent,physobj,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:284
% Releases(Hold(agent,physobj),Height(physobj,height),time).
axiom(releases(hold(Agent, Physobj), height(Physobj, Height), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:286
%;[agent,physobj,height1,height2,time]
%;(!{object} PartOf(physobj,object)) &
%;HoldsAt(Height(physobj,height1),time) &
%;height1 != height2 ->
%;Terminates(LetGoOf(agent,physobj),Height(physobj,height2),time).
% [agent,physobj,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:293
% (!{object} PartOf(physobj,object)) &
% HoldsAt(Height(physobj,height),time) ->
% Initiates(LetGoOf(agent,physobj),Height(physobj,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:295
axiom(initiates(letGoOf(Agent, Physobj), height(Physobj, Height), Time),
   
    [ not(partOf(Physobj, Object)),
      holds_at(height(Physobj, Height), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:297
%; A state constraint says that
%; if an agent is holding a physical object and
%; the height of the agent is height,
%; the height of the physical object is height:
% [agent,physobj,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:302
% HoldsAt(Holding(agent,physobj),time) &
% HoldsAt(Height(agent,height),time) ->
% HoldsAt(Height(physobj,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:304
axiom(holds_at(height(Physobj, Height), Time),
   
    [ holds_at(holding(Agent, Physobj), Time),
      holds_at(height(Agent, Height), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:306
%; A state constraint says that if a physical object
%; is part of an object,
%; the height of the physical object
%; is the same as the height of the object:
% [physobj,object,height,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:311
% PartOf(physobj,object) &
% HoldsAt(Height(object,height),time) ->
% HoldsAt(Height(physobj,height),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:313
axiom(holds_at(height(Physobj, Height), Time),
   
    [ partOf(Physobj, Object),
      holds_at(height(Object, Height), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OMSpace.e:315
%;event Catch(agent,physobj)
%;event HitFromTo(agent,physobj,object,object)
%;fluent Distance(physobj,physobj,distance)
%;fluent FlyingAcrossFromTo(physobj,object,object)
%;[agent,physobj1,physobj2,physobj3,time]
%;Initiates(HitFromTo(agent,physobj1,physobj2,physobj3),
%;          FlyingAcrossFromTo(physobj1,physobj2,physobj3),
%;          time).
%;[agent,physobj1,physobj2,physobj3,distance,time]
%;Releases(HitFromTo(agent,physobj1,physobj2,physobj3),
%;         Distance(physobj1,physobj2,distance),
%;         time).
%;[agent,physobj1,physobj2,physobj3,distance,time]
%;Releases(HitFromTo(agent,physobj1,physobj2,physobj3),
%;         Distance(physobj1,physobj3,distance),
%;         time).
%;[physobj1,physobj2,physobj3,offset,time]
%;Trajectory(FlyingAcrossFromTo(physobj1,physobj2,physobj3),time,
%;           Distance(physobj1,physobj2,offset),offset).
%;[physobj1,physobj2,physobj3,distance1,distance2,offset,time]
%;HoldsAt(Distance(physobj2,physobj3,distance1),time) &
%;distance2 = distance1 - time ->
%;Trajectory(FlyingAcrossFromTo(physobj1,physobj2,physobj3),time,
%;           Distance(physobj1,physobj3,distance2),offset).
%;[agent,physobj1,physobj2,physobj3,time]
%;HoldsAt(FlyingAcrossFromTo(physobj1,physobj2,physobj3),time) ->
%;Initiates(Catch(agent,physobj1),
%;          Holding(agent,physobj1),
%;          time).
%;[agent,physobj1,physobj2,physobj3,time]
%;HoldsAt(FlyingAcrossFromTo(physobj1,physobj2,physobj3),time) ->
%;Terminates(Catch(agent,physobj1),
%;           FlyingAcrossFromTo(physobj1,physobj2,physobj3),
%;           time).
%; End of file.
