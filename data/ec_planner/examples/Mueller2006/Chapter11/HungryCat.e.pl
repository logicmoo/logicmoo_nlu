:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter11/HungryCat.e').
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
%; @inproceedings{WinikoffEtAl:2002,
%;   author = "Michael Winikoff and Lin Padgham and James Harland and John Thangarajah",
%;   year = "2002",
%;   title = "Declarative \& procedural goals in intelligent agent systems",
%;   editor = "Dieter Fensel and Fausto Giunchiglia and Deborah McGuinness and Mary-Anne Williams",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{E}ighth \uppercase{I}nternational \uppercase{C}onference on \uppercase{P}rinciples of \uppercase{K}nowledge \uppercase{R}epresentation and \uppercase{R}easoning",
%;   pages = "470--481",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann",
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

% sort object
==> sort(object).

% sort agent: object
==> subsort(agent,object).

% sort food: object
==> subsort(food,object).

% sort surface
==> sort(surface).

% sort plan
==> sort(plan).

% reified sort belief
 %  reified_sort(belief).
==> mpred_prop(belief,reified_sort).

% agent Cat
==> t(agent,cat).

% surface Floor, Chair, Shelf, Table
==> t(surface,floor).
==> t(surface,chair).
==> t(surface,shelf).
==> t(surface,table).

% food Food1, Food2
==> t(food,food1).
==> t(food,food2).

% plan P1, P1a, P1b, P2, P2a
==> t(plan,p1).
==> t(plan,p1a).
==> t(plan,p1b).
==> t(plan,p2).
==> t(plan,p2a).

% predicate SelectedPlan(agent,belief,plan,time)
 %  predicate(selectedPlan(agent,belief,plan,time)).
==> mpred_prop(selectedPlan(agent,belief,plan,time),predicate).
==> meta_argtypes(selectedPlan(agent,belief,plan,time)).

% predicate SoundPlan(agent,belief,plan,time)
 %  predicate(soundPlan(agent,belief,plan,time)).
==> mpred_prop(soundPlan(agent,belief,plan,time),predicate).
==> meta_argtypes(soundPlan(agent,belief,plan,time)).

% fluent On(object,surface)
 %  fluent(on(object,surface)).
==> mpred_prop(on(object,surface),fluent).
==> meta_argtypes(on(object,surface)).

% fluent Goal(agent,belief)
 %  fluent(goal(agent,belief)).
==> mpred_prop(goal(agent,belief),fluent).
==> meta_argtypes(goal(agent,belief)).

% fluent CanJump(surface,surface)
 %  fluent(canJump(surface,surface)).
==> mpred_prop(canJump(surface,surface),fluent).
==> meta_argtypes(canJump(surface,surface)).

% fluent Plan(agent,belief,plan)
 %  fluent(plan(agent,belief,plan)).
==> mpred_prop(plan(agent,belief,plan),fluent).
==> meta_argtypes(plan(agent,belief,plan)).

% fluent Satiated(agent)
 %  fluent(satiated(agent)).
==> mpred_prop(satiated(agent),fluent).
==> meta_argtypes(satiated(agent)).

% fluent Believe(agent,belief)
 %  fluent(believe(agent,belief)).
==> mpred_prop(believe(agent,belief),fluent).
==> meta_argtypes(believe(agent,belief)).

% event AddPlan(agent,belief,plan)
 %  event(addPlan(agent,belief,plan)).
==> mpred_prop(addPlan(agent,belief,plan),event).
==> meta_argtypes(addPlan(agent,belief,plan)).

% event DropPlan(agent,belief,plan)
 %  event(dropPlan(agent,belief,plan)).
==> mpred_prop(dropPlan(agent,belief,plan),event).
==> meta_argtypes(dropPlan(agent,belief,plan)).

% event Jump(agent,surface,surface)
 %  event(jump(agent,surface,surface)).
==> mpred_prop(jump(agent,surface,surface),event).
==> meta_argtypes(jump(agent,surface,surface)).

% event Move(surface,surface,surface)
 %  event(move(surface,surface,surface)).
==> mpred_prop(move(surface,surface,surface),event).
==> meta_argtypes(move(surface,surface,surface)).

% event Eat(agent,food)
 %  event(eat(agent,food)).
==> mpred_prop(eat(agent,food),event).
==> meta_argtypes(eat(agent,food)).

% event Wait(agent)
 %  event(wait(agent)).
==> mpred_prop(wait(agent),event).
==> meta_argtypes(wait(agent)).

% belief BSatiated(agent)
==> t(belief,'bSatiated(agent)').

% belief BCanJump(surface,surface)
==> t(belief,'bCanJump(surface').
==> t(belief,'surface)').

% belief BOn(object,surface)
==> t(belief,'bOn(object').
==> t(belief,'surface)').
%; Sigma
%; A5
% [agent,belief,plan,time]
% Initiates(AddPlan(agent,belief,plan),Plan(agent,belief,plan),time).
axiom(initiates(addPlan(Agent, Belief, Plan), plan(Agent, Belief, Plan), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:73
%; A6
% [agent,belief,plan,time]
% Terminates(DropPlan(agent,belief,plan),Plan(agent,belief,plan),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:75
axiom(terminates(dropPlan(Agent, Belief, Plan), plan(Agent, Belief, Plan), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:77
% [agent,surface1,surface2,time]
% HoldsAt(On(agent,surface1),time) &
% HoldsAt(CanJump(surface1,surface2),time) ->
% Initiates(Jump(agent,surface1,surface2),On(agent,surface2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:80
axiom(initiates(jump(Agent, Surface1, Surface2), on(Agent, Surface2), Time),
   
    [ holds_at(on(Agent, Surface1), Time),
      holds_at(canJump(Surface1, Surface2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:82
% [agent,surface1,surface2,time]
% HoldsAt(On(agent,surface1),time) &
% HoldsAt(CanJump(surface1,surface2),time) ->
% Terminates(Jump(agent,surface1,surface2),On(agent,surface1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:85
axiom(terminates(jump(Agent, Surface1, Surface2), on(Agent, Surface1), Time),
   
    [ holds_at(on(Agent, Surface1), Time),
      holds_at(canJump(Surface1, Surface2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:87
% [surface1,surface2,surface3,time]
% Initiates(Move(surface1,surface2,surface3),CanJump(surface1,surface3),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:88
axiom(initiates(move(Surface1, Surface2, Surface3), canJump(Surface1, Surface3), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:90
% [surface1,surface2,surface3,time]
% Terminates(Move(surface1,surface2,surface3),CanJump(surface1,surface2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:91
axiom(terminates(move(Surface1, Surface2, Surface3), canJump(Surface1, Surface2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:93
% [agent,food,surface,time]
% HoldsAt(On(agent,surface),time) &
% HoldsAt(On(food,surface),time) ->
% Initiates(Eat(agent,food),Satiated(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:96
axiom(initiates(eat(Agent, Food), satiated(Agent), Time),
   
    [ holds_at(on(Agent, Surface), Time),
      holds_at(on(Food, Surface), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:98
% [agent,food,surface,time]
% HoldsAt(On(agent,surface),time) &
% HoldsAt(On(food,surface),time) ->
% Terminates(Eat(agent,food),On(food,surface),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:101
axiom(terminates(eat(Agent, Food), on(Food, Surface), Time),
   
    [ holds_at(on(Agent, Surface), Time),
      holds_at(on(Food, Surface), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:103
% [agent,surface1,surface2,belief,time]
% HoldsAt(Believe(agent,BOn(agent,surface1)),time) &
% HoldsAt(Believe(agent,BCanJump(surface1,surface2)),time) &
% (belief = BOn(agent,surface2)) ->
% Initiates(Jump(agent,surface1,surface2),
%           Believe(agent,belief),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:109
axiom(initiates(jump(Agent, Surface1, Surface2), believe(Agent, Belief), Time),
   
    [ holds_at(believe(Agent, bOn(Agent, Surface1)),
               Time),
      holds_at(believe(Agent, bCanJump(Surface1, Surface2)),
               Time),
      equals(Belief, bOn(Agent, Surface2))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:111
% [agent,surface1,surface2,belief,time]
% HoldsAt(Believe(agent,BOn(agent,surface1)),time) &
% HoldsAt(Believe(agent,BCanJump(surface1,surface2)),time) &
% (belief = BOn(agent,surface1)) ->
% Terminates(Jump(agent,surface1,surface2),
%            Believe(agent,belief),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:117
axiom(terminates(jump(Agent, Surface1, Surface2), believe(Agent, Belief), Time),
   
    [ holds_at(believe(Agent, bOn(Agent, Surface1)),
               Time),
      holds_at(believe(Agent, bCanJump(Surface1, Surface2)),
               Time),
      equals(Belief, bOn(Agent, Surface1))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:119
% [agent,surface1,surface2,surface3,belief,time]
% (belief = BCanJump(surface1,surface3)) ->
% Initiates(Move(surface1,surface2,surface3),
%           Believe(agent,belief),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:123
axiom(initiates(move(Surface1, Surface2, Surface3), believe(Agent, Belief), Time),
    [equals(Belief, bCanJump(Surface1, Surface3))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:125
% [agent,surface1,surface2,surface3,belief,time]
% (belief = BCanJump(surface1,surface2)) ->
% Terminates(Move(surface1,surface2,surface3),
%            Believe(agent,belief),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:129
axiom(terminates(move(Surface1, Surface2, Surface3), believe(Agent, Belief), Time),
    [equals(Belief, bCanJump(Surface1, Surface2))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:131
% [agent,food,surface,belief,time]
% HoldsAt(Believe(agent,BOn(agent,surface)),time) &
% HoldsAt(Believe(agent,BOn(food,surface)),time) &
% (belief = BSatiated(agent)) ->
% Initiates(Eat(agent,food),Believe(agent,belief),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:135
axiom(initiates(eat(Agent, Food), believe(Agent, Belief), Time),
   
    [ holds_at(believe(Agent, bOn(Agent, Surface)), Time),
      holds_at(believe(Agent, bOn(Food, Surface)), Time),
      equals(Belief, bSatiated(Agent))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:137
% [agent,food,surface,belief,time]
% HoldsAt(Believe(agent,BOn(agent,surface)),time) &
% HoldsAt(Believe(agent,BOn(food,surface)),time) &
% (belief = BOn(food,surface)) ->
% Terminates(Eat(agent,food),Believe(agent,belief),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:141
axiom(terminates(eat(Agent, Food), believe(Agent, Belief), Time),
   
    [ holds_at(believe(Agent, bOn(Agent, Surface)), Time),
      holds_at(believe(Agent, bOn(Food, Surface)), Time),
      equals(Belief, bOn(Food, Surface))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:143
%; Delta
%; A7
% [agent,belief,plan,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:147
% HoldsAt(Goal(agent,belief),time) &
% !HoldsAt(Believe(agent,belief),time) &
% SelectedPlan(agent,belief,plan,time) &
% (!{plan1} HoldsAt(Plan(agent,belief,plan1),time)) ->
% Happens(AddPlan(agent,belief,plan),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:151
axiom(happens(addPlan(Agent, Belief, Plan), Time),
   
    [ holds_at(goal(Agent, Belief), Time),
      not(holds_at(believe(Agent, Belief), Time)),
      selectedPlan(Agent, Belief, Plan, Time),
      not(holds_at(plan(Agent, Belief, Plan1), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:153
%; A8
% [agent,belief,time]
% HoldsAt(Plan(agent,belief,P1),time) &
% !HoldsAt(Believe(agent,belief),time) &
% SoundPlan(agent,belief,P1,time) ->
% Happens(Jump(Cat,Floor,Chair),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:158
axiom(happens(jump(cat, floor, chair), Time),
   
    [ holds_at(plan(Agent, Belief, p1), Time),
      not(holds_at(believe(Agent, Belief), Time)),
      soundPlan(Agent, Belief, p1, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:160
% [agent,belief,time]
% HoldsAt(Plan(agent,belief,P1a),time) &
% !HoldsAt(Believe(agent,belief),time) &
% SoundPlan(agent,belief,P1a,time) ->
% Happens(Wait(Cat),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:164
axiom(happens(wait(cat), Time),
   
    [ holds_at(plan(Agent, Belief, p1a), Time),
      not(holds_at(believe(Agent, Belief), Time)),
      soundPlan(Agent, Belief, p1a, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:166
% [agent,belief,time]
% HoldsAt(Plan(agent,belief,P2),time) &
% !HoldsAt(Believe(agent,belief),time) &
% SoundPlan(agent,belief,P2,time) ->
% Happens(Jump(Cat,Chair,Shelf),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:170
axiom(happens(jump(cat, chair, shelf), Time),
   
    [ holds_at(plan(Agent, Belief, p2), Time),
      not(holds_at(believe(Agent, Belief), Time)),
      soundPlan(Agent, Belief, p2, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:172
%; A9
% [agent,belief,plan,time]
% HoldsAt(Plan(agent,belief,plan),time) ->
% Happens(DropPlan(agent,belief,plan),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:175
axiom(happens(dropPlan(Agent, Belief, Plan), Time),
    [holds_at(plan(Agent, Belief, Plan), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:177
%; A10
% [agent,belief,time]
% HoldsAt(Plan(agent,belief,P1),time) &
% !HoldsAt(Believe(agent,belief),time) &
% SoundPlan(agent,belief,P1,time) ->
% Happens(AddPlan(agent,belief,P1a),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:182
axiom(happens(addPlan(Agent, Belief, p1a), Time),
   
    [ holds_at(plan(Agent, Belief, p1), Time),
      not(holds_at(believe(Agent, Belief), Time)),
      soundPlan(Agent, Belief, p1, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:184
% [agent,belief,time]
% HoldsAt(Plan(agent,belief,P1a),time) &
% !HoldsAt(Believe(agent,belief),time) &
% SoundPlan(agent,belief,P1a,time) ->
% Happens(AddPlan(agent,belief,P1b),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:188
axiom(happens(addPlan(Agent, Belief, p1b), Time),
   
    [ holds_at(plan(Agent, Belief, p1a), Time),
      not(holds_at(believe(Agent, Belief), Time)),
      soundPlan(Agent, Belief, p1a, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:190
% [agent,belief,time]
% HoldsAt(Plan(agent,belief,P2),time) &
% !HoldsAt(Believe(agent,belief),time) &
% SoundPlan(agent,belief,P2,time) ->
% Happens(AddPlan(agent,belief,P2a),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:194
axiom(happens(addPlan(Agent, Belief, p2a), Time),
   
    [ holds_at(plan(Agent, Belief, p2), Time),
      not(holds_at(believe(Agent, Belief), Time)),
      soundPlan(Agent, Belief, p2, Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:196
%; reactive behavior
% [agent,food,surface,time]
% !HoldsAt(Satiated(agent),time) &
% HoldsAt(On(agent,surface),time) &
% HoldsAt(On(food,surface),time) ->
% Happens(Eat(agent,food),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:201
axiom(happens(eat(Agent, Food), Time),
   
    [ not(holds_at(satiated(Agent), Time)),
      holds_at(on(Agent, Surface), Time),
      holds_at(on(Food, Surface), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:203
%; narrative


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:205
% Happens(Move(Chair,Table,Shelf),2).
axiom(happens(move(chair, table, shelf), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:207
%; SelectedPlan - plan library
%;[agent,belief,plan,time]
%;SelectedPlan(agent,belief,plan,time) <->
%;(agent=Cat & belief=BSatiated(Cat) & plan=P1 & time=0) |
%;(agent=Cat & belief=BSatiated(Cat) & plan=P2 & time=4).
% [agent,belief,plan,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:215
% SelectedPlan(agent,belief,plan,time) <->
% ({surface1,surface2,surface3,food}
%  HoldsAt(Believe(agent,BOn(agent,surface1)),time) &
%  HoldsAt(Believe(agent,BCanJump(surface1,surface2)),time) &
%  HoldsAt(Believe(agent,BCanJump(surface2,surface3)),time) &
%  HoldsAt(Believe(agent,BOn(food,surface3)),time) &
%  belief=BSatiated(agent) &
%  plan=P1 &
%  time=0) |
% ({surface1,surface2,surface3,food}
%  HoldsAt(Believe(agent,BOn(agent,surface1)),time) &
%  HoldsAt(Believe(agent,BCanJump(surface1,surface2)),time) &
%  HoldsAt(Believe(agent,BCanJump(surface2,surface3)),time) &
%  HoldsAt(Believe(agent,BOn(food,surface3)),time) &
%  belief=BSatiated(agent) &
%  plan=P2 &
%  time=4).

 /*  selectedPlan(Agent, Belief, Plan, Time) <->
       (   exists([Surface1, Surface2, Surface3, Food],
                   (holds_at(believe(Agent, bOn(Agent, Surface1)), Time), holds_at(believe(Agent, bCanJump(Surface1, Surface2)), Time), holds_at(believe(Agent, bCanJump(Surface2, Surface3)), Time), holds_at(believe(Agent, bOn(Food, Surface3)), Time), Belief=bSatiated(Agent), Plan=p1, Time=0))
       ;   exists([Surface18, Surface29, Surface310, Food11],
                   (holds_at(believe(Agent, bOn(Agent, Surface18)), Time), holds_at(believe(Agent, bCanJump(Surface18, Surface29)), Time), holds_at(believe(Agent, bCanJump(Surface29, Surface310)), Time), holds_at(believe(Agent, bOn(Food11, Surface310)), Time), Belief=bSatiated(Agent), Plan=p2, Time=4))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:231
axiom(selectedPlan(Agent, Belief, Plan, Time),
   
    [ holds_at(believe(Agent, bOn(Agent, Surface1)),
               Time),
      holds_at(believe(Agent, bCanJump(Surface1, Surface2)),
               Time),
      holds_at(believe(Agent, bCanJump(Surface2, Surface3)),
               Time),
      holds_at(believe(Agent, bOn(Food, Surface3)), Time),
      equals(Belief, bSatiated(Agent)),
      equals(Plan, p1),
      equals(Time, 0)
    ]).
axiom(selectedPlan(Agent, Belief, Plan, Time),
   
    [ holds_at(believe(Agent, bOn(Agent, Surface18)),
               Time),
      holds_at(believe(Agent, bCanJump(Surface18, Surface29)),
               Time),
      holds_at(believe(Agent, bCanJump(Surface29, Surface310)),
               Time),
      holds_at(believe(Agent, bOn(Food11, Surface310)),
               Time),
      equals(Belief, bSatiated(Agent)),
      equals(Plan, p2),
      equals(Time, 4)
    ]).

 /*   if(selectedPlan(Agent, Belief, Plan, Time),
          (exists([Surface1, Surface2, Surface3, Food],  (holds_at(believe(Agent, bOn(Agent, Surface1)), Time), holds_at(believe(Agent, bCanJump(Surface1, Surface2)), Time), holds_at(believe(Agent, bCanJump(Surface2, Surface3)), Time), holds_at(believe(Agent, bOn(Food, Surface3)), Time), Belief=bSatiated(Agent), Plan=p1, Time=0));exists([Surface18, Surface29, Surface310, Food11],  (holds_at(believe(Agent, bOn(Agent, Surface18)), Time), holds_at(believe(Agent, bCanJump(Surface18, Surface29)), Time), holds_at(believe(Agent, bCanJump(Surface29, Surface310)), Time), holds_at(believe(Agent, bOn(Food11, Surface310)), Time), Belief=bSatiated(Agent), Plan=p2, Time=4)))).
 */
todo_later(if(selectedPlan(Agent, Belief, Plan, Time),  (exists([Surface1, Surface2, Surface3, Food],  (holds_at(believe(Agent, bOn(Agent, Surface1)), Time), holds_at(believe(Agent, bCanJump(Surface1, Surface2)), Time), holds_at(believe(Agent, bCanJump(Surface2, Surface3)), Time), holds_at(believe(Agent, bOn(Food, Surface3)), Time), Belief=bSatiated(Agent), Plan=p1, Time=0));exists([Surface18, Surface29, Surface310, Food11],  (holds_at(believe(Agent, bOn(Agent, Surface18)), Time), holds_at(believe(Agent, bCanJump(Surface18, Surface29)), Time), holds_at(believe(Agent, bCanJump(Surface29, Surface310)), Time), holds_at(believe(Agent, bOn(Food11, Surface310)), Time), Belief=bSatiated(Agent), Plan=p2, Time=4)))), [(not(selectedPlan(SelectedPlan_Param, Equals_Param, Equals_Param32, Time12)):-(not(holds_at(believe(SelectedPlan_Param, bOn(SelectedPlan_Param, BCanJump_Param)), Time12));not(holds_at(believe(SelectedPlan_Param, bCanJump(BCanJump_Param, BCanJump_Param29)), Time12));not(holds_at(believe(SelectedPlan_Param, bCanJump(BCanJump_Param29, BCanJump_Ret)), Time12));not(holds_at(believe(SelectedPlan_Param, bOn(BOn_Param, BCanJump_Ret)), Time12));not(equals(Equals_Param, bSatiated(SelectedPlan_Param)));not(equals(Equals_Param32, p1));not(equals(Time12, 0))), (not(holds_at(believe(SelectedPlan_Param, bOn(SelectedPlan_Param, BCanJump_Param33)), Time12));not(holds_at(believe(SelectedPlan_Param, bCanJump(BCanJump_Param33, BCanJump_Param34)), Time12));not(holds_at(believe(SelectedPlan_Param, bCanJump(BCanJump_Param34, BCanJump_Ret127)), Time12));not(holds_at(believe(SelectedPlan_Param, bOn(BOn_Param35, BCanJump_Ret127)), Time12));not(equals(Equals_Param, bSatiated(SelectedPlan_Param)));not(equals(Equals_Param32, p2));not(equals(Time12, 4)))),  (holds_at(believe(Believe_Param, bOn(Believe_Param, BOn_Ret)), Time13):-(not(holds_at(believe(Believe_Param, bOn(Believe_Param, BCanJump_Param37)), Time13));not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param37, BCanJump_Param38)), Time13));not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param38, BCanJump_Ret129)), Time13));not(holds_at(believe(Believe_Param, bOn(BOn_Param39, BCanJump_Ret129)), Time13));not(equals(Equals_Param40, bSatiated(Believe_Param)));not(equals(Equals_Param41, p2));not(equals(Time13, 4))), selectedPlan(Believe_Param, Equals_Param40, Equals_Param41, Time13)),  (holds_at(believe(Believe_Param42, bCanJump(BCanJump_Param43, BCanJump_Ret130)), Time14):-(not(holds_at(believe(Believe_Param42, bOn(Believe_Param42, BCanJump_Param44)), Time14));not(holds_at(believe(Believe_Param42, bCanJump(BCanJump_Param44, BCanJump_Param45)), Time14));not(holds_at(believe(Believe_Param42, bCanJump(BCanJump_Param45, BCanJump_Ret131)), Time14));not(holds_at(believe(Believe_Param42, bOn(BOn_Param46, BCanJump_Ret131)), Time14));not(equals(Equals_Param47, bSatiated(Believe_Param42)));not(equals(Equals_Param48, p2));not(equals(Time14, 4))), selectedPlan(Believe_Param42, Equals_Param47, Equals_Param48, Time14)),  (holds_at(believe(Believe_Param49, bCanJump(BCanJump_Param50, BCanJump_Ret132)), Time15):-(not(holds_at(believe(Believe_Param49, bOn(Believe_Param49, BCanJump_Param51)), Time15));not(holds_at(believe(Believe_Param49, bCanJump(BCanJump_Param51, BCanJump_Param52)), Time15));not(holds_at(believe(Believe_Param49, bCanJump(BCanJump_Param52, BCanJump_Ret133)), Time15));not(holds_at(believe(Believe_Param49, bOn(BOn_Param53, BCanJump_Ret133)), Time15));not(equals(Equals_Param54, bSatiated(Believe_Param49)));not(equals(Equals_Param55, p2));not(equals(Time15, 4))), selectedPlan(Believe_Param49, Equals_Param54, Equals_Param55, Time15)),  (holds_at(believe(Believe_Param56, bOn(BOn_Param57, BOn_Ret134)), Time16):-(not(holds_at(believe(Believe_Param56, bOn(Believe_Param56, BCanJump_Param58)), Time16));not(holds_at(believe(Believe_Param56, bCanJump(BCanJump_Param58, BCanJump_Param59)), Time16));not(holds_at(believe(Believe_Param56, bCanJump(BCanJump_Param59, BCanJump_Ret135)), Time16));not(holds_at(believe(Believe_Param56, bOn(BOn_Param60, BCanJump_Ret135)), Time16));not(equals(Equals_Param61, bSatiated(Believe_Param56)));not(equals(Equals_Param62, p2));not(equals(Time16, 4))), selectedPlan(Believe_Param56, Equals_Param61, Equals_Param62, Time16)),  (equals(Equals_Param63, bSatiated(Believe_Param64)):-(not(holds_at(believe(Believe_Param64, bOn(Believe_Param64, BCanJump_Param65)), Time17));not(holds_at(believe(Believe_Param64, bCanJump(BCanJump_Param65, BCanJump_Param66)), Time17));not(holds_at(believe(Believe_Param64, bCanJump(BCanJump_Param66, BCanJump_Ret136)), Time17));not(holds_at(believe(Believe_Param64, bOn(BOn_Param67, BCanJump_Ret136)), Time17));not(equals(Equals_Param63, bSatiated(Believe_Param64)));not(equals(Equals_Param68, p2));not(equals(Time17, 4))), selectedPlan(Believe_Param64, Equals_Param63, Equals_Param68, Time17)),  (equals(Equals_Param69, p1):-(not(holds_at(believe(Believe_Param70, bOn(Believe_Param70, BCanJump_Param71)), Time18));not(holds_at(believe(Believe_Param70, bCanJump(BCanJump_Param71, BCanJump_Param72)), Time18));not(holds_at(believe(Believe_Param70, bCanJump(BCanJump_Param72, BCanJump_Ret137)), Time18));not(holds_at(believe(Believe_Param70, bOn(BOn_Param73, BCanJump_Ret137)), Time18));not(equals(Equals_Param74, bSatiated(Believe_Param70)));not(equals(Equals_Param69, p2));not(equals(Time18, 4))), selectedPlan(Believe_Param70, Equals_Param74, Equals_Param69, Time18)),  (equals(Time19, 0):-(not(holds_at(believe(Believe_Param75, bOn(Believe_Param75, BCanJump_Param76)), Time19));not(holds_at(believe(Believe_Param75, bCanJump(BCanJump_Param76, BCanJump_Param77)), Time19));not(holds_at(believe(Believe_Param75, bCanJump(BCanJump_Param77, BCanJump_Ret138)), Time19));not(holds_at(believe(Believe_Param75, bOn(BOn_Param78, BCanJump_Ret138)), Time19));not(equals(Equals_Param79, bSatiated(Believe_Param75)));not(equals(Equals_Param80, p2));not(equals(Time19, 4))), selectedPlan(Believe_Param75, Equals_Param79, Equals_Param80, Time19)),  (holds_at(believe(Believe_Param81, bOn(Believe_Param81, BOn_Ret139)), Time20):-(not(holds_at(believe(Believe_Param81, bOn(Believe_Param81, BCanJump_Param82)), Time20));not(holds_at(believe(Believe_Param81, bCanJump(BCanJump_Param82, BCanJump_Param83)), Time20));not(holds_at(believe(Believe_Param81, bCanJump(BCanJump_Param83, BCanJump_Ret140)), Time20));not(holds_at(believe(Believe_Param81, bOn(BOn_Param84, BCanJump_Ret140)), Time20));not(equals(Equals_Param85, bSatiated(Believe_Param81)));not(equals(Equals_Param86, p1));not(equals(Time20, 0))), selectedPlan(Believe_Param81, Equals_Param85, Equals_Param86, Time20)),  (holds_at(believe(Believe_Param87, bCanJump(BCanJump_Param88, BCanJump_Ret141)), Time21):-(not(holds_at(believe(Believe_Param87, bOn(Believe_Param87, BCanJump_Param89)), Time21));not(holds_at(believe(Believe_Param87, bCanJump(BCanJump_Param89, BCanJump_Param90)), Time21));not(holds_at(believe(Believe_Param87, bCanJump(BCanJump_Param90, BCanJump_Ret142)), Time21));not(holds_at(believe(Believe_Param87, bOn(BOn_Param91, BCanJump_Ret142)), Time21));not(equals(Equals_Param92, bSatiated(Believe_Param87)));not(equals(Equals_Param93, p1));not(equals(Time21, 0))), selectedPlan(Believe_Param87, Equals_Param92, Equals_Param93, Time21)),  (holds_at(believe(Believe_Param94, bCanJump(BCanJump_Param95, BCanJump_Ret143)), Time22):-(not(holds_at(believe(Believe_Param94, bOn(Believe_Param94, BCanJump_Param96)), Time22));not(holds_at(believe(Believe_Param94, bCanJump(BCanJump_Param96, BCanJump_Param97)), Time22));not(holds_at(believe(Believe_Param94, bCanJump(BCanJump_Param97, BCanJump_Ret144)), Time22));not(holds_at(believe(Believe_Param94, bOn(BOn_Param98, BCanJump_Ret144)), Time22));not(equals(Equals_Param99, bSatiated(Believe_Param94)));not(equals(Equals_Param100, p1));not(equals(Time22, 0))), selectedPlan(Believe_Param94, Equals_Param99, Equals_Param100, Time22)),  (holds_at(believe(Believe_Param101, bOn(BOn_Param102, BOn_Ret145)), Time23):-(not(holds_at(believe(Believe_Param101, bOn(Believe_Param101, BCanJump_Param103)), Time23));not(holds_at(believe(Believe_Param101, bCanJump(BCanJump_Param103, BCanJump_Param104)), Time23));not(holds_at(believe(Believe_Param101, bCanJump(BCanJump_Param104, BCanJump_Ret146)), Time23));not(holds_at(believe(Believe_Param101, bOn(BOn_Param105, BCanJump_Ret146)), Time23));not(equals(Equals_Param106, bSatiated(Believe_Param101)));not(equals(Equals_Param107, p1));not(equals(Time23, 0))), selectedPlan(Believe_Param101, Equals_Param106, Equals_Param107, Time23)),  (equals(Equals_Param108, bSatiated(Believe_Param109)):-(not(holds_at(believe(Believe_Param109, bOn(Believe_Param109, BCanJump_Param110)), Time24));not(holds_at(believe(Believe_Param109, bCanJump(BCanJump_Param110, BCanJump_Param111)), Time24));not(holds_at(believe(Believe_Param109, bCanJump(BCanJump_Param111, BCanJump_Ret147)), Time24));not(holds_at(believe(Believe_Param109, bOn(BOn_Param112, BCanJump_Ret147)), Time24));not(equals(Equals_Param108, bSatiated(Believe_Param109)));not(equals(Equals_Param113, p1));not(equals(Time24, 0))), selectedPlan(Believe_Param109, Equals_Param108, Equals_Param113, Time24)),  (equals(Equals_Param114, p2):-(not(holds_at(believe(Believe_Param115, bOn(Believe_Param115, BCanJump_Param116)), Time25));not(holds_at(believe(Believe_Param115, bCanJump(BCanJump_Param116, BCanJump_Param117)), Time25));not(holds_at(believe(Believe_Param115, bCanJump(BCanJump_Param117, BCanJump_Ret148)), Time25));not(holds_at(believe(Believe_Param115, bOn(BOn_Param118, BCanJump_Ret148)), Time25));not(equals(Equals_Param119, bSatiated(Believe_Param115)));not(equals(Equals_Param114, p1));not(equals(Time25, 0))), selectedPlan(Believe_Param115, Equals_Param119, Equals_Param114, Time25)),  (equals(Time26, 4):-(not(holds_at(believe(Believe_Param120, bOn(Believe_Param120, BCanJump_Param121)), Time26));not(holds_at(believe(Believe_Param120, bCanJump(BCanJump_Param121, BCanJump_Param122)), Time26));not(holds_at(believe(Believe_Param120, bCanJump(BCanJump_Param122, BCanJump_Ret149)), Time26));not(holds_at(believe(Believe_Param120, bOn(BOn_Param123, BCanJump_Ret149)), Time26));not(equals(Equals_Param124, bSatiated(Believe_Param120)));not(equals(Equals_Param125, p1));not(equals(Time26, 0))), selectedPlan(Believe_Param120, Equals_Param124, Equals_Param125, Time26))], 15==15).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:234
%; SoundPlan
% [agent,belief,plan,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:237
% SoundPlan(agent,belief,plan,time) <->
% (plan=P1 ->
%  HoldsAt(Believe(agent,BCanJump(Floor,Chair)),time) &
%  HoldsAt(Believe(agent,BCanJump(Chair,Table)),time)) &
% ((plan=P1a | plan=P1b) ->
%   HoldsAt(Believe(agent,BCanJump(Chair,Table)),time)).

 /*  soundPlan(Agent, Belief, Plan, Time) <->
       if(Plan=p1,
           (holds_at(believe(Agent, bCanJump(floor, chair)), Time), holds_at(believe(Agent, bCanJump(chair, table)), Time))),
       if((Plan=p1a;Plan=p1b),
          holds_at(believe(Agent, bCanJump(chair, table)), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:242
axiom(soundPlan(Agent, Belief, Plan, Time),
   
    [ holds_at(believe(Agent, bCanJump(floor, chair)), Time),
      holds_at(believe(Agent, bCanJump(chair, table)), Time),
      holds_at(believe(Agent, bCanJump(chair, table)), Time)
    ]).
axiom(soundPlan(Agent, Belief, Plan, Time),
   
    [ holds_at(believe(Agent, bCanJump(floor, chair)), Time),
      holds_at(believe(Agent, bCanJump(chair, table)), Time),
      not(equals(Plan, p1a)),
      not(equals(Plan, p1b))
    ]).
axiom(soundPlan(Agent, Belief, Plan, Time),
   
    [ holds_at(believe(Agent, bCanJump(chair, table)), Time),
      not(equals(Plan, p1))
    ]).
axiom(soundPlan(Agent, Belief, Plan, Time),
   
    [ not(equals(Plan, p1a)),
      not(equals(Plan, p1b)),
      not(equals(Plan, p1))
    ]).

 /*   if(soundPlan(Agent, Belief, Plan, Time),
          (if(Plan=p1,  (holds_at(believe(Agent, bCanJump(floor, chair)), Time), holds_at(believe(Agent, bCanJump(chair, table)), Time))), if((Plan=p1a;Plan=p1b), holds_at(believe(Agent, bCanJump(chair, table)), Time)))).
 */

 /*  not(soundPlan(SoundPlan_Param, _, Equals_Param, Time4)) :-
       (   equals(Equals_Param, p1),
           (   not(holds_at(believe(SoundPlan_Param, bCanJump(floor, chair)),
                            Time4))
           ;   not(holds_at(believe(SoundPlan_Param, bCanJump(chair, table)),
                            Time4))
           )
       ;   not(holds_at(believe(SoundPlan_Param, bCanJump(chair, table)),
                        Time4)),
           (   equals(Equals_Param, p1a)
           ;   equals(Equals_Param, p1b)
           )
       ).
 */
axiom(not(soundPlan(SoundPlan_Param, _, Equals_Param, Time4)),
   
    [ not(holds_at(believe(SoundPlan_Param, bCanJump(floor, chair)),
                   Time4)),
      equals(Equals_Param, p1)
    ]).
axiom(not(soundPlan(SoundPlan_Param, _, Equals_Param, Time4)),
   
    [ not(holds_at(believe(SoundPlan_Param, bCanJump(chair, table)),
                   Time4)),
      equals(Equals_Param, p1)
    ]).
axiom(not(soundPlan(SoundPlan_Param, _, Equals_Param, Time4)),
   
    [ equals(Equals_Param, p1a),
      not(holds_at(believe(SoundPlan_Param, bCanJump(chair, table)),
                   Time4))
    ]).
axiom(not(soundPlan(SoundPlan_Param, _, Equals_Param, Time4)),
   
    [ equals(Equals_Param, p1b),
      not(holds_at(believe(SoundPlan_Param, bCanJump(chair, table)),
                   Time4))
    ]).

 /*  not(equals(Equals_Param8, p1)) :-
       (   not(holds_at(believe(Believe_Param, bCanJump(floor, chair)),
                        Time7))
       ;   not(holds_at(believe(Believe_Param, bCanJump(chair, table)),
                        Time7))
       ),
       soundPlan(Believe_Param, _, Equals_Param8, Time7).
 */
axiom(not(equals(Equals_Param8, p1)),
   
    [ not(holds_at(believe(Believe_Param, bCanJump(floor, chair)),
                   Time7)),
      soundPlan(Believe_Param, _, Equals_Param8, Time7)
    ]).
axiom(not(equals(Equals_Param8, p1)),
   
    [ not(holds_at(believe(Believe_Param, bCanJump(chair, table)),
                   Time7)),
      soundPlan(Believe_Param, _, Equals_Param8, Time7)
    ]).

 /*  holds_at(believe(Believe_Param11, bCanJump(floor, chair)), Time10) :-
       equals(Equals_Param12, p1),
       soundPlan(Believe_Param11, _, Equals_Param12, Time10).
 */
axiom(holds_at(believe(Believe_Param11, bCanJump(floor, chair)), Time10),
   
    [ equals(Equals_Param12, p1),
      soundPlan(Believe_Param11,
                _,
                Equals_Param12,
                Time10)
    ]).

 /*  holds_at(believe(Believe_Param14, bCanJump(chair, table)), Time13) :-
       equals(Equals_Param15, p1),
       soundPlan(Believe_Param14, _, Equals_Param15, Time13).
 */
axiom(holds_at(believe(Believe_Param14, bCanJump(chair, table)), Time13),
   
    [ equals(Equals_Param15, p1),
      soundPlan(Believe_Param14,
                _,
                Equals_Param15,
                Time13)
    ]).

 /*  holds_at(believe(Believe_Param17, bCanJump(chair, table)), Time16) :-
       (   equals(Equals_Param18, p1a)
       ;   equals(Equals_Param18, p1b)
       ),
       soundPlan(Believe_Param17, _, Equals_Param18, Time16).
 */
axiom(holds_at(believe(Believe_Param17, bCanJump(chair, table)), Time16),
   
    [ equals(Equals_Param18, p1a),
      soundPlan(Believe_Param17,
                _,
                Equals_Param18,
                Time16)
    ]).
axiom(holds_at(believe(Believe_Param17, bCanJump(chair, table)), Time16),
   
    [ equals(Equals_Param18, p1b),
      soundPlan(Believe_Param17,
                _,
                Equals_Param18,
                Time16)
    ]).

 /*  not(equals(Equals_Param20, p1a)) :-
       not(holds_at(believe(Believe_Param21, bCanJump(chair, table)),
                    Time19)),
       soundPlan(Believe_Param21, _, Equals_Param20, Time19).
 */
axiom(not(equals(Equals_Param20, p1a)),
   
    [ not(holds_at(believe(Believe_Param21, bCanJump(chair, table)),
                   Time19)),
      soundPlan(Believe_Param21,
                _,
                Equals_Param20,
                Time19)
    ]).

 /*  not(equals(Equals_Param23, p1b)) :-
       not(holds_at(believe(Believe_Param24, bCanJump(chair, table)),
                    Time22)),
       soundPlan(Believe_Param24, _, Equals_Param23, Time22).
 */
axiom(not(equals(Equals_Param23, p1b)),
   
    [ not(holds_at(believe(Believe_Param24, bCanJump(chair, table)),
                   Time22)),
      soundPlan(Believe_Param24,
                _,
                Equals_Param23,
                Time22)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:244
%; Gamma
% [agent,belief]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:247
% HoldsAt(Goal(agent,belief),0) <->
% (agent=Cat & belief=BSatiated(Cat)).

 /*  holds_at(goal(Agent, Belief), 0) <->
       Agent=cat,
       Belief=bSatiated(cat).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:248
axiom(holds_at(goal(Agent, Belief), t),
    [equals(Agent, cat), equals(Belief, bSatiated(cat))]).

 /*   if(holds_at(goal(Agent, Belief), 0),
          (Agent=cat, Belief=bSatiated(cat))).
 */

 /*  not(holds_at(goal(Goal_Param, Equals_Param), 0)) :-
       (   not(equals(Goal_Param, cat))
       ;   not(equals(Equals_Param, bSatiated(cat)))
       ).
 */
axiom(not(holds_at(goal(Goal_Param, Equals_Param), t)),
    [not(equals(Goal_Param, cat))]).
axiom(not(holds_at(goal(Goal_Param, Equals_Param), t)),
    [not(equals(Equals_Param, bSatiated(cat)))]).

 /*  equals(Equals_Param4, cat) :-
       holds_at(goal(Equals_Param4, Goal_Ret), 0).
 */
axiom(equals(Equals_Param4, cat),
    [holds_at(goal(Equals_Param4, Goal_Ret), t)]).

 /*  equals(Equals_Param6, bSatiated(cat)) :-
       holds_at(goal(Goal_Param7, Equals_Param6), 0).
 */
axiom(equals(Equals_Param6, bSatiated(cat)),
    [holds_at(goal(Goal_Param7, Equals_Param6), t)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:250
% [agent,belief,plan]
 % !HoldsAt(Plan(agent,belief,plan),0).
 %  not(initially(plan(Agent,Belief,Plan))).
axiom(not(initially(plan(Plan_Param, _, Plan_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:252
% [object,surface]
 % HoldsAt(On(object,surface),0) <->
% (object=Cat & surface=Floor) |
% (object=Food1 & surface=Table) |
% (object=Food2 & surface=Shelf).

 /*  holds_at(on(Object, Surface), 0) <->
       (   Object=cat,
           Surface=floor
       ;   Object=food1,
           Surface=(table)
       ;   Object=food2,
           Surface=shelf
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:255
axiom(holds_at(on(Object, Surface), t),
    [equals(Object, cat), equals(Surface, floor)]).
axiom(holds_at(on(Object, Surface), t),
    [equals(Object, food1), equals(Surface, table)]).
axiom(holds_at(on(Object, Surface), t),
    [equals(Object, food2), equals(Surface, shelf)]).

 /*   if(holds_at(on(Object, Surface), 0),
          (Object=cat, Surface=floor;Object=food1, Surface=(table);Object=food2, Surface=shelf)).
 */

 /*  not(holds_at(on(On_Param, Equals_Param), 0)) :-
       (   not(equals(On_Param, cat))
       ;   not(equals(Equals_Param, floor))
       ),
       (   not(equals(On_Param, food1))
       ;   not(equals(Equals_Param, table))
       ),
       (   not(equals(On_Param, food2))
       ;   not(equals(Equals_Param, shelf))
       ).
 */
axiom(not(holds_at(on(On_Param, Equals_Param), t)),
   
    [ not(equals(On_Param, food2)),
      not(equals(On_Param, food1)),
      not(equals(On_Param, cat))
    ]).
axiom(not(holds_at(on(On_Param, Equals_Param), t)),
   
    [ not(equals(Equals_Param, shelf)),
      not(equals(On_Param, food1)),
      not(equals(On_Param, cat))
    ]).
axiom(not(holds_at(on(On_Param, Equals_Param), t)),
   
    [ not(equals(On_Param, food2)),
      not(equals(Equals_Param, table)),
      not(equals(On_Param, cat))
    ]).
axiom(not(holds_at(on(On_Param, Equals_Param), t)),
   
    [ not(equals(Equals_Param, shelf)),
      not(equals(Equals_Param, table)),
      not(equals(On_Param, cat))
    ]).
axiom(not(holds_at(on(On_Param, Equals_Param), t)),
   
    [ not(equals(On_Param, food2)),
      not(equals(On_Param, food1)),
      not(equals(Equals_Param, floor))
    ]).
axiom(not(holds_at(on(On_Param, Equals_Param), t)),
   
    [ not(equals(Equals_Param, shelf)),
      not(equals(On_Param, food1)),
      not(equals(Equals_Param, floor))
    ]).
axiom(not(holds_at(on(On_Param, Equals_Param), t)),
   
    [ not(equals(On_Param, food2)),
      not(equals(Equals_Param, table)),
      not(equals(Equals_Param, floor))
    ]).
axiom(not(holds_at(on(On_Param, Equals_Param), t)),
   
    [ not(equals(Equals_Param, shelf)),
      not(equals(Equals_Param, table)),
      not(equals(Equals_Param, floor))
    ]).

 /*  equals(Equals_Param4, cat) :-
       ( (   not(equals(Equals_Param4, food1))
         ;   not(equals(Equals_Param5, table))
         ),
         (   not(equals(Equals_Param4, food2))
         ;   not(equals(Equals_Param5, shelf))
         )
       ),
       holds_at(on(Equals_Param4, Equals_Param5), 0).
 */
axiom(equals(Equals_Param4, cat),
   
    [ not(equals(Equals_Param4, food2)),
      not(equals(Equals_Param4, food1)),
      holds_at(on(Equals_Param4, Equals_Param5), t)
    ]).
axiom(equals(Equals_Param4, cat),
   
    [ not(equals(Equals_Param5, shelf)),
      not(equals(Equals_Param4, food1)),
      holds_at(on(Equals_Param4, Equals_Param5), t)
    ]).
axiom(equals(Equals_Param4, cat),
   
    [ not(equals(Equals_Param4, food2)),
      not(equals(Equals_Param5, table)),
      holds_at(on(Equals_Param4, Equals_Param5), t)
    ]).
axiom(equals(Equals_Param4, cat),
   
    [ not(equals(Equals_Param5, shelf)),
      not(equals(Equals_Param5, table)),
      holds_at(on(Equals_Param4, Equals_Param5), t)
    ]).

 /*  equals(Equals_Param6, floor) :-
       ( (   not(equals(Equals_Param7, food1))
         ;   not(equals(Equals_Param6, table))
         ),
         (   not(equals(Equals_Param7, food2))
         ;   not(equals(Equals_Param6, shelf))
         )
       ),
       holds_at(on(Equals_Param7, Equals_Param6), 0).
 */
axiom(equals(Equals_Param6, floor),
   
    [ not(equals(Equals_Param7, food2)),
      not(equals(Equals_Param7, food1)),
      holds_at(on(Equals_Param7, Equals_Param6), t)
    ]).
axiom(equals(Equals_Param6, floor),
   
    [ not(equals(Equals_Param6, shelf)),
      not(equals(Equals_Param7, food1)),
      holds_at(on(Equals_Param7, Equals_Param6), t)
    ]).
axiom(equals(Equals_Param6, floor),
   
    [ not(equals(Equals_Param7, food2)),
      not(equals(Equals_Param6, table)),
      holds_at(on(Equals_Param7, Equals_Param6), t)
    ]).
axiom(equals(Equals_Param6, floor),
   
    [ not(equals(Equals_Param6, shelf)),
      not(equals(Equals_Param6, table)),
      holds_at(on(Equals_Param7, Equals_Param6), t)
    ]).

 /*  equals(Equals_Param8, food1) :-
       (   not(equals(Equals_Param8, food2))
       ;   not(equals(Equals_Param9, shelf))
       ),
       (   not(equals(Equals_Param8, cat))
       ;   not(equals(Equals_Param9, floor))
       ),
       holds_at(on(Equals_Param8, Equals_Param9), 0).
 */
axiom(equals(Equals_Param8, food1),
   
    [ not(equals(Equals_Param8, cat)),
      not(equals(Equals_Param8, food2)),
      holds_at(on(Equals_Param8, Equals_Param9), t)
    ]).
axiom(equals(Equals_Param8, food1),
   
    [ not(equals(Equals_Param9, floor)),
      not(equals(Equals_Param8, food2)),
      holds_at(on(Equals_Param8, Equals_Param9), t)
    ]).
axiom(equals(Equals_Param8, food1),
   
    [ not(equals(Equals_Param8, cat)),
      not(equals(Equals_Param9, shelf)),
      holds_at(on(Equals_Param8, Equals_Param9), t)
    ]).
axiom(equals(Equals_Param8, food1),
   
    [ not(equals(Equals_Param9, floor)),
      not(equals(Equals_Param9, shelf)),
      holds_at(on(Equals_Param8, Equals_Param9), t)
    ]).

 /*  equals(Equals_Param10, table) :-
       (   not(equals(Equals_Param11, food2))
       ;   not(equals(Equals_Param10, shelf))
       ),
       (   not(equals(Equals_Param11, cat))
       ;   not(equals(Equals_Param10, floor))
       ),
       holds_at(on(Equals_Param11, Equals_Param10), 0).
 */
axiom(equals(Equals_Param10, table),
   
    [ not(equals(Equals_Param11, cat)),
      not(equals(Equals_Param11, food2)),
      holds_at(on(Equals_Param11, Equals_Param10), t)
    ]).
axiom(equals(Equals_Param10, table),
   
    [ not(equals(Equals_Param10, floor)),
      not(equals(Equals_Param11, food2)),
      holds_at(on(Equals_Param11, Equals_Param10), t)
    ]).
axiom(equals(Equals_Param10, table),
   
    [ not(equals(Equals_Param11, cat)),
      not(equals(Equals_Param10, shelf)),
      holds_at(on(Equals_Param11, Equals_Param10), t)
    ]).
axiom(equals(Equals_Param10, table),
   
    [ not(equals(Equals_Param10, floor)),
      not(equals(Equals_Param10, shelf)),
      holds_at(on(Equals_Param11, Equals_Param10), t)
    ]).

 /*  equals(Equals_Param12, food2) :-
       (   not(equals(Equals_Param12, food1))
       ;   not(equals(Equals_Param13, table))
       ),
       (   not(equals(Equals_Param12, cat))
       ;   not(equals(Equals_Param13, floor))
       ),
       holds_at(on(Equals_Param12, Equals_Param13), 0).
 */
axiom(equals(Equals_Param12, food2),
   
    [ not(equals(Equals_Param12, cat)),
      not(equals(Equals_Param12, food1)),
      holds_at(on(Equals_Param12, Equals_Param13), t)
    ]).
axiom(equals(Equals_Param12, food2),
   
    [ not(equals(Equals_Param13, floor)),
      not(equals(Equals_Param12, food1)),
      holds_at(on(Equals_Param12, Equals_Param13), t)
    ]).
axiom(equals(Equals_Param12, food2),
   
    [ not(equals(Equals_Param12, cat)),
      not(equals(Equals_Param13, table)),
      holds_at(on(Equals_Param12, Equals_Param13), t)
    ]).
axiom(equals(Equals_Param12, food2),
   
    [ not(equals(Equals_Param13, floor)),
      not(equals(Equals_Param13, table)),
      holds_at(on(Equals_Param12, Equals_Param13), t)
    ]).

 /*  equals(Equals_Param14, shelf) :-
       (   not(equals(Equals_Param15, food1))
       ;   not(equals(Equals_Param14, table))
       ),
       (   not(equals(Equals_Param15, cat))
       ;   not(equals(Equals_Param14, floor))
       ),
       holds_at(on(Equals_Param15, Equals_Param14), 0).
 */
axiom(equals(Equals_Param14, shelf),
   
    [ not(equals(Equals_Param15, cat)),
      not(equals(Equals_Param15, food1)),
      holds_at(on(Equals_Param15, Equals_Param14), t)
    ]).
axiom(equals(Equals_Param14, shelf),
   
    [ not(equals(Equals_Param14, floor)),
      not(equals(Equals_Param15, food1)),
      holds_at(on(Equals_Param15, Equals_Param14), t)
    ]).
axiom(equals(Equals_Param14, shelf),
   
    [ not(equals(Equals_Param15, cat)),
      not(equals(Equals_Param14, table)),
      holds_at(on(Equals_Param15, Equals_Param14), t)
    ]).
axiom(equals(Equals_Param14, shelf),
   
    [ not(equals(Equals_Param14, floor)),
      not(equals(Equals_Param14, table)),
      holds_at(on(Equals_Param15, Equals_Param14), t)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:257
% [surface1,surface2]
 % HoldsAt(CanJump(surface1,surface2),0) <->
% (surface1=Floor & surface2=Chair) |
% (surface1=Chair & surface2=Table) |
% (surface1=Shelf & surface2=Table).

 /*  holds_at(canJump(Surface1, Surface2), 0) <->
       (   Surface1=floor,
           Surface2=chair
       ;   Surface1=chair,
           Surface2=(table)
       ;   Surface1=shelf,
           Surface2=(table)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:260
axiom(holds_at(canJump(Surface1, Surface2), t),
    [equals(Surface1, floor), equals(Surface2, chair)]).
axiom(holds_at(canJump(Surface1, Surface2), t),
    [equals(Surface1, chair), equals(Surface2, table)]).
axiom(holds_at(canJump(Surface1, Surface2), t),
    [equals(Surface1, shelf), equals(Surface2, table)]).

 /*   if(holds_at(canJump(Surface1, Surface2), 0),
          (Surface1=floor, Surface2=chair;Surface1=chair, Surface2=(table);Surface1=shelf, Surface2=(table))).
 */

 /*  not(holds_at(canJump(CanJump_Param, Equals_Param), 0)) :-
       (   not(equals(CanJump_Param, floor))
       ;   not(equals(Equals_Param, chair))
       ),
       (   not(equals(CanJump_Param, chair))
       ;   not(equals(Equals_Param, table))
       ),
       (   not(equals(CanJump_Param, shelf))
       ;   not(equals(Equals_Param, table))
       ).
 */
axiom(not(holds_at(canJump(CanJump_Param, Equals_Param), t)),
   
    [ not(equals(CanJump_Param, shelf)),
      not(equals(CanJump_Param, chair)),
      not(equals(CanJump_Param, floor))
    ]).
axiom(not(holds_at(canJump(CanJump_Param, Equals_Param), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(CanJump_Param, chair)),
      not(equals(CanJump_Param, floor))
    ]).
axiom(not(holds_at(canJump(CanJump_Param, Equals_Param), t)),
   
    [ not(equals(CanJump_Param, shelf)),
      not(equals(Equals_Param, table)),
      not(equals(CanJump_Param, floor))
    ]).
axiom(not(holds_at(canJump(CanJump_Param, Equals_Param), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(Equals_Param, table)),
      not(equals(CanJump_Param, floor))
    ]).
axiom(not(holds_at(canJump(CanJump_Param, Equals_Param), t)),
   
    [ not(equals(CanJump_Param, shelf)),
      not(equals(CanJump_Param, chair)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(canJump(CanJump_Param, Equals_Param), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(CanJump_Param, chair)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(canJump(CanJump_Param, Equals_Param), t)),
   
    [ not(equals(CanJump_Param, shelf)),
      not(equals(Equals_Param, table)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(canJump(CanJump_Param, Equals_Param), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(Equals_Param, table)),
      not(equals(Equals_Param, chair))
    ]).

 /*  equals(Equals_Param4, floor) :-
       ( (   not(equals(Equals_Param4, chair))
         ;   not(equals(Equals_Param5, table))
         ),
         (   not(equals(Equals_Param4, shelf))
         ;   not(equals(Equals_Param5, table))
         )
       ),
       holds_at(canJump(Equals_Param4, Equals_Param5), 0).
 */
axiom(equals(Equals_Param4, floor),
   
    [ not(equals(Equals_Param4, shelf)),
      not(equals(Equals_Param4, chair)),
      holds_at(canJump(Equals_Param4, Equals_Param5), t)
    ]).
axiom(equals(Equals_Param4, floor),
   
    [ not(equals(Equals_Param5, table)),
      not(equals(Equals_Param4, chair)),
      holds_at(canJump(Equals_Param4, Equals_Param5), t)
    ]).
axiom(equals(Equals_Param4, floor),
   
    [ not(equals(Equals_Param4, shelf)),
      not(equals(Equals_Param5, table)),
      holds_at(canJump(Equals_Param4, Equals_Param5), t)
    ]).
axiom(equals(Equals_Param4, floor),
   
    [ not(equals(Equals_Param5, table)),
      not(equals(Equals_Param5, table)),
      holds_at(canJump(Equals_Param4, Equals_Param5), t)
    ]).

 /*  equals(Equals_Param6, chair) :-
       ( (   not(equals(Equals_Param7, chair))
         ;   not(equals(Equals_Param6, table))
         ),
         (   not(equals(Equals_Param7, shelf))
         ;   not(equals(Equals_Param6, table))
         )
       ),
       holds_at(canJump(Equals_Param7, Equals_Param6), 0).
 */
axiom(equals(Equals_Param6, chair),
   
    [ not(equals(Equals_Param7, shelf)),
      not(equals(Equals_Param7, chair)),
      holds_at(canJump(Equals_Param7, Equals_Param6), t)
    ]).
axiom(equals(Equals_Param6, chair),
   
    [ not(equals(Equals_Param6, table)),
      not(equals(Equals_Param7, chair)),
      holds_at(canJump(Equals_Param7, Equals_Param6), t)
    ]).
axiom(equals(Equals_Param6, chair),
   
    [ not(equals(Equals_Param7, shelf)),
      not(equals(Equals_Param6, table)),
      holds_at(canJump(Equals_Param7, Equals_Param6), t)
    ]).
axiom(equals(Equals_Param6, chair),
   
    [ not(equals(Equals_Param6, table)),
      not(equals(Equals_Param6, table)),
      holds_at(canJump(Equals_Param7, Equals_Param6), t)
    ]).

 /*  equals(Equals_Param8, chair) :-
       (   not(equals(Equals_Param8, shelf))
       ;   not(equals(Equals_Param9, table))
       ),
       (   not(equals(Equals_Param8, floor))
       ;   not(equals(Equals_Param9, chair))
       ),
       holds_at(canJump(Equals_Param8, Equals_Param9), 0).
 */
axiom(equals(Equals_Param8, chair),
   
    [ not(equals(Equals_Param8, floor)),
      not(equals(Equals_Param8, shelf)),
      holds_at(canJump(Equals_Param8, Equals_Param9), t)
    ]).
axiom(equals(Equals_Param8, chair),
   
    [ not(equals(Equals_Param9, chair)),
      not(equals(Equals_Param8, shelf)),
      holds_at(canJump(Equals_Param8, Equals_Param9), t)
    ]).
axiom(equals(Equals_Param8, chair),
   
    [ not(equals(Equals_Param8, floor)),
      not(equals(Equals_Param9, table)),
      holds_at(canJump(Equals_Param8, Equals_Param9), t)
    ]).
axiom(equals(Equals_Param8, chair),
   
    [ not(equals(Equals_Param9, chair)),
      not(equals(Equals_Param9, table)),
      holds_at(canJump(Equals_Param8, Equals_Param9), t)
    ]).

 /*  equals(Equals_Param10, table) :-
       (   not(equals(Equals_Param11, shelf))
       ;   not(equals(Equals_Param10, table))
       ),
       (   not(equals(Equals_Param11, floor))
       ;   not(equals(Equals_Param10, chair))
       ),
       holds_at(canJump(Equals_Param11, Equals_Param10), 0).
 */
axiom(equals(Equals_Param10, table),
   
    [ not(equals(Equals_Param11, floor)),
      not(equals(Equals_Param11, shelf)),
      holds_at(canJump(Equals_Param11, Equals_Param10), t)
    ]).
axiom(equals(Equals_Param10, table),
   
    [ not(equals(Equals_Param10, chair)),
      not(equals(Equals_Param11, shelf)),
      holds_at(canJump(Equals_Param11, Equals_Param10), t)
    ]).
axiom(equals(Equals_Param10, table),
   
    [ not(equals(Equals_Param11, floor)),
      not(equals(Equals_Param10, table)),
      holds_at(canJump(Equals_Param11, Equals_Param10), t)
    ]).
axiom(equals(Equals_Param10, table),
   
    [ not(equals(Equals_Param10, chair)),
      not(equals(Equals_Param10, table)),
      holds_at(canJump(Equals_Param11, Equals_Param10), t)
    ]).

 /*  equals(Equals_Param12, shelf) :-
       (   not(equals(Equals_Param12, chair))
       ;   not(equals(Equals_Param13, table))
       ),
       (   not(equals(Equals_Param12, floor))
       ;   not(equals(Equals_Param13, chair))
       ),
       holds_at(canJump(Equals_Param12, Equals_Param13), 0).
 */
axiom(equals(Equals_Param12, shelf),
   
    [ not(equals(Equals_Param12, floor)),
      not(equals(Equals_Param12, chair)),
      holds_at(canJump(Equals_Param12, Equals_Param13), t)
    ]).
axiom(equals(Equals_Param12, shelf),
   
    [ not(equals(Equals_Param13, chair)),
      not(equals(Equals_Param12, chair)),
      holds_at(canJump(Equals_Param12, Equals_Param13), t)
    ]).
axiom(equals(Equals_Param12, shelf),
   
    [ not(equals(Equals_Param12, floor)),
      not(equals(Equals_Param13, table)),
      holds_at(canJump(Equals_Param12, Equals_Param13), t)
    ]).
axiom(equals(Equals_Param12, shelf),
   
    [ not(equals(Equals_Param13, chair)),
      not(equals(Equals_Param13, table)),
      holds_at(canJump(Equals_Param12, Equals_Param13), t)
    ]).

 /*  equals(Equals_Param14, table) :-
       (   not(equals(Equals_Param15, chair))
       ;   not(equals(Equals_Param14, table))
       ),
       (   not(equals(Equals_Param15, floor))
       ;   not(equals(Equals_Param14, chair))
       ),
       holds_at(canJump(Equals_Param15, Equals_Param14), 0).
 */
axiom(equals(Equals_Param14, table),
   
    [ not(equals(Equals_Param15, floor)),
      not(equals(Equals_Param15, chair)),
      holds_at(canJump(Equals_Param15, Equals_Param14), t)
    ]).
axiom(equals(Equals_Param14, table),
   
    [ not(equals(Equals_Param14, chair)),
      not(equals(Equals_Param15, chair)),
      holds_at(canJump(Equals_Param15, Equals_Param14), t)
    ]).
axiom(equals(Equals_Param14, table),
   
    [ not(equals(Equals_Param15, floor)),
      not(equals(Equals_Param14, table)),
      holds_at(canJump(Equals_Param15, Equals_Param14), t)
    ]).
axiom(equals(Equals_Param14, table),
   
    [ not(equals(Equals_Param14, chair)),
      not(equals(Equals_Param14, table)),
      holds_at(canJump(Equals_Param15, Equals_Param14), t)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:262
% [agent,object,surface]
% HoldsAt(Believe(agent,BOn(object,surface)),0) <->
% (agent=Cat & object=Cat & surface=Floor) |
% (agent=Cat & object=Food1 & surface=Table).

 /*  holds_at(believe(Agent, bOn(Object, Surface)), 0) <->
       (   Agent=cat,
           Object=cat,
           Surface=floor
       ;   Agent=cat,
           Object=food1,
           Surface=(table)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:265
axiom(holds_at(believe(Agent, bOn(Object, Surface)), t),
   
    [ equals(Agent, cat),
      equals(Object, cat),
      equals(Surface, floor)
    ]).
axiom(holds_at(believe(Agent, bOn(Object, Surface)), t),
   
    [ equals(Agent, cat),
      equals(Object, food1),
      equals(Surface, table)
    ]).

 /*   if(holds_at(believe(Agent, bOn(Object, Surface)), 0),
          (Agent=cat, Object=cat, Surface=floor;Agent=cat, Object=food1, Surface=(table))).
 */

 /*  not(holds_at(believe(Believe_Param, bOn(BOn_Param, Equals_Param)), 0)) :-
       (   not(equals(Believe_Param, cat))
       ;   not(equals(BOn_Param, cat))
       ;   not(equals(Equals_Param, floor))
       ),
       (   not(equals(Believe_Param, cat))
       ;   not(equals(BOn_Param, food1))
       ;   not(equals(Equals_Param, table))
       ).
 */
axiom(not(holds_at(believe(Believe_Param, bOn(BOn_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bOn(BOn_Param, Equals_Param)), t)),
    [not(equals(BOn_Param, food1)), not(equals(Believe_Param, cat))]).
axiom(not(holds_at(believe(Believe_Param, bOn(BOn_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bOn(BOn_Param, Equals_Param)), t)),
    [not(equals(Believe_Param, cat)), not(equals(BOn_Param, cat))]).
axiom(not(holds_at(believe(Believe_Param, bOn(BOn_Param, Equals_Param)), t)),
    [not(equals(BOn_Param, food1)), not(equals(BOn_Param, cat))]).
axiom(not(holds_at(believe(Believe_Param, bOn(BOn_Param, Equals_Param)), t)),
    [not(equals(Equals_Param, table)), not(equals(BOn_Param, cat))]).
axiom(not(holds_at(believe(Believe_Param, bOn(BOn_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(Equals_Param, floor))
    ]).
axiom(not(holds_at(believe(Believe_Param, bOn(BOn_Param, Equals_Param)), t)),
    [not(equals(BOn_Param, food1)), not(equals(Equals_Param, floor))]).
axiom(not(holds_at(believe(Believe_Param, bOn(BOn_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(Equals_Param, floor))
    ]).

 /*  equals(Equals_Param6, cat) :-
       (   not(equals(Equals_Param6, cat))
       ;   not(equals(Equals_Param7, food1))
       ;   not(equals(Equals_Param8, table))
       ),
       holds_at(believe(Equals_Param6,
                        bOn(Equals_Param7, Equals_Param8)),
                0).
 */
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param6, cat)),
      holds_at(believe(Equals_Param6,
                       bOn(Equals_Param7, Equals_Param8)),
               t)
    ]).
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param7, food1)),
      holds_at(believe(Equals_Param6,
                       bOn(Equals_Param7, Equals_Param8)),
               t)
    ]).
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param8, table)),
      holds_at(believe(Equals_Param6,
                       bOn(Equals_Param7, Equals_Param8)),
               t)
    ]).

 /*  equals(Equals_Param9, cat) :-
       (   not(equals(Equals_Param10, cat))
       ;   not(equals(Equals_Param9, food1))
       ;   not(equals(Equals_Param11, table))
       ),
       holds_at(believe(Equals_Param10,
                        bOn(Equals_Param9, Equals_Param11)),
                0).
 */
axiom(equals(Equals_Param9, cat),
   
    [ not(equals(Equals_Param10, cat)),
      holds_at(believe(Equals_Param10,
                       bOn(Equals_Param9, Equals_Param11)),
               t)
    ]).
axiom(equals(Equals_Param9, cat),
   
    [ not(equals(Equals_Param9, food1)),
      holds_at(believe(Equals_Param10,
                       bOn(Equals_Param9, Equals_Param11)),
               t)
    ]).
axiom(equals(Equals_Param9, cat),
   
    [ not(equals(Equals_Param11, table)),
      holds_at(believe(Equals_Param10,
                       bOn(Equals_Param9, Equals_Param11)),
               t)
    ]).

 /*  equals(Equals_Param12, floor) :-
       (   not(equals(Equals_Param13, cat))
       ;   not(equals(Equals_Param14, food1))
       ;   not(equals(Equals_Param12, table))
       ),
       holds_at(believe(Equals_Param13,
                        bOn(Equals_Param14, Equals_Param12)),
                0).
 */
axiom(equals(Equals_Param12, floor),
   
    [ not(equals(Equals_Param13, cat)),
      holds_at(believe(Equals_Param13,
                       bOn(Equals_Param14, Equals_Param12)),
               t)
    ]).
axiom(equals(Equals_Param12, floor),
   
    [ not(equals(Equals_Param14, food1)),
      holds_at(believe(Equals_Param13,
                       bOn(Equals_Param14, Equals_Param12)),
               t)
    ]).
axiom(equals(Equals_Param12, floor),
   
    [ not(equals(Equals_Param12, table)),
      holds_at(believe(Equals_Param13,
                       bOn(Equals_Param14, Equals_Param12)),
               t)
    ]).

 /*  equals(Equals_Param15, cat) :-
       (   not(equals(Equals_Param15, cat))
       ;   not(equals(Equals_Param16, cat))
       ;   not(equals(Equals_Param17, floor))
       ),
       holds_at(believe(Equals_Param15,
                        bOn(Equals_Param16, Equals_Param17)),
                0).
 */
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param15, cat)),
      holds_at(believe(Equals_Param15,
                       bOn(Equals_Param16, Equals_Param17)),
               t)
    ]).
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param16, cat)),
      holds_at(believe(Equals_Param15,
                       bOn(Equals_Param16, Equals_Param17)),
               t)
    ]).
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param17, floor)),
      holds_at(believe(Equals_Param15,
                       bOn(Equals_Param16, Equals_Param17)),
               t)
    ]).

 /*  equals(Equals_Param18, food1) :-
       (   not(equals(Equals_Param19, cat))
       ;   not(equals(Equals_Param18, cat))
       ;   not(equals(Equals_Param20, floor))
       ),
       holds_at(believe(Equals_Param19,
                        bOn(Equals_Param18, Equals_Param20)),
                0).
 */
axiom(equals(Equals_Param18, food1),
   
    [ not(equals(Equals_Param19, cat)),
      holds_at(believe(Equals_Param19,
                       bOn(Equals_Param18, Equals_Param20)),
               t)
    ]).
axiom(equals(Equals_Param18, food1),
   
    [ not(equals(Equals_Param18, cat)),
      holds_at(believe(Equals_Param19,
                       bOn(Equals_Param18, Equals_Param20)),
               t)
    ]).
axiom(equals(Equals_Param18, food1),
   
    [ not(equals(Equals_Param20, floor)),
      holds_at(believe(Equals_Param19,
                       bOn(Equals_Param18, Equals_Param20)),
               t)
    ]).

 /*  equals(Equals_Param21, table) :-
       (   not(equals(Equals_Param22, cat))
       ;   not(equals(Equals_Param23, cat))
       ;   not(equals(Equals_Param21, floor))
       ),
       holds_at(believe(Equals_Param22,
                        bOn(Equals_Param23, Equals_Param21)),
                0).
 */
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param22, cat)),
      holds_at(believe(Equals_Param22,
                       bOn(Equals_Param23, Equals_Param21)),
               t)
    ]).
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param23, cat)),
      holds_at(believe(Equals_Param22,
                       bOn(Equals_Param23, Equals_Param21)),
               t)
    ]).
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param21, floor)),
      holds_at(believe(Equals_Param22,
                       bOn(Equals_Param23, Equals_Param21)),
               t)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:267
% [agent,surface1,surface2]
% HoldsAt(Believe(agent,BCanJump(surface1,surface2)),0) <->
% (agent=Cat & surface1=Floor & surface2=Chair) |
% (agent=Cat & surface1=Chair & surface2=Table) |
% (agent=Cat & surface1=Shelf & surface2=Table).

 /*  holds_at(believe(Agent, bCanJump(Surface1, Surface2)), 0) <->
       (   Agent=cat,
           Surface1=floor,
           Surface2=chair
       ;   Agent=cat,
           Surface1=chair,
           Surface2=(table)
       ;   Agent=cat,
           Surface1=shelf,
           Surface2=(table)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:271
axiom(holds_at(believe(Agent, bCanJump(Surface1, Surface2)), t),
   
    [ equals(Agent, cat),
      equals(Surface1, floor),
      equals(Surface2, chair)
    ]).
axiom(holds_at(believe(Agent, bCanJump(Surface1, Surface2)), t),
   
    [ equals(Agent, cat),
      equals(Surface1, chair),
      equals(Surface2, table)
    ]).
axiom(holds_at(believe(Agent, bCanJump(Surface1, Surface2)), t),
   
    [ equals(Agent, cat),
      equals(Surface1, shelf),
      equals(Surface2, table)
    ]).

 /*   if(holds_at(believe(Agent, bCanJump(Surface1, Surface2)), 0),
          (Agent=cat, Surface1=floor, Surface2=chair;Agent=cat, Surface1=chair, Surface2=(table);Agent=cat, Surface1=shelf, Surface2=(table))).
 */

 /*  not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), 0)) :-
       (   not(equals(Believe_Param, cat))
       ;   not(equals(BCanJump_Param, floor))
       ;   not(equals(Equals_Param, chair))
       ),
       (   not(equals(Believe_Param, cat))
       ;   not(equals(BCanJump_Param, chair))
       ;   not(equals(Equals_Param, table))
       ),
       (   not(equals(Believe_Param, cat))
       ;   not(equals(BCanJump_Param, shelf))
       ;   not(equals(Equals_Param, table))
       ).
 */
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(Believe_Param, cat)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(BCanJump_Param, shelf)),
      not(equals(Believe_Param, cat)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(Believe_Param, cat)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(BCanJump_Param, chair)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(BCanJump_Param, shelf)),
      not(equals(BCanJump_Param, chair)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(BCanJump_Param, chair)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(Equals_Param, table)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(BCanJump_Param, shelf)),
      not(equals(Equals_Param, table)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(Equals_Param, table)),
      not(equals(Believe_Param, cat))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(Believe_Param, cat)),
      not(equals(BCanJump_Param, floor))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(BCanJump_Param, shelf)),
      not(equals(Believe_Param, cat)),
      not(equals(BCanJump_Param, floor))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(Believe_Param, cat)),
      not(equals(BCanJump_Param, floor))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(BCanJump_Param, chair)),
      not(equals(BCanJump_Param, floor))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(BCanJump_Param, shelf)),
      not(equals(BCanJump_Param, chair)),
      not(equals(BCanJump_Param, floor))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(BCanJump_Param, chair)),
      not(equals(BCanJump_Param, floor))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(Equals_Param, table)),
      not(equals(BCanJump_Param, floor))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(BCanJump_Param, shelf)),
      not(equals(Equals_Param, table)),
      not(equals(BCanJump_Param, floor))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(Equals_Param, table)),
      not(equals(BCanJump_Param, floor))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(Believe_Param, cat)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(BCanJump_Param, shelf)),
      not(equals(Believe_Param, cat)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(Believe_Param, cat)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(BCanJump_Param, chair)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(BCanJump_Param, shelf)),
      not(equals(BCanJump_Param, chair)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(BCanJump_Param, chair)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Believe_Param, cat)),
      not(equals(Equals_Param, table)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(BCanJump_Param, shelf)),
      not(equals(Equals_Param, table)),
      not(equals(Equals_Param, chair))
    ]).
axiom(not(holds_at(believe(Believe_Param, bCanJump(BCanJump_Param, Equals_Param)), t)),
   
    [ not(equals(Equals_Param, table)),
      not(equals(Equals_Param, table)),
      not(equals(Equals_Param, chair))
    ]).

 /*  equals(Equals_Param6, cat) :-
       ( (   not(equals(Equals_Param6, cat))
         ;   not(equals(Equals_Param7, chair))
         ;   not(equals(Equals_Param8, table))
         ),
         (   not(equals(Equals_Param6, cat))
         ;   not(equals(Equals_Param7, shelf))
         ;   not(equals(Equals_Param8, table))
         )
       ),
       holds_at(believe(Equals_Param6,
                        bCanJump(Equals_Param7, Equals_Param8)),
                0).
 */
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param6, cat)),
      not(equals(Equals_Param6, cat)),
      holds_at(believe(Equals_Param6,
                       bCanJump(Equals_Param7, Equals_Param8)),
               t)
    ]).
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param7, shelf)),
      not(equals(Equals_Param6, cat)),
      holds_at(believe(Equals_Param6,
                       bCanJump(Equals_Param7, Equals_Param8)),
               t)
    ]).
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param8, table)),
      not(equals(Equals_Param6, cat)),
      holds_at(believe(Equals_Param6,
                       bCanJump(Equals_Param7, Equals_Param8)),
               t)
    ]).
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param6, cat)),
      not(equals(Equals_Param7, chair)),
      holds_at(believe(Equals_Param6,
                       bCanJump(Equals_Param7, Equals_Param8)),
               t)
    ]).
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param7, shelf)),
      not(equals(Equals_Param7, chair)),
      holds_at(believe(Equals_Param6,
                       bCanJump(Equals_Param7, Equals_Param8)),
               t)
    ]).
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param8, table)),
      not(equals(Equals_Param7, chair)),
      holds_at(believe(Equals_Param6,
                       bCanJump(Equals_Param7, Equals_Param8)),
               t)
    ]).
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param6, cat)),
      not(equals(Equals_Param8, table)),
      holds_at(believe(Equals_Param6,
                       bCanJump(Equals_Param7, Equals_Param8)),
               t)
    ]).
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param7, shelf)),
      not(equals(Equals_Param8, table)),
      holds_at(believe(Equals_Param6,
                       bCanJump(Equals_Param7, Equals_Param8)),
               t)
    ]).
axiom(equals(Equals_Param6, cat),
   
    [ not(equals(Equals_Param8, table)),
      not(equals(Equals_Param8, table)),
      holds_at(believe(Equals_Param6,
                       bCanJump(Equals_Param7, Equals_Param8)),
               t)
    ]).

 /*  equals(Equals_Param9, floor) :-
       ( (   not(equals(Equals_Param10, cat))
         ;   not(equals(Equals_Param9, chair))
         ;   not(equals(Equals_Param11, table))
         ),
         (   not(equals(Equals_Param10, cat))
         ;   not(equals(Equals_Param9, shelf))
         ;   not(equals(Equals_Param11, table))
         )
       ),
       holds_at(believe(Equals_Param10,
                        bCanJump(Equals_Param9, Equals_Param11)),
                0).
 */
axiom(equals(Equals_Param9, floor),
   
    [ not(equals(Equals_Param10, cat)),
      not(equals(Equals_Param10, cat)),
      holds_at(believe(Equals_Param10,
                       bCanJump(Equals_Param9, Equals_Param11)),
               t)
    ]).
axiom(equals(Equals_Param9, floor),
   
    [ not(equals(Equals_Param9, shelf)),
      not(equals(Equals_Param10, cat)),
      holds_at(believe(Equals_Param10,
                       bCanJump(Equals_Param9, Equals_Param11)),
               t)
    ]).
axiom(equals(Equals_Param9, floor),
   
    [ not(equals(Equals_Param11, table)),
      not(equals(Equals_Param10, cat)),
      holds_at(believe(Equals_Param10,
                       bCanJump(Equals_Param9, Equals_Param11)),
               t)
    ]).
axiom(equals(Equals_Param9, floor),
   
    [ not(equals(Equals_Param10, cat)),
      not(equals(Equals_Param9, chair)),
      holds_at(believe(Equals_Param10,
                       bCanJump(Equals_Param9, Equals_Param11)),
               t)
    ]).
axiom(equals(Equals_Param9, floor),
   
    [ not(equals(Equals_Param9, shelf)),
      not(equals(Equals_Param9, chair)),
      holds_at(believe(Equals_Param10,
                       bCanJump(Equals_Param9, Equals_Param11)),
               t)
    ]).
axiom(equals(Equals_Param9, floor),
   
    [ not(equals(Equals_Param11, table)),
      not(equals(Equals_Param9, chair)),
      holds_at(believe(Equals_Param10,
                       bCanJump(Equals_Param9, Equals_Param11)),
               t)
    ]).
axiom(equals(Equals_Param9, floor),
   
    [ not(equals(Equals_Param10, cat)),
      not(equals(Equals_Param11, table)),
      holds_at(believe(Equals_Param10,
                       bCanJump(Equals_Param9, Equals_Param11)),
               t)
    ]).
axiom(equals(Equals_Param9, floor),
   
    [ not(equals(Equals_Param9, shelf)),
      not(equals(Equals_Param11, table)),
      holds_at(believe(Equals_Param10,
                       bCanJump(Equals_Param9, Equals_Param11)),
               t)
    ]).
axiom(equals(Equals_Param9, floor),
   
    [ not(equals(Equals_Param11, table)),
      not(equals(Equals_Param11, table)),
      holds_at(believe(Equals_Param10,
                       bCanJump(Equals_Param9, Equals_Param11)),
               t)
    ]).

 /*  equals(Equals_Param12, chair) :-
       ( (   not(equals(Equals_Param13, cat))
         ;   not(equals(Equals_Param14, chair))
         ;   not(equals(Equals_Param12, table))
         ),
         (   not(equals(Equals_Param13, cat))
         ;   not(equals(Equals_Param14, shelf))
         ;   not(equals(Equals_Param12, table))
         )
       ),
       holds_at(believe(Equals_Param13,
                        bCanJump(Equals_Param14, Equals_Param12)),
                0).
 */
axiom(equals(Equals_Param12, chair),
   
    [ not(equals(Equals_Param13, cat)),
      not(equals(Equals_Param13, cat)),
      holds_at(believe(Equals_Param13,
                       bCanJump(Equals_Param14, Equals_Param12)),
               t)
    ]).
axiom(equals(Equals_Param12, chair),
   
    [ not(equals(Equals_Param14, shelf)),
      not(equals(Equals_Param13, cat)),
      holds_at(believe(Equals_Param13,
                       bCanJump(Equals_Param14, Equals_Param12)),
               t)
    ]).
axiom(equals(Equals_Param12, chair),
   
    [ not(equals(Equals_Param12, table)),
      not(equals(Equals_Param13, cat)),
      holds_at(believe(Equals_Param13,
                       bCanJump(Equals_Param14, Equals_Param12)),
               t)
    ]).
axiom(equals(Equals_Param12, chair),
   
    [ not(equals(Equals_Param13, cat)),
      not(equals(Equals_Param14, chair)),
      holds_at(believe(Equals_Param13,
                       bCanJump(Equals_Param14, Equals_Param12)),
               t)
    ]).
axiom(equals(Equals_Param12, chair),
   
    [ not(equals(Equals_Param14, shelf)),
      not(equals(Equals_Param14, chair)),
      holds_at(believe(Equals_Param13,
                       bCanJump(Equals_Param14, Equals_Param12)),
               t)
    ]).
axiom(equals(Equals_Param12, chair),
   
    [ not(equals(Equals_Param12, table)),
      not(equals(Equals_Param14, chair)),
      holds_at(believe(Equals_Param13,
                       bCanJump(Equals_Param14, Equals_Param12)),
               t)
    ]).
axiom(equals(Equals_Param12, chair),
   
    [ not(equals(Equals_Param13, cat)),
      not(equals(Equals_Param12, table)),
      holds_at(believe(Equals_Param13,
                       bCanJump(Equals_Param14, Equals_Param12)),
               t)
    ]).
axiom(equals(Equals_Param12, chair),
   
    [ not(equals(Equals_Param14, shelf)),
      not(equals(Equals_Param12, table)),
      holds_at(believe(Equals_Param13,
                       bCanJump(Equals_Param14, Equals_Param12)),
               t)
    ]).
axiom(equals(Equals_Param12, chair),
   
    [ not(equals(Equals_Param12, table)),
      not(equals(Equals_Param12, table)),
      holds_at(believe(Equals_Param13,
                       bCanJump(Equals_Param14, Equals_Param12)),
               t)
    ]).

 /*  equals(Equals_Param15, cat) :-
       (   not(equals(Equals_Param15, cat))
       ;   not(equals(Equals_Param16, shelf))
       ;   not(equals(Equals_Param17, table))
       ),
       (   not(equals(Equals_Param15, cat))
       ;   not(equals(Equals_Param16, floor))
       ;   not(equals(Equals_Param17, chair))
       ),
       holds_at(believe(Equals_Param15,
                        bCanJump(Equals_Param16, Equals_Param17)),
                0).
 */
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param15, cat)),
      not(equals(Equals_Param15, cat)),
      holds_at(believe(Equals_Param15,
                       bCanJump(Equals_Param16, Equals_Param17)),
               t)
    ]).
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param16, floor)),
      not(equals(Equals_Param15, cat)),
      holds_at(believe(Equals_Param15,
                       bCanJump(Equals_Param16, Equals_Param17)),
               t)
    ]).
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param17, chair)),
      not(equals(Equals_Param15, cat)),
      holds_at(believe(Equals_Param15,
                       bCanJump(Equals_Param16, Equals_Param17)),
               t)
    ]).
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param15, cat)),
      not(equals(Equals_Param16, shelf)),
      holds_at(believe(Equals_Param15,
                       bCanJump(Equals_Param16, Equals_Param17)),
               t)
    ]).
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param16, floor)),
      not(equals(Equals_Param16, shelf)),
      holds_at(believe(Equals_Param15,
                       bCanJump(Equals_Param16, Equals_Param17)),
               t)
    ]).
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param17, chair)),
      not(equals(Equals_Param16, shelf)),
      holds_at(believe(Equals_Param15,
                       bCanJump(Equals_Param16, Equals_Param17)),
               t)
    ]).
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param15, cat)),
      not(equals(Equals_Param17, table)),
      holds_at(believe(Equals_Param15,
                       bCanJump(Equals_Param16, Equals_Param17)),
               t)
    ]).
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param16, floor)),
      not(equals(Equals_Param17, table)),
      holds_at(believe(Equals_Param15,
                       bCanJump(Equals_Param16, Equals_Param17)),
               t)
    ]).
