:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/AkmanEtAl2004/ZooWorld.e').
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
%; @article{Akman:2004,
%;   author = "Varol Akman and Selim T. Erdogan and Joohyung Lee and Vladimir Lifschitz and Hudson Turner",
%;   year = "2004",
%;   title = "Representing the zoo world and the traffic world in the language of the causal calculator",
%;   journal = "Artificial Intelligence",
%;   volume = "153",
%;   pages = "105--140",
%; }
%;

% sort position: integer
==> subsort(position,integer).

% sort location
==> sort(location).

% sort cage: location
==> subsort(cage,location).

% sort gate
==> sort(gate).

% sort animal
==> sort(animal).

% sort elephant: animal
==> subsort(elephant,animal).

% sort horse: animal
==> subsort(horse,animal).

% sort dog: animal
==> subsort(dog,animal).

% sort human: animal
==> subsort(human,animal).

% sort species
==> sort(species).

% function Loc(position): location
 %  functional_predicate(loc(position,location)).
==> mpred_prop(loc(position,location),functional_predicate).
==> meta_argtypes(loc(position,location)).
resultIsa(loc,location).

% function Side1(gate): position
 %  functional_predicate(side1(gate,position)).
==> mpred_prop(side1(gate,position),functional_predicate).
==> meta_argtypes(side1(gate,position)).
resultIsa(side1,position).

% function Side2(gate): position
 %  functional_predicate(side2(gate,position)).
==> mpred_prop(side2(gate,position),functional_predicate).
==> meta_argtypes(side2(gate,position)).
resultIsa(side2,position).

% function Species(animal): species
 %  functional_predicate(species(animal,species)).
==> mpred_prop(species(animal,species),functional_predicate).
==> meta_argtypes(species(animal,species)).
resultIsa(species,species).

% predicate Accessible(position,position,time)
 %  predicate(accessible(position,position,time)).
==> mpred_prop(accessible(position,position,time),predicate).
==> meta_argtypes(accessible(position,position,time)).

% predicate Adult(animal)
 %  predicate(adult(animal)).
==> mpred_prop(adult(animal),predicate).
==> meta_argtypes(adult(animal)).

% predicate Large(animal)
 %  predicate(large(animal)).
==> mpred_prop(large(animal),predicate).
==> meta_argtypes(large(animal)).

% predicate LargeSpecies(species)
 %  predicate(largeSpecies(species)).
==> mpred_prop(largeSpecies(species),predicate).
==> meta_argtypes(largeSpecies(species)).

% predicate Neighbor(position,position)
 %  predicate(neighbor(position,position)).
==> mpred_prop(neighbor(position,position),predicate).
==> meta_argtypes(neighbor(position,position)).

% predicate Sides(position,position,gate)
 %  predicate(sides(position,position,gate)).
==> mpred_prop(sides(position,position,gate),predicate).
==> meta_argtypes(sides(position,position,gate)).

% event Close(human,gate)
 %  event(close(human,gate)).
==> mpred_prop(close(human,gate),event).
==> meta_argtypes(close(human,gate)).

% event GetOff(human,animal)
 %  event(getOff(human,animal)).
==> mpred_prop(getOff(human,animal),event).
==> meta_argtypes(getOff(human,animal)).

% event Mount(human,animal)
 %  event(mount(human,animal)).
==> mpred_prop(mount(human,animal),event).
==> meta_argtypes(mount(human,animal)).

% event Move(animal,position)
 %  event(move(animal,position)).
==> mpred_prop(move(animal,position),event).
==> meta_argtypes(move(animal,position)).

% event Open(human,gate)
 %  event(open(human,gate)).
==> mpred_prop(open(human,gate),event).
==> meta_argtypes(open(human,gate)).

% event ThrowOff(animal,human)
 %  event(throwOff(animal,human)).
==> mpred_prop(throwOff(animal,human),event).
==> meta_argtypes(throwOff(animal,human)).

% fluent AbnormalEncroachment(human)
 %  fluent(abnormalEncroachment(human)).
==> mpred_prop(abnormalEncroachment(human),fluent).
==> meta_argtypes(abnormalEncroachment(human)).

% noninertial AbnormalEncroachment
==> noninertial(abnormalEncroachment).

% fluent DoneBy(event,animal)
 %  fluent(doneBy(event,animal)).
==> mpred_prop(doneBy(event,animal),fluent).
==> meta_argtypes(doneBy(event,animal)).

% noninertial DoneBy
==> noninertial(doneBy).

% fluent Mounted(human,animal)
 %  fluent(mounted(human,animal)).
==> mpred_prop(mounted(human,animal),fluent).
==> meta_argtypes(mounted(human,animal)).

% fluent MountFails(human)
 %  fluent(mountFails(human)).
==> mpred_prop(mountFails(human),fluent).
==> meta_argtypes(mountFails(human)).

% noninertial MountFails
==> noninertial(mountFails).

% fluent Moves(animal)
 %  fluent(moves(animal)).
==> mpred_prop(moves(animal),fluent).
==> meta_argtypes(moves(animal)).

% noninertial Moves
==> noninertial(moves).

% fluent Opened(gate)
 %  fluent(opened(gate)).
==> mpred_prop(opened(gate),fluent).
==> meta_argtypes(opened(gate)).

% fluent Pos(animal,position)
 %  fluent(pos(animal,position)).
==> mpred_prop(pos(animal,position),fluent).
==> meta_argtypes(pos(animal,position)).

% fluent PosDeterminingFluent(human,position)
 %  fluent(posDeterminingFluent(human,position)).
==> mpred_prop(posDeterminingFluent(human,position),fluent).
==> meta_argtypes(posDeterminingFluent(human,position)).

% noninertial PosDeterminingFluent
==> noninertial(posDeterminingFluent).

% fluent ThrowOffFails(animal,human)
 %  fluent(throwOffFails(animal,human)).
==> mpred_prop(throwOffFails(animal,human),fluent).
==> meta_argtypes(throwOffFails(animal,human)).

% noninertial ThrowOffFails
==> noninertial(throwOffFails).

% species HumanSpecies, ElephantSpecies, HorseSpecies, DogSpecies
==> t(species,humanSpecies).
==> t(species,elephantSpecies).
==> t(species,horseSpecies).
==> t(species,dogSpecies).

