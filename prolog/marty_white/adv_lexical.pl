
:- forall(between(2,13,N),
 ( length(ARGS,N),
   H=..[cyc_t|ARGS],
   B=..[ac|ARGS],
   assert(H:-B))).

is_synset_id(X):- integer(X), X > 100001739.

english_some(X, some(SK)):- is_synset_id(X), member(S, [5, 4, 3, 2, 1, _]), wnframes:sk(X, S, SK), !.
english_some(X, Y):- \+ compound(X), !, Y=X.
english_some([fr,X1,M,X2|More], Y):- 
  is_synset_id(X1), wnframes:sk(X1, X2, SK), !, english_some([vnframe,M,SK|More], Y).
english_some([X1, X2|More], Y):- integer(X2), is_synset_id(X1), wnframes:sk(X1, X2, SK), !, english_some([SK|More], Y).
english_some(H-T, HH-TT):- !, english_some(H, HH), =(T, TT).
english_some([H|T], [HH|TT]):- !, english_some(H, HH), english_some(T, TT).
english_some(X, Y):-
  compound_name_arguments(X, F, Args), F \== sk,
  english_some([F|Args], [_|ArgsO]), !,
  compound_name_arguments(Y, F, ArgsO).
english_some(X, X):- !.

lex_frivilous(senseExamples).
lex_frivilous(senseComments).
lex_frivilous(senseDefinition).
lex_frivilous(X):- lex_frivilous_maybe(X).

lex_frivilous_maybe(posForms).
lex_frivilous_maybe(subcatFrame).
lex_frivilous_maybe(s).
lex_frivilous_col(xtLexicalWord).
lex_frivilous_col(xtEnglishWord).
:- add_e2c("a red cat fastly jumped onto the table which is in the kitchen of the house").
:- add_e2c("After Slitscan, Laney heard about another job from Rydell, the night security man at the Chateau.").
:- add_e2c("Rydell was a big quiet Tennessean with a sad shy grin , cheap sunglasses , and a walkie-talkie screwed permanently into one ear").
:- add_e2c("Concrete beams overhead had been hand-painted to vaguely resemble blond oak").
:- add_e2c("The chairs, like the rest of the furniture in the Chateau s lobby, were oversized to the extent that whoever sat in them seemed built to a smaller scale").
:- add_e2c("Rydell used his straw to stir the foam and ice remaining at the bottom of his tall plastic cup, as though he were hoping to find a secret prize").
:- add_e2c("A little tribute to Gibson.").
:- add_e2c('"You look like the cat that swallowed the canary," he said, giving her a puzzled look.').
:- add_e2c("the monkey heard about the very next ship which is yellow and green").

%lex_mws(genTemplateConstrained).
%lex_mws(genTemplate).
lex_mws(headMedialString).
lex_mws(compoundString).
lex_mws(prepCollocation).
lex_mws(abbreviationForMultiWordString).
lex_mws(multiWordStringDenotesArgInReln).
lex_mws(compoundSemTrans).
lex_mws(multiWordSemTrans).
lex_mws(multiWordString).
lex_mws(mws).

%is_word(W):- atom(W), guess_arg_type(X, W), !, X==word. 
%is_atom_word(W):- atom(W), guess_arg_type(X, W), !, X==word. 

contains_overlap(_Atoms,Was):- \+ (select(txt(_O1),Was,Was1),member(txt(_O2),Was1)), !.

contains_overlap( Atoms,Was):- 
  list_to_set(Atoms, Atoms1), 
  select(A1,Atoms1,Atoms2),
  member(A2,Atoms2),
  binds_with(A1,O1),
  binds_with(A2,O2),  
  member(Find1,[txt(O1)]),member(Find2,[txt(O2)]),
  select(Find1,Was,Was1),member(Find2,Was1),
  nop(wdmsg(contains_overlap( A1+O1,A2+O2))), !.
  
to_atom_or_string(A,W):-  nonvar(W),!,to_atom_word(A,O),!,O==W.

to_atom_word(A,W):- nonvar(W),!,to_atom_word(A,O),!,O==W.
to_atom_word(A,W):- to_case_break_atoms(A,O),!,(O=[W]->true;(O=['"', W, '"']->true;O=[x,DC,'The','Word'],downcase_atom(DC,W))).

filter_mmw(X,O):- A=val([]), filter_mmw(A,X,X),!,arg(1,A,O).

filter_mmw(_,_Was,X):- X == [], !.
filter_mmw(O,_Was,X):- var(X),!,append_o(var(X),O).
filter_mmw(O, Was,[H|T]):-!,filter_mmw(O, Was,H),filter_mmw(O, Was,T).
filter_mmw(_,_Was, level(1, _,_,_)):- !.
filter_mmw(O, Was,X):- select(X,Was,WasNt),!,filter_mmw(O, WasNt,X).
filter_mmw(O, Was, level(0, _,X,_)):- !, filter_mmw(O, Was, X).
filter_mmw(_, Was,X):- compound(X), functor(X,MW,_), lex_mws(MW), atoms_of(X,Atoms), \+ contains_overlap(Atoms,Was),!.
filter_mmw(_,_Was,X):- compound(X),functor(X,MW,_),lex_frivilous(MW),!.
filter_mmw(_,_Was,isa(_,MW)):- lex_frivilous_col(MW),!.
filter_mmw(O,_Was,X):- append_o(X,O).

append_o(X,O):- O=val([]),!,nb_setarg(1,O,[X]).
append_o(X,val(List)):- o_put(X, List).
o_put(F, List):- memberchk(F, List), !.
o_put(F, List):- List=[_|T], (T==[] -> nb_setarg(2, List, [F]) ; o_put(F, T)).

lex_print(X):- X == [], !, wdmsg(X), !.
lex_print(X):- is_list(X), !, maplist(lex_print0, X).
lex_print(X):- lex_print0(X),!.
lex_print0(level(0, _,X,_)):- !, lex_print0(  X).
lex_print0(level(1, _,_,_)):- !.
lex_print0(isa(_,MW)):- lex_frivilous_col(MW),!.
lex_print0(X):- english_some(X, Y), wdmsg(Y), !.
lex_print0(X):- english_some(X, Y), pprint(Y, always).

%cvt_to_qa_string(A, M):- atomic_list_concat(['"', A, '"'], M).
cvt_to_qa_string(A, M):- atom_string(A, M).
cvt_to_atom(A, M):- atomic_list_concat([A], M).
cvt_to_real_string(A, M):- atom_string(A, M).

