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
% Sept 20,1999 - Douglas Miles
% July 10,1996 - John Eikenberry 
%
% Logicmoo Project changes:
%
% Main file.
%
*/
%:- use_module(library(pfc)).

:- use_module(library(logicmoo_common)).

/*
:- if(\+ exists_source(library(poor_bugger))).
:- prolog_load_context(file,File),
 absolute_file_name('..',X,[relative_to(File),file_type(directory)]),
 asserta(user:file_search_path(library,X)).
:- endif.
*/



% :- system:ensure_loaded(pack(logicmoo_nlu/prolog/logicmoo_nlu/parser_chat80)).
%:- system:ensure_loaded(pack(logicmoo_nlu/prolog/logicmoo_nlu/parser_pldata)).


:- if(exists_source(library(logicmoo_nlu))).
:- use_module(library(logicmoo_nlu)).
%:- use_module(library(logicmoo_nlu/parser_sharing)).
%:- use_module(library(logicmoo_nlu/parser_tokenize)).
%:- use_module(library(logicmoo_nlu/nl_pipeline)).
:- else.
% :- system:ensure_loaded(pack(logicmoo_nlu/prolog/logicmoo_nlu/parser_sharing)).
:- if(exists_source(pack(logicmoo_nlu/ext/pldata/nl_iface))).
:- ensure_loaded(pack(logicmoo_nlu/ext/pldata/nl_iface)).
:- else.
:- if(exists_source(library(nldata/nl_iface))).
% being in user is just to help debugging from console
%:- user:ensure_loaded(library(nldata/nl_iface)).
:- endif.
:- endif.
:- load_wordnet.
:- endif.


security_of(_,_Wiz).
admin :- true. % Potential security hazzard.
wizard :- true. % Potential to really muck up game.
extra :- true. % Fuller, but questionable if needed yet.

:- op(200,fx,'$').

% :- user:ensure_loaded(library(parser_sharing)).


:- consult(adv_debug).
:- consult(adv_help).
:- consult(adv_util).
:- consult(adv_io).

:- consult(adv_model).
:- consult(adv_percept).

:- consult(adv_inst).
:- consult(adv_edit).
:- ensure_loaded(adv_axiom).

:- ensure_loaded(adv_abdemo).

:- consult(adv_examine).
:- consult(adv_action).
:- consult(adv_agent).
:- consult(adv_floyd).
:- consult(adv_log2eng).
:- consult(adv_physics).
:- consult(adv_plan).

:- consult(adv_eng2cmd).
% :- ensure_loaded(adv_state).
:- consult(adv_state).

:- consult(adv_data).

%:- consult(adv_test).
%:- consult(adv_telnet).


adventure_init :-
 %guitracer,
 must_mw1((
 test_ordering,
 init_logging,
 (retractall(advstate_db(_));true),!,
 istate(S0),!,
 init_objects(S0, S1),!,
 asserta(advstate_db(S1)))),
 player_format('=============================================~n', []),
 player_format('INIT STATE~n', []),
 player_format('=============================================~n', []),
 printable_state(S1,SP), 
 pprint(SP, general).


adventure:- 
 adventure_init,
 player_format('=============================================~n', []),
 player_format('Welcome to Marty\'s Prolog Adventure Prototype~n', []),
 player_format('=============================================~n', []), 
 % trace, 
 mainloop,
 %main_loop(S3),
 stop_logging.

adventure :-
 stop_logging,
 player_format('adventure FAILED~n', []),
 !, fail.  


main(S0, S9) :-
 notrace((set_advstate(S0))),
 must_mw1(update_telnet_clients(S0,S1)),
 ((set_advstate(S1),
 % pprint(S1,general),
 get_live_agents(LiveAgents, S1),
 ttyflush)),
 %bugout1(liveAgents = LiveAgents),
 apply_mapl_state(run_agent_pass_1(), LiveAgents, S1, S2),
 apply_mapl_state(run_agent_pass_2(), LiveAgents, S2, S9),
 notrace((set_advstate(S9))),
 !. % Don't allow future failure to redo main.
main(S0, S0) :-
 bugout3('main FAILED~n', general).

:- dynamic(mu_global:agent_conn/4).

update_telnet_clients(S0,S2):-
 retract(mu_global:agent_conn(Agent,Named,_Alias,Info)),
 create_agent_conn(Agent,Named,Info,S0,S1),
 update_telnet_clients(S1,S2).
update_telnet_clients(S0,S0).



:- dynamic(mu_global:console_tokens/2).
telnet_decide_action(Agent, Mem0, Mem0):-
 % If actions are queued, no further thinking required.
 thought(todo([Action|_]), Mem0),
 (declared_advstate(h(in, Agent, Here))->true;Here=somewhere),
 bugout3('~w @ ~w telnet: Already about to: ~w~n', [Agent, Here, Action], telnet).

telnet_decide_action(Agent, Mem0, Mem1) :-
 %must_mw1(thought(timestamp(T0), Mem0)),
 retract(mu_global:console_tokens(Agent, Words)), !,
 must_mw1((eng2log(Agent, Words, Action, Mem0),
 if_tracing(bugout3('Telnet TODO ~p~n', [Agent: Words->Action], telnet)),
 add_todo(Action, Mem0, Mem1))), !.
telnet_decide_action(Agent, Mem, Mem) :-
 nop(bugout3('~w: Can\'t think of anything to do.~n', [Agent], telnet)).


%:- if(\+ prolog_load_context(reloading, t)).
:- initialization(adventure, main).
%:- endif.

main_once:- 
 must_mw1((
   advstate_db(S0),
   main(S0, S1),
   must_output_state(S1),
   retractall(advstate_db(_)),
   asserta(advstate_db(S1)))),!.

mainloop :-
 repeat,
 once(main_once),
 (advstate_db(S1)->declared(quit, S1)),
 !. % Don't allow future failure to redo mainloop.

% TODO: try converting this to a true "repeat" loop.
/*main_loop(State) :-
 declared(quit, State), !.
main_loop(State) :-
 declared(undo, State),
 current_agent(Player),
 retract(undo(Player, [_, Prev|Tail])),
 assertz(undo(Player, Tail)),
 !,
 main_loop(Prev).
main_loop(S0) :-
 %repeat,
 current_agent(Player),
 retract(undo(Player, [U1, U2, U3, U4, U5, U6|_])),
 assertz(undo(Player, [S0, U1, U2, U3, U4, U5, U6])),
 run_agent(Player, S0, S4),
 run_agent(floyd, S4, S5),
 %user_interact(S3, S4), !,
 %automate_agent(floyd, S4, S5),
 !,
 main_loop(S5).
main_loop(_) :-
 bugout3('main_loop() FAILED!~n', general).
*/


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
:- nop(ensure_loaded('adv_main_commands')).
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


save_term(Filename, Term) :-
 \+ access_file(Filename, exist),
 open(Filename, write, FH),
 write(FH, Term),
 close(FH),
 player_format('Saved to file "~w".~n', [Filename]).
save_term(Filename, _) :-
 access_file(Filename, exist),
 player_format('Save FAILED! Does file "~w" already exist?~n', [Filename]).
save_term(Filename, _) :-
 player_format('Failed to open file "~w" for saving.~n', [Filename]).

