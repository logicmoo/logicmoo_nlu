:- module(plkb0988_iface,
 [ redo_0988/0, kb0988_qcompile/0, kb0988_info/0, kb0988_qconsult/0, kb0988_qconsult/2,
 lmcache:kb0988_qconsulted/0]).

:- set_module(class(library)).
:- use_module(library(prolog_jiti)).
%:- use_module(library(pfc_lib)).
:- use_module(library(yall)).
:- use_module(library(logicmoo_utils)).
:- use_module(library(logicmoo_common)).
:- system:op(700, xfx, ('univ_safe')).

%:- unload_file(kb0988_kb).
% :- set_module(class(test)).
:- use_module(library(statistics), [time/1]).

do_mdep(FA):-
 M = kb0988,
 '$current_source_module'(SM),
 '$current_typein_module'(CM),
 M:dynamic(FA),
 M:multifile(FA),
 M:export(FA),
 M:public(FA),
 CM:import(M:FA),
 CM:export(CM:FA),
 SM:import(M:FA),
 SM:export(SM:FA).

:- dynamic(prop_stem/1).

prop_stem(assertion_has_meta_assertion/1).
prop_stem(abbreviation/1).
prop_stem(abnormal/1).
prop_stem(asserted/1).
prop_stem(asserted_by/2).
prop_stem(asserted_when/2).
prop_stem(assertive_wff/1).
prop_stem(atomic/1).
prop_stem(backward/1).
prop_stem(backward_rule_required_for/1).
prop_stem(bookkeeping/1).
prop_stem(code/1).
prop_stem(computed_skolem/1).
prop_stem(considered_but_not_successful/1).
prop_stem(constraint/1).
prop_stem(contextually_dependent_lexical/1).
prop_stem(cva/1).
prop_stem(deduced/1).
prop_stem(default/1).
prop_stem(dependants/1).
prop_stem(documentation/1).
prop_stem(fact/1).
prop_stem(false/1).
prop_stem(fast_documentation/1).
prop_stem(forward/1).
prop_stem(forward_tms/1).
prop_stem(gen_template_query_sentence/1).
prop_stem(ground/1).
prop_stem(gtqs/1).
prop_stem(has_dependents/1).
prop_stem(has_genstring/1).
prop_stem(has_meta/1).
prop_stem(has_smeta/1).
prop_stem(higher_order/1).
prop_stem(implementation/1).
prop_stem(indirect_lexical/1).
prop_stem(inert/1).
prop_stem(inference_relevant/1).
prop_stem(lifting/1).
prop_stem(lifting/2).
prop_stem(lifting_consequent/2).
prop_stem(looks_like_kappa_rephrase/1).
prop_stem(meta/1).
prop_stem(monotonic/1).
prop_stem(mt/2).
prop_stem(needs_review/1).
prop_stem(nl_trie_syntactic/1).
prop_stem(non_abducible/1).
prop_stem(not_assertible/1).
prop_stem(not_exportable/1).
prop_stem(not_first_order/1).
prop_stem(not_non_tva_gaf/1).
prop_stem(not_true/1).
prop_stem(pph_required/1).
prop_stem(reformulator_relevant/1).
prop_stem(relevant/1).
prop_stem(rule/1).
prop_stem(rule_meta/1).
prop_stem(self_expanding/1).
prop_stem(self_looping/1).
prop_stem(single_literal/1).
prop_stem(single_literal_antecedent/1).
prop_stem(skolem/1).
prop_stem(some_suggested_pragma_sentences_for/1).
prop_stem(syntactically_ill_formed/1).
prop_stem(syntactically_illformed/2).
prop_stem(tva/1).
prop_stem(two_literal_antecedent/1).
prop_stem(unbound/1).
prop_stem(universal_lifting/1).
prop_stem(uses_non_extensional_set/1).
prop_stem(variable_guard/2).
prop_stem(varnames/2).
prop_stem(vars/2).
prop_stem(wrapper/3).

ac_stem_l('ac').
ac_stem_l('ac_disabled').

ac_stem_r('', 24).
ac_stem_r('_odd', 12).
ac_stem_r('_ua', 24).
ac_stem_r('_not', 24).
ac_stem_r('_not_ua', 24).

ac_stem_r('_and_not', 40).
ac_stem_r('_implies_zlit', 40).
ac_stem_r('_implies', 25).

pred_0988(F/A):- prop_stem(R/A), atomic_list_concat(['a', 0988, '_', R], F).
pred_0988(F/A):- ac_stem_l(L), ac_stem_r(R, N), atom_concat(L, R, F), between(1, N, A).


