/*
% NomicMUD: A MUD server written in Prolog
%
% Some parts used Inform7, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
% 
% July 10,1996 - John Eikenberry 
% Copyright (C) 2004 Marty White under the GNU GPL
% 
% Dec 13, 2035 - Douglas Miles
%
%
% Logicmoo Project changes:
%
% Main file.
%
*/

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
% :- ensure_loaded('adv_eng2cmd').
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


cmdalias(d, down).
cmdalias(e, east).
cmdalias(i, inventory).
cmdalias(l, look).
cmdalias(n, north).
cmdalias(s, south).
cmdalias(u, up).
cmdalias(goto, go).
cmdalias(w, west).
cmdalias(x, examine).
cmdalias(z, wait).
cmdalias(a, auto).

cmdalias(whom,who).
cmdalias(whois,who).

cmdalias(turn, switch).
cmdalias(flip, switch).

preposition(_,P) :- notrace(member(P, [at, down, in, inside, into, of, off, on, onto, out, over, to, under, up, with])).

preposition(_Other, P) :-
 member(P, [of, beside]).

compass_direction(D) :- 
 member(D, [north, south, east, west, up, down]).
maybe_compass_direction(D, Actual) :- (cmdalias(D,Actual);D=Actual), compass_direction(Actual).

reflexive(W) :- member(W, [self, me, myself , i]). % 'i' inteferes with inventory

strip_noise_words([to|Tokens], NewTokens) :- strip_noise_words(Tokens, NewTokens).
strip_noise_words(Tokens, NewTokens) :-
 findall(Token,
   ( member(Token, Tokens),
   \+ member(Token, ['please', 'the', 'at', 'a', 'an', 'some', 'thee'])),
   NewTokens).

convert_reflexive_self(Agent, Words, NewWords) :-
 % Substitute Agent for 'self'.
 findall(Token,
   ( member(Word, Words),
   ( reflexive(Word), Token = Agent;
    Token = Word )),
   NewWords).



% -- parse(Doer, WordList, ActionOrQuery, Memory)
parse_command(_Self, NotList, Action, _Memory) :- \+ is_list(NotList), !, Action = NotList.
parse_command(Self, Tokens, Action, Memory) :- 
 (Tokens = [_] -> Tokens2 = Tokens ; strip_noise_words(Tokens, Tokens2)),
 if_tracing((dmsg(parse_command(Self, Tokens -> Tokens2)))),
 parse2logical(Self, Tokens2, Action, Memory).

:- discontiguous(parse2logical/4).

% %%%%%%%%%%%%%%
% parser tracing            
% %%%%%%%%%%%%%%
parse2logical(_Self,  NotList, Action, _) :- \+ is_list(NotList), !, Action = NotList.
parse2logical(_Self, [NonAtom], Action, _) :- \+ atom(NonAtom), !, Action=NonAtom.
parse2logical(Self, [rtrace|Args], Action) :- Args\==[], !, rtrace(parse2logical(Self, Args, Action)).
parse2logical(Self, [cls|Args], Action) :- Args\==[], !, cls, notrace(parse2logical(Self, Args, Action)).

parse2logical(Self, [wait], wait(Self), _Mem) :- !.

parse2logical(Self, Tokens, Action) :-  phrase(parse_imperative(Self, Action),Tokens, []).


% %%%%%%%%%%%%%%
% Introspection
% %%%%%%%%%%%%%%

self_prop(agent,mem,memory).
self_prop(object,props,props).

parse_imperative(Self, inspect(Self,getprop(Target,Memory))) --> [Mem], {self_prop(Mem, Memory, Type)}, parse_for_optional(Type,Target,Self).


word_next_arg_type(who,agent).
word_next_arg_type(what,object).
word_next_arg_type(where,place).

parse_for_optional(Type, Target, _Else) --> parse_for(Type,Target).
parse_for_optional(_Type, Else,  Else) --> [].

parse_for(agent,Target) --> optional_agent(Target).
parse_for(object,Target) --> parse2object(Target).
parse_for(_place, Dest)--> in_agent_model(Dest, h(_, _, Dest)).
parse_for(place, Dest)--> in_agent_model(Dest, h(_, Dest, _)).
parse_for(place, Dest)--> parse2object(Dest).
parse_for(_,Target) --> parse2object(Target).


