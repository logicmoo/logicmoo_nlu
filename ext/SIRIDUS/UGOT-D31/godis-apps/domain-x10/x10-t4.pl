:- use_module('$TRINDIKIT/core/prolog/trindikit').
:- ensure_loaded(app_search_paths).
:- use_module(trindikit(tkit_properties),[setprop/2,prop/2]).

:-use_module(library(infostate)). %in $GODIS/godis-aod
:-ensure_loaded(library(macros)). %in $GODIS/godis-aod
:-ensure_loaded(library(alias)).  %in $GODIS/godis-aod
:-ensure_loaded(library(control)).%in $GODIS/godis-aod

run:-
	run(svenska).

run(Lang):-
	set_properties(Lang,lamps),
	control.

quiet:-
	setprop(show_rules,no),
	setprop(show_state,no).
verb:-
	setprop(show_rules,yes),
	setprop(show_state,all).


selected_datatypes([ % trindikit datatypes:
		    string, move, atom, integer, bool, record, set, stack,
		    participant, stackset, queue, oqueue, pair, assocset,
		     % in  $GODIS/general:
		    godis_datatypes,
		     % resource interface datatypes are loaded here too:
		     domain,
		     upnp_dev,
		     lexicon]).

selected_modules( [ input : input_textscore, % trindikit
		    %nterpret : interpret_simple,
		    interpret : interpret_gf, % trindikit 
		   update : update, %in  $GODIS/godis-aod
		   select : select, %in  $GODIS/godis-aod
		    generate : generate_gf, % trindikit
		    %generate : generate_simple, % trindikit 
		    output : output_simpletext % trindikit
		  ] ).

selected_resources( [ device_lamps,
		      %lexicon_lamps_english,
		      lexicon_lamps_svenska,
		      domain_lamps ] ).

rivs( [ lexicon : lexicon,
	devices : record([]),
	domain : domain ] ).

mivs( [ input : string,
	output : string,
	latest_speaker : participant, %speaker,
	latest_moves : oqueue(dmove),
	next_moves : oqueue(dmove),
	program_state : program_state,
	score : real,
	timeout : real,
	language : language ]).

reset_operations(Lang,Domain, [ set( program_state, run),
		    set( language, Lang ),
		    set( lexicon, $$dash2underscore(lexicon-Domain-Lang) ),
		    set( devices, record([lamps=device_lamps]) ),
		    set( domain, $$dash2underscore(domain-Domain) ),
		    push(/private/agenda,greet),
		    push(/private/agenda,do(top)),
		    push( /shared/actions, top ) ]).



set_properties(Lang,Domain):-
	selected_resources(Rs),
	setprop( resources,Rs),
	
	setprop( tis, yes),
	selected_datatypes(Ds),
	setprop( tis-datatype_files, Ds),
	rivs(RIVs),
	setprop( tis-rivs,RIVs),
	mivs(MIVs),
	setprop( tis-mivs,MIVs),
	infostate_variable_of_type(ISVar,ISType),
	setprop( tis-infostate, ISVar:ISType),
	setof(alias(Alias,Path),alias(Alias,Path),Aliases),
	setprop( tis-aliases,Aliases),
	setof(macro_cond(Macro,Cond),macro_cond(Macro,Cond),MacroConds),
	%setof(macro_op(Macro,Op),macro_op(Macro,Op),MacroOps),
	%append(MacroOps,MacroConds,Macros),
	setprop( tis-macros,MacroConds),
	reset_operations(Lang,Domain,ResetOps),
	setprop( tis-reset_ops,ResetOps),
	
	setprop( oaa-libdir,'$OAA_HOME/src/oaalib/prolog'),
	setprop( oaa,yes),
	
	setprop( control,yes),
	control_algorithm(ControlAlgorithm),
	setprop( control-algorithm,[init=>ControlAlgorithm]),
	
	selected_modules(Modules),
	setprop( modules,Modules).

