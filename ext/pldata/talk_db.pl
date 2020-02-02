/*
% NomicMUD: A MUD server written in Prolog
% Maintainer: Douglas Miles
% Dec 13, 2035
%

  Talk_DB is a bit less organized most lexicons!

   But every once in a while there's a treasure in it 
          (so worth using)


   If I remember correctly, I got it from

      https://github.com/crossbowerbt/prolog-talk 

      and then wrote/used one of my S-expression translators     

*/

:- module(talkdb, [getPos/4, talk_db/1]).


:- style_check(-(discontiguous)).

decl_talk_db_data(F/A):-dynamic(F/A),multifile(F/A),export(F/A).

:- decl_talk_db_data(talk_db/2).
:- decl_talk_db_data(talk_db/3).
:- decl_talk_db_data(talk_db/4).
:- decl_talk_db_data(talk_db/5).
:- decl_talk_db_data(talk_db/6).
:- decl_talk_db_data(talk_db/7).

/*

 setof(F, talk_db([F|_]), O).

 [prep, adj, adverb, noun2, pret, verb, interj, superl, conj, sing_only, fem, pronoun, pref, 
   p, ads, masc, noun, adb, b_t, noun_verb, m, apron, ncollect, pres_indic, comp, 
     et, aa, na, esp, personal, impersonal, possessive, inerj, indef, singular, auxiliary, 
      pl_pronoun, obssuperl, ppl, imperative, c, interrog, domain, verb_t, verb_i]


  setof(F, talk_db([domain, _, D]), O).



   ?- bagof(P,(talk_db([F|X]),length(X,A),functor(P,F,A)),O),writeq(O).

*/
% was talk_db([F, A|List]):- talk_db_argsIsa(F, N_Minus1, _), length(List, N_Minus1), apply(talk_db, [F, A|List]).

talk_db_argsIsa(comp,1,adjective(comparative)).
talk_db_argsIsa(superl,1,adjective(superlative)).
talk_db_argsIsa(noun1,1,singular(plural)).
talk_db_argsIsa(intransitive,4,base(pluralverb,imperfect,ingform,past_part)).
talk_db_argsIsa(transitive,4,base(pluralverb,imperfect,ingform,past_part)).
talk_db_argsIsa(adj,0,(adjective)).
talk_db_argsIsa(auxiliary,0,(verb)). % will shall wont
talk_db_argsIsa(conj,0,(conjuntion)).
talk_db_argsIsa(fem,0,(feminine)).
talk_db_argsIsa(fem,0,(noun)).
talk_db_argsIsa(impersonal,0,(meseems)).
talk_db_argsIsa(indef,0,(indefinate)).
talk_db_argsIsa(indef,0,(pronoun)).
talk_db_argsIsa(interj,0,(interjection)).
talk_db_argsIsa(interrog,0,(whpron)). % only instance
talk_db_argsIsa(agentive,0,(noun)).
talk_db_argsIsa(masc,0,(masculine)).
talk_db_argsIsa(masc,0,(noun)).
talk_db_argsIsa(ncollect,0,(massnoun)).
talk_db_argsIsa(noun2,0,(noun)).
talk_db_argsIsa(noun2,0,(plural)).
talk_db_argsIsa(noun2,0,(singular)).
talk_db_argsIsa(noun_verb,0,(verb)). 
talk_db_argsIsa(noun_verb,0,(noun)). 
talk_db_argsIsa(p,0,(adjective)).
talk_db_argsIsa(personal,0,(firstperson)).
talk_db_argsIsa(pl_pronoun,0,(plural)).
talk_db_argsIsa(pl_pronoun,0,(pronoun)).
talk_db_argsIsa(possessive,0,(pronoun)).
talk_db_argsIsa(preposition,0,(preposition)).
talk_db_argsIsa(pres_indic,0,(verb)).
talk_db_argsIsa(sing_only,0,(noun)).
talk_db_argsIsa(sing_only,0,(singular)).
talk_db_argsIsa(verb,0,(adj_verb)). % verb/nouns maybe
talk_db_argsIsa(pronoun,0,(pronoun)).
talk_db_argsIsa(adverb,0,(adverb)).


talk_db_pos_trans(massnoun,noun).
talk_db_pos_trans(superlative,adjective).
talk_db_pos_trans(comparative,adjective).
talk_db_pos_trans(superl,adj).
talk_db_pos_trans(comp,adj).
talk_db_pos_trans(intransitive,verb).
talk_db_pos_trans(transitive,verb).
talk_db_pos_trans(imperfect,verb).
talk_db_pos_trans(imperfect,past).
talk_db_pos_trans(past_part,verb).
talk_db_pos_trans(past_part,past).
talk_db_pos_trans(past_part,particple).
talk_db_pos_trans(past_part,adjectival).
talk_db_pos_trans(pluralverb,verb).
talk_db_pos_trans(pluralverb,plural).
talk_db_pos_trans(pluralverb,noun).
talk_db_pos_trans(pluralverb,active).
talk_db_pos_trans(ingform,verb).
talk_db_pos_trans(ingform,active).
talk_db_pos_trans(ingform,pres).
talk_db_pos_trans(ingform,particple).
talk_db_pos_trans(ingform,adjectival).
talk_db_pos_trans(A,A).

