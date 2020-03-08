/*
% NomicMUD: A MUD server written in Prolog
% Maintainer: Douglas Miles
% Dec 13, 2035
%
% Bits and pieces:
%
% LogicMOO, Inform7, FROLOG, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
%
% Copyright (C) 2004 Marty White under the GNU GPL
% Sept 20, 1999 - Douglas Miles
% July 10, 1996 - John Eikenberry
%
% Logicmoo Project changes:
%
% Main file.
%
*/

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
% :- ensure_loaded('adv_log2eng').
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flag_level_compare(Flag,Prop):-flag(Flag,Was,Was),Prop=..[F|Args],apply(F,[Was|Args]).

xtreme_english :- flag_level_compare(english,>(2)).
any_english :- \+ no_english.
no_english :- flag_level_compare(english,=(0)).
:- ignore(flag(english,0,1)).

pretty :- \+ flag_level_compare(pretty,=(0)).
:- ignore(flag(pretty,0,1)).


same_agent(A,B):- A=@=B.

% A percept or event:
% - is a logical description of what happened
% - includes English or other translations
% - may be queued for zero, one, many, or all agents.
% - may have a timestamp
% queue_percpt(Agent, [Logical, English|_], S0, S9).
% where Logical is always first, and other versions are optional.
% Logical should be a term, like sees(Thing).
% English should be a list.

% Inform notation
% 'c'  character)
% "string" string
% "~"  quotation mark
% "^"  newline
% @   accent composition, variables 00 thru 31
% \   line continuation
% Engish messages need to be printable from various perspectives:
% person (1st/2nd/3rd), tense(past/present)
% "You go south." / "Floyd wanders south."
%  {'$agent $go $1', ExitName }
%  { person(Agent), tense(go, Time), ExitName, period }
%  {'$p $t $w', Agent, go, ExitName}
% "You take the lamp." / "Floyd greedily grabs the lamp."
%  Agent=floyd, {'%p quickly grab/T %n', Agent, grab, Thing }
%    else {'%p take/T %n', Agent, take, Thing }
% %p Substitute parameter as 1st/2nd/3rd person ("I"/"you"/"Floyd").
%   Implicit in who is viewing the message.
%   Pronouns: gender, reflexive, relative, nominative, demonstratve...?
% %n Substitute name/description of parameter ("the brass lamp").
% /T Modify previous word according to tense ("take"/"took").
%   Implicit in who is viewing the message? Context when printed?
% /N Modify previous word according to number ("coin"/"coins").
%   What number?
% %a Article - A or An (indefinite) or The (definite) ?
%
% I go/grab/eat/take
% you go/grab/eat/take
% she goes/grabs/eats/takes
% floyd goes/grabs/eats/takes
%
% eng(subject(Agent), 'quickly', verb(grab, grabs), the(Thing))
% [s(Agent), 'quickly', v(grab, grabs), the(Thing)]

english_directve(quoted(_)).
english_directve(cap(_)).
english_directve(subj(_)).
english_directve(person(_,_)).
english_directve(tense(_,_)).
english_directve(a(_)).
english_directve(the(_)).
english_directve(num(_,_,_)).
english_directve(aux(_)).
english_directve(silent(_)).
english_directve(P):- english_suffix(S), functor(P,S,1).

english_suffix(s).
english_suffix(es).
english_suffix(er).
english_suffix(ed).
english_suffix(ly).
english_suffix(ing).


capitalize([First|Rest], [Capped|Rest]) :- !,
 capitalize(First, Capped).
capitalize(Atom, Capitalized) :-
 atom(Atom), % [] is an atom
 downcase_atom(Atom, Lower),
 atom_chars(Lower, [First|Rest]),
 upcase_atom(First, Upper),
 atom_chars(Capitalized, [Upper|Rest]).

context_agent(Agent, Context):- atom(Context),!,Context=Agent.
context_agent(Agent, Context):-
 declared(agent(Agent), Context), !.
context_agent(Agent, Context):-
 declared(inst(Agent), Context), !.
context_agent(Agent, Context):- \+ is_list(Context),
 action_doer(Context, Agent).


% compile_eng(Context, Atom/Term/List, TextAtom).
% Compile Eng terms to ensure subject/verb agreement:
% If subject is agent, convert to 2nd person, else use 3rd person.
% Context specifies agent, and (if found) subject of sentence.

compile_eng(_Context, _Done, Text) :- assertion(var(Text)),fail.
compile_eng(_Context, Done, '') :- Done == [], !.

compile_eng(Context, [cap(subj(Agent)), aux(be)|More], Person) :- !,
 compile_eng(Context, [cap(subj(Agent)), person(are, is)|More], Person) . 

compile_eng(Context, [AN, Apple|More], Text) :- 
 (AN==a;AN==an),!,
 compile_eng_txt(Context, [Apple|More], TxtApple),
 name(TxtApple,[A|_]),
 char_type(A,to_lower(Vowel)), 
 (vowel(Vowel) -> atom_concat('an ', TxtApple,Text);atom_concat('a ', TxtApple,Text)).
% mu:compile_eng([agent('player~1'),person('player~1')],a(floyd),_64404)
compile_eng(Context, [First|Rest], [First2|Rest2]) :-
 compile_eng(Context, First, First2),
 compile_eng(Context, Rest, Rest2),!.