% correct_dos(Todo, TodoS):- flatten([Todo], TodoF), (Todo\==TodoF -> my_l2s(TodoF, TodoS); TodoS=Todo), !.
correct_dos(Todo, TodoS):- flatten([Todo], TodoF), my_l2s(TodoF, TodoS), !.

add_do_more(More, Todo, NewDone, NewTodo):-
 flatten([More], MoreS),
 add_todo_list(MoreS, Todo, NewDone, NewTodo), !.

add_todo_list([], Todo, _Done, Todo):-!.
add_todo_list([M|MoreS], Todo, Done, NewTodo):- member_eq0(M, Done), !, add_todo_list(MoreS, Todo, Done, NewTodo).
add_todo_list([M|MoreS], Todo, Done, NewTodo):- add_if_new(Todo, [M], TodoM), !,
 add_todo_list(MoreS, TodoM, Done, NewTodo).

word_to_cycword(String, P, C, cyc_t(P, C, QAString)):-
 cvt_to_real_string(String, QAString),
 cyc_t(P, C, QAString), ok_speech_part_pred(P).


string_to_info(String, P):- fail,
 catch(downcase_atom(String, Atom), _, fail),
 atom_length(Atom, Len), Len > 1,
 gen_preds_containing(Atom, P). % , functor(P, F, _), guess_pred_pos(P, String, Pos).

% string_to_pos(String, Pos):- atom_ string(Atom, String), gen_preds_containing(Atom, P), guess_pred_pos(P, String, Pos).

guess_pred_pos(P, _String, Pos):- arg(_, P, Pos), nonvar(Pos), member(Pos, [n, a, s, v, a, j, r, jj, adv, adj, nn, pp, prep]), !.
guess_pred_pos(P, String, Pos):- arg(_, P, Pos), nonvar(Pos), Pos \== String, !.
%guess_pred_pos(P, _, Pos):- functor(P, Pos, _).

ok_speech_part_pred(P):-
 P\==firstNameInitial, P\==middleNameInitial,
 (
 cyc_t(isa, P, rtSpeechPartPredicate); \+ cyc_t(isa, P, _)), !.

subtype_index(_, +(_), _, _Value, _CArg, _PreCall, _PostCall):- !, fail.
subtype_index(_, word, string, Value, CArg, PreCall, PostCall):-  PreCall = cvt_to_real_string(Value, CArg), PostCall = true.
subtype_index(_, W, W, Value, CArg, PreCall, PostCall):- PreCall = (CArg = Value), PostCall = true.
subtype_index(_, W, W-pos, Value, CArg, PreCall, PostCall):- PreCall = (CArg = (Value-_)), PostCall = (true;true).

subtype_index(_, word, wordbase, Value, CArg, PreCall, PostCall):- PreCall = (CArg = Value), PostCall = true.

%subtype_index(_, W, any(W), Value, CArg, PreCall, PostCall):- !, PreCall = freeze(CArg, sub_var(Value, CArg)), PostCall = true.
subtype_index(_, W, any(W), Value, CArg, PreCall, PostCall):-  PreCall = true, PostCall = sub_var(Value, CArg).
subtype_index(_, W, seq(W), Value, CArg, PreCall, PostCall):- atom(W), PreCall = (CArg = [_|_]), PostCall = sub_var(Value, CArg).
subtype_index(_, W, listof(W), Value, CArg, PreCall, PostCall):- PreCall = (CArg = [_|_]), PostCall = member(Value, CArg).

doable_type(_, DoType, Type):- nonvar(DoType),
  DoType\==string, DoType\==data, DoType=Type, !.

matcher_to_data_args( Matcher1, Data, P):- 
  matcher_to_data_args(setarg, Matcher1, Data, 1, P, P),!.

matcher_to_data_args(SetArg, Matcher1, Data, N, C, P):- 
  % functor(C,F,A), functor(P,F,A),
  ignore((arg(N, C, Match),
  copy_term(Matcher1+Data+Match, Matcher1C+DataC+MatchC),
  ignore((once(call(Matcher1C, MatchC)), (DataC==unk -> true ; call(SetArg, N, P, DataC)))), 
  N2 is N+1,
  matcher_to_data_args(SetArg, Matcher1, Data, N2, C, P))).

% matcher_to_data_args(_Matcher1,_Data,_N,_C,_P):-!.

copy_value_args(P, C):- P=..[_|PList], C=..[_|CList], maplist(copy_value_arg, PList, CList).
copy_value_arg(P, C):- ignore((compound(P), P = +(C))).

generate_mfa(M,F,A):-   
  (integer(A)-> true ; between(2, 13, A)),
  (var(F)-> (gen_preds_m_p(M, F, A), MU=M) ; true),
   (once((functor(C, F, A),
         current_predicate(MU:F/A),         
         once((predicate_property(MU:C,imported_from(M)) 
           -> true 
           ; ( ( \+ predicate_property(MU:C,imported_from(_))), MU=M)))))).

make_first_arg_caller(Arg,M,F,A):-
  (\+ atom(M) ; \+ atom(F); \+ integer(A)) ,!,
  forall(generate_mfa(M,F,A),
    ( % wdmsg(make_first_arg_caller(Arg,M,F,A)),
     make_first_arg_caller(Arg,M,F,A))).

make_first_arg_caller(Arg,M,F,A):- 
  make_first_arg_caller(Arg,M,F,A,_,_).
  
make_first_arg_caller(Arg,M,F,A,P,C):- 
  format('~N% -- ~q. -- %~n', [maybe_skip_search(M, F, A)]),
  functor(C, F, A), functor(P, F, A), 
  ignore(arg(Arg, C, X)), ignore(arg(Arg, P, '++'(X))),
  matcher_to_data_args(var, data, P),
  findall(P, M:C, L), sort(L, S), % pprint(S), 
  print_first_arg_caller(M,F,A,P,C,S).
print_first_arg_caller(M,_,_,P,_,S):-
  length(S,L), L<10,!,
  maplist({M}/[E]>>
    (P=E, % matcher_to_data_args(==(data), _, P),
     % matcher_to_data_args(get_vv(X), X, P),
      ignore(print_some_clauses(M, P))), S),!.  
print_first_arg_caller(M,F,A,_,_,_):-
  functor(PC,F,A),
  print_some_clauses(M, PC).

