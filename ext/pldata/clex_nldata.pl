:-module(clex_nldata,
 [

        % clex_verb/4,
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

        % clex_adv/3,
            adv_sup/2,
            adv_comp/2,
            adv/2,

        % clex_adj_prep/4,
            adj_tr_sup/3,
            adj_tr_comp/3,
            adj_tr/3,

        % clex_adj/3,
            adj_itr_sup/2,
            adj_itr_comp/2,
            adj_itr/2,

        % clex_noun/5,
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


:- style_check(-discontiguous).
:- dynamic(noun_pl/3).
:- dynamic(iv_infpl/2).
:- dynamic(noun_sg/3).
:- dynamic(mn_pl/2).
:- dynamic(dv_finsg/3).
:- dynamic(dv_pp/3).
:- dynamic(adj_itr_sup/2).
:- dynamic(prep/2).
:- dynamic(noun_mass/3).
:- dynamic(iv_finsg/2).
:- dynamic(adj_itr/2).
:- dynamic(tv_infpl/2).
:- dynamic(pndef_pl/3).
:- dynamic(adv_sup/2).
:- dynamic(adj_tr_comp/3).
:- dynamic(adj_itr_comp/2).
:- dynamic(tv_finsg/2).
:- dynamic(pndef_sg/3).
:- dynamic(adj_tr_sup/3).
:- dynamic(pn_sg/3).
:- dynamic(mn_sg/2).
:- dynamic(dv_infpl/3).
:- dynamic(adv/2).
:- dynamic(tv_pp/2).
:- dynamic(pn_pl/3).
:- dynamic(adv_comp/2).
:- dynamic(adj_tr/3).

:- multifile(noun_pl/3).
:- multifile(iv_infpl/2).
:- multifile(noun_sg/3).
:- multifile(mn_pl/2).
:- multifile(dv_finsg/3).
:- multifile(dv_pp/3).
:- multifile(adj_itr_sup/2).
:- multifile(prep/2).
:- multifile(noun_mass/3).
:- multifile(iv_finsg/2).
:- multifile(adj_itr/2).
:- multifile(tv_infpl/2).
:- multifile(pndef_pl/3).
:- multifile(adv_sup/2).
:- multifile(adj_tr_comp/3).
:- multifile(adj_itr_comp/2).
:- multifile(tv_finsg/2).
:- multifile(pndef_sg/3).
:- multifile(adj_tr_sup/3).
:- multifile(pn_sg/3).
:- multifile(mn_sg/2).
:- multifile(dv_infpl/3).
:- multifile(adv/2).
:- multifile(tv_pp/2).
:- multifile(pn_pl/3).
:- multifile(adv_comp/2).
:- multifile(adj_tr/3).

%:- style_check(-discontiguous).
%:- include(library('nldata/clex_lexicon_user1.pl.dat')).
:- absolute_file_name('clex_lexicon_user1.nldata',
        File, [access(read)]),
   open(File, read, In),
   set_stream(In, encoding(iso_latin_1)),
   repeat,
   read(In, P),
   % DMiles: i am putting them in backwards (cuz, the hypens- confuse me if they pop out first in the debugger)
   asserta(P),
   P==end_of_file, !.

% apply_fixes:- clex_verb(Formed, Verb, dv(Prep), PP)