axiom(equals(Equals_Param15, cat),
   
    [ not(equals(Equals_Param17, chair)),
      not(equals(Equals_Param17, table)),
      holds_at(believe(Equals_Param15,
                       bCanJump(Equals_Param16, Equals_Param17)),
               t)
    ]).

 /*  equals(Equals_Param18, chair) :-
       (   not(equals(Equals_Param19, cat))
       ;   not(equals(Equals_Param18, shelf))
       ;   not(equals(Equals_Param20, table))
       ),
       (   not(equals(Equals_Param19, cat))
       ;   not(equals(Equals_Param18, floor))
       ;   not(equals(Equals_Param20, chair))
       ),
       holds_at(believe(Equals_Param19,
                        bCanJump(Equals_Param18, Equals_Param20)),
                0).
 */
axiom(equals(Equals_Param18, chair),
   
    [ not(equals(Equals_Param19, cat)),
      not(equals(Equals_Param19, cat)),
      holds_at(believe(Equals_Param19,
                       bCanJump(Equals_Param18, Equals_Param20)),
               t)
    ]).
axiom(equals(Equals_Param18, chair),
   
    [ not(equals(Equals_Param18, floor)),
      not(equals(Equals_Param19, cat)),
      holds_at(believe(Equals_Param19,
                       bCanJump(Equals_Param18, Equals_Param20)),
               t)
    ]).
