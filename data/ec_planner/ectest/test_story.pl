% init_why(after('/opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/marty_white/planner/ec_reader.pl')).
% init_why(after('/opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/marty_white/planner/ec_reader.pl')).
% init_why(program).
% ec_to_pl(do_ec_load, current_output, 'ectest/TestBoxRoom.e').
% ectest/TestBoxRoom.e:1
% ec_in_to_pl(do_ec_load, current_output, <stream>(0x55638dfa3da0)).
% ec_io(do_ec_load, <stream>(0x55638dfa3da0)).
% ectest/TestBoxRoom.e:1
:- module(ec).

:- include('../ec_test_incl').
:- cls.

:- discontiguous do_test/1.

do_test_gen(What) :- ec_current_domain_db(fluent(P)),functor(P,F,A),functor(What,F,A).

local_demo(L):- local_demo(L,R),dbginfo('R'=R).

local_demo(L,R):-  dbginfo('L'=L),abdemo_special(depth(0,10),L,R),!.
local_demo(L,R):-  dm('FAILED:',(L:-R)),trace,!,abdemo_special(depth(0,10),L,R).


dm(TF,P):- format('~N~n~w ~p.~n',[TF,P]).

/*

These tests Pass


*/
do_test(test_story_1) :-  local_demo([holds_at(directlyIn(lisa,livingRoom),t)]).
do_test(test_story_2) :-  local_demo([holds_at(inRoom(lisa,livingRoom),t)]).
do_test(test_story_3) :-  local_demo([holds_at(directlyIn(lisa,kitchen),t)]).
do_test(test_story_4) :-  local_demo([holds_at(inRoom(lisa,kitchen),t)]).
do_test(test_story_5) :-  local_demo([holds_at(directlyIn(box,kitchen),t)]).


:- cvt_e_pl('Story1.e').

:- consult('Story1.pel').

:- listing(ec_current_domain_db).