compile_eng(_Context, aux(be), 'is') :- !.
compile_eng(Context, aux(Can), Text) :- !,compile_eng_txt(Context, Can, Text).
compile_eng(Context, quoted(Can), Out) :- !,compile_eng_txt(Context, Can, Text), atomic_list_concat([' "',Text,'" '],Out).

compile_eng(Context, subj(Agent), Person) :-
 context_agent(Agent, Context),
 declared(person(Person), Context),!.
compile_eng(Context, subj(Other), Compiled) :- !,
 compile_eng(Context, Other, Compiled).
compile_eng(Context, Agent, Person) :-
 context_agent(Agent, Context),
 declared(person(Person), Context).
compile_eng(Context, person(Second, _Third), Compiled) :-
 declared(subj(Agent), Context),
 context_agent(Agent, Context),
 compile_eng(Context, Second, Compiled).
compile_eng(Context, person(_Second, Third), Compiled) :-
 compile_eng(Context, Third, Compiled).
compile_eng(Context, tense(Verb, Tense), Compiled) :-
 verb_tensed(Context, Verb, Tense, Compiled).
compile_eng(Context, cap(Eng), Compiled) :-
 compile_eng(Context, Eng, Lowercase),
 capitalize(Lowercase, Compiled).
compile_eng(_Context, silent(_Eng), '').

compile_eng(_Context, extra_verbose_eng(_Eng), '...' ):- debugging(noverbose,true),!.
compile_eng(Context, extra_verbose_eng(Eng), O ):- 
 compile_eng_txt(Context, Eng, Compiled), pretty,
 format(atom(O)," /* \u001b[31m~w\u001b[0m */ ",[Compiled]), !.
compile_eng(Context, extra_verbose_eng(Eng), '...verbose...'(Compiled) ):- 
 compile_eng_txt(Context, Eng, Compiled).

compile_eng(Context, Inst, TheThing):- atom(Inst),!, must_mw1(compile_eng_atom(Context, Inst, TheThing)).

/*compile_eng(Context, String, Text):- string(String),
 name(Atom, String), compile_eng(Context, Atom, Text).
*/
compile_eng(_Context, Inst, Text):- \+ compound(Inst),!, format(atom(Text),'~w',[Inst]).

compile_eng(Context, s(Word), Textually) :- % TODO make actually plural
 compile_eng_txt(Context, Word, Textual),
 atom(Textual),
 atom_concat(Textual,"s", Textually).

compile_eng(Context, Wordly, Textually) :- functor(Wordly,S,1), english_suffix(S),
 Wordly =..[S, Word],
 compile_eng_txt(Context, Word, Textual),
 atom(Textual), add_suffix(Textual, S, Textually),!.

compile_eng(Context, DetWord, AThing) :-
 compound(DetWord), DetWord=..[Det, Word],
 member(Det, [the, some, a, an, '']),
 compile_eng(Context, [Det, Word], AThing),!.

/*compile_eng(Context, Prop, Text):- \+ atomic(Prop),
 logic2eng(you,Prop,TextMid),!,
 compile_eng(Context,['\n'|TextMid],Text), !.
*/
compile_eng(_Context, Prop, Prop).




compile_eng_atom(Context, Inst, TheThing):- 
  inst_of(Inst, Type, N), N\==0, !,
 (nth0(N, [(unknown), '', the, thee, old, some, a], Det) -> true; atom_concat('#',N,Det)),
 compile_eng(Context, [Det, Type], TheThing).

compile_eng_atom(Context, Atom, Text):- fail, atom(Atom), must_mw1(atomic_list_concat(ABC,' ',Atom)),
 ABC=[A,B|C],!, compile_eng_txt(Context, [A,B|C], Text).
%compile_eng_atom(Context, Word, Textually) :- atom(Word), atom_length(Word,L),L>3, atom_contains(Word,' '), into_text80(Word,Words),!,compile_eng_txt(Context, Words, Textually).
compile_eng_atom(Context, Word, Textually) :- atom(Word), atom_length(Word,L),L>3, 
  atom_contains(Word,'_'),\+ atom_contains(Word,'('),atomic_list_concat(Words,'_',Word),!,compile_eng_txt(Context, Words, Textually).
compile_eng_atom(_Context, Inst, Text):- \+ compound(Inst),!, format(atom(Text),'~w',[Inst]).


vowel(a). vowel(e). vowel(i). vowel(o). vowel(u).

verb_tensed(Context, Verb, past, Compiled):- 
 compile_eng_txt(Context, Verb, Word),
 pasitfy_word(Word, Compiled).
verb_tensed(Context, Verb, _Tense, Compiled):- 
 compile_eng_txt(Context, Verb, Compiled).

add_suffix(Textual, es, Textually):- atom_concat(Textual, s, Textually). 
add_suffix(Textual, S, Textually):- atom_concat(Textual, S, Textually). 

pasitfy_word(take,took).
pasitfy_word(make,made).
pasitfy_word(move,moved).
pasitfy_word(eat,ate).
pasitfy_word(Verb,Compiled):- \+ atom(Verb),!,Compiled=Verb.
pasitfy_word(Verb,Compiled):- atomic_concat(Verb,'ed', Compiled).