axiom(equals(Equals_Param18, chair),
   
    [ not(equals(Equals_Param20, chair)),
      not(equals(Equals_Param19, cat)),
      holds_at(believe(Equals_Param19,
                       bCanJump(Equals_Param18, Equals_Param20)),
               t)
    ]).
axiom(equals(Equals_Param18, chair),
   
    [ not(equals(Equals_Param19, cat)),
      not(equals(Equals_Param18, shelf)),
      holds_at(believe(Equals_Param19,
                       bCanJump(Equals_Param18, Equals_Param20)),
               t)
    ]).
axiom(equals(Equals_Param18, chair),
   
    [ not(equals(Equals_Param18, floor)),
      not(equals(Equals_Param18, shelf)),
      holds_at(believe(Equals_Param19,
                       bCanJump(Equals_Param18, Equals_Param20)),
               t)
    ]).
axiom(equals(Equals_Param18, chair),
   
    [ not(equals(Equals_Param20, chair)),
      not(equals(Equals_Param18, shelf)),
      holds_at(believe(Equals_Param19,
                       bCanJump(Equals_Param18, Equals_Param20)),
               t)
    ]).
axiom(equals(Equals_Param18, chair),
   
    [ not(equals(Equals_Param19, cat)),
      not(equals(Equals_Param20, table)),
      holds_at(believe(Equals_Param19,
                       bCanJump(Equals_Param18, Equals_Param20)),
               t)
    ]).