nb_setarg_if_better(N,P,_):- arg(N,P,W), W== data, !.
nb_setarg_if_better(N,P,A):- nb_setarg(N,P,A).

guess_args_of(P,Guess):-
 ignore((arg(_,P,G),ground(G), matcher_to_data_args(nb_setarg_if_better, guess_arg_type(X), X, 1, P, Guess))),
 nop((writeq(guess_args_of(P,Guess)),nl)),
 ignore((
   arg(N1, Guess, word),
   arg(N2, Guess, word),
   N1\==N2,
   arg(N1,P,A1), arg(N2,P,A2),
   A1\==A2,
   is_atom_word(A1),is_atom_word(A2),
   atom_concat(A1,_,A2),
   atom_length(A1, L), L > 3,
   nb_setarg(N1,Guess,wordbase),
   nb_setarg(N2,Guess,word))),
 duplicate_term(Guess,GuessD),
 duplicate_term(Guess,Guess),
 nb_setval('$guess',GuessD).


guess_arg_type(X, S):- string(S), X= string.
guess_arg_type(X, S):- is_synset_id(S), X = id(wn).
guess_arg_type(X, S):- number(S), X = data.
guess_arg_type(X, S):- var(S), X = data.
guess_arg_type(X, S):- S==[], X = unk.
guess_arg_type(listof(X),S):- S=[E|_], nonvar(E), guess_arg_type(X, E), X \== unk.
guess_arg_type(X, S):- \+ atom(S), !, X = unk.

guess_arg_type(X, S):- S=='', X = data.
guess_arg_type(pos, neutr).
guess_arg_type(X, S):- atom_concat(_,'_tt', S), X = concept(tt).
guess_arg_type(X, S):- atom_concat(_,'TheWord', S), X = id(cyc).
guess_arg_type(X, S):- atom_concat('TTWord', _, S), X = id(tt).
guess_arg_type(T, S):- atom_length(S, L), L>2, 
  atom_chars(S,C), 
  exclude([X]>>(char_type(X,lower), char_type(X,alpha)),C,Cs),
  left_over_word_type(Cs,T).  
guess_arg_type(_, unk).

% (Cs==[] -> T = word ; Cs = ['-'] -> T = mword ; Cs=['_'] -> T = concpt() ).
% left_over_word_type(Cs,T).
left_over_word_type([],word).
left_over_word_type(['_'],word).
left_over_word_type(['-'],wordh).
left_over_word_type([_],unk).

is_atom_word(W):- atom(W), guess_arg_type(X, W), !, X==word. 
get_vv(X,Arg):- compound(Arg), Arg = '++'(X).


:- export(lex_winfo/1).
lex_winfo(Value):- lex_tinfo(word, Value).

:- export(lex_tinfo/2).
lex_tinfo(Type, Value):-
 findall(Datum,get_info_about_type(0, Type, Value, Datum),DatumL),
   flatten(DatumL,DatumF),
   maplist(wdmsg,DatumF), !.



get_info_about_type(Level, Type, Value, MoreF):-
  get_info_about_type0(Level, Type, Value, MoreF) 
   *-> true 
   ; get_info_about_type1(Level, Type, Value, MoreF).

get_info_about_type1(_Level, Type, Value, MoreF):-
  get_info_about_type0(fallback, Type, Value, MoreF).
  
get_info_about_type0(Level, Type, Value, MoreF):-
  (number(Level)-> Level2 is Level+1; Level2 = 1),
  lex_arg_type(Level, M, P),
%nonvar(Level),
  arg(N, P, Matcher),
  once((nonvar(Matcher), subtype_index(Level, Type, Matcher, Value, CArg, PreCall, PostCall))),
  functor(P, F, A),
  functor(C, F, A),
  copy_value_args(P, C),
  arg(N, C, CArg),
  % nop (wdmsg(( P -> C))),
  matcher_to_data_args(=(Matcher), data, P),  
  call(PreCall),
  % wdmsg(M:get_info_about_type(Level, Type, Value, P->C, PostCall)),  
  once((findall([level(Level, Type, C, Value)|Extra], ((call(M:C)), call(PostCall),
                         P=..[_|PRest], C=..[_|CRest],
                         make_new_todos(Type, Level2, CRest, PRest, [], Extra)), More1),
  flatten(More1, MoreF))).


make_new_todos(_Was, _Level, [], [], InOut, InOut):- !.
make_new_todos( Was, Level, [C|CRest], [P|PRest], In, Out):-
 (var(C);var(P);
  C==[];
  P==data;
  P == pos;
  (Was==P);
  (Was\==word, P==word);
  (P==string);
  Level>1;
  (Was==wordbase, P==wordbase)), !,
 make_new_todos(Was, Level, CRest, PRest, In, Out).

make_new_todos( Was, Level, [C|CRest], [P|PRest], In, Out):-
  (Was==word, P==word),
  Level0 is Level -1, !,
  make_new_todos( pk, Level0, [C|CRest], [P|PRest], In, Out).

make_new_todos( Was, Level, [C|CRest], [P|PRest], In, Out):-
  (Was==word, P==wordbase),
  Level0 is Level -1, !,
  make_new_todos( pk, Level0, [C|CRest], [P|PRest], In, Out).

make_new_todos(Was, Level, [C|CRest], [P|PRest], In, Out):-
 (P == pos),
 make_new_todos(Was, Level, CRest, PRest, In, Mid),
% wdmsg(data(Level, P, C)),
 add_if_new(Mid, data(Level, P, C), Out), !.

make_new_todos(Was, Level, [C|CRest], [P|PRest], In, Out):-
 make_new_todos(Was, Level, CRest, PRest, In, Mid),
 % wdmsg(adding_todo(Level, P, C)),
 add_if_new(Mid, todo(Level, P, C), Out), !.


add_if_new(Done, Doing, NewDone):-
  member_eq0(Doing, Done)
   -> NewDone = Done
   ; append(Done, [Doing], NewDone).

:- export(lex_info/1).
lex_info(String):-
 lex_info(String, Datum),
 lex_print(Datum).

:- export(lex_info/2).
lex_info(String, Out):-
 munl_call(into_text80(String, Words)),
 maplist(into_dm, Words, Todo),
 Level = 0,
 lex_info( Level, Todo, [text80(Words)], Datum),!,
 filter_mmw(Datum,Out),!.

