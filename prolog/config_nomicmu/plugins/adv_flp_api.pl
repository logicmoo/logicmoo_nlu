
:- use_module(library(nomic_mu)).

% %% :- consult('/var/lib/myfrdcsa/sandbox/nomicmu-20200218/nomicmu-20200218/nomicmu_packs/logicmoo_nlu/prolog/marty_white/adv_flp').
% %% :- consult('/var/lib/myfrdcsa/sandbox/nomicmu-20200218/nomicmu-20200218/nomicmu_packs/logicmoo_nlu/prolog/marty_white/adv_pengines').

:- dynamic command_from_flp/1.
:- dynamic flp_words0/1.

% %% % FLP client
% %% decide_action(Agent, Mem0, Mem1) :-
% %%  notrace(declared(inherited(flp), Mem0)),!,
% %%  must_mw1(flp_decide_action(Agent, Mem0, Mem1)).

receive_message(Message,Result) :-
	pprint(Message,general),
	retractall(command_from_flp(_)),
	assert(command_from_flp(Message)),
	Result = true,
	% %% query_agent(flp,'127.0.0.1',flp_update_current_task(0,0,Message,Result1),Result2).
	get_goals(Goals),
	query_agent(flp,'127.0.0.1',flp_update(0,0,[current(task,Message),current(goals,Goals)],Result1),Result2).


:- defn_state_none(update_flp(agent,term,term,term)).
update_flp(Agent,Name,Plan,Step) :-
	Agent = 'player~1',
	query_agent(flp,'127.0.0.1',flp_update(0,0,[current(name,Name),current(plan,Plan),current(step,Step)],Result1),Result2).

flp_nomicmu_query(Words0,Result) :-
	set_flp_words0(Words0),
	do_flp.
	% %% once(main_once).

set_flp_words0(Words0) :-
	retractall(flp_words0(_)),
	assert(flp_words0(Words0)).

% %% flp_words0([goto,downstairs_computer_room]).

do_flp :-
	get_advstate(S0),
	apply_mapl_state(flp_run_agent_pass_1_0(), ['player~1'], S0, S1),
	run_agent_pass_1_0(Agent, S1, S2),
	notrace((set_advstate(S2))).
	% notrace(must_output_state(S2)),!.

flp_run_agent_pass_1_0(Agent, S0, S) :- 
	undeclare(memories(Agent, Mem0), S0, S1),
	set_advstate(S1),
	flp_decide_action(Agent, Mem0, Mem2),
	declare(memories(Agent, Mem2), S1, S).


% Decide action hook
% :- push_to_state(type_props(adv_flp,[inherit(nomic_plugin),prefix('flp_'), desc("FLP plugin that contains decide action")]).

:- push_to_state(
 props(adv_flp,
  [prefix = "flp_",inherit(decider_plugin), 
   desc("FLP plugin that contains decide action")])).

% :- decl_mpred(flp_decide_action/3, nomicmu_decider_hook).

flp_decide_action(Agent, Mem0, Mem1) :-
	flp_words0(Words0),
	(   Words0==[]->(Words=[wait],makep);Words=Words0),
	eng2log(Agent, Words, Action, Mem0),
	add_todo(Action, Mem0, Mem1).

flp_state :-
	get_advstate(State),pprint(State,general).

flp_state_eng :-
	get_advstate(State),print_english(world,State).

goals :-
	get_goals(Goals),
	pprint(Goals,general).

% %% get_advstate    

% %% get_goals(Goals) :-
% %% 	get_advstate(S1),
% %% 	member(memories('player~1',M), S1),
% %% 	member(goals(Goals),M).

get_goals(Goals) :-
	get_advstate(S0),
	member(memories('player~1',M),S0),
	member(todo(Goals),M).
                  
flp_test1 :-
	get_advstate(S0),
	Action = goto_loc('player~1', walk, pantry),
	action_doer(Action,Agent),
	pprint(Agent,general),
	must_act(Action,S0,S2),
	pprint(S2,general),
        set_advstate(S2).


flp_test1a :-
	get_advstate(S0),
	Action = go_dir('player~1', walk, north),
	action_doer(Action,Agent),
	pprint(Agent,general),
	must_act(Action,S0,S2),
	pprint(S2,general),
        set_advstate(S2).

flp_test2 :-
	e2c('I need a windows computer for work.').



aXiom(view(Item)) ==>>
  queue_local_event(msg_from(Agent, Msg), [Here]).

view(Item) :-
	pprint(Item, always).



flp_test3(Words0) :-
	get_advstate(S0),
	undeclare(memories(Agent, Mem0), S0, S1),
	pprint(Mem0,general),
	set_advstate(S1),
	figure_out_action(Words0, Agent, Mem0, Mem2),
	declare(memories(Agent, Mem2), S1, _S).

flp_test3(Words0) :-
	get_advstate_fork(S0),
	undeclare(memories(Agent, Mem0), S0, S1),
	pprint(Mem0,general),
	set_advstate(S1),
	figure_out_action(Words0, Agent, Mem0, Mem2),
	declare(memories(Agent, Mem2), S1, _S).


figure_out_action(Words0, Agent, Mem0, Mem1) :-
	(   Words0==[]->(Words=[wait],makep);Words=Words0),
	eng2log(Agent, Words, Action, Mem0),
	add_todo(Action, Mem0, Mem1),
	pprint(Mem1,general).

flp_test4 :-
	Agent = 'floyd',
	api_invoke(add_todo(Agent, take(Agent,crate))).

flp_test4a :-
	Agent = 'floyd',
	api_invoke(add_todo(Agent, drop(Agent,'wrench~1'))).

flp_test4a1 :-
	Agent = 'floyd',
	api_invoke(add_todo(Agent, drop(Agent,the(wrench)))).

flp_test4b :-
	Agent = 'floyd',
	api_invoke(add_goal(Agent, take(Agent,crate))).

flp_test4b1 :-
	Agent = 'floyd',
	api_invoke(add_goal(Agent, take(Agent,the(crate)))).

flp_test5 :-
	Agent = 'floyd',
	api_invoke(add_todo(Agent, goto_loc(Agent, walk, pantry))).

flp_test6 :-	     
	add_agent_todo('player~1',goto_loc('player~1',walk,basement)),
        get_advstate(S2),
	view(S2).

