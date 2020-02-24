:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Exercises/Counter.e').
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
%; @article{DeneckerDupreBelleghem:1998,
%;   author = "Marc Denecker and Daniele Theseider Dupr\'{e} and Kristof Van Belleghem",
%;   year = "1998",
%;   title = "An inductive definition approach to ramifications",
%;   journal = "Link{\"{o}}ping Electronic Articles in Computer and Information Science",
%;   volume = "3",
%;   number = "007",
%; }
%;
%; @book{Mueller:2006,
%;   author = "Erik T. Mueller",
%;   year = "2006",
%;   title = "Commonsense Reasoning",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann/Elsevier",
%; }
%;

% load foundations/Root.e

% load foundations/EC.e

% sort counter
==> sort(counter).

% counter Counter1
==> t(counter,counter1).

% event FalseToTrue(counter)
 %  event(falseToTrue(counter)).
==> mpred_prop(falseToTrue(counter),event).
==> meta_argtypes(falseToTrue(counter)).

% event TrueToFalse(counter)
 %  event(trueToFalse(counter)).
==> mpred_prop(trueToFalse(counter),event).
==> meta_argtypes(trueToFalse(counter)).

% fluent Count(counter,integer)
 %  fluent(count(counter,integer)).
==> mpred_prop(count(counter,integer),fluent).
==> meta_argtypes(count(counter,integer)).

% fluent True(counter)
 %  fluent(true(counter)).
==> mpred_prop(true(counter),fluent).
==> meta_argtypes(true(counter)).

% fluent InputLine(counter)
 %  fluent(inputLine(counter)).
==> mpred_prop(inputLine(counter),fluent).
==> meta_argtypes(inputLine(counter)).

% noninertial InputLine
==> noninertial(inputLine).

% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:42
% [counter,time]
% !HoldsAt(True(counter),time) &
% HoldsAt(InputLine(counter),time) ->
% Happens(FalseToTrue(counter),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:45
axiom(happens(falseToTrue(Counter), Time),
   
    [ not(holds_at(true(Counter), Time)),
      holds_at(inputLine(Counter), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:47
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:47
% [counter,time]
% HoldsAt(True(counter),time) &
% !HoldsAt(InputLine(counter),time) ->
% Happens(TrueToFalse(counter),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:50
axiom(happens(trueToFalse(Counter), Time),
   
    [ holds_at(true(Counter), Time),
      not(holds_at(inputLine(Counter), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:52
% [counter,time]
 % Initiates(FalseToTrue(counter),True(counter),time).
axiom(initiates(falseToTrue(Counter), true(Counter), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:54
% [counter,time]
 % Terminates(TrueToFalse(counter),True(counter),time).
axiom(terminates(trueToFalse(Counter), true(Counter), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:56
% [counter,integer1,integer2,time]
% HoldsAt(Count(counter,integer1),time) &
% (integer2 = (integer1 + 1)) ->
% Initiates(FalseToTrue(counter),Count(counter,integer2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:59
axiom(initiates(falseToTrue(Counter), count(Counter, Integer2), Time),
   
    [ holds_at(count(Counter, Integer1), Time),
      equals(Integer2, Integer1+1)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:61
% [counter,integer,time]
% HoldsAt(Count(counter,integer),time) ->
% Terminates(FalseToTrue(counter),Count(counter,integer),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:63
axiom(terminates(falseToTrue(Counter), count(Counter, Integer), Time),
    [holds_at(count(Counter, Integer), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:65
% [counter,integer1,integer2,time]
% HoldsAt(Count(counter,integer1),time) &
% HoldsAt(Count(counter,integer2),time) ->
% integer1 = integer2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:68
axiom(Integer1=Integer2,
   
    [ holds_at(count(Counter, Integer1), Time),
      holds_at(count(Counter, Integer2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:70
% !HoldsAt(True(Counter1),0).
 %  not(initially(true(counter1))).
axiom(not(initially(true(counter1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:71
% !HoldsAt(InputLine(Counter1),0).
 %  not(initially(inputLine(counter1))).
axiom(not(initially(inputLine(counter1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:72
% HoldsAt(InputLine(Counter1),1).
holds_at(inputLine(counter1),1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:73
% HoldsAt(InputLine(Counter1),2).
holds_at(inputLine(counter1),2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:74
% HoldsAt(InputLine(Counter1),3).
holds_at(inputLine(counter1),3).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:75
% !HoldsAt(InputLine(Counter1),4).
 %  not(holds_at(inputLine(counter1),4)).
axiom(not(holds_at(inputLine(counter1), t4)),
    [b(t, t4), ignore(t+4=t4)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:76
% !HoldsAt(InputLine(Counter1),5).
 %  not(holds_at(inputLine(counter1),5)).
axiom(not(holds_at(inputLine(counter1), t5)),
    [b(t, t5), ignore(t+5=t5)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:77
% !HoldsAt(InputLine(Counter1),6).
 %  not(holds_at(inputLine(counter1),6)).
axiom(not(holds_at(inputLine(counter1), t6)),
    [b(t, t6), ignore(t+6=t6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:78
% HoldsAt(InputLine(Counter1),7).
holds_at(inputLine(counter1),7).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:79
% HoldsAt(InputLine(Counter1),8).
holds_at(inputLine(counter1),8).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:80
% HoldsAt(InputLine(Counter1),9).
holds_at(inputLine(counter1),9).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:82
% HoldsAt(Count(Counter1,0),0).
axiom(initially(count(counter1, 0)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:84
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:85
==> completion(happens).

% range integer 0 6
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:87
==> range(integer,0,6).

% range time 0 10
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:88
==> range(time,0,10).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/Counter.e:89
==> range(offset,1,1).
%; End of file.