nospace(_, ',').
nospace(_, ';').
nospace(_, ':').              
nospace(_, '.').
nospace(_, '?').
nospace(_, '!').
nospace(_, '\'').
nospace('\'', _).
nospace(_, '"').
nospace('"', _).
nospace(_, Letter) :- char_type(Letter, space).
nospace(Letter, _) :- char_type(Letter, space).

no_space_words('', _).
no_space_words(_, '').
no_space_words(W1, W2) :-
 atomic(W1),
 atomic(W2),
 atom_chars(W1, List),
 last(List, C1),
 atom_chars(W2, [C2|_]),
 nospace(C1, C2).

insert_spaces([W], [W]).
insert_spaces([W1, W2|Tail1], [W1, W2|Tail2]) :-
 notrace(no_space_words(W1, W2)),
 !,
 insert_spaces([W2|Tail1], [W2|Tail2]).
insert_spaces([W1, W2|Tail1], [W1, ' ', W3|Tail2]) :-
 insert_spaces([W2|Tail1], [W3|Tail2]).
insert_spaces([], []).


make_atomic(_, Atom, Atom) :- atomic(Atom), !.
make_atomic(Context, Some, Text):- is_list(Some),
  maplist(make_atomic(Context), Some, Stuff), atomic_list_concat(Stuff,' ',Text),!. 

make_atomic(Context, Logic, Text):- fail, Logic =.. [F|Some],
  maplist(logic2english(Context), Some, Stuff),
  Term =.. [F|Stuff],
  term_to_atom(Term, Text),!.
make_atomic(_,Term, Atom) :-  format(atom(Atom), '~p',[Term]),!.
make_atomic(_,Term, Atom) :-  term_to_atom(Term, Atom),!.

eng2txt(Agent, _Person, LogicalEnglish, Text) :- compound(LogicalEnglish), \+ is_list(LogicalEnglish),!,  
  logic2english(Agent, LogicalEnglish, Text),!.
eng2txt(Agent, Person, LogicalEnglish, Text) :- \+ is_list(LogicalEnglish),!,  
  eng2txt(Agent, Person, [LogicalEnglish], Text), !.
eng2txt(Agent, Person, Eng, Text) :- assertion(nonvar(Eng)),
 % Find subject, if any.
 quietly((
  findall(subj(Subject), findterm(subj(Subject), Eng), Context),
  list_to_set([agent(Agent), person(Person)| Context],NewContext),
  compile_eng_txt(NewContext, Eng, Text))).
eng2txt(_Agent, _Person, Text, Text).

compile_eng_txt(_Context, Done, '') :- Done == [], !.
compile_eng_txt(Context, [First], Text):- compile_eng_txt(Context, First, Text),!.
compile_eng_txt(Context, Eng, Text):- 
 flatten([Eng],FEng),
 compile_eng_txt_pt2(Context, FEng, FText), 
 format(atom(Text),'~w',FText),!.

% Compile recognized structures.
compile_eng_txt_pt2(Context, EngIn, Text) :- 
 assertion(nonvar(EngIn)),
 flatten([EngIn], Eng),
 maplist(compile_eng(Context), Eng, Compiled),
 % Flatten any sub-lists.
 flatten([Compiled], FlatList),
 % Convert terms to atom-strings.
 findall(Atom, (member(Term, FlatList), make_atomic(Context, Term, Atom)), AtomList),
 findall(Atom2, (member(Atom2, AtomList), Atom2\=''), AtomList1),
 grammar_check(Context,AtomList1,AtomList2),
 % Add spaces.
 bugout3('insert_spaces(~w)~n', [AtomList2], printer),
 insert_spaces(AtomList2, SpacedList),
 % Return concatenated atoms.
 concat_atom(SpacedList, Text),!.


grammar_check(_Context, [], []).
grammar_check(Context, [AN, Apple|More], Text) :- fail,
 (AN==a;AN==an),!,
 compile_eng_txt(Context, [Apple|More], TxtApple),
 name(TxtApple,[A|_]),
 char_type(A,to_lower(Vowel)), 
 (vowel(Vowel) -> atom_concat('an ', TxtApple,Text);atom_concat('a ', TxtApple,Text)).

grammar_check(Context, [Word|More], [Word|MoreN]) :- 
 grammar_check(Context, More, MoreN).

grammar_check(_Context, A, A).

 
list2eng(Obj, Some, English):-
 list2eng([], Obj, Some, English).

punct_or(Punct,Else,Value):- member(Else=Value,Punct)-> true ; Else=Value.

list2eng(Punct, Obj, Some, English):-  is_list(Some),!,
  maplist(logic2english(Obj),Some,SomeUnused),
  exclude(unused_text,SomeUnused,SomeGone),
  list2eng_a(Punct, Obj, SomeGone, English).
list2eng(Punct, Obj, Some, English) :- 
  punct_or(Punct,logic2eng,Log2Eng),
  call(Log2Eng, Obj, Some, English),!.

unused_text([]).
unused_text(unused(_)).
unused_text('').
unused_text([A]):- nonvar(A),!,unused_text(A).