into_dm(String, txt(AString)):- cvt_to_atom(String, AString).
didnt_do(Todo, skipped(Todo)).

lex_info(_Level, [], Done, Done):-!.
lex_info( Level, Todo, Done, Out):- correct_dos(Todo, TodoS), TodoS\==Todo, !, lex_info( Level, TodoS, Done, Out).
lex_info( Level, Todo, Done, Out):- correct_dos(Done, DoneS), DoneS\==Done, !, lex_info( Level, Todo, DoneS, Out).
lex_info( Level, [M:Did|Todo], Done, Out):- atom(M), !, lex_info( Level, [Did|Todo], Done, Out).


lex_info( Level, Todo, Done, Out) :- Level > 3, !, maplist(didnt_do, Todo, NotTodo), append(Done, NotTodo, Out).
lex_info( Level, [txt(String)|Todo], Done, Out):-
 get_lex_info(Type, String, Result),
 append(Done, Result, DoneResult), my_l2s(DoneResult, NewDone),
 lex_info( Level, Todo, NewDone, Out).

lex_info( Level, [todo(Type, Value)| Todo], Done, Out):- !,
  lex_info( Level, [todo(Level, Type, Value)| Todo], Done, Out).

lex_info(_Lev__, [todo(Level, DoType, Value)| Todo], Done, Out):-
 doable_type(Level, DoType, Type),
 Doing = todo(Level, Type, Value),
 add_if_new(Done, Doing, NewDone),
 findall(Info, get_info_about_type(Level, Type, Value, Info), More),
 add_do_more(More, Todo, NewDone, NewTodo),
 lex_info( Level, NewTodo, NewDone, Out), !.

lex_info( Level, [cycWord(P, C)|Todo], Done, Out):-
 findall(concept(Subj), conceptForWord(P, C, Subj), More1),
 findall(Info, info_about(C, Info), More2),
 add_if_new(Done, cycWord(P, C), NewDone),
 add_do_more([More1, More2], Todo, NewDone, NewTodo),
 lex_info( Level, NewTodo, NewDone, Out).

lex_info( Level, [concept(C)|Todo], Done, Out):- fail,
 findall(Info, info_about(C, Info), More2),
 add_if_new(Done, concept(C), NewDone),
 add_do_more(More2, Todo, NewDone, NewTodo),
 lex_info( Level, NewTodo, NewDone, Out).

lex_info( Level, [Did|Todo], Done, Out):-
 Did =..[T, F|RestP],
 member(T, [acnl, cyc_t, t, talk_db]),
 (T == acnl -> append(Rest, [_Ref], RestP) ; RestP= Rest),
% (T == t -> TAdd = Do ; TAdd = T),
 atom(F),
 Do =..[F|Rest],
 lex_info( Level, [Do|Todo], Done, Out).

lex_info( Level, [Did|Todo], Done, Out):-
 compound(Did), functor(Did, F, A),
 findall(Arg, (arg(_, Did, Arg), nonvar(Arg), searches_arg(F, A, Arg)), List),
 List\==[],
 maplist(add_search_arg, List, DoNow),
 add_do_more(DoNow, Todo, Done, NewTodo),
 lex_info( Level, NewTodo, Done, Out).


lex_info( Level, [Did|Todo], Done, Out):-
 add_if_new(Done, Did, NewDone),
 lex_info( Level, Todo, NewDone, Out).

add_search_arg(Arg, concept(Arg)).

  % 202488488
searches_arg(_F, _A, _Arg):- !, fail.
searches_arg(_F, _A, Arg):- is_synset_id(Arg), !.
searches_arg(_F, _A, Arg):- \+ atom(Arg), !, fail.
searches_arg(_F, _A, Arg):- atom_length(Arg, Len), Len<4, !, fail.
% searches_arg(_F, _A, Arg):- atom_contains(Arg, '.'), !.
%searches_arg(_F, _A, Arg):- (atom_contains(Arg, '.');atom_contains(Arg, '-');atom_contains(Arg, '%')), !.



conceptForWord(_P, C, Subj):- cyc_t(denotation, C, _, _, Subj).
% conceptForWord(_P, C, Subj):- acnl(denotation, C, _, _, Subj, _).

:- dynamic(tmp:saved_denote_lex/2).
:- retractall(tmp:saved_denote_lex(  _, _)).
get_lex_info(Type, String, Out):- catch(downcase_atom(String, DCAtom), _, fail), DCAtom\==String, !, get_lex_info(Type, DCAtom, Out).
get_lex_info(Type, DCAtom, Out):- tmp:saved_denote_lex( DCAtom, Out), !.
get_lex_info(Type, DCAtom, Out):- do_lex_info(Type, DCAtom, Out), asserta(tmp:saved_denote_lex( DCAtom, Out)), !.

do_lex_info(Type, AString, OutS):-
 findall([cycWord(P, C), Why], word_to_cycword(AString, P, C, Why), More1),
 findall(Info, string_to_info(AString, Info), More2),
 NewDone = [txt(AString)],
 cvt_to_atom(AString, Atom),
 Level = 0,
 add_do_more([todo( Level, word, Atom), More1, More2], [], NewDone, NewTodo),
 lex_info( Level, NewTodo, NewDone, Out), !,
% =(Out, OutS).
 predsort(ignore_level, Out, OutS).

my_l2s(List, Set) :- !, List=Set.
my_l2s(List, Set) :-
    must_be(list, List),
    lists:number_list(List, 1, Numbered),
    sort(1, @=<, Numbered, ONum),
    lists:remove_dup_keys(ONum, NumSet),
    sort(2, @=<, NumSet, ONumSet),
    pairs_keys(ONumSet, Set), !.

ignore_level(level(_, _, C1, _), level(_, _, C2, _), ( = )):- compare(C1, C2, ( = )), !.
ignore_level(C1, C2, R):- compare(C1, C2, R), !.

rule_clause_porp_ok(RCl, RCl):- !, fail.
rule_clause_porp_ok(0, _):- !.
rule_clause_porp_ok(1, 2):- !, fail.
rule_clause_porp_ok(Rl, _):- Rl > 2, !, fail.
rule_clause_porp_ok(Rl, Cl):- Rl + 3 < Cl.