% location Outside
==> t(location,outside).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:69
% LargeSpecies(HumanSpecies).
largeSpecies(humanSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:70
% LargeSpecies(ElephantSpecies).
largeSpecies(elephantSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:71
% LargeSpecies(HorseSpecies).
largeSpecies(horseSpecies).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:72
% !LargeSpecies(DogSpecies).
 %  not(largeSpecies(dogSpecies)).
axiom(not(largeSpecies(dogSpecies)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:74
% [event,animal,time]
% HoldsAt(DoneBy(event,animal),time) <->
% (Happens(event,time) &
%  (({gate} event=Close(animal,gate)) |
%   ({animal1} event=GetOff(animal,animal1))|
%   ({animal1} event=Mount(animal,animal1))|
%   ({position} event=Move(animal,position))|
%   ({gate} event=Open(animal,gate)) |
%   ({human1} event=ThrowOff(animal,human1)))).

 /*  holds_at(doneBy(Event, Animal), Time) <->
       happens(Event, Time),
       (   exists([Gate], Event=close(Animal, Gate))
       ;   exists([Animal1], Event=getOff(Animal, Animal1))
       ;   exists([Animal15],
                  Event=mount(Animal, Animal15))
       ;   exists([Position], Event=move(Animal, Position))
       ;   exists([Gate7], Event=open(Animal, Gate7))
       ;   exists([Human1], Event=throwOff(Animal, Human1))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:82
axiom(holds_at(doneBy(Event, Animal), Time),
   
    [ equals(Event, close(Animal, Gate)),
      happens(Event, Time)
    ]).
axiom(holds_at(doneBy(Event, Animal), Time),
   
    [ equals(Event, getOff(Animal, Animal1)),
      happens(Event, Time)
    ]).
axiom(holds_at(doneBy(Event, Animal), Time),
   
    [ equals(Event, mount(Animal, Animal15)),
      happens(Event, Time)
    ]).
axiom(holds_at(doneBy(Event, Animal), Time),
   
    [ equals(Event, move(Animal, Position)),
      happens(Event, Time)
    ]).
axiom(holds_at(doneBy(Event, Animal), Time),
   
    [ equals(Event, open(Animal, Gate7)),
      happens(Event, Time)
    ]).
axiom(holds_at(doneBy(Event, Animal), Time),
   
    [ equals(Event, throwOff(Animal, Human1)),
      happens(Event, Time)
    ]).

 /*   if(holds_at(doneBy(Event, Animal), Time),
          (happens(Event, Time), (exists([Gate], Event=close(Animal, Gate));exists([Animal1], Event=getOff(Animal, Animal1));exists([Animal15], Event=mount(Animal, Animal15));exists([Position], Event=move(Animal, Position));exists([Gate7], Event=open(Animal, Gate7));exists([Human1], Event=throwOff(Animal, Human1))))).
 */

 /*  not(holds_at(doneBy(DoneBy_Param, Close_Param), Time9)) :-
       (   not(happens(DoneBy_Param, Time9))
       ;   not(equals(DoneBy_Param,
                      close(Close_Param, Close_Ret))),
           not(equals(DoneBy_Param,
                      getOff(Close_Param, GetOff_Ret))),
           not(equals(DoneBy_Param,
                      mount(Close_Param, Mount_Ret))),
           not(equals(DoneBy_Param, move(Close_Param, Move_Ret))),
           not(equals(DoneBy_Param, open(Close_Param, Open_Ret))),
           not(equals(DoneBy_Param,
                      throwOff(Close_Param, ThrowOff_Ret)))
       ).
 */
axiom(not(holds_at(doneBy(DoneBy_Param, Close_Param), Time9)),
    [not(happens(DoneBy_Param, Time9))]).
axiom(not(holds_at(doneBy(DoneBy_Param, Close_Param), Time9)),
   
    [ not(equals(DoneBy_Param, close(Close_Param, Close_Ret))),
      not(equals(DoneBy_Param,
                 getOff(Close_Param, GetOff_Ret))),
      not(equals(DoneBy_Param, mount(Close_Param, Mount_Ret))),
      not(equals(DoneBy_Param, move(Close_Param, Move_Ret))),
      not(equals(DoneBy_Param, open(Close_Param, Open_Ret))),
      not(equals(DoneBy_Param,
                 throwOff(Close_Param, ThrowOff_Ret)))
    ]).

 /*  happens(Happens_Param, Maptime) :-
       holds_at(doneBy(Happens_Param, DoneBy_Ret), Maptime).
 */
axiom(happens(Happens_Param, Maptime),
    [holds_at(doneBy(Happens_Param, DoneBy_Ret), Maptime)]).

 /*  equals(Equals_Param, close(Close_Param23, Close_Ret24)) :-
       ( not(equals(Equals_Param,
                    getOff(Close_Param23, GetOff_Ret25))),
         not(equals(Equals_Param,
                    mount(Close_Param23, Mount_Ret26))),
         not(equals(Equals_Param,
                    move(Close_Param23, Move_Ret27))),
         not(equals(Equals_Param,
                    open(Close_Param23, Open_Ret28))),
         not(equals(Equals_Param,
                    throwOff(Close_Param23, ThrowOff_Ret29)))
       ),
       holds_at(doneBy(Equals_Param, Close_Param23), Time21).
 */
axiom(equals(Equals_Param, close(Close_Param23, Close_Ret24)),
   
    [ not(equals(Equals_Param,
                 getOff(Close_Param23, GetOff_Ret25))),
      not(equals(Equals_Param,
                 mount(Close_Param23, Mount_Ret26))),
      not(equals(Equals_Param,
                 move(Close_Param23, Move_Ret27))),
      not(equals(Equals_Param,
                 open(Close_Param23, Open_Ret28))),
      not(equals(Equals_Param,
                 throwOff(Close_Param23, ThrowOff_Ret29))),
      holds_at(doneBy(Equals_Param, Close_Param23), Time21)
    ]).

 /*  equals(Equals_Param31, getOff(GetOff_Param, GetOff_Ret33)) :-
       ( not(equals(Equals_Param31,
                    mount(GetOff_Param, Mount_Ret34))),
         not(equals(Equals_Param31,
                    move(GetOff_Param, Move_Ret35))),
         not(equals(Equals_Param31,
                    open(GetOff_Param, Open_Ret36))),
         not(equals(Equals_Param31,
                    throwOff(GetOff_Param, ThrowOff_Ret37)))
       ),
       not(equals(Equals_Param31,
                  close(GetOff_Param, Close_Ret38))),
       holds_at(doneBy(Equals_Param31, GetOff_Param), Time30).
 */
axiom(equals(Equals_Param31, getOff(GetOff_Param, GetOff_Ret33)),
   
    [ not(equals(Equals_Param31,
                 mount(GetOff_Param, Mount_Ret34))),
      not(equals(Equals_Param31,
                 move(GetOff_Param, Move_Ret35))),
      not(equals(Equals_Param31,
                 open(GetOff_Param, Open_Ret36))),
      not(equals(Equals_Param31,
                 throwOff(GetOff_Param, ThrowOff_Ret37))),
      not(equals(Equals_Param31,
                 close(GetOff_Param, Close_Ret38))),
      holds_at(doneBy(Equals_Param31, GetOff_Param), Time30)
    ]).

 /*  equals(Equals_Param40, mount(Mount_Param, Mount_Ret42)) :-
       ( not(equals(Equals_Param40,
                    move(Mount_Param, Move_Ret43))),
         not(equals(Equals_Param40,
                    open(Mount_Param, Open_Ret44))),
         not(equals(Equals_Param40,
                    throwOff(Mount_Param, ThrowOff_Ret45)))
       ),
       not(equals(Equals_Param40,
                  getOff(Mount_Param, GetOff_Ret46))),
       not(equals(Equals_Param40,
                  close(Mount_Param, Close_Ret47))),
       holds_at(doneBy(Equals_Param40, Mount_Param), Time39).
 */
axiom(equals(Equals_Param40, mount(Mount_Param, Mount_Ret42)),
   
    [ not(equals(Equals_Param40,
                 move(Mount_Param, Move_Ret43))),
      not(equals(Equals_Param40,
                 open(Mount_Param, Open_Ret44))),
      not(equals(Equals_Param40,
                 throwOff(Mount_Param, ThrowOff_Ret45))),
      not(equals(Equals_Param40,
                 getOff(Mount_Param, GetOff_Ret46))),
      not(equals(Equals_Param40,
                 close(Mount_Param, Close_Ret47))),
      holds_at(doneBy(Equals_Param40, Mount_Param), Time39)
    ]).

 /*  equals(Equals_Param49, move(Move_Param, Move_Ret51)) :-
       ( not(equals(Equals_Param49, open(Move_Param, Open_Ret52))),
         not(equals(Equals_Param49,
                    throwOff(Move_Param, ThrowOff_Ret53)))
       ),
       not(equals(Equals_Param49, mount(Move_Param, Mount_Ret54))),
       not(equals(Equals_Param49,
                  getOff(Move_Param, GetOff_Ret55))),
       not(equals(Equals_Param49, close(Move_Param, Close_Ret56))),
       holds_at(doneBy(Equals_Param49, Move_Param), Time48).
 */
axiom(equals(Equals_Param49, move(Move_Param, Move_Ret51)),
   
    [ not(equals(Equals_Param49, open(Move_Param, Open_Ret52))),
      not(equals(Equals_Param49,
                 throwOff(Move_Param, ThrowOff_Ret53))),
      not(equals(Equals_Param49,
                 mount(Move_Param, Mount_Ret54))),
      not(equals(Equals_Param49,
                 getOff(Move_Param, GetOff_Ret55))),
      not(equals(Equals_Param49,
                 close(Move_Param, Close_Ret56))),
      holds_at(doneBy(Equals_Param49, Move_Param), Time48)
    ]).

 /*  equals(Equals_Param58, open(Open_Param, Open_Ret60)) :-
       not(equals(Equals_Param58,
                  throwOff(Open_Param, ThrowOff_Ret61))),
       not(equals(Equals_Param58, move(Open_Param, Move_Ret62))),
       not(equals(Equals_Param58, mount(Open_Param, Mount_Ret63))),
       not(equals(Equals_Param58,
                  getOff(Open_Param, GetOff_Ret64))),
       not(equals(Equals_Param58, close(Open_Param, Close_Ret65))),
       holds_at(doneBy(Equals_Param58, Open_Param), Time57).
 */
axiom(equals(Equals_Param58, open(Open_Param, Open_Ret60)),
   
    [ not(equals(Equals_Param58,
                 throwOff(Open_Param, ThrowOff_Ret61))),
      not(equals(Equals_Param58, move(Open_Param, Move_Ret62))),
      not(equals(Equals_Param58,
                 mount(Open_Param, Mount_Ret63))),
      not(equals(Equals_Param58,
                 getOff(Open_Param, GetOff_Ret64))),
      not(equals(Equals_Param58,
                 close(Open_Param, Close_Ret65))),
      holds_at(doneBy(Equals_Param58, Open_Param), Time57)
    ]).

 /*  equals(Equals_Param67, throwOff(ThrowOff_Param, ThrowOff_Ret69)) :-
       not(equals(Equals_Param67,
                  open(ThrowOff_Param, Open_Ret70))),
       not(equals(Equals_Param67,
                  move(ThrowOff_Param, Move_Ret71))),
       not(equals(Equals_Param67,
                  mount(ThrowOff_Param, Mount_Ret72))),
       not(equals(Equals_Param67,
                  getOff(ThrowOff_Param, GetOff_Ret73))),
       not(equals(Equals_Param67,
                  close(ThrowOff_Param, Close_Ret74))),
       holds_at(doneBy(Equals_Param67, ThrowOff_Param), Time66).
 */
axiom(equals(Equals_Param67, throwOff(ThrowOff_Param, ThrowOff_Ret69)),
   
    [ not(equals(Equals_Param67,
                 open(ThrowOff_Param, Open_Ret70))),
      not(equals(Equals_Param67,
                 move(ThrowOff_Param, Move_Ret71))),
      not(equals(Equals_Param67,
                 mount(ThrowOff_Param, Mount_Ret72))),
      not(equals(Equals_Param67,
                 getOff(ThrowOff_Param, GetOff_Ret73))),
      not(equals(Equals_Param67,
                 close(ThrowOff_Param, Close_Ret74))),
      holds_at(doneBy(Equals_Param67, ThrowOff_Param), Time66)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:84
% [event1,event2,animal,time]
% HoldsAt(DoneBy(event1,animal),time) &
% HoldsAt(DoneBy(event2,animal),time) ->
% event1=event2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:87
axiom(Event1=Event2,
   
    [ holds_at(doneBy(Event1, Animal), Time),
      holds_at(doneBy(Event2, Animal), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:89
% [animal]
 % Large(animal) <-> (Adult(animal) & LargeSpecies(Species(animal))).

 /*  large(Animal) <->
       adult(Animal),
       largeSpecies(species(Animal)).
 */
axiom(large(Animal),
    [adult(Animal), largeSpecies(species(Animal))]).

 /*   if(large(Animal),
          (adult(Animal), largeSpecies(species(Animal)))).
 */

 /*  not(large(Large_Ret)) :-
       (   not(adult(Large_Ret))
       ;   not(largeSpecies(species(Large_Ret)))
       ).
 */
axiom(not(large(Large_Ret)),
    [not(adult(Large_Ret))]).
axiom(not(large(Large_Ret)),
    [not(largeSpecies(species(Large_Ret)))]).

 /*  adult(Adult_Ret) :-
       large(Adult_Ret).
 */
axiom(adult(Adult_Ret),
    [large(Adult_Ret)]).

 /*  largeSpecies(species(Species_Ret)) :-
       large(Species_Ret).
 */
axiom(largeSpecies(species(Species_Ret)),
    [large(Species_Ret)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:91
% [position]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:91
% {position1} % position1!=% position & Neighbor(position,position1).

 /*   exists([Position1],
              (Position1\=Position, neighbor(Position, Position1))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_87'(Neighbor_Param))) :-
       (   not({dif(Some_Param, Neighbor_Param)})
       ;   not(neighbor(Neighbor_Param, Some_Param))
       ).
 */
axiom(not(some(Some_Param, '$kolem_Fn_87'(Neighbor_Param))),
    [not({dif(Some_Param, Neighbor_Param)})]).
axiom(not(some(Some_Param, '$kolem_Fn_87'(Neighbor_Param))),
    [not(neighbor(Neighbor_Param, Some_Param))]).

 /*  { dif(Dif_Param, Dif_Ret)
   } :-
       some(Dif_Param, '$kolem_Fn_87'(Dif_Ret)).
 */
axiom({ dif(Dif_Param, Dif_Ret)
},
    [some(Dif_Param, '$kolem_Fn_87'(Dif_Ret))]).

 /*  neighbor(Neighbor_Param7, Some_Param8) :-
       some(Some_Param8, '$kolem_Fn_87'(Neighbor_Param7)).
 */
axiom(neighbor(Neighbor_Param7, Some_Param8),
    [some(Some_Param8, '$kolem_Fn_87'(Neighbor_Param7))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:93
% [position]
 % !Neighbor(position,position).
 %  not(neighbor(Position,Position)).
axiom(not(neighbor(Neighbor_Param, Neighbor_Param)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:95
% [position1,position2]
% Neighbor(position1,position2) ->
% Neighbor(position2,position1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:97
axiom(neighbor(Position2, Position1),
    [neighbor(Position1, Position2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:99
% [cage]
 % cage!=% Outside.
diff(Cage,outside).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:101
% [position1,position2,gate]
% Sides(position1,position2,gate) <->
% ((Side1(gate)=position1 &
%   Side2(gate)=position2) |
%  (Side2(gate)=position1 &
%   Side1(gate)=position2)).

 /*  sides(Position1, Position2, Gate) <->
       (   side1(Gate)=Position1,
           side2(Gate)=Position2
       ;   side2(Gate)=Position1,
           side1(Gate)=Position2
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:106
axiom(sides(Position1, Position2, Gate),
   
    [ equals(side1(Gate), Position1),
      equals(side2(Gate), Position2)
    ]).
axiom(sides(Position1, Position2, Gate),
   
    [ equals(side2(Gate), Position1),
      equals(side1(Gate), Position2)
    ]).

 /*   if(sides(Position1, Position2, Gate),
          (side1(Gate)=Position1, side2(Gate)=Position2;side2(Gate)=Position1, side1(Gate)=Position2)).
 */

 /*  not(sides(Sides_Param, Equals_Ret, Sides_Ret)) :-
       (   not(equals(side1(Sides_Ret), Sides_Param))
       ;   not(equals(side2(Sides_Ret), Equals_Ret))
       ),
       (   not(equals(side2(Sides_Ret), Sides_Param))
       ;   not(equals(side1(Sides_Ret), Equals_Ret))
       ).
 */
axiom(not(sides(Sides_Param, Equals_Ret, Sides_Ret)),
   
    [ not(equals(side2(Sides_Ret), Sides_Param)),
      not(equals(side1(Sides_Ret), Sides_Param))
    ]).
axiom(not(sides(Sides_Param, Equals_Ret, Sides_Ret)),
   
    [ not(equals(side1(Sides_Ret), Equals_Ret)),
      not(equals(side1(Sides_Ret), Sides_Param))
    ]).
axiom(not(sides(Sides_Param, Equals_Ret, Sides_Ret)),
   
    [ not(equals(side2(Sides_Ret), Sides_Param)),
      not(equals(side2(Sides_Ret), Equals_Ret))
    ]).
axiom(not(sides(Sides_Param, Equals_Ret, Sides_Ret)),
   
    [ not(equals(side1(Sides_Ret), Equals_Ret)),
      not(equals(side2(Sides_Ret), Equals_Ret))
    ]).

 /*  equals(side1(Side1_Ret), Sides_Param6) :-
       (   not(equals(side2(Side1_Ret), Sides_Param6))
       ;   not(equals(side1(Side1_Ret), Equals_Ret8))
       ),
       sides(Sides_Param6, Equals_Ret8, Side1_Ret).
 */
axiom(equals(side1(Side1_Ret), Sides_Param6),
   
    [ not(equals(side2(Side1_Ret), Sides_Param6)),
      sides(Sides_Param6, Equals_Ret8, Side1_Ret)
    ]).
axiom(equals(side1(Side1_Ret), Sides_Param6),
   
    [ not(equals(side1(Side1_Ret), Equals_Ret8)),
      sides(Sides_Param6, Equals_Ret8, Side1_Ret)
    ]).

 /*  equals(side2(Side2_Ret), Equals_Ret10) :-
       (   not(equals(side2(Side2_Ret), Sides_Param9))
       ;   not(equals(side1(Side2_Ret), Equals_Ret10))
       ),
       sides(Sides_Param9, Equals_Ret10, Side2_Ret).
 */
axiom(equals(side2(Side2_Ret), Equals_Ret10),
   
    [ not(equals(side2(Side2_Ret), Sides_Param9)),
      sides(Sides_Param9, Equals_Ret10, Side2_Ret)
    ]).
axiom(equals(side2(Side2_Ret), Equals_Ret10),
   
    [ not(equals(side1(Side2_Ret), Equals_Ret10)),
      sides(Sides_Param9, Equals_Ret10, Side2_Ret)
    ]).

 /*  equals(side2(Side2_Ret13), Sides_Param12) :-
       (   not(equals(side1(Side2_Ret13), Sides_Param12))
       ;   not(equals(side2(Side2_Ret13), Equals_Ret14))
       ),
       sides(Sides_Param12, Equals_Ret14, Side2_Ret13).
 */
axiom(equals(side2(Side2_Ret13), Sides_Param12),
   
    [ not(equals(side1(Side2_Ret13), Sides_Param12)),
      sides(Sides_Param12, Equals_Ret14, Side2_Ret13)
    ]).
axiom(equals(side2(Side2_Ret13), Sides_Param12),
   
    [ not(equals(side2(Side2_Ret13), Equals_Ret14)),
      sides(Sides_Param12, Equals_Ret14, Side2_Ret13)
    ]).

 /*  equals(side1(Side1_Ret17), Equals_Ret16) :-
       (   not(equals(side1(Side1_Ret17), Sides_Param15))
       ;   not(equals(side2(Side1_Ret17), Equals_Ret16))
       ),
       sides(Sides_Param15, Equals_Ret16, Side1_Ret17).
 */
axiom(equals(side1(Side1_Ret17), Equals_Ret16),
   
    [ not(equals(side1(Side1_Ret17), Sides_Param15)),
      sides(Sides_Param15, Equals_Ret16, Side1_Ret17)
    ]).
axiom(equals(side1(Side1_Ret17), Equals_Ret16),
   
    [ not(equals(side2(Side1_Ret17), Equals_Ret16)),
      sides(Sides_Param15, Equals_Ret16, Side1_Ret17)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:108
% [gate]
 % Loc(Side1(gate))!=Loc(Side2(gate)).
diff(loc(side1(Gate)),loc(side2(Gate))).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:110
% [position1,position2,gate1,gate2]
% Sides(position1,position2,gate1) &
% Sides(position1,position2,gate2) ->
% gate1=gate2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:113
axiom(Gate1=Gate2,
   
    [ sides(Position1, Position2, Gate1),
      sides(Position1, Position2, Gate2)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:115
% [position1,position2,gate]
% Sides(position1,position2,gate) ->
% Neighbor(position1,position2).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:117
axiom(neighbor(Position1, Position2),
    [sides(Position1, Position2, Gate)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:119
% [position1,position2]
% Loc(position1) != Loc(position2) &
% Neighbor(position1,position2) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:122
% {gate}%  Sides(position1,position2,gate).

 /*   exists([Gate],
             if((loc(Position1)\=loc(Position2), neighbor(Position1, Position2)),
                sides(Position1, Position2, Gate))).
 */

 /*  sides(Sides_Param, Loc_Ret, Some_Param) :-
       ( { dif(loc(Sides_Param), loc(Loc_Ret))
         },
         neighbor(Sides_Param, Loc_Ret)
       ),
       some(Some_Param, '$kolem_Fn_88'(Sides_Param, Loc_Ret)).
 */
axiom(sides(Sides_Param, Loc_Ret, Some_Param),
   
    [ { dif(loc(Sides_Param), loc(Loc_Ret))
      },
      neighbor(Sides_Param, Loc_Ret),
      some(Some_Param, '$kolem_Fn_88'(Sides_Param, Loc_Ret))
    ]).

 /*  not({dif(loc(Neighbor_Param), loc(Loc_Ret9))}) :-
       neighbor(Neighbor_Param, Loc_Ret9),
       not(sides(Neighbor_Param, Loc_Ret9, Some_Param8)),
       some(Some_Param8, '$kolem_Fn_88'(Neighbor_Param, Loc_Ret9)).
 */
axiom(not({dif(loc(Neighbor_Param), loc(Loc_Ret9))}),
   
    [ neighbor(Neighbor_Param, Loc_Ret9),
      not(sides(Neighbor_Param, Loc_Ret9, Some_Param8)),
      some(Some_Param8,
           '$kolem_Fn_88'(Neighbor_Param, Loc_Ret9))
    ]).

 /*  not(neighbor(Neighbor_Param10, Neighbor_Ret)) :-
       { dif(loc(Neighbor_Param10), loc(Neighbor_Ret))
       },
       not(sides(Neighbor_Param10, Neighbor_Ret, Some_Param11)),
       some(Some_Param11,
            '$kolem_Fn_88'(Neighbor_Param10, Neighbor_Ret)).
 */
axiom(not(neighbor(Neighbor_Param10, Neighbor_Ret)),
   
    [ { dif(loc(Neighbor_Param10), loc(Neighbor_Ret))
      },
      not(sides(Neighbor_Param10, Neighbor_Ret, Some_Param11)),
      some(Some_Param11,
           '$kolem_Fn_88'(Neighbor_Param10, Neighbor_Ret))
    ]).

 /*  not(some(Some_Param13, '$kolem_Fn_88'(Fn_88_Param, Fn_88_Ret))) :-
       not(sides(Fn_88_Param, Fn_88_Ret, Some_Param13)),
       { dif(loc(Fn_88_Param), loc(Fn_88_Ret))
       },
       neighbor(Fn_88_Param, Fn_88_Ret).
 */
axiom(not(some(Some_Param13, '$kolem_Fn_88'(Fn_88_Param, Fn_88_Ret))),
   
    [ not(sides(Fn_88_Param, Fn_88_Ret, Some_Param13)),
      { dif(loc(Fn_88_Param), loc(Fn_88_Ret))
      },
      neighbor(Fn_88_Param, Fn_88_Ret)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:124
% [animal,position1,position2,time]
% HoldsAt(Pos(animal,position1),time) &
% HoldsAt(Pos(animal,position2),time) ->
% position1=position2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:127
axiom(Position1=Position2,
   
    [ holds_at(pos(Animal, Position1), Time),
      holds_at(pos(Animal, Position2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:129
% [animal,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:130
% {position} % HoldsAt(Pos(animal,position),time).

 /*  exists([Position],
          holds_at(pos(Animal,Position),Time)).
 */

 /*  holds_at(pos(Pos_Param, Some_Param), Time4) :-
       some(Some_Param, '$kolem_Fn_89'(Pos_Param, Time4)).
 */
axiom(holds_at(pos(Pos_Param, Some_Param), Time4),
    [some(Some_Param, '$kolem_Fn_89'(Pos_Param, Time4))]).

 /*  not(some(Some_Param8, '$kolem_Fn_89'(Fn_89_Param, Time7))) :-
       not(holds_at(pos(Fn_89_Param, Some_Param8), Time7)).
 */
axiom(not(some(Some_Param8, '$kolem_Fn_89'(Fn_89_Param, Time7))),
    [not(holds_at(pos(Fn_89_Param, Some_Param8), Time7))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:132
% [animal1,animal2,position,time]
% (animal1!=animal2 &
%  Large(animal1) &
%  Large(animal2) &
%  HoldsAt(Pos(animal1,position),time) &
%  HoldsAt(Pos(animal2,position),time)) ->
% (({human} human=animal1 & HoldsAt(Mounted(human,animal2),time)) |
%  ({human} human=animal2 & HoldsAt(Mounted(human,animal1),time))).

 /*   if(({dif(Animal1, Animal2)}, large(Animal1), large(Animal2), holds_at(pos(Animal1, Position), Time), holds_at(pos(Animal2, Position), Time)),
          (exists([Human],  (Human=Animal1, holds_at(mounted(Human, Animal2), Time)));exists([Human5],  (Human5=Animal2, holds_at(mounted(Human5, Animal1), Time))))).
 */

 /*  not({dif(Dif_Param, Pos_Param)}) :-
       ( large(Dif_Param),
         large(Pos_Param),
         holds_at(pos(Dif_Param, Pos_Ret), Time6),
         holds_at(pos(Pos_Param, Pos_Ret), Time6)
       ),
       (   not(equals(Equals_Param, Dif_Param))
       ;   not(holds_at(mounted(Equals_Param, Pos_Param), Time6))
       ),
       (   not(equals(Equals_Param10, Pos_Param))
       ;   not(holds_at(mounted(Equals_Param10, Dif_Param),
                        Time6))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:139
axiom(not({dif(Dif_Param, Pos_Param)}),
   
    [ not(equals(Equals_Param10, Pos_Param)),
      not(equals(Equals_Param, Dif_Param)),
      large(Dif_Param),
      large(Pos_Param),
      holds_at(pos(Dif_Param, Pos_Ret), Time6),
      holds_at(pos(Pos_Param, Pos_Ret), Time6)
    ]).
axiom(not({dif(Dif_Param, Pos_Param)}),
   
    [ not(holds_at(mounted(Equals_Param10, Dif_Param), Time6)),
      not(equals(Equals_Param, Dif_Param)),
      large(Dif_Param),
      large(Pos_Param),
      holds_at(pos(Dif_Param, Pos_Ret), Time6),
      holds_at(pos(Pos_Param, Pos_Ret), Time6)
    ]).
axiom(not({dif(Dif_Param, Pos_Param)}),
   
    [ not(equals(Equals_Param10, Pos_Param)),
      not(holds_at(mounted(Equals_Param, Pos_Param), Time6)),
      large(Dif_Param),
      large(Pos_Param),
      holds_at(pos(Dif_Param, Pos_Ret), Time6),
      holds_at(pos(Pos_Param, Pos_Ret), Time6)
    ]).
axiom(not({dif(Dif_Param, Pos_Param)}),
   
    [ not(holds_at(mounted(Equals_Param10, Dif_Param), Time6)),
      not(holds_at(mounted(Equals_Param, Pos_Param), Time6)),
      large(Dif_Param),
      large(Pos_Param),
      holds_at(pos(Dif_Param, Pos_Ret), Time6),
      holds_at(pos(Pos_Param, Pos_Ret), Time6)
    ]).

 /*  not(large(Pos_Param13)) :-
       ( large(Pos_Param14),
         holds_at(pos(Pos_Param13, Pos_Ret17), Time12),
         holds_at(pos(Pos_Param14, Pos_Ret17), Time12)
       ),
       { dif(Pos_Param13, Pos_Param14)
       },
       (   not(equals(Equals_Param15, Pos_Param13))
       ;   not(holds_at(mounted(Equals_Param15, Pos_Param14),
                        Time12))
       ),
       (   not(equals(Equals_Param16, Pos_Param14))
       ;   not(holds_at(mounted(Equals_Param16, Pos_Param13),
                        Time12))
       ).
 */
axiom(not(large(Pos_Param13)),
   
    [ not(equals(Equals_Param16, Pos_Param14)),
      not(equals(Equals_Param15, Pos_Param13)),
      large(Pos_Param14),
      holds_at(pos(Pos_Param13, Pos_Ret17), Time12),
      holds_at(pos(Pos_Param14, Pos_Ret17), Time12),
      { dif(Pos_Param13, Pos_Param14)
      }
    ]).
axiom(not(large(Pos_Param13)),
   
    [ not(holds_at(mounted(Equals_Param16, Pos_Param13),
                   Time12)),
      not(equals(Equals_Param15, Pos_Param13)),
      large(Pos_Param14),
      holds_at(pos(Pos_Param13, Pos_Ret17), Time12),
      holds_at(pos(Pos_Param14, Pos_Ret17), Time12),
      { dif(Pos_Param13, Pos_Param14)
      }
    ]).
axiom(not(large(Pos_Param13)),
   
    [ not(equals(Equals_Param16, Pos_Param14)),
      not(holds_at(mounted(Equals_Param15, Pos_Param14),
                   Time12)),
      large(Pos_Param14),
      holds_at(pos(Pos_Param13, Pos_Ret17), Time12),
      holds_at(pos(Pos_Param14, Pos_Ret17), Time12),
      { dif(Pos_Param13, Pos_Param14)
      }
    ]).
axiom(not(large(Pos_Param13)),
   
    [ not(holds_at(mounted(Equals_Param16, Pos_Param13),
                   Time12)),
      not(holds_at(mounted(Equals_Param15, Pos_Param14),
                   Time12)),
      large(Pos_Param14),
      holds_at(pos(Pos_Param13, Pos_Ret17), Time12),
      holds_at(pos(Pos_Param14, Pos_Ret17), Time12),
      { dif(Pos_Param13, Pos_Param14)
      }
    ]).

 /*  not(large(Pos_Param20)) :-
       ( holds_at(pos(Pos_Param19, Pos_Ret23), Time18),
         holds_at(pos(Pos_Param20, Pos_Ret23), Time18)
       ),
       large(Pos_Param19),
       { dif(Pos_Param19, Pos_Param20)
       },
       (   not(equals(Equals_Param21, Pos_Param19))
       ;   not(holds_at(mounted(Equals_Param21, Pos_Param20),
                        Time18))
       ),
       (   not(equals(Equals_Param22, Pos_Param20))
       ;   not(holds_at(mounted(Equals_Param22, Pos_Param19),
                        Time18))
       ).
 */
axiom(not(large(Pos_Param20)),
   
    [ not(equals(Equals_Param22, Pos_Param20)),
      not(equals(Equals_Param21, Pos_Param19)),
      holds_at(pos(Pos_Param19, Pos_Ret23), Time18),
      holds_at(pos(Pos_Param20, Pos_Ret23), Time18),
      large(Pos_Param19),
      { dif(Pos_Param19, Pos_Param20)
      }
    ]).
axiom(not(large(Pos_Param20)),
   
    [ not(holds_at(mounted(Equals_Param22, Pos_Param19),
                   Time18)),
      not(equals(Equals_Param21, Pos_Param19)),
      holds_at(pos(Pos_Param19, Pos_Ret23), Time18),
      holds_at(pos(Pos_Param20, Pos_Ret23), Time18),
      large(Pos_Param19),
      { dif(Pos_Param19, Pos_Param20)
      }
    ]).
axiom(not(large(Pos_Param20)),
   
    [ not(equals(Equals_Param22, Pos_Param20)),
      not(holds_at(mounted(Equals_Param21, Pos_Param20),
                   Time18)),
      holds_at(pos(Pos_Param19, Pos_Ret23), Time18),
      holds_at(pos(Pos_Param20, Pos_Ret23), Time18),
      large(Pos_Param19),
      { dif(Pos_Param19, Pos_Param20)
      }
    ]).
axiom(not(large(Pos_Param20)),
   
    [ not(holds_at(mounted(Equals_Param22, Pos_Param19),
                   Time18)),
      not(holds_at(mounted(Equals_Param21, Pos_Param20),
                   Time18)),
      holds_at(pos(Pos_Param19, Pos_Ret23), Time18),
      holds_at(pos(Pos_Param20, Pos_Ret23), Time18),
      large(Pos_Param19),
      { dif(Pos_Param19, Pos_Param20)
      }
    ]).

 /*  not(holds_at(pos(Pos_Param25, Pos_Ret29), Time24)) :-
       holds_at(pos(Pos_Param26, Pos_Ret29), Time24),
       large(Pos_Param26),
       large(Pos_Param25),
       { dif(Pos_Param25, Pos_Param26)
       },
       (   not(equals(Equals_Param27, Pos_Param25))
       ;   not(holds_at(mounted(Equals_Param27, Pos_Param26),
                        Time24))
       ),
       (   not(equals(Equals_Param28, Pos_Param26))
       ;   not(holds_at(mounted(Equals_Param28, Pos_Param25),
                        Time24))
       ).
 */
axiom(not(holds_at(pos(Pos_Param25, Pos_Ret29), Time24)),
   
    [ not(equals(Equals_Param28, Pos_Param26)),
      not(equals(Equals_Param27, Pos_Param25)),
      holds_at(pos(Pos_Param26, Pos_Ret29), Time24),
      large(Pos_Param26),
      large(Pos_Param25),
      dif(Pos_Param25, Pos_Param26)
    ]).
axiom(not(holds_at(pos(Pos_Param25, Pos_Ret29), Time24)),
   
    [ not(holds_at(mounted(Equals_Param28, Pos_Param25),
                   Time24)),
      not(equals(Equals_Param27, Pos_Param25)),
      holds_at(pos(Pos_Param26, Pos_Ret29), Time24),
      large(Pos_Param26),
      large(Pos_Param25),
      dif(Pos_Param25, Pos_Param26)
    ]).
axiom(not(holds_at(pos(Pos_Param25, Pos_Ret29), Time24)),
   
    [ not(equals(Equals_Param28, Pos_Param26)),
      not(holds_at(mounted(Equals_Param27, Pos_Param26),
                   Time24)),
      holds_at(pos(Pos_Param26, Pos_Ret29), Time24),
      large(Pos_Param26),
      large(Pos_Param25),
      dif(Pos_Param25, Pos_Param26)
    ]).
axiom(not(holds_at(pos(Pos_Param25, Pos_Ret29), Time24)),
   
    [ not(holds_at(mounted(Equals_Param28, Pos_Param25),
                   Time24)),
      not(holds_at(mounted(Equals_Param27, Pos_Param26),
                   Time24)),
      holds_at(pos(Pos_Param26, Pos_Ret29), Time24),
      large(Pos_Param26),
      large(Pos_Param25),
      dif(Pos_Param25, Pos_Param26)
    ]).

 /*  not(holds_at(pos(Pos_Param31, Pos_Ret35), Time30)) :-
       holds_at(pos(Pos_Param32, Pos_Ret35), Time30),
       large(Pos_Param31),
       large(Pos_Param32),
       { dif(Pos_Param32, Pos_Param31)
       },
       (   not(equals(Equals_Param33, Pos_Param32))
       ;   not(holds_at(mounted(Equals_Param33, Pos_Param31),
                        Time30))
       ),
       (   not(equals(Equals_Param34, Pos_Param31))
       ;   not(holds_at(mounted(Equals_Param34, Pos_Param32),
                        Time30))
       ).
 */
axiom(not(holds_at(pos(Pos_Param31, Pos_Ret35), Time30)),
   
    [ not(equals(Equals_Param34, Pos_Param31)),
      not(equals(Equals_Param33, Pos_Param32)),
      holds_at(pos(Pos_Param32, Pos_Ret35), Time30),
      large(Pos_Param31),
      large(Pos_Param32),
      dif(Pos_Param32, Pos_Param31)
    ]).
axiom(not(holds_at(pos(Pos_Param31, Pos_Ret35), Time30)),
   
    [ not(holds_at(mounted(Equals_Param34, Pos_Param32),
                   Time30)),
      not(equals(Equals_Param33, Pos_Param32)),
      holds_at(pos(Pos_Param32, Pos_Ret35), Time30),
      large(Pos_Param31),
      large(Pos_Param32),
      dif(Pos_Param32, Pos_Param31)
    ]).
axiom(not(holds_at(pos(Pos_Param31, Pos_Ret35), Time30)),
   
    [ not(equals(Equals_Param34, Pos_Param31)),
      not(holds_at(mounted(Equals_Param33, Pos_Param31),
                   Time30)),
      holds_at(pos(Pos_Param32, Pos_Ret35), Time30),
      large(Pos_Param31),
      large(Pos_Param32),
      dif(Pos_Param32, Pos_Param31)
    ]).
axiom(not(holds_at(pos(Pos_Param31, Pos_Ret35), Time30)),
   
    [ not(holds_at(mounted(Equals_Param34, Pos_Param32),
                   Time30)),
      not(holds_at(mounted(Equals_Param33, Pos_Param31),
                   Time30)),
      holds_at(pos(Pos_Param32, Pos_Ret35), Time30),
      large(Pos_Param31),
      large(Pos_Param32),
      dif(Pos_Param32, Pos_Param31)
    ]).

 /*  equals(Equals_Param37, Dif_Param39) :-
       (   not(equals(Equals_Param38, Pos_Param40))
       ;   not(holds_at(mounted(Equals_Param38, Dif_Param39),
                        Time36))
       ),
       { dif(Dif_Param39, Pos_Param40)
       },
       large(Dif_Param39),
       large(Pos_Param40),
       holds_at(pos(Dif_Param39, Pos_Ret41), Time36),
       holds_at(pos(Pos_Param40, Pos_Ret41), Time36).
 */
axiom(equals(Equals_Param37, Dif_Param39),
   
    [ not(equals(Equals_Param38, Pos_Param40)),
      { dif(Dif_Param39, Pos_Param40)
      },
      large(Dif_Param39),
      large(Pos_Param40),
      holds_at(pos(Dif_Param39, Pos_Ret41), Time36),
      holds_at(pos(Pos_Param40, Pos_Ret41), Time36)
    ]).
axiom(equals(Equals_Param37, Dif_Param39),
   
    [ not(holds_at(mounted(Equals_Param38, Dif_Param39),
                   Time36)),
      { dif(Dif_Param39, Pos_Param40)
      },
      large(Dif_Param39),
      large(Pos_Param40),
      holds_at(pos(Dif_Param39, Pos_Ret41), Time36),
      holds_at(pos(Pos_Param40, Pos_Ret41), Time36)
    ]).

 /*  holds_at(mounted(Mounted_Param, Pos_Param46), Time42) :-
       (   not(equals(Equals_Param44, Pos_Param46))
       ;   not(holds_at(mounted(Equals_Param44, Dif_Param45),
                        Time42))
       ),
       { dif(Dif_Param45, Pos_Param46)
       },
       large(Dif_Param45),
       large(Pos_Param46),
       holds_at(pos(Dif_Param45, Pos_Ret47), Time42),
       holds_at(pos(Pos_Param46, Pos_Ret47), Time42).
 */
axiom(holds_at(mounted(Mounted_Param, Pos_Param46), Time42),
   
    [ not(equals(Equals_Param44, Pos_Param46)),
      dif(Dif_Param45, Pos_Param46),
      large(Dif_Param45),
      large(Pos_Param46),
      holds_at(pos(Dif_Param45, Pos_Ret47), Time42),
      holds_at(pos(Pos_Param46, Pos_Ret47), Time42)
    ]).
axiom(holds_at(mounted(Mounted_Param, Pos_Param46), Time42),
   
    [ not(holds_at(mounted(Equals_Param44, Dif_Param45),
                   Time42)),
      dif(Dif_Param45, Pos_Param46),
      large(Dif_Param45),
      large(Pos_Param46),
      holds_at(pos(Dif_Param45, Pos_Ret47), Time42),
      holds_at(pos(Pos_Param46, Pos_Ret47), Time42)
    ]).

 /*  equals(Equals_Param49, Pos_Param52) :-
       (   not(equals(Equals_Param50, Dif_Param51))
       ;   not(holds_at(mounted(Equals_Param50, Pos_Param52),
                        Time48))
       ),
       { dif(Dif_Param51, Pos_Param52)
       },
       large(Dif_Param51),
       large(Pos_Param52),
       holds_at(pos(Dif_Param51, Pos_Ret53), Time48),
       holds_at(pos(Pos_Param52, Pos_Ret53), Time48).
 */
axiom(equals(Equals_Param49, Pos_Param52),
   
    [ not(equals(Equals_Param50, Dif_Param51)),
      { dif(Dif_Param51, Pos_Param52)
      },
      large(Dif_Param51),
      large(Pos_Param52),
      holds_at(pos(Dif_Param51, Pos_Ret53), Time48),
      holds_at(pos(Pos_Param52, Pos_Ret53), Time48)
    ]).
axiom(equals(Equals_Param49, Pos_Param52),
   
    [ not(holds_at(mounted(Equals_Param50, Pos_Param52),
                   Time48)),
      { dif(Dif_Param51, Pos_Param52)
      },
      large(Dif_Param51),
      large(Pos_Param52),
      holds_at(pos(Dif_Param51, Pos_Ret53), Time48),
      holds_at(pos(Pos_Param52, Pos_Ret53), Time48)
    ]).

 /*  holds_at(mounted(Mounted_Param55, Dif_Param57), Time54) :-
       (   not(equals(Equals_Param56, Dif_Param57))
       ;   not(holds_at(mounted(Equals_Param56, Pos_Param58),
                        Time54))
       ),
       { dif(Dif_Param57, Pos_Param58)
       },
       large(Dif_Param57),
       large(Pos_Param58),
       holds_at(pos(Dif_Param57, Pos_Ret59), Time54),
       holds_at(pos(Pos_Param58, Pos_Ret59), Time54).
 */
axiom(holds_at(mounted(Mounted_Param55, Dif_Param57), Time54),
   
    [ not(equals(Equals_Param56, Dif_Param57)),
      dif(Dif_Param57, Pos_Param58),
      large(Dif_Param57),
      large(Pos_Param58),
      holds_at(pos(Dif_Param57, Pos_Ret59), Time54),
      holds_at(pos(Pos_Param58, Pos_Ret59), Time54)
    ]).
axiom(holds_at(mounted(Mounted_Param55, Dif_Param57), Time54),
   
    [ not(holds_at(mounted(Equals_Param56, Pos_Param58),
                   Time54)),
      dif(Dif_Param57, Pos_Param58),
      large(Dif_Param57),
      large(Pos_Param58),
      holds_at(pos(Dif_Param57, Pos_Ret59), Time54),
      holds_at(pos(Pos_Param58, Pos_Ret59), Time54)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:141
% [human,position1,position2,time]
% HoldsAt(PosDeterminingFluent(human,position1),time) &
% HoldsAt(PosDeterminingFluent(human,position2),time) ->
% position1=position2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:144
axiom(Position1=Position2,
   
    [ holds_at(posDeterminingFluent(Human, Position1), Time),
      holds_at(posDeterminingFluent(Human, Position2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:146
% [animal,position,time]
% Initiates(Move(animal,position),Pos(animal,position),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:147
axiom(initiates(move(Animal, Position), pos(Animal, Position), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:149
% [animal,position1,position2,time]
% HoldsAt(Pos(animal,position1),time) ->
% Terminates(Move(animal,position2),Pos(animal,position1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:151
axiom(terminates(move(Animal, Position2), pos(Animal, Position1), Time),
    [holds_at(pos(Animal, Position1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:153
% [animal,position,time]
% Happens(Move(animal,position),time) ->
% !HoldsAt(Pos(animal,position),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:155
axiom(requires(move(Animal, Position), Time),
    [not(holds_at(pos(Animal, Position), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:157
% [human,position,time]
% Happens(Move(human,position),time) ->
% !{animal} HoldsAt(Mounted(human,animal),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:159
axiom(requires(move(Human, Position), Time),
    [not(holds_at(mounted(Human, Animal), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:161
% [human,gate,time]
% Initiates(Open(human,gate),Opened(gate),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:162
axiom(initiates(open(Human, Gate), opened(Gate), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:164
% [human,gate,time]
% Happens(Open(human,gate),time) ->
% !HoldsAt(Opened(gate),time) &
% (!{animal} HoldsAt(Mounted(human,animal),time)) &
% ({position}
%  (Side1(gate)=position | Side2(gate)=position) &
%  HoldsAt(Pos(human,position),time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:170
axiom(requires(open(Human, Gate), Time),
   
    [ equals(side1(Gate), Position),
      not(holds_at(opened(Gate), Time)),
      not(holds_at(mounted(Human, Animal), Time)),
      holds_at(pos(Human, Position), Time)
    ]).
axiom(requires(open(Human, Gate), Time),
   
    [ equals(side2(Gate), Position),
      not(holds_at(opened(Gate), Time)),
      not(holds_at(mounted(Human, Animal), Time)),
      holds_at(pos(Human, Position), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:172
% [human,gate,time]
% Terminates(Close(human,gate),Opened(gate),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:173
axiom(terminates(close(Human, Gate), opened(Gate), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:175
% [human,gate,time]
% Happens(Close(human,gate),time) ->
% HoldsAt(Opened(gate),time) &
% (!{animal} HoldsAt(Mounted(human,animal),time)) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:179
% {position}% 
% (Side1(gate)=position | Side2(gate)=position) &
% HoldsAt(Pos(human,position),time).

 /*   exists([Position],
             if(happens(close(Human, Gate), Time),
                 (holds_at(opened(Gate), Time), not(exists([Animal], holds_at(mounted(Human, Animal), Time))), (side1(Gate)=Position;side2(Gate)=Position), holds_at(pos(Human, Position), Time)))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_95'(Fn_95_Param, Close_Ret, Maptime, Fn_95_Ret))) :-
       happens(close(Fn_95_Param, Close_Ret), Maptime),
       (   not(holds_at(opened(Close_Ret), Maptime))
       ;   holds_at(mounted(Fn_95_Param, Fn_95_Ret), Maptime)
       ;   not(equals(side1(Close_Ret), Some_Param)),
           not(equals(side2(Close_Ret), Some_Param))
       ;   not(holds_at(pos(Fn_95_Param, Some_Param), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:181
axiom(not(some(Some_Param, '$kolem_Fn_95'(Fn_95_Param, Close_Ret, Maptime, Fn_95_Ret))),
   
    [ not(holds_at(opened(Close_Ret), Maptime)),
      happens(close(Fn_95_Param, Close_Ret), Maptime)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_95'(Fn_95_Param, Close_Ret, Maptime, Fn_95_Ret))),
   
    [ holds_at(mounted(Fn_95_Param, Fn_95_Ret), Maptime),
      happens(close(Fn_95_Param, Close_Ret), Maptime)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_95'(Fn_95_Param, Close_Ret, Maptime, Fn_95_Ret))),
   
    [ not(equals(side1(Close_Ret), Some_Param)),
      not(equals(side2(Close_Ret), Some_Param)),
      happens(close(Fn_95_Param, Close_Ret), Maptime)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_95'(Fn_95_Param, Close_Ret, Maptime, Fn_95_Ret))),
   
    [ not(holds_at(pos(Fn_95_Param, Some_Param), Maptime)),
      happens(close(Fn_95_Param, Close_Ret), Maptime)
    ]).

 /*  not(happens(close(Close_Param, Close_Ret14), Maptime11)) :-
       (   not(holds_at(opened(Close_Ret14), Maptime11))
       ;   holds_at(mounted(Close_Param, Mounted_Ret), Maptime11)
       ;   not(equals(side1(Close_Ret14), Some_Param13)),
           not(equals(side2(Close_Ret14), Some_Param13))
       ;   not(holds_at(pos(Close_Param, Some_Param13),
                        Maptime11))
       ),
       some(Some_Param13,
            '$kolem_Fn_95'(Close_Param,
                           Close_Ret14,
                           Maptime11,
                           Mounted_Ret)).
 */
axiom(not(happens(close(Close_Param, Close_Ret14), Maptime11)),
   
    [ not(holds_at(opened(Close_Ret14), Maptime11)),
      some(Some_Param13,
           '$kolem_Fn_95'(Close_Param,
                          Close_Ret14,
                          Maptime11,
                          Mounted_Ret))
    ]).
axiom(not(happens(close(Close_Param, Close_Ret14), Maptime11)),
   
    [ holds_at(mounted(Close_Param, Mounted_Ret), Maptime11),
      some(Some_Param13,
           '$kolem_Fn_95'(Close_Param,
                          Close_Ret14,
                          Maptime11,
                          Mounted_Ret))
    ]).
axiom(not(happens(close(Close_Param, Close_Ret14), Maptime11)),
   
    [ not(equals(side1(Close_Ret14), Some_Param13)),
      not(equals(side2(Close_Ret14), Some_Param13)),
      some(Some_Param13,
           '$kolem_Fn_95'(Close_Param,
                          Close_Ret14,
                          Maptime11,
                          Mounted_Ret))
    ]).
axiom(not(happens(close(Close_Param, Close_Ret14), Maptime11)),
   
    [ not(holds_at(pos(Close_Param, Some_Param13), Maptime11)),
      some(Some_Param13,
           '$kolem_Fn_95'(Close_Param,
                          Close_Ret14,
                          Maptime11,
                          Mounted_Ret))
    ]).

 /*  holds_at(opened(Opened_Ret), Time16) :-
       happens(close(Close_Param17, Opened_Ret), Time16),
       some(Some_Param18,
            '$kolem_Fn_95'(Close_Param17,
                           Opened_Ret,
                           Time16,
                           Fn_95_Ret20)).
 */
axiom(holds_at(opened(Opened_Ret), Time16),
   
    [ happens(close(Close_Param17, Opened_Ret), Time16),
      some(Some_Param18,
           '$kolem_Fn_95'(Close_Param17,
                          Opened_Ret,
                          Time16,
                          Fn_95_Ret20))
    ]).

 /*  not(holds_at(mounted(Mounted_Param, Mounted_Ret24), Time21)) :-
       happens(close(Mounted_Param, Close_Ret25), Time21),
       some(Some_Param23,
            '$kolem_Fn_95'(Mounted_Param,
                           Close_Ret25,
                           Time21,
                           Mounted_Ret24)).
 */
axiom(not(holds_at(mounted(Mounted_Param, Mounted_Ret24), Time21)),
   
    [ happens(close(Mounted_Param, Close_Ret25), Time21),
      some(Some_Param23,
           '$kolem_Fn_95'(Mounted_Param,
                          Close_Ret25,
                          Time21,
                          Mounted_Ret24))
    ]).

 /*  equals(side1(Side1_Ret), Some_Param28) :-
       not(equals(side2(Side1_Ret), Some_Param28)),
       happens(close(Close_Param27, Side1_Ret), Maptime26),
       some(Some_Param28,
            '$kolem_Fn_95'(Close_Param27,
                           Side1_Ret,
                           Maptime26,
                           Fn_95_Ret30)).
 */
axiom(equals(side1(Side1_Ret), Some_Param28),
   
    [ not(equals(side2(Side1_Ret), Some_Param28)),
      happens(close(Close_Param27, Side1_Ret), Maptime26),
      some(Some_Param28,
           '$kolem_Fn_95'(Close_Param27,
                          Side1_Ret,
                          Maptime26,
                          Fn_95_Ret30))
    ]).

 /*  equals(side2(Side2_Ret), Some_Param33) :-
       not(equals(side1(Side2_Ret), Some_Param33)),
       happens(close(Close_Param32, Side2_Ret), Maptime31),
       some(Some_Param33,
            '$kolem_Fn_95'(Close_Param32,
                           Side2_Ret,
                           Maptime31,
                           Fn_95_Ret35)).
 */
axiom(equals(side2(Side2_Ret), Some_Param33),
   
    [ not(equals(side1(Side2_Ret), Some_Param33)),
      happens(close(Close_Param32, Side2_Ret), Maptime31),
      some(Some_Param33,
           '$kolem_Fn_95'(Close_Param32,
                          Side2_Ret,
                          Maptime31,
                          Fn_95_Ret35))
    ]).

 /*  holds_at(pos(Pos_Param, Some_Param38), Time36) :-
       happens(close(Pos_Param, Close_Ret39), Time36),
       some(Some_Param38,
            '$kolem_Fn_95'(Pos_Param,
                           Close_Ret39,
                           Time36,
                           Fn_95_Ret40)).
 */
axiom(holds_at(pos(Pos_Param, Some_Param38), Time36),
   
    [ happens(close(Pos_Param, Close_Ret39), Time36),
      some(Some_Param38,
           '$kolem_Fn_95'(Pos_Param,
                          Close_Ret39,
                          Time36,
                          Fn_95_Ret40))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:183
% [human,animal,position,time]
% HoldsAt(Mounted(human,animal),time) &
% HoldsAt(Pos(animal,position),time) ->
% HoldsAt(Pos(human,position),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:186
axiom(holds_at(pos(Human, Position), Time),
   
    [ holds_at(mounted(Human, Animal), Time),
      holds_at(pos(Animal, Position), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:188
% [animal,time]
% HoldsAt(Moves(animal),time) <->
% ({position}
%  HoldsAt(Pos(animal,position),time) &
%  !HoldsAt(Pos(animal,position),time+1)).

 /*  holds_at(moves(Animal), Time) <->
       exists([Position],
               (holds_at(pos(Animal, Position), Time), not(holds_at(pos(Animal, Position), Time+1)))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:192
axiom(holds_at(moves(Animal), t),
   
    [ holds_at(pos(Animal, Position), t),
      not(holds_at(pos(Animal, Position), start)),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*   if(holds_at(moves(Animal), t),
         exists([Position],
                 (holds_at(pos(Animal, Position), t), not(holds_at(pos(Animal, Position), t+1))))).
 */

 /*  not(holds_at(moves(Pos_Param), t)) :-
       (   not(holds_at(pos(Pos_Param, Pos_Ret), t))
       ;   holds_at(pos(Pos_Param, Pos_Ret), t+1)
       ).
 */
axiom(not(holds_at(moves(Pos_Param), t)),
    [not(holds_at(pos(Pos_Param, Pos_Ret), t))]).
axiom(not(holds_at(moves(Pos_Param), t)),
   
    [ holds_at(pos(Pos_Param, Pos_Ret), start),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(pos(Pos_Param5, Pos_Ret6), t) :-
       holds_at(moves(Pos_Param5), t).
 */
axiom(holds_at(pos(Pos_Param5, Pos_Ret6), t),
    [holds_at(moves(Pos_Param5), t)]).

 /*  not(holds_at(pos(Pos_Param7, Pos_Ret8), t+1)) :-
       holds_at(moves(Pos_Param7), t).
 */
axiom(not(holds_at(pos(Pos_Param7, Pos_Ret8), start)),
    [holds_at(moves(Pos_Param7), t), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:194
% [human,time]
% HoldsAt(MountFails(human),time) <->
% ({animal}
%   Happens(Mount(human,animal),time) &
%   HoldsAt(Moves(animal),time)).

 /*  holds_at(mountFails(Human), Time) <->
       exists([Animal],
               (happens(mount(Human, Animal), Time), holds_at(moves(Animal), Time))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:198
axiom(holds_at(mountFails(Human), Time),
   
    [ happens(mount(Human, Animal), Time),
      holds_at(moves(Animal), Time)
    ]).

 /*   if(holds_at(mountFails(Human), Time),
         exists([Animal],
                 (happens(mount(Human, Animal), Time), holds_at(moves(Animal), Time)))).
 */

 /*  not(holds_at(mountFails(Mount_Param), Time3)) :-
       (   not(happens(mount(Mount_Param, Mount_Ret), Time3))
       ;   not(holds_at(moves(Mount_Ret), Time3))
       ).
 */
axiom(not(holds_at(mountFails(Mount_Param), Time3)),
    [not(happens(mount(Mount_Param, Mount_Ret), Time3))]).
axiom(not(holds_at(mountFails(Mount_Param), Time3)),
    [not(holds_at(moves(Mount_Ret), Time3))]).

 /*  happens(mount(Mount_Param7, Mount_Ret8), Maptime) :-
       holds_at(mountFails(Mount_Param7), Maptime).
 */
axiom(happens(mount(Mount_Param7, Mount_Ret8), Maptime),
    [holds_at(mountFails(Mount_Param7), Maptime)]).

 /*  holds_at(moves(Moves_Ret), Time9) :-
       holds_at(mountFails(MountFails_Ret), Time9).
 */
axiom(holds_at(moves(Moves_Ret), Time9),
    [holds_at(mountFails(MountFails_Ret), Time9)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:200
% [human,animal,position,time]
% !HoldsAt(Moves(animal),time) ->
% Releases(Mount(human,animal),Pos(human,position),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:202
axiom(releases(mount(Human, Animal), pos(Human, Position), Time),
    [not(holds_at(moves(Animal), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:204
% [human,animal,time]
% !HoldsAt(Moves(animal),time) ->
% Initiates(Mount(human,animal),Mounted(human,animal),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:206
axiom(initiates(mount(Human, Animal), mounted(Human, Animal), Time),
    [not(holds_at(moves(Animal), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:208
% [human,animal,position,time]
% HoldsAt(Pos(animal,position),time) &
% HoldsAt(Moves(animal),time) ->
% Initiates(Mount(human,animal),Pos(human,position),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:211
axiom(initiates(mount(Human, Animal), pos(Human, Position), Time),
   
    [ holds_at(pos(Animal, Position), Time),
      holds_at(moves(Animal), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:213
% [human,animal,position,time]
% HoldsAt(Pos(human,position),time) &
% HoldsAt(Moves(animal),time) ->
% Terminates(Mount(human,animal),Pos(human,position),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:216
axiom(terminates(mount(Human, Animal), pos(Human, Position), Time),
   
    [ holds_at(pos(Human, Position), Time),
      holds_at(moves(Animal), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:218
% [human,animal,time]
% Happens(Mount(human,animal),time) ->
% Large(animal).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:220
axiom(requires(mount(Human, Animal), Time),
    [large(Animal)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:222
% [human,animal,time]
% HoldsAt(Mounted(human,animal),time) ->
% Large(animal).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:224
axiom(large(Animal),
    [holds_at(mounted(Human, Animal), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:226
% [human1,human2,time]
% Happens(Mount(human1,human2),time) ->
% !Large(human1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:228
axiom(requires(mount(Human1, Human2), Time),
    [not(large(Human1))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:230
% [human1,human2,time]
% HoldsAt(Mounted(human1,human2),time) ->
% !Large(human1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:232
axiom(not(large(Human1)),
    [holds_at(mounted(Human1, Human2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:234
% [human,animal,time]
% Happens(Mount(human,animal),time) ->
% !{human1} human1!=human & HoldsAt(Mounted(human1,animal),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:236
axiom(requires(mount(Human, Animal), Time),
    [not({dif(Human1, Human)})]).
axiom(requires(mount(Human, Animal), Time),
    [not(holds_at(mounted(Human1, Animal), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:238
% [human1,human2,animal,time]
% HoldsAt(Mounted(human1,animal),time) &
% HoldsAt(Mounted(human2,animal),time) ->
% human1=human2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:241
axiom(Human1=Human2,
   
    [ holds_at(mounted(Human1, Animal), Time),
      holds_at(mounted(Human2, Animal), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:243
% [human,animal,time]
% Happens(Mount(human,animal),time) ->
% !{human1} human1!=human & HoldsAt(Mounted(human1,human),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:245
axiom(requires(mount(Human, Animal), Time),
    [not({dif(Human1, Human)})]).
axiom(requires(mount(Human, Animal), Time),
    [not(holds_at(mounted(Human1, Human), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:247
% [human1,human2,time]
% Happens(Mount(human1,human2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:249
% {animal}%  HoldsAt(Mounted(human2,animal),time).

 /*  exists([Animal],
          if(happens(mount(Human1,Human2),Time),
   	  holds_at(mounted(Human2,Animal),Time))).
 */

 /*  holds_at(mounted(Mounted_Param, Some_Param), Time5) :-
       happens(mount(Mount_Param, Mounted_Param), Time5),
       some(Some_Param,
            '$kolem_Fn_103'(Mount_Param, Mounted_Param, Time5)).
 */
axiom(holds_at(mounted(Mounted_Param, Some_Param), Time5),
   
    [ happens(mount(Mount_Param, Mounted_Param), Time5),
      some(Some_Param,
           '$kolem_Fn_103'(Mount_Param, Mounted_Param, Time5))
    ]).

 /*  not(happens(mount(Mount_Param10, Mounted_Param11), Maptime)) :-
       not(holds_at(mounted(Mounted_Param11, Some_Param12),
                    Maptime)),
       some(Some_Param12,
            '$kolem_Fn_103'(Mount_Param10,
                            Mounted_Param11,
                            Maptime)).
 */
axiom(not(happens(mount(Mount_Param10, Mounted_Param11), Maptime)),
   
    [ not(holds_at(mounted(Mounted_Param11, Some_Param12),
                   Maptime)),
      some(Some_Param12,
           '$kolem_Fn_103'(Mount_Param10,
                           Mounted_Param11,
                           Maptime))
    ]).

 /*  not(some(Some_Param14, '$kolem_Fn_103'(Fn_103_Param, Mounted_Param16, Time13))) :-
       not(holds_at(mounted(Mounted_Param16, Some_Param14),
                    Time13)),
       happens(mount(Fn_103_Param, Mounted_Param16), Time13).
 */
axiom(not(some(Some_Param14, '$kolem_Fn_103'(Fn_103_Param, Mounted_Param16, Time13))),
   
    [ not(holds_at(mounted(Mounted_Param16, Some_Param14),
                   Time13)),
      happens(mount(Fn_103_Param, Mounted_Param16), Time13)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:251
% [human1,human2,time]
% HoldsAt(Mounted(human1,human2),time) ->
% !{animal} HoldsAt(Mounted(human2,animal),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:253
axiom(not(exists([Animal], holds_at(mounted(Human2, Animal), Time))),
    [holds_at(mounted(Human1, Human2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:255
% [human,animal,time]
% Happens(Mount(human,animal),time) ->
% !{animal1} HoldsAt(Mounted(human,animal1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:257
axiom(requires(mount(Human, Animal), Time),
    [not(holds_at(mounted(Human, Animal1), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:259
% [human,animal,time]
% !HoldsAt(Moves(animal),time) ->
% Terminates(GetOff(human,animal),Mounted(human,animal),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:261
axiom(terminates(getOff(Human, Animal), mounted(Human, Animal), Time),
    [not(holds_at(moves(Animal), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:263
% [human,animal,position,time]
% !HoldsAt(Moves(animal),time) &
% HoldsAt(PosDeterminingFluent(human,position),time) ->
% Initiates(GetOff(human,animal),Pos(human,position),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:266
axiom(initiates(getOff(Human, Animal), pos(Human, Position), Time),
   
    [ not(holds_at(moves(Animal), Time)),
      holds_at(posDeterminingFluent(Human, Position), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:268
% [human,animal,position,time]
% !HoldsAt(Moves(animal),time) &
% HoldsAt(Pos(human,position),time) ->
% Terminates(GetOff(human,animal),Pos(human,position),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:271
axiom(terminates(getOff(Human, Animal), pos(Human, Position), Time),
   
    [ not(holds_at(moves(Animal), Time)),
      holds_at(pos(Human, Position), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:273
% [human,animal,position1,position2,time]
% !HoldsAt(Moves(animal),time) &
% HoldsAt(Pos(human,position1),time) &
% position1!=position2 ->
% Terminates(GetOff(human,animal),Pos(human,position2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:277
axiom(terminates(getOff(Human, Animal), pos(Human, Position2), Time),
   
    [ not(holds_at(moves(Animal), Time)),
      holds_at(pos(Human, Position1), Time),
      { dif(Position1, Position2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:279
% [human,animal,time]
% Happens(GetOff(human,animal),time) ->
% HoldsAt(Mounted(human,animal),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:281
axiom(requires(getOff(Human, Animal), Time),
    [holds_at(mounted(Human, Animal), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:283
% [animal1,human,time]
% HoldsAt(ThrowOffFails(animal1,human),time) <->
% ({position,animal2}
%  animal2!=human &
%  HoldsAt(PosDeterminingFluent(human,position),time) &
%  Large(animal2) &
%  HoldsAt(Pos(animal2,position),time+1)).

 /*  holds_at(throwOffFails(Animal1, Human), Time) <->
       exists([Position, Animal2],
               (Animal2\=Human, holds_at(posDeterminingFluent(Human, Position), Time), large(Animal2), holds_at(pos(Animal2, Position), Time+1))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:289
axiom(holds_at(throwOffFails(Animal1, Human), t),
   
    [ dif(Animal2, Human),
      holds_at(posDeterminingFluent(Human, Position), t),
      large(Animal2),
      holds_at(pos(Animal2, Position), start),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*   if(holds_at(throwOffFails(Animal1, Human), t),
         exists([Position, Animal2],
                 (Animal2\=Human, holds_at(posDeterminingFluent(Human, Position), t), large(Animal2), holds_at(pos(Animal2, Position), t+1)))).
 */

 /*  not(holds_at(throwOffFails(ThrowOffFails_Param, PosDeterminingFluent_Param), t)) :-
       (   not({dif(Dif_Param, PosDeterminingFluent_Param)})
       ;   not(holds_at(posDeterminingFluent(PosDeterminingFluent_Param,
                                             PosDeterminingFluent_Ret),
                        t))
       ;   not(large(Dif_Param))
       ;   not(holds_at(pos(Dif_Param, PosDeterminingFluent_Ret), t+1))
       ).
 */
axiom(not(holds_at(throwOffFails(ThrowOffFails_Param, PosDeterminingFluent_Param), t)),
    [not({dif(Dif_Param, PosDeterminingFluent_Param)})]).
axiom(not(holds_at(throwOffFails(ThrowOffFails_Param, PosDeterminingFluent_Param), t)),
   
    [ not(holds_at(posDeterminingFluent(PosDeterminingFluent_Param,
                                        PosDeterminingFluent_Ret),
                   t))
    ]).
axiom(not(holds_at(throwOffFails(ThrowOffFails_Param, PosDeterminingFluent_Param), t)),
    [not(large(Dif_Param))]).
axiom(not(holds_at(throwOffFails(ThrowOffFails_Param, PosDeterminingFluent_Param), t)),
   
    [ not(holds_at(pos(Dif_Param, PosDeterminingFluent_Ret), start)),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  { dif(Dif_Param9, Dif_Ret)
   } :-
       holds_at(throwOffFails(ThrowOffFails_Param10, Dif_Ret), t).
 */
axiom({ dif(Dif_Param9, Dif_Ret)
},
    [holds_at(throwOffFails(ThrowOffFails_Param10, Dif_Ret), t)]).

 /*  holds_at(posDeterminingFluent(PosDeterminingFluent_Param12, PosDeterminingFluent_Ret14), t) :-
       holds_at(throwOffFails(ThrowOffFails_Param13,
                              PosDeterminingFluent_Param12),
                t).
 */
axiom(holds_at(posDeterminingFluent(PosDeterminingFluent_Param12, PosDeterminingFluent_Ret14), t),
   
    [ holds_at(throwOffFails(ThrowOffFails_Param13,
                             PosDeterminingFluent_Param12),
               t)
    ]).

 /*  large(Large_Ret) :-
       holds_at(throwOffFails(ThrowOffFails_Param15,
                              ThrowOffFails_Ret),
                t).
 */
axiom(large(Large_Ret),
   
    [ holds_at(throwOffFails(ThrowOffFails_Param15,
                             ThrowOffFails_Ret),
               t)
    ]).

 /*  holds_at(pos(Pos_Param, Pos_Ret), t+1) :-
       holds_at(throwOffFails(ThrowOffFails_Param19,
                              ThrowOffFails_Ret21),
                t).
 */
axiom(holds_at(pos(Pos_Param, Pos_Ret), start),
   
    [ holds_at(throwOffFails(ThrowOffFails_Param19,
                             ThrowOffFails_Ret21),
               t),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:291
% [animal,human,position,time]
% HoldsAt(PosDeterminingFluent(human,position),time) &
% !HoldsAt(ThrowOffFails(animal,human),time) ->
% Initiates(ThrowOff(animal,human),Pos(human,position),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:294
axiom(initiates(throwOff(Animal, Human), pos(Human, Position), Time),
   
    [ holds_at(posDeterminingFluent(Human, Position), Time),
      not(holds_at(throwOffFails(Animal, Human), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:296
% [animal,human,position,time]
% HoldsAt(Pos(human,position),time) &
% !HoldsAt(ThrowOffFails(animal,human),time) ->
% Terminates(ThrowOff(animal,human),Pos(human,position),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:299
axiom(terminates(throwOff(Animal, Human), pos(Human, Position), Time),
   
    [ holds_at(pos(Human, Position), Time),
      not(holds_at(throwOffFails(Animal, Human), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:301
% [animal,human,position1,position2,time]
% !HoldsAt(ThrowOffFails(animal,human),time) &
% HoldsAt(Pos(human,position1),time) &
% !HoldsAt(PosDeterminingFluent(human,position2),time) &
% position1!=position2 ->
% Terminates(ThrowOff(animal,human),Pos(human,position2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:306
axiom(terminates(throwOff(Animal, Human), pos(Human, Position2), Time),
   
    [ not(holds_at(throwOffFails(Animal, Human), Time)),
      holds_at(pos(Human, Position1), Time),
      not(holds_at(posDeterminingFluent(Human, Position2),
                   Time)),
      { dif(Position1, Position2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:308
% [human,time]
% (!{animal} Happens(ThrowOff(animal,human),time) |
%            Happens(GetOff(human,animal),time)) ->
% HoldsAt(PosDeterminingFluent(human,1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:311
axiom(holds_at(posDeterminingFluent(Human, 1), Time),
   
    [ not(happens(throwOff(Animal, Human), Time)),
      not(happens(getOff(Human, Animal), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:313
% [human,position,animal1,animal2,time]
% HoldsAt(PosDeterminingFluent(human,position),time) &
% HoldsAt(ThrowOffFails(animal1,human),time) &
% HoldsAt(Pos(animal2,position),time) ->
% Initiates(ThrowOff(animal1,human),Mounted(human,animal2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:317
axiom(initiates(throwOff(Animal1, Human), mounted(Human, Animal2), Time),
   
    [ holds_at(posDeterminingFluent(Human, Position), Time),
      holds_at(throwOffFails(Animal1, Human), Time),
      holds_at(pos(Animal2, Position), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:319
% [human,animal,time]
% !HoldsAt(ThrowOffFails(animal,human),time) ->
% Terminates(ThrowOff(animal,human),Mounted(human,animal),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:321
axiom(terminates(throwOff(Animal, Human), mounted(Human, Animal), Time),
    [not(holds_at(throwOffFails(Animal, Human), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:323
% [animal,human,time]
% Happens(ThrowOff(animal,human),time) ->
% HoldsAt(Mounted(human,animal),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:325
axiom(requires(throwOff(Animal, Human), Time),
    [holds_at(mounted(Human, Animal), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:327
% [animal,human,time]
% Happens(ThrowOff(animal,human),time) ->
% !Happens(GetOff(human,animal),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:329
axiom(not(happens(getOff(Human, Animal), Time)),
    [happens(throwOff(Animal, Human), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:331
% [animal,human,time]
% Happens(GetOff(human,animal),time) ->
% !Happens(ThrowOff(animal,human),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:333
axiom(not(happens(throwOff(Animal, Human), Time)),
    [happens(getOff(Human, Animal), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:335
% [position1,position2,time]
% Accessible(position1,position2,time) <->
% (Neighbor(position1,position2) &
%  !{gate} Sides(position1,position2,gate) &
%          !HoldsAt(Opened(gate),time)).

 /*  accessible(Position1, Position2, Time) <->
       thereExists((neighbor(Position1, Position2), not([gate])),
                    (sides(Position1, Position2, gate), not(holds_at(opened(gate), Time)))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:339
axiom(accessible(Position1, Position2, Time),
   
    [ thereExists((neighbor(Position1, Position2), not([gate])),
                   (sides(Position1, Position2, gate), not(holds_at(opened(gate), Time))))
    ]).
axiom(thereExists((neighbor(Position1, Position2), not([gate])),  (sides(Position1, Position2, gate), not(holds_at(opened(gate), Time)))),
    [accessible(Position1, Position2, Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:341
% [animal,position1,position2,time]
% (position1!=position2 &
%  HoldsAt(Pos(animal,position1),time) &
%  HoldsAt(Pos(animal,position2),time+1)) ->
% Accessible(position1,position2,time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:345
axiom(accessible(Position1, Position2, t),
   
    [ { dif(Position1, Position2)
      },
      holds_at(pos(Animal, Position1), t),
      holds_at(pos(Animal, Position2), start),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:347
% [human,time]
% HoldsAt(AbnormalEncroachment(human),time) <->
% (HoldsAt(MountFails(human),time) |
%  ({position,animal1,animal2}
%    HoldsAt(PosDeterminingFluent(human,position),time) &
%    !HoldsAt(ThrowOffFails(animal2,human),time) &
%    Happens(ThrowOff(animal2,human),time) &
%    animal1!=human &
%    Large(animal1) &
%    HoldsAt(Pos(animal1,position),time) &
%    !HoldsAt(Pos(animal1,position),time+1))).

 /*  holds_at(abnormalEncroachment(Human), Time) <->
       (   holds_at(mountFails(Human), Time)
       ;   exists([Position, Animal1, Animal2],
                   (holds_at(posDeterminingFluent(Human, Position), Time), not(holds_at(throwOffFails(Animal2, Human), Time)), happens(throwOff(Animal2, Human), Time), Animal1\=Human, large(Animal1), holds_at(pos(Animal1, Position), Time), not(holds_at(pos(Animal1, Position), Time+1))))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:357
axiom(holds_at(abnormalEncroachment(Human), Time),
    [holds_at(mountFails(Human), Time)]).
axiom(holds_at(abnormalEncroachment(Human), t),
   
    [ holds_at(posDeterminingFluent(Human, Position), t),
      not(holds_at(throwOffFails(Animal2, Human), t)),
      happens(throwOff(Animal2, Human), t),
      dif(Animal1, Human),
      large(Animal1),
      holds_at(pos(Animal1, Position), t),
      not(holds_at(pos(Animal1, Position), start)),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*   if(holds_at(abnormalEncroachment(Human), t),
          (holds_at(mountFails(Human), t);exists([Position, Animal1, Animal2],  (holds_at(posDeterminingFluent(Human, Position), t), not(holds_at(throwOffFails(Animal2, Human), t)), happens(throwOff(Animal2, Human), t), Animal1\=Human, large(Animal1), holds_at(pos(Animal1, Position), t), not(holds_at(pos(Animal1, Position), t+1)))))).
 */

 /*  not(holds_at(abnormalEncroachment(PosDeterminingFluent_Param), t)) :-
       not(holds_at(mountFails(PosDeterminingFluent_Param), t)),
       (   not(holds_at(posDeterminingFluent(PosDeterminingFluent_Param,
                                             PosDeterminingFluent_Ret),
                        t))
       ;   holds_at(throwOffFails(ThrowOffFails_Param,
                                  PosDeterminingFluent_Param),
                    t)
       ;   not(happens(throwOff(ThrowOffFails_Param,
                                PosDeterminingFluent_Param),
                       t))
       ;   not({dif(Dif_Param, PosDeterminingFluent_Param)})
       ;   not(large(Dif_Param))
       ;   not(holds_at(pos(Dif_Param, PosDeterminingFluent_Ret), t))
       ;   holds_at(pos(Dif_Param, PosDeterminingFluent_Ret), t+1)
       ).
 */
axiom(not(holds_at(abnormalEncroachment(PosDeterminingFluent_Param), t)),
   
    [ not(holds_at(posDeterminingFluent(PosDeterminingFluent_Param,
                                        PosDeterminingFluent_Ret),
                   t)),
      not(holds_at(mountFails(PosDeterminingFluent_Param), t))
    ]).
axiom(not(holds_at(abnormalEncroachment(PosDeterminingFluent_Param), t)),
   
    [ holds_at(throwOffFails(ThrowOffFails_Param,
                             PosDeterminingFluent_Param),
               t),
      not(holds_at(mountFails(PosDeterminingFluent_Param), t))
    ]).
axiom(not(holds_at(abnormalEncroachment(PosDeterminingFluent_Param), t)),
   
    [ not(happens(throwOff(ThrowOffFails_Param,
                           PosDeterminingFluent_Param),
                  t)),
      not(holds_at(mountFails(PosDeterminingFluent_Param), t))
    ]).
axiom(not(holds_at(abnormalEncroachment(PosDeterminingFluent_Param), t)),
   
    [ not({dif(Dif_Param, PosDeterminingFluent_Param)}),
      not(holds_at(mountFails(PosDeterminingFluent_Param), t))
    ]).
axiom(not(holds_at(abnormalEncroachment(PosDeterminingFluent_Param), t)),
   
    [ not(large(Dif_Param)),
      not(holds_at(mountFails(PosDeterminingFluent_Param), t))
    ]).
axiom(not(holds_at(abnormalEncroachment(PosDeterminingFluent_Param), t)),
   
    [ not(holds_at(pos(Dif_Param, PosDeterminingFluent_Ret), t)),
      not(holds_at(mountFails(PosDeterminingFluent_Param), t))
    ]).
axiom(not(holds_at(abnormalEncroachment(PosDeterminingFluent_Param), t)),
   
    [ holds_at(pos(Dif_Param, PosDeterminingFluent_Ret), start),
      not(holds_at(mountFails(PosDeterminingFluent_Param), t)),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(mountFails(PosDeterminingFluent_Param9), t) :-
       (   not(holds_at(posDeterminingFluent(PosDeterminingFluent_Param9,
                                             PosDeterminingFluent_Ret12),
                        t))
       ;   holds_at(throwOffFails(ThrowOffFails_Param10,
                                  PosDeterminingFluent_Param9),
                    t)
       ;   not(happens(throwOff(ThrowOffFails_Param10,
                                PosDeterminingFluent_Param9),
                       t))
       ;   not({dif(Dif_Param11, PosDeterminingFluent_Param9)})
       ;   not(large(Dif_Param11))
       ;   not(holds_at(pos(Dif_Param11, PosDeterminingFluent_Ret12),
                        t))
       ;   holds_at(pos(Dif_Param11, PosDeterminingFluent_Ret12), t+1)
       ),
       holds_at(abnormalEncroachment(PosDeterminingFluent_Param9), t).
 */
axiom(holds_at(mountFails(PosDeterminingFluent_Param9), t),
   
    [ not(holds_at(posDeterminingFluent(PosDeterminingFluent_Param9,
                                        PosDeterminingFluent_Ret12),
                   t)),
      holds_at(abnormalEncroachment(PosDeterminingFluent_Param9), t)
    ]).
axiom(holds_at(mountFails(PosDeterminingFluent_Param9), t),
   
    [ holds_at(throwOffFails(ThrowOffFails_Param10,
                             PosDeterminingFluent_Param9),
               t),
      holds_at(abnormalEncroachment(PosDeterminingFluent_Param9), t)
    ]).
axiom(holds_at(mountFails(PosDeterminingFluent_Param9), t),
   
    [ not(happens(throwOff(ThrowOffFails_Param10,
                           PosDeterminingFluent_Param9),
                  t)),
      holds_at(abnormalEncroachment(PosDeterminingFluent_Param9), t)
    ]).
axiom(holds_at(mountFails(PosDeterminingFluent_Param9), t),
   
    [ not({dif(Dif_Param11, PosDeterminingFluent_Param9)}),
      holds_at(abnormalEncroachment(PosDeterminingFluent_Param9), t)
    ]).
axiom(holds_at(mountFails(PosDeterminingFluent_Param9), t),
   
    [ not(large(Dif_Param11)),
      holds_at(abnormalEncroachment(PosDeterminingFluent_Param9), t)
    ]).
axiom(holds_at(mountFails(PosDeterminingFluent_Param9), t),
   
    [ not(holds_at(pos(Dif_Param11, PosDeterminingFluent_Ret12), t)),
      holds_at(abnormalEncroachment(PosDeterminingFluent_Param9), t)
    ]).
axiom(holds_at(mountFails(PosDeterminingFluent_Param9), t),
   
    [ holds_at(pos(Dif_Param11, PosDeterminingFluent_Ret12), start),
      holds_at(abnormalEncroachment(PosDeterminingFluent_Param9), t),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(posDeterminingFluent(PosDeterminingFluent_Param13, PosDeterminingFluent_Ret14), t) :-
       not(holds_at(mountFails(PosDeterminingFluent_Param13), t)),
       holds_at(abnormalEncroachment(PosDeterminingFluent_Param13), t).
 */
axiom(holds_at(posDeterminingFluent(PosDeterminingFluent_Param13, PosDeterminingFluent_Ret14), t),
   
    [ not(holds_at(mountFails(PosDeterminingFluent_Param13), t)),
      holds_at(abnormalEncroachment(PosDeterminingFluent_Param13), t)
    ]).

 /*  not(holds_at(throwOffFails(ThrowOffFails_Param15, ThrowOffFails_Ret), t)) :-
       not(holds_at(mountFails(ThrowOffFails_Ret), t)),
       holds_at(abnormalEncroachment(ThrowOffFails_Ret), t).
 */
axiom(not(holds_at(throwOffFails(ThrowOffFails_Param15, ThrowOffFails_Ret), t)),
   
    [ not(holds_at(mountFails(ThrowOffFails_Ret), t)),
      holds_at(abnormalEncroachment(ThrowOffFails_Ret), t)
    ]).

 /*  happens(throwOff(ThrowOff_Param, ThrowOff_Ret), t) :-
       not(holds_at(mountFails(ThrowOff_Ret), t)),
       holds_at(abnormalEncroachment(ThrowOff_Ret), t).
 */
axiom(happens(throwOff(ThrowOff_Param, ThrowOff_Ret), t),
   
    [ not(holds_at(mountFails(ThrowOff_Ret), t)),
      holds_at(abnormalEncroachment(ThrowOff_Ret), t)
    ]).

 /*  { dif(Dif_Param19, Dif_Ret)
   } :-
       not(holds_at(mountFails(Dif_Ret), t)),
       holds_at(abnormalEncroachment(Dif_Ret), t).
 */
axiom({ dif(Dif_Param19, Dif_Ret)
},
   
    [ not(holds_at(mountFails(Dif_Ret), t)),
      holds_at(abnormalEncroachment(Dif_Ret), t)
    ]).

 /*  large(Large_Ret) :-
       not(holds_at(mountFails(MountFails_Ret), t)),
       holds_at(abnormalEncroachment(MountFails_Ret), t).
 */
axiom(large(Large_Ret),
   
    [ not(holds_at(mountFails(MountFails_Ret), t)),
      holds_at(abnormalEncroachment(MountFails_Ret), t)
    ]).

 /*  holds_at(pos(Pos_Param, Pos_Ret), t) :-
       not(holds_at(mountFails(MountFails_Ret25), t)),
       holds_at(abnormalEncroachment(MountFails_Ret25), t).
 */
axiom(holds_at(pos(Pos_Param, Pos_Ret), t),
   
    [ not(holds_at(mountFails(MountFails_Ret25), t)),
      holds_at(abnormalEncroachment(MountFails_Ret25), t)
    ]).

 /*  not(holds_at(pos(Pos_Param26, Pos_Ret27), t+1)) :-
       not(holds_at(mountFails(MountFails_Ret28), t)),
       holds_at(abnormalEncroachment(MountFails_Ret28), t).
 */
axiom(not(holds_at(pos(Pos_Param26, Pos_Ret27), start)),
   
    [ not(holds_at(mountFails(MountFails_Ret28), t)),
      holds_at(abnormalEncroachment(MountFails_Ret28), t),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:359
% [animal1,animal2,position,time]
% HoldsAt(Pos(animal1,position),time) &
% !HoldsAt(Pos(animal1,position),time+1) &
% !HoldsAt(Pos(animal2,position),time) &
% HoldsAt(Pos(animal2,position),time+1) ->
% (!Large(animal1) |
%  !Large(animal2) |
%  ({human} human=animal2 & HoldsAt(AbnormalEncroachment(human),time))).

 /*   if((holds_at(pos(Animal1, Position), Time), not(holds_at(pos(Animal1, Position), Time+1)), not(holds_at(pos(Animal2, Position), Time)), holds_at(pos(Animal2, Position), Time+1)),
          (not(large(Animal1));not(large(Animal2));exists([Human],  (Human=Animal2, holds_at(abnormalEncroachment(Human), Time))))).
 */

 /*  not(holds_at(pos(Pos_Param, Pos_Ret), Time5)) :-
       ( not(holds_at(pos(Pos_Param, Pos_Ret), Time5+1)),
         not(holds_at(pos(Pos_Param7, Pos_Ret), Time5)),
         holds_at(pos(Pos_Param7, Pos_Ret), Time5+1)
       ),
       large(Pos_Param),
       large(Pos_Param7),
       (   not(equals(Equals_Param, Pos_Param7))
       ;   not(holds_at(abnormalEncroachment(Equals_Param), Time5))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:366
axiom(not(holds_at(pos(Pos_Param, Pos_Ret), t)),
   
    [ not(equals(Equals_Param, Pos_Param7)),
      not(holds_at(pos(Pos_Param, Pos_Ret), start)),
      not(holds_at(pos(Pos_Param7, Pos_Ret), t)),
      holds_at(pos(Pos_Param7, Pos_Ret), start),
      large(Pos_Param),
      large(Pos_Param7),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(not(holds_at(pos(Pos_Param, Pos_Ret), t)),
   
    [ not(holds_at(abnormalEncroachment(Equals_Param), t)),
      not(holds_at(pos(Pos_Param, Pos_Ret), start)),
      not(holds_at(pos(Pos_Param7, Pos_Ret), t)),
      holds_at(pos(Pos_Param7, Pos_Ret), start),
      large(Pos_Param),
      large(Pos_Param7),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(pos(Pos_Param11, Pos_Ret14), Time10+1) :-
       ( not(holds_at(pos(Pos_Param12, Pos_Ret14), Time10)),
         holds_at(pos(Pos_Param12, Pos_Ret14), Time10+1)
       ),
       holds_at(pos(Pos_Param11, Pos_Ret14), Time10),
       large(Pos_Param11),
       large(Pos_Param12),
       (   not(equals(Equals_Param13, Pos_Param12))
       ;   not(holds_at(abnormalEncroachment(Equals_Param13), Time10))
       ).
 */
axiom(holds_at(pos(Pos_Param11, Pos_Ret14), start),
   
    [ not(equals(Equals_Param13, Pos_Param12)),
      not(holds_at(pos(Pos_Param12, Pos_Ret14), t)),
      holds_at(pos(Pos_Param12, Pos_Ret14), start),
      holds_at(pos(Pos_Param11, Pos_Ret14), t),
      large(Pos_Param11),
      large(Pos_Param12),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(pos(Pos_Param11, Pos_Ret14), start),
   
    [ not(holds_at(abnormalEncroachment(Equals_Param13), t)),
      not(holds_at(pos(Pos_Param12, Pos_Ret14), t)),
      holds_at(pos(Pos_Param12, Pos_Ret14), start),
      holds_at(pos(Pos_Param11, Pos_Ret14), t),
      large(Pos_Param11),
      large(Pos_Param12),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(pos(Pos_Param16, Pos_Ret19), Time15) :-
       holds_at(pos(Pos_Param16, Pos_Ret19), Time15+1),
       not(holds_at(pos(Pos_Param17, Pos_Ret19), Time15+1)),
       holds_at(pos(Pos_Param17, Pos_Ret19), Time15),
       large(Pos_Param17),
       large(Pos_Param16),
       (   not(equals(Equals_Param18, Pos_Param16))
       ;   not(holds_at(abnormalEncroachment(Equals_Param18), Time15))
       ).
 */
axiom(holds_at(pos(Pos_Param16, Pos_Ret19), t),
   
    [ not(equals(Equals_Param18, Pos_Param16)),
      holds_at(pos(Pos_Param16, Pos_Ret19), start),
      not(holds_at(pos(Pos_Param17, Pos_Ret19), start)),
      holds_at(pos(Pos_Param17, Pos_Ret19), t),
      large(Pos_Param17),
      large(Pos_Param16),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(pos(Pos_Param16, Pos_Ret19), t),
   
    [ not(holds_at(abnormalEncroachment(Equals_Param18), t)),
      holds_at(pos(Pos_Param16, Pos_Ret19), start),
      not(holds_at(pos(Pos_Param17, Pos_Ret19), start)),
      holds_at(pos(Pos_Param17, Pos_Ret19), t),
      large(Pos_Param17),
      large(Pos_Param16),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  not(holds_at(pos(Pos_Param21, Pos_Ret24), Time20+1)) :-
       not(holds_at(pos(Pos_Param21, Pos_Ret24), Time20)),
       not(holds_at(pos(Pos_Param22, Pos_Ret24), Time20+1)),
       holds_at(pos(Pos_Param22, Pos_Ret24), Time20),
       large(Pos_Param22),
       large(Pos_Param21),
       (   not(equals(Equals_Param23, Pos_Param21))
       ;   not(holds_at(abnormalEncroachment(Equals_Param23), Time20))
       ).
 */
axiom(not(holds_at(pos(Pos_Param21, Pos_Ret24), start)),
   
    [ not(equals(Equals_Param23, Pos_Param21)),
      not(holds_at(pos(Pos_Param21, Pos_Ret24), t)),
      not(holds_at(pos(Pos_Param22, Pos_Ret24), start)),
      holds_at(pos(Pos_Param22, Pos_Ret24), t),
      large(Pos_Param22),
      large(Pos_Param21),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(not(holds_at(pos(Pos_Param21, Pos_Ret24), start)),
   
    [ not(holds_at(abnormalEncroachment(Equals_Param23), t)),
      not(holds_at(pos(Pos_Param21, Pos_Ret24), t)),
      not(holds_at(pos(Pos_Param22, Pos_Ret24), start)),
      holds_at(pos(Pos_Param22, Pos_Ret24), t),
      large(Pos_Param22),
      large(Pos_Param21),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  not(large(Pos_Param27)) :-
       ( large(Pos_Param28),
         (   not(equals(Equals_Param26, Pos_Param28))
         ;   not(holds_at(abnormalEncroachment(Equals_Param26),
                          Time25))
         )
       ),
       holds_at(pos(Pos_Param27, Pos_Ret29), Time25),
       not(holds_at(pos(Pos_Param27, Pos_Ret29), Time25+1)),
       not(holds_at(pos(Pos_Param28, Pos_Ret29), Time25)),
       holds_at(pos(Pos_Param28, Pos_Ret29), Time25+1).
 */
axiom(not(large(Pos_Param27)),
   
    [ not(equals(Equals_Param26, Pos_Param28)),
      large(Pos_Param28),
      holds_at(pos(Pos_Param27, Pos_Ret29), t),
      not(holds_at(pos(Pos_Param27, Pos_Ret29), start)),
      not(holds_at(pos(Pos_Param28, Pos_Ret29), t)),
      holds_at(pos(Pos_Param28, Pos_Ret29), start),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(not(large(Pos_Param27)),
   
    [ not(holds_at(abnormalEncroachment(Equals_Param26), t)),
      large(Pos_Param28),
      holds_at(pos(Pos_Param27, Pos_Ret29), t),
      not(holds_at(pos(Pos_Param27, Pos_Ret29), start)),
      not(holds_at(pos(Pos_Param28, Pos_Ret29), t)),
      holds_at(pos(Pos_Param28, Pos_Ret29), start),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  not(large(Pos_Param33)) :-
       (   not(equals(Equals_Param31, Pos_Param33))
       ;   not(holds_at(abnormalEncroachment(Equals_Param31), Time30))
       ),
       large(Pos_Param32),
       holds_at(pos(Pos_Param32, Pos_Ret34), Time30),
       not(holds_at(pos(Pos_Param32, Pos_Ret34), Time30+1)),
       not(holds_at(pos(Pos_Param33, Pos_Ret34), Time30)),
       holds_at(pos(Pos_Param33, Pos_Ret34), Time30+1).
 */
axiom(not(large(Pos_Param33)),
   
    [ not(equals(Equals_Param31, Pos_Param33)),
      large(Pos_Param32),
      holds_at(pos(Pos_Param32, Pos_Ret34), t),
      not(holds_at(pos(Pos_Param32, Pos_Ret34), start)),
      not(holds_at(pos(Pos_Param33, Pos_Ret34), t)),
      holds_at(pos(Pos_Param33, Pos_Ret34), start),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(not(large(Pos_Param33)),
   
    [ not(holds_at(abnormalEncroachment(Equals_Param31), t)),
      large(Pos_Param32),
      holds_at(pos(Pos_Param32, Pos_Ret34), t),
      not(holds_at(pos(Pos_Param32, Pos_Ret34), start)),
      not(holds_at(pos(Pos_Param33, Pos_Ret34), t)),
      holds_at(pos(Pos_Param33, Pos_Ret34), start),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  equals(Equals_Param36, Pos_Param38) :-
       large(Pos_Param38),
       large(Pos_Param37),
       holds_at(pos(Pos_Param37, Pos_Ret39), Time35),
       not(holds_at(pos(Pos_Param37, Pos_Ret39), Time35+1)),
       not(holds_at(pos(Pos_Param38, Pos_Ret39), Time35)),
       holds_at(pos(Pos_Param38, Pos_Ret39), Time35+1).
 */
axiom(equals(Equals_Param36, Pos_Param38),
   
    [ large(Pos_Param38),
      large(Pos_Param37),
      holds_at(pos(Pos_Param37, Pos_Ret39), t),
      not(holds_at(pos(Pos_Param37, Pos_Ret39), start)),
      not(holds_at(pos(Pos_Param38, Pos_Ret39), t)),
      holds_at(pos(Pos_Param38, Pos_Ret39), start),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(abnormalEncroachment(AbnormalEncroachment_Ret), Time40) :-
       large(Pos_Param42),
       large(Pos_Param41),
       holds_at(pos(Pos_Param41, Pos_Ret44), Time40),
       not(holds_at(pos(Pos_Param41, Pos_Ret44), Time40+1)),
       not(holds_at(pos(Pos_Param42, Pos_Ret44), Time40)),
       holds_at(pos(Pos_Param42, Pos_Ret44), Time40+1).
 */
axiom(holds_at(abnormalEncroachment(AbnormalEncroachment_Ret), t),
   
    [ large(Pos_Param42),
      large(Pos_Param41),
      holds_at(pos(Pos_Param41, Pos_Ret44), t),
      not(holds_at(pos(Pos_Param41, Pos_Ret44), start)),
      not(holds_at(pos(Pos_Param42, Pos_Ret44), t)),
      holds_at(pos(Pos_Param42, Pos_Ret44), start),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:368
% [animal1,animal2,position1,position2,time]
% animal1!=% animal2 &
% Large(animal1) & Large(animal2) &
% HoldsAt(Pos(animal1,position1),time) &
% HoldsAt(Pos(animal1,position2),time+1) &
% HoldsAt(Pos(animal2,position1),time) &
% HoldsAt(Pos(animal2,position2),time+1) ->
% !{gate} Sides(position1,position2,gate).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:375
axiom(not(exists([Gate], sides(Position1, Position2, Gate))),
   
    [ { dif(Animal1, Animal2)
      },
      large(Animal1),
      large(Animal2),
      holds_at(pos(Animal1, Position1), t),
      holds_at(pos(Animal1, Position2), start),
      holds_at(pos(Animal2, Position1), t),
      holds_at(pos(Animal2, Position2), start),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:377
% [animal1,animal2,position1,position2,time]
% animal1!=% animal2 &
% Large(animal1) & Large(animal2) &
% HoldsAt(Pos(animal1,position1),time) &
% HoldsAt(Pos(animal1,position2),time+1) &
% HoldsAt(Pos(animal2,position2),time) &
% HoldsAt(Pos(animal2,position1),time+1) ->
% !{gate} Sides(position1,position2,gate).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:384
axiom(not(exists([Gate], sides(Position1, Position2, Gate))),
   
    [ { dif(Animal1, Animal2)
      },
      large(Animal1),
      large(Animal2),
      holds_at(pos(Animal1, Position1), t),
      holds_at(pos(Animal1, Position2), start),
      holds_at(pos(Animal2, Position2), t),
      holds_at(pos(Animal2, Position1), start),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:386
% [gate,position1,position2,time]
% HoldsAt(Opened(gate),time) &
% !HoldsAt(Opened(gate),time+1) &
% Sides(position1,position2,gate) ->
% !{animal}
% HoldsAt(Pos(animal,position1),time) &
% HoldsAt(Pos(animal,position2),time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:392
axiom(not(exists([Animal],  (holds_at(pos(Animal, Position1), t), holds_at(pos(Animal, Position2), t+1)))),
   
    [ holds_at(opened(Gate), t),
      not(holds_at(opened(Gate), start)),
      sides(Position1, Position2, Gate),
      b(t, start),
      ignore(t+1=start)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:394
% gate GateAO
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:395
==> t(gate,gateAO).

% cage CageA
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:396
==> t(cage,cageA).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:397
% Loc(1)=CageA.
loc(1,cageA).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:398
% Loc(2)=CageA.
loc(2,cageA).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:399
% Loc(3)=CageA.
loc(3,cageA).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:400
% Loc(4)=CageA.
loc(4,cageA).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:401
% Loc(5)=Outside.
loc(5,outside).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:402
% Loc(6)=Outside.
loc(6,outside).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:403
% Loc(7)=Outside.
loc(7,outside).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:404
% Loc(8)=Outside.
loc(8,outside).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:406
% [position1,position2]
% Neighbor(position1,position2) <->
% ((position1=1 & position2=2) |
%  (position1=1 & position2=3) |
%  (position1=1 & position2=4) |
%  (position1=2 & position2=3) |
%  (position1=2 & position2=4) |
%  (position1=3 & position2=4) |
%  (position1=5 & position2=6) |
%  (position1=5 & position2=7) |
%  (position1=5 & position2=8) |
%  (position1=6 & position2=7) |
%  (position1=6 & position2=8) |
%  (position1=7 & position2=8) |
%  (position2=1 & position1=2) |
%  (position2=1 & position1=3) |
%  (position2=1 & position1=4) |
%  (position2=2 & position1=3) |
%  (position2=2 & position1=4) |
%  (position2=3 & position1=4) |
%  (position2=5 & position1=6) |
%  (position2=5 & position1=7) |
%  (position2=5 & position1=8) |
%  (position2=6 & position1=7) |
%  (position2=6 & position1=8) |
%  (position2=7 & position1=8) |
%  (position1=4 & position2=7) |
%  (position2=4 & position1=7)).

 /*  neighbor(Position1, Position2) <->
       (   Position1=1,
           Position2=2
       ;   Position1=1,
           Position2=3
       ;   Position1=1,
           Position2=4
       ;   Position1=2,
           Position2=3
       ;   Position1=2,
           Position2=4
       ;   Position1=3,
           Position2=4
       ;   Position1=5,
           Position2=6
       ;   Position1=5,
           Position2=7
       ;   Position1=5,
           Position2=8
       ;   Position1=6,
           Position2=7
       ;   Position1=6,
           Position2=8
       ;   Position1=7,
           Position2=8
       ;   Position2=1,
           Position1=2
       ;   Position2=1,
           Position1=3
       ;   Position2=1,
           Position1=4
       ;   Position2=2,
           Position1=3
       ;   Position2=2,
           Position1=4
       ;   Position2=3,
           Position1=4
       ;   Position2=5,
           Position1=6
       ;   Position2=5,
           Position1=7
       ;   Position2=5,
           Position1=8
       ;   Position2=6,
           Position1=7
       ;   Position2=6,
           Position1=8
       ;   Position2=7,
           Position1=8
       ;   Position1=4,
           Position2=7
       ;   Position2=4,
           Position1=7
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:433
axiom(neighbor(Position1, Position2),
    [equals(Position1, 1), equals(Position2, 2)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 1), equals(Position2, 3)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 1), equals(Position2, 4)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 2), equals(Position2, 3)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 2), equals(Position2, 4)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 3), equals(Position2, 4)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 5), equals(Position2, 6)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 5), equals(Position2, 7)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 5), equals(Position2, 8)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 6), equals(Position2, 7)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 6), equals(Position2, 8)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 7), equals(Position2, 8)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 1), equals(Position1, 2)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 1), equals(Position1, 3)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 1), equals(Position1, 4)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 2), equals(Position1, 3)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 2), equals(Position1, 4)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 3), equals(Position1, 4)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 5), equals(Position1, 6)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 5), equals(Position1, 7)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 5), equals(Position1, 8)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 6), equals(Position1, 7)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 6), equals(Position1, 8)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 7), equals(Position1, 8)]).
axiom(neighbor(Position1, Position2),
    [equals(Position1, 4), equals(Position2, 7)]).
axiom(neighbor(Position1, Position2),
    [equals(Position2, 4), equals(Position1, 7)]).

 /*   if(neighbor(Position1, Position2),
          (Position1=1, Position2=2;Position1=1, Position2=3;Position1=1, Position2=4;Position1=2, Position2=3;Position1=2, Position2=4;Position1=3, Position2=4;Position1=5, Position2=6;Position1=5, Position2=7;Position1=5, Position2=8;Position1=6, Position2=7;Position1=6, Position2=8;Position1=7, Position2=8;Position2=1, Position1=2;Position2=1, Position1=3;Position2=1, Position1=4;Position2=2, Position1=3;Position2=2, Position1=4;Position2=3, Position1=4;Position2=5, Position1=6;Position2=5, Position1=7;Position2=5, Position1=8;Position2=6, Position1=7;Position2=6, Position1=8;Position2=7, Position1=8;Position1=4, Position2=7;Position2=4, Position1=7)).
 */
todo_later(if(neighbor(Position1, Position2),  (Position1=1, Position2=2;Position1=1, Position2=3;Position1=1, Position2=4;Position1=2, Position2=3;Position1=2, Position2=4;Position1=3, Position2=4;Position1=5, Position2=6;Position1=5, Position2=7;Position1=5, Position2=8;Position1=6, Position2=7;Position1=6, Position2=8;Position1=7, Position2=8;Position2=1, Position1=2;Position2=1, Position1=3;Position2=1, Position1=4;Position2=2, Position1=3;Position2=2, Position1=4;Position2=3, Position1=4;Position2=5, Position1=6;Position2=5, Position1=7;Position2=5, Position1=8;Position2=6, Position1=7;Position2=6, Position1=8;Position2=7, Position1=8;Position1=4, Position2=7;Position2=4, Position1=7)), [(not(neighbor(Neighbor_Param, Equals_Param)):-(not(equals(Neighbor_Param, 1));not(equals(Equals_Param, 2))), (not(equals(Neighbor_Param, 1));not(equals(Equals_Param, 3))), (not(equals(Neighbor_Param, 1));not(equals(Equals_Param, 4))), (not(equals(Neighbor_Param, 2));not(equals(Equals_Param, 3))), (not(equals(Neighbor_Param, 2));not(equals(Equals_Param, 4))), (not(equals(Neighbor_Param, 3));not(equals(Equals_Param, 4))), (not(equals(Neighbor_Param, 5));not(equals(Equals_Param, 6))), (not(equals(Neighbor_Param, 5));not(equals(Equals_Param, 7))), (not(equals(Neighbor_Param, 5));not(equals(Equals_Param, 8))), (not(equals(Neighbor_Param, 6));not(equals(Equals_Param, 7))), (not(equals(Neighbor_Param, 6));not(equals(Equals_Param, 8))), (not(equals(Neighbor_Param, 7));not(equals(Equals_Param, 8))), (not(equals(Equals_Param, 1));not(equals(Neighbor_Param, 2))), (not(equals(Equals_Param, 1));not(equals(Neighbor_Param, 3))), (not(equals(Equals_Param, 1));not(equals(Neighbor_Param, 4))), (not(equals(Equals_Param, 2));not(equals(Neighbor_Param, 3))), (not(equals(Equals_Param, 2));not(equals(Neighbor_Param, 4))), (not(equals(Equals_Param, 3));not(equals(Neighbor_Param, 4))), (not(equals(Equals_Param, 5));not(equals(Neighbor_Param, 6))), (not(equals(Equals_Param, 5));not(equals(Neighbor_Param, 7))), (not(equals(Equals_Param, 5));not(equals(Neighbor_Param, 8))), (not(equals(Equals_Param, 6));not(equals(Neighbor_Param, 7))), (not(equals(Equals_Param, 6));not(equals(Neighbor_Param, 8))), (not(equals(Equals_Param, 7));not(equals(Neighbor_Param, 8))), (not(equals(Neighbor_Param, 4));not(equals(Equals_Param, 7))), (not(equals(Equals_Param, 4));not(equals(Neighbor_Param, 7)))),  (equals(Equals_Param4, 1):-((not(equals(Equals_Param4, 1));not(equals(Equals_Param5, 3))), (not(equals(Equals_Param4, 1));not(equals(Equals_Param5, 4))), (not(equals(Equals_Param4, 2));not(equals(Equals_Param5, 3))), (not(equals(Equals_Param4, 2));not(equals(Equals_Param5, 4))), (not(equals(Equals_Param4, 3));not(equals(Equals_Param5, 4))), (not(equals(Equals_Param4, 5));not(equals(Equals_Param5, 6))), (not(equals(Equals_Param4, 5));not(equals(Equals_Param5, 7))), (not(equals(Equals_Param4, 5));not(equals(Equals_Param5, 8))), (not(equals(Equals_Param4, 6));not(equals(Equals_Param5, 7))), (not(equals(Equals_Param4, 6));not(equals(Equals_Param5, 8))), (not(equals(Equals_Param4, 7));not(equals(Equals_Param5, 8))), (not(equals(Equals_Param5, 1));not(equals(Equals_Param4, 2))), (not(equals(Equals_Param5, 1));not(equals(Equals_Param4, 3))), (not(equals(Equals_Param5, 1));not(equals(Equals_Param4, 4))), (not(equals(Equals_Param5, 2));not(equals(Equals_Param4, 3))), (not(equals(Equals_Param5, 2));not(equals(Equals_Param4, 4))), (not(equals(Equals_Param5, 3));not(equals(Equals_Param4, 4))), (not(equals(Equals_Param5, 5));not(equals(Equals_Param4, 6))), (not(equals(Equals_Param5, 5));not(equals(Equals_Param4, 7))), (not(equals(Equals_Param5, 5));not(equals(Equals_Param4, 8))), (not(equals(Equals_Param5, 6));not(equals(Equals_Param4, 7))), (not(equals(Equals_Param5, 6));not(equals(Equals_Param4, 8))), (not(equals(Equals_Param5, 7));not(equals(Equals_Param4, 8))), (not(equals(Equals_Param4, 4));not(equals(Equals_Param5, 7))), (not(equals(Equals_Param5, 4));not(equals(Equals_Param4, 7)))), neighbor(Equals_Param4, Equals_Param5)),  (equals(Equals_Param6, 2):-((not(equals(Equals_Param7, 1));not(equals(Equals_Param6, 3))), (not(equals(Equals_Param7, 1));not(equals(Equals_Param6, 4))), (not(equals(Equals_Param7, 2));not(equals(Equals_Param6, 3))), (not(equals(Equals_Param7, 2));not(equals(Equals_Param6, 4))), (not(equals(Equals_Param7, 3));not(equals(Equals_Param6, 4))), (not(equals(Equals_Param7, 5));not(equals(Equals_Param6, 6))), (not(equals(Equals_Param7, 5));not(equals(Equals_Param6, 7))), (not(equals(Equals_Param7, 5));not(equals(Equals_Param6, 8))), (not(equals(Equals_Param7, 6));not(equals(Equals_Param6, 7))), (not(equals(Equals_Param7, 6));not(equals(Equals_Param6, 8))), (not(equals(Equals_Param7, 7));not(equals(Equals_Param6, 8))), (not(equals(Equals_Param6, 1));not(equals(Equals_Param7, 2))), (not(equals(Equals_Param6, 1));not(equals(Equals_Param7, 3))), (not(equals(Equals_Param6, 1));not(equals(Equals_Param7, 4))), (not(equals(Equals_Param6, 2));not(equals(Equals_Param7, 3))), (not(equals(Equals_Param6, 2));not(equals(Equals_Param7, 4))), (not(equals(Equals_Param6, 3));not(equals(Equals_Param7, 4))), (not(equals(Equals_Param6, 5));not(equals(Equals_Param7, 6))), (not(equals(Equals_Param6, 5));not(equals(Equals_Param7, 7))), (not(equals(Equals_Param6, 5));not(equals(Equals_Param7, 8))), (not(equals(Equals_Param6, 6));not(equals(Equals_Param7, 7))), (not(equals(Equals_Param6, 6));not(equals(Equals_Param7, 8))), (not(equals(Equals_Param6, 7));not(equals(Equals_Param7, 8))), (not(equals(Equals_Param7, 4));not(equals(Equals_Param6, 7))), (not(equals(Equals_Param6, 4));not(equals(Equals_Param7, 7)))), neighbor(Equals_Param7, Equals_Param6)),  (equals(Equals_Param8, 1):-((not(equals(Equals_Param8, 1));not(equals(Equals_Param9, 4))), (not(equals(Equals_Param8, 2));not(equals(Equals_Param9, 3))), (not(equals(Equals_Param8, 2));not(equals(Equals_Param9, 4))), (not(equals(Equals_Param8, 3));not(equals(Equals_Param9, 4))), (not(equals(Equals_Param8, 5));not(equals(Equals_Param9, 6))), (not(equals(Equals_Param8, 5));not(equals(Equals_Param9, 7))), (not(equals(Equals_Param8, 5));not(equals(Equals_Param9, 8))), (not(equals(Equals_Param8, 6));not(equals(Equals_Param9, 7))), (not(equals(Equals_Param8, 6));not(equals(Equals_Param9, 8))), (not(equals(Equals_Param8, 7));not(equals(Equals_Param9, 8))), (not(equals(Equals_Param9, 1));not(equals(Equals_Param8, 2))), (not(equals(Equals_Param9, 1));not(equals(Equals_Param8, 3))), (not(equals(Equals_Param9, 1));not(equals(Equals_Param8, 4))), (not(equals(Equals_Param9, 2));not(equals(Equals_Param8, 3))), (not(equals(Equals_Param9, 2));not(equals(Equals_Param8, 4))), (not(equals(Equals_Param9, 3));not(equals(Equals_Param8, 4))), (not(equals(Equals_Param9, 5));not(equals(Equals_Param8, 6))), (not(equals(Equals_Param9, 5));not(equals(Equals_Param8, 7))), (not(equals(Equals_Param9, 5));not(equals(Equals_Param8, 8))), (not(equals(Equals_Param9, 6));not(equals(Equals_Param8, 7))), (not(equals(Equals_Param9, 6));not(equals(Equals_Param8, 8))), (not(equals(Equals_Param9, 7));not(equals(Equals_Param8, 8))), (not(equals(Equals_Param8, 4));not(equals(Equals_Param9, 7))), (not(equals(Equals_Param9, 4));not(equals(Equals_Param8, 7)))), (not(equals(Equals_Param8, 1));not(equals(Equals_Param9, 2))), neighbor(Equals_Param8, Equals_Param9)),  (equals(Equals_Param10, 3):-((not(equals(Equals_Param11, 1));not(equals(Equals_Param10, 4))), (not(equals(Equals_Param11, 2));not(equals(Equals_Param10, 3))), (not(equals(Equals_Param11, 2));not(equals(Equals_Param10, 4))), (not(equals(Equals_Param11, 3));not(equals(Equals_Param10, 4))), (not(equals(Equals_Param11, 5));not(equals(Equals_Param10, 6))), (not(equals(Equals_Param11, 5));not(equals(Equals_Param10, 7))), (not(equals(Equals_Param11, 5));not(equals(Equals_Param10, 8))), (not(equals(Equals_Param11, 6));not(equals(Equals_Param10, 7))), (not(equals(Equals_Param11, 6));not(equals(Equals_Param10, 8))), (not(equals(Equals_Param11, 7));not(equals(Equals_Param10, 8))), (not(equals(Equals_Param10, 1));not(equals(Equals_Param11, 2))), (not(equals(Equals_Param10, 1));not(equals(Equals_Param11, 3))), (not(equals(Equals_Param10, 1));not(equals(Equals_Param11, 4))), (not(equals(Equals_Param10, 2));not(equals(Equals_Param11, 3))), (not(equals(Equals_Param10, 2));not(equals(Equals_Param11, 4))), (not(equals(Equals_Param10, 3));not(equals(Equals_Param11, 4))), (not(equals(Equals_Param10, 5));not(equals(Equals_Param11, 6))), (not(equals(Equals_Param10, 5));not(equals(Equals_Param11, 7))), (not(equals(Equals_Param10, 5));not(equals(Equals_Param11, 8))), (not(equals(Equals_Param10, 6));not(equals(Equals_Param11, 7))), (not(equals(Equals_Param10, 6));not(equals(Equals_Param11, 8))), (not(equals(Equals_Param10, 7));not(equals(Equals_Param11, 8))), (not(equals(Equals_Param11, 4));not(equals(Equals_Param10, 7))), (not(equals(Equals_Param10, 4));not(equals(Equals_Param11, 7)))), (not(equals(Equals_Param11, 1));not(equals(Equals_Param10, 2))), neighbor(Equals_Param11, Equals_Param10)),  (equals(Equals_Param12, 1):-((not(equals(Equals_Param12, 2));not(equals(Equals_Param13, 3))), (not(equals(Equals_Param12, 2));not(equals(Equals_Param13, 4))), (not(equals(Equals_Param12, 3));not(equals(Equals_Param13, 4))), (not(equals(Equals_Param12, 5));not(equals(Equals_Param13, 6))), (not(equals(Equals_Param12, 5));not(equals(Equals_Param13, 7))), (not(equals(Equals_Param12, 5));not(equals(Equals_Param13, 8))), (not(equals(Equals_Param12, 6));not(equals(Equals_Param13, 7))), (not(equals(Equals_Param12, 6));not(equals(Equals_Param13, 8))), (not(equals(Equals_Param12, 7));not(equals(Equals_Param13, 8))), (not(equals(Equals_Param13, 1));not(equals(Equals_Param12, 2))), (not(equals(Equals_Param13, 1));not(equals(Equals_Param12, 3))), (not(equals(Equals_Param13, 1));not(equals(Equals_Param12, 4))), (not(equals(Equals_Param13, 2));not(equals(Equals_Param12, 3))), (not(equals(Equals_Param13, 2));not(equals(Equals_Param12, 4))), (not(equals(Equals_Param13, 3));not(equals(Equals_Param12, 4))), (not(equals(Equals_Param13, 5));not(equals(Equals_Param12, 6))), (not(equals(Equals_Param13, 5));not(equals(Equals_Param12, 7))), (not(equals(Equals_Param13, 5));not(equals(Equals_Param12, 8))), (not(equals(Equals_Param13, 6));not(equals(Equals_Param12, 7))), (not(equals(Equals_Param13, 6));not(equals(Equals_Param12, 8))), (not(equals(Equals_Param13, 7));not(equals(Equals_Param12, 8))), (not(equals(Equals_Param12, 4));not(equals(Equals_Param13, 7))), (not(equals(Equals_Param13, 4));not(equals(Equals_Param12, 7)))), (not(equals(Equals_Param12, 1));not(equals(Equals_Param13, 3))), (not(equals(Equals_Param12, 1));not(equals(Equals_Param13, 2))), neighbor(Equals_Param12, Equals_Param13)),  (equals(Equals_Param14, 4):-((not(equals(Equals_Param15, 2));not(equals(Equals_Param14, 3))), (not(equals(Equals_Param15, 2));not(equals(Equals_Param14, 4))), (not(equals(Equals_Param15, 3));not(equals(Equals_Param14, 4))), (not(equals(Equals_Param15, 5));not(equals(Equals_Param14, 6))), (not(equals(Equals_Param15, 5));not(equals(Equals_Param14, 7))), (not(equals(Equals_Param15, 5));not(equals(Equals_Param14, 8))), (not(equals(Equals_Param15, 6));not(equals(Equals_Param14, 7))), (not(equals(Equals_Param15, 6));not(equals(Equals_Param14, 8))), (not(equals(Equals_Param15, 7));not(equals(Equals_Param14, 8))), (not(equals(Equals_Param14, 1));not(equals(Equals_Param15, 2))), (not(equals(Equals_Param14, 1));not(equals(Equals_Param15, 3))), (not(equals(Equals_Param14, 1));not(equals(Equals_Param15, 4))), (not(equals(Equals_Param14, 2));not(equals(Equals_Param15, 3))), (not(equals(Equals_Param14, 2));not(equals(Equals_Param15, 4))), (not(equals(Equals_Param14, 3));not(equals(Equals_Param15, 4))), (not(equals(Equals_Param14, 5));not(equals(Equals_Param15, 6))), (not(equals(Equals_Param14, 5));not(equals(Equals_Param15, 7))), (not(equals(Equals_Param14, 5));not(equals(Equals_Param15, 8))), (not(equals(Equals_Param14, 6));not(equals(Equals_Param15, 7))), (not(equals(Equals_Param14, 6));not(equals(Equals_Param15, 8))), (not(equals(Equals_Param14, 7));not(equals(Equals_Param15, 8))), (not(equals(Equals_Param15, 4));not(equals(Equals_Param14, 7))), (not(equals(Equals_Param14, 4));not(equals(Equals_Param15, 7)))), (not(equals(Equals_Param15, 1));not(equals(Equals_Param14, 3))), (not(equals(Equals_Param15, 1));not(equals(Equals_Param14, 2))), neighbor(Equals_Param15, Equals_Param14)),  (equals(Equals_Param16, 2):-((not(equals(Equals_Param16, 2));not(equals(Equals_Param17, 4))), (not(equals(Equals_Param16, 3));not(equals(Equals_Param17, 4))), (not(equals(Equals_Param16, 5));not(equals(Equals_Param17, 6))), (not(equals(Equals_Param16, 5));not(equals(Equals_Param17, 7))), (not(equals(Equals_Param16, 5));not(equals(Equals_Param17, 8))), (not(equals(Equals_Param16, 6));not(equals(Equals_Param17, 7))), (not(equals(Equals_Param16, 6));not(equals(Equals_Param17, 8))), (not(equals(Equals_Param16, 7));not(equals(Equals_Param17, 8))), (not(equals(Equals_Param17, 1));not(equals(Equals_Param16, 2))), (not(equals(Equals_Param17, 1));not(equals(Equals_Param16, 3))), (not(equals(Equals_Param17, 1));not(equals(Equals_Param16, 4))), (not(equals(Equals_Param17, 2));not(equals(Equals_Param16, 3))), (not(equals(Equals_Param17, 2));not(equals(Equals_Param16, 4))), (not(equals(Equals_Param17, 3));not(equals(Equals_Param16, 4))), (not(equals(Equals_Param17, 5));not(equals(Equals_Param16, 6))), (not(equals(Equals_Param17, 5));not(equals(Equals_Param16, 7))), (not(equals(Equals_Param17, 5));not(equals(Equals_Param16, 8))), (not(equals(Equals_Param17, 6));not(equals(Equals_Param16, 7))), (not(equals(Equals_Param17, 6));not(equals(Equals_Param16, 8))), (not(equals(Equals_Param17, 7));not(equals(Equals_Param16, 8))), (not(equals(Equals_Param16, 4));not(equals(Equals_Param17, 7))), (not(equals(Equals_Param17, 4));not(equals(Equals_Param16, 7)))), (not(equals(Equals_Param16, 1));not(equals(Equals_Param17, 4))), (not(equals(Equals_Param16, 1));not(equals(Equals_Param17, 3))), (not(equals(Equals_Param16, 1));not(equals(Equals_Param17, 2))), neighbor(Equals_Param16, Equals_Param17)),  (equals(Equals_Param18, 3):-((not(equals(Equals_Param19, 2));not(equals(Equals_Param18, 4))), (not(equals(Equals_Param19, 3));not(equals(Equals_Param18, 4))), (not(equals(Equals_Param19, 5));not(equals(Equals_Param18, 6))), (not(equals(Equals_Param19, 5));not(equals(Equals_Param18, 7))), (not(equals(Equals_Param19, 5));not(equals(Equals_Param18, 8))), (not(equals(Equals_Param19, 6));not(equals(Equals_Param18, 7))), (not(equals(Equals_Param19, 6));not(equals(Equals_Param18, 8))), (not(equals(Equals_Param19, 7));not(equals(Equals_Param18, 8))), (not(equals(Equals_Param18, 1));not(equals(Equals_Param19, 2))), (not(equals(Equals_Param18, 1));not(equals(Equals_Param19, 3))), (not(equals(Equals_Param18, 1));not(equals(Equals_Param19, 4))), (not(equals(Equals_Param18, 2));not(equals(Equals_Param19, 3))), (not(equals(Equals_Param18, 2));not(equals(Equals_Param19, 4))), (not(equals(Equals_Param18, 3));not(equals(Equals_Param19, 4))), (not(equals(Equals_Param18, 5));not(equals(Equals_Param19, 6))), (not(equals(Equals_Param18, 5));not(equals(Equals_Param19, 7))), (not(equals(Equals_Param18, 5));not(equals(Equals_Param19, 8))), (not(equals(Equals_Param18, 6));not(equals(Equals_Param19, 7))), (not(equals(Equals_Param18, 6));not(equals(Equals_Param19, 8))), (not(equals(Equals_Param18, 7));not(equals(Equals_Param19, 8))), (not(equals(Equals_Param19, 4));not(equals(Equals_Param18, 7))), (not(equals(Equals_Param18, 4));not(equals(Equals_Param19, 7)))), (not(equals(Equals_Param19, 1));not(equals(Equals_Param18, 4))), (not(equals(Equals_Param19, 1));not(equals(Equals_Param18, 3))), (not(equals(Equals_Param19, 1));not(equals(Equals_Param18, 2))), neighbor(Equals_Param19, Equals_Param18)),  (equals(Equals_Param20, 2):-((not(equals(Equals_Param20, 3));not(equals(Equals_Param21, 4))), (not(equals(Equals_Param20, 5));not(equals(Equals_Param21, 6))), (not(equals(Equals_Param20, 5));not(equals(Equals_Param21, 7))), (not(equals(Equals_Param20, 5));not(equals(Equals_Param21, 8))), (not(equals(Equals_Param20, 6));not(equals(Equals_Param21, 7))), (not(equals(Equals_Param20, 6));not(equals(Equals_Param21, 8))), (not(equals(Equals_Param20, 7));not(equals(Equals_Param21, 8))), (not(equals(Equals_Param21, 1));not(equals(Equals_Param20, 2))), (not(equals(Equals_Param21, 1));not(equals(Equals_Param20, 3))), (not(equals(Equals_Param21, 1));not(equals(Equals_Param20, 4))), (not(equals(Equals_Param21, 2));not(equals(Equals_Param20, 3))), (not(equals(Equals_Param21, 2));not(equals(Equals_Param20, 4))), (not(equals(Equals_Param21, 3));not(equals(Equals_Param20, 4))), (not(equals(Equals_Param21, 5));not(equals(Equals_Param20, 6))), (not(equals(Equals_Param21, 5));not(equals(Equals_Param20, 7))), (not(equals(Equals_Param21, 5));not(equals(Equals_Param20, 8))), (not(equals(Equals_Param21, 6));not(equals(Equals_Param20, 7))), (not(equals(Equals_Param21, 6));not(equals(Equals_Param20, 8))), (not(equals(Equals_Param21, 7));not(equals(Equals_Param20, 8))), (not(equals(Equals_Param20, 4));not(equals(Equals_Param21, 7))), (not(equals(Equals_Param21, 4));not(equals(Equals_Param20, 7)))), (not(equals(Equals_Param20, 2));not(equals(Equals_Param21, 3))), (not(equals(Equals_Param20, 1));not(equals(Equals_Param21, 4))), (not(equals(Equals_Param20, 1));not(equals(Equals_Param21, 3))), (not(equals(Equals_Param20, 1));not(equals(Equals_Param21, 2))), neighbor(Equals_Param20, Equals_Param21)),  (equals(Equals_Param22, 4):-((not(equals(Equals_Param23, 3));not(equals(Equals_Param22, 4))), (not(equals(Equals_Param23, 5));not(equals(Equals_Param22, 6))), (not(equals(Equals_Param23, 5));not(equals(Equals_Param22, 7))), (not(equals(Equals_Param23, 5));not(equals(Equals_Param22, 8))), (not(equals(Equals_Param23, 6));not(equals(Equals_Param22, 7))), (not(equals(Equals_Param23, 6));not(equals(Equals_Param22, 8))), (not(equals(Equals_Param23, 7));not(equals(Equals_Param22, 8))), (not(equals(Equals_Param22, 1));not(equals(Equals_Param23, 2))), (not(equals(Equals_Param22, 1));not(equals(Equals_Param23, 3))), (not(equals(Equals_Param22, 1));not(equals(Equals_Param23, 4))), (not(equals(Equals_Param22, 2));not(equals(Equals_Param23, 3))), (not(equals(Equals_Param22, 2));not(equals(Equals_Param23, 4))), (not(equals(Equals_Param22, 3));not(equals(Equals_Param23, 4))), (not(equals(Equals_Param22, 5));not(equals(Equals_Param23, 6))), (not(equals(Equals_Param22, 5));not(equals(Equals_Param23, 7))), (not(equals(Equals_Param22, 5));not(equals(Equals_Param23, 8))), (not(equals(Equals_Param22, 6));not(equals(Equals_Param23, 7))), (not(equals(Equals_Param22, 6));not(equals(Equals_Param23, 8))), (not(equals(Equals_Param22, 7));not(equals(Equals_Param23, 8))), (not(equals(Equals_Param23, 4));not(equals(Equals_Param22, 7))), (not(equals(Equals_Param22, 4));not(equals(Equals_Param23, 7)))), (not(equals(Equals_Param23, 2));not(equals(Equals_Param22, 3))), (not(equals(Equals_Param23, 1));not(equals(Equals_Param22, 4))), (not(equals(Equals_Param23, 1));not(equals(Equals_Param22, 3))), (not(equals(Equals_Param23, 1));not(equals(Equals_Param22, 2))), neighbor(Equals_Param23, Equals_Param22)),  (equals(Equals_Param24, 3):-((not(equals(Equals_Param24, 5));not(equals(Equals_Param25, 6))), (not(equals(Equals_Param24, 5));not(equals(Equals_Param25, 7))), (not(equals(Equals_Param24, 5));not(equals(Equals_Param25, 8))), (not(equals(Equals_Param24, 6));not(equals(Equals_Param25, 7))), (not(equals(Equals_Param24, 6));not(equals(Equals_Param25, 8))), (not(equals(Equals_Param24, 7));not(equals(Equals_Param25, 8))), (not(equals(Equals_Param25, 1));not(equals(Equals_Param24, 2))), (not(equals(Equals_Param25, 1));not(equals(Equals_Param24, 3))), (not(equals(Equals_Param25, 1));not(equals(Equals_Param24, 4))), (not(equals(Equals_Param25, 2));not(equals(Equals_Param24, 3))), (not(equals(Equals_Param25, 2));not(equals(Equals_Param24, 4))), (not(equals(Equals_Param25, 3));not(equals(Equals_Param24, 4))), (not(equals(Equals_Param25, 5));not(equals(Equals_Param24, 6))), (not(equals(Equals_Param25, 5));not(equals(Equals_Param24, 7))), (not(equals(Equals_Param25, 5));not(equals(Equals_Param24, 8))), (not(equals(Equals_Param25, 6));not(equals(Equals_Param24, 7))), (not(equals(Equals_Param25, 6));not(equals(Equals_Param24, 8))), (not(equals(Equals_Param25, 7));not(equals(Equals_Param24, 8))), (not(equals(Equals_Param24, 4));not(equals(Equals_Param25, 7))), (not(equals(Equals_Param25, 4));not(equals(Equals_Param24, 7)))), (not(equals(Equals_Param24, 2));not(equals(Equals_Param25, 4))), (not(equals(Equals_Param24, 2));not(equals(Equals_Param25, 3))), (not(equals(Equals_Param24, 1));not(equals(Equals_Param25, 4))), (not(equals(Equals_Param24, 1));not(equals(Equals_Param25, 3))), (not(equals(Equals_Param24, 1));not(equals(Equals_Param25, 2))), neighbor(Equals_Param24, Equals_Param25)),  (equals(Equals_Param26, 4):-((not(equals(Equals_Param27, 5));not(equals(Equals_Param26, 6))), (not(equals(Equals_Param27, 5));not(equals(Equals_Param26, 7))), (not(equals(Equals_Param27, 5));not(equals(Equals_Param26, 8))), (not(equals(Equals_Param27, 6));not(equals(Equals_Param26, 7))), (not(equals(Equals_Param27, 6));not(equals(Equals_Param26, 8))), (not(equals(Equals_Param27, 7));not(equals(Equals_Param26, 8))), (not(equals(Equals_Param26, 1));not(equals(Equals_Param27, 2))), (not(equals(Equals_Param26, 1));not(equals(Equals_Param27, 3))), (not(equals(Equals_Param26, 1));not(equals(Equals_Param27, 4))), (not(equals(Equals_Param26, 2));not(equals(Equals_Param27, 3))), (not(equals(Equals_Param26, 2));not(equals(Equals_Param27, 4))), (not(equals(Equals_Param26, 3));not(equals(Equals_Param27, 4))), (not(equals(Equals_Param26, 5));not(equals(Equals_Param27, 6))), (not(equals(Equals_Param26, 5));not(equals(Equals_Param27, 7))), (not(equals(Equals_Param26, 5));not(equals(Equals_Param27, 8))), (not(equals(Equals_Param26, 6));not(equals(Equals_Param27, 7))), (not(equals(Equals_Param26, 6));not(equals(Equals_Param27, 8))), (not(equals(Equals_Param26, 7));not(equals(Equals_Param27, 8))), (not(equals(Equals_Param27, 4));not(equals(Equals_Param26, 7))), (not(equals(Equals_Param26, 4));not(equals(Equals_Param27, 7)))), (not(equals(Equals_Param27, 2));not(equals(Equals_Param26, 4))), (not(equals(Equals_Param27, 2));not(equals(Equals_Param26, 3))), (not(equals(Equals_Param27, 1));not(equals(Equals_Param26, 4))), (not(equals(Equals_Param27, 1));not(equals(Equals_Param26, 3))), (not(equals(Equals_Param27, 1));not(equals(Equals_Param26, 2))), neighbor(Equals_Param27, Equals_Param26)),  (equals(Equals_Param28, 5):-((not(equals(Equals_Param28, 5));not(equals(Equals_Param29, 7))), (not(equals(Equals_Param28, 5));not(equals(Equals_Param29, 8))), (not(equals(Equals_Param28, 6));not(equals(Equals_Param29, 7))), (not(equals(Equals_Param28, 6));not(equals(Equals_Param29, 8))), (not(equals(Equals_Param28, 7));not(equals(Equals_Param29, 8))), (not(equals(Equals_Param29, 1));not(equals(Equals_Param28, 2))), (not(equals(Equals_Param29, 1));not(equals(Equals_Param28, 3))), (not(equals(Equals_Param29, 1));not(equals(Equals_Param28, 4))), (not(equals(Equals_Param29, 2));not(equals(Equals_Param28, 3))), (not(equals(Equals_Param29, 2));not(equals(Equals_Param28, 4))), (not(equals(Equals_Param29, 3));not(equals(Equals_Param28, 4))), (not(equals(Equals_Param29, 5));not(equals(Equals_Param28, 6))), (not(equals(Equals_Param29, 5));not(equals(Equals_Param28, 7))), (not(equals(Equals_Param29, 5));not(equals(Equals_Param28, 8))), (not(equals(Equals_Param29, 6));not(equals(Equals_Param28, 7))), (not(equals(Equals_Param29, 6));not(equals(Equals_Param28, 8))), (not(equals(Equals_Param29, 7));not(equals(Equals_Param28, 8))), (not(equals(Equals_Param28, 4));not(equals(Equals_Param29, 7))), (not(equals(Equals_Param29, 4));not(equals(Equals_Param28, 7)))), (not(equals(Equals_Param28, 3));not(equals(Equals_Param29, 4))), (not(equals(Equals_Param28, 2));not(equals(Equals_Param29, 4))), (not(equals(Equals_Param28, 2));not(equals(Equals_Param29, 3))), (not(equals(Equals_Param28, 1));not(equals(Equals_Param29, 4))), (not(equals(Equals_Param28, 1));not(equals(Equals_Param29, 3))), (not(equals(Equals_Param28, 1));not(equals(Equals_Param29, 2))), neighbor(Equals_Param28, Equals_Param29)),  (equals(Equals_Param30, 6):-((not(equals(Equals_Param31, 5));not(equals(Equals_Param30, 7))), (not(equals(Equals_Param31, 5));not(equals(Equals_Param30, 8))), (not(equals(Equals_Param31, 6));not(equals(Equals_Param30, 7))), (not(equals(Equals_Param31, 6));not(equals(Equals_Param30, 8))), (not(equals(Equals_Param31, 7));not(equals(Equals_Param30, 8))), (not(equals(Equals_Param30, 1));not(equals(Equals_Param31, 2))), (not(equals(Equals_Param30, 1));not(equals(Equals_Param31, 3))), (not(equals(Equals_Param30, 1));not(equals(Equals_Param31, 4))), (not(equals(Equals_Param30, 2));not(equals(Equals_Param31, 3))), (not(equals(Equals_Param30, 2));not(equals(Equals_Param31, 4))), (not(equals(Equals_Param30, 3));not(equals(Equals_Param31, 4))), (not(equals(Equals_Param30, 5));not(equals(Equals_Param31, 6))), (not(equals(Equals_Param30, 5));not(equals(Equals_Param31, 7))), (not(equals(Equals_Param30, 5));not(equals(Equals_Param31, 8))), (not(equals(Equals_Param30, 6));not(equals(Equals_Param31, 7))), (not(equals(Equals_Param30, 6));not(equals(Equals_Param31, 8))), (not(equals(Equals_Param30, 7));not(equals(Equals_Param31, 8))), (not(equals(Equals_Param31, 4));not(equals(Equals_Param30, 7))), (not(equals(Equals_Param30, 4));not(equals(Equals_Param31, 7)))), (not(equals(Equals_Param31, 3));not(equals(Equals_Param30, 4))), (not(equals(Equals_Param31, 2));not(equals(Equals_Param30, 4))), (not(equals(Equals_Param31, 2));not(equals(Equals_Param30, 3))), (not(equals(Equals_Param31, 1));not(equals(Equals_Param30, 4))), (not(equals(Equals_Param31, 1));not(equals(Equals_Param30, 3))), (not(equals(Equals_Param31, 1));not(equals(Equals_Param30, 2))), neighbor(Equals_Param31, Equals_Param30)),  (equals(Equals_Param32, 5):-((not(equals(Equals_Param32, 5));not(equals(Equals_Param33, 8))), (not(equals(Equals_Param32, 6));not(equals(Equals_Param33, 7))), (not(equals(Equals_Param32, 6));not(equals(Equals_Param33, 8))), (not(equals(Equals_Param32, 7));not(equals(Equals_Param33, 8))), (not(equals(Equals_Param33, 1));not(equals(Equals_Param32, 2))), (not(equals(Equals_Param33, 1));not(equals(Equals_Param32, 3))), (not(equals(Equals_Param33, 1));not(equals(Equals_Param32, 4))), (not(equals(Equals_Param33, 2));not(equals(Equals_Param32, 3))), (not(equals(Equals_Param33, 2));not(equals(Equals_Param32, 4))), (not(equals(Equals_Param33, 3));not(equals(Equals_Param32, 4))), (not(equals(Equals_Param33, 5));not(equals(Equals_Param32, 6))), (not(equals(Equals_Param33, 5));not(equals(Equals_Param32, 7))), (not(equals(Equals_Param33, 5));not(equals(Equals_Param32, 8))), (not(equals(Equals_Param33, 6));not(equals(Equals_Param32, 7))), (not(equals(Equals_Param33, 6));not(equals(Equals_Param32, 8))), (not(equals(Equals_Param33, 7));not(equals(Equals_Param32, 8))), (not(equals(Equals_Param32, 4));not(equals(Equals_Param33, 7))), (not(equals(Equals_Param33, 4));not(equals(Equals_Param32, 7)))), (not(equals(Equals_Param32, 5));not(equals(Equals_Param33, 6))), (not(equals(Equals_Param32, 3));not(equals(Equals_Param33, 4))), (not(equals(Equals_Param32, 2));not(equals(Equals_Param33, 4))), (not(equals(Equals_Param32, 2));not(equals(Equals_Param33, 3))), (not(equals(Equals_Param32, 1));not(equals(Equals_Param33, 4))), (not(equals(Equals_Param32, 1));not(equals(Equals_Param33, 3))), (not(equals(Equals_Param32, 1));not(equals(Equals_Param33, 2))), neighbor(Equals_Param32, Equals_Param33)),  (equals(Equals_Param34, 7):-((not(equals(Equals_Param35, 5));not(equals(Equals_Param34, 8))), (not(equals(Equals_Param35, 6));not(equals(Equals_Param34, 7))), (not(equals(Equals_Param35, 6));not(equals(Equals_Param34, 8))), (not(equals(Equals_Param35, 7));not(equals(Equals_Param34, 8))), (not(equals(Equals_Param34, 1));not(equals(Equals_Param35, 2))), (not(equals(Equals_Param34, 1));not(equals(Equals_Param35, 3))), (not(equals(Equals_Param34, 1));not(equals(Equals_Param35, 4))), (not(equals(Equals_Param34, 2));not(equals(Equals_Param35, 3))), (not(equals(Equals_Param34, 2));not(equals(Equals_Param35, 4))), (not(equals(Equals_Param34, 3));not(equals(Equals_Param35, 4))), (not(equals(Equals_Param34, 5));not(equals(Equals_Param35, 6))), (not(equals(Equals_Param34, 5));not(equals(Equals_Param35, 7))), (not(equals(Equals_Param34, 5));not(equals(Equals_Param35, 8))), (not(equals(Equals_Param34, 6));not(equals(Equals_Param35, 7))), (not(equals(Equals_Param34, 6));not(equals(Equals_Param35, 8))), (not(equals(Equals_Param34, 7));not(equals(Equals_Param35, 8))), (not(equals(Equals_Param35, 4));not(equals(Equals_Param34, 7))), (not(equals(Equals_Param34, 4));not(equals(Equals_Param35, 7)))), (not(equals(Equals_Param35, 5));not(equals(Equals_Param34, 6))), (not(equals(Equals_Param35, 3));not(equals(Equals_Param34, 4))), (not(equals(Equals_Param35, 2));not(equals(Equals_Param34, 4))), (not(equals(Equals_Param35, 2));not(equals(Equals_Param34, 3))), (not(equals(Equals_Param35, 1));not(equals(Equals_Param34, 4))), (not(equals(Equals_Param35, 1));not(equals(Equals_Param34, 3))), (not(equals(Equals_Param35, 1));not(equals(Equals_Param34, 2))), neighbor(Equals_Param35, Equals_Param34)),  (equals(Equals_Param36, 5):-((not(equals(Equals_Param36, 6));not(equals(Equals_Param37, 7))), (not(equals(Equals_Param36, 6));not(equals(Equals_Param37, 8))), (not(equals(Equals_Param36, 7));not(equals(Equals_Param37, 8))), (not(equals(Equals_Param37, 1));not(equals(Equals_Param36, 2))), (not(equals(Equals_Param37, 1));not(equals(Equals_Param36, 3))), (not(equals(Equals_Param37, 1));not(equals(Equals_Param36, 4))), (not(equals(Equals_Param37, 2));not(equals(Equals_Param36, 3))), (not(equals(Equals_Param37, 2));not(equals(Equals_Param36, 4))), (not(equals(Equals_Param37, 3));not(equals(Equals_Param36, 4))), (not(equals(Equals_Param37, 5));not(equals(Equals_Param36, 6))), (not(equals(Equals_Param37, 5));not(equals(Equals_Param36, 7))), (not(equals(Equals_Param37, 5));not(equals(Equals_Param36, 8))), (not(equals(Equals_Param37, 6));not(equals(Equals_Param36, 7))), (not(equals(Equals_Param37, 6));not(equals(Equals_Param36, 8))), (not(equals(Equals_Param37, 7));not(equals(Equals_Param36, 8))), (not(equals(Equals_Param36, 4));not(equals(Equals_Param37, 7))), (not(equals(Equals_Param37, 4));not(equals(Equals_Param36, 7)))), (not(equals(Equals_Param36, 5));not(equals(Equals_Param37, 7))), (not(equals(Equals_Param36, 5));not(equals(Equals_Param37, 6))), (not(equals(Equals_Param36, 3));not(equals(Equals_Param37, 4))), (not(equals(Equals_Param36, 2));not(equals(Equals_Param37, 4))), (not(equals(Equals_Param36, 2));not(equals(Equals_Param37, 3))), (not(equals(Equals_Param36, 1));not(equals(Equals_Param37, 4))), (not(equals(Equals_Param36, 1));not(equals(Equals_Param37, 3))), (not(equals(Equals_Param36, 1));not(equals(Equals_Param37, 2))), neighbor(Equals_Param36, Equals_Param37)),  (equals(Equals_Param38, 8):-((not(equals(Equals_Param39, 6));not(equals(Equals_Param38, 7))), (not(equals(Equals_Param39, 6));not(equals(Equals_Param38, 8))), (not(equals(Equals_Param39, 7));not(equals(Equals_Param38, 8))), (not(equals(Equals_Param38, 1));not(equals(Equals_Param39, 2))), (not(equals(Equals_Param38, 1));not(equals(Equals_Param39, 3))), (not(equals(Equals_Param38, 1));not(equals(Equals_Param39, 4))), (not(equals(Equals_Param38, 2));not(equals(Equals_Param39, 3))), (not(equals(Equals_Param38, 2));not(equals(Equals_Param39, 4))), (not(equals(Equals_Param38, 3));not(equals(Equals_Param39, 4))), (not(equals(Equals_Param38, 5));not(equals(Equals_Param39, 6))), (not(equals(Equals_Param38, 5));not(equals(Equals_Param39, 7))), (not(equals(Equals_Param38, 5));not(equals(Equals_Param39, 8))), (not(equals(Equals_Param38, 6));not(equals(Equals_Param39, 7))), (not(equals(Equals_Param38, 6));not(equals(Equals_Param39, 8))), (not(equals(Equals_Param38, 7));not(equals(Equals_Param39, 8))), (not(equals(Equals_Param39, 4));not(equals(Equals_Param38, 7))), (not(equals(Equals_Param38, 4));not(equals(Equals_Param39, 7)))), (not(equals(Equals_Param39, 5));not(equals(Equals_Param38, 7))), (not(equals(Equals_Param39, 5));not(equals(Equals_Param38, 6))), (not(equals(Equals_Param39, 3));not(equals(Equals_Param38, 4))), (not(equals(Equals_Param39, 2));not(equals(Equals_Param38, 4))), (not(equals(Equals_Param39, 2));not(equals(Equals_Param38, 3))), (not(equals(Equals_Param39, 1));not(equals(Equals_Param38, 4))), (not(equals(Equals_Param39, 1));not(equals(Equals_Param38, 3))), (not(equals(Equals_Param39, 1));not(equals(Equals_Param38, 2))), neighbor(Equals_Param39, Equals_Param38)),  (equals(Equals_Param40, 6):-((not(equals(Equals_Param40, 6));not(equals(Equals_Param41, 8))), (not(equals(Equals_Param40, 7));not(equals(Equals_Param41, 8))), (not(equals(Equals_Param41, 1));not(equals(Equals_Param40, 2))), (not(equals(Equals_Param41, 1));not(equals(Equals_Param40, 3))), (not(equals(Equals_Param41, 1));not(equals(Equals_Param40, 4))), (not(equals(Equals_Param41, 2));not(equals(Equals_Param40, 3))), (not(equals(Equals_Param41, 2));not(equals(Equals_Param40, 4))), (not(equals(Equals_Param41, 3));not(equals(Equals_Param40, 4))), (not(equals(Equals_Param41, 5));not(equals(Equals_Param40, 6))), (not(equals(Equals_Param41, 5));not(equals(Equals_Param40, 7))), (not(equals(Equals_Param41, 5));not(equals(Equals_Param40, 8))), (not(equals(Equals_Param41, 6));not(equals(Equals_Param40, 7))), (not(equals(Equals_Param41, 6));not(equals(Equals_Param40, 8))), (not(equals(Equals_Param41, 7));not(equals(Equals_Param40, 8))), (not(equals(Equals_Param40, 4));not(equals(Equals_Param41, 7))), (not(equals(Equals_Param41, 4));not(equals(Equals_Param40, 7)))), (not(equals(Equals_Param40, 5));not(equals(Equals_Param41, 8))), (not(equals(Equals_Param40, 5));not(equals(Equals_Param41, 7))), (not(equals(Equals_Param40, 5));not(equals(Equals_Param41, 6))), (not(equals(Equals_Param40, 3));not(equals(Equals_Param41, 4))), (not(equals(Equals_Param40, 2));not(equals(Equals_Param41, 4))), (not(equals(Equals_Param40, 2));not(equals(Equals_Param41, 3))), (not(equals(Equals_Param40, 1));not(equals(Equals_Param41, 4))), (not(equals(Equals_Param40, 1));not(equals(Equals_Param41, 3))), (not(equals(Equals_Param40, 1));not(equals(Equals_Param41, 2))), neighbor(Equals_Param40, Equals_Param41)),  (equals(Equals_Param42, 7):-((not(equals(Equals_Param43, 6));not(equals(Equals_Param42, 8))), (not(equals(Equals_Param43, 7));not(equals(Equals_Param42, 8))), (not(equals(Equals_Param42, 1));not(equals(Equals_Param43, 2))), (not(equals(Equals_Param42, 1));not(equals(Equals_Param43, 3))), (not(equals(Equals_Param42, 1));not(equals(Equals_Param43, 4))), (not(equals(Equals_Param42, 2));not(equals(Equals_Param43, 3))), (not(equals(Equals_Param42, 2));not(equals(Equals_Param43, 4))), (not(equals(Equals_Param42, 3));not(equals(Equals_Param43, 4))), (not(equals(Equals_Param42, 5));not(equals(Equals_Param43, 6))), (not(equals(Equals_Param42, 5));not(equals(Equals_Param43, 7))), (not(equals(Equals_Param42, 5));not(equals(Equals_Param43, 8))), (not(equals(Equals_Param42, 6));not(equals(Equals_Param43, 7))), (not(equals(Equals_Param42, 6));not(equals(Equals_Param43, 8))), (not(equals(Equals_Param42, 7));not(equals(Equals_Param43, 8))), (not(equals(Equals_Param43, 4));not(equals(Equals_Param42, 7))), (not(equals(Equals_Param42, 4));not(equals(Equals_Param43, 7)))), (not(equals(Equals_Param43, 5));not(equals(Equals_Param42, 8))), (not(equals(Equals_Param43, 5));not(equals(Equals_Param42, 7))), (not(equals(Equals_Param43, 5));not(equals(Equals_Param42, 6))), (not(equals(Equals_Param43, 3));not(equals(Equals_Param42, 4))), (not(equals(Equals_Param43, 2));not(equals(Equals_Param42, 4))), (not(equals(Equals_Param43, 2));not(equals(Equals_Param42, 3))), (not(equals(Equals_Param43, 1));not(equals(Equals_Param42, 4))), (not(equals(Equals_Param43, 1));not(equals(Equals_Param42, 3))), (not(equals(Equals_Param43, 1));not(equals(Equals_Param42, 2))), neighbor(Equals_Param43, Equals_Param42)),  (equals(Equals_Param44, 6):-((not(equals(Equals_Param44, 7));not(equals(Equals_Param45, 8))), (not(equals(Equals_Param45, 1));not(equals(Equals_Param44, 2))), (not(equals(Equals_Param45, 1));not(equals(Equals_Param44, 3))), (not(equals(Equals_Param45, 1));not(equals(Equals_Param44, 4))), (not(equals(Equals_Param45, 2));not(equals(Equals_Param44, 3))), (not(equals(Equals_Param45, 2));not(equals(Equals_Param44, 4))), (not(equals(Equals_Param45, 3));not(equals(Equals_Param44, 4))), (not(equals(Equals_Param45, 5));not(equals(Equals_Param44, 6))), (not(equals(Equals_Param45, 5));not(equals(Equals_Param44, 7))), (not(equals(Equals_Param45, 5));not(equals(Equals_Param44, 8))), (not(equals(Equals_Param45, 6));not(equals(Equals_Param44, 7))), (not(equals(Equals_Param45, 6));not(equals(Equals_Param44, 8))), (not(equals(Equals_Param45, 7));not(equals(Equals_Param44, 8))), (not(equals(Equals_Param44, 4));not(equals(Equals_Param45, 7))), (not(equals(Equals_Param45, 4));not(equals(Equals_Param44, 7)))), (not(equals(Equals_Param44, 6));not(equals(Equals_Param45, 7))), (not(equals(Equals_Param44, 5));not(equals(Equals_Param45, 8))), (not(equals(Equals_Param44, 5));not(equals(Equals_Param45, 7))), (not(equals(Equals_Param44, 5));not(equals(Equals_Param45, 6))), (not(equals(Equals_Param44, 3));not(equals(Equals_Param45, 4))), (not(equals(Equals_Param44, 2));not(equals(Equals_Param45, 4))), (not(equals(Equals_Param44, 2));not(equals(Equals_Param45, 3))), (not(equals(Equals_Param44, 1));not(equals(Equals_Param45, 4))), (not(equals(Equals_Param44, 1));not(equals(Equals_Param45, 3))), (not(equals(Equals_Param44, 1));not(equals(Equals_Param45, 2))), neighbor(Equals_Param44, Equals_Param45)),  (equals(Equals_Param46, 8):-((not(equals(Equals_Param47, 7));not(equals(Equals_Param46, 8))), (not(equals(Equals_Param46, 1));not(equals(Equals_Param47, 2))), (not(equals(Equals_Param46, 1));not(equals(Equals_Param47, 3))), (not(equals(Equals_Param46, 1));not(equals(Equals_Param47, 4))), (not(equals(Equals_Param46, 2));not(equals(Equals_Param47, 3))), (not(equals(Equals_Param46, 2));not(equals(Equals_Param47, 4))), (not(equals(Equals_Param46, 3));not(equals(Equals_Param47, 4))), (not(equals(Equals_Param46, 5));not(equals(Equals_Param47, 6))), (not(equals(Equals_Param46, 5));not(equals(Equals_Param47, 7))), (not(equals(Equals_Param46, 5));not(equals(Equals_Param47, 8))), (not(equals(Equals_Param46, 6));not(equals(Equals_Param47, 7))), (not(equals(Equals_Param46, 6));not(equals(Equals_Param47, 8))), (not(equals(Equals_Param46, 7));not(equals(Equals_Param47, 8))), (not(equals(Equals_Param47, 4));not(equals(Equals_Param46, 7))), (not(equals(Equals_Param46, 4));not(equals(Equals_Param47, 7)))), (not(equals(Equals_Param47, 6));not(equals(Equals_Param46, 7))), (not(equals(Equals_Param47, 5));not(equals(Equals_Param46, 8))), (not(equals(Equals_Param47, 5));not(equals(Equals_Param46, 7))), (not(equals(Equals_Param47, 5));not(equals(Equals_Param46, 6))), (not(equals(Equals_Param47, 3));not(equals(Equals_Param46, 4))), (not(equals(Equals_Param47, 2));not(equals(Equals_Param46, 4))), (not(equals(Equals_Param47, 2));not(equals(Equals_Param46, 3))), (not(equals(Equals_Param47, 1));not(equals(Equals_Param46, 4))), (not(equals(Equals_Param47, 1));not(equals(Equals_Param46, 3))), (not(equals(Equals_Param47, 1));not(equals(Equals_Param46, 2))), neighbor(Equals_Param47, Equals_Param46)),  (equals(Equals_Param48, 7):-((not(equals(Equals_Param49, 1));not(equals(Equals_Param48, 2))), (not(equals(Equals_Param49, 1));not(equals(Equals_Param48, 3))), (not(equals(Equals_Param49, 1));not(equals(Equals_Param48, 4))), (not(equals(Equals_Param49, 2));not(equals(Equals_Param48, 3))), (not(equals(Equals_Param49, 2));not(equals(Equals_Param48, 4))), (not(equals(Equals_Param49, 3));not(equals(Equals_Param48, 4))), (not(equals(Equals_Param49, 5));not(equals(Equals_Param48, 6))), (not(equals(Equals_Param49, 5));not(equals(Equals_Param48, 7))), (not(equals(Equals_Param49, 5));not(equals(Equals_Param48, 8))), (not(equals(Equals_Param49, 6));not(equals(Equals_Param48, 7))), (not(equals(Equals_Param49, 6));not(equals(Equals_Param48, 8))), (not(equals(Equals_Param49, 7));not(equals(Equals_Param48, 8))), (not(equals(Equals_Param48, 4));not(equals(Equals_Param49, 7))), (not(equals(Equals_Param49, 4));not(equals(Equals_Param48, 7)))), (not(equals(Equals_Param48, 6));not(equals(Equals_Param49, 8))), (not(equals(Equals_Param48, 6));not(equals(Equals_Param49, 7))), (not(equals(Equals_Param48, 5));not(equals(Equals_Param49, 8))), (not(equals(Equals_Param48, 5));not(equals(Equals_Param49, 7))), (not(equals(Equals_Param48, 5));not(equals(Equals_Param49, 6))), (not(equals(Equals_Param48, 3));not(equals(Equals_Param49, 4))), (not(equals(Equals_Param48, 2));not(equals(Equals_Param49, 4))), (not(equals(Equals_Param48, 2));not(equals(Equals_Param49, 3))), (not(equals(Equals_Param48, 1));not(equals(Equals_Param49, 4))), (not(equals(Equals_Param48, 1));not(equals(Equals_Param49, 3))), (not(equals(Equals_Param48, 1));not(equals(Equals_Param49, 2))), neighbor(Equals_Param48, Equals_Param49)),  (equals(Equals_Param50, 8):-((not(equals(Equals_Param50, 1));not(equals(Equals_Param51, 2))), (not(equals(Equals_Param50, 1));not(equals(Equals_Param51, 3))), (not(equals(Equals_Param50, 1));not(equals(Equals_Param51, 4))), (not(equals(Equals_Param50, 2));not(equals(Equals_Param51, 3))), (not(equals(Equals_Param50, 2));not(equals(Equals_Param51, 4))), (not(equals(Equals_Param50, 3));not(equals(Equals_Param51, 4))), (not(equals(Equals_Param50, 5));not(equals(Equals_Param51, 6))), (not(equals(Equals_Param50, 5));not(equals(Equals_Param51, 7))), (not(equals(Equals_Param50, 5));not(equals(Equals_Param51, 8))), (not(equals(Equals_Param50, 6));not(equals(Equals_Param51, 7))), (not(equals(Equals_Param50, 6));not(equals(Equals_Param51, 8))), (not(equals(Equals_Param50, 7));not(equals(Equals_Param51, 8))), (not(equals(Equals_Param51, 4));not(equals(Equals_Param50, 7))), (not(equals(Equals_Param50, 4));not(equals(Equals_Param51, 7)))), (not(equals(Equals_Param51, 6));not(equals(Equals_Param50, 8))), (not(equals(Equals_Param51, 6));not(equals(Equals_Param50, 7))), (not(equals(Equals_Param51, 5));not(equals(Equals_Param50, 8))), (not(equals(Equals_Param51, 5));not(equals(Equals_Param50, 7))), (not(equals(Equals_Param51, 5));not(equals(Equals_Param50, 6))), (not(equals(Equals_Param51, 3));not(equals(Equals_Param50, 4))), (not(equals(Equals_Param51, 2));not(equals(Equals_Param50, 4))), (not(equals(Equals_Param51, 2));not(equals(Equals_Param50, 3))), (not(equals(Equals_Param51, 1));not(equals(Equals_Param50, 4))), (not(equals(Equals_Param51, 1));not(equals(Equals_Param50, 3))), (not(equals(Equals_Param51, 1));not(equals(Equals_Param50, 2))), neighbor(Equals_Param51, Equals_Param50)),  (equals(Equals_Param52, 1):-((not(equals(Equals_Param52, 1));not(equals(Equals_Param53, 3))), (not(equals(Equals_Param52, 1));not(equals(Equals_Param53, 4))), (not(equals(Equals_Param52, 2));not(equals(Equals_Param53, 3))), (not(equals(Equals_Param52, 2));not(equals(Equals_Param53, 4))), (not(equals(Equals_Param52, 3));not(equals(Equals_Param53, 4))), (not(equals(Equals_Param52, 5));not(equals(Equals_Param53, 6))), (not(equals(Equals_Param52, 5));not(equals(Equals_Param53, 7))), (not(equals(Equals_Param52, 5));not(equals(Equals_Param53, 8))), (not(equals(Equals_Param52, 6));not(equals(Equals_Param53, 7))), (not(equals(Equals_Param52, 6));not(equals(Equals_Param53, 8))), (not(equals(Equals_Param52, 7));not(equals(Equals_Param53, 8))), (not(equals(Equals_Param53, 4));not(equals(Equals_Param52, 7))), (not(equals(Equals_Param52, 4));not(equals(Equals_Param53, 7)))), (not(equals(Equals_Param53, 7));not(equals(Equals_Param52, 8))), (not(equals(Equals_Param53, 6));not(equals(Equals_Param52, 8))), (not(equals(Equals_Param53, 6));not(equals(Equals_Param52, 7))), (not(equals(Equals_Param53, 5));not(equals(Equals_Param52, 8))), (not(equals(Equals_Param53, 5));not(equals(Equals_Param52, 7))), (not(equals(Equals_Param53, 5));not(equals(Equals_Param52, 6))), (not(equals(Equals_Param53, 3));not(equals(Equals_Param52, 4))), (not(equals(Equals_Param53, 2));not(equals(Equals_Param52, 4))), (not(equals(Equals_Param53, 2));not(equals(Equals_Param52, 3))), (not(equals(Equals_Param53, 1));not(equals(Equals_Param52, 4))), (not(equals(Equals_Param53, 1));not(equals(Equals_Param52, 3))), (not(equals(Equals_Param53, 1));not(equals(Equals_Param52, 2))), neighbor(Equals_Param53, Equals_Param52)),  (equals(Equals_Param54, 2):-((not(equals(Equals_Param55, 1));not(equals(Equals_Param54, 3))), (not(equals(Equals_Param55, 1));not(equals(Equals_Param54, 4))), (not(equals(Equals_Param55, 2));not(equals(Equals_Param54, 3))), (not(equals(Equals_Param55, 2));not(equals(Equals_Param54, 4))), (not(equals(Equals_Param55, 3));not(equals(Equals_Param54, 4))), (not(equals(Equals_Param55, 5));not(equals(Equals_Param54, 6))), (not(equals(Equals_Param55, 5));not(equals(Equals_Param54, 7))), (not(equals(Equals_Param55, 5));not(equals(Equals_Param54, 8))), (not(equals(Equals_Param55, 6));not(equals(Equals_Param54, 7))), (not(equals(Equals_Param55, 6));not(equals(Equals_Param54, 8))), (not(equals(Equals_Param55, 7));not(equals(Equals_Param54, 8))), (not(equals(Equals_Param54, 4));not(equals(Equals_Param55, 7))), (not(equals(Equals_Param55, 4));not(equals(Equals_Param54, 7)))), (not(equals(Equals_Param54, 7));not(equals(Equals_Param55, 8))), (not(equals(Equals_Param54, 6));not(equals(Equals_Param55, 8))), (not(equals(Equals_Param54, 6));not(equals(Equals_Param55, 7))), (not(equals(Equals_Param54, 5));not(equals(Equals_Param55, 8))), (not(equals(Equals_Param54, 5));not(equals(Equals_Param55, 7))), (not(equals(Equals_Param54, 5));not(equals(Equals_Param55, 6))), (not(equals(Equals_Param54, 3));not(equals(Equals_Param55, 4))), (not(equals(Equals_Param54, 2));not(equals(Equals_Param55, 4))), (not(equals(Equals_Param54, 2));not(equals(Equals_Param55, 3))), (not(equals(Equals_Param54, 1));not(equals(Equals_Param55, 4))), (not(equals(Equals_Param54, 1));not(equals(Equals_Param55, 3))), (not(equals(Equals_Param54, 1));not(equals(Equals_Param55, 2))), neighbor(Equals_Param54, Equals_Param55)),  (equals(Equals_Param56, 1):-((not(equals(Equals_Param56, 1));not(equals(Equals_Param57, 4))), (not(equals(Equals_Param56, 2));not(equals(Equals_Param57, 3))), (not(equals(Equals_Param56, 2));not(equals(Equals_Param57, 4))), (not(equals(Equals_Param56, 3));not(equals(Equals_Param57, 4))), (not(equals(Equals_Param56, 5));not(equals(Equals_Param57, 6))), (not(equals(Equals_Param56, 5));not(equals(Equals_Param57, 7))), (not(equals(Equals_Param56, 5));not(equals(Equals_Param57, 8))), (not(equals(Equals_Param56, 6));not(equals(Equals_Param57, 7))), (not(equals(Equals_Param56, 6));not(equals(Equals_Param57, 8))), (not(equals(Equals_Param56, 7));not(equals(Equals_Param57, 8))), (not(equals(Equals_Param57, 4));not(equals(Equals_Param56, 7))), (not(equals(Equals_Param56, 4));not(equals(Equals_Param57, 7)))), (not(equals(Equals_Param56, 1));not(equals(Equals_Param57, 2))), (not(equals(Equals_Param57, 7));not(equals(Equals_Param56, 8))), (not(equals(Equals_Param57, 6));not(equals(Equals_Param56, 8))), (not(equals(Equals_Param57, 6));not(equals(Equals_Param56, 7))), (not(equals(Equals_Param57, 5));not(equals(Equals_Param56, 8))), (not(equals(Equals_Param57, 5));not(equals(Equals_Param56, 7))), (not(equals(Equals_Param57, 5));not(equals(Equals_Param56, 6))), (not(equals(Equals_Param57, 3));not(equals(Equals_Param56, 4))), (not(equals(Equals_Param57, 2));not(equals(Equals_Param56, 4))), (not(equals(Equals_Param57, 2));not(equals(Equals_Param56, 3))), (not(equals(Equals_Param57, 1));not(equals(Equals_Param56, 4))), (not(equals(Equals_Param57, 1));not(equals(Equals_Param56, 3))), (not(equals(Equals_Param57, 1));not(equals(Equals_Param56, 2))), neighbor(Equals_Param57, Equals_Param56)),  (equals(Equals_Param58, 3):-((not(equals(Equals_Param59, 1));not(equals(Equals_Param58, 4))), (not(equals(Equals_Param59, 2));not(equals(Equals_Param58, 3))), (not(equals(Equals_Param59, 2));not(equals(Equals_Param58, 4))), (not(equals(Equals_Param59, 3));not(equals(Equals_Param58, 4))), (not(equals(Equals_Param59, 5));not(equals(Equals_Param58, 6))), (not(equals(Equals_Param59, 5));not(equals(Equals_Param58, 7))), (not(equals(Equals_Param59, 5));not(equals(Equals_Param58, 8))), (not(equals(Equals_Param59, 6));not(equals(Equals_Param58, 7))), (not(equals(Equals_Param59, 6));not(equals(Equals_Param58, 8))), (not(equals(Equals_Param59, 7));not(equals(Equals_Param58, 8))), (not(equals(Equals_Param58, 4));not(equals(Equals_Param59, 7))), (not(equals(Equals_Param59, 4));not(equals(Equals_Param58, 7)))), (not(equals(Equals_Param59, 1));not(equals(Equals_Param58, 2))), (not(equals(Equals_Param58, 7));not(equals(Equals_Param59, 8))), (not(equals(Equals_Param58, 6));not(equals(Equals_Param59, 8))), (not(equals(Equals_Param58, 6));not(equals(Equals_Param59, 7))), (not(equals(Equals_Param58, 5));not(equals(Equals_Param59, 8))), (not(equals(Equals_Param58, 5));not(equals(Equals_Param59, 7))), (not(equals(Equals_Param58, 5));not(equals(Equals_Param59, 6))), (not(equals(Equals_Param58, 3));not(equals(Equals_Param59, 4))), (not(equals(Equals_Param58, 2));not(equals(Equals_Param59, 4))), (not(equals(Equals_Param58, 2));not(equals(Equals_Param59, 3))), (not(equals(Equals_Param58, 1));not(equals(Equals_Param59, 4))), (not(equals(Equals_Param58, 1));not(equals(Equals_Param59, 3))), (not(equals(Equals_Param58, 1));not(equals(Equals_Param59, 2))), neighbor(Equals_Param58, Equals_Param59)),  (equals(Equals_Param60, 1):-((not(equals(Equals_Param60, 2));not(equals(Equals_Param61, 3))), (not(equals(Equals_Param60, 2));not(equals(Equals_Param61, 4))), (not(equals(Equals_Param60, 3));not(equals(Equals_Param61, 4))), (not(equals(Equals_Param60, 5));not(equals(Equals_Param61, 6))), (not(equals(Equals_Param60, 5));not(equals(Equals_Param61, 7))), (not(equals(Equals_Param60, 5));not(equals(Equals_Param61, 8))), (not(equals(Equals_Param60, 6));not(equals(Equals_Param61, 7))), (not(equals(Equals_Param60, 6));not(equals(Equals_Param61, 8))), (not(equals(Equals_Param60, 7));not(equals(Equals_Param61, 8))), (not(equals(Equals_Param61, 4));not(equals(Equals_Param60, 7))), (not(equals(Equals_Param60, 4));not(equals(Equals_Param61, 7)))), (not(equals(Equals_Param60, 1));not(equals(Equals_Param61, 3))), (not(equals(Equals_Param60, 1));not(equals(Equals_Param61, 2))), (not(equals(Equals_Param61, 7));not(equals(Equals_Param60, 8))), (not(equals(Equals_Param61, 6));not(equals(Equals_Param60, 8))), (not(equals(Equals_Param61, 6));not(equals(Equals_Param60, 7))), (not(equals(Equals_Param61, 5));not(equals(Equals_Param60, 8))), (not(equals(Equals_Param61, 5));not(equals(Equals_Param60, 7))), (not(equals(Equals_Param61, 5));not(equals(Equals_Param60, 6))), (not(equals(Equals_Param61, 3));not(equals(Equals_Param60, 4))), (not(equals(Equals_Param61, 2));not(equals(Equals_Param60, 4))), (not(equals(Equals_Param61, 2));not(equals(Equals_Param60, 3))), (not(equals(Equals_Param61, 1));not(equals(Equals_Param60, 4))), (not(equals(Equals_Param61, 1));not(equals(Equals_Param60, 3))), (not(equals(Equals_Param61, 1));not(equals(Equals_Param60, 2))), neighbor(Equals_Param61, Equals_Param60)),  (equals(Equals_Param62, 4):-((not(equals(Equals_Param63, 2));not(equals(Equals_Param62, 3))), (not(equals(Equals_Param63, 2));not(equals(Equals_Param62, 4))), (not(equals(Equals_Param63, 3));not(equals(Equals_Param62, 4))), (not(equals(Equals_Param63, 5));not(equals(Equals_Param62, 6))), (not(equals(Equals_Param63, 5));not(equals(Equals_Param62, 7))), (not(equals(Equals_Param63, 5));not(equals(Equals_Param62, 8))), (not(equals(Equals_Param63, 6));not(equals(Equals_Param62, 7))), (not(equals(Equals_Param63, 6));not(equals(Equals_Param62, 8))), (not(equals(Equals_Param63, 7));not(equals(Equals_Param62, 8))), (not(equals(Equals_Param62, 4));not(equals(Equals_Param63, 7))), (not(equals(Equals_Param63, 4));not(equals(Equals_Param62, 7)))), (not(equals(Equals_Param63, 1));not(equals(Equals_Param62, 3))), (not(equals(Equals_Param63, 1));not(equals(Equals_Param62, 2))), (not(equals(Equals_Param62, 7));not(equals(Equals_Param63, 8))), (not(equals(Equals_Param62, 6));not(equals(Equals_Param63, 8))), (not(equals(Equals_Param62, 6));not(equals(Equals_Param63, 7))), (not(equals(Equals_Param62, 5));not(equals(Equals_Param63, 8))), (not(equals(Equals_Param62, 5));not(equals(Equals_Param63, 7))), (not(equals(Equals_Param62, 5));not(equals(Equals_Param63, 6))), (not(equals(Equals_Param62, 3));not(equals(Equals_Param63, 4))), (not(equals(Equals_Param62, 2));not(equals(Equals_Param63, 4))), (not(equals(Equals_Param62, 2));not(equals(Equals_Param63, 3))), (not(equals(Equals_Param62, 1));not(equals(Equals_Param63, 4))), (not(equals(Equals_Param62, 1));not(equals(Equals_Param63, 3))), (not(equals(Equals_Param62, 1));not(equals(Equals_Param63, 2))), neighbor(Equals_Param62, Equals_Param63)),  (equals(Equals_Param64, 2):-((not(equals(Equals_Param64, 2));not(equals(Equals_Param65, 4))), (not(equals(Equals_Param64, 3));not(equals(Equals_Param65, 4))), (not(equals(Equals_Param64, 5));not(equals(Equals_Param65, 6))), (not(equals(Equals_Param64, 5));not(equals(Equals_Param65, 7))), (not(equals(Equals_Param64, 5));not(equals(Equals_Param65, 8))), (not(equals(Equals_Param64, 6));not(equals(Equals_Param65, 7))), (not(equals(Equals_Param64, 6));not(equals(Equals_Param65, 8))), (not(equals(Equals_Param64, 7));not(equals(Equals_Param65, 8))), (not(equals(Equals_Param65, 4));not(equals(Equals_Param64, 7))), (not(equals(Equals_Param64, 4));not(equals(Equals_Param65, 7)))), (not(equals(Equals_Param64, 1));not(equals(Equals_Param65, 4))), (not(equals(Equals_Param64, 1));not(equals(Equals_Param65, 3))), (not(equals(Equals_Param64, 1));not(equals(Equals_Param65, 2))), (not(equals(Equals_Param65, 7));not(equals(Equals_Param64, 8))), (not(equals(Equals_Param65, 6));not(equals(Equals_Param64, 8))), (not(equals(Equals_Param65, 6));not(equals(Equals_Param64, 7))), (not(equals(Equals_Param65, 5));not(equals(Equals_Param64, 8))), (not(equals(Equals_Param65, 5));not(equals(Equals_Param64, 7))), (not(equals(Equals_Param65, 5));not(equals(Equals_Param64, 6))), (not(equals(Equals_Param65, 3));not(equals(Equals_Param64, 4))), (not(equals(Equals_Param65, 2));not(equals(Equals_Param64, 4))), (not(equals(Equals_Param65, 2));not(equals(Equals_Param64, 3))), (not(equals(Equals_Param65, 1));not(equals(Equals_Param64, 4))), (not(equals(Equals_Param65, 1));not(equals(Equals_Param64, 3))), (not(equals(Equals_Param65, 1));not(equals(Equals_Param64, 2))), neighbor(Equals_Param65, Equals_Param64)),  (equals(Equals_Param66, 3):-((not(equals(Equals_Param67, 2));not(equals(Equals_Param66, 4))), (not(equals(Equals_Param67, 3));not(equals(Equals_Param66, 4))), (not(equals(Equals_Param67, 5));not(equals(Equals_Param66, 6))), (not(equals(Equals_Param67, 5));not(equals(Equals_Param66, 7))), (not(equals(Equals_Param67, 5));not(equals(Equals_Param66, 8))), (not(equals(Equals_Param67, 6));not(equals(Equals_Param66, 7))), (not(equals(Equals_Param67, 6));not(equals(Equals_Param66, 8))), (not(equals(Equals_Param67, 7));not(equals(Equals_Param66, 8))), (not(equals(Equals_Param66, 4));not(equals(Equals_Param67, 7))), (not(equals(Equals_Param67, 4));not(equals(Equals_Param66, 7)))), (not(equals(Equals_Param67, 1));not(equals(Equals_Param66, 4))), (not(equals(Equals_Param67, 1));not(equals(Equals_Param66, 3))), (not(equals(Equals_Param67, 1));not(equals(Equals_Param66, 2))), (not(equals(Equals_Param66, 7));not(equals(Equals_Param67, 8))), (not(equals(Equals_Param66, 6));not(equals(Equals_Param67, 8))), (not(equals(Equals_Param66, 6));not(equals(Equals_Param67, 7))), (not(equals(Equals_Param66, 5));not(equals(Equals_Param67, 8))), (not(equals(Equals_Param66, 5));not(equals(Equals_Param67, 7))), (not(equals(Equals_Param66, 5));not(equals(Equals_Param67, 6))), (not(equals(Equals_Param66, 3));not(equals(Equals_Param67, 4))), (not(equals(Equals_Param66, 2));not(equals(Equals_Param67, 4))), (not(equals(Equals_Param66, 2));not(equals(Equals_Param67, 3))), (not(equals(Equals_Param66, 1));not(equals(Equals_Param67, 4))), (not(equals(Equals_Param66, 1));not(equals(Equals_Param67, 3))), (not(equals(Equals_Param66, 1));not(equals(Equals_Param67, 2))), neighbor(Equals_Param66, Equals_Param67)),  (equals(Equals_Param68, 2):-((not(equals(Equals_Param68, 3));not(equals(Equals_Param69, 4))), (not(equals(Equals_Param68, 5));not(equals(Equals_Param69, 6))), (not(equals(Equals_Param68, 5));not(equals(Equals_Param69, 7))), (not(equals(Equals_Param68, 5));not(equals(Equals_Param69, 8))), (not(equals(Equals_Param68, 6));not(equals(Equals_Param69, 7))), (not(equals(Equals_Param68, 6));not(equals(Equals_Param69, 8))), (not(equals(Equals_Param68, 7));not(equals(Equals_Param69, 8))), (not(equals(Equals_Param69, 4));not(equals(Equals_Param68, 7))), (not(equals(Equals_Param68, 4));not(equals(Equals_Param69, 7)))), (not(equals(Equals_Param68, 2));not(equals(Equals_Param69, 3))), (not(equals(Equals_Param68, 1));not(equals(Equals_Param69, 4))), (not(equals(Equals_Param68, 1));not(equals(Equals_Param69, 3))), (not(equals(Equals_Param68, 1));not(equals(Equals_Param69, 2))), (not(equals(Equals_Param69, 7));not(equals(Equals_Param68, 8))), (not(equals(Equals_Param69, 6));not(equals(Equals_Param68, 8))), (not(equals(Equals_Param69, 6));not(equals(Equals_Param68, 7))), (not(equals(Equals_Param69, 5));not(equals(Equals_Param68, 8))), (not(equals(Equals_Param69, 5));not(equals(Equals_Param68, 7))), (not(equals(Equals_Param69, 5));not(equals(Equals_Param68, 6))), (not(equals(Equals_Param69, 3));not(equals(Equals_Param68, 4))), (not(equals(Equals_Param69, 2));not(equals(Equals_Param68, 4))), (not(equals(Equals_Param69, 2));not(equals(Equals_Param68, 3))), (not(equals(Equals_Param69, 1));not(equals(Equals_Param68, 4))), (not(equals(Equals_Param69, 1));not(equals(Equals_Param68, 3))), (not(equals(Equals_Param69, 1));not(equals(Equals_Param68, 2))), neighbor(Equals_Param69, Equals_Param68)),  (equals(Equals_Param70, 4):-((not(equals(Equals_Param71, 3));not(equals(Equals_Param70, 4))), (not(equals(Equals_Param71, 5));not(equals(Equals_Param70, 6))), (not(equals(Equals_Param71, 5));not(equals(Equals_Param70, 7))), (not(equals(Equals_Param71, 5));not(equals(Equals_Param70, 8))), (not(equals(Equals_Param71, 6));not(equals(Equals_Param70, 7))), (not(equals(Equals_Param71, 6));not(equals(Equals_Param70, 8))), (not(equals(Equals_Param71, 7));not(equals(Equals_Param70, 8))), (not(equals(Equals_Param70, 4));not(equals(Equals_Param71, 7))), (not(equals(Equals_Param71, 4));not(equals(Equals_Param70, 7)))), (not(equals(Equals_Param71, 2));not(equals(Equals_Param70, 3))), (not(equals(Equals_Param71, 1));not(equals(Equals_Param70, 4))), (not(equals(Equals_Param71, 1));not(equals(Equals_Param70, 3))), (not(equals(Equals_Param71, 1));not(equals(Equals_Param70, 2))), (not(equals(Equals_Param70, 7));not(equals(Equals_Param71, 8))), (not(equals(Equals_Param70, 6));not(equals(Equals_Param71, 8))), (not(equals(Equals_Param70, 6));not(equals(Equals_Param71, 7))), (not(equals(Equals_Param70, 5));not(equals(Equals_Param71, 8))), (not(equals(Equals_Param70, 5));not(equals(Equals_Param71, 7))), (not(equals(Equals_Param70, 5));not(equals(Equals_Param71, 6))), (not(equals(Equals_Param70, 3));not(equals(Equals_Param71, 4))), (not(equals(Equals_Param70, 2));not(equals(Equals_Param71, 4))), (not(equals(Equals_Param70, 2));not(equals(Equals_Param71, 3))), (not(equals(Equals_Param70, 1));not(equals(Equals_Param71, 4))), (not(equals(Equals_Param70, 1));not(equals(Equals_Param71, 3))), (not(equals(Equals_Param70, 1));not(equals(Equals_Param71, 2))), neighbor(Equals_Param70, Equals_Param71)),  (equals(Equals_Param72, 3):-((not(equals(Equals_Param72, 5));not(equals(Equals_Param73, 6))), (not(equals(Equals_Param72, 5));not(equals(Equals_Param73, 7))), (not(equals(Equals_Param72, 5));not(equals(Equals_Param73, 8))), (not(equals(Equals_Param72, 6));not(equals(Equals_Param73, 7))), (not(equals(Equals_Param72, 6));not(equals(Equals_Param73, 8))), (not(equals(Equals_Param72, 7));not(equals(Equals_Param73, 8))), (not(equals(Equals_Param73, 4));not(equals(Equals_Param72, 7))), (not(equals(Equals_Param72, 4));not(equals(Equals_Param73, 7)))), (not(equals(Equals_Param72, 2));not(equals(Equals_Param73, 4))), (not(equals(Equals_Param72, 2));not(equals(Equals_Param73, 3))), (not(equals(Equals_Param72, 1));not(equals(Equals_Param73, 4))), (not(equals(Equals_Param72, 1));not(equals(Equals_Param73, 3))), (not(equals(Equals_Param72, 1));not(equals(Equals_Param73, 2))), (not(equals(Equals_Param73, 7));not(equals(Equals_Param72, 8))), (not(equals(Equals_Param73, 6));not(equals(Equals_Param72, 8))), (not(equals(Equals_Param73, 6));not(equals(Equals_Param72, 7))), (not(equals(Equals_Param73, 5));not(equals(Equals_Param72, 8))), (not(equals(Equals_Param73, 5));not(equals(Equals_Param72, 7))), (not(equals(Equals_Param73, 5));not(equals(Equals_Param72, 6))), (not(equals(Equals_Param73, 3));not(equals(Equals_Param72, 4))), (not(equals(Equals_Param73, 2));not(equals(Equals_Param72, 4))), (not(equals(Equals_Param73, 2));not(equals(Equals_Param72, 3))), (not(equals(Equals_Param73, 1));not(equals(Equals_Param72, 4))), (not(equals(Equals_Param73, 1));not(equals(Equals_Param72, 3))), (not(equals(Equals_Param73, 1));not(equals(Equals_Param72, 2))), neighbor(Equals_Param73, Equals_Param72)),  (equals(Equals_Param74, 4):-((not(equals(Equals_Param75, 5));not(equals(Equals_Param74, 6))), (not(equals(Equals_Param75, 5));not(equals(Equals_Param74, 7))), (not(equals(Equals_Param75, 5));not(equals(Equals_Param74, 8))), (not(equals(Equals_Param75, 6));not(equals(Equals_Param74, 7))), (not(equals(Equals_Param75, 6));not(equals(Equals_Param74, 8))), (not(equals(Equals_Param75, 7));not(equals(Equals_Param74, 8))), (not(equals(Equals_Param74, 4));not(equals(Equals_Param75, 7))), (not(equals(Equals_Param75, 4));not(equals(Equals_Param74, 7)))), (not(equals(Equals_Param75, 2));not(equals(Equals_Param74, 4))), (not(equals(Equals_Param75, 2));not(equals(Equals_Param74, 3))), (not(equals(Equals_Param75, 1));not(equals(Equals_Param74, 4))), (not(equals(Equals_Param75, 1));not(equals(Equals_Param74, 3))), (not(equals(Equals_Param75, 1));not(equals(Equals_Param74, 2))), (not(equals(Equals_Param74, 7));not(equals(Equals_Param75, 8))), (not(equals(Equals_Param74, 6));not(equals(Equals_Param75, 8))), (not(equals(Equals_Param74, 6));not(equals(Equals_Param75, 7))), (not(equals(Equals_Param74, 5));not(equals(Equals_Param75, 8))), (not(equals(Equals_Param74, 5));not(equals(Equals_Param75, 7))), (not(equals(Equals_Param74, 5));not(equals(Equals_Param75, 6))), (not(equals(Equals_Param74, 3));not(equals(Equals_Param75, 4))), (not(equals(Equals_Param74, 2));not(equals(Equals_Param75, 4))), (not(equals(Equals_Param74, 2));not(equals(Equals_Param75, 3))), (not(equals(Equals_Param74, 1));not(equals(Equals_Param75, 4))), (not(equals(Equals_Param74, 1));not(equals(Equals_Param75, 3))), (not(equals(Equals_Param74, 1));not(equals(Equals_Param75, 2))), neighbor(Equals_Param74, Equals_Param75)),  (equals(Equals_Param76, 5):-((not(equals(Equals_Param76, 5));not(equals(Equals_Param77, 7))), (not(equals(Equals_Param76, 5));not(equals(Equals_Param77, 8))), (not(equals(Equals_Param76, 6));not(equals(Equals_Param77, 7))), (not(equals(Equals_Param76, 6));not(equals(Equals_Param77, 8))), (not(equals(Equals_Param76, 7));not(equals(Equals_Param77, 8))), (not(equals(Equals_Param77, 4));not(equals(Equals_Param76, 7))), (not(equals(Equals_Param76, 4));not(equals(Equals_Param77, 7)))), (not(equals(Equals_Param76, 3));not(equals(Equals_Param77, 4))), (not(equals(Equals_Param76, 2));not(equals(Equals_Param77, 4))), (not(equals(Equals_Param76, 2));not(equals(Equals_Param77, 3))), (not(equals(Equals_Param76, 1));not(equals(Equals_Param77, 4))), (not(equals(Equals_Param76, 1));not(equals(Equals_Param77, 3))), (not(equals(Equals_Param76, 1));not(equals(Equals_Param77, 2))), (not(equals(Equals_Param77, 7));not(equals(Equals_Param76, 8))), (not(equals(Equals_Param77, 6));not(equals(Equals_Param76, 8))), (not(equals(Equals_Param77, 6));not(equals(Equals_Param76, 7))), (not(equals(Equals_Param77, 5));not(equals(Equals_Param76, 8))), (not(equals(Equals_Param77, 5));not(equals(Equals_Param76, 7))), (not(equals(Equals_Param77, 5));not(equals(Equals_Param76, 6))), (not(equals(Equals_Param77, 3));not(equals(Equals_Param76, 4))), (not(equals(Equals_Param77, 2));not(equals(Equals_Param76, 4))), (not(equals(Equals_Param77, 2));not(equals(Equals_Param76, 3))), (not(equals(Equals_Param77, 1));not(equals(Equals_Param76, 4))), (not(equals(Equals_Param77, 1));not(equals(Equals_Param76, 3))), (not(equals(Equals_Param77, 1));not(equals(Equals_Param76, 2))), neighbor(Equals_Param77, Equals_Param76)),  (equals(Equals_Param78, 6):-((not(equals(Equals_Param79, 5));not(equals(Equals_Param78, 7))), (not(equals(Equals_Param79, 5));not(equals(Equals_Param78, 8))), (not(equals(Equals_Param79, 6));not(equals(Equals_Param78, 7))), (not(equals(Equals_Param79, 6));not(equals(Equals_Param78, 8))), (not(equals(Equals_Param79, 7));not(equals(Equals_Param78, 8))), (not(equals(Equals_Param78, 4));not(equals(Equals_Param79, 7))), (not(equals(Equals_Param79, 4));not(equals(Equals_Param78, 7)))), (not(equals(Equals_Param79, 3));not(equals(Equals_Param78, 4))), (not(equals(Equals_Param79, 2));not(equals(Equals_Param78, 4))), (not(equals(Equals_Param79, 2));not(equals(Equals_Param78, 3))), (not(equals(Equals_Param79, 1));not(equals(Equals_Param78, 4))), (not(equals(Equals_Param79, 1));not(equals(Equals_Param78, 3))), (not(equals(Equals_Param79, 1));not(equals(Equals_Param78, 2))), (not(equals(Equals_Param78, 7));not(equals(Equals_Param79, 8))), (not(equals(Equals_Param78, 6));not(equals(Equals_Param79, 8))), (not(equals(Equals_Param78, 6));not(equals(Equals_Param79, 7))), (not(equals(Equals_Param78, 5));not(equals(Equals_Param79, 8))), (not(equals(Equals_Param78, 5));not(equals(Equals_Param79, 7))), (not(equals(Equals_Param78, 5));not(equals(Equals_Param79, 6))), (not(equals(Equals_Param78, 3));not(equals(Equals_Param79, 4))), (not(equals(Equals_Param78, 2));not(equals(Equals_Param79, 4))), (not(equals(Equals_Param78, 2));not(equals(Equals_Param79, 3))), (not(equals(Equals_Param78, 1));not(equals(Equals_Param79, 4))), (not(equals(Equals_Param78, 1));not(equals(Equals_Param79, 3))), (not(equals(Equals_Param78, 1));not(equals(Equals_Param79, 2))), neighbor(Equals_Param78, Equals_Param79)),  (equals(Equals_Param80, 5):-((not(equals(Equals_Param80, 5));not(equals(Equals_Param81, 8))), (not(equals(Equals_Param80, 6));not(equals(Equals_Param81, 7))), (not(equals(Equals_Param80, 6));not(equals(Equals_Param81, 8))), (not(equals(Equals_Param80, 7));not(equals(Equals_Param81, 8))), (not(equals(Equals_Param81, 4));not(equals(Equals_Param80, 7))), (not(equals(Equals_Param80, 4));not(equals(Equals_Param81, 7)))), (not(equals(Equals_Param80, 5));not(equals(Equals_Param81, 6))), (not(equals(Equals_Param80, 3));not(equals(Equals_Param81, 4))), (not(equals(Equals_Param80, 2));not(equals(Equals_Param81, 4))), (not(equals(Equals_Param80, 2));not(equals(Equals_Param81, 3))), (not(equals(Equals_Param80, 1));not(equals(Equals_Param81, 4))), (not(equals(Equals_Param80, 1));not(equals(Equals_Param81, 3))), (not(equals(Equals_Param80, 1));not(equals(Equals_Param81, 2))), (not(equals(Equals_Param81, 7));not(equals(Equals_Param80, 8))), (not(equals(Equals_Param81, 6));not(equals(Equals_Param80, 8))), (not(equals(Equals_Param81, 6));not(equals(Equals_Param80, 7))), (not(equals(Equals_Param81, 5));not(equals(Equals_Param80, 8))), (not(equals(Equals_Param81, 5));not(equals(Equals_Param80, 7))), (not(equals(Equals_Param81, 5));not(equals(Equals_Param80, 6))), (not(equals(Equals_Param81, 3));not(equals(Equals_Param80, 4))), (not(equals(Equals_Param81, 2));not(equals(Equals_Param80, 4))), (not(equals(Equals_Param81, 2));not(equals(Equals_Param80, 3))), (not(equals(Equals_Param81, 1));not(equals(Equals_Param80, 4))), (not(equals(Equals_Param81, 1));not(equals(Equals_Param80, 3))), (not(equals(Equals_Param81, 1));not(equals(Equals_Param80, 2))), neighbor(Equals_Param81, Equals_Param80)),  (equals(Equals_Param82, 7):-((not(equals(Equals_Param83, 5));not(equals(Equals_Param82, 8))), (not(equals(Equals_Param83, 6));not(equals(Equals_Param82, 7))), (not(equals(Equals_Param83, 6));not(equals(Equals_Param82, 8))), (not(equals(Equals_Param83, 7));not(equals(Equals_Param82, 8))), (not(equals(Equals_Param82, 4));not(equals(Equals_Param83, 7))), (not(equals(Equals_Param83, 4));not(equals(Equals_Param82, 7)))), (not(equals(Equals_Param83, 5));not(equals(Equals_Param82, 6))), (not(equals(Equals_Param83, 3));not(equals(Equals_Param82, 4))), (not(equals(Equals_Param83, 2));not(equals(Equals_Param82, 4))), (not(equals(Equals_Param83, 2));not(equals(Equals_Param82, 3))), (not(equals(Equals_Param83, 1));not(equals(Equals_Param82, 4))), (not(equals(Equals_Param83, 1));not(equals(Equals_Param82, 3))), (not(equals(Equals_Param83, 1));not(equals(Equals_Param82, 2))), (not(equals(Equals_Param82, 7));not(equals(Equals_Param83, 8))), (not(equals(Equals_Param82, 6));not(equals(Equals_Param83, 8))), (not(equals(Equals_Param82, 6));not(equals(Equals_Param83, 7))), (not(equals(Equals_Param82, 5));not(equals(Equals_Param83, 8))), (not(equals(Equals_Param82, 5));not(equals(Equals_Param83, 7))), (not(equals(Equals_Param82, 5));not(equals(Equals_Param83, 6))), (not(equals(Equals_Param82, 3));not(equals(Equals_Param83, 4))), (not(equals(Equals_Param82, 2));not(equals(Equals_Param83, 4))), (not(equals(Equals_Param82, 2));not(equals(Equals_Param83, 3))), (not(equals(Equals_Param82, 1));not(equals(Equals_Param83, 4))), (not(equals(Equals_Param82, 1));not(equals(Equals_Param83, 3))), (not(equals(Equals_Param82, 1));not(equals(Equals_Param83, 2))), neighbor(Equals_Param82, Equals_Param83)),  (equals(Equals_Param84, 5):-((not(equals(Equals_Param84, 6));not(equals(Equals_Param85, 7))), (not(equals(Equals_Param84, 6));not(equals(Equals_Param85, 8))), (not(equals(Equals_Param84, 7));not(equals(Equals_Param85, 8))), (not(equals(Equals_Param85, 4));not(equals(Equals_Param84, 7))), (not(equals(Equals_Param84, 4));not(equals(Equals_Param85, 7)))), (not(equals(Equals_Param84, 5));not(equals(Equals_Param85, 7))), (not(equals(Equals_Param84, 5));not(equals(Equals_Param85, 6))), (not(equals(Equals_Param84, 3));not(equals(Equals_Param85, 4))), (not(equals(Equals_Param84, 2));not(equals(Equals_Param85, 4))), (not(equals(Equals_Param84, 2));not(equals(Equals_Param85, 3))), (not(equals(Equals_Param84, 1));not(equals(Equals_Param85, 4))), (not(equals(Equals_Param84, 1));not(equals(Equals_Param85, 3))), (not(equals(Equals_Param84, 1));not(equals(Equals_Param85, 2))), (not(equals(Equals_Param85, 7));not(equals(Equals_Param84, 8))), (not(equals(Equals_Param85, 6));not(equals(Equals_Param84, 8))), (not(equals(Equals_Param85, 6));not(equals(Equals_Param84, 7))), (not(equals(Equals_Param85, 5));not(equals(Equals_Param84, 8))), (not(equals(Equals_Param85, 5));not(equals(Equals_Param84, 7))), (not(equals(Equals_Param85, 5));not(equals(Equals_Param84, 6))), (not(equals(Equals_Param85, 3));not(equals(Equals_Param84, 4))), (not(equals(Equals_Param85, 2));not(equals(Equals_Param84, 4))), (not(equals(Equals_Param85, 2));not(equals(Equals_Param84, 3))), (not(equals(Equals_Param85, 1));not(equals(Equals_Param84, 4))), (not(equals(Equals_Param85, 1));not(equals(Equals_Param84, 3))), (not(equals(Equals_Param85, 1));not(equals(Equals_Param84, 2))), neighbor(Equals_Param85, Equals_Param84)),  (equals(Equals_Param86, 8):-((not(equals(Equals_Param87, 6));not(equals(Equals_Param86, 7))), (not(equals(Equals_Param87, 6));not(equals(Equals_Param86, 8))), (not(equals(Equals_Param87, 7));not(equals(Equals_Param86, 8))), (not(equals(Equals_Param86, 4));not(equals(Equals_Param87, 7))), (not(equals(Equals_Param87, 4));not(equals(Equals_Param86, 7)))), (not(equals(Equals_Param87, 5));not(equals(Equals_Param86, 7))), (not(equals(Equals_Param87, 5));not(equals(Equals_Param86, 6))), (not(equals(Equals_Param87, 3));not(equals(Equals_Param86, 4))), (not(equals(Equals_Param87, 2));not(equals(Equals_Param86, 4))), (not(equals(Equals_Param87, 2));not(equals(Equals_Param86, 3))), (not(equals(Equals_Param87, 1));not(equals(Equals_Param86, 4))), (not(equals(Equals_Param87, 1));not(equals(Equals_Param86, 3))), (not(equals(Equals_Param87, 1));not(equals(Equals_Param86, 2))), (not(equals(Equals_Param86, 7));not(equals(Equals_Param87, 8))), (not(equals(Equals_Param86, 6));not(equals(Equals_Param87, 8))), (not(equals(Equals_Param86, 6));not(equals(Equals_Param87, 7))), (not(equals(Equals_Param86, 5));not(equals(Equals_Param87, 8))), (not(equals(Equals_Param86, 5));not(equals(Equals_Param87, 7))), (not(equals(Equals_Param86, 5));not(equals(Equals_Param87, 6))), (not(equals(Equals_Param86, 3));not(equals(Equals_Param87, 4))), (not(equals(Equals_Param86, 2));not(equals(Equals_Param87, 4))), (not(equals(Equals_Param86, 2));not(equals(Equals_Param87, 3))), (not(equals(Equals_Param86, 1));not(equals(Equals_Param87, 4))), (not(equals(Equals_Param86, 1));not(equals(Equals_Param87, 3))), (not(equals(Equals_Param86, 1));not(equals(Equals_Param87, 2))), neighbor(Equals_Param86, Equals_Param87)),  (equals(Equals_Param88, 6):-((not(equals(Equals_Param88, 6));not(equals(Equals_Param89, 8))), (not(equals(Equals_Param88, 7));not(equals(Equals_Param89, 8))), (not(equals(Equals_Param89, 4));not(equals(Equals_Param88, 7))), (not(equals(Equals_Param88, 4));not(equals(Equals_Param89, 7)))), (not(equals(Equals_Param88, 5));not(equals(Equals_Param89, 8))), (not(equals(Equals_Param88, 5));not(equals(Equals_Param89, 7))), (not(equals(Equals_Param88, 5));not(equals(Equals_Param89, 6))), (not(equals(Equals_Param88, 3));not(equals(Equals_Param89, 4))), (not(equals(Equals_Param88, 2));not(equals(Equals_Param89, 4))), (not(equals(Equals_Param88, 2));not(equals(Equals_Param89, 3))), (not(equals(Equals_Param88, 1));not(equals(Equals_Param89, 4))), (not(equals(Equals_Param88, 1));not(equals(Equals_Param89, 3))), (not(equals(Equals_Param88, 1));not(equals(Equals_Param89, 2))), (not(equals(Equals_Param89, 7));not(equals(Equals_Param88, 8))), (not(equals(Equals_Param89, 6));not(equals(Equals_Param88, 8))), (not(equals(Equals_Param89, 6));not(equals(Equals_Param88, 7))), (not(equals(Equals_Param89, 5));not(equals(Equals_Param88, 8))), (not(equals(Equals_Param89, 5));not(equals(Equals_Param88, 7))), (not(equals(Equals_Param89, 5));not(equals(Equals_Param88, 6))), (not(equals(Equals_Param89, 3));not(equals(Equals_Param88, 4))), (not(equals(Equals_Param89, 2));not(equals(Equals_Param88, 4))), (not(equals(Equals_Param89, 2));not(equals(Equals_Param88, 3))), (not(equals(Equals_Param89, 1));not(equals(Equals_Param88, 4))), (not(equals(Equals_Param89, 1));not(equals(Equals_Param88, 3))), (not(equals(Equals_Param89, 1));not(equals(Equals_Param88, 2))), neighbor(Equals_Param89, Equals_Param88)),  (equals(Equals_Param90, 7):-((not(equals(Equals_Param91, 6));not(equals(Equals_Param90, 8))), (not(equals(Equals_Param91, 7));not(equals(Equals_Param90, 8))), (not(equals(Equals_Param90, 4));not(equals(Equals_Param91, 7))), (not(equals(Equals_Param91, 4));not(equals(Equals_Param90, 7)))), (not(equals(Equals_Param91, 5));not(equals(Equals_Param90, 8))), (not(equals(Equals_Param91, 5));not(equals(Equals_Param90, 7))), (not(equals(Equals_Param91, 5));not(equals(Equals_Param90, 6))), (not(equals(Equals_Param91, 3));not(equals(Equals_Param90, 4))), (not(equals(Equals_Param91, 2));not(equals(Equals_Param90, 4))), (not(equals(Equals_Param91, 2));not(equals(Equals_Param90, 3))), (not(equals(Equals_Param91, 1));not(equals(Equals_Param90, 4))), (not(equals(Equals_Param91, 1));not(equals(Equals_Param90, 3))), (not(equals(Equals_Param91, 1));not(equals(Equals_Param90, 2))), (not(equals(Equals_Param90, 7));not(equals(Equals_Param91, 8))), (not(equals(Equals_Param90, 6));not(equals(Equals_Param91, 8))), (not(equals(Equals_Param90, 6));not(equals(Equals_Param91, 7))), (not(equals(Equals_Param90, 5));not(equals(Equals_Param91, 8))), (not(equals(Equals_Param90, 5));not(equals(Equals_Param91, 7))), (not(equals(Equals_Param90, 5));not(equals(Equals_Param91, 6))), (not(equals(Equals_Param90, 3));not(equals(Equals_Param91, 4))), (not(equals(Equals_Param90, 2));not(equals(Equals_Param91, 4))), (not(equals(Equals_Param90, 2));not(equals(Equals_Param91, 3))), (not(equals(Equals_Param90, 1));not(equals(Equals_Param91, 4))), (not(equals(Equals_Param90, 1));not(equals(Equals_Param91, 3))), (not(equals(Equals_Param90, 1));not(equals(Equals_Param91, 2))), neighbor(Equals_Param90, Equals_Param91)),  (equals(Equals_Param92, 6):-((not(equals(Equals_Param92, 7));not(equals(Equals_Param93, 8))), (not(equals(Equals_Param93, 4));not(equals(Equals_Param92, 7))), (not(equals(Equals_Param92, 4));not(equals(Equals_Param93, 7)))), (not(equals(Equals_Param92, 6));not(equals(Equals_Param93, 7))), (not(equals(Equals_Param92, 5));not(equals(Equals_Param93, 8))), (not(equals(Equals_Param92, 5));not(equals(Equals_Param93, 7))), (not(equals(Equals_Param92, 5));not(equals(Equals_Param93, 6))), (not(equals(Equals_Param92, 3));not(equals(Equals_Param93, 4))), (not(equals(Equals_Param92, 2));not(equals(Equals_Param93, 4))), (not(equals(Equals_Param92, 2));not(equals(Equals_Param93, 3))), (not(equals(Equals_Param92, 1));not(equals(Equals_Param93, 4))), (not(equals(Equals_Param92, 1));not(equals(Equals_Param93, 3))), (not(equals(Equals_Param92, 1));not(equals(Equals_Param93, 2))), (not(equals(Equals_Param93, 7));not(equals(Equals_Param92, 8))), (not(equals(Equals_Param93, 6));not(equals(Equals_Param92, 8))), (not(equals(Equals_Param93, 6));not(equals(Equals_Param92, 7))), (not(equals(Equals_Param93, 5));not(equals(Equals_Param92, 8))), (not(equals(Equals_Param93, 5));not(equals(Equals_Param92, 7))), (not(equals(Equals_Param93, 5));not(equals(Equals_Param92, 6))), (not(equals(Equals_Param93, 3));not(equals(Equals_Param92, 4))), (not(equals(Equals_Param93, 2));not(equals(Equals_Param92, 4))), (not(equals(Equals_Param93, 2));not(equals(Equals_Param92, 3))), (not(equals(Equals_Param93, 1));not(equals(Equals_Param92, 4))), (not(equals(Equals_Param93, 1));not(equals(Equals_Param92, 3))), (not(equals(Equals_Param93, 1));not(equals(Equals_Param92, 2))), neighbor(Equals_Param93, Equals_Param92)),  (equals(Equals_Param94, 8):-((not(equals(Equals_Param95, 7));not(equals(Equals_Param94, 8))), (not(equals(Equals_Param94, 4));not(equals(Equals_Param95, 7))), (not(equals(Equals_Param95, 4));not(equals(Equals_Param94, 7)))), (not(equals(Equals_Param95, 6));not(equals(Equals_Param94, 7))), (not(equals(Equals_Param95, 5));not(equals(Equals_Param94, 8))), (not(equals(Equals_Param95, 5));not(equals(Equals_Param94, 7))), (not(equals(Equals_Param95, 5));not(equals(Equals_Param94, 6))), (not(equals(Equals_Param95, 3));not(equals(Equals_Param94, 4))), (not(equals(Equals_Param95, 2));not(equals(Equals_Param94, 4))), (not(equals(Equals_Param95, 2));not(equals(Equals_Param94, 3))), (not(equals(Equals_Param95, 1));not(equals(Equals_Param94, 4))), (not(equals(Equals_Param95, 1));not(equals(Equals_Param94, 3))), (not(equals(Equals_Param95, 1));not(equals(Equals_Param94, 2))), (not(equals(Equals_Param94, 7));not(equals(Equals_Param95, 8))), (not(equals(Equals_Param94, 6));not(equals(Equals_Param95, 8))), (not(equals(Equals_Param94, 6));not(equals(Equals_Param95, 7))), (not(equals(Equals_Param94, 5));not(equals(Equals_Param95, 8))), (not(equals(Equals_Param94, 5));not(equals(Equals_Param95, 7))), (not(equals(Equals_Param94, 5));not(equals(Equals_Param95, 6))), (not(equals(Equals_Param94, 3));not(equals(Equals_Param95, 4))), (not(equals(Equals_Param94, 2));not(equals(Equals_Param95, 4))), (not(equals(Equals_Param94, 2));not(equals(Equals_Param95, 3))), (not(equals(Equals_Param94, 1));not(equals(Equals_Param95, 4))), (not(equals(Equals_Param94, 1));not(equals(Equals_Param95, 3))), (not(equals(Equals_Param94, 1));not(equals(Equals_Param95, 2))), neighbor(Equals_Param94, Equals_Param95)),  (equals(Equals_Param96, 7):-((not(equals(Equals_Param97, 4));not(equals(Equals_Param96, 7))), (not(equals(Equals_Param96, 4));not(equals(Equals_Param97, 7)))), (not(equals(Equals_Param96, 6));not(equals(Equals_Param97, 8))), (not(equals(Equals_Param96, 6));not(equals(Equals_Param97, 7))), (not(equals(Equals_Param96, 5));not(equals(Equals_Param97, 8))), (not(equals(Equals_Param96, 5));not(equals(Equals_Param97, 7))), (not(equals(Equals_Param96, 5));not(equals(Equals_Param97, 6))), (not(equals(Equals_Param96, 3));not(equals(Equals_Param97, 4))), (not(equals(Equals_Param96, 2));not(equals(Equals_Param97, 4))), (not(equals(Equals_Param96, 2));not(equals(Equals_Param97, 3))), (not(equals(Equals_Param96, 1));not(equals(Equals_Param97, 4))), (not(equals(Equals_Param96, 1));not(equals(Equals_Param97, 3))), (not(equals(Equals_Param96, 1));not(equals(Equals_Param97, 2))), (not(equals(Equals_Param97, 7));not(equals(Equals_Param96, 8))), (not(equals(Equals_Param97, 6));not(equals(Equals_Param96, 8))), (not(equals(Equals_Param97, 6));not(equals(Equals_Param96, 7))), (not(equals(Equals_Param97, 5));not(equals(Equals_Param96, 8))), (not(equals(Equals_Param97, 5));not(equals(Equals_Param96, 7))), (not(equals(Equals_Param97, 5));not(equals(Equals_Param96, 6))), (not(equals(Equals_Param97, 3));not(equals(Equals_Param96, 4))), (not(equals(Equals_Param97, 2));not(equals(Equals_Param96, 4))), (not(equals(Equals_Param97, 2));not(equals(Equals_Param96, 3))), (not(equals(Equals_Param97, 1));not(equals(Equals_Param96, 4))), (not(equals(Equals_Param97, 1));not(equals(Equals_Param96, 3))), (not(equals(Equals_Param97, 1));not(equals(Equals_Param96, 2))), neighbor(Equals_Param97, Equals_Param96)),  (equals(Equals_Param98, 8):-((not(equals(Equals_Param98, 4));not(equals(Equals_Param99, 7))), (not(equals(Equals_Param99, 4));not(equals(Equals_Param98, 7)))), (not(equals(Equals_Param99, 6));not(equals(Equals_Param98, 8))), (not(equals(Equals_Param99, 6));not(equals(Equals_Param98, 7))), (not(equals(Equals_Param99, 5));not(equals(Equals_Param98, 8))), (not(equals(Equals_Param99, 5));not(equals(Equals_Param98, 7))), (not(equals(Equals_Param99, 5));not(equals(Equals_Param98, 6))), (not(equals(Equals_Param99, 3));not(equals(Equals_Param98, 4))), (not(equals(Equals_Param99, 2));not(equals(Equals_Param98, 4))), (not(equals(Equals_Param99, 2));not(equals(Equals_Param98, 3))), (not(equals(Equals_Param99, 1));not(equals(Equals_Param98, 4))), (not(equals(Equals_Param99, 1));not(equals(Equals_Param98, 3))), (not(equals(Equals_Param99, 1));not(equals(Equals_Param98, 2))), (not(equals(Equals_Param98, 7));not(equals(Equals_Param99, 8))), (not(equals(Equals_Param98, 6));not(equals(Equals_Param99, 8))), (not(equals(Equals_Param98, 6));not(equals(Equals_Param99, 7))), (not(equals(Equals_Param98, 5));not(equals(Equals_Param99, 8))), (not(equals(Equals_Param98, 5));not(equals(Equals_Param99, 7))), (not(equals(Equals_Param98, 5));not(equals(Equals_Param99, 6))), (not(equals(Equals_Param98, 3));not(equals(Equals_Param99, 4))), (not(equals(Equals_Param98, 2));not(equals(Equals_Param99, 4))), (not(equals(Equals_Param98, 2));not(equals(Equals_Param99, 3))), (not(equals(Equals_Param98, 1));not(equals(Equals_Param99, 4))), (not(equals(Equals_Param98, 1));not(equals(Equals_Param99, 3))), (not(equals(Equals_Param98, 1));not(equals(Equals_Param99, 2))), neighbor(Equals_Param98, Equals_Param99)),  (equals(Equals_Param100, 4):-(not(equals(Equals_Param101, 4));not(equals(Equals_Param100, 7))), (not(equals(Equals_Param101, 7));not(equals(Equals_Param100, 8))), (not(equals(Equals_Param101, 6));not(equals(Equals_Param100, 8))), (not(equals(Equals_Param101, 6));not(equals(Equals_Param100, 7))), (not(equals(Equals_Param101, 5));not(equals(Equals_Param100, 8))), (not(equals(Equals_Param101, 5));not(equals(Equals_Param100, 7))), (not(equals(Equals_Param101, 5));not(equals(Equals_Param100, 6))), (not(equals(Equals_Param101, 3));not(equals(Equals_Param100, 4))), (not(equals(Equals_Param101, 2));not(equals(Equals_Param100, 4))), (not(equals(Equals_Param101, 2));not(equals(Equals_Param100, 3))), (not(equals(Equals_Param101, 1));not(equals(Equals_Param100, 4))), (not(equals(Equals_Param101, 1));not(equals(Equals_Param100, 3))), (not(equals(Equals_Param101, 1));not(equals(Equals_Param100, 2))), (not(equals(Equals_Param100, 7));not(equals(Equals_Param101, 8))), (not(equals(Equals_Param100, 6));not(equals(Equals_Param101, 8))), (not(equals(Equals_Param100, 6));not(equals(Equals_Param101, 7))), (not(equals(Equals_Param100, 5));not(equals(Equals_Param101, 8))), (not(equals(Equals_Param100, 5));not(equals(Equals_Param101, 7))), (not(equals(Equals_Param100, 5));not(equals(Equals_Param101, 6))), (not(equals(Equals_Param100, 3));not(equals(Equals_Param101, 4))), (not(equals(Equals_Param100, 2));not(equals(Equals_Param101, 4))), (not(equals(Equals_Param100, 2));not(equals(Equals_Param101, 3))), (not(equals(Equals_Param100, 1));not(equals(Equals_Param101, 4))), (not(equals(Equals_Param100, 1));not(equals(Equals_Param101, 3))), (not(equals(Equals_Param100, 1));not(equals(Equals_Param101, 2))), neighbor(Equals_Param100, Equals_Param101)),  (equals(Equals_Param102, 7):-(not(equals(Equals_Param102, 4));not(equals(Equals_Param103, 7))), (not(equals(Equals_Param102, 7));not(equals(Equals_Param103, 8))), (not(equals(Equals_Param102, 6));not(equals(Equals_Param103, 8))), (not(equals(Equals_Param102, 6));not(equals(Equals_Param103, 7))), (not(equals(Equals_Param102, 5));not(equals(Equals_Param103, 8))), (not(equals(Equals_Param102, 5));not(equals(Equals_Param103, 7))), (not(equals(Equals_Param102, 5));not(equals(Equals_Param103, 6))), (not(equals(Equals_Param102, 3));not(equals(Equals_Param103, 4))), (not(equals(Equals_Param102, 2));not(equals(Equals_Param103, 4))), (not(equals(Equals_Param102, 2));not(equals(Equals_Param103, 3))), (not(equals(Equals_Param102, 1));not(equals(Equals_Param103, 4))), (not(equals(Equals_Param102, 1));not(equals(Equals_Param103, 3))), (not(equals(Equals_Param102, 1));not(equals(Equals_Param103, 2))), (not(equals(Equals_Param103, 7));not(equals(Equals_Param102, 8))), (not(equals(Equals_Param103, 6));not(equals(Equals_Param102, 8))), (not(equals(Equals_Param103, 6));not(equals(Equals_Param102, 7))), (not(equals(Equals_Param103, 5));not(equals(Equals_Param102, 8))), (not(equals(Equals_Param103, 5));not(equals(Equals_Param102, 7))), (not(equals(Equals_Param103, 5));not(equals(Equals_Param102, 6))), (not(equals(Equals_Param103, 3));not(equals(Equals_Param102, 4))), (not(equals(Equals_Param103, 2));not(equals(Equals_Param102, 4))), (not(equals(Equals_Param103, 2));not(equals(Equals_Param102, 3))), (not(equals(Equals_Param103, 1));not(equals(Equals_Param102, 4))), (not(equals(Equals_Param103, 1));not(equals(Equals_Param102, 3))), (not(equals(Equals_Param103, 1));not(equals(Equals_Param102, 2))), neighbor(Equals_Param103, Equals_Param102)),  (equals(Equals_Param104, 4):-(not(equals(Equals_Param105, 4));not(equals(Equals_Param104, 7))), (not(equals(Equals_Param104, 7));not(equals(Equals_Param105, 8))), (not(equals(Equals_Param104, 6));not(equals(Equals_Param105, 8))), (not(equals(Equals_Param104, 6));not(equals(Equals_Param105, 7))), (not(equals(Equals_Param104, 5));not(equals(Equals_Param105, 8))), (not(equals(Equals_Param104, 5));not(equals(Equals_Param105, 7))), (not(equals(Equals_Param104, 5));not(equals(Equals_Param105, 6))), (not(equals(Equals_Param104, 3));not(equals(Equals_Param105, 4))), (not(equals(Equals_Param104, 2));not(equals(Equals_Param105, 4))), (not(equals(Equals_Param104, 2));not(equals(Equals_Param105, 3))), (not(equals(Equals_Param104, 1));not(equals(Equals_Param105, 4))), (not(equals(Equals_Param104, 1));not(equals(Equals_Param105, 3))), (not(equals(Equals_Param104, 1));not(equals(Equals_Param105, 2))), (not(equals(Equals_Param105, 7));not(equals(Equals_Param104, 8))), (not(equals(Equals_Param105, 6));not(equals(Equals_Param104, 8))), (not(equals(Equals_Param105, 6));not(equals(Equals_Param104, 7))), (not(equals(Equals_Param105, 5));not(equals(Equals_Param104, 8))), (not(equals(Equals_Param105, 5));not(equals(Equals_Param104, 7))), (not(equals(Equals_Param105, 5));not(equals(Equals_Param104, 6))), (not(equals(Equals_Param105, 3));not(equals(Equals_Param104, 4))), (not(equals(Equals_Param105, 2));not(equals(Equals_Param104, 4))), (not(equals(Equals_Param105, 2));not(equals(Equals_Param104, 3))), (not(equals(Equals_Param105, 1));not(equals(Equals_Param104, 4))), (not(equals(Equals_Param105, 1));not(equals(Equals_Param104, 3))), (not(equals(Equals_Param105, 1));not(equals(Equals_Param104, 2))), neighbor(Equals_Param105, Equals_Param104)),  (equals(Equals_Param106, 7):-(not(equals(Equals_Param106, 4));not(equals(Equals_Param107, 7))), (not(equals(Equals_Param107, 7));not(equals(Equals_Param106, 8))), (not(equals(Equals_Param107, 6));not(equals(Equals_Param106, 8))), (not(equals(Equals_Param107, 6));not(equals(Equals_Param106, 7))), (not(equals(Equals_Param107, 5));not(equals(Equals_Param106, 8))), (not(equals(Equals_Param107, 5));not(equals(Equals_Param106, 7))), (not(equals(Equals_Param107, 5));not(equals(Equals_Param106, 6))), (not(equals(Equals_Param107, 3));not(equals(Equals_Param106, 4))), (not(equals(Equals_Param107, 2));not(equals(Equals_Param106, 4))), (not(equals(Equals_Param107, 2));not(equals(Equals_Param106, 3))), (not(equals(Equals_Param107, 1));not(equals(Equals_Param106, 4))), (not(equals(Equals_Param107, 1));not(equals(Equals_Param106, 3))), (not(equals(Equals_Param107, 1));not(equals(Equals_Param106, 2))), (not(equals(Equals_Param106, 7));not(equals(Equals_Param107, 8))), (not(equals(Equals_Param106, 6));not(equals(Equals_Param107, 8))), (not(equals(Equals_Param106, 6));not(equals(Equals_Param107, 7))), (not(equals(Equals_Param106, 5));not(equals(Equals_Param107, 8))), (not(equals(Equals_Param106, 5));not(equals(Equals_Param107, 7))), (not(equals(Equals_Param106, 5));not(equals(Equals_Param107, 6))), (not(equals(Equals_Param106, 3));not(equals(Equals_Param107, 4))), (not(equals(Equals_Param106, 2));not(equals(Equals_Param107, 4))), (not(equals(Equals_Param106, 2));not(equals(Equals_Param107, 3))), (not(equals(Equals_Param106, 1));not(equals(Equals_Param107, 4))), (not(equals(Equals_Param106, 1));not(equals(Equals_Param107, 3))), (not(equals(Equals_Param106, 1));not(equals(Equals_Param107, 2))), neighbor(Equals_Param106, Equals_Param107))], 53==53).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:435
% Side1(GateAO)=4.
side1(gateAO,4).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:436
% Side2(GateAO)=7.
side2(gateAO,7).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/AkmanEtAl2004/ZooWorld.e:438
%; End of file.
