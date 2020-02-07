:-module(clex_iface, [

         clex_verb/4,
           tv_pp/2,
           tv_infpl/2,
           tv_finsg/2,
           iv_infpl/2,
           iv_finsg/2,
           dv_pp/3,
           dv_infpl/3,
           dv_finsg/3,

           % for now we use prep/2 from different (possibly more complete) lexicon
            prep/2,

         clex_adv/3,
            adv_sup/2,
            adv_comp/2,
            adv/2,

         clex_adj_prep/4,
            adj_tr_sup/3,
            adj_tr_comp/3,
            adj_tr/3,

         clex_adj/3,
            adj_itr_sup/2,
            adj_itr_comp/2,
            adj_itr/2,

         clex_noun/5,
             noun_sg/3,
             noun_pl/3,
             noun_mass/3,

         % for now we use these from different (possibly more complete) lexicon
           mn_sg/2,
           mn_pl/2,

           pndef_sg/3,
           pndef_pl/3,
           pn_sg/3,
           pn_pl/3
          ]).


when_chat80(_):- fail.

%when_chat80(G):- call(chat80:G).

%! clex_verb(?Atom, ?Verb, ?ITD, ?Info)
% 
% ?- clex_verb(jumped, Verb, ITD, Info).
% Verb = jump,
% ITD = tv,
% Info = pp .
%
% ?- clex_verb(jump, Verb, ITD, Info).
% Verb = jump,
% ITD = iv,
% Info = infpl ;
% Verb = jump,
% ITD = tv,
% Info = infpl ;

:- style_check(-(discontiguous)).

clex_pred(F/A):- 
  dynamic(F/A),multifile(F/A),export(F/A),assert_if_new(clex_pred(F,A)).

:- clex_pred(noun_pl/3).
:- clex_pred(iv_infpl/2).
:- clex_pred(noun_sg/3).
:- clex_pred(mn_pl/2).
:- clex_pred(dv_finsg/3).
:- clex_pred(dv_pp/3).
:- clex_pred(adj_itr_sup/2).
:- clex_pred(prep/2).
:- clex_pred(noun_mass/3).
:- clex_pred(iv_finsg/2).
:- clex_pred(adj_itr/2).
:- clex_pred(tv_infpl/2).
:- clex_pred(pndef_pl/3).
:- clex_pred(adv_sup/2).
:- clex_pred(adj_tr_comp/3).
:- clex_pred(adj_itr_comp/2).
:- clex_pred(tv_finsg/2).
:- clex_pred(pndef_sg/3).
:- clex_pred(adj_tr_sup/3).
:- clex_pred(pn_sg/3).
:- clex_pred(mn_sg/2).
:- clex_pred(dv_infpl/3).
:- clex_pred(adv/2).
:- clex_pred(tv_pp/2).
:- clex_pred(pn_pl/3).
:- clex_pred(adv_comp/2).
:- clex_pred(adj_tr/3).

:- clex_pred(clex_call/1).
clex_call([F|Rest]):- nonvar(Rest), !, clex_pred(F,N),length(Rest,N),apply(F,Rest).
clex_call(P):- clex_pred(F,A),functor(P,F,A),call(P).
clex_call(F,A):- clex_pred(F,1),call(F,A).
clex_call(F,A,B):- clex_pred(F,2),call(F,A,B).
clex_call(F,A,B,C):- clex_pred(F,3),call(F,A,B,C).
clex_call(F,A,B,C,D):- clex_pred(F,3),call(F,A,B,C,D).
clex_call(F,A,B,C,D,E):- clex_pred(F,3),call(F,A,B,C,D,E).

:- clex_pred(clex_verb/4).
clex_verb(Formed, Verb, iv, finsg):- iv_finsg(Formed, Verb).
clex_verb(Formed, Verb, tv, finsg):- tv_finsg(Formed, Verb).
clex_verb(Formed, Verb, dv(Prep), finsg):- dv_finsg(Formed, Verb, Prep), nop(Prep\=='').
%clex_verb(Formed, Verb, iv, pp):- iv_pp(Formed, Verb). % iz none .. what about "jump to" ?
clex_verb(Formed, Verb, tv, pp):- tv_pp(Formed, Verb).
clex_verb(Formed, Verb, dv(Prep), pp):- dv_pp(Formed, Verb, Prep).
clex_verb(Formed, Verb, iv, infpl):- iv_infpl(Formed, Verb).
clex_verb(Formed, Verb, tv, infpl):- tv_infpl(Formed, Verb).
clex_verb(Formed, Verb, dv(Prep), infpl):- dv_infpl(Formed, Verb, Prep).

   both_of(RootNoun, Noun, NounI):- var(RootNoun), nonvar(NounI), !, (Noun=NounI;RootNoun=NounI).
   both_of(_, Noun, Noun).
   both_of(RootNoun, Noun, NounI):- RootNoun\=Noun, Noun=NounI.