print_some_clauses(M, P):- 
  duplicate_term(P, Call),
  duplicate_term(P, Guess),
  format('~n  % ----------~n'), 
  format('~N  %  ?- ~q. ~n', [print_some_clauses(M, P)]),
  matcher_to_data_args(==(data), _, Call),
  matcher_to_data_args(get_vv(X), X, Call),
  flag('$sample',_,0), 
  print_some_clauses_g(Guess, M, Call),!,
  format('~N lex_arg_type( _, ~p, ~p).~n', [M, Guess]).

 print_some_clauses_g(Guess, M, P):-  arg(_, P, V), nonvar(V), !,
  MP=M:P, predicate_property(MP, number_of_clauses(_Cl)),
   repeat, 
   call(M:P), 
   flag('$sample',X,X+1),
   format('~N  %          lex_arg_type( _, ~p, ~p).~n', [M, P]),
   guess_args_of(P,Guess),
   X>5,!.
   
print_some_clauses_g(Guess, M, P):-
  MP=M:P, predicate_property(MP, number_of_clauses(Cl)),
   repeat,
   Nth is random(Cl)+1, nth_clause(MP, Nth, Ref), clause(P, G, Ref),   
   ignore(G),
   flag('$sample',X,X+1),
   format('~N  %          lex_arg_type( _, ~p, ~p).~n', [M, P]),
   guess_args_of(P,Guess),
   X>5,!.
   




print_some_clauses_g(Guess,M, P):-
 MP=M:P,
 predicate_property(MP, number_of_clauses(Cl)),
 ((Cl>7;true) -> findnsols(5, _, ((
   repeat, Nth is random(Cl)+1, nth_clause(MP, Nth, Ref), clause(P, _, Ref),
   guess_args_of(P,Guess),
   format('~N  %          lex_arg_type( _, ~p, ~p).~n', [M, P+Guess]))),_);
 findnsols(5, _, ((clause(P, true, _Ref), 
   format('~N ex_lex_arg_type2( _, ~p, ~p).~n', [M, P]), guess_args_of(P,Guess) )), _)), !.

gen_preds_m_p(M, F, A):- (atom(M)->true;member(M, [
 nldata_freq_pdat, nldata_BRN_WSJ_LEXICON, nldata_dictionary_some01, nldata_colloc_pdat,
 parser_chat80,
 parser_e2c, tt0,
 wnframes, vndata, framenet, clex, talk_db])),
 current_predicate(M:F/A), A>1, functor(P, F, A),
 MP=M:P,
 F\==verbnet_frame,
 \+ predicate_property(MP, imported_from(_)),
 predicate_property(MP, number_of_rules(Rl)),
 predicate_property(MP, number_of_clauses(Cl)),
 rule_clause_porp_ok(Rl, Cl).

gen_preds_m_p(M, F, A):-
 M:F/A = MFA,
 member(MFA,
 [% ace_niceace:atom_capitalize/2,
 vndata:verbnet_frame/7,
 %parser_e2c:type_wrd_sem/3,
 %talk_db:talk_db/2, talk_db:talk_db/3, talk_db:talk_db/4, talk_db:talk_db/6,

 mu:thetaRole/9
 % wnframes:opposite/4,
 ]),
 current_predicate(MFA), functor(P, F, A),
 must(\+ predicate_property(M:P, imported_from(_))).



gen_preds_containing(C, P):- between(3, 12, A), functor(P, cyc_t, A), arg(N, P, C), N>1, call(P).
gen_preds_containing(C, P):- in_call(C,P,Template,cyc_t('genTemplate',_,Template)).
gen_preds_containing(C, P):- in_call(C,P,Template,cyc_t('genTemplateConstrained',_,_,Template)).
gen_preds_containing(C, P):- P=cyc_t(_Pred,Cont), call(P), sub_var(C,Cont).

%gen_preds_containing(C, P):- ac_nl_info_1(C, Results), member(P, Results).
%gen_preds_containing(C, P):- between(3, 12, A), functor(P, acnl, A), arg(N, P, C), N<A, N>1, call(P).

in_call(C,P,Template,Call):- P=Call,call(P),once(sub_var(C,Template)).


%gen_preds_containing(C, P):- gen_preds_atomic(C, P).

%gen_preds_containing(C, P):- between(2, 12, A), functor(P, cyc_t, A), call(P), sub_term(X, P), X==C.
info_about(C, _Info):- number(C), \+ (C > 100001739 ; C < - 100000), !, fail.
info_about(C, Info):-
 findall(P, gen_preds_containing(C, P), L),
 correct_dos(L, Info).


gen_preds_m_p :- forall(gen_preds_m_p(M, F, A), (functor(P,F,A),print_some_clauses(M, P))).




maybe_skip_search(parser_chat80, active_passive_subjcase, 2). %%
maybe_skip_search(parser_chat80, anot_xmask, 3). %%
maybe_skip_search(parser_chat80, apply_set, 5). %%
maybe_skip_search(parser_chat80, compatible_pos_db, 2). %%
maybe_skip_search(parser_chat80, conj_apply, 4). %%
maybe_skip_search(parser_chat80, deepen_case, 2). %%
maybe_skip_search(parser_chat80, extract_var, 3). %%
maybe_skip_search(parser_chat80, freevars, 2). %%
maybe_skip_search(parser_chat80, i_neg, 2). %%
maybe_skip_search(parser_chat80, i_sup_op, 2). %%
maybe_skip_search(parser_chat80, index_det, 2). %%
maybe_skip_search(parser_chat80, index_slot, 3). %%
maybe_skip_search(parser_chat80, is_to_role_case, 3). %%
maybe_skip_search(parser_chat80, is_trace82, 2). %%
maybe_skip_search(parser_chat80, lists_first, 2). %%
maybe_skip_search(parser_chat80, marked, 4). %%
maybe_skip_search(parser_chat80, must_test_80, 3). %%
maybe_skip_search(parser_chat80, must_test_802, 3). %%
maybe_skip_search(parser_chat80, must_test_803, 3). %%
maybe_skip_search(parser_chat80, must_test_804, 3). %%
maybe_skip_search(parser_chat80, must_test_80_sanity, 3). %%
maybe_skip_search(parser_chat80, nd, 3). %%
maybe_skip_search(parser_chat80, nd, 4). %%
maybe_skip_search(parser_chat80, nd, 5). %%
maybe_skip_search(parser_chat80, noText, 4). %%
maybe_skip_search(parser_chat80, op_apply, 3). %%
maybe_skip_search(parser_chat80, open_quant, 5). %%
maybe_skip_search(parser_chat80, or_xmask, 3). %%
maybe_skip_search(parser_chat80, participle_vt, 3). %%
maybe_skip_search(parser_chat80, portray_bit, 4). %%
maybe_skip_search(parser_chat80, pos_conversion_db, 5). %%
maybe_skip_search(parser_chat80, quant_op, 4). %%
maybe_skip_search(parser_chat80, slot_match, 5). %%
maybe_skip_search(parser_chat80, slot_tag, 3). %%
maybe_skip_search(parser_chat80, strip_key, 2). %%
maybe_skip_search(parser_chat80, subquery, 6). %%
maybe_skip_search(parser_chat80, test_quiet, 4). %%
maybe_skip_search(parser_chat80, txt_no_db, 2). %%
maybe_skip_search(parser_chat80, txt_not_db, 2). %%
maybe_skip_search(parser_chat80, txt_there_db, 2). %%
maybe_skip_search(parser_chat80, value80, 3). %%
maybe_skip_search(parser_chat80, virtual, 3). %%
maybe_skip_search(parser_e2c, make_object, 4). %%
maybe_skip_search(parser_e2c, test_e2c, 2). %%
maybe_skip_search(parser_e2c, to_person, 2). %%
maybe_skip_search(talk_db, clause_always, 2). %%
maybe_skip_search(talk_db, talk_db_argsIsa, 3). %%
maybe_skip_search(talk_db, talk_db_pos_trans, 2). %%
maybe_skip_search(vndata, verbnet_external_id, 4). %%
maybe_skip_search(vndata, verbnet_pred, 2). %%
maybe_skip_search(vndata, verbnet_type, 2). %%
maybe_skip_search(wnframes, ss_type, 2). %%
maybe_skip_search(wnframes, wn_cat, 2). %%
maybe_skip_search(parser_chat80, punct_to_sent_type, 3).
maybe_skip_search(parser_chat80, chat80, 2).

