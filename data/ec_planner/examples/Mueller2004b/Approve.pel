:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2004b/Approve.e').
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
%; example of concurrent events with cumulative or canceling effects
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

% sort agent
==> sort(agent).

% event ApproveOf(agent,agent)
 %  event(approveOf(agent,agent)).
==> mpred_prop(approveOf(agent,agent),event).
==> meta_argtypes(approveOf(agent,agent)).

% event DisapproveOf(agent,agent)
 %  event(disapproveOf(agent,agent)).
==> mpred_prop(disapproveOf(agent,agent),event).
==> meta_argtypes(disapproveOf(agent,agent)).

% fluent Happy(agent)
 %  fluent(happy(agent)).
==> mpred_prop(happy(agent),fluent).
==> meta_argtypes(happy(agent)).

% fluent Confused(agent)
 %  fluent(confused(agent)).
==> mpred_prop(confused(agent),fluent).
==> meta_argtypes(confused(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:34
% [agent1,agent2,time]
% !Happens(DisapproveOf(agent1,agent2),time) ->
% Initiates(ApproveOf(agent1,agent2),Happy(agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:36
axiom(initiates(approveOf(Agent1, Agent2), happy(Agent2), Time),
    [not(happens(disapproveOf(Agent1, Agent2), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:38
% [agent1,agent2,time]
% !Happens(ApproveOf(agent1,agent2),time) ->
% Terminates(DisapproveOf(agent1,agent2),Happy(agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:40
axiom(terminates(disapproveOf(Agent1, Agent2), happy(Agent2), Time),
    [not(happens(approveOf(Agent1, Agent2), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:42
% [agent1,agent2,time]
% Happens(DisapproveOf(agent1,agent2),time) ->
% Initiates(ApproveOf(agent1,agent2),Confused(agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:44
axiom(requires(disapproveOf(Agent1, Agent2), Time),
   
    [ initiates(approveOf(Agent1, Agent2),
                confused(Agent2),
                Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:46
% agent James, Peter
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:47
==> t(agent,james).
==> t(agent,peter).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:48
% [agent]
 % !HoldsAt(Happy(agent),0) & !HoldsAt(Confused(agent),0).

 /*   not(holds_at(happy(Agent), 0)),
      not(holds_at(confused(Agent), 0)).
 */
axiom(not(holds_at(happy(Happy_Ret), t)),
    []).
axiom(not(holds_at(confused(Confused_Ret), t)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:50
% Happens(ApproveOf(Peter,James),0).
axiom(happens(approveOf(peter, james), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:51
% Happens(DisapproveOf(Peter,James),0).
axiom(happens(disapproveOf(peter, james), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:53
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:54
==> completion(happens).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:56
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/Approve.e:57
==> range(offset,1,1).
%; End of file.