parse_imperative(Self, recall(Self,Who,Target)) --> [Whom], {word_next_arg_type(Whom, Type)}, parse_for(Type,Target).).


% %%%%%%%%%%%%%%
% Communication
% %%%%%%%%%%%%%%
parse_imperative(Self, emote(Self, Action)) --> [emote], verb_phrase(Subj, Action).

parse_imperative(Self, say(Self, Text)) --> [say], any_text(Text).
parse_imperative(Self, emote(Self, Say, Dest, Text)) --> [Ask], {ask_to_say(Ask,Say)}, parse2object(Dest), any_text(Text).

ask_to_say(Ask,say):- arg(_,v(ask,say,request,tell,talk),Ask).

% %%%%%%%%%%%%%%
% Communication
% %%%%%%%%%%%%%%
parse_imperative(Self, emote(Self, say, Dest, Text)) --> parse_for(agent, Dest), [','],  any_text(Text).


parse2logical(Self, Words, Action) :- 
 fail, 
 Words \== [i], % Dont interfere with inventory
 % If not talking to someone else, substitute Agent for 'self'.
 append(Before, [Self|After], Words),
 reflexive(Self),
 thought(inst(Agent)),
 append(Before, [Agent|After], NewWords),
 parse2logical(Self, NewWords, Action).
% %%%%%%%%%%%%%%
% Movement
% %%%%%%%%%%%%%%

flee_run_escape(flee).
flee_run_escape(run).
flee_run_escape(escape).

% get [out,in,..] Object
parse2logical(Self, [get, Prep, Object], goto_prep_obj(Self, walk, Prep, Object), _Mem) :- preposition(spatial, Prep).
% n/s/e/w/u/d
parse2logical(Self, [Dir], Logic):- maybe_compass_direction(Dir,Actual), !, must_mw1(txt2goto(Self, walk, [Actual], Logic)).
% escape/flee/run .. 
parse2logical(Self, [Escape|Info], Logic):- flee_run_escape(Escape), !, must_mw1(txt2goto(Self, run, Info, Logic)).
% out/into
parse2logical(Self, [Prep], Logic) :- preposition(spatial, Prep), !, must_mw1(txt2goto(Self, walk, [Prep], Logic)).
% go .. 
parse2logical(Self, [go|Info], Logic):- !, must_mw1(txt2goto(Self, walk, Info, Logic)).
% outside
parse2logical(Self, [ExitName], Logic) :- 
 in_agent_model(Self, h(exit(ExitName), _, _)), txt2goto(Self, walk, [ExitName], Logic),!.
parse2logical(Self, [ExitName], go_dir(Self, walk, ExitName)) :- 
  in_agent_model(Self, h(exit(ExitName), _Place, _)).


parse2logical(Self, [get, Prep| More], Logic) :- preposition(spatial, Prep), !, must_mw1(txt2goto(Self, walk, [Prep| More], Logic)).

% x shelf~1
% go on shelf~1
                           
txt2goto(Self, run, [], go_dir(Self, run, escape), _Mem) :- !.
txt2goto(Self, Walk,[to, Prep| More], Logic) :- !, txt2goto(Self, Walk, [Prep| More], Logic).
txt2goto(Self, Walk,[Alias| More], Logic) :- cmdalias(Alias,Dir), !, txt2goto(Self, Walk,[Dir| More], Logic).

% go in kitchen
% go in car
txt2goto(Self, Walk,[ Prep, Dest], goto_prep_obj(Self, Walk, Prep, Where)) :- 
 preposition(spatial, Prep),!,
 must_mw1(txt2place(Dest, Where)).

% go north
txt2goto(Self, Walk,[ ExitName], go_dir(Self, Walk, ExitName)) :-
 in_agent_model(Self, h(exit(ExitName), _, _)).
% go escape
txt2goto(Self, Walk,[ Dir], go_dir(Self, Walk, Dir), _Mem) :- (compass_direction(Dir);Dir==escape),!.
txt2goto(Self, Walk,[ Dir], go_dir(Self, Walk, Dir), _Mem) :- (Dir=down;Dir==up),!.
% go [out,in,..] 
txt2goto(Self, Walk,[ Prep], go_dir(Self, Walk, Prep), _Mem) :- preposition(spatial, Prep).
% go kitchen
txt2goto(Self, Walk, Dest, goto_loc(Self, Walk, Where)) :-
 txt2place(Dest, Where).



