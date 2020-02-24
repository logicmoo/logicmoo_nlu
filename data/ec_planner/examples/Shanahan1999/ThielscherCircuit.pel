:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1999/ThielscherCircuit.e').
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
%; @article{Thielscher:1997,
%;   author = "Michael Thielscher",
%;   year = "1997",
%;   title = "Ramification and causality",
%;   journal = "Artificial Intelligence",
%;   volume = "89",
%;   pages = "317--364",
%; }
%;
%; @incollection{Shanahan:1999,
%;   author = "Shanahan, Murray",
%;   year = "1999",
%;   title = "The Event Calculus explained",
%;   editor = "Michael J. Wooldridge and Manuela M. Veloso",
%;   booktitle = "Artificial Intelligence Today: Recent Trends and Developments",
%;   series = "Lecture Notes in Computer Science",
%;   volume = "1600",
%;   pages = "409--430",
%;   address = "Berlin",
%;   publisher = "Springer",
%; }
%;
%; deduction
%;
%; modifications from Shanahan's formulation:
%; timestamps
%;

% load foundations/Root.e

% load foundations/EC.e

% load foundations/ECCausal.e

% event LightOn()
 %  event(lightOn()).
==> mpred_prop(lightOn(),event).
==> meta_argtypes(lightOn()).

% event Close1()
 %  event(close1()).
==> mpred_prop(close1(),event).
==> meta_argtypes(close1()).

% event Open2()
 %  event(open2()).
==> mpred_prop(open2(),event).
==> meta_argtypes(open2()).

% event CloseRelay()
 %  event(closeRelay()).
==> mpred_prop(closeRelay(),event).
==> meta_argtypes(closeRelay()).

% fluent Light()
 %  fluent(light()).
==> mpred_prop(light(),fluent).
==> meta_argtypes(light()).

% fluent Switch1()
 %  fluent(switch1()).
==> mpred_prop(switch1(),fluent).
==> meta_argtypes(switch1()).

% fluent Switch2()
 %  fluent(switch2()).
==> mpred_prop(switch2(),fluent).
==> meta_argtypes(switch2()).

% fluent Switch3()
 %  fluent(switch3()).
==> mpred_prop(switch3(),fluent).
==> meta_argtypes(switch3()).

% fluent Relay()
 %  fluent(relay()).
==> mpred_prop(relay(),fluent).
==> meta_argtypes(relay()).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:53
% [time]
% Stopped(Light(),time) &
% Initiated(Switch1(),time) &
% Initiated(Switch2(),time) ->
% Happens(LightOn(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:57
axiom(happens(lightOn(), Time),
   
    [ stopped(light(), Time),
      initiated(switch1(), Time),
      initiated(switch2(), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:59
% [time]
% Started(Switch2(),time) &
% Initiated(Relay(),time) ->
% Happens(Open2(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:62
axiom(happens(open2(), Time),
    [started(switch2(), Time), initiated(relay(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:64
% [time]
% Stopped(Relay(),time) &
% Initiated(Switch1(),time) &
% Initiated(Switch3(),time) ->
% Happens(CloseRelay(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:68
axiom(happens(closeRelay(), Time),
   
    [ stopped(relay(), Time),
      initiated(switch1(), Time),
      initiated(switch3(), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:70
% [time]
 % Initiates(LightOn(),Light(),time).
axiom(initiates(lightOn(), light(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:72
% [time]
 % Terminates(Open2(),Switch2(),time).
axiom(terminates(open2(), switch2(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:74
% [time]
 % Initiates(CloseRelay(),Relay(),time).
axiom(initiates(closeRelay(), relay(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:76
% [time]
 % Initiates(Close1(),Switch1(),time).
axiom(initiates(close1(), switch1(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:78
% !HoldsAt(Switch1(),0).
 %  not(initially(switch1())).
axiom(not(initially(switch1())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:79
% HoldsAt(Switch2(),0).
axiom(initially(switch2()),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:80
% HoldsAt(Switch3(),0).
axiom(initially(switch3()),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:81
% !HoldsAt(Relay(),0).
 %  not(initially(relay())).
axiom(not(initially(relay())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:82
% !HoldsAt(Light(),0).
 %  not(initially(light())).
axiom(not(initially(light())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:84
% Happens(Close1(),0).
axiom(happens(close1(), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:86
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:87
==> completion(happens).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:89
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ThielscherCircuit.e:90
==> range(offset,1,1).
%; End of file.
