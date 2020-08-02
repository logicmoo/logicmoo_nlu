
:- module(mu).
:- set_prolog_flag(ec_loader, false).

:- use_module(library(nomic_mu)).

:- use_module(library(pfc)).
:- set_fileAssertMt(mu).

:- nodebug.

setup_moo ==> {writeln(setup_moo)}.

:- begin_pfc.

setup_moo2 ==> {writeln(setup_moo2)}.