skip_lex_arg_type(parser_chat80, inverse_db(more, -, less)).
skip_lex_arg_type(parser_e2c, det_quantify(word, data, data, data)).
skip_lex_arg_type(parser_e2c, into_split(pos, data)).
skip_lex_arg_type(M, P):- compound(P), functor(P, F, A), maybe_skip_search(M, F, A), !.

:- dynamic(lex_arg_type_fix/2).

lex_arg_type( _, M, P):- nonvar(P), skip_lex_arg_type(M, P), !.


lex_arg_type( _,   mu, word_to_cycword(word, pos, cycword, data)).
lex_arg_type( _, clex, clex_adj(word, word, data)).
lex_arg_type( _, clex, adj_itr(word, wordbase)).
lex_arg_type( _, clex, adj_itr_comp(word, wordbase)).
lex_arg_type( _, clex, adj_itr_sup(word, wordbase)).
lex_arg_type( _, clex, adj_tr(word, wordbase, prep)).
lex_arg_type( _, clex, adj_tr_comp(word, wordbase, prep)).
lex_arg_type( _, clex, adj_tr_sup(word, wordbase, prep)).
lex_arg_type( _, clex, adv(word, wordbase)).
lex_arg_type( _, clex, adv_comp(word, wordbase)).
lex_arg_type( _, clex, adv_sup(word, wordbase)).
lex_arg_type( _, clex, pndef_sg(word, wordbase, data)).
lex_arg_type( _, clex, pndef_pl(word, wordbase, data)).
lex_arg_type( _, clex, dv_finsg(word, wordbase, data)).
lex_arg_type( _, clex, dv_infpl(word, wordbase, data)).
lex_arg_type( _, clex, dv_pp(word, wordbase, data)).
lex_arg_type( _, clex, iv_finsg(word, wordbase)).
lex_arg_type( _, clex, iv_infpl(word, wordbase)).
lex_arg_type( _, clex, mn_pl(word, wordbase)).
lex_arg_type( _, clex, mn_sg(word, wordbase)).
lex_arg_type( _, clex, noun_mass(word, wordbase, data)).
lex_arg_type( _, clex, noun_sg(word, wordbase, data)).
lex_arg_type( _, clex, pn_pl(word, wordbase, data)).
lex_arg_type( _, clex, pn_sg(word, wordbase, data)).
lex_arg_type( _, clex, noun_pl(word, wordbase, data)).
lex_arg_type( _, clex, prep(word, data)).
lex_arg_type( _, clex, tv_finsg(word, wordbase)).
lex_arg_type( _, clex, tv_infpl(word, wordbase)).
lex_arg_type( _, clex, tv_pp(word, wordbase)).

lex_arg_type( _, framenet, fnpattern(word, id(fn), concept(fn), data)).

lex_arg_type( _, framenet, frel(+(causative_of), concept(fn2), concept(fn2))).
lex_arg_type( _, framenet, frel(+(coreset), concept(fn2), concept(fn2))).
lex_arg_type( _, framenet, frel(+(excludes), concept(fn2), concept(fn2))).
lex_arg_type( _, framenet, frel(+(inchoative_of), concept(fn2), concept(fn2))).
lex_arg_type( _, framenet, frel(+(inheritance), data, concept(fn2))).
lex_arg_type( _, framenet, frel(+(perspective_on), concept(fn2), concept(fn2))).
lex_arg_type( _, framenet, frel(+(precedes), concept(fn2), concept(fn2))).
lex_arg_type( _, framenet, frel(+(reframing_mapping), concept(fn2), concept(fn2))).
lex_arg_type( _, framenet, frel(+(requires), concept(fn2), concept(fn2))).
lex_arg_type( _, framenet, frel(+(see_also), concept(fn2), concept(fn2))).
lex_arg_type( _, framenet, frel(+(subframe), concept(fn2), concept(fn2))).
lex_arg_type( _, framenet, frel(+(using), concept(fn2), /*concept(fn2)*/ data )).
lex_arg_type( _, framenet, frels(+(causative_of), concept(fn2), concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(coreset), concept(fn2), concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(excludes), concept(fn2), concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(inchoative_of), concept(fn2), concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(inheritance), data, concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(perspective_on), concept(fn2), concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(precedes), concept(fn2), concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(reframing_mapping), concept(fn2), concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(requires), concept(fn2), concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(see_also), concept(fn2), concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(subframe), concept(fn2), concept(fn2), data, data)).
lex_arg_type( _, framenet, frels(+(using), concept(fn2), data,/* concept(fn2),*/ data, data)).

