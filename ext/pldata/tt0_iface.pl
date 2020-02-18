:- module(tt_iface,[prim_acts/1]).



% :- reexport(ac_xnl_iface).
% :- reexport(clex_iface).

prim_acts(Z):- ttholds(_,Y,primitive_action_tt),(ttholds(_,Z,Y)*->true; Z=Y).
%prim_acts(Z):- ttholds(_,Y,primitive_action_tt),(ttholds(_,Z,Y)*->true; Z=Y).

:- export(prim_acts/1).


:- nl_iface:rexport_qlf(tt_iface,tt0_00022_cycl).


