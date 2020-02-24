:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Restaurant.e').
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

% sort restaurant: script
==> subsort(restaurant,script).

% sort waiter: agent
==> subsort(waiter,agent).

% sort cook: agent
==> subsort(cook,agent).

% function BillOf(restaurant): bill
 %  functional_predicate(billOf(restaurant,bill)).
==> mpred_prop(billOf(restaurant,bill),functional_predicate).
==> meta_argtypes(billOf(restaurant,bill)).
resultIsa(billOf,bill).

% function CookOf(restaurant): cook
 %  functional_predicate(cookOf(restaurant,cook)).
==> mpred_prop(cookOf(restaurant,cook),functional_predicate).
==> meta_argtypes(cookOf(restaurant,cook)).
resultIsa(cookOf,cook).

% function TableOf(restaurant): table
 %  functional_predicate(tableOf(restaurant,table)).
==> mpred_prop(tableOf(restaurant,table),functional_predicate).
==> meta_argtypes(tableOf(restaurant,table)).
resultIsa(tableOf,table).

% function WaiterOf(restaurant): waiter
 %  functional_predicate(waiterOf(restaurant,waiter)).
==> mpred_prop(waiterOf(restaurant,waiter),functional_predicate).
==> meta_argtypes(waiterOf(restaurant,waiter)).
resultIsa(waiterOf,waiter).

% function KitchenDoorOf(restaurant): door
 %  functional_predicate(kitchenDoorOf(restaurant,door)).
==> mpred_prop(kitchenDoorOf(restaurant,door),functional_predicate).
==> meta_argtypes(kitchenDoorOf(restaurant,door)).
resultIsa(kitchenDoorOf,door).
%; awaiting customer/waiter has set down bill on customer's table

% fluent BeWaiter0(waiter)
 %  fluent(beWaiter0(waiter)).