kb0988_info:- forall(pred_0988(P), kb0988_info(P)).
kb0988_info(M:F/A):- !, kb0988_info(M, F, A).
kb0988_info(F/A):- !, kb0988_info(kb0988, F, A).
kb0988_info(M:P):- !, functor(P, F, A), kb0988_info(M, F, A).
kb0988_info(P):- !, functor(P, F, A), kb0988_info(kb0988, F, A).
kb0988_info(M, F, A):- functor(P, F, A),
 predicate_property(M:P, number_of_clauses(NC)),
 (NC == 0 -> true ;
 (findall(B, predicate_property(M:P, indexed(B)), C),
 format('~N~q:~q/~q = ~w ~w~N', [M, F, A, NC, -]),
 % findall(PP, (predicate_property(M:P, PP), atom(PP), PP\==indexed(_)), O), format('~N~w~N', [O]),
 (C==[] -> true ;
 foreach(member(E, C), (format('~`=t~68|~n'), maplist(prolog_jiti:print_secondary_index, E)))))).

% ==================================
% USING/BLASTING
% ==================================
:- export(blast_0988/1).
blast_0988(ID):-
 B = true,
 forall(pred_0988(F/A),
 ignore((functor(P, F, A), arg(A, P, ID),
 clause(kb0988:P, _, Ref), clause(H, B, Ref),
 assert(plkb0988_iface:blasted_0988(H)),
  erase(Ref), wdmsg((blasted_0988(P)))))).

:- dynamic(plkb0988_iface:blasted_0988/3).


% ==================================
% USING/CALLING
% ==================================

:- export(mt_visible/1).
mt_visible(_Ref).

:- multifile(kb0988:ac/1).
:- dynamic(kb0988:ac/1).
:- export(kb0988:ac/1).
:- import(kb0988:ac/1).
kb0988:ac(P):- into_0988_form(P, PO), call(PO).

:- export(into_0988_form/2).
into_0988_form(M:P, M:PO):- atom(M), !, into_0988_form(P, PO).
/*
into_0988_form(P, PO):-
 Lambda = ({_Mt}/[I, O]>>(append_term(I, Ref, RefO), O=(RefO, mt_visible(Ref)))),
 into_0988(call, Lambda, a0988c_nl, P, PO), !.
*/
into_0988_form(P, PO):-
 into_0988(call, =, ac, P, PO), !.

into_0988(DBase_t, P, PO):- into_0988(call, =, DBase_t, P, PO).


into_0988(call, V, T, P, PO):- is_list(P), univ_safe(TP, [T|P]), call(V, TP, PO).
into_0988(C, V, T, P, PO):- is_list(P), maplist(into_0988(C, V, T), P, PO).
into_0988(call, V, T, P, PO):- var(P), univ_safe(TP, [T, P]), call(V, TP, PO).
into_0988(_, _, _, P, PO):- \+ callable(P), P=PO.
into_0988(call, _, _, implies(Body, P), (Out, mt_visible(Ref))):-
 into_0988(a099c_implies, P, PO),
 append_term(PO, Body, POBody),
 append_term(POBody, Ref, Out).
 into_0988(call, V, _, P, PO):- atomic(P), call(V, P, PO).
into_0988(C, V, T, P, PO):- must((univ_safe( P, [F|Args]), into_0988(C, V, T, P, F, Args, PO))), !.


conj_swap(and, (', ')).
conj_swap(or, (';')).
conj_swap(implies, ('implies')).

is_holds_true00(t). is_holds_true00(h).
is_holds_true00(call).


% TODO finish negations
into_0988(_, _, T, P, F, _Args, P):- F==T, !.
into_0988(_, V, T, _, F, Args, PO):- conj_swap(F, FO),
 maplist(into_0988(call, V, T), Args, OArgs), univ_safe(PO , [FO|OArgs]).
into_0988(_, V, T, _, F, Args, PO):- is_holds_true00(F), univ_safe(O, [T|Args]), call(V, O, PO).
% into_0988(T, _P, T, Args, Call):- a(is_holds_true, T), Call univ_safe [T|Args].
into_0988(_, V, T, _, F, Args, PO):- univ_safe(O , [T, F|Args]), call(V, O, PO).

/*
make_hook_stubs:-
   forall(between(3, 12, N),
    (functor(P, a0988c_nl, N),
     P =..[_|Args],
     Q =..[a0988c|Args],
     assertz_new(P:-Q))),
   forall(between(3, 13, N),
    (functor(P, a0988c_nl, N),
     P =..[_|ArgsRef],
     append(Args, [_Ref], ArgsRef),
     Q =..[nl0988|Args],
     functor(Q, FQ, AQ),
     assertz_new(Q:-P),
     export(FQ/AQ),
     '$current_typein_module'(CM),
     CM:import(FQ/AQ))).

:- make_hook_stubs.
*/