% %%%%%%%%%%%%%%
% Take
% %%%%%%%%%%%%%%
parse2logical(Self, [get| Args], TAKE) :- parse2logical(Self, [take| Args], TAKE).
parse2logical(Self, [take, Object], take(Self, Object), _Mem) :- !.

% %%%%%%%%%%%%%%
% Give
% %%%%%%%%%%%%%%
parse2logical(Self, [give, Object, to, Recipient], give(Self, Object, Recipient), _Mem):- !.
parse2logical(Self, [give, Recipient, Object ], give(Self, Object, Recipient), _Mem):- !.

% %%%%%%%%%%%%%%
% Flip Switches
% %%%%%%%%%%%%%%
parse2logical(Self, [light, Thing], Result):- !, parse2logical(Self, [switch, on, Thing], Result).
parse2logical(Self, [switch, Thing, OnOff], Result) :- preposition(_, OnOff), !, parse2logical(Self, [switch, OnOff, Thing], Result).

parse2logical(Self, [switch, OnOff| TheThing], switch(Self, OnOff, Thing)) :- parse2object(TheThing, Thing),
 preposition(switch, OnOff).

%parse2logical(Self, [open| Thing], Result) :- parse2logical(Self, [switch, open| Thing], Result).
%parse2logical(Self, [close| Thing], Result) :- parse2logical(Self, [switch, close| Thing], Result).


% %%%%%%%%%%%%%%
% Dig
% %%%%%%%%%%%%%%
parse2logical(Agent, [dig, Hole], dig(Agent, Hole, Where, Tool)) :-
 in_agent_model(Agent, inst(Agent)),
 in_agent_model(Agent, h(_, Agent, Where)),
 Tool=shovel.

parse2logical(Self, [CmdAlias|Tail], Action) :-
 cmdalias(CmdAlias, Verb),
 parse2logical(Self, [Verb|Tail], Action).

% parse2logical(Self, [look], look(Agent, Spatail)) :- parse2object(Tail, Agent).

parse2logical(Self, [TheVerb|Args], Action) :- fail,
 quietly_talk_db([F,Verb|Forms]),
 notrace(F==intransitive;F==transitive),
 member(TheVerb,Forms),!,
 parse2logical(Self, [Verb|Args], Action).

parse2logical(Self, [TheVerb|Args], Action) :- fail,
 clex_verb(TheVerb,Verb,_,_),
 Verb\==TheVerb,!,
 parse2logical(Self, [Verb|Args], Action).

parse2logical(_Self, [Verb|Args], Action) :- verbatum_anon(Verb), !,
 Action =.. [Verb|Args].

parse2logical(Self, [Verb], Action) :- Action=..[Verb,Self], !.

parse2logical(Self, [Verb|TheArgs], Action) :-
 args2logical(TheArgs, Args), wdmsg( TheArgs->Args), !, 
 Action =.. [Verb,Self|Args].

verbatum_anon(Verb):- member(Verb, [prolog, make, cls, mem, types, props, ls, debug, cd, pwd, 
 agent, create, delprop, destroy, echo, halt, getprops,
 memory, model, path, properties, setprop, state, state, perceptq, help, threads,
 spy,nospy,call,
 rtrace, nortrace, 
 trace, notrace %, %whereami, whereis, whoami
 ]).

optional_object(agent, Agent)--> [],{thought(inst(Agent))}, !.
optional_object(agent, Agent)--> [],{thought(inst(Agent))}, !.
optional_agent(List,Agent):- parse2object(List,Agent).

parse2object(List,Agent):- append(LList,[R],List),member(R,[(?),(.)]),!,parse2object(LList,Agent).
parse2object([am, i], Agent):- thought(inst(Agent)), !.

parse2object([BE| List], Agent):- fail, quietly_talk_db([_,BE,is|_More]), parse2object(List,Agent),!.
parse2object([HAS| List], Agent):- fail, quietly_talk_db([_,have|HASHAVE]), member(HAS,HASHAVE), !, parse2object(List,Agent).
parse2object([Det| Type], TheThing):-
 (nth0(_N, [(unknown), the, thee, old, some, a], Det)), !,
 parse2object(Type, TheThing).

