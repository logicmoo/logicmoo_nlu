
:- '$set_source_module'(mu).
% :- asserta(mu:is_a_module).

:- module(mu).
:- set_prolog_flag(ec_loader, false).

:- use_module(library(nomic_mu)).

:- mu:use_module(library(pfc)).
:- set_fileAssertMt(mu).

:- nodebug.

setup_moo ==> {writeln(setup_moo)}.

:- begin_pfc.

setup_moo2 ==> {writeln(setup_moo2)}.


:- ensure_loaded(adv_lexical).

:- set_prolog_flag(debugger_write_options, [quoted(true), portray(true), max_depth(20), attributes(dots)]).