list2eng_a(Punct,_Obj, [], [Nothing]):- punct_or(Punct,'<nothing>',Nothing).
:- nb_setval(list2eng, []).
list2eng_a(_Punct, Obj, Some, [' ['| English]) :- nb_current(list2eng,D), number(D),!, 
 list2eng_e(['.'=']','and'=','], Obj, Some, English), !.
list2eng_a(Punct, Obj, Some, English) :- nb_current(list2eng,D), b_setval(list2eng,1), 
 list2eng_e(Punct, Obj, Some, English), !,
 b_setval(list2eng,D).


list2eng_e(Punct, Obj, [Single], English) :- !,
 punct_or(Punct,logic2eng,Log2Eng),
 call(Log2Eng, Obj, Single, Named),
 punct_or(Punct,'.',PERIOD),
 flatten([Named, PERIOD], English).

list2eng_e(Punct, Obj, [Last2, Last1], English) :- 
 punct_or(Punct,logic2eng,Log2Eng),
 call(Log2Eng, Obj, Last2, Named2),
 list2eng(Obj, Last1, Named1),
 punct_or(Punct,'and',AND),
 punct_or(Punct,'.',PERIOD),
 flatten([Named2, AND, Named1, PERIOD], English).

list2eng_e(Punct, Obj, [Some| More], English) :- 
 punct_or(Punct,logic2eng,Log2Eng),
 call(Log2Eng, Obj, Some, Named),
 punct_or(Punct,',',COMMA),
 list2eng_e(Punct, Obj, More, MoreNamed),
 flatten([Named, COMMA, MoreNamed], English).

list2eng_e(Punct, Obj, Some, English) :- 
 punct_or(Punct,logic2eng,Log2Eng),
 call(Log2Eng, Obj, Some, English),!.
 

timestamped_pred(holds_at).

logic2eng( Obj, Prop, English):- 
 \+ ground(Prop), copy_term(Prop,Prop2),!,
 mw_numbervars(Prop2,55,_), logic2eng(Obj, Prop2, English).

logic2eng(_Obj, desc = (Out), [' "',Out,'"']):- !.
logic2eng(Obj, Some, English):- \+ attvar(English), \+ pretty, dif(English,[]), !, logic2eng(Obj, Some, English).
logic2eng(Context, Inst, TheThing):- atom(Inst), inst_of(Inst, Type, N), !,
 (nth0(N, [(unknown), '', thee, old, some, a], Det) -> true; atom_concat('#',N,Det)),
 compile_eng_txt(Context, [Det, Type], TheThing).

%logic2eng( Obj, Prop, [cap(N),of,O, aux(be), Value]):- Prop =..[N,O, V], list2eng(Obj, V, Value).

% logic2eng(Obj, Prop, English):- Prop =..[N, Obj1, A| VRange],Obj1==Obj,Prop2 =..[N, A| VRange], logic2eng( Obj, Prop2, English).
%logic2eng(_Obj, Prop, [String]):- compound(Prop), !, String=''. % format(atom(String), ' \n {{ ~q. }}\n ', [Prop]), !.

/*logic2eng(_Obj, Prop, [String]):- compound(Prop), \+ xtreme_english, !, format(atom(String), ' {{ ~q }} ', [Prop]), !.
logic2eng( Obj, Prop, [cap(N), Value, aux(be), English]):- Prop =..[N, V| Range],
 logic2eng(Obj, V, Value),
 maplist(logic2eng(Obj), Range, English).
%logic2eng(_Obj, Prop, [String]):- format(atom(String), '~w', [Prop]), !.
*/

%logic2eng(Obj, Var, [Text]):- var(Var),!, format(atom(Text),'{{~q}}',[logic2eng(Obj, Var)]).
logic2eng(_Obj, '$VAR'(Prop), English):- format(atom(English), ' ?VAR-~w', [Prop]), !.
logic2eng(_Obj, English, English):- english_directve(English),!.
logic2eng(_Obj, [English|Rest], [English|Rest]):- english_directve(English),!.
logic2eng(_Obj, [], []).
logic2eng(Context, extra_verbose_eng(Eng), '...verbose...'(Compiled) ):- 
 compile_eng_txt(Context, Eng, Compiled).

logic2eng(Context,single_event(Evt),Eng):- !, logic2eng(Context,Evt,Eng). 
logic2eng(_Context, '<mystery>'(Why,Prep,About), [a,(mystery),because,quoted([Prep,About]),(','),aux(be),(Why)]):- !.



logic2eng(Obj, [Prop|Tail], Text) :- !,
 must_mw1((logic2eng(Obj, Tail, UText2) ->
 flatten([UText2], Text2),
 must_mw1(logic2eng(Obj, Prop, UText1)) -> 
 flatten([UText1], Text1),
 append_if_new(Text1, Text2, Text))), !.


logic2eng(Obj, HWestFromTo_At, [ Ago | Info]):- 
  HWestFromTo_At =.. [H,West,From|To_At],
  timestamped_pred(H),
  append(To,[At],To_At), number(At),!,
  logic2eng(Obj, ago(At), Ago),
  HWestFromTo =.. [H,West,From|To],
  logic2eng(Obj, HWestFromTo, Info).

