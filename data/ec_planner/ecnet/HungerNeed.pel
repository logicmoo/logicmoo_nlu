:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/HungerNeed.e').


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:0
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
%; hunger need
%;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:13
% fluent Hungry(agent)
 %  fluent(hungry(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:14
==> mpred_prop(hungry(agent),fluent).
==> meta_argtypes(hungry(agent)).

% fluent Satiated(agent)
 %  fluent(satiated(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:16
==> mpred_prop(satiated(agent),fluent).
==> meta_argtypes(satiated(agent)).

% noninertial Satiated
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:17
==> noninertial(satiated).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:18
% [agent,time]
 % HoldsAt(Hungry(agent),time) <-> !HoldsAt(Satiated(agent),time).

 /*  holds_at(hungry(Agent), Time) <->
       not(holds_at(satiated(Agent), Time)).
 */
axiom(holds_at(hungry(Agent), Time),
    [not(holds_at(satiated(Agent), Time))]).
axiom(not(holds_at(satiated(Agent), Time)),
    [holds_at(hungry(Agent), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:20
% event Eat(agent,food)
 %  event(eat(agent,food)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:21
==> mpred_prop(eat(agent,food),event).
==> meta_argtypes(eat(agent,food)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:22
% [agent,food,time]
% Happens(Eat(agent,food),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:24
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(food,location),time).

 /*   exists([Location],
             if(happens(eat(Agent, Food), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Food, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_146'(Fn_146_Param, At_Param, Maptime))) :-
       happens(eat(Fn_146_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_146_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:26
axiom(not(some(Location6, '$kolem_Fn_146'(Fn_146_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_146_Param, Location6), Maptime)),
      happens(eat(Fn_146_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_146'(Fn_146_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(eat(Fn_146_Param, At_Param), Maptime)
    ]).

 /*  not(happens(eat(Eat_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(Eat_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_146'(Eat_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(eat(Eat_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(Eat_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_146'(Eat_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(eat(Eat_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_146'(Eat_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(eat(At_Param15, Eat_Ret), Time14),
       some(Location13,
            '$kolem_Fn_146'(At_Param15, Eat_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(eat(At_Param15, Eat_Ret), Time14),
      some(Location13,
           '$kolem_Fn_146'(At_Param15, Eat_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(eat(Eat_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_146'(Eat_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(eat(Eat_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_146'(Eat_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:28
% [agent,food,time]
% Terminates(Eat(agent,food),Hungry(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:29
axiom(terminates(eat(Agent, Food), hungry(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/HungerNeed.e:31
%; End of file.
