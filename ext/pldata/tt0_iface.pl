:- module(tt_iface,[prim_acts/1]).


:- if(\+ (exists_file('tt0_00022_cycl.qlf'))).
:- format(user_error,'~NQuickload Compiling (qcompile/1) tt0_00022_cycl.qlf (this may take 60-120 seconds the very first time) ... ~n',[]),
   prolog_statistics:time(load_files(tt0_00022_cycl,[qcompile(auto)])),
   % prolog_statistics:time(qcompile(tt0_00022_cycl)),
   format(user_error,'~NMade tt0_00022_cycl.qlf ~n',[]).
:- endif.


:- if((exists_file('tt0_00022_cycl.qlf'))).

:- format(user_error,'~NLoading tt0_00022_cycl.qlf  ... ~n',[]).
:- reexport('tt0_00022_cycl.qlf').

:- else.
:- format(user_error,'~NMissing tt0_00022_cycl.qlf  ... ~n',[]).

:- if(exists_source(tt0_00022_cycl)).
:- format(user_error,'~NLoading tt0_00022_cycl instead  ... ~n',[]).
:- reexport(tt0_00022_cycl).
:- endif.

:- endif.

% :- reexport(ac_xnl_iface).
% :- reexport(clex_iface).

prim_acts(Z):- ttholds(_,Y,primitive_action_tt),(ttholds(_,Z,Y)*->true; Z=Y).
%prim_acts(Z):- ttholds(_,Y,primitive_action_tt),(ttholds(_,Z,Y)*->true; Z=Y).

:- export(prim_acts/1).
