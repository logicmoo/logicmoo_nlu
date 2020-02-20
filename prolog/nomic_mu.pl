/*
% NomicMUD: A MUD server written in Prolog
% Maintainer: Douglas Miles
% Dec 13, 2035
%
% Bits and pieces:
%
%  LogicMOO, Inform7, FROLOG, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
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

:- module(mu, [srv_mu/0, srv_mu/1, run_mu/0, mu_port/1, usage_mu/0]).

% nohup websocket_redir.sh dbutterfly 4004 &

:- if(\+ exists_source(library(poor_bugger))).
:- prolog_load_context(file,File),
   absolute_file_name('.',X,[relative_to(File),file_type(directory)]),
   asserta(user:file_search_path(library,X)).
:- endif.

:- pack_install(dictoo).

:- ensure_loaded('./marty_white/adv_main').
:- ensure_loaded('./marty_white/adv_telnet').

% :- use_module(library(dialect/ifprolog),except([time / 1])).
% :- use_module(./chat80).
% :- ensure_loaded('./adv_chat80'). 

:- dynamic(no_autostart/0).

srv_mu(TwoSixSixSix) :-
  atom_concat('mu_',TwoSixSixSix,Alias),
  thread_property(_,alias(Alias)),!,  
  format('~NServer should be running on port ~w~n',[TwoSixSixSix]),
  threads, !.

srv_mu(TwoSixSixSix) :- 
  adv_server(TwoSixSixSix),
  asserta(no_autostart),
  format('~NServer is starting on port ~w~n',[TwoSixSixSix]),
  threads,  
  !.
  
srv_mu:-
  mu_port(TwoSixSixSix),
  srv_mu(TwoSixSixSix),
  run_mu.
 
run_mu:- 
   asserta(no_autostart),
   setup_console,
   must(adventure),!.

srv_mu_main:- no_autostart,!.
srv_mu_main:- srv_mu.

mu_port(4004).

   
usage_mu:- mu_port(Port), format('~N
You may start the server with:

 ?- mu:srv_mu(PortNum).
 
 
Or serve default port ~w:
 
 ?- mu:srv_mu.
 

For single-threaded debugging/devel
or to run as single player use:

 ?- mu:run_mu.
   

',[Port]).


  

:- initialization(srv_mu_main, main).
:- initialization(usage_mu, now).
:- initialization(usage_mu, program).