lex_arg_type( 0, framenet, fsr(word-pos, concept(fn), data)).
lex_arg_type( 1, framenet, semtype(concept(fn), data, data)).
lex_arg_type( 0, mu, thetaRole(word, data, concept(tt2), data, data, concept(tt2), string, string, data)).

lex_arg_type( _, tt0, ttholds(concept(tt),concept(tt))).
lex_arg_type( _, tt0, ttholds(word,concept(tt))).
lex_arg_type( _, tt0, ttholds(data, id(tt), pos)).
lex_arg_type( _, tt0, ttholds(data, id(tt), pos, data)).
lex_arg_type( _, tt0, ttholds(data, id(tt), pos, data, concept(tt))).
lex_arg_type( _, tt0, ttholds(data, concept(tt), data)).
lex_arg_type( 1, tt0, ttholds(pos, id(tt), string)).
lex_arg_type( fallback, nldata_BRN_WSJ_LEXICON, text_bpos(word, pos)).
lex_arg_type( _, nldata_colloc_pdat, mws(seq(word), pos)).
lex_arg_type( _, nldata_dictionary_some01, dictionary(pos, seq(word), seq(word))).
lex_arg_type( _, nldata_dictionary_some01, explitVocab(word, pos)).
lex_arg_type( fallback, nldata_freq_pdat, text_bpos(data, word, pos)).
lex_arg_type( _, parser_chat80, adj_sign_db(wordbase, data)).
% lex_arg_type( _, parser_chat80, adjunction_lf(wordbase, data, data)).
lex_arg_type( _, parser_chat80, adjunction_lf(any(word), data, data, data)).
lex_arg_type( _, parser_chat80, aggr_adj_db(word, data, data, wordbase)).
lex_arg_type( _, parser_chat80, aggr_noun_db(word, data, data, wordbase)).
lex_arg_type( _, parser_chat80, borders(wordbase, wordbase)).
lex_arg_type( _, parser_chat80, city(wordbase, wordbase, data)).
lex_arg_type( _, parser_chat80, comparator_db(wordbase, data, data, data, data)).
lex_arg_type( _, parser_chat80, contains(wordbase, wordbase)).
lex_arg_type( _, parser_chat80, contains0(wordbase, wordbase)).
lex_arg_type( _, parser_chat80, context_pron_db(wordbase, data, data)).
% lex_arg_type( _, parser_chat80, adj_db(word, data)).
lex_arg_type( _, parser_chat80, country(wordbase, wordbase, data, data, data, data, wordbase, wordbase)).
lex_arg_type( _, parser_chat80, det_db(wordbase, data, wordbase, data)).
lex_arg_type( _, parser_chat80, in_continent(wordbase, wordbase)).
lex_arg_type( _, parser_chat80, int_art_db(word, data, data, data)).
lex_arg_type( _, parser_chat80, int_pron_db(word, data)).
lex_arg_type( _, parser_chat80, intrans_LF(wordbase, data, data, data, data, data)).
%lex_arg_type( _, parser_chat80, inverse_db(word, data, word)).
lex_arg_type( _, parser_chat80, latitude80(wordbase, data)).
lex_arg_type( _, parser_chat80, loc_pred_prep_db(word, data, data)).
lex_arg_type( _, parser_chat80, measure_op_db(word, data, data, data)).
lex_arg_type( _, parser_chat80, measure_unit_type_db(word, data, data, data)).
lex_arg_type( _, parser_chat80, meta_noun_db(word, data, data, data, data, data, data)).
%lex_arg_type( _, parser_chat80, name_db(seq(word), wordbase)).
lex_arg_type( _, parser_chat80, pers_pron_db(word, pos, data, pos, pos)).
lex_arg_type( _, parser_chat80, poss_pron_db(word, pos, data, pos)).
lex_arg_type( _, parser_chat80, pronoun_to_var(word, upcase(word))).
%lex_arg_type( _, parser_chat80, punct_to_sent_type(wordbase, data, pos)).
lex_arg_type( _, parser_chat80, quantifier_pron_db(word, wordbase, data)).
lex_arg_type( _, parser_chat80, ratio_db(wordbase, wordbase, data, data)).
lex_arg_type( _, parser_chat80, rel_adj_db(word, wordbase)).
lex_arg_type( _, parser_chat80, rel_pron_db(word, pos)).
lex_arg_type( _, parser_chat80, river_pathlist(wordbase, any(wordbase))).
lex_arg_type( _, parser_chat80, sup_adj_db(word, wordbase)).
lex_arg_type( _, parser_chat80, sup_op(word, data)).
lex_arg_type( _, parser_chat80, terminator_db(word, data)).
lex_arg_type( _, parser_chat80, tr_number(word, data)).
lex_arg_type( _, parser_chat80, trans_LF(word, data, data, data, data, data, data, data, data)).
lex_arg_type( _, parser_chat80, type_measured_by_pred_db(data, data, word)).
lex_arg_type( _, parser_chat80, units_db(word, data)).
lex_arg_type( _, parser_chat80, regular_past_db(word, wordbase)).
lex_arg_type( _, parser_chat80, subj_obj_LF(data, word, data, data, data, data, data)).

lex_arg_type( _, parser_e2c, aux_lf(word, data, data, data)).
lex_arg_type( _, parser_e2c, char_type_sentence(word, pos)).
lex_arg_type( _, parser_e2c, comparative_number(seq(word), data)).
lex_arg_type( _, parser_e2c, flexicon(pos, data, seq(word))).
lex_arg_type( _, parser_e2c, idiomatic_replace(seq(word), seq(word))).

lex_arg_type( _, parser_e2c, is_junct(word, data)).
lex_arg_type( _, parser_e2c, pn_dict_tiny(word, data)).
lex_arg_type( _, parser_e2c, reflexive_pronoun(wordbase, word, data)).
lex_arg_type( _, parser_e2c, type_wrd_frm5(pos, word, data, data, data)).
lex_arg_type( _, parser_e2c, type_wrd_sem(pos, any(word), data)).
lex_arg_type( _, parser_e2c, type_wrd_sem5(pos, word, data, data, data)).
lex_arg_type( _, parser_e2c, type_wrd_wrd_sem6(pos, word, wordbase, data, data, data)).
lex_arg_type( _, parser_e2c, whpron_dict(word, data)).

