:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/RepRest.e').
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
%; @article{Mueller:InPress,
%;   author = "Erik T. Mueller",
%;   year = "in press",
%;   title = "Modelling space and time in narratives about restaurants",
%;   journal = "Literary and Linguistic Computing",
%; }
%;
%;sort boolean
%;sort integer
%;reified sort predicate
%;reified sort function
%;
%;sort time: integer
%;sort offset: integer
%;
%;reified sort fluent
%;reified sort event
%;
%;predicate Happens(event,time)
%;predicate HoldsAt(fluent,time)
%;predicate ReleasedAt(fluent,time)
%;predicate Initiates(event,fluent,time)
%;predicate Terminates(event,fluent,time)
%;predicate Releases(event,fluent,time)
%;
%;sort diameter: integer
%;
%;sort object
%;
%;sort agent: object
%;
%;sort physobj: object
%;sort bed: physobj
%;sort snowflake: physobj
%;sort sky: physobj
%;
%;sort stuff: physobj
%;
%;sort surface: physobj
%;sort ground: surface
%;
%;sort snow: stuff
%;sort ball
%;
%;sort food: physobj
%;sort fruit: food
%;sort orange: fruit
%;sort salad: food
%;
%;sort clothing: physobj
%;sort scarf: clothing
%;sort hat: clothing
%;
%;sort vegetablematter: physobj
%;sort coal: vegetablematter
%;
%;sort bodypart: physobj
%;sort hand: bodypart
%;
%;sort papertowels: physobj
%;sort device: physobj
%;sort electronicdevice: device
%;sort lamp: electronicdevice
%;
%;sort cat: physobj
%;
%;sort weapon: physobj
%;sort gun: weapon
%;sort bomb: weapon
%;sort bullet: weapon
%;
%;sort location
%;sort room: location, outside: location
%;
%;sort portal
%;sort door: portal, staircase: portal
%;sort street: portal
%;
%;sort building
%;
%;sort fire: object
%;
%;sort furniture: physobj
%;sort chair: furniture
%;sort table: furniture
%;
%;sort menu: physobj
%;sort bill: physobj
%;
%;sort script
%;

% fluent Holding(agent,physobj)
 %  fluent(holding(agent,physobj)).
==> mpred_prop(holding(agent,physobj),fluent).
==> meta_argtypes(holding(agent,physobj)).

% event PickUp(agent,physobj)
 %  event(pickUp(agent,physobj)).
==> mpred_prop(pickUp(agent,physobj),event).
==> meta_argtypes(pickUp(agent,physobj)).

% event LetGoOf(agent,physobj)
 %  event(letGoOf(agent,physobj)).