cvt_to_atomstring(A, M):- atomic_list_concat(['"', A, '"'], M).

:- export(denote_mapper/1).
sent_mapper(String, Datum):-
  into_text80(String, Words),
  maplist(into_dm, Words, Todo),
  denote_mapper(Todo, [], Datum), !.

into_dm(String, atxt(AString)):- cvt_to_atomstring(String, AString).

denote_mapper(String):- string(String),
   cvt_to_atomstring(String, AString), !,
   denote_mapper([atxt(AString)], [], Datum),
   maplist(wdmsg, Datum), !.

correct_dos(Todo, TodoS):- flatten([Todo], TodoF), list_to_set(TodoF, TodoS), !.

add_todo(More, Todo, NewDone, NewTodo):-
 correct_dos(More, MoreS),
 add_todo_list(MoreS, Todo, NewDone, NewTodo).

add_todo_list([], Todo, _Done, Todo):-!.
add_todo_list([M|MoreS], Todo, Done, NewTodo):-
  member(M, Done), !, add_todo_list(MoreS, Todo, Done, NewTodo).
add_todo_list([M|MoreS], Todo, Done, NewTodo):-
  correct_dos([Todo, M], TodoM),
  add_todo_list(MoreS, TodoM, Done, NewTodo).

string_to_cyc_word(P, C, AString, nl0988(P, C, AString)):-
  nl0988(P, C, AString), ok_speech_part_pred(P).

ok_speech_part_pred(P):-
  P\==firstNameInitial, P\==middleNameInitial,
  (nl0988(isa, P, rtSpeechPartPredicate); \+ nl0988(isa, P, _)), !.

denote_mapper(Todo, Done, Out):- correct_dos(Todo, TodoS), TodoS\==Todo, !, denote_mapper(TodoS, Done, Out).
denote_mapper(Todo, Done, Out):- correct_dos(Done, DoneS), DoneS\==Done, !, denote_mapper(Todo, DoneS, Out).
denote_mapper([], Done, Done):-!.
denote_mapper([atxt(AString)|Todo], Done, Out):-
  findall([cycWord(P, C), Why], string_to_cyc_word(P, C, AString, Why), More),
  correct_dos([Done, atxt(AString)], NewDone),
  add_todo(More, Todo, NewDone, NewTodo),
  denote_mapper(NewTodo, NewDone, Out).

denote_mapper([cycWord(P, C)|Todo], Done, Out):-
  findall(concept(Subj), nl0988(denotation, C, _, _, Subj), More1),
  findall(Info, info_about(C, Info), More2),
  correct_dos([Done, cycWord(P, C)], NewDone),
  add_todo([More1, More2], Todo, NewDone, NewTodo),
  denote_mapper(NewTodo, NewDone, Out).
denote_mapper([Did|Todo], Done, Out):-
  correct_dos([Done, Did], NewDone),
  denote_mapper(Todo, NewDone, Out).

% gen_preds_containing(C, P):- between(2, 12, A), functor(P, nl0988, A), arg(N, P, C), N>1, call(P).

gen_preds_containing(C, P):- between(2, 12, A), functor(P, nl0988, A), arg(N, P, C), N>1, call(P).
%gen_preds_containing(C, P):- between(2, 12, A), functor(P, nl0988, A), call(P), sub_term(X, P), X==C.
info_about(C, Info):-
  findall(P, gen_preds_containing(C, P), L),
  correct_dos(L, Info).

%call_988(P):-

% :- fix_0988.

% ==================================
% CONVERTING
% ==================================

redo_0988:-
 use_module(plkb988_kb),
 expand_file_name('src~/*.nldata', FileList),
 maplist(redo_0988, FileList).

% :- module(plkb0988_iface).

redo_0988(FileIn):-
 open(FileIn, read, In),
 atom_concat(FileIn, '.out', Out),
 open(Out, write, Out),
 repeat,
 (at_end_of_stream(In)
 -> (close(In), close(Out), wdmsg(converted(FileIn->Out)) , !) ;
 (once(transfer_clauses(In, Out)), fail)).

transfer_clauses(In, Out):-
 read_term(In, Wff, [module(user), double_quotes(string), variable_names(Vs), singletons(_Ignore)]), !,
 catch(convert_clause(Wff, O)->true;throw(failed(convert_clause(Wff, O))), E, (wdmsg(E), rtrace(convert_clause(Wff, O)), break)),
 functor(O, F, A), ((pred_0988(F/A) -> true ; (assert(pred_0988(F/A)), wdmsg(pred_0988(F/A))))),
 write_term(Out, O, [variable_names(Vs), portrayed(false), quoted(true), fullstop(true),
 ignore_ops(false), nl(true), singletons(true)]), !.

