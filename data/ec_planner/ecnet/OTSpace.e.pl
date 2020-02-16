:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/OTSpace.e').
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
%; OTSpace: object-scale topological space
%;
%; The OTSpace representation deals with topological space at
%; the scale of objects such as agents (humans and animals)
%; and physical objects.
%;
%; PartOf
%; physobj is a part of object.

% predicate PartOf(physobj,object)
 %  predicate(partOf(physobj,object)).
==> mpred_prop(partOf(physobj,object),predicate).
==> meta_argtypes(partOf(physobj,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:22
%; A state constraint says that if a physical object
%; is part of an object, the location of the
%; physical object is the same as the location of the object:
% [physobj,object,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:26
% PartOf(physobj,object) &
% HoldsAt(At(object,location),time) ->
% HoldsAt(At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:28
axiom(holds_at(at(Physobj, Location), Time),
   
    [ partOf(Physobj, Object),
      holds_at(at(Object, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:30
%; rolling a snowball bigger
%; agent rolls stuff1 along stuff2.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:33
% event RollAlong(agent,stuff,stuff)
 %  event(rollAlong(agent,stuff,stuff)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:34
==> mpred_prop(rollAlong(agent,stuff,stuff),event).
==> meta_argtypes(rollAlong(agent,stuff,stuff)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:34
%; The diameter of ball is diameter.

% fluent Diameter(ball,diameter)
 %  fluent(diameter(ball,diameter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:36
==> mpred_prop(diameter(ball,diameter),fluent).
==> meta_argtypes(diameter(ball,diameter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:37
%; A state constraint says that a ball has a unique diameter:
% [ball,diameter1,diameter2,time]
% HoldsAt(Diameter(ball,diameter1),time) &
% HoldsAt(Diameter(ball,diameter2),time) ->
% diameter1=diameter2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:41
axiom(Diameter1=Diameter2,
   
    [ holds_at(diameter(Ball, Diameter1), Time),
      holds_at(diameter(Ball, Diameter2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:43
%; Effect axiom state that if an agent rolls some snow along
%; some other snow, the diameter of the first snow will increase:
% [agent,snow1,snow2,diameter1,diameter2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:46
% HoldsAt(Diameter(snow1,diameter1),time) &
% diameter2 = diameter1+1 ->
% Initiates(RollAlong(agent,snow1,snow2),
%           Diameter(snow1,diameter2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:50
axiom(initiates(rollAlong(Agent, Snow1, Snow2), diameter(Snow1, Diameter2), Time),
   
    [ holds_at(diameter(Snow1, Diameter1), Time),
      equals(Diameter2, Diameter1+1)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:52
% [agent,snow1,snow2,diameter1,time]
% HoldsAt(Diameter(snow1,diameter1),time) ->
% Terminates(RollAlong(agent,snow1,snow2),
%            Diameter(snow1,diameter1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:56
axiom(terminates(rollAlong(Agent, Snow1, Snow2), diameter(Snow1, Diameter1), Time),
    [holds_at(diameter(Snow1, Diameter1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:58
%; A precondition axiom states that
%; for an agent to roll some snow along some other snow,
%; there must be a location such that
%; the agent is at the location,
%; the first snow is at the location, and
%; the second snow is at the location:
%;[agent,snow1,snow2,time]
%;Happens(RollAlong(agent,snow1,snow2),time) ->
%;{location}
%;HoldsAt(At(agent,location),time) &
%;HoldsAt(At(snow1,location),time) &
%;HoldsAt(At(snow2,location),time).
%; motion
%; object moves (in place).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:74
% event Move(object)
 %  event(move(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:75
==> mpred_prop(move(object),event).
==> meta_argtypes(move(object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:76
%; Holding
%; agent is holding physobj.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:79
% fluent Holding(agent,physobj)
 %  fluent(holding(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:80
==> mpred_prop(holding(agent,physobj),fluent).
==> meta_argtypes(holding(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:80
%; agent holds or picks up physobj.

% event Hold(agent,physobj)
 %  event(hold(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:82
==> mpred_prop(hold(agent,physobj),event).
==> meta_argtypes(hold(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:82
%; agent picks up some stuff1 from stuff2.

% event HoldSome(agent,stuff,stuff)
 %  event(holdSome(agent,stuff,stuff)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:84
==> mpred_prop(holdSome(agent,stuff,stuff),event).
==> meta_argtypes(holdSome(agent,stuff,stuff)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:84
%; agent releases or lets go of physobj.

% event LetGoOf(agent,physobj)
 %  event(letGoOf(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:86
==> mpred_prop(letGoOf(agent,physobj),event).
==> meta_argtypes(letGoOf(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:87
%; An effect axiom states that if an agent holds
%; a physical object, the agent will be holding the
%; physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:91
% Initiates(Hold(agent,physobj),Holding(agent,physobj),time).
axiom(initiates(hold(Agent, Physobj), holding(Agent, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:93
%; A precondition axiom states that
%; for an agent to hold a physical object,
%; there must be a location such that
%; the agent is at the location and
%; the physical object is at the location:
%;[agent,physobj,time]
%;Happens(Hold(agent,physobj),time) ->
%;{location}
%;  HoldsAt(At(agent,location),time) &
%;  HoldsAt(At(physobj,location),time).
%; An effect axiom states that if an agent
%; lets go of a physical object, the agent is no longer holding
%; the physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:108
% Terminates(LetGoOf(agent,physobj),Holding(agent,physobj),time).
axiom(terminates(letGoOf(Agent, Physobj), holding(Agent, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:110
%; A precondition axiom states that
%; for an agent to let go of a physical object,
%; the agent must be holding the physical object:
% [agent,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:114
% Happens(LetGoOf(agent,physobj),time) ->
% HoldsAt(Holding(agent,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:115
axiom(requires(letGoOf(Agent, Physobj), Time),
    [holds_at(holding(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:117
%; A releases axiom states that if an agent holds
%; a physical object,
%; the physical object's location will be released
%; from inertia:
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:122
% Releases(Hold(agent,physobj),At(physobj,location),time).
axiom(releases(hold(Agent, Physobj), at(Physobj, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:124
%; A state constraint says that if an agent is holding
%; a physical object and the agent is at a location,
%; the physical object is also at the location:
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:128
% HoldsAt(Holding(agent,physobj),time) &
% HoldsAt(At(agent,location),time) ->
% HoldsAt(At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:130
axiom(holds_at(at(Physobj, Location), Time),
   
    [ holds_at(holding(Agent, Physobj), Time),
      holds_at(at(Agent, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:132
%; A releases axiom states that if an agent holds
%; a physical object,
%; the locations of the parts of the physical object
%; will be released from inertia:
% [agent,physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:137
% PartOf(physobj1,physobj2) ->
% Releases(Hold(agent,physobj2),At(physobj1,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:138
axiom(releases(hold(Agent, Physobj2), at(Physobj1, Location), Time),
    [partOf(Physobj1, Physobj2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:140
%; Further, if an agent holds a physical object,
%; the locations of the physical objects of which
%; the physical object is a part
%; will be released from inertia:
% [agent,physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:145
% PartOf(physobj1,physobj2) ->
% Releases(Hold(agent,physobj1),At(physobj2,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:146
axiom(releases(hold(Agent, Physobj1), at(Physobj2, Location), Time),
    [partOf(Physobj1, Physobj2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:148
%;[agent,physobj,location1,location2,time]
%;(!{object} PartOf(physobj,object)) &
%;HoldsAt(At(agent,location1),time) &
%;location1 != location2 ->
%;Terminates(LetGoOf(agent,physobj),At(physobj,location2),time).
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:155
% (!{object} PartOf(physobj,object)) &
% HoldsAt(At(agent,location),time) ->
% Initiates(LetGoOf(agent,physobj),At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:157
axiom(initiates(letGoOf(Agent, Physobj), at(Physobj, Location), Time),
   
    [ not(partOf(Physobj, Object)),
      holds_at(at(Agent, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:159
%;[agent,physobj1,physobj2,location1,location2,time]
%;PartOf(physobj1,physobj2) &
%;(!{object} PartOf(physobj2,object)) &
%;HoldsAt(At(agent,location1),time) &
%;location1 != location2 ->
%;Terminates(LetGoOf(agent,physobj1),At(physobj2,location2),time).
% [agent,physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:167
% PartOf(physobj1,physobj2) &
% (!{object} PartOf(physobj2,object)) &
% HoldsAt(At(agent,location),time) ->
% Initiates(LetGoOf(agent,physobj1),At(physobj2,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:170
axiom(initiates(letGoOf(Agent, Physobj1), at(Physobj2, Location), Time),
   
    [ partOf(Physobj1, Physobj2),
      not(partOf(Physobj2, Object)),
      holds_at(at(Agent, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:172
%; An effect axiom states that if an agent is at a location
%; and lets go of a physical object, the physical object
%; will be at the location:
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:176
% HoldsAt(At(agent,location),time) ->
% Initiates(LetGoOf(agent,physobj),At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:177
axiom(initiates(letGoOf(Agent, Physobj), at(Physobj, Location), Time),
    [holds_at(at(Agent, Location), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:179
%; An effect axiom states that if an agent picks up
%; some stuff out of some other stuff, the agent will
%; be holding the first stuff:
% [agent,stuff1,stuff2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:183
% Initiates(HoldSome(agent,stuff1,stuff2),
%           Holding(agent,stuff1),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:185
axiom(initiates(holdSome(Agent, Stuff1, Stuff2), holding(Agent, Stuff1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:187
%; A precondition axiom states that
%; for an agent to pick up some stuff out of some other stuff,
%; the first stuff must be a part of the second stuff and
%; there must be a location such that the agent is at the location,
%; the first stuff is at the location, and the second stuff is
%; at the location:
% [agent,stuff1,stuff2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:194
% Happens(HoldSome(agent,stuff1,stuff2),time) ->
% PartOf(stuff1,stuff2) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:196
% {location}% 
%   HoldsAt(At(agent,location),time) &
%   HoldsAt(At(stuff1,location),time) &
%   HoldsAt(At(stuff2,location),time).

 /*   exists([Location],
             if(happens(holdSome(Agent, Stuff1, Stuff2),
                        Time),
                 (partOf(Stuff1, Stuff2), holds_at(at(Agent, Location), Time), holds_at(at(Stuff1, Location), Time), holds_at(at(Stuff2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_151'(Fn_151_Param, PartOf_Param, At_Param, Maptime))) :-
       happens(holdSome(Fn_151_Param, PartOf_Param, At_Param),
               Maptime),
       (   not(partOf(PartOf_Param, At_Param))
       ;   not(holds_at(at(Fn_151_Param, Location7), Maptime))
       ;   not(holds_at(at(PartOf_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:199
axiom(not(some(Location7, '$kolem_Fn_151'(Fn_151_Param, PartOf_Param, At_Param, Maptime))),
   
    [ not(partOf(PartOf_Param, At_Param)),
      happens(holdSome(Fn_151_Param, PartOf_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_151'(Fn_151_Param, PartOf_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_151_Param, Location7), Maptime)),
      happens(holdSome(Fn_151_Param, PartOf_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_151'(Fn_151_Param, PartOf_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(PartOf_Param, Location7), Maptime)),
      happens(holdSome(Fn_151_Param, PartOf_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_151'(Fn_151_Param, PartOf_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(holdSome(Fn_151_Param, PartOf_Param, At_Param),
              Maptime)
    ]).

 /*  not(happens(holdSome(HoldSome_Param, PartOf_Param14, At_Param15), Maptime11)) :-
       (   not(partOf(PartOf_Param14, At_Param15))
       ;   not(holds_at(at(HoldSome_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(PartOf_Param14, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_151'(HoldSome_Param,
                            PartOf_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(holdSome(HoldSome_Param, PartOf_Param14, At_Param15), Maptime11)),
   
    [ not(partOf(PartOf_Param14, At_Param15)),
      some(Location12,
           '$kolem_Fn_151'(HoldSome_Param,
                           PartOf_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(holdSome(HoldSome_Param, PartOf_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(HoldSome_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_151'(HoldSome_Param,
                           PartOf_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(holdSome(HoldSome_Param, PartOf_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(PartOf_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_151'(HoldSome_Param,
                           PartOf_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(holdSome(HoldSome_Param, PartOf_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_151'(HoldSome_Param,
                           PartOf_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  partOf(PartOf_Param17, PartOf_Ret) :-
       happens(holdSome(HoldSome_Param18,
                        PartOf_Param17,
                        PartOf_Ret),
               Maptime16),
       some(Some_Param,
            '$kolem_Fn_151'(HoldSome_Param18,
                            PartOf_Param17,
                            PartOf_Ret,
                            Maptime16)).
 */
axiom(partOf(PartOf_Param17, PartOf_Ret),
   
    [ happens(holdSome(HoldSome_Param18,
                       PartOf_Param17,
                       PartOf_Ret),
              Maptime16),
      some(Some_Param,
           '$kolem_Fn_151'(HoldSome_Param18,
                           PartOf_Param17,
                           PartOf_Ret,
                           Maptime16))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(holdSome(At_Param23, A, HoldSome_Ret),
               Time22),
       some(Location21,
            '$kolem_Fn_151'(At_Param23,
                            A,
                            HoldSome_Ret,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(holdSome(At_Param23, A, HoldSome_Ret),
              Time22),
      some(Location21,
           '$kolem_Fn_151'(At_Param23,
                           A,
                           HoldSome_Ret,
                           Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(holdSome(HoldSome_Param28,
                        At_Param27,
                        HoldSome_Ret29),
               Time26),
       some(Location25,
            '$kolem_Fn_151'(HoldSome_Param28,
                            At_Param27,
                            HoldSome_Ret29,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(holdSome(HoldSome_Param28,
                       At_Param27,
                       HoldSome_Ret29),
              Time26),
      some(Location25,
           '$kolem_Fn_151'(HoldSome_Param28,
                           At_Param27,
                           HoldSome_Ret29,
                           Time26))
    ]).

 /*  holds_at(at(At_Param32, Location30), Time31) :-
       happens(holdSome(HoldSome_Param33, A, At_Param32),
               Time31),
       some(Location30,
            '$kolem_Fn_151'(HoldSome_Param33,
                            A,
                            At_Param32,
                            Time31)).
 */
axiom(holds_at(at(At_Param32, Location30), Time31),
   
    [ happens(holdSome(HoldSome_Param33, A, At_Param32),
              Time31),
      some(Location30,
           '$kolem_Fn_151'(HoldSome_Param33,
                           A,
                           At_Param32,
                           Time31))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:201
%; A releases axiom states that if an agent picks up some
%; stuff out of some other stuff,
%; the first stuff's location will be released
%; from inertia:
% [agent,stuff1,stuff2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:206
% Releases(HoldSome(agent,stuff1,stuff2),At(stuff1,location),time).
axiom(releases(holdSome(Agent, Stuff1, Stuff2), at(Stuff1, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:208
%; Inside
%; physobj1 is inside physobj2.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:211
% fluent Inside(physobj,physobj)
 %  fluent(inside(physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:212
==> mpred_prop(inside(physobj,physobj),fluent).
==> meta_argtypes(inside(physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:212
%; agent puts physobj1 inside physobj2.

% event PutInside(agent,physobj,physobj)
 %  event(putInside(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:214
==> mpred_prop(putInside(agent,physobj,physobj),event).
==> meta_argtypes(putInside(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:214
%; agent takes physobj1 out of physobj2.

% event TakeOutOf(agent,physobj,physobj)
 %  event(takeOutOf(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:216
==> mpred_prop(takeOutOf(agent,physobj,physobj),event).
==> meta_argtypes(takeOutOf(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:217
%; A state constraint says that a physical object cannot
%; be inside itself:
% [physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:220
% HoldsAt(Inside(physobj1,physobj2),time) ->
% physobj1!=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:221
axiom(Physobj1\=Physobj2,
    [holds_at(inside(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:223
%; A state constraint says that if a physical object is
%; inside another physical object, the second physical object
%; is not inside the first physical object:
% [physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:227
% HoldsAt(Inside(physobj1,physobj2),time) ->
% !HoldsAt(Inside(physobj2,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:228
axiom(not(holds_at(inside(Physobj2, Physobj1), Time)),
    [holds_at(inside(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:230
%; An effect axiom states that if an agent puts a physical
%; object inside another physical object, the first
%; physical object will be inside the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:234
% Initiates(PutInside(agent,physobj1,physobj2),
%           Inside(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:235
axiom(initiates(putInside(Agent, Physobj1, Physobj2), inside(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:237
%; An effect axiom states that if an agent puts a physical
%; object inside another physical object, the agent will
%; no longer be holding the first physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:241
% Terminates(PutInside(agent,physobj1,physobj2),
%            Holding(agent,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:242
axiom(terminates(putInside(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:244
%; A precondition axiom states that
%; for an agent to put a physical object inside another
%; physical object,
%; the agent must be holding the first physical object
%; and there must be a location such that
%; the agent is at the location and
%; the second physical object is at the location:
%;[agent,physobj1,physobj2,time]
%;Happens(PutInside(agent,physobj1,physobj2),time) ->
%;HoldsAt(Holding(agent,physobj1),time) &
%;{location}
%; HoldsAt(At(agent,location),time) &
%; HoldsAt(At(physobj2,location),time).
%; An effect axiom states that
%; if an agent takes a physical object out of another
%; physical object, the first physical object
%; will no longer be inside the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:263
% Terminates(TakeOutOf(agent,physobj1,physobj2),
%            Inside(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:264
axiom(terminates(takeOutOf(Agent, Physobj1, Physobj2), inside(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:266
%; A precondition axiom states that
%; for an agent to take a physical object out of another
%; physical object,
%; the first physical object must be inside the second physical object
%; and there must be a location such that
%; the agent is at the location,
%; the first physical object is at the location, and
%; the second physical object is at the location:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:275
% Happens(TakeOutOf(agent,physobj1,physobj2),time) ->
% HoldsAt(Inside(physobj1,physobj2),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:277
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(physobj1,location),time) &
%  HoldsAt(At(physobj2,location),time).

 /*   exists([Location],
             if(happens(takeOutOf(Agent, Physobj1, Physobj2),
                        Time),
                 (holds_at(inside(Physobj1, Physobj2), Time), holds_at(at(Agent, Location), Time), holds_at(at(Physobj1, Location), Time), holds_at(at(Physobj2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_152'(Fn_152_Param, Inside_Param, At_Param, Maptime))) :-
       happens(takeOutOf(Fn_152_Param, Inside_Param, At_Param),
               Maptime),
       (   not(holds_at(inside(Inside_Param, At_Param), Maptime))
       ;   not(holds_at(at(Fn_152_Param, Location7), Maptime))
       ;   not(holds_at(at(Inside_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:280
axiom(not(some(Location7, '$kolem_Fn_152'(Fn_152_Param, Inside_Param, At_Param, Maptime))),
   
    [ not(holds_at(inside(Inside_Param, At_Param), Maptime)),
      happens(takeOutOf(Fn_152_Param, Inside_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_152'(Fn_152_Param, Inside_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_152_Param, Location7), Maptime)),
      happens(takeOutOf(Fn_152_Param, Inside_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_152'(Fn_152_Param, Inside_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Inside_Param, Location7), Maptime)),
      happens(takeOutOf(Fn_152_Param, Inside_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_152'(Fn_152_Param, Inside_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(takeOutOf(Fn_152_Param, Inside_Param, At_Param),
              Maptime)
    ]).

 /*  not(happens(takeOutOf(TakeOutOf_Param, Inside_Param14, At_Param15), Maptime11)) :-
       (   not(holds_at(inside(Inside_Param14, At_Param15),
                        Maptime11))
       ;   not(holds_at(at(TakeOutOf_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(Inside_Param14, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_152'(TakeOutOf_Param,
                            Inside_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(takeOutOf(TakeOutOf_Param, Inside_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(inside(Inside_Param14, At_Param15),
                   Maptime11)),
      some(Location12,
           '$kolem_Fn_152'(TakeOutOf_Param,
                           Inside_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOutOf(TakeOutOf_Param, Inside_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(TakeOutOf_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_152'(TakeOutOf_Param,
                           Inside_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOutOf(TakeOutOf_Param, Inside_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(Inside_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_152'(TakeOutOf_Param,
                           Inside_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOutOf(TakeOutOf_Param, Inside_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_152'(TakeOutOf_Param,
                           Inside_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  holds_at(inside(Inside_Param17, Inside_Ret), Time16) :-
       happens(takeOutOf(TakeOutOf_Param18,
                         Inside_Param17,
                         Inside_Ret),
               Time16),
       some(Some_Param,
            '$kolem_Fn_152'(TakeOutOf_Param18,
                            Inside_Param17,
                            Inside_Ret,
                            Time16)).
 */
axiom(holds_at(inside(Inside_Param17, Inside_Ret), Time16),
   
    [ happens(takeOutOf(TakeOutOf_Param18,
                        Inside_Param17,
                        Inside_Ret),
              Time16),
      some(Some_Param,
           '$kolem_Fn_152'(TakeOutOf_Param18,
                           Inside_Param17,
                           Inside_Ret,
                           Time16))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(takeOutOf(At_Param23, A, TakeOutOf_Ret),
               Time22),
       some(Location21,
            '$kolem_Fn_152'(At_Param23,
                            A,
                            TakeOutOf_Ret,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(takeOutOf(At_Param23, A, TakeOutOf_Ret),
              Time22),
      some(Location21,
           '$kolem_Fn_152'(At_Param23,
                           A,
                           TakeOutOf_Ret,
                           Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(takeOutOf(TakeOutOf_Param28,
                         At_Param27,
                         TakeOutOf_Ret29),
               Time26),
       some(Location25,
            '$kolem_Fn_152'(TakeOutOf_Param28,
                            At_Param27,
                            TakeOutOf_Ret29,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(takeOutOf(TakeOutOf_Param28,
                        At_Param27,
                        TakeOutOf_Ret29),
              Time26),
      some(Location25,
           '$kolem_Fn_152'(TakeOutOf_Param28,
                           At_Param27,
                           TakeOutOf_Ret29,
                           Time26))
    ]).

 /*  holds_at(at(At_Param32, Location30), Time31) :-
       happens(takeOutOf(TakeOutOf_Param33, A, At_Param32),
               Time31),
       some(Location30,
            '$kolem_Fn_152'(TakeOutOf_Param33,
                            A,
                            At_Param32,
                            Time31)).
 */
axiom(holds_at(at(At_Param32, Location30), Time31),
   
    [ happens(takeOutOf(TakeOutOf_Param33, A, At_Param32),
              Time31),
      some(Location30,
           '$kolem_Fn_152'(TakeOutOf_Param33,
                           A,
                           At_Param32,
                           Time31))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:282
%; A releases axiom states that if an agent puts a physical
%; object inside another physical object,
%; the first physical object's location will be released
%; from inertia:
% [agent,physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:287
% Releases(PutInside(agent,physobj1,physobj2),
%          At(physobj1,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:288
axiom(releases(putInside(Agent, Physobj1, Physobj2), at(Physobj1, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:290
%; A state constraint says that if a physical object is inside
%; another physical object and the second physical object is
%; at a location, the first physical object is also at the location:
% [physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:294
% HoldsAt(Inside(physobj1,physobj2),time) &
% HoldsAt(At(physobj2,location),time) ->
% HoldsAt(At(physobj1,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:296
axiom(holds_at(at(Physobj1, Location), Time),
   
    [ holds_at(inside(Physobj1, Physobj2), Time),
      holds_at(at(Physobj2, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:298
%; An effect axiom states that if an agent takes a physical
%; object out of another physical object,
%; the agent will be holding the first physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:302
% Initiates(TakeOutOf(agent,physobj1,physobj2),
%           Holding(agent,physobj1),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:304
axiom(initiates(takeOutOf(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:306
%; On
%; physobj1 is on physobj2.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:309
% fluent On(physobj,physobj)
 %  fluent(on(physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:310
==> mpred_prop(on(physobj,physobj),fluent).
==> meta_argtypes(on(physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:311
%; agent places physobj1 on physobj2.

% event PlaceOn(agent,physobj,physobj)
 %  event(placeOn(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:313
==> mpred_prop(placeOn(agent,physobj,physobj),event).
==> meta_argtypes(placeOn(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:313
%; agent takes physobj1 off of physobj2.

% event TakeOffOf(agent,physobj,physobj)
 %  event(takeOffOf(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:315
==> mpred_prop(takeOffOf(agent,physobj,physobj),event).
==> meta_argtypes(takeOffOf(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:316
%; A state constraint says that a physical object cannot
%; be on itself:
% [physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:319
% HoldsAt(On(physobj1,physobj2),time) ->
% physobj1!=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:320
axiom(Physobj1\=Physobj2,
    [holds_at(on(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:322
%; A state constraint says that if a physical object is
%; on another physical object, the second physical object
%; is not on the first physical object:
% [physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:326
% HoldsAt(On(physobj1,physobj2),time) ->
% !HoldsAt(On(physobj2,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:327
axiom(not(holds_at(on(Physobj2, Physobj1), Time)),
    [holds_at(on(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:329
%; An effect axiom states that if an agent places a physical
%; object on another physical object, the first
%; physical object will be on the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:333
% Initiates(PlaceOn(agent,physobj1,physobj2),
%           On(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:334
axiom(initiates(placeOn(Agent, Physobj1, Physobj2), on(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:336
%; An effect axiom states that if an agent places a physical
%; object on another physical object, the agent will
%; no longer be holding the first physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:340
% Terminates(PlaceOn(agent,physobj1,physobj2),
%            Holding(agent,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:341
axiom(terminates(placeOn(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:343
%; A precondition axiom states that
%; for an agent to place a physical object on another
%; physical object,
%; the agent must be holding the first physical object
%; and there must be a location such that
%; the agent is at the location and
%; the second physical object is at the location:
%;[agent,physobj1,physobj2,time]
%;Happens(PlaceOn(agent,physobj1,physobj2),time) ->
%;HoldsAt(Holding(agent,physobj1),time) &
%;{location}
%; HoldsAt(At(agent,location),time) &
%; HoldsAt(At(physobj2,location),time).
%; An effect axiom states that
%; if an agent takes a physical object off of another
%; physical object, the first physical object
%; will no longer be on the second physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:362
% Terminates(TakeOffOf(agent,physobj1,physobj2),
%            On(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:363
axiom(terminates(takeOffOf(Agent, Physobj1, Physobj2), on(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:365
%; An effect axiom states that if an agent takes a physical
%; object off of another physical object,
%; the agent will be holding the first physical object:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:369
% Initiates(TakeOffOf(agent,physobj1,physobj2),
%           Holding(agent,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:370
axiom(initiates(takeOffOf(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:372
%; A precondition axiom states that
%; for an agent to take a physical object off of another
%; physical object,
%; the first physical object must be on the second physical object
%; and there must be a location such that
%; the agent is at the location and
%; the first physical object is at the location:
%; the second physical object is at the location:
% [agent,physobj1,physobj2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:381
% Happens(TakeOffOf(agent,physobj1,physobj2),time) ->
% HoldsAt(On(physobj1,physobj2),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:383
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(physobj1,location),time) &
%  HoldsAt(At(physobj2,location),time).

 /*   exists([Location],
             if(happens(takeOffOf(Agent, Physobj1, Physobj2),
                        Time),
                 (holds_at(on(Physobj1, Physobj2), Time), holds_at(at(Agent, Location), Time), holds_at(at(Physobj1, Location), Time), holds_at(at(Physobj2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_153'(Fn_153_Param, On_Param, At_Param, Maptime))) :-
       happens(takeOffOf(Fn_153_Param, On_Param, At_Param),
               Maptime),
       (   not(holds_at(on(On_Param, At_Param), Maptime))
       ;   not(holds_at(at(Fn_153_Param, Location7), Maptime))
       ;   not(holds_at(at(On_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:386
axiom(not(some(Location7, '$kolem_Fn_153'(Fn_153_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(on(On_Param, At_Param), Maptime)),
      happens(takeOffOf(Fn_153_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_153'(Fn_153_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_153_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_153_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_153'(Fn_153_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(On_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_153_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_153'(Fn_153_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_153_Param, On_Param, At_Param),
              Maptime)
    ]).

 /*  not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)) :-
       (   not(holds_at(on(On_Param14, At_Param15), Maptime11))
       ;   not(holds_at(at(TakeOffOf_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(On_Param14, Location12), Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_153'(TakeOffOf_Param,
                            On_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(on(On_Param14, At_Param15), Maptime11)),
      some(Location12,
           '$kolem_Fn_153'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(TakeOffOf_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_153'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(On_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_153'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_153'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  holds_at(on(On_Param17, On_Ret), Time16) :-
       happens(takeOffOf(TakeOffOf_Param18, On_Param17, On_Ret),
               Time16),
       some(Some_Param,
            '$kolem_Fn_153'(TakeOffOf_Param18,
                            On_Param17,
                            On_Ret,
                            Time16)).
 */
axiom(holds_at(on(On_Param17, On_Ret), Time16),
   
    [ happens(takeOffOf(TakeOffOf_Param18, On_Param17, On_Ret),
              Time16),
      some(Some_Param,
           '$kolem_Fn_153'(TakeOffOf_Param18,
                           On_Param17,
                           On_Ret,
                           Time16))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(takeOffOf(At_Param23, A, TakeOffOf_Ret),
               Time22),
       some(Location21,
            '$kolem_Fn_153'(At_Param23,
                            A,
                            TakeOffOf_Ret,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(takeOffOf(At_Param23, A, TakeOffOf_Ret),
              Time22),
      some(Location21,
           '$kolem_Fn_153'(At_Param23,
                           A,
                           TakeOffOf_Ret,
                           Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(takeOffOf(TakeOffOf_Param28,
                         At_Param27,
                         TakeOffOf_Ret29),
               Time26),
       some(Location25,
            '$kolem_Fn_153'(TakeOffOf_Param28,
                            At_Param27,
                            TakeOffOf_Ret29,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(takeOffOf(TakeOffOf_Param28,
                        At_Param27,
                        TakeOffOf_Ret29),
              Time26),
      some(Location25,
           '$kolem_Fn_153'(TakeOffOf_Param28,
                           At_Param27,
                           TakeOffOf_Ret29,
                           Time26))
    ]).

 /*  holds_at(at(At_Param32, Location30), Time31) :-
       happens(takeOffOf(TakeOffOf_Param33, A, At_Param32),
               Time31),
       some(Location30,
            '$kolem_Fn_153'(TakeOffOf_Param33,
                            A,
                            At_Param32,
                            Time31)).
 */
axiom(holds_at(at(At_Param32, Location30), Time31),
   
    [ happens(takeOffOf(TakeOffOf_Param33, A, At_Param32),
              Time31),
      some(Location30,
           '$kolem_Fn_153'(TakeOffOf_Param33,
                           A,
                           At_Param32,
                           Time31))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:388
%; A releases axiom states that if an agent places a physical
%; object on another physical object,
%; the first physical object's location will be released
%; from inertia:
% [agent,physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:393
% Releases(PlaceOn(agent,physobj1,physobj2),
%          At(physobj1,location),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:395
axiom(releases(placeOn(Agent, Physobj1, Physobj2), at(Physobj1, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:397
%; A state constraint says that if a physical object is on
%; another physical object and the second physical object is
%; at a location, the first physical object is also at the location:
% [physobj1,physobj2,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:401
% HoldsAt(On(physobj1,physobj2),time) &
% HoldsAt(At(physobj2,location),time) ->
% HoldsAt(At(physobj1,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:403
axiom(holds_at(at(Physobj1, Location), Time),
   
    [ holds_at(on(Physobj1, Physobj2), Time),
      holds_at(at(Physobj2, Location), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:405
% fluent Near(agent,object)
 %  fluent(near(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:406
==> mpred_prop(near(agent,object),fluent).
==> meta_argtypes(near(agent,object)).

% event WalkFromTo(agent,object,object)
 %  event(walkFromTo(agent,object,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:407
==> mpred_prop(walkFromTo(agent,object,object),event).
==> meta_argtypes(walkFromTo(agent,object,object)).

% event WalkFrom(agent,object)
 %  event(walkFrom(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:408
==> mpred_prop(walkFrom(agent,object),event).
==> meta_argtypes(walkFrom(agent,object)).

% event RunFromTo(agent,object,object)
 %  event(runFromTo(agent,object,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:409
==> mpred_prop(runFromTo(agent,object,object),event).
==> meta_argtypes(runFromTo(agent,object,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:410
% [agent,object1,object2,time]
% Initiates(WalkFromTo(agent,object1,object2),
%           Near(agent,object2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:413
axiom(initiates(walkFromTo(Agent, Object1, Object2), near(Agent, Object2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:415
% [agent,object1,object2,time]
% Terminates(WalkFromTo(agent,object1,object2),
%            Near(agent,object1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:418
axiom(terminates(walkFromTo(Agent, Object1, Object2), near(Agent, Object1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:420
% [agent,object1,object2,time]
% Happens(WalkFromTo(agent,object1,object2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:422
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object1,location),time) &
% HoldsAt(At(object2,location),time).

 /*   exists([Location],
             if(happens(walkFromTo(Agent, Object1, Object2),
                        Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Object1, Location), Time), holds_at(at(Object2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_154'(Fn_154_Param, At_Param, At_Param10, Maptime))) :-
       happens(walkFromTo(Fn_154_Param, At_Param, At_Param10),
               Maptime),
       (   not(holds_at(at(Fn_154_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param10, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:425
axiom(not(some(Location7, '$kolem_Fn_154'(Fn_154_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(Fn_154_Param, Location7), Maptime)),
      happens(walkFromTo(Fn_154_Param, At_Param, At_Param10),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_154'(Fn_154_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(walkFromTo(Fn_154_Param, At_Param, At_Param10),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_154'(Fn_154_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(At_Param10, Location7), Maptime)),
      happens(walkFromTo(Fn_154_Param, At_Param, At_Param10),
              Maptime)
    ]).

 /*  not(happens(walkFromTo(WalkFromTo_Param, At_Param14, At_Param15), Maptime11)) :-
       (   not(holds_at(at(WalkFromTo_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_154'(WalkFromTo_Param,
                            At_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(walkFromTo(WalkFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(WalkFromTo_Param, Location12),
                   Maptime11)),
      some(Location12,
           '$kolem_Fn_154'(WalkFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(walkFromTo(WalkFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_154'(WalkFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(walkFromTo(WalkFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_154'(WalkFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(walkFromTo(At_Param18, A, WalkFromTo_Ret),
               Time17),
       some(Location16,
            '$kolem_Fn_154'(At_Param18,
                            A,
                            WalkFromTo_Ret,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(walkFromTo(At_Param18, A, WalkFromTo_Ret),
              Time17),
      some(Location16,
           '$kolem_Fn_154'(At_Param18,
                           A,
                           WalkFromTo_Ret,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(walkFromTo(WalkFromTo_Param23,
                          At_Param22,
                          WalkFromTo_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_154'(WalkFromTo_Param23,
                            At_Param22,
                            WalkFromTo_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(walkFromTo(WalkFromTo_Param23,
                         At_Param22,
                         WalkFromTo_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_154'(WalkFromTo_Param23,
                           At_Param22,
                           WalkFromTo_Ret24,
                           Time21))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(walkFromTo(WalkFromTo_Param28, A, At_Param27),
               Time26),
       some(Location25,
            '$kolem_Fn_154'(WalkFromTo_Param28,
                            A,
                            At_Param27,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(walkFromTo(WalkFromTo_Param28, A, At_Param27),
              Time26),
      some(Location25,
           '$kolem_Fn_154'(WalkFromTo_Param28,
                           A,
                           At_Param27,
                           Time26))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:427
% [agent,object1,object2,time]
% Initiates(RunFromTo(agent,object1,object2),
%           Near(agent,object2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:430
axiom(initiates(runFromTo(Agent, Object1, Object2), near(Agent, Object2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:432
% [agent,object1,object2,time]
% Terminates(RunFromTo(agent,object1,object2),
%            Near(agent,object1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:435
axiom(terminates(runFromTo(Agent, Object1, Object2), near(Agent, Object1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:437
% [agent,object1,object2,time]
% Happens(RunFromTo(agent,object1,object2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:439
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object1,location),time) &
% HoldsAt(At(object2,location),time).

 /*   exists([Location],
             if(happens(runFromTo(Agent, Object1, Object2),
                        Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Object1, Location), Time), holds_at(at(Object2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_155'(Fn_155_Param, At_Param, At_Param10, Maptime))) :-
       happens(runFromTo(Fn_155_Param, At_Param, At_Param10),
               Maptime),
       (   not(holds_at(at(Fn_155_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param10, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:442
axiom(not(some(Location7, '$kolem_Fn_155'(Fn_155_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(Fn_155_Param, Location7), Maptime)),
      happens(runFromTo(Fn_155_Param, At_Param, At_Param10),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_155'(Fn_155_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(runFromTo(Fn_155_Param, At_Param, At_Param10),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_155'(Fn_155_Param, At_Param, At_Param10, Maptime))),
   
    [ not(holds_at(at(At_Param10, Location7), Maptime)),
      happens(runFromTo(Fn_155_Param, At_Param, At_Param10),
              Maptime)
    ]).

 /*  not(happens(runFromTo(RunFromTo_Param, At_Param14, At_Param15), Maptime11)) :-
       (   not(holds_at(at(RunFromTo_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ;   not(holds_at(at(At_Param15, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_155'(RunFromTo_Param,
                            At_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(runFromTo(RunFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(RunFromTo_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_155'(RunFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(runFromTo(RunFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_155'(RunFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(runFromTo(RunFromTo_Param, At_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_155'(RunFromTo_Param,
                           At_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(runFromTo(At_Param18, A, RunFromTo_Ret),
               Time17),
       some(Location16,
            '$kolem_Fn_155'(At_Param18,
                            A,
                            RunFromTo_Ret,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(runFromTo(At_Param18, A, RunFromTo_Ret),
              Time17),
      some(Location16,
           '$kolem_Fn_155'(At_Param18,
                           A,
                           RunFromTo_Ret,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(runFromTo(RunFromTo_Param23,
                         At_Param22,
                         RunFromTo_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_155'(RunFromTo_Param23,
                            At_Param22,
                            RunFromTo_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(runFromTo(RunFromTo_Param23,
                        At_Param22,
                        RunFromTo_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_155'(RunFromTo_Param23,
                           At_Param22,
                           RunFromTo_Ret24,
                           Time21))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(runFromTo(RunFromTo_Param28, A, At_Param27),
               Time26),
       some(Location25,
            '$kolem_Fn_155'(RunFromTo_Param28,
                            A,
                            At_Param27,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(runFromTo(RunFromTo_Param28, A, At_Param27),
              Time26),
      some(Location25,
           '$kolem_Fn_155'(RunFromTo_Param28,
                           A,
                           At_Param27,
                           Time26))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:444
% [agent,object,time]
% Terminates(WalkFrom(agent,object),
%            Near(agent,object),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:447
axiom(terminates(walkFrom(Agent, Object), near(Agent, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:449
% [agent,object,location,door,time]
% HoldsAt(Near(agent,object),time) &
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object,location),time) &
% Side1(door)=location &
% Happens(WalkThroughDoor12(agent,door),time) ->
% Happens(WalkFrom(agent,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:455
axiom(happens(walkFrom(Agent, Object), Time),
   
    [ holds_at(near(Agent, Object), Time),
      holds_at(at(Agent, Location), Time),
      holds_at(at(Object, Location), Time),
      equals(side1(Door), Location),
      happens(walkThroughDoor12(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:457
% [agent,object,location,door,time]
% HoldsAt(Near(agent,object),time) &
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object,location),time) &
% Side2(door)=location &
% Happens(WalkThroughDoor21(agent,door),time) ->
% Happens(WalkFrom(agent,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:463
axiom(happens(walkFrom(Agent, Object), Time),
   
    [ holds_at(near(Agent, Object), Time),
      holds_at(at(Agent, Location), Time),
      holds_at(at(Object, Location), Time),
      equals(side2(Door), Location),
      happens(walkThroughDoor21(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:465
% [agent,object,room,staircase,time]
% HoldsAt(Near(agent,object),time) &
% HoldsAt(At(agent,room),time) &
% HoldsAt(At(object,room),time) &
% Side1(staircase)=room &
% Happens(WalkUpStaircase(agent,staircase),time) ->
% Happens(WalkFrom(agent,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:471
axiom(happens(walkFrom(Agent, Object), Time),
   
    [ holds_at(near(Agent, Object), Time),
      holds_at(at(Agent, Room), Time),
      holds_at(at(Object, Room), Time),
      equals(side1(Staircase), Room),
      happens(walkUpStaircase(Agent, Staircase), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:473
% [agent,object,room,staircase,time]
% HoldsAt(Near(agent,object),time) &
% HoldsAt(At(agent,room),time) &
% HoldsAt(At(object,room),time) &
% Side2(staircase)=room &
% Happens(WalkDownStaircase(agent,staircase),time) ->
% Happens(WalkFrom(agent,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:479
axiom(happens(walkFrom(Agent, Object), Time),
   
    [ holds_at(near(Agent, Object), Time),
      holds_at(at(Agent, Room), Time),
      holds_at(at(Object, Room), Time),
      equals(side2(Staircase), Room),
      happens(walkDownStaircase(Agent, Staircase), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/OTSpace.e:481
%; End of file.