axiom(equals(Equals_Param18, chair),
   
    [ not(equals(Equals_Param18, floor)),
      not(equals(Equals_Param20, table)),
      holds_at(believe(Equals_Param19,
                       bCanJump(Equals_Param18, Equals_Param20)),
               t)
    ]).
axiom(equals(Equals_Param18, chair),
   
    [ not(equals(Equals_Param20, chair)),
      not(equals(Equals_Param20, table)),
      holds_at(believe(Equals_Param19,
                       bCanJump(Equals_Param18, Equals_Param20)),
               t)
    ]).

 /*  equals(Equals_Param21, table) :-
       (   not(equals(Equals_Param22, cat))
       ;   not(equals(Equals_Param23, shelf))
       ;   not(equals(Equals_Param21, table))
       ),
       (   not(equals(Equals_Param22, cat))
       ;   not(equals(Equals_Param23, floor))
       ;   not(equals(Equals_Param21, chair))
       ),
       holds_at(believe(Equals_Param22,
                        bCanJump(Equals_Param23, Equals_Param21)),
                0).
 */
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param22, cat)),
      not(equals(Equals_Param22, cat)),
      holds_at(believe(Equals_Param22,
                       bCanJump(Equals_Param23, Equals_Param21)),
               t)
    ]).
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param23, floor)),
      not(equals(Equals_Param22, cat)),
      holds_at(believe(Equals_Param22,
                       bCanJump(Equals_Param23, Equals_Param21)),
               t)
    ]).
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param21, chair)),
      not(equals(Equals_Param22, cat)),
      holds_at(believe(Equals_Param22,
                       bCanJump(Equals_Param23, Equals_Param21)),
               t)
    ]).
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param22, cat)),
      not(equals(Equals_Param23, shelf)),
      holds_at(believe(Equals_Param22,
                       bCanJump(Equals_Param23, Equals_Param21)),
               t)
    ]).
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param23, floor)),
      not(equals(Equals_Param23, shelf)),
      holds_at(believe(Equals_Param22,
                       bCanJump(Equals_Param23, Equals_Param21)),
               t)
    ]).
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param21, chair)),
      not(equals(Equals_Param23, shelf)),
      holds_at(believe(Equals_Param22,
                       bCanJump(Equals_Param23, Equals_Param21)),
               t)
    ]).
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param22, cat)),
      not(equals(Equals_Param21, table)),
      holds_at(believe(Equals_Param22,
                       bCanJump(Equals_Param23, Equals_Param21)),
               t)
    ]).
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param23, floor)),
      not(equals(Equals_Param21, table)),
      holds_at(believe(Equals_Param22,
                       bCanJump(Equals_Param23, Equals_Param21)),
               t)
    ]).