parse2object(Type, TheThing):-
 show_call(as1object(Type, TheThing)), !.



as1object([TheThing], Thing):- !, nonvar(TheThing), as1object(TheThing, Thing).
as1object(TheThing, Thing, _Mem):- atom(TheThing), atom_number(TheThing,Thing),!.
as1object(TheThing, Thing):- obj_props(M,Thing,Props),(same_word(TheThing,Thing)->true;(sub_term(Sub,Props),(atom(Sub);string(Sub)),same_word(TheThing,Sub))).
as1object(TheThing, Thing, _Mem):- \+ atom(TheThing),!, TheThing=Thing.
as1object(TheThing, Thing):- atom_of(inst, TheThing, Thing),!.
as1object(TheThing, Thing):- get_advstate(Mem2),Mem2\=M,as1object(TheThing, Thing, Mem2).
% as1object(Thing, Thing, _Mem).

to_string_lc(S,L):- atomic(S), S\=[], string_lower(S,L).
to_string_lc(S,L):- is_list(S), maplist(to_string_lc,S,W),atomics_to_string(W,' ',L).
same_word(T1,T2):- to_string_lc(T1,S1),to_string_lc(T2,S2),S1=S2.

same_props(Props1,Props1):- !.
same_props(Props1,Props2):- each_prop(Props1,Prop1),each_prop(Props2,Prop2),same_prop(Prop1,Prop2).
each_prop(Props,Prop):- is_list(Props),!,member(PropsZ,Props),each_prop(PropsZ,Prop).
each_prop(PropC,Prop):- compound(PropC),PropC=Prop.


obj_props(M,Obj,Props):- var(M),!,get_advstate(Mem2),obj_props(Mem2,Obj,Props).
obj_props(M,Obj,Props):- nonvar(Obj),!,obj_props(M,Obj2,Props),Obj=@=Obj2.
obj_props(M,Obj,Props):- nonvar(Props),!,obj_props_v(M,Obj,Props2),same_props(Props,Props2).
obj_props(M,Obj,Props):- obj_props_v(M,Obj,Props).

obj_props_v(M,_,_):- \+ compound(M),!,fail.
obj_props_v(M,Obj,Props):- is_list(M),!,member(E),obj_props_v(E,Obj,Props).
obj_props_v(props(Obj,Props),Obj,Props):- !.
obj_props_v(percept_props(_,_,Obj,_,Props),Obj,Props):- !.
obj_props_v(Term,Obj,Props):- arg(_,Term),obj_props_v(M,Obj,Props).

same_prop(X,Y):- X=@=Y,X=Y.

args2logical(TheArgs, [Thing]):- parse2object(TheArgs, Thing),!. % TheArgs\==[Thing],!.
args2logical(TheArgs, TheArgs).
 
quietly_talk_db(L):- notrace(talk_db(L)).

is_kind(Thing,inst):- get_advstate(M), member(props(Thing,_)).
is_kind(Thing,type):- get_advstate(M), member(type_props(Thing,_)).
%is_kind(Thing,inst):- get_advstate(M), \+ member(type_props(Thing,_)).

atom_of(Kind,TheThing,Thing):- sub_term_atom(Thing),is_kind(Thing,Kind),TheThing==Thing,!.
atom_of(Kind,TheThing,Thing):- sub_term_atom(Thing),is_kind(Thing,Kind),atom_concat(TheThing,_,Thing),!.
atom_of(Kind,TheThing,Thing):- sub_term_atom(Thing),is_kind(Thing,Kind),atom_concat(_,TheThing,Thing),!.
atom_of(Kind,TheThing,Thing):- sub_term_atom(Thing),is_kind(Thing,Kind),atom_contains(Thing,TheThing),!.


sub_term_atom(Term, TermO):- \+ compound(Term), !, atom(Term), TermO = Term.
sub_term_atom(Term, [Head|_]) :- nonvar(Head),
 sub_term_atom(Term, Head).
sub_term_atom(Term, [_|Tail]) :- !, nonvar(Tail),
 sub_term_atom(Term, Tail).
sub_term_atom(Term, T) :-
 \+ is_list(T),
 T =.. List,
 sub_term_atom(Term, List).

