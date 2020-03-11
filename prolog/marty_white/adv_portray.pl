% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
% :- ensure_loaded(adv_log2eng).
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flag_level_compare(Flag,Prop):-flag(Flag,Level,Level),Prop=..[F|Args],apply(F,[Level|Args]).

xtreme_english :- flag_level_compare('english',>(2)).
any_english :- \+ no_english.
no_english :- flag_level_compare('english',=(0)).

:- ignore(flag('english',0,2)).

pretty :- \+ flag_level_compare(pretty,=(0)).

:- ignore(flag(pretty,0,1)).


prolog_pprint(Term,Options):- prolog_pretty_print:print_term(Term, [ portray(true), output(current_output)|Options]).


player_pprint(Doer, Logic, always):- xtreme_english,!, must(print_english(Doer, Logic)).
player_pprint(_Doer, D,K):- pprint(D,K).

% print_english(Doer, Logic):- is_list(Logic),!, maplist(print_english(Doer), Logic).
print_english(Doer, Logic):- logic2english(Doer, Logic, Text), write(Text). % pprint(Text,always).


% %%%%%%%%%%%%%%%
% Our user:portray(Logic) English helpers
% %%%%%%%%%%%%%%%


:- use_module(library(logicmoo/portray_vars)).

/*
set_our_portray_level(N):- flag('$adv_pp_level',_,N).
:- set_our_portray_level(0).
get_current_portray_level(Level) :- flag('$adv_pp_level',Level,Level),Level=Level.
:- export(get_current_portray_level/1).
*/

%adv_pretty_print(Term):- !, fmt90(Term).

% adv_pretty_print_goal(Term,Options).

% adv_pretty_print(Term):- format(current_output,'~w',[Term]).
adv_pretty_print(Term):-   
   setup_call_cleanup(
        flag('$adv_pp_level',Level,Level+1),
           \+ \+ (portray_vars:pretty_numbervars(Term,Term2), adv_pretty_print(Level, Term2)),
          flag('$adv_pp_level',_,Level)),!.

adv_pretty_print(Level, Term):- 
  (is_list(Term) ; (Level ==0)),!,
   prolog_pprint(Term,[ portray_goal(mu:adv_pretty_print_goal)]),!.
adv_pretty_print(_Level, Term):- 
  is_logic(Term),logic2english(i,Term,Text),
  write(Text),!.
adv_pretty_print(Level, Term):- \+ is_list(Term), Level>0, Level < 4,
 flag_level_compare('english',>(0)),    
 (flag_level_compare('english',>(1)) 
  -> our_portray_english('~s',Term); 
   print_english_simple_only('~s',Term)),!.
adv_pretty_print(Level, Term):- compound(Term),
  setup_call_cleanup(
    flag('$adv_pp_level',Level,Level-1),
    prolog_pprint(Term,[]),
    flag('$adv_pp_level',Level,Level)),!.
adv_pretty_print(_Level, Term):- fmt90(Term),!.

adv_pretty_print_goal(Term,_Options):- adv_prolog_portray(Term),!.

our_portray_english(Fmt,Logic):-  
 english_codes(Logic,Codes),
   format(Fmt,[Codes]),!.

print_english_simple_only(Fmt,Logic):-  
 english_codes(Logic,Codes),
 was_simple_english_line(Codes),
 format(Fmt,[Codes]).

english_codes(Logic,Codes):- 
 once(Agent = self ; mu_current_agent(Agent)),
 with_output_to(codes(SCodes),print_english(Agent, Logic)),!,
 trim_eols(SCodes,Codes),!.

trim_eols(String,Codes):- append(LString,[N],String),(N==13;N==10),!,trim_eols(LString,Codes).
trim_eols(Codes,Codes).

was_simple_english_line(O):- any_to_codelist(O,CL),length(CL,L),was_simple_english_line_0(L,CL),!.

was_simple_english_line_0(L,_String):- L < 3,!,fail.
was_simple_english_line_0(_,String):- last(String,N),member(N,`}`),!,fail.
was_simple_english_line_0(_,String):-
 freeze(C, member(C,`\n\r[{?`)),
 \+ member(C,String),!.

adv_prolog_portray(Term):- var(Term),!,fail.
adv_prolog_portray(_   ):- flag('english',0,_),!,fail.
adv_prolog_portray(Term):- string(Term),!,portray_string(string,Term).
adv_prolog_portray(Term):- \+ compound(Term),!, fail.
adv_prolog_portray(Term):- is_charlist(Term),!,portray_string(chars,Term).
adv_prolog_portray(Term):- is_codelist(Term),!,portray_string(codes,Term).
adv_prolog_portray(Term):- is_list(Term),!,fail,prolog_pprint(Term,[ portray_goal(mu:adv_pretty_print_goal)]).
%adv_prolog_portray(Term):- safe_functor(Term,i7_term,2),!,display(Term),!.
adv_prolog_portray(Term):- safe_functor(Term,i7_term,2),!,writeq(Term),!.
adv_prolog_portray( A=B):- (var(A);var(B)),!,fail.
adv_prolog_portray(Term):- is_type_functor(Type,Term),!,
  format(atom(Fmt),'{|i7||<~w> ~~s |}',[Type]),
  print_english_simple_only(Fmt,Term),!.  

adv_prolog_portray(Term):- fail,
 \+ tracing, % fail,
 \+ \+ setup_call_cleanup(
      (flag('$adv_pp_level',Level,Level+2),
       flag('english',ELevel,ELevel-1)), % put a little less English on it
         (Level < 3, portray_vars:pretty_numbervars(Term,Term2), mu:adv_pretty_print(Level,Term2)),
        (flag('$adv_pp_level',_,Level),
         flag('english',_,ELevel))),!.

portray_string(Type,Term):- current_prolog_flag(back_quotes,Type),format('`~s`',[Term]).
portray_string(Type,Term):- current_prolog_flag(double_quotes,Type),format('"~s"',[Term]).


:- dynamic user:portray/1.
:- multifile user:portray/1.
:- module_transparent user:portray/1.

:- thread_local(t_l:no_english/0).

user:portray(Term) :- \+ tracing, \+ t_l:no_english, adv_prolog_portray(Term),!.


