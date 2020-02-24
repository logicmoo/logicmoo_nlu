:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter6/ThielscherCircuit2.e').
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

% sort switch
==> sort(switch).

% sort relay
==> sort(relay).

% sort light
==> sort(light).

% switch S1, S2, S3
==> t(switch,s1).
==> t(switch,s2).
==> t(switch,s3).

% relay R
==> t(relay,r).

% light L
==> t(light,l).

% event Light(light)
 %  event(light(light)).
==> mpred_prop(light(light),event).
==> meta_argtypes(light(light)).

% event Unlight(light)
 %  event(unlight(light)).
==> mpred_prop(unlight(light),event).
==> meta_argtypes(unlight(light)).

% event Close(switch)
 %  event(close(switch)).
==> mpred_prop(close(switch),event).
==> meta_argtypes(close(switch)).

% event Open(switch)
 %  event(open(switch)).
==> mpred_prop(open(switch),event).
==> meta_argtypes(open(switch)).

% event Activate(relay)
 %  event(activate(relay)).
==> mpred_prop(activate(relay),event).
==> meta_argtypes(activate(relay)).

% fluent Lit(light)
 %  fluent(lit(light)).
==> mpred_prop(lit(light),fluent).
==> meta_argtypes(lit(light)).

% fluent Closed(switch)
 %  fluent(closed(switch)).
==> mpred_prop(closed(switch),fluent).
==> meta_argtypes(closed(switch)).

% fluent Activated(relay)
 %  fluent(activated(relay)).
==> mpred_prop(activated(relay),fluent).
==> meta_argtypes(activated(relay)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:49
% [time]
% !HoldsAt(Lit(L),time) &
% HoldsAt(Closed(S1),time) &
% HoldsAt(Closed(S2),time) ->
% Happens(Light(L),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:53
axiom(happens(light(l), Time),
   
    [ not(holds_at(lit(l), Time)),
      holds_at(closed(s1), Time),
      holds_at(closed(s2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:55
% [time]
% HoldsAt(Lit(L),time) &
% (!HoldsAt(Closed(S1),time) | !HoldsAt(Closed(S2),time)) ->
% Happens(Unlight(L),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:58
axiom(happens(unlight(l), Time),
    [not(holds_at(closed(s1), Time)), holds_at(lit(l), Time)]).
axiom(happens(unlight(l), Time),
    [not(holds_at(closed(s2), Time)), holds_at(lit(l), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:60
% [time]
% HoldsAt(Closed(S2),time) &
% HoldsAt(Activated(R),time) ->
% Happens(Open(S2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:63
axiom(happens(open(s2), Time),
    [holds_at(closed(s2), Time), holds_at(activated(r), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:65
% [time]
% !HoldsAt(Activated(R),time) &
% HoldsAt(Closed(S1),time) &
% HoldsAt(Closed(S3),time) ->
% Happens(Activate(R),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:69
axiom(happens(activate(r), Time),
   
    [ not(holds_at(activated(r), Time)),
      holds_at(closed(s1), Time),
      holds_at(closed(s3), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:71
% [switch,time]
 % Initiates(Close(switch),Closed(switch),time).
axiom(initiates(close(Switch), closed(Switch), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:72
% [switch,time]
 % Terminates(Open(switch),Closed(switch),time).
axiom(terminates(open(Switch), closed(Switch), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:73
% [relay,time]
 % Initiates(Activate(relay),Activated(relay),time).
axiom(initiates(activate(Relay), activated(Relay), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:74
% [light,time]
 % Initiates(Light(light),Lit(light),time).
axiom(initiates(light(Light), lit(Light), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:75
% [light,time]
 % Terminates(Unlight(light),Lit(light),time).
axiom(terminates(unlight(Light), lit(Light), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:77
% !HoldsAt(Closed(S1),0).
 %  not(initially(closed(s1))).
axiom(not(initially(closed(s1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:78
% HoldsAt(Closed(S2),0).
axiom(initially(closed(s2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:79
% HoldsAt(Closed(S3),0).
axiom(initially(closed(s3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:80
% !HoldsAt(Activated(R),0).
 %  not(initially(activated(r))).
axiom(not(initially(activated(r))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:81
% !HoldsAt(Lit(L),0).
 %  not(initially(lit(l))).
axiom(not(initially(lit(l))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:83
% Happens(Close(S1),0).
axiom(happens(close(s1), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:85
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:86
==> completion(happens).

% range time 0 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:88
==> range(time,0,4).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter6/ThielscherCircuit2.e:89
==> range(offset,1,1).
%; End of file.
