
:- use_module('$REGULUS/PrologLib/utilities').
:- use_module('$REGULUS/PrologLib/prolog_json_compact').
:- use_module('$REGULUS/PrologLib/compatibility_charsio').

go1 :-
	go(a).
go2 :-
	go('"a"').
go3 :-
	go('明').

go(Term) :-
	 prolog_json(Term, JSON1),
	 format('~NJSON1 = ~s~n', [JSON1]),
	 	 
	 format_to_chars('~s', [JSON1], JSON3),
	 format('~NJSON3 = ~s~n', [JSON3]),
	 	 
	 prolog_json(JSON6, JSON3),
	 format('~NJSON6 = ~q~n~n', [JSON6]),
	 !.