convert_clause(EOF, EOF):- \+ compound(EOF), !.
convert_clause(( :- O), ( :- O)):-!.
% convert_clause(P, O):- !, P=..[F|ARGS], append(ARGSO, [_Ref], ARGS), O=..[F|ARGSO].

convert_clause(a7166c_neg(And, Ref), O):-
  And =.. [and|Args],
  append([a7166c_and_not|Args], [Ref], OL),
  M =.. OL, !, convert_clause(M, O), !.

convert_clause(a7166c_neg(Gaf, Ref), O):-
  Gaf =.. Args,
  append([a7166c_not|Args], [Ref], OL),
  M =.. OL, !, convert_clause(M, O), !.

convert_clause(a7166c_implies(And, Gaf, Ref), O):-
  compound_name_arguments(Gaf, F, Args),
  append([a7777c_implies, F, Args], [And, Ref], OL),
  M =.. OL, !, convert_clause(M, O), !.


convert_clause(P, O):-
 compound_name_arguments(P, F, Args),
 atomic_list_concat(AppendL, '_', F), !,
 convert_args(AppendL, Args, ArgsO), !,
 (AppendL == [F] -> compound_name_arguments(O, F, ArgsO);
 (sort(AppendL, AppendLS), !,
 atomic_list_concat(AppendLS, '_', FO), !,
 atomic_list_concat(AppendLUS1, '_', FO), !,
 sort(AppendLUS1, AppendLUS2),
 atomic_list_concat(AppendLUS2, '_', F2),
 compound_name_arguments(O, F2, ArgsO))), !.



is_unused([wordNetSynsetReified, N, nartR(xWordNetSynsetReifiedFn, N), _], redundant):- number(N), !.
is_unused([quotedIsa, _, _, _], quotedIsa).
is_unused([airportHasIATACode, _, _, _], airportHasIATACode).
is_unused([airportHasICAOCode, _, _, _], airportHasICAOCode).
is_unused([airportServicesCity, _, _, _], airportServicesCity).


%is_unused([quotedIsa, _, 'TKBConstant', _]).
%is_unused([quotedIsa, _, 'OpenCycExcludedTerm', _]).
%is_unused([quotedIsa, _, 'CycSecureFORT', _]).
t_univ(Gaf, [F|GafL]):- compound(Gaf), !, compound_name_arguments(Gaf, F, GafL).
t_univ(Gaf, [F|GafL]):- atom(F), GafL==[], !, compound_name_arguments(Gaf, F, []), !.
t_univ(Gaf, [F|GafL]):- atom(F) -> Gaf=..[F|GafL] ; Gaf=..[t, F|GafL].

convert_args(FL, Args, Args):- ground(Args), is_unused(Args, _Why), !, f_put('disabled', FL).

convert_args(FL, Args, ArgsO):- f_has('zlit', FL), f_has(implies, FL),
  append([Consq|Antes], [Ref], Args),
  compound(Consq), compound_name_arguments(Consq, F, [ArGs]), is_list(ArGs),
  compound_name_arguments(NewConsq, F, ArGs),
  append([NewConsq|Antes], [Ref], ArgsO), !.

/*
(base) root@gitlab:/mnt/gggg/c/Users/logicmoo/AppData/Local/swi-prolog/pack/logicmoo_nlu/ext/pldata/plkb0988/src~# cd -
/opt/logicmoo_workspace/packs_sys.Linux/logicmoo_pldata~/plkb7166/src~
(base) root@gitlab:/opt/logicmoo_workspace/packs_sys.Linux/logicmoo_pldata~/plkb7166/src~# cd -
/mnt/gggg/c/Users/logicmoo/AppData/Local/swi-prolog/pack/logicmoo_nlu/ext/pldata/plkb0988/src~
(base) root@gitlab:/mnt/gggg/c/Users/logicmoo/AppData/Local/swi-prolog/pack/logicmoo_nlu/ext/pldata/plkb0988/src~# cd

*/
convert_args(FL, Args, ArgsO):-  fail, \+ f_has(implies, FL), \+ f_has('and', FL),
   append([Arg1Isa|ArgIsaArgs], [Ref], Args), atom(Arg1Isa),
   P  univ_safe  [Arg1Isa|ArgIsaArgs],
   into_argNIsa(P, O),
   O  univ_safe  [NewArg1Isa|NewArgIsaArgs],
   append([NewArg1Isa|NewArgIsaArgs], [Ref], ArgsO), !.

