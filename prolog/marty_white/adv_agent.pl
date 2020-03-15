/* -*- Mode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:4; tab-width:8; -*- */
/*
% NomicMUD: A MUD server written in Prolog
% Maintainer: Douglas Miles
% Dec 13, 2035
%
% Bits and pieces:
%
% LogicMOO, Inform7, FROLOG, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
% 
% Copyright (C) 2004 Marty White under the GNU GPL 
% Sept 20, 1999 - Douglas Miles
% July 10, 1996 - John Eikenberry 
%
% Logicmoo Project changes:
%
% Main file.
%
*/


each_live_agent(NewGoal, S0, S2) :-
 get_live_agents(List, S0),
 apply_mapl_state(NewGoal, List, S0, S2).

each_sensing_thing(Sense, NewGoal, S0, S2) :-
 must_mw1((get_sensing_objects(Sense, List, S0),
  List\==[],
  %dbug1(each_sensing_thing(Sense)=(List=NewGoal)),
 apply_mapl_state(NewGoal, List, S0, S2))).

each_agent(Precond, NewGoal, S0, S2) :-
 get_some_agents(Precond, List, S0),
 apply_mapl_state(NewGoal, List, S0, S2).



% -----------------------------------------------------------------------------
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
:- nop(ensure_loaded('adv_agent_model')).
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Protocol:
% Agent: request(Action, Action_Id)
% Simulation: respond(Action_Id, LogicalResponse/Percept, EnglishResponse)
% Action(Verb, ...)
% failure(Reason)
% moved(agent, how, obj, from, prep)

% -----------------------------------------------------------------------------
% The state of an Agent is stored in its memory.
% Agent memory is stored as a list in reverse chronological order, implicitly
% ordering and timestamping everything.
% Types of memories:
% inst(A)  - identity of agent (?)
% timestamp(T) - agent may add a new timestamp whenever a sequence point
%      is desired.
% [percept]  - received perceptions.
% model([...]) - Agent's internal model of the world.
%      Model is a collection of timestampped relations.
% goals([...]) - states the agent would like to achieve, or
%      acts the agent would like to be able to do.
% plan(S, O, B, L) - plans for achieving goals.
% affect(...)  - Agent's current affect.
% Multiple plans, goals, models, affects, etc. may be stored, for introspection
% about previous internal states.

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
:- nop(ensure_loaded('adv_agent_goal')).
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

add_goal(Goal, Mem0, Mem2) :- is_list(Goal), !, apply_mapl_state(add_goal(), Goal, Mem0, Mem2).
add_goal(Goal, Mem0, Mem2) :-
 dbug(planner, 'adding goal ~w~n', [Goal]),
 forget(goals(OldGoals), Mem0, Mem1),
 append([Goal], OldGoals, NewGoals),
 memorize(goals(NewGoals), Mem1, Mem2).

add_goals(Goals, Mem0, Mem2) :-
 forget(goals(OldGoals), Mem0, Mem1),
 append(Goals, OldGoals, NewGoals),
 memorize(goals(NewGoals), Mem1, Mem2).


add_todo(Auto, Mem0, Mem3) :- Auto = auto(Agent),
 %must_mw1(member(inst(Agent), Mem0)),
 autonomous_decide_action(Agent, Mem0, Mem3), !.
add_todo(Action, Mem0, Mem2) :- 
 forget(todo(OldToDo), Mem0, Mem1),
 append(OldToDo, [Action], NewToDo),
 memorize(todo(NewToDo), Mem1, Mem2).

add_todo_all([], Mem0, Mem0).
add_todo_all([Action|Rest], Mem0, Mem2) :-
 add_todo(Action, Mem0, Mem1),
 add_todo_all(Rest, Mem1, Mem2).


 
% -----------------------------------------------------------------------------
% do_introspect(Agent, Query, Answer, Memory)

:- defn_state_getter(do_introspect(agent, action, result)).


