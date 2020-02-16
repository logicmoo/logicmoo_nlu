:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter9/RouletteWheel.e').
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
%; @book{Mueller:2006,
%;   author = "Erik T. Mueller",
%;   year = "2006",
%;   title = "Commonsense Reasoning",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann/Elsevier",
%; }
%;

% option modeldiff on
:- set_ec_option(modeldiff, on).

% load foundations/Root.e

% load foundations/EC.e

% sort dealer
==> sort(dealer).

% sort wheel
==> sort(wheel).

% sort value: integer
==> subsort(value,integer).

% wheel Wheel1
==> t(wheel,wheel1).

% dealer Dealer1
==> t(dealer,dealer1).

% fluent WheelNumberDeterminer(wheel,value)
 %  fluent(wheelNumberDeterminer(wheel,value)).
==> mpred_prop(wheelNumberDeterminer(wheel,value),fluent).
==> meta_argtypes(wheelNumberDeterminer(wheel,value)).

% fluent WheelNumber(wheel,value)
 %  fluent(wheelNumber(wheel,value)).
==> mpred_prop(wheelNumber(wheel,value),fluent).
==> meta_argtypes(wheelNumber(wheel,value)).

% noninertial WheelNumberDeterminer
==> noninertial(wheelNumberDeterminer).

% event Spin(dealer,wheel)
 %  event(spin(dealer,wheel)).
==> mpred_prop(spin(dealer,wheel),event).
==> meta_argtypes(spin(dealer,wheel)).

% event Reset(dealer,wheel)
 %  event(reset(dealer,wheel)).
==> mpred_prop(reset(dealer,wheel),event).
==> meta_argtypes(reset(dealer,wheel)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:38
% [wheel,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:39
% {value}% HoldsAt(WheelNumberDeterminer(wheel,value),time).

 /*  exists([Value],
          holds_at(wheelNumberDeterminer(Wheel,Value),
   		Time)).
 */

 /*  holds_at(wheelNumberDeterminer(WheelNumberDeterminer_Param, Some_Param), Time4) :-
       some(Some_Param,
            '$kolem_Fn_19'(WheelNumberDeterminer_Param, Time4)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:40
axiom(holds_at(wheelNumberDeterminer(WheelNumberDeterminer_Param, Some_Param), Time4),
   
    [ some(Some_Param,
           '$kolem_Fn_19'(WheelNumberDeterminer_Param, Time4))
    ]).

 /*  not(some(Some_Param8, '$kolem_Fn_19'(Fn_19_Param, Time7))) :-
       not(holds_at(wheelNumberDeterminer(Fn_19_Param, Some_Param8),
                    Time7)).
 */
axiom(not(some(Some_Param8, '$kolem_Fn_19'(Fn_19_Param, Time7))),
   
    [ not(holds_at(wheelNumberDeterminer(Fn_19_Param, Some_Param8),
                   Time7))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:42
% [wheel,value1,value2,time]
% HoldsAt(WheelNumberDeterminer(wheel,value1),time) &
% HoldsAt(WheelNumberDeterminer(wheel,value2),time) ->
% value1=value2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:45
axiom(Value1=Value2,
   
    [ holds_at(wheelNumberDeterminer(Wheel, Value1), Time),
      holds_at(wheelNumberDeterminer(Wheel, Value2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:47
% [dealer,wheel,value,time]
% HoldsAt(WheelNumberDeterminer(wheel,value),time) ->
% Initiates(Spin(dealer,wheel),WheelNumber(wheel,value),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:49
axiom(initiates(spin(Dealer, Wheel), wheelNumber(Wheel, Value), Time),
    [holds_at(wheelNumberDeterminer(Wheel, Value), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:51
% [dealer,wheel,value1,value2,time]
% HoldsAt(WheelNumber(wheel,value1),time) &
% HoldsAt(WheelNumberDeterminer(wheel,value2),time) &
% value1!=value2 ->
% Terminates(Spin(dealer,wheel),WheelNumber(wheel,value1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:55
axiom(terminates(spin(Dealer, Wheel), wheelNumber(Wheel, Value1), Time),
   
    [ holds_at(wheelNumber(Wheel, Value1), Time),
      holds_at(wheelNumberDeterminer(Wheel, Value2), Time),
      { dif(Value1, Value2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:57
% [dealer,wheel,value,time]
% Terminates(Reset(dealer,wheel),WheelNumber(wheel,value),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:58
axiom(terminates(reset(Dealer, Wheel), wheelNumber(Wheel, Value), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:60
% [wheel,value1,value2,time]
% HoldsAt(WheelNumber(wheel,value1),time) &
% HoldsAt(WheelNumber(wheel,value2),time) ->
% value1=value2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:63
axiom(Value1=Value2,
   
    [ holds_at(wheelNumber(Wheel, Value1), Time),
      holds_at(wheelNumber(Wheel, Value2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:65
% [value]
 % !HoldsAt(WheelNumber(Wheel1,value),0).
 %  not(initially(wheelNumber(wheel1,Value))).
axiom(not(initially(wheelNumber(wheel1, WheelNumber_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:67
% Happens(Spin(Dealer1,Wheel1),0).
axiom(happens(spin(dealer1, wheel1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:68
%;Happens(Reset(Dealer1,Wheel1),1).
%; added to prune models


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:71
% HoldsAt(WheelNumberDeterminer(Wheel1, 1),1).
holds_at(wheelNumberDeterminer(wheel1,1),1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:73
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:74
==> completion(happens).

% range value 1 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:76
==> range(value,1,3).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:77
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RouletteWheel.e:78
==> range(offset,1,1).
%; End of file.
