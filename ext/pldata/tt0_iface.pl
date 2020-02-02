:- module(tt_iface,[]).

:- if(\+ (exists_file('tt0_00022_cycl.qlf'))).
:- format(user_error,'~NLoading tt0_00022_cycl.qlf  ... ~n',[]).
:- time(load_files(tt0_00022_cycl,[qcompile(auto)])).
:- endif.

:- reexport(tt0_00022_cycl).

:- reexport(ac_xnl_iface).
:- reexport(clex_iface).

prim_acts(Z):- ttholds(_,Y,primitive_action_tt),(ttholds(_,Z,Y)*->true; Z=Y).
prim_acts(Z):- ttholds(_,Y,primitive_action_tt),(ttholds(_,Z,Y)*->true; Z=Y).

:- export(prim_acts/1).


end_of_file.


