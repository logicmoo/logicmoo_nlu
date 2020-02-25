:- module(ac_xnl_7166_nlkb,[killBadNL/0]).


:- export(ac_nl_info/2).

findset(T,G,L):- setof(T,G,L0)->(flatten([L0],List),list_to_set(List,L)); L=[].

ac_nl_info(Str,Infos):- 
       findset(Info,ac_nl_info_0(Str,Info),Info0),
       maplist(ac_nl_info_1,Info0,More),
       append([Info0|More],ListM),list_to_set(ListM,Infos),!.

ac_nl_info_0(Str,[cycWord(CycWord),cycPOS(RegularAdverb)]):- acnl(RegularAdverb,CycWord,Str,_645343).
ac_nl_info_0(Str,[str(Str)]):- string(Str).
ac_nl_info_0(CycWord,[cycWord(CycWord)]):-  acnl('isa',CycWord,_,_645347).
ac_nl_info_0(Word,Results):- 
   atom(Word), % \+ acnl('isa',xCleverTheWord,_,_645347), 
   downcase_atom(Word,Word),atom_string(Word,String),!,ac_nl_info_0(String,Results).


ac_nl_info_1(Word,Results):- findset(Info,ac_nl_info_2(Word,Info), Results),!.

ac_nl_info_2(cycWord(CycWord),t(P,$self,Y)):-      acnl(P,CycWord,Y,_).
ac_nl_info_2(cycWord(CycWord),t(P,Y,$self)):-      acnl(P,Y,CycWord,_).
ac_nl_info_2(cycWord(CycWord),t(P,$self,Y,Z)):-    acnl(P,CycWord,Y,Z,_).
ac_nl_info_2(cycWord(CycWord),t(P,Y,$self,Z)):-    acnl(P,Y,CycWord,Z,_).
ac_nl_info_2(cycWord(CycWord),t(P,$self,Y,Z,OO)):- acnl(P,CycWord,Y,Z,OO,_).
ac_nl_info_2(cycWord(CycWord),t(P,$self,Y,Z,OO)):- acnl(P,Y,CycWord,Z,OO,_).

:- retractall(acnl(retainTerm,_,_)).

:- export(killBadNL/1).
killBadNLC(AC):- call(AC),killBadNL(AC).
killBadNL(AC):-  retract(AC),assertz('$BORKED'(AC)),nop(wdmsg(retract(AC))),fail.

:- export(killBadNL/0).
killBadNL:- killBadNLC(nlkb7166:acnl(retainTerm,_,_)),fail.
%killBadNL:- killBadNLC(nlkb7166:acnl(_,xxxxx,_,_)),fail.
%killBadNL:- killBadNLC(nlkb7166:acnl(_,_,xxxxx,_)),fail.
killBadNL:- between(1,8,N),length(L,N),append([acnl,F|L],[_ID],Out),member('$BORKED_ARG',L),P=..Out,
  call(nlkb7166:P),
  (F==verbSemTrans-> (wdmsg(retain(P)),fail) ; (killBadNL(nlkb7166:P),fail)).
killBadNL.

:- killBadNL.

:- fixup_exports.