logic2eng(_Obj, Prop, [String]):- compound(Prop), no_english, !, format(atom(String), '~q', [Prop]), !.
logic2eng( Obj, ~(Type), ['(','logically','not','(',Out, '))']):- must_mw1(logic2eng(Obj, Type, Out)), !.

logic2eng(_Context, time_passes(Agent), ['Time passes for',Agent,'.']).

logic2eng(_Context, percept(_Agent, How, _, _), ''):- How == know,!.

logic2eng(_Context, percept(_Agent, see, Depth, props(Object,[shape=What])),[]):- 
  (Depth == 1;Depth == 2), atom(Object),atom_contains(Object,What),!.

logic2eng(_Context, percept(Agent, see, Depth, props(Object,[shape=What])),  extra_verbose_eng(percept(Agent, see, Depth, props(Object,[shape=What])))).

logic2eng(Context,  percept(_Agent, _, _Depth, exit_list(Relation, Here, Exits)), ['Exits',Relation,Here,' are:', ExitText, '\n']):-  list2eng(Context, Exits, ExitText).

logic2eng(_Context, percept(_Agent,  Sense, Depth, child_list(Object, Prep, '<mystery>'(Closed,_,_))), extra_verbose_eng([Object, aux(be), Closed, from, ing(Sense), cap(Prep)]) ):- Depth \= depth(3).
logic2eng(_Context, percept(_Agent, _Sense, Depth, child_list(Object, Prep, [])), extra_verbose_eng([nothing,Prep,Object]) ):- Depth \= 1.

logic2eng(Context,  percept( Agent, Sense, _Depth, child_list(Here, Prep, Nearby)), 
    [cap(subj(Agent)),  es(Sense), Prep, Here, ':'  | SeeText]):- 
 select_from(Agent, Nearby, OthersNearby),!,  list2eng(Context, OthersNearby, SeeText).

logic2eng(Context, percept( Agent, Sense, _Depth, child_list(Here, Prep, Nearby)), 
 [cap(subj(Agent)), person(Sense, es(Sense)),Prep,Here, ':', SeeText]):-  list2eng(Context, Nearby, SeeText).
                                 
logic2eng(Context, percept(Agent, How, Depth, Info), extra_verbose_eng(notices(Agent,How,Depth,What))):-  Depth=1,
  logic2eng(Context, Info, What).

logic2eng(Context, percept(Agent, How, _, Info), notices(Agent,How, What)):- 
 \+ same_agent(Context, Agent), logic2eng(Agent, Info, What).

% (...verbose...: percept('player~1',see,2,props('shovel~1',[shape=shovel])) )
% {{ percept('player~1',see,2,props('cabinate~1',[shape=cabinate,opened=f,has rel(in,t),has rel(on,t)])) }}
% {{ percept('player~1',see,3,props(kitchen,[volume capacity=10000,has rel(in,t),has rel(exit(D2),t),desc='cooking happens here'])) }}
% {{ percept('player~1',see,2,props('crate~1',[shape=crate,opened=f,has rel(in,t)])) }}
% {{ percept('player~1',see,3,props(living room,[volume capacity=10000,has rel(in,t),has rel(exit(D2),t)])) }}
logic2eng(Context, percept(Agent, How, Depth, Info), extra_verbose_eng([Agent,es(How),What])):- (Depth == 2;Depth == 3),
  logic2eng(Context, Info, What).


logic2eng(Context, carrying(Agent, Items),
   [cap(subj(Agent)), 'carrying:'|Text]) :-
 list2eng(Context, Items, Text).
                               

logic2eng(_Agent, moved(_Doer, _Verb, What, From, Prep, To),
   [cap(subj(What)), 'moves', ' from', From, 'to' ,Prep, To]).


logic2eng(_Agent, transformed(Before, After), [Before, 'turns into', After, .]).

logic2eng(_Agent, destroyed(Thing), [Thing, aux(be), 'destroyed.']).

logic2eng(_Context, percept_props(_Agent, _Sense, _Object, _Depth, []),  [] ) :- !.
logic2eng(Context, percept_props(Agent, see, Object, _Depth, PropList), [cap(subj(Agent)), sees | English ] ) :-
 logic2eng(Context, do_props(Object, PropList), English).
logic2eng(Context, percept_props(Agent, Sense, Object, _Depth, PropList), 
   [cap(subj(Agent)),
    person(Sense, es(Sense))| English] ) :-
 logic2eng(Context, do_props(Object, PropList), English ).

logic2eng(Context, props(Object, PropList), [the(Object) |English] ) :-
  logic2eng(Context, do_props(Object, PropList), English ).

logic2eng(_Agent, do_props(_Object, []),  '<..>' ) :- !.
logic2eng(_Agent, do_props(Object, PropList), English ) :- list2eng(['.'='.'],Object, PropList, English).


logic2eng(_Agent, memories(Object, PropList), ['\n\n', the(Object), ' remembers:\n'|English] ) :- 
 reverse(PropList,PropListR),
 list2eng([','=',\n',logic2eng=percept2eng],Object, PropListR, English).
logic2eng(_Agent, perceptq(Object, PropList), ['\n\n', the(Object), ' notices:\n'|English] ) :- 
 list2eng([','=',\n'],Object, PropList, English).