axiom(equals(Equals_Param21, table),
   
    [ not(equals(Equals_Param21, chair)),
      not(equals(Equals_Param21, table)),
      holds_at(believe(Equals_Param22,
                       bCanJump(Equals_Param23, Equals_Param21)),
               t)
    ]).

 /*  equals(Equals_Param24, cat) :-
       (   not(equals(Equals_Param24, cat))
       ;   not(equals(Equals_Param25, chair))
       ;   not(equals(Equals_Param26, table))
       ),
       (   not(equals(Equals_Param24, cat))
       ;   not(equals(Equals_Param25, floor))
       ;   not(equals(Equals_Param26, chair))
       ),
       holds_at(believe(Equals_Param24,
                        bCanJump(Equals_Param25, Equals_Param26)),
                0).
 */
axiom(equals(Equals_Param24, cat),
   
    [ not(equals(Equals_Param24, cat)),
      not(equals(Equals_Param24, cat)),
      holds_at(believe(Equals_Param24,
                       bCanJump(Equals_Param25, Equals_Param26)),
               t)
    ]).
axiom(equals(Equals_Param24, cat),
   
    [ not(equals(Equals_Param25, floor)),
      not(equals(Equals_Param24, cat)),
      holds_at(believe(Equals_Param24,
                       bCanJump(Equals_Param25, Equals_Param26)),
               t)
    ]).
