:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2004b/RouletteWheel.e').
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

% sort wheel
==> sort(wheel).

% sort value: integer
==> subsort(value,integer).

% fluent WheelValueDeterminingFluent(wheel,value)
 %  fluent(wheelValueDeterminingFluent(wheel,value)).
==> mpred_prop(wheelValueDeterminingFluent(wheel,value),fluent).
==> meta_argtypes(wheelValueDeterminingFluent(wheel,value)).

% fluent WheelValue(wheel,value)
 %  fluent(wheelValue(wheel,value)).
==> mpred_prop(wheelValue(wheel,value),fluent).
==> meta_argtypes(wheelValue(wheel,value)).

% noninertial WheelValueDeterminingFluent
==> noninertial(wheelValueDeterminingFluent).

% event Spin(wheel)
 %  event(spin(wheel)).
==> mpred_prop(spin(wheel),event).
==> meta_argtypes(spin(wheel)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:33
% [wheel,value1,value2,time]
% HoldsAt(WheelValue(wheel,value1),time) &
% HoldsAt(WheelValue(wheel,value2),time) ->
% value1=value2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:36
axiom(Value1=Value2,
   
    [ holds_at(wheelValue(Wheel, Value1), Time),
      holds_at(wheelValue(Wheel, Value2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:38
% [wheel,value1,value2,time]
% HoldsAt(WheelValueDeterminingFluent(wheel,value1),time) &
% HoldsAt(WheelValueDeterminingFluent(wheel,value2),time) ->
% value1=value2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:41
axiom(Value1=Value2,
   
    [ holds_at(wheelValueDeterminingFluent(Wheel, Value1),
               Time),
      holds_at(wheelValueDeterminingFluent(Wheel, Value2),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:43
% [wheel,value,time]
% HoldsAt(WheelValueDeterminingFluent(wheel,value),time) ->
% Initiates(Spin(wheel),WheelValue(wheel,value),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:45
axiom(initiates(spin(Wheel), wheelValue(Wheel, Value), Time),
   
    [ holds_at(wheelValueDeterminingFluent(Wheel, Value),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:47
% [wheel,value1,value2,time]
% HoldsAt(WheelValue(wheel,value1),time) &
% HoldsAt(WheelValueDeterminingFluent(wheel,value2),time) &
% value1!=value2 ->
% Terminates(Spin(wheel),WheelValue(wheel,value1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:51
axiom(terminates(spin(Wheel), wheelValue(Wheel, Value1), Time),
   
    [ holds_at(wheelValue(Wheel, Value1), Time),
      holds_at(wheelValueDeterminingFluent(Wheel, Value2),
               Time),
      { dif(Value1, Value2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:53
% [wheel,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:54
% {value} % HoldsAt(WheelValueDeterminingFluent(wheel,value),time).

 /*  exists([Value],
          holds_at(wheelValueDeterminingFluent(Wheel,Value),
   		Time)).
 */

 /*  holds_at(wheelValueDeterminingFluent(WheelValueDeterminingFluent_Param, Some_Param), Time4) :-
       some(Some_Param,
            '$kolem_Fn_124'(WheelValueDeterminingFluent_Param, Time4)).
 */
axiom(holds_at(wheelValueDeterminingFluent(WheelValueDeterminingFluent_Param, Some_Param), Time4),
   
    [ some(Some_Param,
           '$kolem_Fn_124'(WheelValueDeterminingFluent_Param, Time4))
    ]).

 /*  not(some(Some_Param8, '$kolem_Fn_124'(Fn_124_Param, Time7))) :-
       not(holds_at(wheelValueDeterminingFluent(Fn_124_Param,
                                                Some_Param8),
                    Time7)).
 */
axiom(not(some(Some_Param8, '$kolem_Fn_124'(Fn_124_Param, Time7))),
   
    [ not(holds_at(wheelValueDeterminingFluent(Fn_124_Param,
                                               Some_Param8),
                   Time7))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:56
% wheel Wheel
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:57
==> t(wheel,wheel).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:58
% HoldsAt(WheelValue(Wheel,7),0).
axiom(initially(wheelValue(wheel, 7)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:59
% Happens(Spin(Wheel),0).
axiom(happens(spin(wheel), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:60
% HoldsAt(WheelValueDeterminingFluent(Wheel,7),1).
holds_at(wheelValueDeterminingFluent(wheel,7),1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:62
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:63
==> completion(happens).

% range value 7 10
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:65
==> range(value,7,10).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:66
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RouletteWheel.e:67
==> range(offset,1,1).
%; End of file.