convert_args(FL, Args, ArgsO):-  \+ f_has(implies, FL), \+ f_has('and', FL),
   append([Arg1Isa|ArgIsaArgs], [Ref], Args), atom(Arg1Isa),
   P  univ_safe  [Arg1Isa|ArgIsaArgs],
   from_argNIsa(P, O),
   O  univ_safe  [NewArg1Isa|NewArgIsaArgs],
   append([NewArg1Isa|NewArgIsaArgs], [Ref], ArgsO), !.

convert_args(FL, Args, ArgsO):- \+ f_has('zlit', FL), f_has(implies, FL),
  GafL=[_|_],
  append(GafL, [And, Ref], Args),
  t_univ(And, [and|AndL]),
  t_univ(Gaf, GafL),
  append([Gaf|AndL], [Ref], ArgsO), !, f_put('zlit', FL).

convert_args(FL, Args, ArgsO):-  \+ f_has('zlit', FL), f_has(implies, FL),
  GafL=[_|_],
  append(GafL, [And, Ref], Args),
  t_univ(Gaf, GafL),
  append([Gaf, And], [Ref], ArgsO), !, f_put('zlit', FL).

convert_args(FL, Args, ArgsO):-
 convert_cmpa(0, FL, Args, ArgsM), !,
 (ArgsM==Args->ArgsO=Args;convert_args(FL, ArgsM, ArgsO)), !.

dont_cvt_string(FL):- f_has(a0988_varnames, FL).

f_has(F, List):- memberchk(F, List).
f_put(F, List):- memberchk(F, List), !.
f_put(F, List):- List=[_|T], (T==[] -> nb_setarg(2, List, [F]) ; f_put(F, T)).

convert_arg(D, FL, A, O):- compound(A), !, convert_cmpa(D, FL, A, O).
convert_arg(D, FL, A, A):- var(A), \+ f_has('implies', FL), D==0, !, f_put('ua', FL).
convert_arg(_, _, A, A):- var(A), !.
convert_arg(_, _, A, A):- A == [], !.
convert_arg(_, _, A, O):- A== mobPerson, !, O = tPerson.
convert_arg(_, FL, A, A):- A== 'EnumeratedCollection-31', f_put('disabled', FL), !.
convert_arg(_, _, A, O):- string(A), !, A=O.
% convert_arg(D, FL, A, O):- string(A), \+ dont_cvt_string(FL), !, atomic_list_concat(['"', A, '"'], M), convert_arg(D, FL, M, O).
convert_arg(_, _, A, O):- atom(A), atom_chars(A, C), append(['"'|Mid], ['"'], C), text_to_string(Mid, O), !.

convert_arg(_, FL, A, A):- fail, FL = [_], member(Type, [disabled, nl]), \+ f_has(Type, FL),
   is_kb_type(Type, A), !, f_put(Type, FL), !.
% convert_arg(_, FL, A, A):- atom_contains(A, 'errorist'), f_put('disabled', FL).
convert_arg(_, _, A, A).

% is_kb_type(nl, A):- a0988c(isa, A, Atom, _), atom(Atom), atom_contains(Atom, 'NL').
is_kb_type(Type, A):- downcase_atom(A, D), nl_info(NL, Type), atom_contains(D, NL).

/*
nl_info('-al-', disabled).
nl_info('islamic', disabled).
nl_info('hamas', disabled).
nl_info('alqaeda', disabled).
nl_info('suicide', disabled).
nl_info('terror', disabled).
nl_info('fieldfn', disabled).
nl_info('lscheme', disabled).
nl_info('sksi', disabled).
nl_info('osama', disabled).
nl_info('911foaf', disabled).
*/

nl_info('synta', nl).
nl_info('semant', nl).
nl_info('denote', nl).
/*
nl_info('suffix', nl).
nl_info('prefix', nl).
nl_info('semtran', nl).
nl_info('adjective', nl).
nl_info('morpho', nl).
nl_info('parse', nl).
nl_info('generation', nl).
nl_info('phrase', nl).
nl_info('word', nl).
nl_info('verb', nl).
nl_info('noun', nl).
*/

convert_cmpa(_, _, [], []):- !. %  f_put('odd', FL), !.
convert_cmpa(D, FL, [H|T], [HH|TT]):- !, convert_arg(D, FL, H, HH), convert_arg(D, FL, T, TT).

convert_cmpa(D, FL, uU(TheListFn, List), O):- TheListFn == vTheListFn, compound(List), functor(List, F, 2),
  functor([_|_], F, 2), !, convert_arg(D, FL, List, O).