axiom(equals(Equals_Param24, cat),
   
    [ not(equals(Equals_Param26, chair)),
      not(equals(Equals_Param24, cat)),
      holds_at(believe(Equals_Param24,
                       bCanJump(Equals_Param25, Equals_Param26)),
               t)
    ]).
axiom(equals(Equals_Param24, cat),
   
    [ not(equals(Equals_Param24, cat)),
      not(equals(Equals_Param25, chair)),
      holds_at(believe(Equals_Param24,
                       bCanJump(Equals_Param25, Equals_Param26)),
               t)
    ]).
axiom(equals(Equals_Param24, cat),
   
    [ not(equals(Equals_Param25, floor)),
      not(equals(Equals_Param25, chair)),
      holds_at(believe(Equals_Param24,
                       bCanJump(Equals_Param25, Equals_Param26)),
               t)
    ]).
axiom(equals(Equals_Param24, cat),
   
    [ not(equals(Equals_Param26, chair)),
      not(equals(Equals_Param25, chair)),
      holds_at(believe(Equals_Param24,
                       bCanJump(Equals_Param25, Equals_Param26)),
               t)
    ]).
axiom(equals(Equals_Param24, cat),
   
    [ not(equals(Equals_Param24, cat)),
      not(equals(Equals_Param26, table)),
      holds_at(believe(Equals_Param24,
                       bCanJump(Equals_Param25, Equals_Param26)),
               t)
    ]).
