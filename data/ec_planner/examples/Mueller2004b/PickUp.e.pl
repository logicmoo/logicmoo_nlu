:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2004b/PickUp.e').
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
%; @inproceedings{Mueller:2004b,
%;   author = "Erik T. Mueller",
%;   year = "2004",
%;   title = "A tool for satisfiability-based commonsense reasoning in the event calculus",
%;   editor = "Valerie Barr and Zdravko Markov",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{S}eventeenth \uppercase{I}nternational \uppercase{F}lorida \uppercase{A}rtificial \uppercase{I}ntelligence \uppercase{R}esearch \uppercase{S}ociety \uppercase{C}onference",
%;   pages = "147--152",
%;   address = "Menlo Park, CA",
%;   publisher = "AAAI Press",
%; }
%;

% load foundations/Root.e

% load foundations/EC.e

% sort object
==> sort(object).

% sort agent: object
==> subsort(agent,object).

% sort physobj: object
==> subsort(physobj,object).

% sort location
==> sort(location).

% fluent At(object,location)
 %  fluent(at(object,location)).
==> mpred_prop(at(object,location),fluent).
==> meta_argtypes(at(object,location)).

% fluent Holding(agent,physobj)
 %  fluent(holding(agent,physobj)).
==> mpred_prop(holding(agent,physobj),fluent).
==> meta_argtypes(holding(agent,physobj)).

% event PickUp(agent,physobj)
 %  event(pickUp(agent,physobj)).
==> mpred_prop(pickUp(agent,physobj),event).
==> meta_argtypes(pickUp(agent,physobj)).

% event SetDown(agent,physobj)
 %  event(setDown(agent,physobj)).
==> mpred_prop(setDown(agent,physobj),event).
==> meta_argtypes(setDown(agent,physobj)).

% event Move(agent,location,location)
 %  event(move(agent,location,location)).
==> mpred_prop(move(agent,location,location),event).
==> meta_argtypes(move(agent,location,location)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:36
%; state constraints
% [agent,location,physobj,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:39
% HoldsAt(At(agent,location),time) &
% HoldsAt(Holding(agent,physobj),time) ->
% HoldsAt(At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:41
axiom(holds_at(at(Physobj, Location), Time),
   
    [ holds_at(at(Agent, Location), Time),
      holds_at(holding(Agent, Physobj), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:43
% [object,location1,location2,time]
% HoldsAt(At(object,location1),time) &
% HoldsAt(At(object,location2),time) ->
% location1=location2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:46
axiom(Location1=Location2,
   
    [ holds_at(at(Object, Location1), Time),
      holds_at(at(Object, Location2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:48
%; effect axioms
% [agent,location1,location2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:51
% Initiates(Move(agent,location1,location2),At(agent,location2),time).
axiom(initiates(move(Agent, Location1, Location2), at(Agent, Location2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:53
% [agent,location1,location2,time]
% Terminates(Move(agent,location1,location2),At(agent,location1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:54
axiom(terminates(move(Agent, Location1, Location2), at(Agent, Location1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:56
% [agent,physobj,time]
% Initiates(PickUp(agent,physobj),Holding(agent,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:57
axiom(initiates(pickUp(Agent, Physobj), holding(Agent, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:59
% [agent,physobj,time]
% Terminates(SetDown(agent,physobj),Holding(agent,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:60
axiom(terminates(setDown(Agent, Physobj), holding(Agent, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:62
%; preconditions
% [agent,location1,location2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:65
% Happens(Move(agent,location1,location2),time) ->
% HoldsAt(At(agent,location1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:66
axiom(requires(move(Agent, Location1, Location2), Time),
    [holds_at(at(Agent, Location1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:68
% [agent,physobj,time]
% Happens(PickUp(agent,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:70
% {location}%  HoldsAt(At(agent,location),time) &
%            HoldsAt(At(physobj,location),time).

 /*   exists([Location],
             if(happens(pickUp(Agent, Physobj), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Physobj, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_123'(Fn_123_Param, At_Param, Maptime))) :-
       happens(pickUp(Fn_123_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_123_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:71
axiom(not(some(Location6, '$kolem_Fn_123'(Fn_123_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_123_Param, Location6), Maptime)),
      happens(pickUp(Fn_123_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_123'(Fn_123_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(pickUp(Fn_123_Param, At_Param), Maptime)
    ]).

 /*  not(happens(pickUp(PickUp_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(PickUp_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_123'(PickUp_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(pickUp(PickUp_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(PickUp_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_123'(PickUp_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(pickUp(PickUp_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_123'(PickUp_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(pickUp(At_Param15, PickUp_Ret), Time14),
       some(Location13,
            '$kolem_Fn_123'(At_Param15, PickUp_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(pickUp(At_Param15, PickUp_Ret), Time14),
      some(Location13,
           '$kolem_Fn_123'(At_Param15, PickUp_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(pickUp(PickUp_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_123'(PickUp_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(pickUp(PickUp_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_123'(PickUp_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:73
%; releases
% [agent,physobj,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:76
% Releases(PickUp(agent,physobj),At(physobj,location),time).
axiom(releases(pickUp(Agent, Physobj), at(Physobj, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:78
% [agent,physobj,location,time]
% HoldsAt(At(agent,location),time) ->
% Initiates(SetDown(agent,physobj),At(physobj,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:80
axiom(initiates(setDown(Agent, Physobj), at(Physobj, Location), Time),
    [holds_at(at(Agent, Location), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:82
%;[agent,physobj,location1,location2,time]
%;HoldsAt(At(agent,location1),time) &
%;location1 != location2 ->
%;Terminates(SetDown(agent,physobj),At(physobj,location2),time).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:87
% agent James
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:88
==> t(agent,james).

% physobj Coin
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:89
==> t(physobj,coin).

% location L1, L2, L3, L4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:90
==> t(location,l1).
==> t(location,l2).
==> t(location,l3).
==> t(location,l4).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:91
% !HoldsAt(Holding(James,Coin),0).
 %  not(initially(holding(james,coin))).
axiom(not(initially(holding(james, coin))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:92
% HoldsAt(At(Coin,L4),0).
axiom(initially(at(coin, l4)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:93
% HoldsAt(At(James,L1),0).
axiom(initially(at(james, l1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:94
% Happens(Move(James,L1,L2),0).
axiom(happens(move(james, l1, l2), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:95
% Happens(Move(James,L2,L3),1).
axiom(happens(move(james, l2, l3), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:96
% Happens(Move(James,L3,L4),2).
axiom(happens(move(james, l3, l4), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:97
% Happens(PickUp(James,Coin),3).
axiom(happens(pickUp(james, coin), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:98
% Happens(Move(James,L4,L3),4).
axiom(happens(move(james, l4, l3), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:99
% Happens(Move(James,L3,L2),5).
axiom(happens(move(james, l3, l2), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:100
% Happens(SetDown(James,Coin),6).
axiom(happens(setDown(james, coin), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:101
% Happens(Move(James,L2,L3),7).
axiom(happens(move(james, l2, l3), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:102
% Happens(Move(James,L3,L4),8).
axiom(happens(move(james, l3, l4), t8),
    [is_time(8), b(t, t8), ignore(t+8=t8)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:104
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:105
==> completion(happens).

% range time 0 9
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:107
==> range(time,0,9).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/PickUp.e:108
==> range(offset,1,1).
%; End of file.