convert_cmpa(_D, _FL, P, O):-
   into_argNIsa(P, O)-> P\==O, !.

convert_cmpa(D, FL, P, O):-
 compound_name_arguments(P, F, Args),
 convert_arg(D, FL, F, FO),
 D2 is D + 1, convert_cmpa(D2, FL, Args, ArgsO),
 compound_name_arguments(O, FO, ArgsO), !.

% ==================================
% REBUILDING
% ==================================


qlf_is_missing_or_old(File):-
 absolute_file_name(File, Name),
 file_name_extension(Base, _Ext, Name),
 file_name_extension(Base, 'qlf', QName),
 (\+ exists_file(QName)-> true
 ;(
 file_name_extension(Base, 'nldata', PName),
 exists_file(PName),
 time_file(PName, PTime),
 time_file(QName, QTime),
 QTime<PTime)).

qlf_name(File, QName):-
 absolute_file_name(File, Name),
 file_name_extension(Base, _Ext, Name),
 file_name_extension(Base, 'qlf', QName).

source_file_of_qlf(QName, PName):- directory_file_path(_, File, QName), qlf_name(File, 'nldata', PName).

qlf_name(File, NewExt, QName):-
 file_name_extension(Base, _Ext, File),
 file_name_extension(Base, NewExt, QName).


qcompile_if_missing(_, File, QName):- \+ qlf_is_missing_or_old(File), !, qlf_name(File, QName).
qcompile_if_missing(M, File, QName):- % source_file_of_qlf(File, PName), !, writeq(source_file_of_qlf(File, PName)), nl,
 M:qcompile(File, [if(not_loaded), derived_from('src~/unseen'), module(M), redefine_module(false)]),
 ignore(qlf_name(File, QName)).

qcompile_if_missing(M, File):- qcompile_if_missing(M, File, _).

kb0988_qconsult(M, File):- compiling, !, M:load_files(File, [if(not_loaded), register(false), derived_from('src~/unseen'), module(M), redefine_module(false), qcompile(part)]).
kb0988_qconsult(M, File):- time((writeln(kb0988_qconsult(M, File)),
 call(qcompile_if_missing(M, File, QName)),
 M:load_files(QName, [if(not_loaded), module(M), register(false), redefine_module(false)]))).

:- dynamic(kb0988_kb_dir/1).
:- prolog_load_context(directory, From), asserta(kb0988_kb_dir(From)).

kb0988_qcompile:- qcompile(plkb988_kb).

kb0988_qcompile:- kb0988_kb_dir(From), cd(From),
 KB= kb0988,
 expand_file_name('src~/kb0988_*.nldata', List),
 maplist( [E] >> (module(KB), '$set_source_module'(KB), qcompile(E, [register(false),
 derived_from('src~/unseen'), module(KB),
 redefine_module(false), qcompile(part)])), List), !.
% kb0988_qcompile:-!.
kb0988_qcompile:-
 kb0988_kb_dir(From),
 atom_concat(From, '/src~/plkb0988_*.nldata', Filter),
 expand_file_name(Filter, List),
 writeq(List),
 maplist(qcompile_if_missing(kb0988), List), !.

:- dynamic(lmcache:kb0988_qconsulted/0).
:- export(lmcache:kb0988_qconsulted/0).

kb0988_qconsult:- lmcache:kb0988_qconsulted, !.
kb0988_qconsult:-
 asserta(lmcache:kb0988_qconsulted),
 kb0988_kb_dir(From), atom_concat(From, '/src~/kb0988_asse*.qlf', Filter),
 expand_file_name(Filter, List),
 maplist(qload, List), !.

qload(File):- kb0988:load_files(File, [if(not_loaded), register(false), redefine_module(false), qcompile(part)]).

% loaded later
% :- kb0988_qconsult(kb0988_pt7_constant_renames).

% needs regen
% :- kb0988_qconsult(kb0988_pt8_supports.nldata).








into_argNIsa(P, _):- \+ compound(P), !, fail.
into_argNIsa(P, _):- is_dict(P), !, fail.
into_argNIsa(P, PO):- did_into_argNIsa(P, PO),
 %wdmsg(did_into_argNIsa(P, PO)),
  !.

did_into_argNIsa(P, PO):-
  P  univ_safe  [ARE, FF, AA],
   atom_concat('arg', REST, ARE),
   member(E, ['Genl', 'Isa', 'SometimesIsa', 'Format', 'QuotedIsa']), atom_concat(N, E, REST),
   atom_number(N, NN),
   atom_concat('arg', E, AE),
  PO  univ_safe  [AE, FF, NN, AA], !.