axiom(equals(Equals_Param24, cat),
   
    [ not(equals(Equals_Param25, floor)),
      not(equals(Equals_Param26, table)),
      holds_at(believe(Equals_Param24,
                       bCanJump(Equals_Param25, Equals_Param26)),
               t)
    ]).
axiom(equals(Equals_Param24, cat),
   
    [ not(equals(Equals_Param26, chair)),
      not(equals(Equals_Param26, table)),
      holds_at(believe(Equals_Param24,
                       bCanJump(Equals_Param25, Equals_Param26)),
               t)
    ]).

 /*  equals(Equals_Param27, shelf) :-
       (   not(equals(Equals_Param28, cat))
       ;   not(equals(Equals_Param27, chair))
       ;   not(equals(Equals_Param29, table))
       ),
       (   not(equals(Equals_Param28, cat))
       ;   not(equals(Equals_Param27, floor))
       ;   not(equals(Equals_Param29, chair))
       ),
       holds_at(believe(Equals_Param28,
                        bCanJump(Equals_Param27, Equals_Param29)),
                0).
 */
axiom(equals(Equals_Param27, shelf),
   
    [ not(equals(Equals_Param28, cat)),
      not(equals(Equals_Param28, cat)),
      holds_at(believe(Equals_Param28,
                       bCanJump(Equals_Param27, Equals_Param29)),
               t)
    ]).
