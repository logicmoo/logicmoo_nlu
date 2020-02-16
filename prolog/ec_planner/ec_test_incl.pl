
%:- consult(eventCalculusPlanner).
%:- consult(planner19a).
%:- consult(planner115).
%:- consult(ec_common).

:- consult(ec_planner_dmiles).

testing_msg(_).

:- discontiguous do_test/1.
:- multifile do_test/1.
:- dynamic(do_test/1).
                          
:- style_check(-singleton).

% :- use_module('./ec_loader').