did_into_argNIsa(P, PO):-
  P  univ_safe  [ARE, FF, C1, C2],
   atom_concat('interArg', REST, ARE),
   member(E, ['Isa', 'Genl', 'Format', 'QuotedIsa', 'GenlQuantity', 'NotIsa', 'SometimesIsa', 'NotQuotedIsa']),
   atom_concat(E, Nums, REST),
   (atomic_list_concat([A1, A2], '-', Nums);atomic_list_concat([A1, A2], '_', Nums)), !,
   atom_number(A1, N1),
   atom_number(A2, N2),
   atomic_list_concat(['interArg', E], AE),
  PO  univ_safe  [AE, FF, N1, C1, N2, C2], !.

did_into_argNIsa(P, PO):-
  P  univ_safe  [ARE, FF, AA, RESULT],
   atom_concat('interArg', REST, ARE),
   member(E, ['ResultGenl', 'ResultIsa', 'ResultNotIsa', 'ResultSometimesIsa', 'ResultFormat', 'ResultQuotedIsa', 'ResultNotQuotedIsa']),
   atom_concat(N, E, REST),
   atom_number(N, NN),
   atom_concat('interArg', E, AE),
  PO  univ_safe  [AE, FF, NN, AA, RESULT], !.


from_argNIsa(P, _):- \+ compound(P), !, fail.
from_argNIsa(P, _):- is_dict(P), !, fail.
from_argNIsa(P, PO):- did_from_argNIsa(P, PO),
  % wdmsg(did_from_argNIsa(P, PO)),
  !.

did_from_argNIsa(P, PO):-
  P  univ_safe  [ARE, FF, NN, AA], number(NN),
   atom_concat('arg', E, ARE),
   member(E, ['Genl', 'Isa', 'SometimesIsa', 'Format', 'QuotedIsa']),
   atomic_list_concat(['arg', NN, E], AE),
  PO  univ_safe  [AE, FF, AA], !.

did_from_argNIsa(P, PO):-
  P  univ_safe  [ARE, FF, N1, C1, N2, C2], number(N1), number(N2),
   atom_concat('interArg', E, ARE),
   member(E, ['Isa', 'Genl', 'Format', 'QuotedIsa', 'GenlQuantity', 'NotIsa', 'SometimesIsa', 'NotQuotedIsa']),
   atomic_list_concat(['interArg', N1, '_', N2, E], AE),
  PO  univ_safe  [AE, FF, C1, C2], !.

did_from_argNIsa(P, PO):-
  P  univ_safe  [ARE, FF, NN, AA, RESULT], number(NN),
   atom_concat('interArg', E, ARE),
   member(E, ['ResultGenl', 'ResultIsa', 'ResultNotIsa', 'ResultSometimesIsa', 'ResultFormat', 'ResultQuotedIsa', 'ResultNotQuotedIsa']),
   atomic_list_concat(['interArg', NN, E], AE),
  PO  univ_safe  [AE, FF, AA, RESULT], !.

get_PredList(L):- findall(F/A, pred_0988(F/A), L).

gen_kb_module:- directory_0988(Dir), gen_kb_module(Dir).

