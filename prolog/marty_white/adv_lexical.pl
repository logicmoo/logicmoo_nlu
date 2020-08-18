
is_synset_id(X):- integer(X), X > 100001739.

english_some(X, SK):- is_synset_id(X), member(S, [5, 4, 3, 2, 1, _]), wnframes:sk(X, S, SK), !.
english_some(X, Y):- \+ compound(X), !, Y=X.
english_some([X1, X2|More], Y):- integer(X2), is_synset_id(X1), wnframes:sk(X1, X2, SK), !, english_some([SK|More], Y).
english_some(H-T, HH-TT):- !, english_some(H, HH), =(T, TT).
english_some([H|T], [HH|TT]):- !, english_some(H, HH), english_some(T, TT).
english_some(X, Y):-
  compound_name_arguments(X, F, Args), F \== sk,
  english_some(Args, ArgsO), !,
  compound_name_arguments(Y, F, ArgsO).
english_some(X, X):- !.

lex_print(X):- X == [], !, wdmsg(X), !.
lex_print(X):- is_list(X), !, maplist(lex_print, X).
lex_print(X):- english_some(X, Y), wdmsg(Y), !.
lex_print(X):- english_some(X, Y), pprint(Y, always).

cvt_to_qa_string(A, M):- atomic_list_concat(['"', A, '"'], M).
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

string_to_cyc_word(String, P, C, nl0988(P, C, QAString)):-
 cvt_to_qa_string(String, QAString),
 nl0988(P, C, QAString), ok_speech_part_pred(P).
string_to_cyc_word(String, P, C, acnl(P, C, RealString)):-
 cvt_to_real_string(String, RealString),
 acnl(P, C, RealString, _), ok_speech_part_pred(P).

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
 (nl0988(isa, P, rtSpeechPartPredicate); \+ nl0988(isa, P, _)), !.

subtype_index(_, +(_), _, _Value, _CArg, _PreCall, _PostCall):- !, fail.
subtype_index(_, word, string, Value, CArg, PreCall, PostCall):-  PreCall = cvt_to_real_string(Value, CArg), PostCall = true.
subtype_index(_, W, W, Value, CArg, PreCall, PostCall):- PreCall = (CArg = Value), PostCall = true.
subtype_index(_, W, W-pos, Value, CArg, PreCall, PostCall):- PreCall = (CArg = (Value-_)), PostCall = (true;true).

subtype_index(_, word, wordbase, Value, CArg, PreCall, PostCall):- PreCall = (CArg = Value), PostCall = true.

%subtype_index(_, W, any(W), Value, CArg, PreCall, PostCall):- !, PreCall = freeze(CArg, sub_var(Value, CArg)), PostCall = true.
subtype_index(_, W, any(W), Value, CArg, PreCall, PostCall):-  PreCall = true, PostCall = sub_var(Value, CArg).
subtype_index(_, W, seq(W), Value, CArg, PreCall, PostCall):- atom(W), PreCall = (CArg = [_|_]), PostCall = sub_var(Value, CArg).
subtype_index(_, W, listof(W), Value, CArg, PreCall, PostCall):- PreCall = (CArg = [_|_]), PostCall = member(Value, CArg).

do_lex_arg_type(Value):-
 do_lex_arg_type(word, Value, [], [], Datum),
 lex_print(Datum).

do_lex_arg_type(Type, Value):-
 do_lex_arg_type(0, Type, Value, [], Datum),
 lex_print(Datum).

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
   atom(A1),atom(A2),
   atom_concat(A1,_,A2),
   atom_length(A1, L), L > 3,
   nb_setarg(N1,Guess,wordbase),
   nb_setarg(N2,Guess,word))).


guess_arg_type(X, S):- string(S), X= string.
guess_arg_type(X, S):- integer(S), S > 100001739, X = id(wn).
guess_arg_type(X, S):- number(S), X = data.
guess_arg_type(X, S):- var(S), X = data.
guess_arg_type(X, S):- S==[], X = unk.
guess_arg_type(listof(X),S):- S=[E|_], nonvar(E), guess_arg_type(X, E).
guess_arg_type(X, S):- \+ atom(S), X = unk.

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

