:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Rest.e').
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

% option renaming off
:- set_ec_option(renaming, off).

% option encoding 3
:- set_ec_option(encoding, 3).

% load foundations/Root.e

% load foundations/EC.e

% load answers/Mueller2003/Ontology.e

% load answers/MuellerInPress/RepRest.e

% door MainEntrance1
==> t(door,mainEntrance1).
%; room-scale topological space

% outside Street1
==> t(outside,street1).

% room DiningRoom1
==> t(room,diningRoom1).

% door KitchenDoor1
==> t(door,kitchenDoor1).

% room Kitchen1
==> t(room,kitchen1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:33
% Side1(MainEntrance1)=Street1.
side1(mainEntrance1,street1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:34
% Side2(MainEntrance1)=DiningRoom1.
side2(mainEntrance1,diningRoom1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:35
% Side1(KitchenDoor1)=DiningRoom1.
side1(kitchenDoor1,diningRoom1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:36
% Side2(KitchenDoor1)=Kitchen1.
side2(kitchenDoor1,kitchen1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:38
% agent Customer1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:39
==> t(agent,customer1).

% menu Menu1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:40
==> t(menu,menu1).

% chair Chair1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:41
==> t(chair,chair1).

% food Food1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:42
==> t(food,food1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:42
% HoldsAt(At(Customer1,Street1),0).
axiom(initially(at(customer1, street1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:43
% HoldsAt(Hungry(Customer1),0).
axiom(initially(hungry(customer1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:44
% HoldsAt(At(Chair1,DiningRoom1),0).
axiom(initially(at(chair1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:45
% HoldsAt(At(Menu1,DiningRoom1),0).
axiom(initially(at(menu1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:46
% HoldsAt(On(Menu1,Table1),0).
axiom(initially(on(menu1, table1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:47
% HoldsAt(At(Food1,Kitchen1),0).
axiom(initially(at(food1, kitchen1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:49
% waiter Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:50
==> t(waiter,waiter1).

% cook Cook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:51
==> t(cook,cook1).
%; props

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:53
% table Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:54
==> t(table,table1).

% bill Bill1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:55
==> t(bill,bill1).
%; restaurant

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:57
% restaurant Restaurant1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:58
==> t(restaurant,restaurant1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:58
% CookOf(Restaurant1)=Cook1.
cookOf(restaurant1,cook1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:59
% TableOf(Restaurant1)=Table1.
tableOf(restaurant1,table1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:60
% WaiterOf(Restaurant1)=Waiter1.
waiterOf(restaurant1,waiter1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:61
% KitchenDoorOf(Restaurant1)=KitchenDoor1.
kitchenDoorOf(restaurant1,kitchenDoor1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:62
% BillOf(Restaurant1)=Bill1.
billOf(restaurant1,bill1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:64
%; prune

% sort ona, onb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:66
==> sort(ona).
==> sort(onb).

% fluent! On(ona,onb)
 %  fluent(on(ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:67
==> mpred_prop(on(ona,onb),fluent).
==> meta_argtypes(on(ona,onb)).

% event! PlaceOn(agent,ona,onb)
 %  event(placeOn(agent,ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:68
==> mpred_prop(placeOn(agent,ona,onb),event).
==> meta_argtypes(placeOn(agent,ona,onb)).

% event! TakeOffOf(agent,ona,onb)
 %  event(takeOffOf(agent,ona,onb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:69
==> mpred_prop(takeOffOf(agent,ona,onb),event).
==> meta_argtypes(takeOffOf(agent,ona,onb)).

% sort ordera, orderb, orderc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:71
==> sort(ordera).
==> sort(orderb).
==> sort(orderc).

% event! Order(ordera,orderb,orderc)
 %  event(order(ordera,orderb,orderc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:72
==> mpred_prop(order(ordera,orderb,orderc),event).
==> meta_argtypes(order(ordera,orderb,orderc)).

% fluent! KnowOrder(orderb,ordera,orderc)
 %  fluent(knowOrder(orderb,ordera,orderc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:73
==> mpred_prop(knowOrder(orderb,ordera,orderc),fluent).
==> meta_argtypes(knowOrder(orderb,ordera,orderc)).

% sort requesta, requestb, requestc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:75
==> sort(requesta).
==> sort(requestb).
==> sort(requestc).

% event! Request(requesta,requestb,requestc)
 %  event(request(requesta,requestb,requestc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:76
==> mpred_prop(request(requesta,requestb,requestc),event).
==> meta_argtypes(request(requesta,requestb,requestc)).

% fluent! KnowRequest(requestb,requesta,requestc)
 %  fluent(knowRequest(requestb,requesta,requestc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:77
==> mpred_prop(knowRequest(requestb,requesta,requestc),fluent).
==> meta_argtypes(knowRequest(requestb,requesta,requestc)).

% sort holda, holdb, holdc
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:79
==> sort(holda).
==> sort(holdb).
==> sort(holdc).

% event! TakeOffOf(holda,holdb,holdc)
 %  event(takeOffOf(holda,holdb,holdc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:80
==> mpred_prop(takeOffOf(holda,holdb,holdc),event).
==> meta_argtypes(takeOffOf(holda,holdb,holdc)).

% event! PickUp(holda,holdb)
 %  event(pickUp(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:81
==> mpred_prop(pickUp(holda,holdb),event).
==> meta_argtypes(pickUp(holda,holdb)).

% event! LetGoOf(holda,holdb)
 %  event(letGoOf(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:82
==> mpred_prop(letGoOf(holda,holdb),event).
==> meta_argtypes(letGoOf(holda,holdb)).

% event! Hold(holda,holdb)
 %  event(hold(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:83
==> mpred_prop(hold(holda,holdb),event).
==> meta_argtypes(hold(holda,holdb)).

% fluent! Holding(holda,holdb)
 %  fluent(holding(holda,holdb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:84
==> mpred_prop(holding(holda,holdb),fluent).
==> meta_argtypes(holding(holda,holdb)).

% sort sita, sitb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:86
==> sort(sita).
==> sort(sitb).

% event! LieOn(sita,sitb)
 %  event(lieOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:87
==> mpred_prop(lieOn(sita,sitb),event).
==> meta_argtypes(lieOn(sita,sitb)).

% event! SitOn(sita,sitb)
 %  event(sitOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:88
==> mpred_prop(sitOn(sita,sitb),event).
==> meta_argtypes(sitOn(sita,sitb)).

% event! RiseFrom(sita,sitb)
 %  event(riseFrom(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:89
==> mpred_prop(riseFrom(sita,sitb),event).
==> meta_argtypes(riseFrom(sita,sitb)).

% fluent! LyingOn(sita,sitb)
 %  fluent(lyingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:90
==> mpred_prop(lyingOn(sita,sitb),fluent).
==> meta_argtypes(lyingOn(sita,sitb)).

% fluent! SittingOn(sita,sitb)
 %  fluent(sittingOn(sita,sitb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:91
==> mpred_prop(sittingOn(sita,sitb),fluent).
==> meta_argtypes(sittingOn(sita,sitb)).

% sort greeta, greetb
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:93
==> sort(greeta).
==> sort(greetb).

% event! Greet(greeta,greetb)
 %  event(greet(greeta,greetb)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:94
==> mpred_prop(greet(greeta,greetb),event).
==> meta_argtypes(greet(greeta,greetb)).

% ona! Menu1, Food1, Bill1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:96
==> t(ona,menu1).
==> t(ona,food1).
==> t(ona,bill1).

% onb! Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:97
==> t(onb,table1).

% ordera! Customer1, Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:98
==> t(ordera,customer1).
==> t(ordera,waiter1).

% orderb! Waiter1, Cook1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:99
==> t(orderb,waiter1).
==> t(orderb,cook1).

% orderc! Food1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:100
==> t(orderc,food1).

% requesta! Customer1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:101
==> t(requesta,customer1).

% requestb! Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:102
==> t(requestb,waiter1).

% requestc! Bill1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:103
==> t(requestc,bill1).

% holda! Customer1, Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:104
==> t(holda,customer1).
==> t(holda,waiter1).

% holdb! Menu1, Food1, Bill1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:105
==> t(holdb,menu1).
==> t(holdb,food1).
==> t(holdb,bill1).

% holdc! Table1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:106
==> t(holdc,table1).

% sita! Customer1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:107
==> t(sita,customer1).

% sitb! Chair1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:108
==> t(sitb,chair1).

% greeta! Customer1, Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:109
==> t(greeta,customer1).
==> t(greeta,waiter1).

% greetb! Customer1, Waiter1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:110
==> t(greetb,customer1).
==> t(greetb,waiter1).
%; initial situation


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:112
% HoldsAt(At(Waiter1,DiningRoom1),0).
axiom(initially(at(waiter1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:113
% HoldsAt(At(Cook1,Kitchen1),0).
axiom(initially(at(cook1, kitchen1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:114
% HoldsAt(At(Table1,DiningRoom1),0).
axiom(initially(at(table1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:115
% !HoldsAt(On(Bill1,Table1),0).
 %  not(initially(on(bill1,table1))).
axiom(not(initially(on(bill1, table1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:116
% HoldsAt(At(Bill1,DiningRoom1),0).
axiom(initially(at(bill1, diningRoom1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:117
% [agent]
 % HoldsAt(Standing(agent),0).
axiom(initially(standing(Agent)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:118
% [agent,object]
 % !HoldsAt(Holding(agent,object),0).
 %  not(initially(holding(Agent,Object))).
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:119
% [agent1,agent2,physobj]
 % !HoldsAt(KnowOrder(agent1,agent2,physobj),0).
 %  not(initially(knowOrder(Agent1,Agent2,Physobj))).
axiom(not(initially(knowOrder(KnowOrder_Param, _, KnowOrder_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:120
% [agent1,agent2,physobj]
 % !HoldsAt(KnowRequest(agent1,agent2,physobj),0).
 %  not(initially(knowRequest(Agent1,Agent2,Physobj))).
axiom(not(initially(knowRequest(KnowRequest_Param, _, KnowRequest_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:121
% HoldsAt(BeWaiter0(Waiter1),0).
axiom(initially(beWaiter0(waiter1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:122
% HoldsAt(BeCook0(Cook1),0).
axiom(initially(beCook0(cook1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:123
% [food]
 % !HoldsAt(FoodPrepared(food),0).
 %  not(initially(foodPrepared(Food))).
axiom(not(initially(foodPrepared(FoodPrepared_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:124
% !HoldsAt(Hungry(Cook1),0).
 %  not(initially(hungry(cook1))).
axiom(not(initially(hungry(cook1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:125
% !HoldsAt(Hungry(Waiter1),0).
 %  not(initially(hungry(waiter1))).
axiom(not(initially(hungry(waiter1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:127
% Happens(WalkThroughDoor12(Customer1,MainEntrance1),0).
axiom(happens(walkThroughDoor12(customer1, mainEntrance1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:128
% Happens(Greet(Waiter1,Customer1),1).
axiom(happens(greet(waiter1, customer1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:129
% Happens(SitOn(Customer1,Chair1),2).
axiom(happens(sitOn(customer1, chair1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:130
% Happens(TakeOffOf(Customer1,Menu1,Table1),3).
axiom(happens(takeOffOf(customer1, menu1, table1), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:131
% Happens(Order(Customer1,Waiter1,Food1),4).
axiom(happens(order(customer1, waiter1, food1), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:132
% Happens(PlaceOn(Customer1,Menu1,Table1),5).
axiom(happens(placeOn(customer1, menu1, table1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:133
% Happens(Eat(Customer1,Food1),11).
axiom(happens(eat(customer1, food1), t11),
    [is_time(11), b(t, t11), ignore(t+11=t11)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:134
% Happens(Request(Customer1,Waiter1,Bill1),12).
axiom(happens(request(customer1, waiter1, bill1), t12),
    [is_time(12), b(t, t12), ignore(t+12=t12)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:135
% Happens(Pay(Customer1,Waiter1),15).
axiom(happens(pay(customer1, waiter1), t15),
    [is_time(15), b(t, t15), ignore(t+15=t15)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:136
% Happens(Tip(Customer1,Waiter1),15).
axiom(happens(tip(customer1, waiter1), t15),
    [is_time(15), b(t, t15), ignore(t+15=t15)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:137
% Happens(RiseFrom(Customer1,Chair1),16).
axiom(happens(riseFrom(customer1, chair1), t16),
    [is_time(16), b(t, t16), ignore(t+16=t16)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:138
% Happens(SayGoodbye(Customer1,Waiter1),17).
axiom(happens(sayGoodbye(customer1, waiter1), t17),
    [is_time(17), b(t, t17), ignore(t+17=t17)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:139
% Happens(WalkThroughDoor21(Customer1,MainEntrance1),18).
axiom(happens(walkThroughDoor21(customer1, mainEntrance1), t18),
    [is_time(18), b(t, t18), ignore(t+18=t18)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:141
% range time 0 19
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:142
==> range(time,0,19).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:143
==> range(offset,0,0).

% range diameter 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:144
==> range(diameter,0,0).

% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Rest.e:146
==> completion(happens).
%; End of file.