do_introspect(Agent, path(There), Answer, M0) :- !, 
   declared(h(_, _, There), M0),
   declared(h(_, Agent, Here), M0),
  do_introspect(Agent, path(Here, There), Answer, M0).

do_introspect(Agent, path(Here, There), Answer, M0) :- 
 agent_thought_model(Agent, ModelData, M0), 
 find_path(Agent, Here, There, Route, ModelData), !, 
 get_structure_label(ModelData, Name), 
 Answer = msg(['Model is:', Name, 'Shortest path is:\n', Route]).

do_introspect(Agent, path(Here, There), Answer, ModelData) :- 
 find_path(Agent, Here, There, Route, ModelData), !, 
 get_structure_label(ModelData, Name), 
 Answer = msg(['Model is:', Name, 'Shortest path was:', nl, list(Route)]).

do_introspect(Agent1, recall(Agent, WHQ, Target), Answer, M0) :- 
 agent_thought_model(Agent, ModelData, M0),
 recall_whereis(M0, Agent1, WHQ, Target, Answer, ModelData).

do_introspect(Agent1, recall(Agent, Target), Answer, M0) :- !,
  do_introspect(Agent1, recall(Agent, what, Target), Answer, M0).

:- set_prolog_flag(debugger_write_options, [quoted(true), portray(false), max_depth(50), attributes(portray)]).

recall_whereis(_S0, _Self,  _WHQ, There, Answer, ModelData) :-
 findall(Data, (member(Data, ModelData), nonvar_subterm(There, Data)), Memories),
 Memories\==[],
 Answer = Memories.

recall_whereis(_S0, Agent,  _WHQ, There, Answer, _ModelData) :- 
 Answer = [subj(Agent), person('don\'t', 'doesn\'t'),
   'recall a "', There, '".'].

get_agent_prompt(Agent, Prompt):- get_agent_memory(Agent, Mem),
  thought(prompt(Prompt), Mem).

console_decide_action(Agent, Mem0, Mem1):- 
 %thought(timestamp(T0), Mem0),
 %dbug1(read_pending_codes(In, Codes, Found, Missing)),
 % repeat,
 notrace((
 ttyflush,
 agent_to_input(Agent, In),
 must_mw1(is_stream(In)),
 setup_console,
 ensure_has_prompt(Agent),
 read_line_to_tokens(Agent, In, [], Words0), 
 (Words0==[]->(Words=[wait], makep);Words=Words0))),
 eng2log(Agent, Words, Action, Mem0),      
 !,
 if_tracing(dbug(telnet, 'Console TODO ~p~n', [Agent: Words->Action])),
 add_todo(Action, Mem0, Mem1), ttyflush, !.

makep:-
 locally(set_prolog_flag(verbose_load, true),
 with_no_dmsg(make:((
  
  '$update_library_index',
 findall(File, make:modified_file(File), Reload0),
 list_to_set(Reload0, Reload),
 ( prolog:make_hook(before, Reload)
 -> true
 ; true
 ),
 print_message(silent, make(reload(Reload))),
 maplist(reload_file, Reload),
 print_message(silent, make(done(Reload))),
 ( prolog:make_hook(after, Reload)
 -> true
 ; nop(list_undefined),
  nop(list_void_declarations)
 ))))).


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
%:- dbug1(ensure_loaded('adv_agents')).
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

decide_action(Agent, Mem0, Mem2):- 
  has_satisfied_goals(Agent, Mem0, Mem1), !,
  decide_action(Agent, Mem1, Mem2).

decide_action(Agent, Mem0, Mem9):- 
  per_plugin(early_decide_action(Agent), Mem0, Mem1), 
  Mem0\==Mem9, !,
  decide_action(Agent, Mem1, Mem9).

decide_action(Agent, Mem0, Mem0) :- 
 thought(todo([Action|_]), Mem0),
 (declared(h(in, Agent, Here), advstate)->true;Here=somewhere),
 (trival_act(Action)->true;dbug(planner, '~w @ ~w: already about todo: ~w~n', [Agent, Here, Action])).