getPos(_,FPOS,_,FPOS).
getPos(0,_,POSVV,POS):-!,functor(POSVV,POS,_);POS=base.
getPos(AT,_,POSVV,POS):-arg(AT,POSVV,POS),!.


%:- style_check(-discontiguous).
% :- reexport(pldata(talk_db_pdat)).

:- decl_talk_db_data(talk_db_pos/2).
talk_db_pos(POS,String):-nonvar(POS),nonvar(String),!,talk_db_t_0(POS,String),!.
talk_db_pos(POS,String):-talk_db_t_0(POS,String).

talk_db_t_0(POS,String):-talk_db_argsIsa(F,N,POSVV),talk_db_pos(String,POSVV,PPOS,F,N),talk_db_pos_trans(PPOS,POS).

talk_db_pos(String,POSVV,POS,F,0):- !, talk_db(F,String), (F=POSVV -> POS=F ; (POS=POSVV;POS=F)).
talk_db_pos(String,POSVV,POS,F,N):- nonvar(String),!, length(List,N),Search=[_|List],C=..[talk_db,F|Search],nth0(AT,Search,String,_),C,getPos(AT,F,POSVV,POS).
talk_db_pos(String,POSVV,POS,F,N):- length(List,N),Search=[_|List],C=..[talk_db,F|Search],C,nth0(AT,Search,String,_),getPos(AT,F,POSVV,POS).


:- decl_talk_db_data(talk_db/1).
talk_db([F,A|List]):-talk_db_argsIsa(F,N,_),length(List,N),apply(talk_db,[F,A|List]).

% =================================
% some random talk_db/2-7s from the other file (to help see the meanings)
% =================================

% =================================
% talk_db/2-7
% =================================

talk_db(noun1,Sing,Sing):-talk_db(noun2,Sing).

:- include('talk_db.nldata').

%kill_talk_db_bad_verbs:-!.
kill_talk_db_bad_verbs:-doall(((
         talk_db(transitive,Sky,Skies,Skied,Skying,Skied),
         talk_db(noun1,Sky,Skies),
         retract(talkdb:talk_db(transitive,Sky,Skies,Skied,Skying,Skied)),
         assertz(talkdb:talk_db(transitive,Skying,Skies,Skied,Skying,Skied)),
         assertz(talkdb:talk_db(noun_verb,Sky,Skying)),
         dmsg(fixed_talkdb_noun_verb(tv,(Sky-->Skies/Skied/Skying))),
         fail))).

%:-share_mp(kill_talk_db_bad_verbs/0).

