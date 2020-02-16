:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Fire.e').
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
%; fire
%;
%; agent sets fire to physobj with burn time offset.

% event SetFireTo(agent,physobj,fire,offset)
 %  event(setFireTo(agent,physobj,fire,offset)).
==> mpred_prop(setFireTo(agent,physobj,fire,offset),event).
==> meta_argtypes(setFireTo(agent,physobj,fire,offset)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:16
%; An effect axioms states that
%; if an agent sets a fire to a physical object with a burn time,
%; the physical object will be burning with the fire and burn time:
% [agent,physobj,fire,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:20
% Initiates(SetFireTo(agent,physobj,fire,offset),
%           Burning(physobj,fire,offset),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:22
axiom(initiates(setFireTo(Agent, Physobj, Fire, Offset), burning(Physobj, Fire, Offset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:24
%; agent puts out fire on physobj.

% event PutOutFire(agent,physobj,fire)
 %  event(putOutFire(agent,physobj,fire)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:26
==> mpred_prop(putOutFire(agent,physobj,fire),event).
==> meta_argtypes(putOutFire(agent,physobj,fire)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:27
%; An effect axiom states that
%; if an agent puts out a fire on a physical object,
%; the physical object will no longer be burning:
% [agent,physobj,fire,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:31
% Terminates(PutOutFire(agent,physobj,fire),
%            Burning(physobj,fire,offset),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:33
axiom(terminates(putOutFire(Agent, Physobj, Fire), burning(Physobj, Fire, Offset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:35
%; A precondition axiom states that
%; for an agent to set fire to a physical object,
%; there must be a location such that
%; the agent is at the location and
%; the physical object is at the location:
% [agent,fire,physobj,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:41
% Happens(SetFireTo(agent,physobj,fire,offset),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:42
% {location}%  HoldsAt(At(agent,location),time) &
%            HoldsAt(At(physobj,location),time).

 /*   exists([Location],
             if(happens(setFireTo(Agent,
                                  Physobj,
                                  Fire,
                                  Offset),
                        Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Physobj, Location), Time)))).
 */

 /*  not(some(Location8, '$kolem_Fn_141'(Fn_141_Param, At_Param, A, SetFireTo_Ret, Maptime))) :-
       happens(setFireTo(Fn_141_Param,
                         At_Param,
                         A,
                         SetFireTo_Ret),
               Maptime),
       (   not(holds_at(at(Fn_141_Param, Location8), Maptime))
       ;   not(holds_at(at(At_Param, Location8), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:43
axiom(not(some(Location8, '$kolem_Fn_141'(Fn_141_Param, At_Param, A, SetFireTo_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_141_Param, Location8), Maptime)),
      happens(setFireTo(Fn_141_Param,
                        At_Param,
                        A,
                        SetFireTo_Ret),
              Maptime)
    ]).
axiom(not(some(Location8, '$kolem_Fn_141'(Fn_141_Param, At_Param, A, SetFireTo_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location8), Maptime)),
      happens(setFireTo(Fn_141_Param,
                        At_Param,
                        A,
                        SetFireTo_Ret),
              Maptime)
    ]).

 /*  not(happens(setFireTo(SetFireTo_Param, At_Param15, A, SetFireTo_Ret16), Maptime12)) :-
       (   not(holds_at(at(SetFireTo_Param, Location13),
                        Maptime12))
       ;   not(holds_at(at(At_Param15, Location13), Maptime12))
       ),
       some(Location13,
            '$kolem_Fn_141'(SetFireTo_Param,
                            At_Param15,
                            A,
                            SetFireTo_Ret16,
                            Maptime12)).
 */
axiom(not(happens(setFireTo(SetFireTo_Param, At_Param15, A, SetFireTo_Ret16), Maptime12)),
   
    [ not(holds_at(at(SetFireTo_Param, Location13), Maptime12)),
      some(Location13,
           '$kolem_Fn_141'(SetFireTo_Param,
                           At_Param15,
                           A,
                           SetFireTo_Ret16,
                           Maptime12))
    ]).
axiom(not(happens(setFireTo(SetFireTo_Param, At_Param15, A, SetFireTo_Ret16), Maptime12)),
   
    [ not(holds_at(at(At_Param15, Location13), Maptime12)),
      some(Location13,
           '$kolem_Fn_141'(SetFireTo_Param,
                           At_Param15,
                           A,
                           SetFireTo_Ret16,
                           Maptime12))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(setFireTo(At_Param19, A, B, SetFireTo_Ret20),
               Time18),
       some(Location17,
            '$kolem_Fn_141'(At_Param19,
                            A,
                            B,
                            SetFireTo_Ret20,
                            Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(setFireTo(At_Param19,
                        A,
                        B,
                        SetFireTo_Ret20),
              Time18),
      some(Location17,
           '$kolem_Fn_141'(At_Param19,
                           A,
                           B,
                           SetFireTo_Ret20,
                           Time18))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(setFireTo(SetFireTo_Param24,
                         At_Param23,
                         A,
                         SetFireTo_Ret25),
               Time22),
       some(Location21,
            '$kolem_Fn_141'(SetFireTo_Param24,
                            At_Param23,
                            A,
                            SetFireTo_Ret25,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(setFireTo(SetFireTo_Param24,
                        At_Param23,
                        A,
                        SetFireTo_Ret25),
              Time22),
      some(Location21,
           '$kolem_Fn_141'(SetFireTo_Param24,
                           At_Param23,
                           A,
                           SetFireTo_Ret25,
                           Time22))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:45
%; A precondition axiom states that
%; for an agent to put out a fire on a physical object,
%; there must be a location such that
%; the agent is at the location and
%; the physical object is at the location:
% [agent,fire,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:51
% Happens(PutOutFire(agent,physobj,fire),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:52
% {location}%  HoldsAt(At(agent,location),time) &
%            HoldsAt(At(physobj,location),time).

 /*   exists([Location],
             if(happens(putOutFire(Agent, Physobj, Fire),
                        Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Physobj, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_142'(Fn_142_Param, At_Param, PutOutFire_Ret, Maptime))) :-
       happens(putOutFire(Fn_142_Param, At_Param, PutOutFire_Ret),
               Maptime),
       (   not(holds_at(at(Fn_142_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:53
axiom(not(some(Location7, '$kolem_Fn_142'(Fn_142_Param, At_Param, PutOutFire_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_142_Param, Location7), Maptime)),
      happens(putOutFire(Fn_142_Param,
                         At_Param,
                         PutOutFire_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_142'(Fn_142_Param, At_Param, PutOutFire_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(putOutFire(Fn_142_Param,
                         At_Param,
                         PutOutFire_Ret),
              Maptime)
    ]).

 /*  not(happens(putOutFire(PutOutFire_Param, At_Param14, PutOutFire_Ret15), Maptime11)) :-
       (   not(holds_at(at(PutOutFire_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_142'(PutOutFire_Param,
                            At_Param14,
                            PutOutFire_Ret15,
                            Maptime11)).
 */
axiom(not(happens(putOutFire(PutOutFire_Param, At_Param14, PutOutFire_Ret15), Maptime11)),
   
    [ not(holds_at(at(PutOutFire_Param, Location12),
                   Maptime11)),
      some(Location12,
           '$kolem_Fn_142'(PutOutFire_Param,
                           At_Param14,
                           PutOutFire_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(putOutFire(PutOutFire_Param, At_Param14, PutOutFire_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_142'(PutOutFire_Param,
                           At_Param14,
                           PutOutFire_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(putOutFire(At_Param18, A, PutOutFire_Ret19),
               Time17),
       some(Location16,
            '$kolem_Fn_142'(At_Param18,
                            A,
                            PutOutFire_Ret19,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(putOutFire(At_Param18, A, PutOutFire_Ret19),
              Time17),
      some(Location16,
           '$kolem_Fn_142'(At_Param18,
                           A,
                           PutOutFire_Ret19,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(putOutFire(PutOutFire_Param23,
                          At_Param22,
                          PutOutFire_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_142'(PutOutFire_Param23,
                            At_Param22,
                            PutOutFire_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(putOutFire(PutOutFire_Param23,
                         At_Param22,
                         PutOutFire_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_142'(PutOutFire_Param23,
                           At_Param22,
                           PutOutFire_Ret24,
                           Time21))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:55
%; physobj is burning with fire and burn time offset.

% fluent Burning(physobj,fire,offset)
 %  fluent(burning(physobj,fire,offset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:57
==> mpred_prop(burning(physobj,fire,offset),fluent).
==> meta_argtypes(burning(physobj,fire,offset)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:58
%; A state constraint says that a physical object burning with
%; a fire has at most one burn time at a time:
% [physobj,fire,offset1,offset2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:61
% HoldsAt(Burning(physobj,fire,offset1),time) &
% HoldsAt(Burning(physobj,fire,offset2),time) ->
% offset1=offset2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:63
axiom(Offset1=Offset2,
   
    [ holds_at(burning(Physobj, Fire, Offset1), Time),
      holds_at(burning(Physobj, Fire, Offset2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:65
%; The burn time of physobj is decremented.

% event DecrementBurning(physobj)
 %  event(decrementBurning(physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:67
==> mpred_prop(decrementBurning(physobj),event).
==> meta_argtypes(decrementBurning(physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:68
%; A trigger axiom states that
%; if a physical object is burning with a fire and a burn time and
%; the burn time is greater than zero,
%; the burn time of the physical object is decremented:
% [physobj,fire,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:73
% HoldsAt(Burning(physobj,fire,offset),time) &
% (offset > 0) ->
% Happens(DecrementBurning(physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:75
axiom(happens(decrementBurning(Physobj), Time),
   
    [ holds_at(burning(Physobj, Fire, Offset), Time),
      comparison(Offset, 0, >)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:77
%; An effect axiom states that if a physical object is
%; burning with a fire and a burn time, and the burn time of a physical
%; object is decremented, the burn time of the physical
%; object will be the burn time minus one:
% [physobj,fire,offset1,offset2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:82
% HoldsAt(Burning(physobj,fire,offset1),time) &
% offset2 = offset1-1 ->
% Initiates(DecrementBurning(physobj),
%           Burning(physobj,fire,offset2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:86
axiom(initiates(decrementBurning(Physobj), burning(Physobj, Fire, Offset2), Time),
   
    [ holds_at(burning(Physobj, Fire, Offset1), Time),
      equals(Offset2, Offset1-1)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:88
%; An effect axiom states that if a physical object is
%; burning with a fire and a burn time, and the burn time of a physical
%; object is decremented, the burn time of the physical
%; object will no longer be the burn time:
% [physobj,fire,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:93
% HoldsAt(Burning(physobj,fire,offset),time) ->
% Terminates(DecrementBurning(physobj),
%            Burning(physobj,fire,offset),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:96
axiom(terminates(decrementBurning(Physobj), burning(Physobj, Fire, Offset), Time),
    [holds_at(burning(Physobj, Fire, Offset), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:98
%; A trigger axiom states that
%; if a physical object is burning with a fire and a burn time
%; that is not equal to zero, the fire will damage the
%; physical object:
% [physobj,fire,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:103
% offset!=% 0 &
% HoldsAt(Burning(physobj,fire,offset),time) &
% HoldsAt(Intact(physobj),time) ->
% Happens(Damage(fire,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:106
axiom(happens(damage(Fire, Physobj), Time),
   
    [ dif(Offset, 0),
      holds_at(burning(Physobj, Fire, Offset), Time),
      holds_at(intact(Physobj), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:108
%; A trigger axiom states that
%; if a physical object is burning with a fire and a burn time
%; that is equal to zero, the fire will destroy the
%; physical object:
% [physobj,fire,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:113
% HoldsAt(Burning(physobj,fire,0),time) &
% !HoldsAt(Destroyed(physobj),time) ->
% Happens(Destroy(fire,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:115
axiom(happens(destroy(Fire, Physobj), Time),
   
    [ holds_at(burning(Physobj, Fire, 0), Time),
      not(holds_at(destroyed(Physobj), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:117
%; An effect axiom states that if a fire destroys a physical
%; object, the physical object will no longer be burning:
% [physobj,fire,offset,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:120
% Terminates(Destroy(fire,physobj),
%            Burning(physobj,fire,offset),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:122
axiom(terminates(destroy(Fire, Physobj), burning(Physobj, Fire, Offset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Fire.e:124
%; End of file.