==> mpred_prop(letGoOf(agent,physobj),event).
==> meta_argtypes(letGoOf(agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:106
% [agent,physobj,time]
% Initiates(PickUp(agent,physobj),Holding(agent,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:107
axiom(initiates(pickUp(Agent, Physobj), holding(Agent, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:109
% [agent,physobj,time]
% Happens(PickUp(agent,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:111
% {location}% 
%   HoldsAt(At(agent,location),time) &
%   HoldsAt(At(physobj,location),time).

 /*   exists([Location],
             if(happens(pickUp(Agent, Physobj), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Physobj, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_161'(Fn_161_Param, At_Param, Maptime))) :-
       happens(pickUp(Fn_161_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_161_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:113
axiom(not(some(Location6, '$kolem_Fn_161'(Fn_161_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_161_Param, Location6), Maptime)),
      happens(pickUp(Fn_161_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_161'(Fn_161_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(pickUp(Fn_161_Param, At_Param), Maptime)
    ]).

 /*  not(happens(pickUp(PickUp_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(PickUp_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_161'(PickUp_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(pickUp(PickUp_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(PickUp_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_161'(PickUp_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(pickUp(PickUp_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_161'(PickUp_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(pickUp(At_Param15, PickUp_Ret), Time14),
       some(Location13,
            '$kolem_Fn_161'(At_Param15, PickUp_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(pickUp(At_Param15, PickUp_Ret), Time14),
      some(Location13,
           '$kolem_Fn_161'(At_Param15, PickUp_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(pickUp(PickUp_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_161'(PickUp_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(pickUp(PickUp_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_161'(PickUp_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:115
% [agent,physobj,time]
% Terminates(LetGoOf(agent,physobj),Holding(agent,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:116
axiom(terminates(letGoOf(Agent, Physobj), holding(Agent, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:118
% [agent,physobj,time]
% Happens(LetGoOf(agent,physobj),time) ->
% HoldsAt(Holding(agent,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:120
axiom(requires(letGoOf(Agent, Physobj), Time),
    [holds_at(holding(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:122
% [agent,physobj,location,time]
% Releases(PickUp(agent,physobj),At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:123
axiom(releases(pickUp(Agent, Physobj), at(Physobj, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:125
% [agent,physobj,location,time]
% HoldsAt(Holding(agent,physobj),time) &
% HoldsAt(At(agent,location),time) ->
% HoldsAt(At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:128
axiom(holds_at(at(Physobj, Location), Time),
   
    [ holds_at(holding(Agent, Physobj), Time),
      holds_at(at(Agent, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:130
%;[agent,physobj,location1,location2,time]
%;HoldsAt(At(agent,location1),time) &
%;location1!=location2 ->
%;Terminates(LetGoOf(agent,physobj),At(physobj,location2),time).
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:136
% HoldsAt(At(agent,location),time) ->
% Initiates(LetGoOf(agent,physobj),At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:137
axiom(initiates(letGoOf(Agent, Physobj), at(Physobj, Location), Time),
    [holds_at(at(Agent, Location), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:139
% fluent On(physobj,physobj)
 %  fluent(on(physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:140
==> mpred_prop(on(physobj,physobj),fluent).
==> meta_argtypes(on(physobj,physobj)).

% event PlaceOn(agent,physobj,physobj)
 %  event(placeOn(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:142
==> mpred_prop(placeOn(agent,physobj,physobj),event).
==> meta_argtypes(placeOn(agent,physobj,physobj)).

% event TakeOffOf(agent,physobj,physobj)
 %  event(takeOffOf(agent,physobj,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:144
==> mpred_prop(takeOffOf(agent,physobj,physobj),event).
==> meta_argtypes(takeOffOf(agent,physobj,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:145
% [physobj1,physobj2,time]
% HoldsAt(On(physobj1,physobj2),time) ->
% physobj1!=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:147
axiom(Physobj1\=Physobj2,
    [holds_at(on(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:149
% [physobj1,physobj2,time]
% HoldsAt(On(physobj1,physobj2),time) ->
% !HoldsAt(On(physobj2,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:151
axiom(not(holds_at(on(Physobj2, Physobj1), Time)),
    [holds_at(on(Physobj1, Physobj2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:153
% [agent,physobj1,physobj2,time]
% Initiates(PlaceOn(agent,physobj1,physobj2),
%           On(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:155
axiom(initiates(placeOn(Agent, Physobj1, Physobj2), on(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:157
% [agent,physobj1,physobj2,time]
% Terminates(PlaceOn(agent,physobj1,physobj2),
%            Holding(agent,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:159
axiom(terminates(placeOn(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:161
% [agent,physobj1,physobj2,time]
% Happens(PlaceOn(agent,physobj1,physobj2),time) ->
% HoldsAt(Holding(agent,physobj1),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:164
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(physobj2,location),time).

 /*   exists([Location],
             if(happens(placeOn(Agent, Physobj1, Physobj2),
                        Time),
                 (holds_at(holding(Agent, Physobj1), Time), holds_at(at(Agent, Location), Time), holds_at(at(Physobj2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_162'(Fn_162_Param, Holding_Ret, At_Param, Maptime))) :-
       happens(placeOn(Fn_162_Param, Holding_Ret, At_Param),
               Maptime),
       (   not(holds_at(holding(Fn_162_Param, Holding_Ret),
                        Maptime))
       ;   not(holds_at(at(Fn_162_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:166
axiom(not(some(Location7, '$kolem_Fn_162'(Fn_162_Param, Holding_Ret, At_Param, Maptime))),
   
    [ not(holds_at(holding(Fn_162_Param, Holding_Ret),
                   Maptime)),
      happens(placeOn(Fn_162_Param, Holding_Ret, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_162'(Fn_162_Param, Holding_Ret, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_162_Param, Location7), Maptime)),
      happens(placeOn(Fn_162_Param, Holding_Ret, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_162'(Fn_162_Param, Holding_Ret, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(placeOn(Fn_162_Param, Holding_Ret, At_Param),
              Maptime)
    ]).

 /*  not(happens(placeOn(PlaceOn_Param, Holding_Ret15, At_Param14), Maptime11)) :-
       (   not(holds_at(holding(PlaceOn_Param, Holding_Ret15),
                        Maptime11))
       ;   not(holds_at(at(PlaceOn_Param, Location12), Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_162'(PlaceOn_Param,
                            Holding_Ret15,
                            At_Param14,
                            Maptime11)).
 */
axiom(not(happens(placeOn(PlaceOn_Param, Holding_Ret15, At_Param14), Maptime11)),
   
    [ not(holds_at(holding(PlaceOn_Param, Holding_Ret15),
                   Maptime11)),
      some(Location12,
           '$kolem_Fn_162'(PlaceOn_Param,
                           Holding_Ret15,
                           At_Param14,
                           Maptime11))
    ]).
axiom(not(happens(placeOn(PlaceOn_Param, Holding_Ret15, At_Param14), Maptime11)),
   
    [ not(holds_at(at(PlaceOn_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_162'(PlaceOn_Param,
                           Holding_Ret15,
                           At_Param14,
                           Maptime11))
    ]).
axiom(not(happens(placeOn(PlaceOn_Param, Holding_Ret15, At_Param14), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_162'(PlaceOn_Param,
                           Holding_Ret15,
                           At_Param14,
                           Maptime11))
    ]).

 /*  holds_at(holding(Holding_Param, Holding_Ret19), Time16) :-
       happens(placeOn(Holding_Param, Holding_Ret19, PlaceOn_Ret),
               Time16),
       some(Some_Param,
            '$kolem_Fn_162'(Holding_Param,
                            Holding_Ret19,
                            PlaceOn_Ret,
                            Time16)).
 */
axiom(holds_at(holding(Holding_Param, Holding_Ret19), Time16),
   
    [ happens(placeOn(Holding_Param,
                      Holding_Ret19,
                      PlaceOn_Ret),
              Time16),
      some(Some_Param,
           '$kolem_Fn_162'(Holding_Param,
                           Holding_Ret19,
                           PlaceOn_Ret,
                           Time16))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(placeOn(At_Param23, A, PlaceOn_Ret24),
               Time22),
       some(Location21,
            '$kolem_Fn_162'(At_Param23,
                            A,
                            PlaceOn_Ret24,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(placeOn(At_Param23, A, PlaceOn_Ret24),
              Time22),
      some(Location21,
           '$kolem_Fn_162'(At_Param23,
                           A,
                           PlaceOn_Ret24,
                           Time22))
    ]).

 /*  holds_at(at(At_Param27, Location25), Time26) :-
       happens(placeOn(PlaceOn_Param28, A, At_Param27),
               Time26),
       some(Location25,
            '$kolem_Fn_162'(PlaceOn_Param28,
                            A,
                            At_Param27,
                            Time26)).
 */
axiom(holds_at(at(At_Param27, Location25), Time26),
   
    [ happens(placeOn(PlaceOn_Param28, A, At_Param27),
              Time26),
      some(Location25,
           '$kolem_Fn_162'(PlaceOn_Param28,
                           A,
                           At_Param27,
                           Time26))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:168
% [agent,physobj1,physobj2,time]
% Terminates(TakeOffOf(agent,physobj1,physobj2),
%            On(physobj1,physobj2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:170
axiom(terminates(takeOffOf(Agent, Physobj1, Physobj2), on(Physobj1, Physobj2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:172
% [agent,physobj1,physobj2,time]
% Initiates(TakeOffOf(agent,physobj1,physobj2),
%           Holding(agent,physobj1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:174
axiom(initiates(takeOffOf(Agent, Physobj1, Physobj2), holding(Agent, Physobj1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:176
% [agent,physobj1,physobj2,location,time]
% Releases(TakeOffOf(agent,physobj1,physobj2),
%          At(physobj1,location),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:179
axiom(releases(takeOffOf(Agent, Physobj1, Physobj2), at(Physobj1, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:181
% [agent,physobj1,physobj2,time]
% Happens(TakeOffOf(agent,physobj1,physobj2),time) ->
% HoldsAt(On(physobj1,physobj2),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:184
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(physobj1,location),time) &
%  HoldsAt(At(physobj2,location),time).

 /*   exists([Location],
             if(happens(takeOffOf(Agent, Physobj1, Physobj2),
                        Time),
                 (holds_at(on(Physobj1, Physobj2), Time), holds_at(at(Agent, Location), Time), holds_at(at(Physobj1, Location), Time), holds_at(at(Physobj2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_163'(Fn_163_Param, On_Param, At_Param, Maptime))) :-
       happens(takeOffOf(Fn_163_Param, On_Param, At_Param),
               Maptime),
       (   not(holds_at(on(On_Param, At_Param), Maptime))
       ;   not(holds_at(at(Fn_163_Param, Location7), Maptime))
       ;   not(holds_at(at(On_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:187
axiom(not(some(Location7, '$kolem_Fn_163'(Fn_163_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(on(On_Param, At_Param), Maptime)),
      happens(takeOffOf(Fn_163_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_163'(Fn_163_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_163_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_163_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_163'(Fn_163_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(On_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_163_Param, On_Param, At_Param),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_163'(Fn_163_Param, On_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(takeOffOf(Fn_163_Param, On_Param, At_Param),
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
            '$kolem_Fn_163'(TakeOffOf_Param,
                            On_Param14,
                            At_Param15,
                            Maptime11)).
 */
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(on(On_Param14, At_Param15), Maptime11)),
      some(Location12,
           '$kolem_Fn_163'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(TakeOffOf_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_163'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(On_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_163'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).
axiom(not(happens(takeOffOf(TakeOffOf_Param, On_Param14, At_Param15), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_163'(TakeOffOf_Param,
                           On_Param14,
                           At_Param15,
                           Maptime11))
    ]).

 /*  holds_at(on(On_Param17, On_Ret), Time16) :-
       happens(takeOffOf(TakeOffOf_Param18, On_Param17, On_Ret),
               Time16),
       some(Some_Param,
            '$kolem_Fn_163'(TakeOffOf_Param18,
                            On_Param17,
                            On_Ret,
                            Time16)).
 */
axiom(holds_at(on(On_Param17, On_Ret), Time16),
   
    [ happens(takeOffOf(TakeOffOf_Param18, On_Param17, On_Ret),
              Time16),
      some(Some_Param,
           '$kolem_Fn_163'(TakeOffOf_Param18,
                           On_Param17,
                           On_Ret,
                           Time16))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(takeOffOf(At_Param23, A, TakeOffOf_Ret),
               Time22),
       some(Location21,
            '$kolem_Fn_163'(At_Param23,
                            A,
                            TakeOffOf_Ret,
                            Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(takeOffOf(At_Param23, A, TakeOffOf_Ret),
              Time22),
      some(Location21,
           '$kolem_Fn_163'(At_Param23,
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
            '$kolem_Fn_163'(TakeOffOf_Param28,
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
           '$kolem_Fn_163'(TakeOffOf_Param28,
                           At_Param27,
                           TakeOffOf_Ret29,
                           Time26))
    ]).

 /*  holds_at(at(At_Param32, Location30), Time31) :-
       happens(takeOffOf(TakeOffOf_Param33, A, At_Param32),
               Time31),
       some(Location30,
            '$kolem_Fn_163'(TakeOffOf_Param33,
                            A,
                            At_Param32,
                            Time31)).
 */
axiom(holds_at(at(At_Param32, Location30), Time31),
   
    [ happens(takeOffOf(TakeOffOf_Param33, A, At_Param32),
              Time31),
      some(Location30,
           '$kolem_Fn_163'(TakeOffOf_Param33,
                           A,
                           At_Param32,
                           Time31))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:189
% [agent,physobj1,physobj2,location,time]
% Releases(PlaceOn(agent,physobj1,physobj2),
%          At(physobj1,location),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:192
axiom(releases(placeOn(Agent, Physobj1, Physobj2), at(Physobj1, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:194
% [physobj1,physobj2,location,time]
% HoldsAt(On(physobj1,physobj2),time) &
% HoldsAt(At(physobj2,location),time) ->
% HoldsAt(At(physobj1,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:197
axiom(holds_at(at(Physobj1, Location), Time),
   
    [ holds_at(on(Physobj1, Physobj2), Time),
      holds_at(at(Physobj2, Location), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:199
% fluent At(object,location)
 %  fluent(at(object,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:200
==> mpred_prop(at(object,location),fluent).
==> meta_argtypes(at(object,location)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:201
% [object,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:202
% {location} % HoldsAt(At(object,location),time).

 /*  exists([Location],
          holds_at(at(Object,Location),Time)).
 */

 /*  holds_at(at(At_Param, Location4), Time5) :-
       some(Location4, '$kolem_Fn_164'(At_Param, Time5)).
 */
axiom(holds_at(at(At_Param, Location4), Time5),
    [some(Location4, '$kolem_Fn_164'(At_Param, Time5))]).

 /*  not(some(Location7, '$kolem_Fn_164'(Fn_164_Param, Time8))) :-
       not(holds_at(at(Fn_164_Param, Location7), Time8)).
 */
axiom(not(some(Location7, '$kolem_Fn_164'(Fn_164_Param, Time8))),
    [not(holds_at(at(Fn_164_Param, Location7), Time8))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:204
% [object,location1,location2,time]
% HoldsAt(At(object,location1),time) &
% HoldsAt(At(object,location2),time) ->
% location1=location2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:207
axiom(Location1=Location2,
   
    [ holds_at(at(Object, Location1), Time),
      holds_at(at(Object, Location2), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:209
% function Side1(portal): location
 %  functional_predicate(side1(portal,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:210
==> mpred_prop(side1(portal,location),functional_predicate).
==> meta_argtypes(side1(portal,location)).
resultIsa(side1,location).

% function Side2(portal): location
 %  functional_predicate(side2(portal,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:211
==> mpred_prop(side2(portal,location),functional_predicate).
==> meta_argtypes(side2(portal,location)).
resultIsa(side2,location).

% fluent NearPortal(object,portal)
 %  fluent(nearPortal(object,portal)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:213
==> mpred_prop(nearPortal(object,portal),fluent).
==> meta_argtypes(nearPortal(object,portal)).

% noninertial NearPortal
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:214
==> noninertial(nearPortal).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:215
% [object,portal,time]
% HoldsAt(NearPortal(object,portal),time) <->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:217
% {location}% 
%  (Side1(portal)=location|
%   Side2(portal)=location) &
%  HoldsAt(At(object,location),time).

 /*   exists([Location],
             equiv(holds_at(nearPortal(Object, Portal), Time),
                    ((side1(Portal)=Location;side2(Portal)=Location), holds_at(at(Object, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_165'(Fn_165_Param, NearPortal_Ret, Time5))) :-
       (   holds_at(nearPortal(Fn_165_Param, NearPortal_Ret),
                    Time5),
           (   not(equals(side1(NearPortal_Ret), Location6)),
               not(equals(side2(NearPortal_Ret), Location6))
           ;   not(holds_at(at(Fn_165_Param, Location6), Time5))
           )
       ;   not(holds_at(nearPortal(Fn_165_Param, NearPortal_Ret),
                        Time5)),
           holds_at(at(Fn_165_Param, Location6), Time5),
           (   equals(side1(NearPortal_Ret), Location6)
           ;   equals(side2(NearPortal_Ret), Location6)
           )
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:220
axiom(not(some(Location6, '$kolem_Fn_165'(Fn_165_Param, NearPortal_Ret, Time5))),
   
    [ not(equals(side1(NearPortal_Ret), Location6)),
      not(equals(side2(NearPortal_Ret), Location6)),
      holds_at(nearPortal(Fn_165_Param, NearPortal_Ret),
               Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_165'(Fn_165_Param, NearPortal_Ret, Time5))),
   
    [ not(holds_at(at(Fn_165_Param, Location6), Time5)),
      holds_at(nearPortal(Fn_165_Param, NearPortal_Ret),
               Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_165'(Fn_165_Param, NearPortal_Ret, Time5))),
   
    [ equals(side1(NearPortal_Ret), Location6),
      not(holds_at(nearPortal(Fn_165_Param, NearPortal_Ret),
                   Time5)),
      holds_at(at(Fn_165_Param, Location6), Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_165'(Fn_165_Param, NearPortal_Ret, Time5))),
   
    [ equals(side2(NearPortal_Ret), Location6),
      not(holds_at(nearPortal(Fn_165_Param, NearPortal_Ret),
                   Time5)),
      holds_at(at(Fn_165_Param, Location6), Time5)
    ]).

 /*  not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)) :-
       (   not(equals(side1(NearPortal_Ret12), Location10)),
           not(equals(side2(NearPortal_Ret12), Location10))
       ;   not(holds_at(at(NearPortal_Param, Location10), Time9))
       ),
       some(Location10,
            '$kolem_Fn_165'(NearPortal_Param,
                            NearPortal_Ret12,
                            Time9)).
 */
axiom(not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)),
   
    [ not(equals(side1(NearPortal_Ret12), Location10)),
      not(equals(side2(NearPortal_Ret12), Location10)),
      some(Location10,
           '$kolem_Fn_165'(NearPortal_Param,
                           NearPortal_Ret12,
                           Time9))
    ]).
axiom(not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)),
   
    [ not(holds_at(at(NearPortal_Param, Location10), Time9)),
      some(Location10,
           '$kolem_Fn_165'(NearPortal_Param,
                           NearPortal_Ret12,
                           Time9))
    ]).

 /*  equals(side1(Side1_Ret), Some_Param) :-
       not(equals(side2(Side1_Ret), Some_Param)),
       holds_at(nearPortal(NearPortal_Param14, Side1_Ret),
                Time13),
       some(Some_Param,
            '$kolem_Fn_165'(NearPortal_Param14, Side1_Ret, Time13)).
 */
axiom(equals(side1(Side1_Ret), Some_Param),
   
    [ not(equals(side2(Side1_Ret), Some_Param)),
      holds_at(nearPortal(NearPortal_Param14, Side1_Ret),
               Time13),
      some(Some_Param,
           '$kolem_Fn_165'(NearPortal_Param14,
                           Side1_Ret,
                           Time13))
    ]).

 /*  equals(side2(Side2_Ret), Some_Param19) :-
       not(equals(side1(Side2_Ret), Some_Param19)),
       holds_at(nearPortal(NearPortal_Param18, Side2_Ret),
                Time17),
       some(Some_Param19,
            '$kolem_Fn_165'(NearPortal_Param18, Side2_Ret, Time17)).
 */
axiom(equals(side2(Side2_Ret), Some_Param19),
   
    [ not(equals(side1(Side2_Ret), Some_Param19)),
      holds_at(nearPortal(NearPortal_Param18, Side2_Ret),
               Time17),
      some(Some_Param19,
           '$kolem_Fn_165'(NearPortal_Param18,
                           Side2_Ret,
                           Time17))
    ]).

 /*  holds_at(at(At_Param, Location21), Time22) :-
       holds_at(nearPortal(At_Param, NearPortal_Ret24), Time22),
       some(Location21,
            '$kolem_Fn_165'(At_Param, NearPortal_Ret24, Time22)).
 */
axiom(holds_at(at(At_Param, Location21), Time22),
   
    [ holds_at(nearPortal(At_Param, NearPortal_Ret24), Time22),
      some(Location21,
           '$kolem_Fn_165'(At_Param, NearPortal_Ret24, Time22))
    ]).

 /*  holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25) :-
       ( holds_at(at(NearPortal_Param27, Location26), Time25),
         (   equals(side1(NearPortal_Ret28), Location26)
         ;   equals(side2(NearPortal_Ret28), Location26)
         )
       ),
       some(Location26,
            '$kolem_Fn_165'(NearPortal_Param27,
                            NearPortal_Ret28,
                            Time25)).
 */
axiom(holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25),
   
    [ equals(side1(NearPortal_Ret28), Location26),
      holds_at(at(NearPortal_Param27, Location26), Time25),
      some(Location26,
           '$kolem_Fn_165'(NearPortal_Param27,
                           NearPortal_Ret28,
                           Time25))
    ]).
axiom(holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25),
   
    [ equals(side2(NearPortal_Ret28), Location26),
      holds_at(at(NearPortal_Param27, Location26), Time25),
      some(Location26,
           '$kolem_Fn_165'(NearPortal_Param27,
                           NearPortal_Ret28,
                           Time25))
    ]).

 /*  not(holds_at(at(At_Param31, Location29), Time30)) :-
       (   equals(side1(Side1_Ret32), Location29)
       ;   equals(side2(Side1_Ret32), Location29)
       ),
       not(holds_at(nearPortal(At_Param31, Side1_Ret32), Time30)),
       some(Location29,
            '$kolem_Fn_165'(At_Param31, Side1_Ret32, Time30)).
 */
axiom(not(holds_at(at(At_Param31, Location29), Time30)),
   
    [ equals(side1(Side1_Ret32), Location29),
      not(holds_at(nearPortal(At_Param31, Side1_Ret32),
                   Time30)),
      some(Location29,
           '$kolem_Fn_165'(At_Param31, Side1_Ret32, Time30))
    ]).
axiom(not(holds_at(at(At_Param31, Location29), Time30)),
   
    [ equals(side2(Side1_Ret32), Location29),
      not(holds_at(nearPortal(At_Param31, Side1_Ret32),
                   Time30)),
      some(Location29,
           '$kolem_Fn_165'(At_Param31, Side1_Ret32, Time30))
    ]).

 /*  not(equals(side1(Side1_Ret36), Location33)) :-
       holds_at(at(At_Param35, Location33), Time34),
       not(holds_at(nearPortal(At_Param35, Side1_Ret36), Time34)),
       some(Location33,
            '$kolem_Fn_165'(At_Param35, Side1_Ret36, Time34)).
 */
axiom(not(equals(side1(Side1_Ret36), Location33)),
   
    [ holds_at(at(At_Param35, Location33), Time34),
      not(holds_at(nearPortal(At_Param35, Side1_Ret36),
                   Time34)),
      some(Location33,
           '$kolem_Fn_165'(At_Param35, Side1_Ret36, Time34))
    ]).

 /*  not(equals(side2(Side2_Ret40), Location37)) :-
       holds_at(at(At_Param39, Location37), Time38),
       not(holds_at(nearPortal(At_Param39, Side2_Ret40), Time38)),
       some(Location37,
            '$kolem_Fn_165'(At_Param39, Side2_Ret40, Time38)).
 */
axiom(not(equals(side2(Side2_Ret40), Location37)),
   
    [ holds_at(at(At_Param39, Location37), Time38),
      not(holds_at(nearPortal(At_Param39, Side2_Ret40),
                   Time38)),
      some(Location37,
           '$kolem_Fn_165'(At_Param39, Side2_Ret40, Time38))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:222
% event WalkThroughDoor12(agent,door)
 %  event(walkThroughDoor12(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:223
==> mpred_prop(walkThroughDoor12(agent,door),event).
==> meta_argtypes(walkThroughDoor12(agent,door)).

% event WalkThroughDoor21(agent,door)
 %  event(walkThroughDoor21(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:224
==> mpred_prop(walkThroughDoor21(agent,door),event).
==> meta_argtypes(walkThroughDoor21(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:225
% [agent,door,time]
% Happens(WalkThroughDoor12(agent,door),time) ->
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side1(door)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:228
axiom(requires(walkThroughDoor12(Agent, Door), Time),
   
    [ holds_at(standing(Agent), Time),
      holds_at(at(Agent, side1(Door)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:230
% [agent,door,time]
% Happens(WalkThroughDoor21(agent,door),time) ->
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side2(door)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:233
axiom(requires(walkThroughDoor21(Agent, Door), Time),
   
    [ holds_at(standing(Agent), Time),
      holds_at(at(Agent, side2(Door)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:235
% [agent,door,location,time]
% Side2(door)=location ->
% Initiates(WalkThroughDoor12(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:237
axiom(initiates(walkThroughDoor12(Agent, Door), at(Agent, Location), Time),
    [equals(side2(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:239
% [agent,door,location,time]
% Side1(door)=location ->
% Initiates(WalkThroughDoor21(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:241
axiom(initiates(walkThroughDoor21(Agent, Door), at(Agent, Location), Time),
    [equals(side1(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:243
% [agent,door,location,time]
% Side1(door)=location ->
% Terminates(WalkThroughDoor12(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:245
axiom(terminates(walkThroughDoor12(Agent, Door), at(Agent, Location), Time),
    [equals(side1(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:247
% [agent,door,location,time]
% Side2(door)=location ->
% Terminates(WalkThroughDoor21(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:249
axiom(terminates(walkThroughDoor21(Agent, Door), at(Agent, Location), Time),
    [equals(side2(Door), Location)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:251
% fluent Hungry(agent)
 %  fluent(hungry(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:252
==> mpred_prop(hungry(agent),fluent).
==> meta_argtypes(hungry(agent)).

% fluent Satiated(agent)
 %  fluent(satiated(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:254
==> mpred_prop(satiated(agent),fluent).
==> meta_argtypes(satiated(agent)).

% noninertial Satiated
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:255
==> noninertial(satiated).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:256
% [agent,time]
 % HoldsAt(Hungry(agent),time) <-> !HoldsAt(Satiated(agent),time).

 /*  holds_at(hungry(Agent), Time) <->
       not(holds_at(satiated(Agent), Time)).
 */
axiom(holds_at(hungry(Agent), Time),
    [not(holds_at(satiated(Agent), Time))]).
axiom(not(holds_at(satiated(Agent), Time)),
    [holds_at(hungry(Agent), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:258
% event Eat(agent,food)
 %  event(eat(agent,food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:259
==> mpred_prop(eat(agent,food),event).
==> meta_argtypes(eat(agent,food)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:260
% [agent,food,time]
% Happens(Eat(agent,food),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:262
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(food,location),time).

 /*   exists([Location],
             if(happens(eat(Agent, Food), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Food, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_166'(Fn_166_Param, At_Param, Maptime))) :-
       happens(eat(Fn_166_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_166_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:264
axiom(not(some(Location6, '$kolem_Fn_166'(Fn_166_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_166_Param, Location6), Maptime)),
      happens(eat(Fn_166_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_166'(Fn_166_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(eat(Fn_166_Param, At_Param), Maptime)
    ]).

 /*  not(happens(eat(Eat_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(Eat_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_166'(Eat_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(eat(Eat_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(Eat_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_166'(Eat_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(eat(Eat_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_166'(Eat_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(eat(At_Param15, Eat_Ret), Time14),
       some(Location13,
            '$kolem_Fn_166'(At_Param15, Eat_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(eat(At_Param15, Eat_Ret), Time14),
      some(Location13,
           '$kolem_Fn_166'(At_Param15, Eat_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(eat(Eat_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_166'(Eat_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(eat(Eat_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_166'(Eat_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:266
% [agent,food,time]
% Terminates(Eat(agent,food),Hungry(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:267
axiom(terminates(eat(Agent, Food), hungry(Agent), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:269
% sort restaurant: script
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:270
==> subsort(restaurant,script).

% sort waiter: agent
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:271
==> subsort(waiter,agent).

% sort cook: agent
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:272
==> subsort(cook,agent).

% function BillOf(restaurant): bill
 %  functional_predicate(billOf(restaurant,bill)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:274
==> mpred_prop(billOf(restaurant,bill),functional_predicate).
==> meta_argtypes(billOf(restaurant,bill)).
resultIsa(billOf,bill).

% function CookOf(restaurant): cook
 %  functional_predicate(cookOf(restaurant,cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:275
==> mpred_prop(cookOf(restaurant,cook),functional_predicate).
==> meta_argtypes(cookOf(restaurant,cook)).
resultIsa(cookOf,cook).

% function TableOf(restaurant): table
 %  functional_predicate(tableOf(restaurant,table)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:276
==> mpred_prop(tableOf(restaurant,table),functional_predicate).
==> meta_argtypes(tableOf(restaurant,table)).
resultIsa(tableOf,table).

% function WaiterOf(restaurant): waiter
 %  functional_predicate(waiterOf(restaurant,waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:277
==> mpred_prop(waiterOf(restaurant,waiter),functional_predicate).
==> meta_argtypes(waiterOf(restaurant,waiter)).
resultIsa(waiterOf,waiter).

% function KitchenDoorOf(restaurant): door
 %  functional_predicate(kitchenDoorOf(restaurant,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:278
==> mpred_prop(kitchenDoorOf(restaurant,door),functional_predicate).
==> meta_argtypes(kitchenDoorOf(restaurant,door)).
resultIsa(kitchenDoorOf,door).

% fluent BeWaiter0(waiter)
 %  fluent(beWaiter0(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:280
==> mpred_prop(beWaiter0(waiter),fluent).
==> meta_argtypes(beWaiter0(waiter)).

% fluent BeWaiter1(waiter)
 %  fluent(beWaiter1(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:282
==> mpred_prop(beWaiter1(waiter),fluent).
==> meta_argtypes(beWaiter1(waiter)).

% fluent BeWaiter2(waiter)
 %  fluent(beWaiter2(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:284
==> mpred_prop(beWaiter2(waiter),fluent).
==> meta_argtypes(beWaiter2(waiter)).

% fluent BeWaiter3(waiter)
 %  fluent(beWaiter3(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:286
==> mpred_prop(beWaiter3(waiter),fluent).
==> meta_argtypes(beWaiter3(waiter)).

% fluent BeWaiter4(waiter)
 %  fluent(beWaiter4(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:288
==> mpred_prop(beWaiter4(waiter),fluent).
==> meta_argtypes(beWaiter4(waiter)).

% fluent BeWaiter5(waiter)
 %  fluent(beWaiter5(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:290
==> mpred_prop(beWaiter5(waiter),fluent).
==> meta_argtypes(beWaiter5(waiter)).

% fluent BeWaiter6(waiter)
 %  fluent(beWaiter6(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:292
==> mpred_prop(beWaiter6(waiter),fluent).
==> meta_argtypes(beWaiter6(waiter)).

% fluent BeWaiter7(waiter)
 %  fluent(beWaiter7(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:294
==> mpred_prop(beWaiter7(waiter),fluent).
==> meta_argtypes(beWaiter7(waiter)).

% fluent BeWaiter8(waiter)
 %  fluent(beWaiter8(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:296
==> mpred_prop(beWaiter8(waiter),fluent).
==> meta_argtypes(beWaiter8(waiter)).

% fluent BeWaiter9(waiter)
 %  fluent(beWaiter9(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:298
==> mpred_prop(beWaiter9(waiter),fluent).
==> meta_argtypes(beWaiter9(waiter)).

% xor BeWaiter0, BeWaiter1, BeWaiter2, BeWaiter3, BeWaiter4, BeWaiter5, BeWaiter6, BeWaiter7, BeWaiter8, BeWaiter9
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:300
xor([ beWaiter0,
      beWaiter1,
      beWaiter2,
      beWaiter3,
      beWaiter4,
      beWaiter5,
      beWaiter6,
      beWaiter7,
      beWaiter8,
      beWaiter9
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:301
% [waiter,agent,time]
% HoldsAt(BeWaiter0(waiter),time) ->
% Terminates(Greet(waiter,agent),
%            BeWaiter0(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:305
axiom(terminates(greet(Waiter, Agent), beWaiter0(Waiter), Time),
    [holds_at(beWaiter0(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:307
% [waiter,agent,time]
% HoldsAt(BeWaiter0(waiter),time) ->
% Initiates(Greet(waiter,agent),
%           BeWaiter1(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:311
axiom(initiates(greet(Waiter, Agent), beWaiter1(Waiter), Time),
    [holds_at(beWaiter0(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:313
% [waiter,agent,food,time]
% HoldsAt(BeWaiter1(waiter),time) ->
% Terminates(Order(agent,waiter,food),
%            BeWaiter1(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:317
axiom(terminates(order(Agent, Waiter, Food), beWaiter1(Waiter), Time),
    [holds_at(beWaiter1(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:319
% [waiter,agent,food,time]
% HoldsAt(BeWaiter1(waiter),time) ->
% Initiates(Order(agent,waiter,food),
%           BeWaiter2(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:323
axiom(initiates(order(Agent, Waiter, Food), beWaiter2(Waiter), Time),
    [holds_at(beWaiter1(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:325
% [restaurant,waiter,time]
% WaiterOf(restaurant)=waiter &
% HoldsAt(BeWaiter2(waiter),time) ->
% Happens(WalkThroughDoor12(waiter,KitchenDoorOf(restaurant)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:328
axiom(happens(walkThroughDoor12(Waiter, kitchenDoorOf(Restaurant)), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      holds_at(beWaiter2(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:330
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter2(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Terminates(WalkThroughDoor12(waiter,door),
%            BeWaiter2(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:336
axiom(terminates(walkThroughDoor12(Waiter, Door), beWaiter2(Waiter), Time),
   
    [ holds_at(beWaiter2(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:338
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter2(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Initiates(WalkThroughDoor12(waiter,door),
%           BeWaiter3(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:344
axiom(initiates(walkThroughDoor12(Waiter, Door), beWaiter3(Waiter), Time),
   
    [ holds_at(beWaiter2(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:346
% [restaurant,food,time]
% HoldsAt(BeWaiter3(WaiterOf(restaurant)),time) &
% ({agent} HoldsAt(KnowOrder(WaiterOf(restaurant),agent,food),time)) ->
% Happens(Order(WaiterOf(restaurant),CookOf(restaurant),food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:349
axiom(happens(order(waiterOf(Restaurant), cookOf(Restaurant), Food), Time),
   
    [ holds_at(beWaiter3(waiterOf(Restaurant)), Time),
      holds_at(knowOrder(waiterOf(Restaurant), Agent, Food),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:351
% [restaurant,waiter,cook,food,time]
% WaiterOf(restaurant)=waiter &
% CookOf(restaurant)=cook &
% HoldsAt(BeWaiter3(waiter),time) ->
% Terminates(Order(waiter,cook,food),
%            BeWaiter3(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:357
axiom(terminates(order(Waiter, Cook, Food), beWaiter3(Waiter), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(cookOf(Restaurant), Cook),
      holds_at(beWaiter3(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:359
% [restaurant,waiter,cook,food,time]
% WaiterOf(restaurant)=waiter &
% CookOf(restaurant)=cook &
% HoldsAt(BeWaiter3(waiter),time) ->
% Initiates(Order(waiter,cook,food),
%           BeWaiter4(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:365
axiom(initiates(order(Waiter, Cook, Food), beWaiter4(Waiter), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(cookOf(Restaurant), Cook),
      holds_at(beWaiter3(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:367
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) &
% HoldsAt(FoodPrepared(food),time) ->
% Happens(PickUp(waiter,food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:371
axiom(happens(pickUp(Waiter, Food), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time),
      holds_at(foodPrepared(Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:373
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) ->
% Terminates(PickUp(waiter,food),
%            BeWaiter4(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:378
axiom(terminates(pickUp(Waiter, Food), beWaiter4(Waiter), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:380
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) ->
% Initiates(PickUp(waiter,food),
%           BeWaiter5(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:385
axiom(initiates(pickUp(Waiter, Food), beWaiter5(Waiter), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:387
% [restaurant,waiter,time]
% WaiterOf(restaurant)=waiter &
% HoldsAt(BeWaiter5(waiter),time) ->
% Happens(WalkThroughDoor21(waiter,KitchenDoorOf(restaurant)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:390
axiom(happens(walkThroughDoor21(Waiter, kitchenDoorOf(Restaurant)), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      holds_at(beWaiter5(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:392
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter5(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Terminates(WalkThroughDoor21(waiter,door),
%            BeWaiter5(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:398
axiom(terminates(walkThroughDoor21(Waiter, Door), beWaiter5(Waiter), Time),
   
    [ holds_at(beWaiter5(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:400
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter5(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Initiates(WalkThroughDoor21(waiter,door),
%           BeWaiter6(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:406
axiom(initiates(walkThroughDoor21(Waiter, Door), beWaiter6(Waiter), Time),
   
    [ holds_at(beWaiter5(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:408
% [restaurant,waiter,table,food,time]
% WaiterOf(restaurant)=waiter &
% TableOf(restaurant)=table &
% HoldsAt(BeWaiter6(waiter),time) &
% HoldsAt(Holding(waiter,food),time) ->
% Happens(PlaceOn(waiter,food,table),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:413
axiom(happens(placeOn(Waiter, Food, Table), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(tableOf(Restaurant), Table),
      holds_at(beWaiter6(Waiter), Time),
      holds_at(holding(Waiter, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:415
% [waiter,food,table,time]
% HoldsAt(BeWaiter6(waiter),time) ->
% Terminates(PlaceOn(waiter,food,table),
%            BeWaiter6(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:419
axiom(terminates(placeOn(Waiter, Food, Table), beWaiter6(Waiter), Time),
    [holds_at(beWaiter6(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:421
% [waiter,food,table,time]
% HoldsAt(BeWaiter6(waiter),time) ->
% Initiates(PlaceOn(waiter,food,table),
%           BeWaiter7(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:425
axiom(initiates(placeOn(Waiter, Food, Table), beWaiter7(Waiter), Time),
    [holds_at(beWaiter6(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:427
% [waiter,agent,bill,time]
% HoldsAt(BeWaiter7(waiter),time) ->
% Terminates(Request(agent,waiter,bill),
%            BeWaiter7(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:431
axiom(terminates(request(Agent, Waiter, Bill), beWaiter7(Waiter), Time),
    [holds_at(beWaiter7(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:433
% [waiter,agent,bill,time]
% HoldsAt(BeWaiter7(waiter),time) ->
% Initiates(Request(agent,waiter,bill),
%           BeWaiter8(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:437
axiom(initiates(request(Agent, Waiter, Bill), beWaiter8(Waiter), Time),
    [holds_at(beWaiter7(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:439
% [restaurant,waiter,bill,time]
% WaiterOf(restaurant)=waiter &
% BillOf(restaurant)=bill &
% HoldsAt(BeWaiter8(waiter),time) ->
% Happens(PickUp(waiter,bill),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:443
axiom(happens(pickUp(Waiter, Bill), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(billOf(Restaurant), Bill),
      holds_at(beWaiter8(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:445
% [waiter,bill,time]
% HoldsAt(BeWaiter8(waiter),time) ->
% Terminates(PickUp(waiter,bill),
%            BeWaiter8(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:449
axiom(terminates(pickUp(Waiter, Bill), beWaiter8(Waiter), Time),
    [holds_at(beWaiter8(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:451
% [waiter,bill,time]
% HoldsAt(BeWaiter8(waiter),time) ->
% Initiates(PickUp(waiter,bill),
%           BeWaiter9(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:455
axiom(initiates(pickUp(Waiter, Bill), beWaiter9(Waiter), Time),
    [holds_at(beWaiter8(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:457
% [restaurant,waiter,bill,table,time]
% WaiterOf(restaurant)=waiter &
% BillOf(restaurant)=bill &
% TableOf(restaurant)=table &
% HoldsAt(BeWaiter9(waiter),time) ->
% Happens(PlaceOn(waiter,bill,table),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:462
axiom(happens(placeOn(Waiter, Bill, Table), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(billOf(Restaurant), Bill),
      equals(tableOf(Restaurant), Table),
      holds_at(beWaiter9(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:464
% [waiter,bill,table,time]
% HoldsAt(BeWaiter9(waiter),time) ->
% Terminates(PlaceOn(waiter,bill,table),
%            BeWaiter9(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:468
axiom(terminates(placeOn(Waiter, Bill, Table), beWaiter9(Waiter), Time),
    [holds_at(beWaiter9(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:470
% [waiter,bill,table,time]
% HoldsAt(BeWaiter9(waiter),time) ->
% Initiates(PlaceOn(waiter,bill,table),
%           BeWaiter0(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:474
axiom(initiates(placeOn(Waiter, Bill, Table), beWaiter0(Waiter), Time),
    [holds_at(beWaiter9(Waiter), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:476
% fluent BeCook0(cook)
 %  fluent(beCook0(cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:477
==> mpred_prop(beCook0(cook),fluent).
==> meta_argtypes(beCook0(cook)).

% fluent BeCook1(cook)
 %  fluent(beCook1(cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:479
==> mpred_prop(beCook1(cook),fluent).
==> meta_argtypes(beCook1(cook)).

% xor BeCook0, BeCook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:481
xor([beCook0,beCook1]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:482
% [cook,agent,food,time]
% HoldsAt(BeCook0(cook),time) ->
% Terminates(Order(agent,cook,food),
%            BeCook0(cook),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:486
axiom(terminates(order(Agent, Cook, Food), beCook0(Cook), Time),
    [holds_at(beCook0(Cook), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:488
% [cook,agent,food,time]
% HoldsAt(BeCook0(cook),time) ->
% Initiates(Order(agent,cook,food),
%           BeCook1(cook),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:492
axiom(initiates(order(Agent, Cook, Food), beCook1(Cook), Time),
    [holds_at(beCook0(Cook), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:494
% event FoodPrepare(agent,food)
 %  event(foodPrepare(agent,food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:495
==> mpred_prop(foodPrepare(agent,food),event).
==> meta_argtypes(foodPrepare(agent,food)).

% fluent FoodPrepared(food)
 %  fluent(foodPrepared(food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:497
==> mpred_prop(foodPrepared(food),fluent).
==> meta_argtypes(foodPrepared(food)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:498
% [agent,food,time]
% Initiates(FoodPrepare(agent,food),
%           FoodPrepared(food),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:501
axiom(initiates(foodPrepare(Agent, Food), foodPrepared(Food), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:503
% [agent,food,time]
% Happens(FoodPrepare(agent,food),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:505
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(food,location),time).

 /*   exists([Location],
             if(happens(foodPrepare(Agent, Food), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Food, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_171'(Fn_171_Param, At_Param, Maptime))) :-
       happens(foodPrepare(Fn_171_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_171_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:507
axiom(not(some(Location6, '$kolem_Fn_171'(Fn_171_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_171_Param, Location6), Maptime)),
      happens(foodPrepare(Fn_171_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_171'(Fn_171_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(foodPrepare(Fn_171_Param, At_Param), Maptime)
    ]).

 /*  not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(FoodPrepare_Param, Location10),
                        Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_171'(FoodPrepare_Param,
                            At_Param12,
                            Maptime9)).
 */
axiom(not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(FoodPrepare_Param, Location10),
                   Maptime9)),
      some(Location10,
           '$kolem_Fn_171'(FoodPrepare_Param,
                           At_Param12,
                           Maptime9))
    ]).
axiom(not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_171'(FoodPrepare_Param,
                           At_Param12,
                           Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(foodPrepare(At_Param15, FoodPrepare_Ret), Time14),
       some(Location13,
            '$kolem_Fn_171'(At_Param15, FoodPrepare_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(foodPrepare(At_Param15, FoodPrepare_Ret),
              Time14),
      some(Location13,
           '$kolem_Fn_171'(At_Param15, FoodPrepare_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(foodPrepare(FoodPrepare_Param20, At_Param19),
               Time18),
       some(Location17,
            '$kolem_Fn_171'(FoodPrepare_Param20,
                            At_Param19,
                            Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(foodPrepare(FoodPrepare_Param20, At_Param19),
              Time18),
      some(Location17,
           '$kolem_Fn_171'(FoodPrepare_Param20,
                           At_Param19,
                           Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:509
% [cook,agent,food,time]
% HoldsAt(BeCook1(cook),time) &
% HoldsAt(KnowOrder(cook,agent,food),time) ->
% Happens(FoodPrepare(cook,food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:512
axiom(happens(foodPrepare(Cook, Food), Time),
   
    [ holds_at(beCook1(Cook), Time),
      holds_at(knowOrder(Cook, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:514
% [cook,food,time]
% HoldsAt(BeCook1(cook),time) ->
% Terminates(FoodPrepare(cook,food),
%            BeCook1(cook),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:518
axiom(terminates(foodPrepare(Cook, Food), beCook1(Cook), Time),
    [holds_at(beCook1(Cook), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:520
% [cook,food,time]
% HoldsAt(BeCook1(cook),time) ->
% Initiates(FoodPrepare(cook,food),
%           BeCook0(cook),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:524
axiom(initiates(foodPrepare(Cook, Food), beCook0(Cook), Time),
    [holds_at(beCook1(Cook), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:526
% event Pay(agent,agent)
 %  event(pay(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:527
==> mpred_prop(pay(agent,agent),event).
==> meta_argtypes(pay(agent,agent)).

% event Tip(agent,agent)
 %  event(tip(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:529
==> mpred_prop(tip(agent,agent),event).
==> meta_argtypes(tip(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:530
% [agent,physobj,time]
% Happens(LieOn(agent,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:532
% {room}% 
%  HoldsAt(At(agent,room),time) &
%  HoldsAt(At(physobj,room),time).

 /*   exists([Room],
             if(happens(lieOn(Agent, Physobj), Time),
                 (holds_at(at(Agent, Room), Time), holds_at(at(Physobj, Room), Time)))).
 */

 /*  not(some(Location, '$kolem_Fn_172'(Fn_172_Param, At_Param, Maptime))) :-
       happens(lieOn(Fn_172_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_172_Param, Location), Maptime))
       ;   not(holds_at(at(At_Param, Location), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:534
axiom(not(some(Location, '$kolem_Fn_172'(Fn_172_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_172_Param, Location), Maptime)),
      happens(lieOn(Fn_172_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location, '$kolem_Fn_172'(Fn_172_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location), Maptime)),
      happens(lieOn(Fn_172_Param, At_Param), Maptime)
    ]).

 /*  not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(LieOn_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_172'(LieOn_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(LieOn_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_172'(LieOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(lieOn(LieOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_172'(LieOn_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(lieOn(At_Param15, LieOn_Ret), Time14),
       some(Location13,
            '$kolem_Fn_172'(At_Param15, LieOn_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(lieOn(At_Param15, LieOn_Ret), Time14),
      some(Location13,
           '$kolem_Fn_172'(At_Param15, LieOn_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(lieOn(LieOn_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_172'(LieOn_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(lieOn(LieOn_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_172'(LieOn_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:536
% [agent,physobj,time]
% Happens(SitOn(agent,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:538
% {room}% 
%  HoldsAt(At(agent,room),time) &
%  HoldsAt(At(physobj,room),time).

 /*   exists([Room],
             if(happens(sitOn(Agent, Physobj), Time),
                 (holds_at(at(Agent, Room), Time), holds_at(at(Physobj, Room), Time)))).
 */

 /*  not(some(Location, '$kolem_Fn_173'(Fn_173_Param, At_Param, Maptime))) :-
       happens(sitOn(Fn_173_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_173_Param, Location), Maptime))
       ;   not(holds_at(at(At_Param, Location), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:540
axiom(not(some(Location, '$kolem_Fn_173'(Fn_173_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_173_Param, Location), Maptime)),
      happens(sitOn(Fn_173_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location, '$kolem_Fn_173'(Fn_173_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location), Maptime)),
      happens(sitOn(Fn_173_Param, At_Param), Maptime)
    ]).

 /*  not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(SitOn_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_173'(SitOn_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(SitOn_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_173'(SitOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(sitOn(SitOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_173'(SitOn_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(sitOn(At_Param15, SitOn_Ret), Time14),
       some(Location13,
            '$kolem_Fn_173'(At_Param15, SitOn_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(sitOn(At_Param15, SitOn_Ret), Time14),
      some(Location13,
           '$kolem_Fn_173'(At_Param15, SitOn_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(sitOn(SitOn_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_173'(SitOn_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(sitOn(SitOn_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_173'(SitOn_Param20, At_Param19, Time18))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:542
% event LieOn(agent,physobj)
 %  event(lieOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:543
==> mpred_prop(lieOn(agent,physobj),event).
==> meta_argtypes(lieOn(agent,physobj)).

% event SitOn(agent,physobj)
 %  event(sitOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:545
==> mpred_prop(sitOn(agent,physobj),event).
==> meta_argtypes(sitOn(agent,physobj)).

% event RiseFrom(agent,physobj)
 %  event(riseFrom(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:547
==> mpred_prop(riseFrom(agent,physobj),event).
==> meta_argtypes(riseFrom(agent,physobj)).

% fluent LyingOn(agent,physobj)
 %  fluent(lyingOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:549
==> mpred_prop(lyingOn(agent,physobj),fluent).
==> meta_argtypes(lyingOn(agent,physobj)).

% fluent SittingOn(agent,physobj)
 %  fluent(sittingOn(agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:550
==> mpred_prop(sittingOn(agent,physobj),fluent).
==> meta_argtypes(sittingOn(agent,physobj)).

% fluent Standing(agent)
 %  fluent(standing(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:551
==> mpred_prop(standing(agent),fluent).
==> meta_argtypes(standing(agent)).

% fluent Lying(agent)
 %  fluent(lying(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:553
==> mpred_prop(lying(agent),fluent).
==> meta_argtypes(lying(agent)).

% fluent Sitting(agent)
 %  fluent(sitting(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:554
==> mpred_prop(sitting(agent),fluent).
==> meta_argtypes(sitting(agent)).

% noninertial Lying
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:555
==> noninertial(lying).

% noninertial Sitting
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:556
==> noninertial(sitting).

% xor Lying, Sitting, Standing
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:558
xor([lying,sitting,standing]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:559
% [agent,physobj,time]
% HoldsAt(LyingOn(agent,physobj),time) ->
% HoldsAt(Lying(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:561
axiom(holds_at(lying(Agent), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:563
% [agent,physobj,time]
% HoldsAt(SittingOn(agent,physobj),time) ->
% HoldsAt(Sitting(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:565
axiom(holds_at(sitting(Agent), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:567
% [agent,physobj1,physobj2,time]
% HoldsAt(LyingOn(agent,physobj1),time) &
% HoldsAt(LyingOn(agent,physobj2),time) ->
% physobj1=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:570
axiom(Physobj1=Physobj2,
   
    [ holds_at(lyingOn(Agent, Physobj1), Time),
      holds_at(lyingOn(Agent, Physobj2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:572
% [agent,physobj1,physobj2,time]
% HoldsAt(SittingOn(agent,physobj1),time) &
% HoldsAt(SittingOn(agent,physobj2),time) ->
% physobj1=physobj2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:575
axiom(Physobj1=Physobj2,
   
    [ holds_at(sittingOn(Agent, Physobj1), Time),
      holds_at(sittingOn(Agent, Physobj2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:577
% [agent,physobj,time]
% HoldsAt(Standing(agent),time) ->
% Initiates(LieOn(agent,physobj),
%           LyingOn(agent,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:581
axiom(initiates(lieOn(Agent, Physobj), lyingOn(Agent, Physobj), Time),
    [holds_at(standing(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:583
% [agent,physobj,time]
% Terminates(LieOn(agent,physobj),
%            Standing(agent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:586
axiom(terminates(lieOn(Agent, Physobj), standing(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:588
% [agent,physobj,time]
% HoldsAt(Standing(agent),time) ->
% Initiates(SitOn(agent,physobj),
%           SittingOn(agent,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:592
axiom(initiates(sitOn(Agent, Physobj), sittingOn(Agent, Physobj), Time),
    [holds_at(standing(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:594
% [agent,physobj,time]
% Terminates(SitOn(agent,physobj),
%            Standing(agent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:597
axiom(terminates(sitOn(Agent, Physobj), standing(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:599
% [agent,physobj,time]
% (HoldsAt(SittingOn(agent,physobj),time) |
%  HoldsAt(LyingOn(agent,physobj),time)) ->
% Initiates(RiseFrom(agent,physobj),
%           Standing(agent),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:604
axiom(initiates(riseFrom(Agent, Physobj), standing(Agent), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).
axiom(initiates(riseFrom(Agent, Physobj), standing(Agent), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:606
% [agent,physobj,time]
% HoldsAt(LyingOn(agent,physobj),time) ->
% Terminates(RiseFrom(agent,physobj),
%            LyingOn(agent,physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:610
axiom(terminates(riseFrom(Agent, Physobj), lyingOn(Agent, Physobj), Time),
    [holds_at(lyingOn(Agent, Physobj), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:612
% [agent,physobj,time]
% HoldsAt(SittingOn(agent,physobj),time) ->
% Terminates(RiseFrom(agent,physobj),
%            SittingOn(agent,physobj),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:616
axiom(terminates(riseFrom(Agent, Physobj), sittingOn(Agent, Physobj), Time),
    [holds_at(sittingOn(Agent, Physobj), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:618
% event Greet(agent,agent)
 %  event(greet(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:619
==> mpred_prop(greet(agent,agent),event).
==> meta_argtypes(greet(agent,agent)).

% event SayGoodbye(agent,agent)
 %  event(sayGoodbye(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:621
==> mpred_prop(sayGoodbye(agent,agent),event).
==> meta_argtypes(sayGoodbye(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:622
% [agent1,agent2,time]
% Happens(Greet(agent1,agent2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:624
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(greet(Agent1, Agent2), Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_174'(Fn_174_Param, At_Param, Maptime))) :-
       happens(greet(Fn_174_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_174_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:626
axiom(not(some(Location6, '$kolem_Fn_174'(Fn_174_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_174_Param, Location6), Maptime)),
      happens(greet(Fn_174_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_174'(Fn_174_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(greet(Fn_174_Param, At_Param), Maptime)
    ]).

 /*  not(happens(greet(Greet_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(Greet_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_174'(Greet_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(greet(Greet_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(Greet_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_174'(Greet_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(greet(Greet_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_174'(Greet_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(greet(At_Param15, Greet_Ret), Time14),
       some(Location13,
            '$kolem_Fn_174'(At_Param15, Greet_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(greet(At_Param15, Greet_Ret), Time14),
      some(Location13,
           '$kolem_Fn_174'(At_Param15, Greet_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(greet(Greet_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_174'(Greet_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(greet(Greet_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_174'(Greet_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:628
% [agent1,agent2,time]
% Happens(SayGoodbye(agent1,agent2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:630
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(sayGoodbye(Agent1, Agent2), Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_175'(Fn_175_Param, At_Param, Maptime))) :-
       happens(sayGoodbye(Fn_175_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_175_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:632
axiom(not(some(Location6, '$kolem_Fn_175'(Fn_175_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_175_Param, Location6), Maptime)),
      happens(sayGoodbye(Fn_175_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_175'(Fn_175_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(sayGoodbye(Fn_175_Param, At_Param), Maptime)
    ]).

 /*  not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(SayGoodbye_Param, Location10),
                        Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_175'(SayGoodbye_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(SayGoodbye_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_175'(SayGoodbye_Param,
                           At_Param12,
                           Maptime9))
    ]).
axiom(not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_175'(SayGoodbye_Param,
                           At_Param12,
                           Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(sayGoodbye(At_Param15, SayGoodbye_Ret), Time14),
       some(Location13,
            '$kolem_Fn_175'(At_Param15, SayGoodbye_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(sayGoodbye(At_Param15, SayGoodbye_Ret), Time14),
      some(Location13,
           '$kolem_Fn_175'(At_Param15, SayGoodbye_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(sayGoodbye(SayGoodbye_Param20, At_Param19),
               Time18),
       some(Location17,
            '$kolem_Fn_175'(SayGoodbye_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(sayGoodbye(SayGoodbye_Param20, At_Param19),
              Time18),
      some(Location17,
           '$kolem_Fn_175'(SayGoodbye_Param20,
                           At_Param19,
                           Time18))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:634
% event Order(agent,agent,physobj)
 %  event(order(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:635
==> mpred_prop(order(agent,agent,physobj),event).
==> meta_argtypes(order(agent,agent,physobj)).

% fluent KnowOrder(agent,agent,physobj)
 %  fluent(knowOrder(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:637
==> mpred_prop(knowOrder(agent,agent,physobj),fluent).
==> meta_argtypes(knowOrder(agent,agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:638
% [agent1,agent2,physobj,time]
% Initiates(Order(agent1,agent2,physobj),
%           KnowOrder(agent2,agent1,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:641
axiom(initiates(order(Agent1, Agent2, Physobj), knowOrder(Agent2, Agent1, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:643
% [agent1,agent2,physobj,time]
% Happens(Order(agent1,agent2,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:645
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(order(Agent1, Agent2, Physobj),
                        Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_176'(Fn_176_Param, At_Param, Order_Ret, Maptime))) :-
       happens(order(Fn_176_Param, At_Param, Order_Ret),
               Maptime),
       (   not(holds_at(at(Fn_176_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:647
axiom(not(some(Location7, '$kolem_Fn_176'(Fn_176_Param, At_Param, Order_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_176_Param, Location7), Maptime)),
      happens(order(Fn_176_Param, At_Param, Order_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_176'(Fn_176_Param, At_Param, Order_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(order(Fn_176_Param, At_Param, Order_Ret),
              Maptime)
    ]).

 /*  not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)) :-
       (   not(holds_at(at(Order_Param, Location12), Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_176'(Order_Param,
                            At_Param14,
                            Order_Ret15,
                            Maptime11)).
 */
axiom(not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)),
   
    [ not(holds_at(at(Order_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_176'(Order_Param,
                           At_Param14,
                           Order_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_176'(Order_Param,
                           At_Param14,
                           Order_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(order(At_Param18, A, Order_Ret19), Time17),
       some(Location16,
            '$kolem_Fn_176'(At_Param18,
                            A,
                            Order_Ret19,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(order(At_Param18, A, Order_Ret19), Time17),
      some(Location16,
           '$kolem_Fn_176'(At_Param18,
                           A,
                           Order_Ret19,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(order(Order_Param23, At_Param22, Order_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_176'(Order_Param23,
                            At_Param22,
                            Order_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(order(Order_Param23, At_Param22, Order_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_176'(Order_Param23,
                           At_Param22,
                           Order_Ret24,
                           Time21))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:649
% event Request(agent,agent,physobj)
 %  event(request(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:650
==> mpred_prop(request(agent,agent,physobj),event).
==> meta_argtypes(request(agent,agent,physobj)).

% fluent KnowRequest(agent,agent,physobj)
 %  fluent(knowRequest(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:652
==> mpred_prop(knowRequest(agent,agent,physobj),fluent).
==> meta_argtypes(knowRequest(agent,agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:653
% [agent1,agent2,physobj,time]
% Initiates(Request(agent1,agent2,physobj),
%           KnowRequest(agent2,agent1,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:656
axiom(initiates(request(Agent1, Agent2, Physobj), knowRequest(Agent2, Agent1, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:658
% [agent1,agent2,physobj,time]
% Happens(Request(agent1,agent2,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:660
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(request(Agent1, Agent2, Physobj),
                        Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_177'(Fn_177_Param, At_Param, Request_Ret, Maptime))) :-
       happens(request(Fn_177_Param, At_Param, Request_Ret),
               Maptime),
       (   not(holds_at(at(Fn_177_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:662
axiom(not(some(Location7, '$kolem_Fn_177'(Fn_177_Param, At_Param, Request_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_177_Param, Location7), Maptime)),
      happens(request(Fn_177_Param, At_Param, Request_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_177'(Fn_177_Param, At_Param, Request_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(request(Fn_177_Param, At_Param, Request_Ret),
              Maptime)
    ]).

 /*  not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)) :-
       (   not(holds_at(at(Request_Param, Location12), Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_177'(Request_Param,
                            At_Param14,
                            Request_Ret15,
                            Maptime11)).
 */
axiom(not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)),
   
    [ not(holds_at(at(Request_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_177'(Request_Param,
                           At_Param14,
                           Request_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_177'(Request_Param,
                           At_Param14,
                           Request_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(request(At_Param18, A, Request_Ret19),
               Time17),
       some(Location16,
            '$kolem_Fn_177'(At_Param18,
                            A,
                            Request_Ret19,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(request(At_Param18, A, Request_Ret19),
              Time17),
      some(Location16,
           '$kolem_Fn_177'(At_Param18,
                           A,
                           Request_Ret19,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(request(Request_Param23,
                       At_Param22,
                       Request_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_177'(Request_Param23,
                            At_Param22,
                            Request_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(request(Request_Param23,
                      At_Param22,
                      Request_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_177'(Request_Param23,
                           At_Param22,
                           Request_Ret24,
                           Time21))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RepRest.e:664
%; End of file.