==> mpred_prop(beWaiter0(waiter),fluent).
==> meta_argtypes(beWaiter0(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:23
%; awaiting customer order

% fluent BeWaiter1(waiter)
 %  fluent(beWaiter1(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:25
==> mpred_prop(beWaiter1(waiter),fluent).
==> meta_argtypes(beWaiter1(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:26
%; has customer order

% fluent BeWaiter2(waiter)
 %  fluent(beWaiter2(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:28
==> mpred_prop(beWaiter2(waiter),fluent).
==> meta_argtypes(beWaiter2(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:29
%; in kitchen

% fluent BeWaiter3(waiter)
 %  fluent(beWaiter3(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:31
==> mpred_prop(beWaiter3(waiter),fluent).
==> meta_argtypes(beWaiter3(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:32
%; awaiting preparation of order

% fluent BeWaiter4(waiter)
 %  fluent(beWaiter4(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:34
==> mpred_prop(beWaiter4(waiter),fluent).
==> meta_argtypes(beWaiter4(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:35
%; has order

% fluent BeWaiter5(waiter)
 %  fluent(beWaiter5(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:37
==> mpred_prop(beWaiter5(waiter),fluent).
==> meta_argtypes(beWaiter5(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:38
%; back in dining room

% fluent BeWaiter6(waiter)
 %  fluent(beWaiter6(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:40
==> mpred_prop(beWaiter6(waiter),fluent).
==> meta_argtypes(beWaiter6(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:41
%; order delivered to customer (can ask if all is OK)

% fluent BeWaiter7(waiter)
 %  fluent(beWaiter7(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:43
==> mpred_prop(beWaiter7(waiter),fluent).
==> meta_argtypes(beWaiter7(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:44
%; customer has requested bill

% fluent BeWaiter8(waiter)
 %  fluent(beWaiter8(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:46
==> mpred_prop(beWaiter8(waiter),fluent).
==> meta_argtypes(beWaiter8(waiter)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:47
%; waiter is holding bill

% fluent BeWaiter9(waiter)
 %  fluent(beWaiter9(waiter)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:49
==> mpred_prop(beWaiter9(waiter),fluent).
==> meta_argtypes(beWaiter9(waiter)).

% xor BeWaiter0, BeWaiter1, BeWaiter2, BeWaiter3, BeWaiter4, BeWaiter5, BeWaiter6, BeWaiter7, BeWaiter8, BeWaiter9
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:51
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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:52
% [waiter,agent,time]
% HoldsAt(BeWaiter0(waiter),time) ->
% Terminates(Greet(waiter,agent),
%            BeWaiter0(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:56
axiom(terminates(greet(Waiter, Agent), beWaiter0(Waiter), Time),
    [holds_at(beWaiter0(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:58
% [waiter,agent,time]
% HoldsAt(BeWaiter0(waiter),time) ->
% Initiates(Greet(waiter,agent),
%           BeWaiter1(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:62
axiom(initiates(greet(Waiter, Agent), beWaiter1(Waiter), Time),
    [holds_at(beWaiter0(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:64
% [waiter,agent,food,time]
% HoldsAt(BeWaiter1(waiter),time) ->
% Terminates(Order(agent,waiter,food),
%            BeWaiter1(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:68
axiom(terminates(order(Agent, Waiter, Food), beWaiter1(Waiter), Time),
    [holds_at(beWaiter1(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:70
% [waiter,agent,food,time]
% HoldsAt(BeWaiter1(waiter),time) ->
% Initiates(Order(agent,waiter,food),
%           BeWaiter2(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:74
axiom(initiates(order(Agent, Waiter, Food), beWaiter2(Waiter), Time),
    [holds_at(beWaiter1(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:76
% [restaurant,waiter,time]
% WaiterOf(restaurant)=waiter &
% HoldsAt(BeWaiter2(waiter),time) ->
% Happens(WalkThroughDoor12(waiter,KitchenDoorOf(restaurant)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:79
axiom(happens(walkThroughDoor12(Waiter, kitchenDoorOf(Restaurant)), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      holds_at(beWaiter2(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:81
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter2(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Terminates(WalkThroughDoor12(waiter,door),
%            BeWaiter2(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:87
axiom(terminates(walkThroughDoor12(Waiter, Door), beWaiter2(Waiter), Time),
   
    [ holds_at(beWaiter2(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:89
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter2(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Initiates(WalkThroughDoor12(waiter,door),
%           BeWaiter3(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:95
axiom(initiates(walkThroughDoor12(Waiter, Door), beWaiter3(Waiter), Time),
   
    [ holds_at(beWaiter2(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:97
% [restaurant,food,time]
% HoldsAt(BeWaiter3(WaiterOf(restaurant)),time) &
% ({agent} HoldsAt(KnowOrder(WaiterOf(restaurant),agent,food),time)) ->
% Happens(Order(WaiterOf(restaurant),CookOf(restaurant),food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:100
axiom(happens(order(waiterOf(Restaurant), cookOf(Restaurant), Food), Time),
   
    [ holds_at(beWaiter3(waiterOf(Restaurant)), Time),
      holds_at(knowOrder(waiterOf(Restaurant), Agent, Food),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:102
% [restaurant,waiter,cook,food,time]
% WaiterOf(restaurant)=waiter &
% CookOf(restaurant)=cook &
% HoldsAt(BeWaiter3(waiter),time) ->
% Terminates(Order(waiter,cook,food),
%            BeWaiter3(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:108
axiom(terminates(order(Waiter, Cook, Food), beWaiter3(Waiter), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(cookOf(Restaurant), Cook),
      holds_at(beWaiter3(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:110
% [restaurant,waiter,cook,food,time]
% WaiterOf(restaurant)=waiter &
% CookOf(restaurant)=cook &
% HoldsAt(BeWaiter3(waiter),time) ->
% Initiates(Order(waiter,cook,food),
%           BeWaiter4(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:116
axiom(initiates(order(Waiter, Cook, Food), beWaiter4(Waiter), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(cookOf(Restaurant), Cook),
      holds_at(beWaiter3(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:118
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) &
% HoldsAt(FoodPrepared(food),time) ->
% Happens(PickUp(waiter,food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:122
axiom(happens(pickUp(Waiter, Food), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time),
      holds_at(foodPrepared(Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:124
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) ->
% Terminates(PickUp(waiter,food),
%            BeWaiter4(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:129
axiom(terminates(pickUp(Waiter, Food), beWaiter4(Waiter), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:131
% [waiter,food,time]
% HoldsAt(BeWaiter4(waiter),time) &
% ({agent} HoldsAt(KnowOrder(waiter,agent,food),time)) ->
% Initiates(PickUp(waiter,food),
%           BeWaiter5(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:136
axiom(initiates(pickUp(Waiter, Food), beWaiter5(Waiter), Time),
   
    [ holds_at(beWaiter4(Waiter), Time),
      holds_at(knowOrder(Waiter, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:138
% [restaurant,waiter,time]
% WaiterOf(restaurant)=waiter &
% HoldsAt(BeWaiter5(waiter),time) ->
% Happens(WalkThroughDoor21(waiter,KitchenDoorOf(restaurant)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:141
axiom(happens(walkThroughDoor21(Waiter, kitchenDoorOf(Restaurant)), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      holds_at(beWaiter5(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:143
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter5(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Terminates(WalkThroughDoor21(waiter,door),
%            BeWaiter5(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:149
axiom(terminates(walkThroughDoor21(Waiter, Door), beWaiter5(Waiter), Time),
   
    [ holds_at(beWaiter5(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:151
% [restaurant,waiter,door,time]
% HoldsAt(BeWaiter5(waiter),time) &
% WaiterOf(restaurant)=waiter &
% KitchenDoorOf(restaurant)=door ->
% Initiates(WalkThroughDoor21(waiter,door),
%           BeWaiter6(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:157
axiom(initiates(walkThroughDoor21(Waiter, Door), beWaiter6(Waiter), Time),
   
    [ holds_at(beWaiter5(Waiter), Time),
      equals(waiterOf(Restaurant), Waiter),
      equals(kitchenDoorOf(Restaurant), Door)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:159
% [restaurant,waiter,table,food,time]
% WaiterOf(restaurant)=waiter &
% TableOf(restaurant)=table &
% HoldsAt(BeWaiter6(waiter),time) &
% HoldsAt(Holding(waiter,food),time) ->
% Happens(PlaceOn(waiter,food,table),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:164
axiom(happens(placeOn(Waiter, Food, Table), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(tableOf(Restaurant), Table),
      holds_at(beWaiter6(Waiter), Time),
      holds_at(holding(Waiter, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:166
% [waiter,food,table,time]
% HoldsAt(BeWaiter6(waiter),time) ->
% Terminates(PlaceOn(waiter,food,table),
%            BeWaiter6(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:170
axiom(terminates(placeOn(Waiter, Food, Table), beWaiter6(Waiter), Time),
    [holds_at(beWaiter6(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:172
% [waiter,food,table,time]
% HoldsAt(BeWaiter6(waiter),time) ->
% Initiates(PlaceOn(waiter,food,table),
%           BeWaiter7(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:176
axiom(initiates(placeOn(Waiter, Food, Table), beWaiter7(Waiter), Time),
    [holds_at(beWaiter6(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:178
% [waiter,agent,bill,time]
% HoldsAt(BeWaiter7(waiter),time) ->
% Terminates(Request(agent,waiter,bill),
%            BeWaiter7(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:182
axiom(terminates(request(Agent, Waiter, Bill), beWaiter7(Waiter), Time),
    [holds_at(beWaiter7(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:184
% [waiter,agent,bill,time]
% HoldsAt(BeWaiter7(waiter),time) ->
% Initiates(Request(agent,waiter,bill),
%           BeWaiter8(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:188
axiom(initiates(request(Agent, Waiter, Bill), beWaiter8(Waiter), Time),
    [holds_at(beWaiter7(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:190
% [restaurant,waiter,bill,time]
% WaiterOf(restaurant)=waiter &
% BillOf(restaurant)=bill &
% HoldsAt(BeWaiter8(waiter),time) ->
% Happens(PickUp(waiter,bill),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:194
axiom(happens(pickUp(Waiter, Bill), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(billOf(Restaurant), Bill),
      holds_at(beWaiter8(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:196
% [waiter,bill,time]
% HoldsAt(BeWaiter8(waiter),time) ->
% Terminates(PickUp(waiter,bill),
%            BeWaiter8(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:200
axiom(terminates(pickUp(Waiter, Bill), beWaiter8(Waiter), Time),
    [holds_at(beWaiter8(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:202
% [waiter,bill,time]
% HoldsAt(BeWaiter8(waiter),time) ->
% Initiates(PickUp(waiter,bill),
%           BeWaiter9(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:206
axiom(initiates(pickUp(Waiter, Bill), beWaiter9(Waiter), Time),
    [holds_at(beWaiter8(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:208
% [restaurant,waiter,bill,table,time]
% WaiterOf(restaurant)=waiter &
% BillOf(restaurant)=bill &
% TableOf(restaurant)=table &
% HoldsAt(BeWaiter9(waiter),time) ->
% Happens(PlaceOn(waiter,bill,table),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:213
axiom(happens(placeOn(Waiter, Bill, Table), Time),
   
    [ equals(waiterOf(Restaurant), Waiter),
      equals(billOf(Restaurant), Bill),
      equals(tableOf(Restaurant), Table),
      holds_at(beWaiter9(Waiter), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:215
% [waiter,bill,table,time]
% HoldsAt(BeWaiter9(waiter),time) ->
% Terminates(PlaceOn(waiter,bill,table),
%            BeWaiter9(waiter),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:219
axiom(terminates(placeOn(Waiter, Bill, Table), beWaiter9(Waiter), Time),
    [holds_at(beWaiter9(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:221
% [waiter,bill,table,time]
% HoldsAt(BeWaiter9(waiter),time) ->
% Initiates(PlaceOn(waiter,bill,table),
%           BeWaiter0(waiter),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:225
axiom(initiates(placeOn(Waiter, Bill, Table), beWaiter0(Waiter), Time),
    [holds_at(beWaiter9(Waiter), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:227
%; awaiting next waiter order

% fluent BeCook0(cook)
 %  fluent(beCook0(cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:229
==> mpred_prop(beCook0(cook),fluent).
==> meta_argtypes(beCook0(cook)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:230
%; waiter order received

% fluent BeCook1(cook)
 %  fluent(beCook1(cook)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:232
==> mpred_prop(beCook1(cook),fluent).
==> meta_argtypes(beCook1(cook)).

% xor BeCook0, BeCook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:234
xor([beCook0,beCook1]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:235
% [cook,agent,food,time]
% HoldsAt(BeCook0(cook),time) ->
% Terminates(Order(agent,cook,food),
%            BeCook0(cook),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:239
axiom(terminates(order(Agent, Cook, Food), beCook0(Cook), Time),
    [holds_at(beCook0(Cook), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:241
% [cook,agent,food,time]
% HoldsAt(BeCook0(cook),time) ->
% Initiates(Order(agent,cook,food),
%           BeCook1(cook),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:245
axiom(initiates(order(Agent, Cook, Food), beCook1(Cook), Time),
    [holds_at(beCook0(Cook), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:247
% event FoodPrepare(agent,food)
 %  event(foodPrepare(agent,food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:248
==> mpred_prop(foodPrepare(agent,food),event).
==> meta_argtypes(foodPrepare(agent,food)).

% fluent FoodPrepared(food)
 %  fluent(foodPrepared(food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:250
==> mpred_prop(foodPrepared(food),fluent).
==> meta_argtypes(foodPrepared(food)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:251
% [agent,food,time]
% Initiates(FoodPrepare(agent,food),
%           FoodPrepared(food),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:254
axiom(initiates(foodPrepare(Agent, Food), foodPrepared(Food), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:256
% [agent,food,time]
% Happens(FoodPrepare(agent,food),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:258
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(food,location),time).

 /*   exists([Location],
             if(happens(foodPrepare(Agent, Food), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Food, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_182'(Fn_182_Param, At_Param, Maptime))) :-
       happens(foodPrepare(Fn_182_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_182_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:260
axiom(not(some(Location6, '$kolem_Fn_182'(Fn_182_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_182_Param, Location6), Maptime)),
      happens(foodPrepare(Fn_182_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_182'(Fn_182_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(foodPrepare(Fn_182_Param, At_Param), Maptime)
    ]).

 /*  not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(FoodPrepare_Param, Location10),
                        Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_182'(FoodPrepare_Param,
                            At_Param12,
                            Maptime9)).
 */
axiom(not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(FoodPrepare_Param, Location10),
                   Maptime9)),
      some(Location10,
           '$kolem_Fn_182'(FoodPrepare_Param,
                           At_Param12,
                           Maptime9))
    ]).
axiom(not(happens(foodPrepare(FoodPrepare_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_182'(FoodPrepare_Param,
                           At_Param12,
                           Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(foodPrepare(At_Param15, FoodPrepare_Ret), Time14),
       some(Location13,
            '$kolem_Fn_182'(At_Param15, FoodPrepare_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(foodPrepare(At_Param15, FoodPrepare_Ret),
              Time14),
      some(Location13,
           '$kolem_Fn_182'(At_Param15, FoodPrepare_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(foodPrepare(FoodPrepare_Param20, At_Param19),
               Time18),
       some(Location17,
            '$kolem_Fn_182'(FoodPrepare_Param20,
                            At_Param19,
                            Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(foodPrepare(FoodPrepare_Param20, At_Param19),
              Time18),
      some(Location17,
           '$kolem_Fn_182'(FoodPrepare_Param20,
                           At_Param19,
                           Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:262
% [cook,agent,food,time]
% HoldsAt(BeCook1(cook),time) &
% HoldsAt(KnowOrder(cook,agent,food),time) ->
% Happens(FoodPrepare(cook,food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:265
axiom(happens(foodPrepare(Cook, Food), Time),
   
    [ holds_at(beCook1(Cook), Time),
      holds_at(knowOrder(Cook, Agent, Food), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:267
% [cook,food,time]
% HoldsAt(BeCook1(cook),time) ->
% Terminates(FoodPrepare(cook,food),
%            BeCook1(cook),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:271
axiom(terminates(foodPrepare(Cook, Food), beCook1(Cook), Time),
    [holds_at(beCook1(Cook), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:273
% [cook,food,time]
% HoldsAt(BeCook1(cook),time) ->
% Initiates(FoodPrepare(cook,food),
%           BeCook0(cook),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:277
axiom(initiates(foodPrepare(Cook, Food), beCook0(Cook), Time),
    [holds_at(beCook1(Cook), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Restaurant.e:279
%; End of file.
