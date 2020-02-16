% ===================================================================
% File 'parser_candc.pl'
% Purpose: Attempto Controlled English to CycL conversions from SWI-Prolog  
% This implementation is an incomplete proxy for CycNL and likely will not work as well
% Maintainer: Douglas Miles
% Contact: $Author: dmiles $@users.sourceforge.net ;
% Version: 'parser_candc.pl' 1.0.0
% Revision:  $Revision: 1.3 $
% Revised At:   $Date: 2002/06/06 15:43:15 $
% ===================================================================

:- user:ensure_loaded(library(logicmoo_utils_all)).


:- user:ensure_loaded(logicmoo_nlu_ext('candc/src/prolog/boxer/boxer.pl')).


%:- user:ensure_loaded(logicmoo_nlu_ext('candc/src/prolog/nutcracker/nutcracker.pl')).

:- user:call(op(0,xfx,'/')).
:- user:call(op(0,fx,'-')).
:- user:call(op(200,fy,'-')).
:- user:call(op(500,yfx,'-')).
:- user:call(op(600,xfy,':')).
:- user:call(op(400,yfx,'/')).