get_vv(X,Arg):- compound(Arg), Arg = '++'(X).

get_info_about_type(Level, Type, Value, MoreF):-
  Level2 is Level+1,
  lex_arg_type(Level, M, P),
  arg(N, P, Matcher),
  once((nonvar(Matcher), subtype_index(Level, Type, Matcher, Value, CArg, PreCall, PostCall))),
  functor(P, F, A),
  functor(C, F, A),
  copy_value_args(P, C),
  arg(N, C, CArg),
  % nop (wdmsg(( P -> C))),
  matcher_to_data_args(=(Matcher), data, P),  
  call(PreCall),
  wdmsg(M:get_info_about_type(Level, Type, Value, P->C, PostCall)),  
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

:- export(denote_lex/1).
denote_lex(String):-
 denote_lex(String, Datum),
 lex_print(Datum).

:- export(denote_lex/2).
denote_lex(String, Datum):-
 munl_call(into_text80(String, Words)),
 maplist(into_dm, Words, Todo),
 Level = 0,
 denote_lex( Level, Todo, [], Datum), !.

into_dm(String, txt(AString)):- cvt_to_atom(String, AString).
didnt_do(Todo, skipped(Todo)).

denote_lex(_Level, [], Done, Done):-!.
denote_lex( Level, Todo, Done, Out):- correct_dos(Todo, TodoS), TodoS\==Todo, !, denote_lex( Level, TodoS, Done, Out).
denote_lex( Level, Todo, Done, Out):- correct_dos(Done, DoneS), DoneS\==Done, !, denote_lex( Level, Todo, DoneS, Out).
denote_lex( Level, [M:Did|Todo], Done, Out):- atom(M), !, denote_lex( Level, [Did|Todo], Done, Out).


denote_lex( Level, Todo, Done, Out) :- Level > 3, !, maplist(didnt_do, Todo, NotTodo), append(Done, NotTodo, Out).
denote_lex( Level, [txt(String)|Todo], Done, Out):-
 get_denote_txt(String, Result),
 append(Done, Result, DoneResult), my_l2s(DoneResult, NewDone),
 denote_lex( Level, Todo, NewDone, Out).

denote_lex( Level, [todo(Type, Value)| Todo], Done, Out):- !,
  denote_lex( Level, [todo(Level, Type, Value)| Todo], Done, Out).

denote_lex(_Lev__, [todo(Level, DoType, Value)| Todo], Done, Out):-
 doable_type(Level, DoType, Type),
 Doing = todo(Level, Type, Value),
 add_if_new(Done, Doing, NewDone),
 findall(Info, get_info_about_type(Level, Type, Value, Info), More),
 add_do_more(More, Todo, NewDone, NewTodo),
 denote_lex( Level, NewTodo, NewDone, Out), !.

denote_lex( Level, [cycWord(P, C)|Todo], Done, Out):-
 findall(concept(Subj), conceptForWord(P, C, Subj), More1),
 findall(Info, info_about(C, Info), More2),
 add_if_new(Done, cycWord(P, C), NewDone),
 add_do_more([More1, More2], Todo, NewDone, NewTodo),
 denote_lex( Level, NewTodo, NewDone, Out).

denote_lex( Level, [concept(C)|Todo], Done, Out):- fail,
 findall(Info, info_about(C, Info), More2),
 add_if_new(Done, concept(C), NewDone),
 add_do_more(More2, Todo, NewDone, NewTodo),
 denote_lex( Level, NewTodo, NewDone, Out).

denote_lex( Level, [Did|Todo], Done, Out):-
 Did =..[T, F|RestP],
 member(T, [acnl, nl0988, t, talk_db]),
 (T == acnl -> append(Rest, [_Ref], RestP) ; RestP= Rest),
% (T == t -> TAdd = Do ; TAdd = T),
 atom(F),
 Do =..[F|Rest],
 denote_lex( Level, [Do|Todo], Done, Out).