:- clex_pred(clex_mass_noun/3).
clex_mass_noun(NounI, RootNoun, Type):- both_of(RootNoun, Noun, NounI), noun_mass(Noun, RootNoun, Type), both_of(RootNoun, Noun, NounI).

:- clex_pred(clex_noun/5).
clex_noun(Noun, RootNoun, Type, _SG_OR_PL, mass):- clex_mass_noun(Noun, RootNoun, Type).
clex_noun(Noun, RootNoun, Type, SG, count):- clex_noun0(Noun, RootNoun, Type, SG), \+ clex_mass_noun(Noun, _, _).
clex_noun(Noun, RootNoun, unkown, SG, count):- clex_noun1(Noun, RootNoun, SG), \+ clex_noun0(Noun, RootNoun, _, SG), \+ clex_mass_noun(Noun, _, _).
   clex_noun0(Noun, RootNoun, Type, sg):- noun_sg(Noun, RootNoun, Type).
   clex_noun0(Noun, RootNoun, Type, pl):- noun_pl(Noun, RootNoun, Type).
   clex_noun1(Noun, RootNoun, pl):- when_chat80(noun_plu_db(Noun, RootNoun)).
   clex_noun1(RootNoun, RootNoun, sg):- when_chat80(noun_sin_db(RootNoun)).



:- clex_pred(clex_adj_prep/4).
clex_adj_prep(Biggest, Big, Prep, Type):- adj_prep0(Biggest, Big, Prep, Type).
clex_adj_prep(Biggest, Big, Prep, unknown):- adj_tr(Biggest, Big, Prep), \+ adj_prep0(Biggest, _, Prep, _).
      adj_prep0(Bigger, Big, Prep, comparitve):- clex:adj_tr_comp(Bigger, Big, Prep).
      adj_prep0(Biggest, Big, Prep, superlative):- clex:adj_tr_sup(Biggest, Big, Prep).


:- clex_pred(clex_adj/3).
clex_adj(Biggest, Big, Type):- adj_itr0(Biggest, Big, Type).
clex_adj(Biggest, Big, unknown):- adj_itr(Biggest, Big), \+ adj_itr0(Biggest, _, _).
         adj_itr0(Bigger, Big, comparitve):- clex:adj_itr_comp(Bigger, Big).
         adj_itr0(Biggest, Big, superlative):- clex:adj_itr_sup(Biggest, Big).

:- clex_pred(clex_adv/3).
clex_adv(Biggest, Big, Type):- adv_itr0(Biggest, Big, Type).
clex_adv(Biggest, Big, unknown):- adv(Biggest, Big), \+ adv_itr0(Biggest, _, _).
         adv_itr0(Bigger, Big, comparitve):- clex:adv_comp(Bigger, Big).
         adv_itr0(Biggest, Big, superlative):- clex:adv_sup(Biggest, Big).


/*
:- ensure_loaded(nl_iface).
:- if(\+ (exists_file('clex_nldata.qlf'))).
:- format(user_error,'~NLoading clex_nldata.qlf ... ~n',[]).
:- time(load_files(clex_nldata,[qcompile(auto)])).
:- endif.
*/

%:- style_check(-discontiguous).
%:- include(pldata('clex_lexicon_user1.nldata')).

:- absolute_file_name(pldata('clex_lexicon_user1.nldata'),
        File, [access(read)]),
   open(File, read, In),
   set_stream(In, encoding(iso_latin_1)),
   repeat,
   read(In, P),
   % DMiles: i am putting them in backwards (cuz, the hypens- confuse me if they pop out first in the debugger)
   (P= (:- (G)) -> call(G) ; asserta_new(clex:P)),
   P==end_of_file, !.

% apply_fixes:- clex_verb(Formed, Verb, dv(Prep), PP)

% :- reexport(talk_db).                      