decide_action(Agent, Mem0, Mem1) :-
 %must_mw1(thought(timestamp(T0), Mem0)),
 retract(mu_global:console_tokens(Agent, Words)), !,
 must_mw1((eng2log(Agent, Words, Action, Mem0),
 if_tracing(dbug(planner, 'Agent TODO ~p~n', [Agent: Words->Action])),
 add_todo(Action, Mem0, Mem1))).


% Telnet client
decide_action(Agent, Mem0, Mem1) :-
 notrace(declared(inherited(telnet), Mem0)), !,
 must_mw1(telnet_decide_action(Agent, Mem0, Mem1)).


% Stdin Client
decide_action(Agent, Mem0, Mem1) :-
 notrace((declared(inherited(console), Mem0), current_input(In))), !, 
 agent_to_input(Agent, In),
 ensure_has_prompt(Agent),
 ttyflush,
 (tracing->catch(wait_for_input([In, user_input], Found, 20), _, (nortrace, notrace, break));wait_for_input([In, user_input], Found, 0)),
 (Found==[] -> (Mem0=Mem1) ;  quietly(((console_decide_action(Agent, Mem0, Mem1))))).

decide_action(Agent, Mem0, Mem3) :-
 declared(inherited(autonomous), Mem0),
 maybe_autonomous_decide_goal_action(Agent, Mem0, Mem3).

decide_action(Agent, Mem0, Mem9):- 
  per_plugin(decide_action(Agent), Mem0, Mem9), !.

decide_action(_Agent, Mem, Mem) :-
 declared(inherited(memorizer), Mem), !. % recorders don't decide much.

decide_action(Agent, Mem0, Mem0) :-
 set_last_action(Agent, [auto(Agent)]),
 dbug(general, 'decide_action(~w) FAILED!~n', [Agent]).


:- meta_predicate with_agent_console(*, 0).
/*
with_agent_console(Agent, Goal):- 
 mu_global:console_host_io_history_unused(Id, Alias, InStream, OutStream, Host, Peer, Agent),
 nop(mu_global:console_host_io_history_unused(Id, Alias, InStream, OutStream, Host, Peer, Agent)),
 current_input(WasIn),
 InStream\==WasIn, !,
 setup_call_cleanup(set_input(InStream), with_agent_console(Agent, Goal), set_input(WasIn)).
*/
with_agent_console(Agent, Goal):- 
 setup_call_cleanup(
  asserta(mu_global:current_agent_tl(Agent), E),
  Goal, erase(E)), !.

run_agent_pass_1(Agent, S0, S) :-
 must_input_state(S0),
 with_agent_console(Agent, run_agent_pass_1_0(Agent, S0, S)),
 notrace(must_output_state(S)), !.


run_agent_pass_1_0(Agent, S0, S) :-
 undeclare(perceptq(Agent, PerceptQ), S0, S1), PerceptQ \== [],
 declare(perceptq(Agent, []), S1, S2),
 do_percept_list(Agent, PerceptQ, S2, S3),
 run_agent_pass_1_0(Agent, S3, S).

run_agent_pass_1_0(Agent, S0, S) :- 
 undeclare(memories(Agent, Mem0), S0, S1),
 set_advstate(S1), % backtrackable leaks :( b_setval(advstate, S2),
 decide_action(Agent, Mem0, Mem2),
 declare(memories(Agent, Mem2), S1, S).

run_agent_pass_1_0(Agent, S0, S0) :-
 dbug(general, 'run_agent_pass_1(~w) FAILED!~n', [Agent]).



run_agent_pass_2(Agent, S0, S) :-
 with_agent_console(Agent, do_todo(Agent, S0, S)).
run_agent_pass_2(Agent, S0, S0) :-
 dbug(general, 'run_agent_pass_2(~w) FAILED!~n', [Agent]).



  
:- meta_predicate match_functor_or_arg(1, *).
match_functor_or_arg(Q, P):- compound(P), safe_functor(P, F, _), (call(Q, F)->true;(arg(1, P, E), call(Q, E))), !.

 
% --------