denote_lex( Level, [Did|Todo], Done, Out):-
 compound(Did), functor(Did, F, A),
 findall(Arg, (arg(_, Did, Arg), nonvar(Arg), searches_arg(F, A, Arg)), List),
 List\==[],
 maplist(add_search_arg, List, DoNow),
 add_do_more(DoNow, Todo, Done, NewTodo),
 denote_lex( Level, NewTodo, Done, Out).


denote_lex( Level, [Did|Todo], Done, Out):-
 add_if_new(Done, Did, NewDone),
 denote_lex( Level, Todo, NewDone, Out).

add_search_arg(Arg, concept(Arg)).

  % 202488488
searches_arg(_F, _A, _Arg):- !, fail.
searches_arg(_F, _A, Arg):- is_synset_id(Arg), !.
searches_arg(_F, _A, Arg):- \+ atom(Arg), !, fail.
searches_arg(_F, _A, Arg):- atom_length(Arg, Len), Len<4, !, fail.
% searches_arg(_F, _A, Arg):- atom_contains(Arg, '.'), !.
%searches_arg(_F, _A, Arg):- (atom_contains(Arg, '.');atom_contains(Arg, '-');atom_contains(Arg, '%')), !.



conceptForWord(_P, C, Subj):- nl0988(denotation, C, _, _, Subj).
conceptForWord(_P, C, Subj):- acnl(denotation, C, _, _, Subj, _).

:- dynamic(tmp:saved_denote_lex/2).
:- retractall(tmp:saved_denote_lex(  _, _)).
get_denote_txt(String, Out):- catch(downcase_atom(String, DCAtom), _, fail), DCAtom\==String, !, get_denote_txt(DCAtom, Out).
get_denote_txt(DCAtom, Out):- tmp:saved_denote_lex( DCAtom, Out), !.
get_denote_txt(DCAtom, Out):- do_denote_lex(DCAtom, Out), asserta(tmp:saved_denote_lex( DCAtom, Out)), !.

do_denote_lex(AString, OutS):-
 findall([cycWord(P, C), Why], string_to_cyc_word(AString, P, C, Why), More1),
 findall(Info, string_to_info(AString, Info), More2),
 NewDone = [txt(AString)],
 cvt_to_atom(AString, Atom),
 Level = 0,
 add_do_more([todo( Level, word, Atom), More1, More2], [], NewDone, NewTodo),
 denote_lex( Level, NewTodo, NewDone, Out), !,
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



gen_preds_containing(C, P):- between(2, 12, A), functor(P, nl0988, A), arg(N, P, C), N>1, call(P).
gen_preds_containing(C, P):- ac_nl_info_1(C, Results), member(P, Results).
gen_preds_containing(C, P):- between(3, 12, A), functor(P, acnl, A), arg(N, P, C), N<A, N>1, call(P).
%gen_preds_containing(C, P):- gen_preds_atomic(C, P).

