
:- use_module(library(logicmoo_common)).

:-multifile(cgr/3).
:-multifile(cg/4).
:-multifile(cgc/5).
:-multifile(isa/2).
:-multifile(ind/3).
:-multifile(isa_kind/4).
:-dynamic(cgr/3).
:-dynamic(cg/4).
:-dynamic(cgc/5).
:-dynamic(isa/2).
:-dynamic(ind/3).
:-dynamic(isa_kind/4).


:- expects_dialect(sicstus).
:- ensure_loaded(cgprolog_reader).
:- ensure_loaded(cgprolog_operations).
:- ensure_loaded(cgprolog_translator).

