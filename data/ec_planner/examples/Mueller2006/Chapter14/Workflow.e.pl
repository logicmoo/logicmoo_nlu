:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter14/Workflow.e').
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
%; @incollection{CicekliYildirim:2000,
%;   author = "Nihan Kesim Cicekli and Yakup Yildirim",
%;   year = "2000",
%;   title = "Formalizing workflows using the event calculus",
%;   editor = "Mohamed T. Ibrahim and Josef K{\"{u}}ng and Norman Revell",
%;   booktitle = "Database and Expert Systems Applications",
%;   series = "Lecture Notes in Computer Science",
%;   volume = "1873",
%;   pages = "222--231",
%;   address = "Berlin",
%;   publisher = "Springer",
%; }
%;
%; @unpublished{WFMC:1999,
%;   author = "{Workflow Management Coalition}",
%;   year = "1999",
%;   title = "\uppercase{W}orkflow \uppercase{M}anagement \uppercase{C}oalition Terminology \& Glossary",
%;   howpublished = "Document Number WFMC-TC-1011, Document Status -- Issue 3.0, Workflow Management Coalition, Winchester, UK",
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

% option modeldiff on
:- set_ec_option(modeldiff, on).

% load foundations/Root.e

% load foundations/EC.e

% sort activity
==> sort(activity).

% sort condition
==> sort(condition).

% activity A, B, C1, C2, C3, D, E1, E2, E3, F, G
==> t(activity,a).
==> t(activity,b).
==> t(activity,c1).
==> t(activity,c2).
==> t(activity,c3).
==> t(activity,d).
==> t(activity,e1).
==> t(activity,e2).
==> t(activity,e3).
==> t(activity,f).
==> t(activity,g).

% condition E1C, E2C, E3C, FC
==> t(condition,e1c).
==> t(condition,e2c).
==> t(condition,e3c).
==> t(condition,fc).

% fluent Active(activity)
 %  fluent(active(activity)).
==> mpred_prop(active(activity),fluent).
==> meta_argtypes(active(activity)).

% fluent Completed(activity)
 %  fluent(completed(activity)).
==> mpred_prop(completed(activity),fluent).
==> meta_argtypes(completed(activity)).

% fluent Condition(condition)
 %  fluent(condition(condition)).
==> mpred_prop(condition(condition),fluent).
==> meta_argtypes(condition(condition)).

% noninertial Condition
==> noninertial(condition).

% event Start(activity)
 %  event(start(activity)).
==> mpred_prop(start(activity),event).
==> meta_argtypes(start(activity)).

% event End(activity)
 %  event(end(activity)).
==> mpred_prop(end(activity),event).
==> meta_argtypes(end(activity)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:57
%; Sigma
% [activity,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:60
% Initiates(Start(activity),Active(activity),time).
axiom(initiates(start(Activity), active(Activity), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:62
% [activity,time]
% Terminates(Start(activity),Completed(activity),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:63
axiom(terminates(start(Activity), completed(Activity), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:65
% [activity,time]
% Initiates(End(activity),Completed(activity),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:66
axiom(initiates(end(Activity), completed(Activity), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:68
% [activity,time]
% Terminates(End(activity),Active(activity),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:69
axiom(terminates(end(Activity), active(Activity), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:71
%; Delta
%; A; B

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:74
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:74
% [time]
% !HoldsAt(Active(B),time) &
% !HoldsAt(Completed(A),time-1) &
% HoldsAt(Completed(A),time) ->
% Happens(Start(B),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:78
axiom(happens(start(b), start),
   
    [ not(holds_at(active(b), start)),
      not(holds_at(completed(a), t)),
      holds_at(completed(a), start),
      b(t, start),
      ignore(start-1=t)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:80
%; B; AND-split C1, C2, C3

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:81
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:81
% [time]
% !HoldsAt(Active(C1),time) &
% !HoldsAt(Completed(B),time-1) &
% HoldsAt(Completed(B),time) ->
% Happens(Start(C1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:85
axiom(happens(start(c1), start),
   
    [ not(holds_at(active(c1), start)),
      not(holds_at(completed(b), t)),
      holds_at(completed(b), start),
      b(t, start),
      ignore(start-1=t)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:87
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:87
% [time]
% !HoldsAt(Active(C2),time) &
% !HoldsAt(Completed(B),time-1) &
% HoldsAt(Completed(B),time) ->
% Happens(Start(C2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:91
axiom(happens(start(c2), start),
   
    [ not(holds_at(active(c2), start)),
      not(holds_at(completed(b), t)),
      holds_at(completed(b), start),
      b(t, start),
      ignore(start-1=t)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:93
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:93
% [time]
% !HoldsAt(Active(C3),time) &
% !HoldsAt(Completed(B),time-1) &
% HoldsAt(Completed(B),time) ->
% Happens(Start(C3),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:97
axiom(happens(start(c3), start),
   
    [ not(holds_at(active(c3), start)),
      not(holds_at(completed(b), t)),
      holds_at(completed(b), start),
      b(t, start),
      ignore(start-1=t)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:99
%; AND-join C1, C2, C3; D

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:100
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:100
% [time]
% !HoldsAt(Active(D),time) &
% ((!HoldsAt(Completed(C1),time-1) & HoldsAt(Completed(C1),time))|
%  (!HoldsAt(Completed(C2),time-1) & HoldsAt(Completed(C2),time))|
%  (!HoldsAt(Completed(C3),time-1) & HoldsAt(Completed(C3),time))) &
% HoldsAt(Completed(C1),time) &
% HoldsAt(Completed(C2),time) &
% HoldsAt(Completed(C3),time) ->
% Happens(Start(D),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:108
axiom(happens(start(d), start),
   
    [ not(holds_at(completed(c1), t)),
      holds_at(completed(c1), start),
      not(holds_at(active(d), start)),
      holds_at(completed(c1), start),
      holds_at(completed(c2), start),
      holds_at(completed(c3), start),
      b(t, start),
      ignore(start-1=t)
    ]).
axiom(happens(start(d), start),
   
    [ not(holds_at(completed(c2), t)),
      holds_at(completed(c2), start),
      not(holds_at(active(d), start)),
      holds_at(completed(c1), start),
      holds_at(completed(c2), start),
      holds_at(completed(c3), start),
      b(t, start),
      ignore(start-1=t)
    ]).
axiom(happens(start(d), start),
   
    [ not(holds_at(completed(c3), t)),
      holds_at(completed(c3), start),
      not(holds_at(active(d), start)),
      holds_at(completed(c1), start),
      holds_at(completed(c2), start),
      holds_at(completed(c3), start),
      b(t, start),
      ignore(start-1=t)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:110
%; D; XOR-split E1, E2, E3

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:111
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:111
% [time]
% !HoldsAt(Active(E1),time) &
% !HoldsAt(Completed(D),time-1) &
% HoldsAt(Completed(D),time) &
% HoldsAt(Condition(E1C),time) ->
% Happens(Start(E1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:116
axiom(happens(start(e1), start),
   
    [ not(holds_at(active(e1), start)),
      not(holds_at(completed(d), t)),
      holds_at(completed(d), start),
      holds_at(condition(e1c), start),
      b(t, start),
      ignore(start-1=t)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:118
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:118
% [time]
% !HoldsAt(Active(E2),time) &
% !HoldsAt(Completed(D),time-1) &
% HoldsAt(Completed(D),time) &
% HoldsAt(Condition(E2C),time) ->
% Happens(Start(E2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:123
axiom(happens(start(e2), start),
   
    [ not(holds_at(active(e2), start)),
      not(holds_at(completed(d), t)),
      holds_at(completed(d), start),
      holds_at(condition(e2c), start),
      b(t, start),
      ignore(start-1=t)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:125
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:125
% [time]
% !HoldsAt(Active(E3),time) &
% !HoldsAt(Completed(D),time-1) &
% HoldsAt(Completed(D),time) &
% HoldsAt(Condition(E3C),time) ->
% Happens(Start(E3),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:130
axiom(happens(start(e3), start),
   
    [ not(holds_at(active(e3), start)),
      not(holds_at(completed(d), t)),
      holds_at(completed(d), start),
      holds_at(condition(e3c), start),
      b(t, start),
      ignore(start-1=t)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:132
%; XOR-join E1, E2, E3; F

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:133
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:133
% [time]
% !HoldsAt(Active(F),time) &
% ((!HoldsAt(Completed(E1),time-1) & HoldsAt(Completed(E1),time))|
%  (!HoldsAt(Completed(E2),time-1) & HoldsAt(Completed(E2),time))|
%  (!HoldsAt(Completed(E3),time-1) & HoldsAt(Completed(E3),time))) ->
% Happens(Start(F),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:138
axiom(happens(start(f), start),
   
    [ not(holds_at(completed(e1), t)),
      holds_at(completed(e1), start),
      not(holds_at(active(f), start)),
      b(t, start),
      ignore(start-1=t)
    ]).
axiom(happens(start(f), start),
   
    [ not(holds_at(completed(e2), t)),
      holds_at(completed(e2), start),
      not(holds_at(active(f), start)),
      b(t, start),
      ignore(start-1=t)
    ]).
axiom(happens(start(f), start),
   
    [ not(holds_at(completed(e3), t)),
      holds_at(completed(e3), start),
      not(holds_at(active(f), start)),
      b(t, start),
      ignore(start-1=t)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:140
%; while (FC) F; G

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:141
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:141
% [time]
% !HoldsAt(Active(F),time) &
% !HoldsAt(Completed(F),time-1) &
% HoldsAt(Completed(F),time) &
% HoldsAt(Condition(FC),time) ->
% Happens(Start(F),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:146
axiom(happens(start(f), start),
   
    [ not(holds_at(active(f), start)),
      not(holds_at(completed(f), t)),
      holds_at(completed(f), start),
      holds_at(condition(fc), start),
      b(t, start),
      ignore(start-1=t)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:148
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:148
% [time]
% !HoldsAt(Active(G),time) &
% !HoldsAt(Completed(F),time-1) &
% HoldsAt(Completed(F),time) &
% !HoldsAt(Condition(FC),time) ->
% Happens(Start(G),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:153
axiom(happens(start(g), start),
   
    [ not(holds_at(active(g), start)),
      not(holds_at(completed(f), t)),
      holds_at(completed(f), start),
      not(holds_at(condition(fc), start)),
      b(t, start),
      ignore(start-1=t)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:155
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:155
% Happens(Start(A),0).
axiom(happens(start(a), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:156
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:156
% Happens(End(A),1).
axiom(happens(end(a), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:157
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:157
% Happens(End(B),3).
axiom(happens(end(b), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:158
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:158
% Happens(End(C1),5).
axiom(happens(end(c1), t5),
    [is_time(5), b(t, t5), ignore(t+5=t5)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:159
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:159
% Happens(End(C2),6).
axiom(happens(end(c2), t6),
    [is_time(6), b(t, t6), ignore(t+6=t6)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:160
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:160
% Happens(End(C3),7).
axiom(happens(end(c3), t7),
    [is_time(7), b(t, t7), ignore(t+7=t7)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:161
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:161
% Happens(End(D),9).
axiom(happens(end(d), t9),
    [is_time(9), b(t, t9), ignore(t+9=t9)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:162
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:162
% Happens(End(E2),11).
axiom(happens(end(e2), t11),
    [is_time(11), b(t, t11), ignore(t+11=t11)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:163
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:163
% Happens(End(F),13).
axiom(happens(end(f), t13),
    [is_time(13), b(t, t13), ignore(t+13=t13)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:164
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:164
% Happens(End(F),15).
axiom(happens(end(f), t15),
    [is_time(15), b(t, t15), ignore(t+15=t15)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:166
%; Gamma
% [activity]
 % !HoldsAt(Active(activity),0).
 %  not(initially(active(Activity))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:168
axiom(not(initially(active(Active_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:169
% [activity]
 % !HoldsAt(Completed(activity),0).
 %  not(initially(completed(Activity))).
axiom(not(initially(completed(Completed_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:170
% [time]
 % time=% 14 <-> HoldsAt(Condition(FC),time).

 /*  Time=14 <->
       holds_at(condition(fc), Time).
 */
axiom(Time=14,
    [holds_at(condition(fc), Time)]).
axiom(holds_at(condition(fc), Time),
    [equals(Time, 14)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:171
% [time]
 % !HoldsAt(Condition(E1C),time).
 %  not(holds_at(condition(e1c),Time)).
axiom(not(holds_at(condition(e1c), Time1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:172
% [time]
 % time=% 10 <-> HoldsAt(Condition(E2C),time).

 /*  Time=10 <->
       holds_at(condition(e2c), Time).
 */
axiom(Time=10,
    [holds_at(condition(e2c), Time)]).
axiom(holds_at(condition(e2c), Time),
    [equals(Time, 10)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:173
% [time]
 % !HoldsAt(Condition(E3C),time).
 %  not(holds_at(condition(e3c),Time)).
axiom(not(holds_at(condition(e3c), Time1)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:175
% completion Delta Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:176
==> completion(delta).
==> completion(happens).

% range time 0 18
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:178
==> range(time,0,18).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/Workflow.e:179
==> range(offset,1,1).
%; End of file.
