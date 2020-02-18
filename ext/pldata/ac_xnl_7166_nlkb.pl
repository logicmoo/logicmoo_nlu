:- module(ac_xnl_7166_nlkb,[]).


:- export(ac_nl_info/2).

findset(T,G,L):- setof(T,G,L0)->(flatten([L0],List),list_to_set(List,L)); L=[].

ac_nl_info(Str,Infos):- 
       findset(Info,ac_nl_info_0(Str,Info),Info0),
       maplist(ac_nl_info_1,Info0,More),
       append([Info0|More],ListM),list_to_set(ListM,Infos),!.

ac_nl_info_0(Str,[cycWord(CycWord),cycPOS(RegularAdverb)]):- assertion_content(RegularAdverb,CycWord,Str,_645343).
ac_nl_info_0(Str,[str(Str)]):- string(Str).
ac_nl_info_0(CycWord,[cycWord(CycWord)]):-  assertion_content('isa',CycWord,_,_645347).
ac_nl_info_0(Word,Results):- 
   atom(Word), % \+ assertion_content('isa',xCleverTheWord,_,_645347), 
   downcase_atom(Word,Word),atom_string(Word,String),!,ac_nl_info_0(String,Results).


ac_nl_info_1(Word,Results):- findset(Info,ac_nl_info_2(Word,Info), Results),!.

ac_nl_info_2(cycWord(CycWord),t(P,$self,Y)):-      assertion_content(P,CycWord,Y,_).
ac_nl_info_2(cycWord(CycWord),t(P,Y,$self)):-      assertion_content(P,Y,CycWord,_).
ac_nl_info_2(cycWord(CycWord),t(P,$self,Y,Z)):-    assertion_content(P,CycWord,Y,Z,_).
ac_nl_info_2(cycWord(CycWord),t(P,Y,$self,Z)):-    assertion_content(P,Y,CycWord,Z,_).
ac_nl_info_2(cycWord(CycWord),t(P,$self,Y,Z,OO)):- assertion_content(P,CycWord,Y,Z,OO,_).
ac_nl_info_2(cycWord(CycWord),t(P,$self,Y,Z,OO)):- assertion_content(P,Y,CycWord,Z,OO,_).

:- retractall(assertion_content(retainTerm,_,_)).

:- export(killBadNL/1).
killBadNL(AC):- retract(AC),assertz('$BORKED'(AC)),dmsg(retract(AC)),!,fail.

:- export(killBadNL/0).
killBadNL:- assertion_content(retainTerm,X,Y), killBadNL(assertion_content(retainTerm,X,Y)).
killBadNL:- between(1,8,N),length(L,N),append([assertion_content,F|L],[_ID],Out),member('$BORKED',L),P=..Out,P,F\=verbSemTrans,
  killBadNL(P).
killBadNL.

:- fixup_exports.

