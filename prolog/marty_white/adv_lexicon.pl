/*
% NomicMUD: A MUD server written in Prolog
% Maintainer: Douglas Miles
% Dec 13, 2035
%
% Bits and pieces:
%
% LogicMOO, Inform7, FROLOG, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
% 
% Feb 20, 2020 - Andrew Dougherty
% Copyright (C) 2004 Marty White under the GNU GPL 
% Sept 20, 1999 - Douglas Miles
% July 10, 1996 - John Eikenberry 
%
% Logicmoo Project changes:
%
%
*/

add_e2c_trans(Eng,Logic):- dbug1(add_e2c_trans(Eng,Logic)).

:- add_e2c_trans("?NP1 exits ?DIR to ?NP2", exit(_DIR, _NP1, _NP2)).

