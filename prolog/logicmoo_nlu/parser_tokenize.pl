% ===================================================================
% File 'parser_all.pl'
% Purpose: English to KIF conversions from SWI-Prolog  
% This implementation is incomplete
% Maintainer: Douglas Miles
% Contact: $Author: dmiles $@users.sourceforge.net ;
% Version: 'parser_all.pl' 1.0.0
% Revision:  $Revision: 1.3 $
% Revised At:   $Date: 2002/06/06 15:43:15 $
% ===================================================================

:- module(parser_tokenize,[into_text80/2,input_to_acetext/2]).

%input_to_acetext(Input,AceText):- atomic(Input), !, tokenize(Input, Tokens), tokens_to_acetext(Tokens,AceText).
%input_to_acetext(Input,AceText):- tokens_to_acetext(Input,AceText).


input_to_acetext(Tokens,AceText):- 
   notrace((into_text80(Tokens,TokensP),tokens_to_acetext0(TokensP,AceText))).

tokens_to_acetext0([],'').
tokens_to_acetext0(ListIn,Out):-  notrace((member(T,ListIn), \+ atom(T))), !, maplist(any_nb_to_atom,ListIn,List),tokens_to_acetext0(List,Out).
tokens_to_acetext0([T],T):-!.
tokens_to_acetext0([T,':',P|Tokens],AceText):- atomic_list_concat([T,(:),P],'',TP),!,tokens_to_acetext0([TP|Tokens],AceText).
tokens_to_acetext0([T,P|Tokens],AceText):- atom_length(P,1),char_type(P,punct),!,atom_concat(T,P,TP),tokens_to_acetext0([TP|Tokens],AceText).
tokens_to_acetext0([T,P],AceText):- atomic_list_concat([T,P],' ',AceText),!.
tokens_to_acetext0([T,P|Tokens],AceText):- atomic_list_concat([T,P],' ',TP),!,tokens_to_acetext0([TP|Tokens],AceText).


into_text80(I,O):- 
  notrace(parser_tokenize:(init_to_tokens(I,T),break_atom_symbols(T,N),maplist(number_to_nb,N,O))),!.


number_to_nb(nb(N),nb(N)):-!.
number_to_nb(A,nb(N)):- atom(A),atom_number(A,N),!.
number_to_nb(N,nb(N)):- number(N),!.
number_to_nb(A,A).


unquoted(I,S):- atom_concat('"',R,I),atom_concat(S,'"',R).
requoted(I,S):- format(atom(S),'"~w"',I).

keep_unbroken(I):- \+ atom(I),!.
keep_unbroken(I):- atom_concat('#$',_,I).

break_atom_symbols([],[]).
break_atom_symbols([I|List],[I|ListO]):- keep_unbroken(I), !, 
   break_atom_symbols(List,ListO).
break_atom_symbols([I|List],[O|ListO]):-  unquoted(I,S),!,
  into_text80(S,T),
  tokens_to_acetext(T,A),
  requoted(A,O),!,
  break_atom_symbols(List,ListO).
break_atom_symbols([Pos,':',Word|List],[O|ListO]):-  atomic_list_concat([Pos,':',Word],'',O), !,
  break_atom_symbols(List,ListO).
break_atom_symbols([I|List],ListO):- atom_length(I,N), N>1, split_symbols(I,O),!, 
  append(O,List,ListM), 
  break_atom_symbols(ListM,ListO).
break_atom_symbols([I|List],[I|ListO]):- !, break_atom_symbols(List,ListO).

split_symbols(I,[O]):- char_type(S,space),(atom_concat(S,O,I);atom_concat(O,S,I)),!.
split_symbols(I,[O1,O2|List]):- char_type(S,space),atomic_list_concat([O1,O2|List],S,I),!.
split_symbols(I,[S,O]):- split_from_start(S),atom_concat(S,O,I),!.
split_symbols(I,[S,O]):- split_from_end(O),atom_concat(S,O,I),!.
split_symbols(I,[O1,S,O2]):- split_from_mid(S),atomic_list_concat([O1,O2],S,I),!.

split_symbol(S):- char_type(S, punct), \+ char_type(S, quote).
split_from_start(S):- split_symbol(S), S \== '#'.
split_from_mid(S):- split_symbol(S), S \== '-', S \== ':'.
split_from_end(S):- split_symbol(S), S \== '#'.

:-share_mp(into_text80/2).

init_to_tokens(I,T):- is_list(I),into_control80(I,T).
init_to_tokens(I,T):- any_to_string(I,S),atom_string(A,S),tokenizer_tokenize(A,T).

tokenizer_tokenize(A,T):- tokenizer:tokenize(A,M), rejoin_pronouns(M,T).

rejoin_pronouns([],[]).
rejoin_pronouns([A,Thing|List],[S|ListO]):- 
    ace_niceace:pronoun_split(S, lower, (A,Thing)),!,
    break_atom_symbols(List,ListO).
rejoin_pronouns([I|List],[I|ListO]):- 
  rejoin_pronouns(List,ListO).


% into_text80(I,O):- notrace((into_control80(I,M),!,break_atom_symbols(M,N),maplist(number_to_nb,N,O))).

into_control80(NotList,Out):-  
  string(NotList),string_to_atom(NotList,Atom),!,
  into_control80(Atom,Out).
into_control80(NotList,Out):-  atom(NotList),
   on_x_fail(tokenizer_tokenize(NotList,Tokens)),!,
   into_control80(Tokens,Out).
into_control80(NotList,Out):-  
   \+ is_list(NotList), 
   convert_to_atoms_list(NotList,List), !,
   into_control80(List,Out).
into_control80([W|ListIn],Out):- 
   any_to_atom(W,AW),W\=@=AW,
   maplist(any_to_atom,ListIn,AList),!,
   into_control80([AW|AList],Out).
into_control80(ListIn,Out):- 
   append(Left,[Last],ListIn), 
 ( \+ atom_length(Last,1),
   char_type(P,period), % covers Q, ! , etc
   atom_concat(Word,P,Last)),
   append(Left,[Word,P],ListMid),!,
   into_control80(ListMid,Out).
/*
into_control80(ListIn,Out):- 
   append(Left,[P],ListIn), 
 (\+ atom_length(P,1); \+ char_type(P,period)),!,
   append(ListIn,[('.')],ListMid),!,
   into_control80(ListMid,Out).
*/
into_control80([W,A,B|More],Out):- 
   downcase_atom(W,D),
   Out=[D,A,B|More],!.
into_control80(Out,Out):- !.


any_nb_to_atom(nb(N),A):- any_to_atom(N,A),!.
any_nb_to_atom(N,A):- any_to_atom(N,A).


