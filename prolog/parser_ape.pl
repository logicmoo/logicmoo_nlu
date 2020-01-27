% ===================================================================
% File 'parser_ape.pl'
% Purpose: Attempto Controlled English to CycL conversions from SWI-Prolog  
% This implementation is an incomplete proxy for CycNL and likely will not work as well
% Maintainer: Douglas Miles
% Contact: $Author: dmiles $@users.sourceforge.net ;
% Version: 'parser_ape.pl' 1.0.0
% Revision:  $Revision: 1.3 $
% Revised At:   $Date: 2002/06/06 15:43:15 $
% ===================================================================

% :-module(parser_ape,[]).


% ==============================================================================
:- use_module(parser_sharing).
:- shared_parser_data(nldata_talk_db_pdat:talk_db/3).

:- use_module(ape/parser/ace_to_drs).
:- use_module(ape/get_ape_results).
:- use_module(ape/utils/drs_to_drslist).
:- use_module(ape/utils/drs_to_sdrs).
:- use_module('ape/parser/grammar_plp.pl').
:- use_module('ape/parser/grammar_words',[reset_progress_record/1]).
:- use_module(ape/parser/ape_utils).
:- use_module(ape/parser/tokenizer).
:- use_module(ape/utils/morphgen, [
	acesentencelist_pp/2
	]).
:- use_module(ape/utils/is_wellformed, [
	is_wellformed/1
	]).
:- use_module(ape/utils/drs_to_ascii).
:- use_module(ape/utils/trees_to_ascii).
:- use_module(ape/utils/drs_to_ace, [
	drs_to_ace/2
	]).
:- use_module(ape/logger/error_logger, [
	clear_messages/0,
	get_messages/1,
	is_error_message/4
	]).

:- set_prolog_flag(float_format, '%.11g').

% Import the lexicons
:- style_check(-singleton).
:- style_check(-discontiguous).
:- use_module(ape/lexicon/clex).
:- use_module(ape/lexicon/ulex).
:- style_check(+discontiguous).
:- style_check(+singleton).

:- use_module(ape('utils/morphgen')).

:- use_module(ape('utils/ace_niceace')).

:- use_module(ape('utils/drs_to_xml')).
:- use_module(ape('utils/drs_to_fol_to_prenex')).
:- use_module(ape('utils/drs_to_ascii')).
:- use_module(ape('utils/drs_to_ace')).
:- use_module(ape('utils/drs_to_coreace')).
:- use_module(ape('utils/drs_to_npace')).
:- use_module(ape('utils/drs_to_html')).
:- use_module(ape('utils/drs_to_ruleml')).
:- use_module(ape('utils/tree_utils')).
:- use_module(ape('utils/trees_to_ascii')).
:- use_module(ape('utils/drs_to_tptp')).
:- use_module(ape('lexicon/clex')).
:- use_module(ape('lexicon/ulex')).
:- use_module(ape('parser/ace_to_drs')).
:- use_module(ape('logger/error_logger')).

:- use_module(ape('utils/xmlterm_to_xmlatom')).

:- use_module(ape('utils/serialize_term')).

:- use_module(ape('utils/owlswrl/get_owl_output')).