gen_kb_module(Dir):-
 absolute_file_name('plkb0988_kb.pl', File, [relative_to(Dir)]),
 open(File, write, S),
 get_PredList(PredList),
 format(S,
":- ~p.

:- set_module(class(library)).

:- dynamic((kb_pred_0988)/2).

", [module(kb0988, [setup_kb_pred_0988s/0, kb_pred_0988/2|PredList])]),
   maplist({S}/[F/A]>>format(S, '~q.~n', [kb_pred_0988(F, A)]), PredList),
   format(S,
"
:- kb0988:dynamic(~q, [(discontiguous), (shared), (multifile)]).

setup_kb_pred_0988s :-
   forall(kb_pred_0988(F, A), multifile(kb0988:F/A)),
   forall(kb_pred_0988(F, A), dynamic(kb0988:F/A)),
   forall(kb_pred_0988(F, A), discontiguous(kb0988:F/A)),
   forall(kb_pred_0988(F, A), export(kb0988:F/A)),
   !.

:- setup_kb_pred_0988s.

:- include('src~~/pldata0988.nldata').

", [PredList]),
   close(S), !.

:- dynamic(lmconf:directory_0988_conf/1).
:- volatile(lmconf:directory_0988_conf/1).

directory_0988(Dir):- lmconf:directory_0988_conf(Dir), !.
directory_0988(Dir):- absolute_file_name(library('../ext/pldata/plkb0988'), Dir, [access(read), file_type(directory)]), !.
directory_0988(Dir):- prolog_load_context(directory, Dir), !.
directory_0988(Dir):- working_directory(Dir, Dir), !.

% set 0988 dir to the location this file is being loaded from
:- lmconf:directory_0988_conf(_)-> true ; prolog_load_context(directory, Dir), assert(lmconf:directory_0988_conf(Dir)).

download_0988:-
  directory_0988(Dir),
  Filename = 'pldata0988.nldata.gz',
  format(atom(Cmd), "wget -c -nc --no-check-certificate -O ~w/src~~/~w https://logicmoo.org/downloads/~w", [Dir, Filename, Filename]),
  format(user_error, "~N% Running (shell): ~w~n", [Cmd]),
  must_or_rtrace(shell(Cmd, _)), !,
  format(user_error, "~N% Completed (shell): ~w~n", [Cmd]),
  !.
/*
:- use_module(library(http/http_open)).
download_0988:-
  setup_call_cleanup(
   open('pldata0988.tar.gz', write, Out),
   setup_call_cleanup(
      http_open('https://logicmoo.org/downloads/pldata0988.nldata.gz', In, []),
      copy_stream_data(In, Out),
      close(In)),
   close(Out)).
*/

unzip_0988:-
  directory_0988(Dir),
  Filename = 'pldata0988.nldata',
  format(atom(Cmd), "gunzip -f ~w/src~~/~w.gz", [Dir, Filename]),
  format(user_error, "~N% Running (shell): ~w~n", [Cmd]),
  must_or_rtrace(shell(Cmd)), !,
  format(user_error, "~N% Completed (shell): ~w~n", [Cmd]),
  !.

/*
unzip_0988:-
  setup_call_cleanup(
   gzopen('pldata0988.tar.gz', read, In),
   setup_call_cleanup(
      open('pldata0988.nldata', write, Out),
      copy_stream_data(In, Out),
      close(Out)),
   close(In)).
*/

create_0988:-
  download_0988,
  unzip_0988,
  gen_kb_module,
  time(qcompile(library('../ext/pldata/plkb0988/plkb0988_kb'))).

:- if( (directory_0988(Dir),
        absolute_file_name('plkb0988_kb.qlf', File, [relative_to(Dir)]),
      \+ exists_file(File))).

:- format(user_error, "~N% QCOMPILE: plkb0988_kb~n", []).
%:- time(qcompile('plkb0988_kb')).
:- endif.



:- directory_0988(Dir), format(user_error, "~N% directory_0988: ~q~n", [Dir]).


:- reexport(library('../ext/pldata/plkb0988/plkb0988_kb_supp')).

:- forall(pred_0988(P), do_mdep(P)).
:- current_predicate(kb_pred_0988/2)->forall(kb_pred_0988(F, A), do_mdep(F/A));true.




is_clean_ref(Ref0):- compound(Ref0)-> \+ (arg(N, Ref0, E), nonvar(E), wdmsg(arg(N, Ref0, E))) ; number(Ref0).

/*
add_to_acnl:- between(2, 12, N), length(Args, N),
   append([acnl_0988_nl|Args], [Ref1], Args0), Call0=..Args0,
   append([a0988c_nl|Args], [Ref1], Args1), Call1=..Args1,
   append([acnl|Args], [Ref2], Args2), Call2=..Args2,
   current_predicate(_, Call1),
   current_predicate(_, Call2),
   call(Call1),
   ( \+ (call(Call2), is_clean_ref(Ref1), is_clean_ref(Ref2))),
   asserta(Call0),
   fail.


% count_indexes(M, F, A):-

add_to_acnl:- between(2, 12, N), length(Args, N),
   append([acnl_0988|Args], [Ref1], Args0), Call0=..Args0,
   append([a0988c|Args], [Ref1], Args1), Call1=..Args1,
   append([acnl|Args], [Ref2], Args2), Call2=..Args2,
   current_predicate(_, Call1),
   current_predicate(_, Call2),
   call(Call1),
   ( \+ (call(Call2), is_clean_ref(Ref1), is_clean_ref(Ref2))),
   asserta(Call0),
   fail.

add_to_acnl.

clear_out_redundant:- between(2, 12, N), length(Args, N),
   append([a0988c|Args], [Ref1], Args1), Call1=..Args1,
   append([acnl|Args], [Ref2], Args2), Call2=..Args2,
   current_predicate(_, Call1),
   current_predicate(_, Call2),
   call(Call1), call(Call2),
   is_clean_ref(Ref1),
   is_clean_ref(Ref2),
   plkb0988_iface:blast_0988(Ref1), fail.
clear_out_redundant.
*/