%gen_preds_containing(C, P):- between(2, 12, A), functor(P, nl0988, A), call(P), sub_term(X, P), X==C.
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
lex_arg_type( _, framenet, frel(+(causative_of), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(coreset), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(excludes), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(inchoative_of), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(inheritance), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(perspective_on), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(precedes), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(reframing_mapping), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(requires), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(see_also), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(subframe), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frel(+(using), concept(fn), concept(fn))).
lex_arg_type( _, framenet, frels(+(causative_of), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(coreset), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(excludes), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(inchoative_of), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(inheritance), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(perspective_on), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(precedes), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(reframing_mapping), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(requires), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(see_also), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(subframe), concept(fn), concept(fn), data, data)).
lex_arg_type( _, framenet, frels(+(using), concept(fn), concept(fn), data, data)).
lex_arg_type( 0, framenet, fsr(word-pos, concept(fn), data)).
lex_arg_type( 1, framenet, semtype(concept(fn), data, data)).
lex_arg_type( 0, mu, thetaRole(word, data, concept(tt2), data, data, concept(tt2), string, string, data)).

lex_arg_type( _, tt0, ttholds(+(male),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('SECAM'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(rare),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(film_converted_to_NTSC),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(us),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('NTSC'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(fr),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(cardioid),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('figure-8'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(hypercardioid),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(omnidirectional),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(female),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(famous),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(brown),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(leather),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(cotton),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(white),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(closed_captioned),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(fanciful),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('Asian'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(bronze),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('BW'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(floral),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(print),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(silk),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(large_crosshatch),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(small_chevrons),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('Black'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_ankle),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_foot),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(triangles),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(glove_leather),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(encrypted),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(nonencrypted),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(stereo),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('Nagravision'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('Panda1'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(vertical_polarization),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('Caucasian'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('Ceefax'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(ca),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(acrylic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(stripes),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(checker),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(squares),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(delayed),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(crosshatch),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(light_blue),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(blue),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(supercardioid),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(original_run),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(red),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(mono),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('J17'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(copper),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(herringbone),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(large_stripes),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('Hispanic'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(thin_stripes),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(thin_checker),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(green),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(uk),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(liquid),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(ovals),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(splotches),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(pink),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(dark_blue),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(wide_angle_cardioid),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(live),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('PAL'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(many_to_one),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(black),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(stitch_strings),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(light_gray),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(circles),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(dark_brown),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('Sanforized'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('Shetland_wool'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(yellow),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(nylon),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(tie_dye),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(bars),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(crosses),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(barrier_isa),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(professional_product),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(in_color),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(atom_nickel),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(steel),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(abstinent),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(humorous),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(adult),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(alto),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(free_object),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(child),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(embryonic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(fetal),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(annoying),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(symmetric),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(fixed_object),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(walkable),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(apolitical),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_top),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(vestlayer),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(trade_arbitrage),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(humanmade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_bottom),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_middle),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(cylinder),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_MBA_program),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_college),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_day_care),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_doctoral_program),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_eighth_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_elementary_school),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_eleventh_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_fifth_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_first_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_fourth_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_graduate_school),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_high_school),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_junior_college),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_junior_high_school),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_kindergarten),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_law_school),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_medical_school),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_ninth_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_nursery_school),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_preschool),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_school),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_second_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_secondary_school),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_seventh_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_sixth_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_technical_school),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_tenth_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_third_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attend_twelfth_grade),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Adventist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Afghan),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_African),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_American),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Anglican),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Anglo_Catholic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Asian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Baptist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Biarritz),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_British),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Buddhist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Burgundian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Californian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Calvinist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Canadian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Catholic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Chinese),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Christian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Christian_Scientist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Confucianist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Czech),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Czechoslovakian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Danish),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Douarnenez),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Dutch),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_ENA),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_ENS),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_East_Ender),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_English),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Episcopal),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Episcopalian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_European),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Finnish),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_French),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_German),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Greek_Orthodox),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Hindu),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Hongkong),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Ile_de_France),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Indian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Irish),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Italian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Jaina),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Japanese),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Jewish),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Kashmiri),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Korean),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Liverpudlian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Londoner),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Lutheran),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Martinique),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Mennonite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Menton),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Methodist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Mormon),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Muslem),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Neuilly),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_New_Jersey),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_New_York),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_North_Korean),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Northern_Irish),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Orthodox_Eastern_Church),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Parisian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Polish),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Protestant),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Quaker),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Roman_Catholic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Russian_Orthodox),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Scottish),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Seventh_Day_Adventist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Shiite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Shintoist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Sikh),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Slovakian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Sorbonne),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_South_Korean),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Spanish),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Sunnite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Swedish),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Swiss),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Taiwanese),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Taoist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Thai),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Tokyoite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Vedaic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Welsh),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_X),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Zen_Buddhist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_Zoroastrian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_agnostic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_animist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_anti_religious),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_atheist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_chafiite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_doer),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_good_Samaritan),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_hanafite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_kharidjite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_libertine),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_malekite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_materialist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_monotheist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_occultist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_pantheist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_polytheist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_shamanist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_witch),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(attr_wrongdoing),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(illegal),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(baritone),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_hand),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(bass),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(bass_baritone),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(overlayer),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(ellipsoid),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(sentient),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(bigoted),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(fly),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(black_leather),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(underlayerpost),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(bouncy),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(underlayerpre),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(tweed),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(bullying),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(calfskin_velvet),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(can_hold),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(can_lift),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(cone),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(orange),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(dots),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(gray),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(sphere),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(chine_cotton),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_calf),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_forearm),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_knee),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_thigh),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(shirtlayer),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clothing_wrist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(clumsy),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(coatlayer),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(construction_membrane),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(contralto),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(corduroy),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(wool),concept(tt))).
lex_arg_type( _, tt0, ttholds(+('super-100_S'),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(worsted),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(pin_stripe),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(fine_weave),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(counter_tenor),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(cowardly),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(polka_dot),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(small_dots),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(small_squares),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(dead),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(denim),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(do_postdoctoral_work),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(drivable),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(unwalkable),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(entertaining),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(extroverted),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(fine_stitch),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(ptrans_swim),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(taped),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(gas),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(groggy),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(gullible),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(has_ceiling),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(heavier_than_air),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(lighter_than_air),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(underlayer),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(intelligent),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Bolshevist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Castroite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Democratic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Fabian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Leninist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Maoist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Marxist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Marxist_Leninist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Marxist_revisionist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Owenite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Republican),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Saint_Simonian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Social_Democratic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Stalinist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Titoist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Tory),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_Trotskyite),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(political),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_anarchist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_anarcho_syndicalist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_anticapitalist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_capitalist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(urban),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_collectivist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_communist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_conservative),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(rural),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_extremist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_fascist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_individualistic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(inexperienced),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(infant),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(introverted),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(lazy),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_left_wing_radical),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_left_wing),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_liberal),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(litigious),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(lucky),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(male_chauvinist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(mezzo_soprano),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(middle_aged_adult),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_moderate),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_nationalist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_nazi),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_neonazi),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(nerdy),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(neurosis),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_nihilist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(noble),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(nonborn),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(old_adult),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(optimistic),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(pacifist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_phalansterian),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(poor),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(prejudiced),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(preppy),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_progressiste),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_progressive),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(psychosis),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(racist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_radical),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_radical_socialiste),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_reactionary),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_revolutionary),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(rich),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_right_wing),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_royalist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(schizophrenia),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(skeptical),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(snobby),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_socialist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(soprano),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(spaced_out),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_state_socialist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(suburban),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_subversive),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_syndicalist),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(talkative),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(technical),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(teenager),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(tenor),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(thirty_something),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_ultraconservative),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(unintelligent),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(unkind),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(unsuccessful),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(very_old_adult),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_worker),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(politically_yippie),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(young_adult),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(insider_trading),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(ivory_colored),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(jacketlayer),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(khaki_color),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(light_brown),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(market_manipulation),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(silent),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(nonreligious),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(not),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(nubuck),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(olive_green),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(one_to_one),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(overlayerpost),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(rollable),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(rubber),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(sick),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(sing),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(sky_blue),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(trade_speculate),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(teach),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(tielayer),concept(tt))).
lex_arg_type( _, tt0, ttholds(+(weave),concept(tt))).

lex_arg_type( _, mu, ttholds(isa, concept(tt))).

lex_arg_type( _, mu, ttholds(data, id(tt), pos)).
lex_arg_type( _, mu, ttholds(data, id(tt), pos, data)).
lex_arg_type( _, mu, ttholds(data, id(tt), pos, data, concept(tt))).
lex_arg_type( _, mu, ttholds(data, concept(tt), data)).
lex_arg_type( 1, mu, ttholds(pos, id(tt), string)).
lex_arg_type( _, nldata_BRN_WSJ_LEXICON, text_bpos(word, pos)).
lex_arg_type( _, nldata_colloc_pdat, mws(seq(word), pos)).
lex_arg_type( _, nldata_dictionary_some01, dictionary(pos, seq(word), seq(word))).
lex_arg_type( _, nldata_dictionary_some01, explitVocab(word, pos)).
lex_arg_type( _, nldata_freq_pdat, text_bpos(data, word, pos)).
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

% gen_preds_containing(C, P):- between(2, 12, A), functor(P, nl0988, A), arg(N, P, C), N>1, call(P).
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