logic2eng(_Context, departing(Actor, In, Where, How, Dir), [Actor,was,In,Where,but,left,ing(How),Dir] ) :- !.
logic2eng(_Context, arriving(Actor, In, Where, How, Dir), [Actor,came,ing(How),Dir,In,Where] ) :- !.

logic2eng(Context, did(Action), ['did happen: '|English] ) :- !, logic2eng(Context, Action, English ).

logic2eng(Context, emoted(Speaker, EmoteType, Audience, Eng), ['happened: '|Rest]) :- !,
 logic2eng(Context, emote(Speaker, EmoteType, Audience, Eng), Rest).

logic2eng(_, emote(Speaker, act, '*'(Place), Eng), [the(Speaker),at,Place,Text]) :- !,
 eng2txt(Speaker, Speaker, Eng, Text).
logic2eng(_, emote(Speaker, act, Audience, Eng), [Audience, notices, the(Speaker), Text]) :-
 eng2txt(Speaker, Speaker, Eng, Text).
logic2eng(_, emote(Speaker, EmoteType, Audience, Eng), [cap(subj(Speaker)), es(EmoteType), 'to', Audience, ', "', Text, '"']) :-
 eng2txt(Speaker, 'I', Eng, Text).

logic2eng(_Agent, failure(Action), ['Action failed:', Action]).

%logic2eng( Obj, effect(_, _), Out):- logic2eng(Obj, adjs(special), Out), !.

logic2eng(Obj, timestamp(Ord,Time), [timestamp,is,Ord,'(',Ago,')']):- logic2eng(Obj, ago(Time), Ago).

logic2eng(_Obj, ago(Time), [MinutesSecs,ago]):- 
 clock_time(Now),
 Dif is round((Now - Time)*10)/10,
 Minutes is round(Dif) // 60,
 USecs is round((Dif - (Minutes*60))*10)/10,
 Secs is round(USecs),
 (Minutes>0 -> 
 (Secs<10 
  -> format(atom(MinutesSecs),'~w:0~ws',[Minutes,Secs])
  ; format(atom(MinutesSecs),'~w:~ws',[Minutes,Secs]))
  ; format(atom(MinutesSecs),'~ws',[USecs])).


logic2eng(_Obj, h(exit(West), From , To), [To, 'is', West, 'of', From]):- !.
logic2eng(_Obj, h(ExitDown, Object, Speaker), [the(Object), 'has', Exit, Down, 'to', Speaker]):- 
 compound(ExitDown), 
 ExitDown=..[Exit, Down].
logic2eng(_Obj, h(Held_by , Object, Speaker), [the(Object), aux(be), Held_by, Speaker]).


logic2eng(_Obj, EmittingLight, [aux(be), 'glowing']):- EmittingLight == emitting(see,light), !.
logic2eng(_Obj, emitting(See,X), [aux(be), emitting, X, that, can, aux(be), tense(See, past)]):-!.
logic2eng(_Obj, breaks_into(_), ['looks breakable']).
logic2eng(_Obj, shiny, [aux(be), 'shiny!']).



logic2eng( Obj, initial(Desc), ['initially described as'| Out]):- logic2eng( Obj, Desc, Out).
%logic2eng(_Obj, co(_), ['/**/ ']):- pretty,!.
logic2eng( Obj, co(Desc), ['(Created as: ', Out, ')']):- list2eng( Obj, Desc, Out).


%logic2eng(_Obj, adjs(Type), ['adjs:',Type]).
%logic2eng(_Obj, nouns(Type), ['nouns:',Type]).

logic2eng(_Aobj, cant( sense(_Agent, Sense, It, Why)), [ 'can''t sense', It, ' ', ly(Sense), ' here', cuz(Why)]).
logic2eng(_Aobj, cant( reach(_Agent, It)), [ 'can''t reach ', It]).
logic2eng(_Aobj, cant( manipulate(self)), [ 'can''t manipulate yourself like that']).
logic2eng(_Aobj, alreadyhave(It), ['already have', the(It)]).
logic2eng(_Aobj, mustgetout(It), ['must_mw get out/off ',It,' first.']).
logic2eng(_Aobj, self_relation(It), ['can\'t put ',It,' inside itself!']).
logic2eng(_Aobj, moibeus_relation( _, _), ['Topological error!']).
logic2eng(_Aobj, =(Dark, t),  ['It''s too ', Dark, ' to ', Sense, in, '!']):- problem_solution(Dark, Sense, _Light).
logic2eng(_Aobj, mustdrop(It), [ 'will have to drop', It, ' first.']).
logic2eng(_Aobj, cant( move(_Agent, It)), [It,aux(be),'immobile']).
logic2eng(_Aobj, cant( take(_Agent, It)), [It,aux(be),'untakeable']).
logic2eng(_Aobj, cantdothat(EatCmd), [ 'can\'t do: ', EatCmd]).