lex_arg_type( _, talk_db, talk_db(pos, word)).
lex_arg_type( _, talk_db, talk_db(+(domain), wordbase, data)).
lex_arg_type( _, talk_db, talk_db(+(noun1), wordbase, word)).
lex_arg_type( _, talk_db, talk_db(+(superl), wordbase, word)).
lex_arg_type( _, talk_db, talk_db(+(comp), wordbase, word)).
lex_arg_type( _, talk_db, talk_db(pos, word, word, wordbase)).
lex_arg_type( _, talk_db, talk_db(pos, wordbase, word, word, word, word)).

lex_arg_type( _, vndata, verbnet_class(concept(vn), data, concept(vn), listof(concept(vn)))).
lex_arg_type( _, vndata, verbnet_example(concept(vn), data)).
lex_arg_type( _, vndata, verbnet_frame(data, verb(vn(concept(vn))), data, data, data, data, concept(vn))).
lex_arg_type( _, vndata, verbnet_frame_prop(concept(vn), data, data)).
lex_arg_type( _, vndata, verbnet_frame_vars(concept(vn), data, data)).
lex_arg_type( _, vndata, verbnet_initial_vars(concept(vn), data, data)).
lex_arg_type( _, vndata, verbnet_map_wn(word, listof(concept(wn)), concept(vn))).
lex_arg_type( _, vndata, verbnet_semantics(concept(vn), data)).
lex_arg_type( _, vndata, verbnet_syntax(concept(vn), data)).
lex_arg_type( _, vndata, verbnet_to_framenet(concept(vn), word, concept(fn))).
lex_arg_type( _, vndata, verbnet_word(word, concept(vn), data)).

lex_arg_type( _, wnframes, ant(id(wn), data, id(wn), data)).
lex_arg_type( _, wnframes, at(id(wn), id(wn))).
lex_arg_type( _, wnframes, cls(id(wn), data, id(wn), data, t)).
lex_arg_type( _, wnframes, cs(id(wn), id(wn))).
lex_arg_type( _, wnframes, der(id(wn), data, id(wn), data)).
lex_arg_type( _, wnframes, ent(id(wn), id(wn))).
lex_arg_type( _, wnframes, fr(id(wn), data, data)).
lex_arg_type( _, wnframes, g(id(wn), data)).
lex_arg_type( _, wnframes, hyp(id(wn), data)).
lex_arg_type( _, wnframes, ins(id(wn), id(wn))).
lex_arg_type( _, wnframes, mm(id(wn), id(wn))).
lex_arg_type( _, wnframes, mp(id(wn), id(wn))).
lex_arg_type( _, wnframes, ms(id(wn), id(wn))).
lex_arg_type( _, wnframes, opposite(pos, wordbase, wordbase, data)).  
lex_arg_type( _, wnframes, per(id(wn), data, id(wn), data)).
lex_arg_type( _, wnframes, ppl(id(wn), data, id(wn), data)).
lex_arg_type( 0, wnframes, s(id(wn), data, word, pos, data, data)).
lex_arg_type( _, wnframes, sa(id(wn), data, id(wn), data)).
lex_arg_type( _, wnframes, sim(id(wn), id(wn))).
lex_arg_type( _, wnframes, sk(id(wn), data, data)).
lex_arg_type( _, wnframes, syntax(id(wn), data, pos)).
lex_arg_type( _, wnframes, vgp(id(wn), data, id(wn), data)).

binds_with(C,_Val):- \+ atomic(C),!,fail.
binds_with(C, Val):- var(Val),!, put_attr(Val, binds_atomic, C).
binds_with(C, Val):- compound(Val),!, sub_term(V, Val), atomic(V), same_atoms(C,V),!.
binds_with(C, Val):- same_atoms(C,Val).

same_atoms(A1,A2):- A1==A2->true;(A2\==[],A1\==[],downcase_atom(A1,V1),downcase_atom(A2,V2),!,V1==V2).


% binds_with(C, Val):- compound(Val), !, arg(_, Val, V), V==C.


% binds_with(C, Val):- var(C), !, freeze(C,binds_with(C, Val)).



binds_atomic:attr_unify_hook(C, Val):- binds_with(C, Val).


%:- gen_preds_m_p.


/*

gen_preds_atomic(C, P):- !, fail,
 gen_preds_m_p(C, M, P, GoalPre, GoalPost),
 GoalPre,
 do_gen_preds_atomic(C, M, P),
 GoalPost.

qcallc(MP):- quietly((catch(call(MP), _, fail))).

do_gen_preds_atomic(C, M, P):- !, arg(_, P, C), call(M:P).
do_gen_preds_atomic(C, M, P):- fail,
 binds_with(C, W), arg(_N, P, W),
 qcallc(M:P), nonvar(W).
do_gen_preds_atomic(C, M, P):- fail,
 qcallc(M:P), notrace(sub_var(C, P)).
do_gen_preds_atomic(C, M, P):-
 qcallc(M:P), notrace(arg(_, P, C)).

binds_with(C, W):- put_attr(W, binds_atomic, C).

binds_atomic:attr_unify_hook(C, Val):- C==Val.
binds_atomic:attr_unify_hook(C, Val):- compound(Val), !, arg(_, Val, V), V==C.
%binds_atomic:attr_unify_hook(C, Val):- compound(Val), notrace(sub_var(C, Val)).

% gen_preds_containing(C, P):- between(2, 12, A), functor(P, cyc_t, A), arg(N, P, C), N>1, call(P).
*/




end_of_file.







specialWrite(List):- specialWrite(' ', ' ', List).
specialWrite_commas(List):- specialWrite(' ', ', ', List).
specialWrite_and(List):- specialWrite(', ', ', and ', List).

from_isEach(isEach(SubList), SubList).
from_isEach(WASEACH, SubList):- WASEACH =.. [isEach|SubList].

% specialWrite(+Before, +After, +Conj, +List).
specialWrite(_, _, _, []).
% isEach
specialWrite(Before, After, Conj, [H|T]):-
   from_isEach(H, SubList),
   write(Before),
   specialWrite_and(SubList),
   write(After),
   specialWrite(Before, After, Conj, T).
% last Item
specialWrite(Before, After, Conj, [H, T]):-
   write(Before),
   write(H),
   write(Conj),
   specialWrite(Before, After, Conj, T).
% Rest Of Items
specialWrite(Conj, [H|T]):-
   write(Before),
   write(H),
   write(After),
   specialWrite(Before, After, Conj, T).