:- kill_talk_db_bad_verbs.
/*

talk_db(adj, aaronic).
talk_db(adj, aaronical).
talk_db(adj, abactinal).
talk_db(adj, abandoned).
talk_db(adj, abased).
talk_db(adj, abatable).
talk_db(adj, abominable).
talk_db(adj, absent).
talk_db(adj, usurpatory).
talk_db(adj, uterine).
talk_db(adv, yesterday).
talk_db(adv, yesternight).
talk_db(adv, yet).
talk_db(adv, youngly).
talk_db(adv, ysame).
talk_db(adv, yvel).
talk_db(adv, ywis).
talk_db(agentive, doer).
talk_db(auxilary, wont).
talk_db(auxiliary, shall).
talk_db(auxiliary, will).
talk_db(b_t, crimson).
talk_db(b_t, crossbite).
talk_db(b_t, lumber).
talk_db(b_t, pulley).
talk_db(comp, angry, angrier).
talk_db(comp, wordy, wordier).
talk_db(comp, wormy, wormier).
talk_db(comp, worthy, worthier).
talk_db(comp, wry, wrier).
talk_db(comp, yellow, yellower).
talk_db(comp, young, younger).
talk_db(conj, albe).
talk_db(conj, albee).
talk_db(conj, albeit).
talk_db(conj, all).
talk_db(conj, also).
talk_db(conj, altho).
talk_db(conj, although).
talk_db(conj, an).
talk_db(conj, and).
talk_db(conj, so).
talk_db(conj, syne).
talk_db(conj, than).
talk_db(conj, then).
talk_db(conj, therefore).
talk_db(conj, tho).
talk_db(conj, til).
talk_db(conj, till).
talk_db(conj, unless).
talk_db(conj, until).
talk_db(domain, abalone, zoology).
talk_db(domain, abandonee, law).
talk_db(domain, abator, law).
talk_db(domain, abelian, "eccl., hist").
talk_db(domain, abelite, "eccl., hist").
talk_db(domain, abelonian, "eccl., hist").
talk_db(domain, abietite, chem).
talk_db(domain, abirritation, med).
talk_db(domain, ablegate, "r., c., ch").
talk_db(domain, aboma, zoology).
talk_db(domain, absinthate, chem).
talk_db(domain, absinthin, chem).
talk_db(domain, absolute, geom).
talk_db(fem, alumna).
talk_db(fem, buffa).
talk_db(fem, chiffonier).
talk_db(fem, gitana).
talk_db(fem, her).
talk_db(fem, lanner).
talk_db(fem, marseillaise).
talk_db(fem, masseuse).
talk_db(fem, poseuse).
talk_db(fem, religieuse).
talk_db(fem, she).
talk_db(impersonal, meseems).
talk_db(impersonal, methinks).
talk_db(impersonal, tacet).
talk_db(indef, one).
talk_db(indef, whatso).
talk_db(interj, adieu).
talk_db(interj, so).
talk_db(interj, soft).
talk_db(interj, soho).
talk_db(interj, tallyho).
talk_db(interj, tush).
talk_db(interj, walaway).
talk_db(interj, waly).
talk_db(interj, wayleway).
talk_db(interj, welaway).
talk_db(interj, welladay).
talk_db(interj, weyleway).
talk_db(interj, whist).
talk_db(interj, whoa).
talk_db(interj, yoicks).
talk_db(interj, zounds).
talk_db(interrog, what).
talk_db(intransitive, abort, aborts, aborted, aborting, aborted).
talk_db(intransitive, abound, abounds, abounded, abounding, abounded).
talk_db(intransitive, abstain, abstains, abstained, abstaining, abstained).
talk_db(intransitive, zighyr, zighyrs, zighyred, zighyring, zighyred).
talk_db(intransitive, zigzag, zigzags, zigzaged, zigzaging, zigzaged).
talk_db(intransitive, zip, zips, ziped, ziping, ziped).
talk_db(m, kit).
talk_db(m, sacerdotalism).
talk_db(masc, buffo).
talk_db(masc, he).
talk_db(masc, his).
talk_db(masc, lanneret).
talk_db(masc, marseillais).
talk_db(masc, masseur).
talk_db(masc, poseur).
talk_db(masc, religieux).
talk_db(masc, solus).
talk_db(ncollect, folk).
talk_db(ncollect, folks).
talk_db(noun1, aam, aams).
talk_db(noun1, ab, abs).
talk_db(noun1, abandon, abandons). % note verbs are snuck into here (and need to be filtered)
talk_db(noun1, ability, abilities).
talk_db(noun1, abolishment, abolishments).
talk_db(noun2, abdominales).
talk_db(noun2, abdominalia).
talk_db(noun2, aborigines).
talk_db(noun2, abranchiata).
talk_db(noun2, fish).
talk_db(noun2, zygobranchia).
talk_db(noun2, zygodactyli).
talk_db(noun_verb, deprave).
talk_db(noun_verb, harlequin).
talk_db(noun_verb, hobble).
talk_db(noun_verb, hold).
talk_db(noun_verb, kemb).
talk_db(noun_verb, ken).
talk_db(noun_verb, loan).
talk_db(noun_verb, trip).
talk_db(p, bounden).
talk_db(p, collied).
talk_db(p, dustman).
talk_db(p, laden).
talk_db(personal, me).
talk_db(pl_pronoun, they).
talk_db(pl_pronoun, tho).
talk_db(preposition, a). % note articles are snuck into here (and need to be filtered
talk_db(preposition, about).
talk_db(preposition, above).
talk_db(preposition, with).
talk_db(preposition, withal).
talk_db(preposition, within).
talk_db(preposition, without).
talk_db(preposition, withouten).
talk_db(preposition, yer).
talk_db(preposition, ymel).
talk_db(pres_indic, forewot).
talk_db(pronoun, another).
talk_db(pronoun, any).
talk_db(pronoun, echon).
talk_db(pronoun, echoon).
talk_db(pronoun, either).
talk_db(pronoun, yours).
talk_db(pronoun, yourself).
talk_db(pronoun, yow).
talk_db(sing_only, alms).
talk_db(sing_only, amends).
talk_db(sing_only, bellows).
talk_db(sing_only, vermin).
talk_db(sing_only, vers).
talk_db(superl, aftermost).
talk_db(superl, angry, angriest).
talk_db(superl, bad, worst).
talk_db(superl, blue, bluest).
talk_db(superl, brave, bravest).
talk_db(transitive, abandon, abandons, abandoned, abandoning, abandoned).
talk_db(transitive, abduce, abduces, abduced, abducing, abduced).
talk_db(transitive, able, ables, abled, abling, abled).
talk_db(transitive, abolish, abolishes, abolished, abolishing, abolished).
talk_db(transitive, abscond, absconds, absconded, absconding, absconded).
talk_db(transitive, absent, absents, absented, absenting, absented).
talk_db(transitive, absinthiate, absinthiates, absinthiated, absinthiating, absinthiated).
talk_db(transitive, absorb, absorbs, absorbed, absorbing, absorbed).
talk_db(transitive, twit, twits, twitted, twitting, twitted).
talk_db(transitive, twitter, twitters, twittered, twittering, twittered).
talk_db(verb, abray).

*/