%logic2eng(_Obj, oper(OProp, [cap(N), aux(be), V]):- Prop =..[N, V].

logic2eng(_Obj, =(cleanliness, clean), []) :- pretty.
logic2eng(_Obj, =(cleanliness, clean), [clean]).
%logic2eng( Obj, =(shape, Value), extra_verbose_eng([Value, shaped])):- atom_contains(Obj,Value).
logic2eng( Obj, =(shape, Value), []):- atom_contains(Obj,Value).
logic2eng(_Obj, =(shape, Value), [Value, shaped]).
logic2eng(_Obj, =(volume_capacity, 1000), [is,cramped]).
logic2eng(_Obj, =(volume_capacity, 10000), [is,large]).
logic2eng(_Obj, =(volume, 50), [is,normal,size]).

logic2eng( Obj, Prop=F, English):- F==f, !, append_term(Prop,F,ReProp),logic2eng( Obj, ReProp, English).
logic2eng( Obj, Prop=T, English):- T==t, !, logic2eng( Obj, Prop, English).
logic2eng(_Obj, =(Opened, f), [currently,not,Opened]).
logic2eng(_Obj, =(Statused), [aux(be), Statused ]).
logic2eng(_Obj, =(Statused, f), [aux(be), 'not', Statused ]).
logic2eng(_Obj, =(Name, Value), [Name,aux(be),Value]).

logic2eng(_Obj, PredF, [currently,not,N]):- PredF=..[N,f].

logic2eng( Obj, Prop, English):- Prop =..[N, V, T| VRange],T==t,Prop2 =..[N, V| VRange], logic2eng( Obj, Prop2, English).
logic2eng(_Obj, has_rel(in), ['thus, has an interior']).
logic2eng(_Obj, has_rel(on), ['has a surface']).
logic2eng(_Obj, has_rel(on), ['has a surface']).
logic2eng(_Obj, has_rel(worn_by), ['can be dressed up']).
logic2eng(_Obj, has_rel(held_by), ['can hold objects']).
logic2eng(_Obj, has_rel(exit(_)), ['can have exits']).
logic2eng(_Obj, can(eat), ['looks tasty ', '!']).
logic2eng(_Obj, can(take), ['can be taken!']).
logic2eng(_Obj, can(take,f), ['cannot be taken!']).
logic2eng(_Obj, can(Verb), ['Can', aux(be), tense(Verb, past)]).
logic2eng(_Obj, can(Verb, f), ['Can\'t', aux(be), tense(Verb, past)]).
logic2eng(_Obj, knows_verbs(Verb), ['Able to', Verb ]).
logic2eng(_Obj, knows_verbs(Verb, f), ['Unable to', Verb ]).

logic2eng( Obj, inherit(Type), ['is',Out]):- logic2eng(Obj, [Type], Out), !.
logic2eng( Obj, inherit(Type,f), ['wont be',Out]):- logic2eng(Obj, [Type], Out), !.
%logic2eng( Obj, isnt(Type, f), ['isnt '|Out]):- logic2eng(Obj, [Type], Out), !.
logic2eng( Obj, inherited(Type, f), ['isnt '|Out]):- logic2eng(Obj, [Type], Out), !.
logic2eng( Obj, inherited(Type), ['inherits',Out]):- logic2eng(Obj, [Type], Out), !.
logic2eng( Obj, msg(Msg), TxtL):- any2eng(Obj, Obj, Msg, Txt), listify(Txt,TxtL), !.
%logic2eng( Obj, msg(Msg), TxtL):- eng2txt(Obj, Obj, Msg, Txt), listify(Txt,TxtL), !.
logic2eng(_Obj, class_desc(_), []).
logic2eng(_Obj, has_rel(Value,TF) , [TF,'that it has,',Value]).

logic2eng( Obj, oper(Act,Precond,PostCond), OUT) :- 
 (xtreme_english->OUT = ['{{',if,'action: ',ActE,' test:', PrecondE,'resulting: ',PostCondE,'}}'];
 OUT = []),
 maplist(logic2eng(Obj), [Act,Precond,PostCond], [ActE,PrecondE,PostCondE]).


% logic2eng( Obj, Prop, English):- Prop =..[N, Obj1, A| VRange],Obj1==Obj,Prop2 =..[N, A| VRange], logic2eng( Obj, Prop2, English).
logic2eng( Obj, Prop, English):- Prop =..[N, V, T| VRange],T==t,Prop2 =..[N, V| VRange], logic2eng( Obj, Prop2, English).
logic2eng(_Obj, sub__examine(Who,Sense,Prep,Where,3), [cap(subj(Who)), es(Sense), Prep, Where]):-!.

logic2eng(_, V,[V]):- (string(V);(atom(V),atom_needs_quotes(V))),!.
logic2eng(_, V,[String]):- (string(V);(atom(V),atom_needs_quotes(V))),!, format(atom(String), ' "~w" ', [V]), !.



%logic2eng( Obj, Prop, [cap(N), aux(be), Value]):- Prop =..[N, V], list2eng(Obj, V, Value).

% logic2eng( Obj, Prop, [cap(N),of,O, aux(be), Value]):- Prop =..[N,O, V], list2eng(Obj, V, Value).
logic2eng( Obj, Prop, ['(',cap(N), ':', Value,')']):- Prop =..[N, V], list2eng(Obj, V, Value).
%logic2eng(_Obj, Prop, [String]):- compound(Prop), !, String=''. % format(atom(String), ' \n {{ ~q. }}\n ', [Prop]), !.
%
% sub__examine('player~1',see,in,living_room,3)



logic2eng(_Obj, Prop, [String]):- compound(Prop), \+ xtreme_english, !, format(atom(String), ' {{ ~q }} ', [Prop]), !.
logic2eng(_Obj, Prop, [String]):- format(atom(String), '~p', [Prop]), !.

logic2eng( Obj, Prop, [cap(N), Value, aux(be), English]):- Prop =..[N, V| Range],
   logic2eng(Obj, V, Value),
   maplist(logic2eng(Obj), Range, English).


atom_needs_quotes(V):-format(atom(VV),'~q',[V]),V\==VV.

append_if_new1(Text1, Text2, Text):- flatten([Text1], TextF1), flatten([Text2], TextF2), append([_|TextF1], _, TextF2), !, Text=Text2.

append_if_new(Text1, Text2, Text):- append_if_new1(Text1, Text2, Text), !.
append_if_new(Text2, Text1, Text):- append_if_new1(Text1, Text2, Text), !.
append_if_new(Text1, Text2, Text):- append(Text1, Text2, Text), !.

percept2eng(_Agent, [_Logical, English], English) :- !.
percept2eng(_Agent, [_Logical, English|More], [English|More]) :- !.
percept2eng(Context, [Logical|_], Eng) :- logic2eng(Context, Logical, Eng),!.
percept2eng(Context, LogicalEnglish, Eng) :- logic2eng(Context, LogicalEnglish, Eng).

percept2txt(Agent, LogicalEnglish, Text) :-
 percept2eng(Agent, LogicalEnglish, English),
 eng2txt(Agent, Agent, English, Text),!.

the(State, Object, Text) :-
 getprop(Object, name(D), State),
 compile_eng_txt(State, D, AD),
 atom_concat('the ', AD, Text).

an(State, Object, Text) :-
 getprop(Object, name(D), State),
 compile_eng_txt(State, D, AD),
 atom_concat('a ', AD, Text).

num(_Singular, Plural, [], Plural).
num(Singular, _Plural, [_One], Singular).
num(_Singular, Plural, [_One, _Two|_Or_More], Plural).

expand_english(State, the(Object), Text) :-
 the(State, Object, Text).
expand_english(State, an(Object), Text) :-
 an(State, Object, Text).
expand_english(_State, num(Sing, Plur, List), Text) :-
 num(Sing, Plur, List, Text).
expand_english(_State, [], '').
expand_english(State, [Term|Tail], [NewTerm|NewTail]) :-
 expand_english(State, Term, NewTerm),
 expand_english(State, Tail, NewTail).
expand_english(_State, Term, Term).


% %%%%%%%%%%%%%%%
% Our user:portray(Logic) English helpers
% %%%%%%%%%%%%%%%

player_pprint(Doer, Logic, always):- xtreme_english,!, must(print_english(Doer, Logic)).
player_pprint(_Doer, D,K):- pprint(D,K).

% print_english(Doer, Logic):- is_list(Logic),!, maplist(print_english(Doer), Logic).
print_english(Doer, Logic):- logic2english(Doer, Logic, Text), pprint(Text,always).

:- thread_local(tl_loop:in_logic2english/1).
logic2english(_Doer, Logic, Text):- atomic(Logic),!,Text=Logic,!.
logic2english(_Doer, Logic, Text):- \+ \+ tl_loop:in_logic2english(Logic),!,term_to_atom(Logic,Text).
logic2english( Doer, Logic, Text):- locally(tl_loop:in_logic2english(Logic),
  ((logic2eng(Doer, Logic, Eng),must_mw1((eng2txt(Doer, Doer, Eng, Text)))))),!.

maybe_our_portray_english(Logic):- 
 compound(Logic), 
 our_current_portray_level(Level), 
 Level > 0,
 Level < 2, 
 \+ is_list(Logic),
 flag_level_compare(english,>(1)),
 our_portray_english_simple_only(Logic),!.

our_portray_english(Logic):-  
 english_codes(Logic,Codes),
 out_to_i7(Codes),!.

our_portray_english_simple_only(Logic):-  
 english_codes(Logic,Codes),
 was_simple_english_line(Codes),
 out_to_i7(Codes),!.

out_to_i7(Codes):-
 % atom_codes(Atom,Codes),
 format('{|i7|| ~s |}',[Codes]).

english_codes(Logic,Codes):- 
 once(Agent = self ; mu_current_agent(Agent)),
 with_output_to(codes(SCodes),print_english(Agent, Logic)),!,
 trim_eols(SCodes,Codes),!.

trim_eols(String,Codes):- append(LString,[N],String),(N==13;N==10),!,trim_eols(LString,Codes).
trim_eols(Codes,Codes).

was_simple_english_line(String):- last(String,N),member(N,`.,]`),!,fail.
was_simple_english_line(String):-
 freeze(C, member(C,`\n\r[{?`)),
 \+ member(C,String).

:- dynamic user:portray/1.
:- multifile user:portray/1.
:- module_transparent user:portray/1.
user:portray(Logic) :- % fail,
 maybe_our_portray_english(Logic).

:- noguitracer.

any2eng(_Speaker,_I, Eng, EngLO):- is_english(Eng),!,EngLO=Eng.
any2eng(_Speaker, I, Eng, EngLO):- logic2eng(I, Eng, EngLO).