axiom(equals(Equals_Param27, shelf),
   
    [ not(equals(Equals_Param27, floor)),
      not(equals(Equals_Param28, cat)),
      holds_at(believe(Equals_Param28,
                       bCanJump(Equals_Param27, Equals_Param29)),
               t)
    ]).
axiom(equals(Equals_Param27, shelf),
   
    [ not(equals(Equals_Param29, chair)),
      not(equals(Equals_Param28, cat)),
      holds_at(believe(Equals_Param28,
                       bCanJump(Equals_Param27, Equals_Param29)),
               t)
    ]).
axiom(equals(Equals_Param27, shelf),
   
    [ not(equals(Equals_Param28, cat)),
      not(equals(Equals_Param27, chair)),
      holds_at(believe(Equals_Param28,
                       bCanJump(Equals_Param27, Equals_Param29)),
               t)
    ]).
axiom(equals(Equals_Param27, shelf),
   
    [ not(equals(Equals_Param27, floor)),
      not(equals(Equals_Param27, chair)),
      holds_at(believe(Equals_Param28,
                       bCanJump(Equals_Param27, Equals_Param29)),
               t)
    ]).
axiom(equals(Equals_Param27, shelf),
   
    [ not(equals(Equals_Param29, chair)),
      not(equals(Equals_Param27, chair)),
      holds_at(believe(Equals_Param28,
                       bCanJump(Equals_Param27, Equals_Param29)),
               t)
    ]).
axiom(equals(Equals_Param27, shelf),
   
    [ not(equals(Equals_Param28, cat)),
      not(equals(Equals_Param29, table)),
      holds_at(believe(Equals_Param28,
                       bCanJump(Equals_Param27, Equals_Param29)),
               t)
    ]).
axiom(equals(Equals_Param27, shelf),
   
    [ not(equals(Equals_Param27, floor)),
      not(equals(Equals_Param29, table)),
      holds_at(believe(Equals_Param28,
                       bCanJump(Equals_Param27, Equals_Param29)),
               t)
    ]).
axiom(equals(Equals_Param27, shelf),
   
    [ not(equals(Equals_Param29, chair)),
      not(equals(Equals_Param29, table)),
      holds_at(believe(Equals_Param28,
                       bCanJump(Equals_Param27, Equals_Param29)),
               t)
    ]).

 /*  equals(Equals_Param30, table) :-
       (   not(equals(Equals_Param31, cat))
       ;   not(equals(Equals_Param32, chair))
       ;   not(equals(Equals_Param30, table))
       ),
       (   not(equals(Equals_Param31, cat))
       ;   not(equals(Equals_Param32, floor))
       ;   not(equals(Equals_Param30, chair))
       ),
       holds_at(believe(Equals_Param31,
                        bCanJump(Equals_Param32, Equals_Param30)),
                0).
 */
axiom(equals(Equals_Param30, table),
   
    [ not(equals(Equals_Param31, cat)),
      not(equals(Equals_Param31, cat)),
      holds_at(believe(Equals_Param31,
                       bCanJump(Equals_Param32, Equals_Param30)),
               t)
    ]).
axiom(equals(Equals_Param30, table),
   
    [ not(equals(Equals_Param32, floor)),
      not(equals(Equals_Param31, cat)),
      holds_at(believe(Equals_Param31,
                       bCanJump(Equals_Param32, Equals_Param30)),
               t)
    ]).
axiom(equals(Equals_Param30, table),
   
    [ not(equals(Equals_Param30, chair)),
      not(equals(Equals_Param31, cat)),
      holds_at(believe(Equals_Param31,
                       bCanJump(Equals_Param32, Equals_Param30)),
               t)
    ]).
axiom(equals(Equals_Param30, table),
   
    [ not(equals(Equals_Param31, cat)),
      not(equals(Equals_Param32, chair)),
      holds_at(believe(Equals_Param31,
                       bCanJump(Equals_Param32, Equals_Param30)),
               t)
    ]).
axiom(equals(Equals_Param30, table),
   
    [ not(equals(Equals_Param32, floor)),
      not(equals(Equals_Param32, chair)),
      holds_at(believe(Equals_Param31,
                       bCanJump(Equals_Param32, Equals_Param30)),
               t)
    ]).
axiom(equals(Equals_Param30, table),
   
    [ not(equals(Equals_Param30, chair)),
      not(equals(Equals_Param32, chair)),
      holds_at(believe(Equals_Param31,
                       bCanJump(Equals_Param32, Equals_Param30)),
               t)
    ]).
axiom(equals(Equals_Param30, table),
   
    [ not(equals(Equals_Param31, cat)),
      not(equals(Equals_Param30, table)),
      holds_at(believe(Equals_Param31,
                       bCanJump(Equals_Param32, Equals_Param30)),
               t)
    ]).
axiom(equals(Equals_Param30, table),
   
    [ not(equals(Equals_Param32, floor)),
      not(equals(Equals_Param30, table)),
      holds_at(believe(Equals_Param31,
                       bCanJump(Equals_Param32, Equals_Param30)),
               t)
    ]).
axiom(equals(Equals_Param30, table),
   
    [ not(equals(Equals_Param30, chair)),
      not(equals(Equals_Param30, table)),
      holds_at(believe(Equals_Param31,
                       bCanJump(Equals_Param32, Equals_Param30)),
               t)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:273
% !HoldsAt(Believe(Cat,BSatiated(Cat)),0).
 %  not(initially(believe(cat,bSatiated(cat)))).
axiom(not(initially(believe(cat, bSatiated(cat)))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:275
%; ADDED:


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:276
% !HoldsAt(Satiated(Cat),0).
 %  not(initially(satiated(cat))).
axiom(not(initially(satiated(cat))),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:278
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:279
==> completion(happens).

% range time 0 7
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:281
==> range(time,0,7).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter11/HungryCat.e:282
==> range(offset,1,1).
%; End of file.
