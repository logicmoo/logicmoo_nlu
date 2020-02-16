
% ================================================================================================
% PLDATA: LOAD ENGLISH CORE FILES
% ================================================================================================

% :- time(ignore((absolute_file_name(library(el_holds/'el_assertions.pl.qlf'),AFN),(exists_file(AFN)->true;qcompile(library(el_holds/'el_assertions.pl.hide')))))).

get_it:- 
 time(ignore((absolute_file_name(library(el_holds/'el_assertions.pl.qlf'),AFN),   
  (exists_file(AFN)->true;(
    (absolute_file_name(library(el_holds),AFND),sformat( S, 'curl --compressed http://prologmoo.com/devel/LogicmooDeveloperFramework/PrologMUD/pack/pldata_larkc/prolog/el_holds/el_assertions.pl.qlf > ~w/el_assertions.pl.qlf',[AFND]),
    shell(S))))))).


:- dmsg("Loading loading language data (This may take 10-15 seconds)").

% 
% gripe_time(warn(12.246577455>7),        user:time(pfc_lib:load_parser_interface(library(el_holds/'el_assertions.pl.qlf')))).
% OLD :- gripe_time(7,time(pfc_lib:load_parser_interface(library(el_holds/'el_assertions.pl.qlf')))).

% 6.052 CPU on VMWare I7

:- shared_parser_data(clex_iface:clex_adj/3).

% term_expansion(G,I,GG,O):- compound(I),source_location(File,_),prolog_load_context(module,Module),using_shared_parser_data(Module,File),importing_clause(G,GG) -> G \== GG, I=O.

:- 
%  with_assertions
%  [(user:term_expansion(_,_):-!,fail),(user:goal_expansion(_,_):-!,fail),(system:term_expansion(_,_):-!,fail),(system:goal_expansion(_,_):-!,fail)],
  (
   %pfc_lib:load_parser_interface(library(logicmoo/plarkc/logicmoo_i_call_kb)),
   %reexport(pldata(clex_iface)),
   nop(load_language_file(pldata(nldata_BRN_WSJ_LEXICON))),
   if_defined(baseKB:skip_el_assertions,load_language_file(library(el_holds/el_assertions))),
   nop(load_language_file(pldata(nldata_freq_pdat))),
   %talkdb:load_language_file(pldata(talk_db)),
   %reexport(pldata(talk_db)),
   nop(load_language_file(pldata(nldata_cycl_pos0)))),!.


:- if(exists_source(pldata(nl_iface))).
% being in user is just to help debugging from console
:- user:reexport(pldata(nl_iface)).
:- endif.

% :- set_prolog_flag(qcompile,false).

