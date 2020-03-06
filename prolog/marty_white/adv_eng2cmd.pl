/*
% NomicMUD: A MUD server written in Prolog
%
% Some parts used Inform7, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
% 
% July 10,1996 - John Eikenberry 
% Copyright (C) 2004 Marty White under the GNU GPL
% 
% Dec 13, 2035 - Douglas Miles
%
%
% Logicmoo Project changes:
%
% Main file.
%
*/

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
% :- ensure_loaded('adv_eng2cmd').
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- op(300,fx,'~').

cmdalias(d, down).
cmdalias(e, east).
cmdalias(i, inventory).
cmdalias(l, look).
cmdalias(n, north).
cmdalias(s, south).
cmdalias(u, up).
cmdalias(goto, go).
cmdalias(w, west).
cmdalias(x, examine).
cmdalias(z, wait).
cmdalias(a, auto).
cmdalias(get, take).

cmdalias(whom,who).
cmdalias(whois,who).

cmdalias(turn, switch).
cmdalias(flip, switch).

preposition(_,P) :- notrace(member(P, [at, down, in, inside, into, of, off, on, onto, out, over, to, under, up, with])).

preposition(_Other, P) :-
 member(P, [of, beside]).

compass_direction(D) :- 
 member(D, [north, south, east, west, up, down]).
maybe_compass_direction(D, Actual) :- (cmdalias(D,Actual);D=Actual), compass_direction(Actual).

reflexive_self(W) :- member(W, [self, me, myself , i]). % 'i' inteferes with inventory

strip_noise_words([i,want,to|Tokens], NewTokens) :- strip_noise_words(Tokens, NewTokens).
strip_noise_words(Tokens, NewTokens) :-
 findall(Token,
   ( member(Token, Tokens),
   \+ member(Token, ['please' /* , 'the', 'at', 'a', 'an', 'some', 'thee'*/])),
   NewTokens).

convert_reflexive_self(Agent, Words, NewWords) :-
 % Substitute Agent for 'self'.
 findall(Token,
   ( member(Word, Words),
   ( reflexive_self(Word), Token = Agent;
    Token = Word )),
   NewWords).

is_type_functor(Type,Term):- \+ is_list(Term), compound(Term), functor(Term,F,A), !,
                              functor(Skel,F,A),type_functor(Type,Skel).


:- discontiguous(eng2logic/4).
:- discontiguous(parse_cmd/4).

% %%%%%%%%%%%%%%
% parser tracing            
% %%%%%%%%%%%%%%


:- nb_setval(parsemem,[inst(error)]).

:- meta_predicate(with_parse_mem(*,0)).
with_parse_mem(Mem, Goal):-
  b_getval(parsemem,MemWas),
  setup_call_cleanup(
        b_setval(parsemem,Mem),
        Goal,
        b_setval(parsemem,MemWas)).


is_text_mw(Text):- is_charlist(Text),!.
is_text_mw(Text):- is_list(Text),!, is_codelist(Text).
is_text_mw(Text):- compound(Text),!,fail.
is_text_mw(Text):- string(Text),!.
is_text_mw(Text):- atom_contains(Text,' '),!.
is_text_mw(Text):- name(Text,Codes),last(Codes,L),code_type(L,punct).

is_logic(Logic):- compound(Logic), is_type_functor(_,Logic),!.

nl_context(Name, Value, Else, Frame ):- declared(Name, Value, Frame)-> true; (Else\=='$fail', Else = Value).
set_nl_context(Name, Value, Frame):- append_term(Name,Value, Prop), declare(Prop, Frame, _NewFrame).


parse2state(Text,State):- % reframed_call( Pred, Term, Logic).
       reframed_call(eng2state, istate, Text, State, []). 

:- dynamic(parseFrame/2).

parseFrame(e2l,[current_subject(vSpeaker)]).

eng2log(Term, Logic)  :- eng2logic(Term, Logic).
eng2logic(Term, Logic):- reframed_call(eng2logic, Term, Logic).
eng2cmd(Term, Logic)  :- reframed_call(eng2cmd, Term, Logic).
eng2state(Term, Logic):- reframed_call(eng2state, Term, Logic).
eng2query(Term, Logic):- reframed_call(eng2state, Term, Logic).

eng2log(Agent, Words, Logic, Mem):- reframed_call( eng2logic,  Agent, Words, Logic, Mem).

reframed_call(Pred, Text, Logic):- 
   nl_context(current_frame,   Frame, parseFrame(e2l), istate),
   nl_context(current_subject, Self, vSpeaker, Frame),
   set_nl_context(current_subject, Self, Frame),
   %set_nl_context(current_frame, Mem, Frame),
   into_text80(Text, Term),
   reframed_call(Pred, Self, Term, Logic, Frame),!.

% -- parse(Doer, WordList, ActionOrQuery, Memory)

reframed_call(_Pred, _Self,  [], [], _Mem) :-!.
reframed_call(Pred,  Self,  Logic, NewLogic, Mem) :- compound(Logic), \+ is_list(Logic), is_logic(Logic),
  log2eng(Self, Logic, Words), reframed_call(Pred, Self, Words, NewLogic, Mem),!.
reframed_call( Pred,  Self, NonText,   Logic, Mem) :- \+ is_list(NonText), into_text80(NonText, Text), !, reframed_call( Pred,  Self, Text,   Logic, Mem).
reframed_call( Pred,  Self, [NonText], Logic, Mem) :- \+ atom(NonText), !, reframed_call( Pred,  Self, NonText, Logic, Mem) .
reframed_call( Pred, Doer, [rtrace|Args], Logic, M) :- Args\==[], !, rtrace(reframed_call( Pred, Doer, Args, Logic, M)).
reframed_call( Pred, Doer, [notrace|Args], Logic, M) :- Args\==[], !, notrace(reframed_call( Pred, Doer, Args, Logic, M)).
reframed_call( Pred, Doer, [cls|Args], Logic, M) :- Args\==[], !, cls, reframed_call( Pred, Doer, Args, Logic, M).
reframed_call( Pred,  Self,  Words, Logic, Mem):- call( Pred,  Self,  Words, Logic, Mem).


eng2logic(Self, Words, Cmd,   Mem):- show_success(eng2cmd( Self,  Words, Cmd, Mem)),!.
eng2logic(Self, Words, Logic, Mem):- show_success(eng2state( Self,  Words, Logic, Mem)),!.
eng2logic(Self, Words, Logic, Mem):- append([Self,wonders],Words,Decl), show_success(eng2state( Self,  Decl, Logic, Mem)),!. 

/*
reframed_call( Pred, Doer, [Verb], Action, _M) :- Action=..[Verb,Doer], !.
reframed_call( Pred, Doer, [Verb|TheArgs], Action, M) :-
 args2logical(TheArgs, Args, M), wdmsg( TheArgs->Args), !, 
 Action =.. [Verb,Doer|Args].
*/


eng2state(_Doer, Tokens, frame(Logic), Mem) :- current_predicate(declarative/3), 
  with_parse_mem(Mem, phrase(declarative(Logic),Tokens, [])).

eng2state(_Doer, Tokens, frame80(Logic), Mem) :- current_predicate(parse_chat80/2),
  with_parse_mem(Mem, parse_chat80(Tokens, Logic)).

eng2state(_Doer, Tokens, frame(Logic), Mem) :- current_predicate(utterance/4),
  with_parse_mem(Mem, phrase(utterance(_,Logic),Tokens, [])).

user:parse_chat80(Text,Q):- 
   into_text80(Text,W),
   parser_chat80:((
   try_maybe_p(parser_chat80:sent_to_parsed,W,P),
   try_maybe_p(parser_chat80:i_sentence,P,S),
   try_maybe_p(parser_chat80:clausify80,S,C),
   try_maybe_p(parser_chat80:qplan,C,Q))).


eng2cmd(_Self, [Verb|Args], Logic, _M) :- verbatum_anon(Verb), !, (Args =[A|Text] -> Logic =.. [Verb,A,Text]; Logic = Verb).
eng2cmd(Self, [Alias|Args], Logic, Mem):- cmdalias(Alias,Cmd), !, eng2cmd(Self, [Cmd|Args], Logic, Mem).
eng2cmd(Doer, Words, Action, M) :- parse_imperative_movement(Doer, Words, Action, M),!.

% %%%%%%%%%%%%%%
% Take
% %%%%%%%%%%%%%%

eng2cmd(Doer, [take| ObjectSpec], take(Doer, Object), Mem) :- parse2object(ObjectSpec,Object,Mem),!.

eng2cmd(Doer, Tokens, Logic, Mem) :- 
  with_parse_mem(Mem, phrase(parse_cmd(Doer, Logic),Tokens, [])),!.

eng2cmd(Doer, Words, Action, M) :- 
 fail, 
 Words \== [i], % Dont interfere with inventory
 % If not talking to someone else, substitute Agent for 'self'.
 append(Before, [Doer|After], Words),
 reflexive_self(Doer),
 thought(inst(Agent), M),
 append(Before, [Agent|After], NewWords),
 reframed_call(eng2cmd, Doer, NewWords, Action, M).

eng2cmd( Self,  Words, Logic, Mem):-  
    \+ member(Self, Words),
   (get_agent_prompt(Self,Prompt)->true;Prompt = [does]),
   append([Self|Prompt],Words,Decl),eng2state( Self,  Decl, Logic, Mem),!. 

eng2cmd(Doer, [TheVerb|Args], Action, M) :- 
 quietly_talk_db([F,Verb|Forms]),
 notrace(F==intransitive;F==transitive),
 member(TheVerb,Forms),!,
 eng2cmd(Doer, [Verb|Args], Action, M).

eng2cmd(Doer, [TheVerb|Args], Action, M) :- 
 munl_call(clex_verb(TheVerb,Verb,_,_)),
 Verb\==TheVerb,!,
 eng2cmd(Doer, [Verb|Args], Action, M).

% %%%%%%%%%%%%%%
% Simple
% %%%%%%%%%%%%%%

parse_cmd(Agent,  look(Agent)) --> [look].
parse_cmd(Agent,  wait(Agent)) --> [wait].
parse_cmd(Agent,  auto(Agent)) --> [auto].

parse_cmd(Agent,  inventory(Agent)) --> [inventory].
parse_cmd(Agent,  Cmd) --> [Alias],{cmdalias(Alias,Cmd),flatten([Cmd],Flat)},dcg_push(Flat),parse_cmd(Agent,  Cmd).

% %%%%%%%%%%%%%%
% Introspection
% %%%%%%%%%%%%%%

self_prop(done_by,mem,memory).
self_prop(object,props,props).

parse_cmd(Doer, inspect(Doer,getprop(Target,PropPred))) --> [PropText], 
  {self_prop(Type, PropText, PropPred)},!,  parse_for_optional(Type,Target,Doer).


parse_for_optional(Type, Target, _Else) --> parse_for_kind(Type,Target).
parse_for_optional(_Type, Else,  Else) --> [].

%parse_for_kind(_,_) --> [], !, {fail}.
parse_for_kind(agent,floyd) --> [floyd],!.
parse_for_kind(agent,Target) --> !, parse_for_kind(object,Target).
parse_for_kind(place,Target) --> !, parse_for_kind(object,Target).
parse_for_kind(object,Target) --> {list_len_between(3,1,List)},List,{parse2object(List,Target,inst('player~1'))}.
%parse_for_kind(place, Dest)--> in_agent_model(Dest, h(_, _, Dest)).
%parse_for_kind(place, Dest)--> in_agent_model(Dest, h(_, Dest, _)).

list_len_between(N,M,List):- length(List, N) ;
  (N\=M , (N<M -> N2 is N+1 ; N2 is N-1), list_len_between(N2,M,List)).

word_next_arg_type(who,done_by).
word_next_arg_type(what,object).
word_next_arg_type(where,place).

parse_cmd(Doer, recall(Doer,Who,Target)) --> [Who], {word_next_arg_type(Who, Type)}, parse_for_optional(Type,Target, Doer).

any_text(Text,Text,[]).

eng2assert_text(Text,Action):- eng2logic(Text,Action),!.
eng2assert_text(Text,txt(Text)).
eng2assert_text(Action,S,[]):- eng2assert_text(S,Action).

oneOf(List,S,E):-member(I,List),(is_list(I)->phrase(I,S,E);phrase([I],S,E)).
% %%%%%%%%%%%%%%
% Communication
% %%%%%%%%%%%%%%
parse_cmd(Doer, emote(Doer, say, Dest, Emoted)) --> parse_for_kind(agent, Dest), [','],  eng2assert_text(Emoted).
parse_cmd(Doer, emote(Doer, Say, Dest, Emoted)) --> [Ask], {ask_to_say(Ask,Say)},
  oneOf([to,from,:,(','),[]]), ignore(parse_for_kind(agent, Dest);parse2object(Dest)), oneOf([to,:,[]]), eng2assert_text(Emoted).
%parse_cmd(Doer, emote(Doer, Emoted)) --> [emote], eng2assert_text(Emoted),!.
%parse_cmd(Doer, say(Doer, Emoted)) --> [say], eng2assert_text(Emoted).

ask_to_say(Ask,say):- arg(_,v(ask,say,tell,talk),Ask).
ask_to_say(Ask,say):- arg(_,v(request,tell),Ask).


              
% %%%%%%%%%%%%%%
% Give
% %%%%%%%%%%%%%%
/*verb(give,
 [human(Doer),done_by(Doer, Action),
  frame(Action), act_of(give, Action),
  inanimate(Object),objectActedOn(Object, Action),
  human(Recipient),recipient(Recipient, Action) ] ).
*/
%nlac(verbSemTrans, xGiveTheWord, 0, xDitransitiveNPNPFrame, and(objectGiven('ACTION', 'OBJECT'), isa('ACTION', actGivingSomething), giver('ACTION', 'SUBJECT'), givee('ACTION', 'OBLIQUE-OBJECT')), 2046576).
%nlac(infinitive, xGiveTheWord, "give", 638997)
% talkdb:talk_db(transitive, give, gives, gave, giving, given).
acdb(F,A,B):- munl_call(ttholds(F,A,B)).
acdb(F,A,B):- munl_call(acnl(F,A,B,_)).

:- set_prolog_flag(debug_on_error,true).
munl_call(G):- catch(nl_call(G),munl_call2(G),fail).
munl_call2(G):- catch(rtrace(nl_call(G)),_,fail).
%munl_call(G):-nl_call(G).

two_adjs(W1,W2,W3):- var(W1),nonvar(W2),!,two_adjs(W2,W1,W3).
two_adjs(W1,W2,W3):- var(W1),var(W2),!, 
      munl_call( wn_s(A,B,W1,_,_,_)),once((munl_call(wn_ant(A,B,C,D)),
      A>C, 
      two_adjs_0(A,W2,C,W3,D))).
two_adjs(W1,W2,W3):- 
      munl_call(wn_s(A,B,W1,_,_,_)),once((munl_call(wn_ant(A,B,C,D)),
      two_adjs_0(A,W2,C,W3,D))).

two_adjs_0(A,W2,C,W3,D):- 
      munl_call(wn_at(A,E)),munl_call(wn_at(C,E)),
      munl_call(wn_s(C,D,W2,_,_,_)),munl_call(wn_s(E,1,W3,_,_,_)).


%acdb(Past, 'TTWord_Give', "gave")

verb_formtense_str(GiveStr, RootStr, Else):- 
    acdb(baseForm, GiveTheWord, GiveStr),
    acdb(posForms, GiveTheWord, xtVerb), !,
    RootStr = GiveStr,
    Else = baseForm.
verb_formtense_str(GaveStr, GiveStr, Past):- 
    acdb(Past, GiveTheWord, GaveStr), Past \= inflVerb, Past \= baseForm,
    acdb(posForms, GiveTheWord, xtVerb),
    (acdb(baseForm, GiveTheWord, GiveStr);acdb(inflVerb, GiveTheWord, GiveStr)),
    GaveStr\=GiveStr,!.

verb_formtense_atom(Giving, Give, F-N):-
    (F=transitive;F=intransitive),
    quietly_talk_db([F,Give|Forms]),    
    nth0(N,Forms,Giving).
verb_formtense_atom(Giving, Give, Past):- 
    munl_call(clex_verb(Giving, Give,_, Past)).


verb_formtense(Var,_,_):- var(Var),!,fail.
verb_formtense(Gave,Give,Past):- atom(Gave), 
    atom_string(Gave,GaveStr),
    verb_formtense_str(GaveStr,GiveStr,Past),
    atom_string(Give,GiveStr).
verb_formtense(GaveStr,GiveStr,Past):- verb_formtense_str(GaveStr,GiveStr,Past).
verb_formtense(Gave,Give,Past):- atom(Gave), !, verb_formtense_atom(Gave, Give, Past).
verb_formtense(GaveStr,GiveStr,Past):- 
    atom_string(Gave,GaveStr),
    verb_formtense_atom(Gave,Give,Past),
    atom_string(Give,GiveStr).

do_eval_or_same(G,GG):- \+ compound(G),!,GG=G.
do_eval_or_same([G1|G2],[GG1|GG2]):- !, do_eval_or_same(G1,GG1), do_eval_or_same(G2,GG2).
do_eval_or_same({O},{O}):- !.
do_eval_or_same(G,GG):- compound_name_arguments(G,HT,[F|GL]), atom(F), member(HT,[t,h]), !,
 compound_name_arguments(GM,F,GL),!,do_eval_or_same(GM,GG).

do_eval_or_same(textString(P,G),textString(P,GG)):- ground(G),!, must_mw(to_string_lc(G,GG)),!.
/*
do_eval_or_same(PEG,PEGG):- notrace((compound_name_arguments(PEG,F,Args),downcase_atom(F,D),(atom_concat(_,'text',D);atom_concat(_,'string',D)), 
  append(Left,[G],Args))),ground(G), \+ string(G), !, must_mw(to_string_lc(G,GG)),!,
  append(Left,[GG],NewArgs),compound_name_arguments(PEGG,F,NewArgs).
*/
do_eval_or_same(isa(P,G),isa(P,GG)):- ground(G),!, must_mw(asCol(G,GG)),!.

do_eval_or_same(xfn(P,G),GG):- !, must_mw( call(P,G,GG)),!.
do_eval_or_same(G,GG):- compound_name_arguments(G,F,GL), F\==percept_props, !,
 maplist(do_eval_or_same,GL,GGL),!,compound_name_arguments(GG,F,GGL).
do_eval_or_same(G,G).    

frame_var(_,Frame,_):- \+ compound(Frame),!,fail.
frame_var(Name,Frame,Var):- nonvar(Var), !,frame_var(Name,Frame,NewVar),!,NewVar=Var.
frame_var(Name,Frame,Var):- compound(Name), !, arg(_,Name,E), frame_var(E,Frame,Var), !.
frame_var(Name,[Frame1|Frame2],Var):- !, frame_var(Name,Frame1,Var);frame_var(Name,Frame2,Var).
frame_var(Name,Prop = Var,Var):- !, same_word(Name,Prop).
frame_var(Name,f(Pred,1,[Var]),Var):- !, same_name(Name,Pred).
frame_var(Name,f(_,_,[Prop|List]),Var):- !, same_name(Name,Prop),last(List,Var).
frame_var(Name,Frame,Var):- compound_name_arity(Frame,Pred,Arity), Arity > 0, compound_name_arguments(Frame,Pred,List), 
  frame_var(Name,f(Pred,Arity,List),Var).
frame_var(Name,Frame,Var):- arg(_,Frame,E), frame_var(Name,E,Var), !.

asCol(A,A):- var(A),!.
asCol(A,'TypeFn'(A)):- \+ callable(A),!.
asCol(A,S):- format(atom(S),'~w',[A]).

to_upcase_name(V,V):- var(V),!.
to_upcase_name(T,N):- compound(T), !, compound_name_arity(T,A,_),!,to_upcase_name(A,N).
to_upcase_name(T,N):- format(atom(A),'~w',[T]),upcase_atom(A,N).

same_name(T1,T2):- ground(T1),ground(T2),to_upcase_name(T1,N1),to_upcase_name(T2,N2),!,N1==N2.

push_frame(Info,Frame):- var(Frame), !, gensym(frame,F), Frame = [lbl(F)], push_frame(Info,Frame).
push_frame(Info,Frame):- do_eval_or_same(Info,BetterInfo),Info\=@=BetterInfo,push_frame(BetterInfo,Frame).
push_frame(Info,Frame):- member(Sub,Frame),Sub==Info,!.
push_frame(Info,Frame):- Frame = [H|T], setarg(2,Frame,[H|T]),setarg(1,Frame,Info).



assign_var_name(_Frame,with-using:Type,Var):- !,upcase_atom(Type,UP),debug_var(UP,Var),!.
assign_var_name(_Frame,_-_:Type,Var):- atom(Type), !,debug_var(Type,Var),!.
assign_var_name(Frame,_Prep-Prop:_Type,Var):- !,assign_var_name(Frame,Prop,Var),!.
assign_var_name(Frame,Prop:_Type,Var):- !,assign_var_name(Frame,Prop,Var),!.
assign_var_name(Frame,_Prep-Prop,Var):- !,assign_var_name(Frame,Prop,Var),!.
assign_var_name(_Frame,Prop,Var):- debug_var(Prop,Var),!.

add_dataframe_types([],[],_Frame,[]).
add_dataframe_types([Prep-Prop:Type| FrameArgs], [NewArg|VarsOf], Frame, NextProps):- 
  push_frame(isa(NewArg,Type),Frame), !,
  add_dataframe_types([Prep-Prop| FrameArgs], [NewArg|VarsOf] , Frame, NextProps). 
add_dataframe_types([PrepProp:Type| FrameArgs], [NewArg|VarsOf], Frame, NextProps):- 
  push_frame(isa(NewArg,Type),Frame), !,
  add_dataframe_types([PrepProp| FrameArgs], [NewArg|VarsOf] , Frame, NextProps). 
add_dataframe_types([PrepProp| FrameArgs], [_|VarsOf], Frame,[PrepProp| NextProps]):- 
  add_dataframe_types(FrameArgs, VarsOf , Frame, NextProps). 


parse_dataframe(FrameArgs, VarsOf, Action, Frame, TextArgs):- 
  nth0(Nth,FrameArgs,Prep-Prop, NewFrameArgs), atom(Prop),
  append(Left,[SamePrep, TextArg| Right], TextArgs),
  same_word(Prep, SamePrep),!,
  append(Left, Right, NewTextArgs),
  nth0(Nth,VarsOf,NewArg,NewVarsOf),  
   push_frame(textString(NewArg,TextArg),Frame),
   push_frame(t(Prop,Action, NewArg),Frame),
   parse_dataframe(NewFrameArgs, NewVarsOf, Action, Frame, NewTextArgs).

parse_dataframe(FrameArgs, VarsOf, Action, Frame, TextArgs):- 
  nth0(Nth,FrameArgs,Prop, NewFrameArgs), atom(Prop), Prep = Prop,
  append(Left,[SamePrep, TextArg| Right], TextArgs),
  same_word(Prep,SamePrep),!,
  append(Left, Right, NewTextArgs),
  nth0(Nth,VarsOf,NewArg,NewVarsOf),
  delete(NewArg,VarsOf,NewVarsOf),
  push_frame(textString(NewArg,TextArg),Frame),
  push_frame(t(Prop,Action, NewArg),Frame),  
  parse_dataframe(NewFrameArgs, NewVarsOf, Action, Frame, NewTextArgs).

parse_dataframe(FrameArgs, VarsOf, Action, Frame, TextArgs):-
  make_dataframe_simple(FrameArgs ,TextArgs, VarsOf, Action, Frame).

make_dataframe_simple([], [], _VarsOf, _Action, _Frame):- !.
make_dataframe_simple([], TextArgs, VarsOf, Action, Frame):- !, push_frame(zexistsLeftOverText(VarsOf, Action,TextArgs),Frame).
make_dataframe_simple(_FrameArgs, [], VarsOf, Action, Frame):- !, push_frame(zexistsLeftOver(VarsOf, Action),Frame).

make_dataframe_simple([_Prep-Prop| FrameArgs],TextArgs, VarsOf, Action, Frame):- !,
  make_dataframe_simple([Prop| FrameArgs],TextArgs, VarsOf, Action, Frame).

make_dataframe_simple([Prop| FrameArgs],TextArgs, [NewArg|VarsOf], Action, Frame):- !,
  Left = [],
  append(Left,[TextArg| Right], TextArgs),
  push_frame(textString(NewArg,TextArg),Frame),
  push_frame(t(Prop,Action, NewArg),Frame),
  append(Left, Right, NewTextArgs),
  make_dataframe_simple(FrameArgs, NewTextArgs, VarsOf, Action, Frame).

/*
   Take the sentence:    

      London 2pm 200 men mouths loudly protesting law not give police hell


   Add Blanks like:

   " _ London _ 2pm _ 200  _ men _ mouths _ loudly _ protesting _ law _ not _ give  _ police _ hell "


  Fill in blanks: 

  " in London at 2pm approx 200 using mouths by men very loudly orderTo protest about law did not acually give to police some hell"


  Lets make each one a frameroles:

  ?- premutation(["in London", "about 2pm", "approx 200", "using mouths",  "by men",  "very loudly", "orderto protest", "about law" 
                                                "did not", "acually give", "to police", "some hell"], Res).


  is the permutations output accepbale?


  If this is correct you can immagine a declarion as the "psuedo-preps"  

   in _ about _ approx _ using _ by _ very _ orderto _ about  _ did _ acually _ to _ some _  of this GIVE frame 



  dataformat would be...


  default_args_prep_order(give,in-place, about-time, approx-number, using-device, 
               by-doer, very-adverb, orderto-reason, about-theme, did-truthvalue, acually-verb, to-doee, some-thing).

*/

/*
   at(Place-London),when(Time-2pm),because(Reason-protesting),
   by(Doer-men),with(MoreDoers,"and women"),own(Instrument-"knife"),VrtuhValue,did(Action-),toward(Vector-up),to(Doee),of(
*/
:- discontiguous(verb_frame1/5). 
% to sally give love
% to sally does player1 give love
% did player1 give love to sally?
% give sally love
% give love to sally
% give sally some love
verb_frame1(Action, give,
  [does-done_by:tAnimate,some-objectActedOn:object,to-recipient:tAnimate,with-using:bpart],
  [Doer,does,$verb,some,Object,to,Recipient,using,Instrument],
  [done_by(Action,Doer),

   normally(
            isa(Instrument,tBodyPart), 
            cntrls(Doer, Instrument), 
            can_reach(Instrument, Recipient)),   
   pre(
            cntrls(Doer, Object), 
           ~cntrls(Recipient, Object)),
   post(
           ~cntrls(Doer, Object), 
            cntrls(Recipient, Object)),
   end_of_list]).


% write name in book with pen
% etch name on tree [with] knife
% player~1 etches name onto the tree's bark with a knife
% 
% surface 
%    tree
%    on tree
%    in tree
%    at tree

%    at bark
%    at tree bark
%    on tree bark
%    in tree bark
%    at bark of tree

%    trunk of tree
% ======================
%    under trunk of tree
%    on trunk of tree
%    in trunk of tree
%    at trunk of tree
%    lower part of trunk of tree
%    in part of trunk of tree


%    on tree = on tree trunk = on tree bark
%    at tree trunk = under tree bark
%    book
%    on book
%    in book
%    at book
%    at book page
%    on book page
%    in book page
%    at page of book
%    at page
%    at book cover
%    at cover of book
% 
verb_frame1(Action,etch,
 [does-done_by:tAnimate,some-depliction:glyphic,on-target:surface,of-objectActedOn,with-using:tTool],
 [Doer,does,$verb,some,Depliction,on,Surface,of,Object,using,Instrument],
 [done_by(Action,Doer),
   pre(isa(Instrument,tKnife),cntrls(Doer, Instrument),can_reach(Instrument, Object)),
  part_of(Surface, Object),
  ~pre(exists(Depliction)),
  pre(~part_of(Depliction, Surface)),
  post(part_of(Depliction, Surface))]).

verb_frame1(Action,put,  % to-region,of-container
 [does-done_by:tAnimate,some-objectActedOn:object,at-toLocation:place,with-using:bpart],
 [Doer,does,$verb,some,Object,at,Place,using,Instrument],
 [done_by(Action,Doer),
  cntrls(Doer, Instrument), can_reach(Instrument, Place),
  part_of(Place, Container),
  or(h(How,Place,Container),h(How,Container,Place)),
  post(h(How,Container,Object))]).


% %%%%%%%%%%%%%%
% Dig
% %%%%%%%%%%%%%%
/*
reframed_call( Pred, Agent, [dig, ShapeHole], dig(Agent, ShapeHole, Where, Instrument), M) :- fail,
 in_agent_model(Agent, inst(Agent), M),
 in_agent_model(Agent, h(_, Agent, Where), M),
 Instrument=shovel.
*/

verb_frame1(Action, dig,
 [does-done_by:tAnimate,some-shape_of,on-faceOf:surfaceOf(Object),in-objectActedOn:tGround,with-using:tTool],
 [Doer,does,$verb,some,ShapeHole,on,Surface,into,Object,using,Instrument],
[done_by(Action,Doer),
  normally(
           isa(Instrument,tKnife), 
           cntrls(Doer, Instrument), 
           can_reach(Instrument, Surface)), 
 part_of(Surface, Object),
 ~pre(exists(ShapeHole)),
 pre(~part_of(ShapeHole, Object)),
 post(part_of(ShapeHole, Object))]):- debug_var(tool,Instrument),debug_var(hole,ShapeHole).




eng2cmd_frame(Doer, [VerbText|TextArgs], FrameOut, _Mem):- 
    %talkdb:talk_db(transitive, give, gives, gave, giving, given).     
    verb_formtense(VerbText,VerbD,Tense) ->
    verb_frame1(Action,Verb,DoerFrame,English,UNormals),
    correct_normals(UNormals,Normals),
    DoerFrame=[DoerAgent|FrameArgs],
    term_variables(English,VarsOf),
    all_different_bindings([Action|VarsOf]),
    once(VerbText=Verb;same_word(VerbD,Verb)),
    select_from(done_by(Action,Doer),Normals, Frame),
    must_mw1((push_frame(isa(Action,'tAction'),Frame),
    push_frame(textString(Action,VerbText),Frame),
    push_frame(occurs(Action,Tense),Frame),    
    debug_var([Verb,'Event'],Action),
    debug_var("Actor",Doer),    
    maplist(assign_var_name(Frame),[DoerAgent|FrameArgs],VarsOf),
    add_dataframe_types([DoerAgent|FrameArgs], VarsOf, Frame, BetterFrameArgs), 
    parse_dataframe(BetterFrameArgs,VarsOf, Action, Frame, [Doer|TextArgs]), 
    frame_to_asserts(Frame,FrameOut),
    pprint(FrameOut, always))).

frame_to_asserts(List,cmdFrame(Frame)):- is_list(List),sort(List,ListR),list_to_conjuncts('&',ListR,Frame),!.
frame_to_asserts(Frame,cmdFrame(Frame)).

frmprint(Frame) :-
    %catch(make_pretty(I,O),_,I=O),
    guess_pretty(Frame),
    predsort(frcmp,Frame,FrameA),
    reverse(FrameA,FrameO),    
    maplist(frmprint_e,FrameO).
frmprint_e(Frame) :- format('~N  ',[]),fmt90(Frame).

sortDeref(P,PP):- \+ compound(P),!, P=PP.
%sortDeref(isa(X,Y),visa(X,Y)):-!.
sortDeref(~(P),PP):-!,sortDeref(P,PP).
sortDeref(P,PP):- arg(1,P,PP),compound(PP).
sortDeref(P,PP):- functor(P,F,N),wrapper_funct_sortin(F),arg(N,P,E),!,sortDeref(E,PP).
sortDeref(P,P).


all_different_bindings([]):- !.
all_different_bindings([_]):- !.
all_different_bindings([X,Y]):- !, dif(X,Y).
all_different_bindings([X,Y,Z]):- !, dif(X,Y),dif(X,Z),dif(Z,Y).
all_different_bindings([X|Text]):- maplist(dif(X),Text),all_different_bindings(Text).

wrapper_funct_sortin(F):- arg(_,v(~,post,pre),F).
wrapper_funct_correction(F):- arg(_,v(~,post,normally,pre),F).

correct_normals(Nil,Nil):- Nil==[],!.
correct_normals(EOL,[]):- EOL==end_of_list,!.
correct_normals(UNormals,Normals):- \+ compound(UNormals),!,[UNormals]=Normals.
correct_normals((U,UU),Normals):- !, correct_normals(U,UC),correct_normals(UU,UUC),!,append(UC,UUC,Normals).
correct_normals([U|UU],Normals):- !, correct_normals(U,UC),correct_normals(UU,UUC),!,append(UC,UUC,Normals).
correct_normals(P,Normals):- P=..[F,A1,A2|List],wrapper_funct_correction(F),
  P1=..[F,A1], P2=..[F,A2|List], !,
  correct_normals([P1|P2],Normals).
correct_normals(Normal,[Normal]).  

frcmp(P1,P2,Cmp):- (\+ compound(P1) ; \+ compound(P2)),!, compare(P1,P2,Cmp).
frcmp(P2,P1,Cmp):- sortDeref(P1,PP1)->P1\=@=PP1,!,frcmp(P2,PP1,Cmp).
frcmp(P1,P2,Cmp):- sortDeref(P1,PP1)->P1\=@=PP1,!,frcmp(PP1,P2,Cmp).
frcmp(P1,P2,Cmp):- N=1,arg(N,P1,F1),arg(N,P2,F2),F1==F2,!,compare(P1,P2,Cmp).
frcmp(P1,P2,Cmp):- functor(P1,F1,_),functor(P2,F2,_),F1\==F2,compare(F1,F2,Cmp),Cmp \= (=),!.
frcmp(P1,P2,Cmp):- arg(N,P1,F1),arg(N,P2,F2),frcmp(F1,F2,Cmp),Cmp \= (=),!.
frcmp(P1,P2,Cmp):- compare(P1,P2,Cmp).
%reframed_call( Pred, Doer, [give, Object, to, Recipient], give(Doer, Object, Recipient), _Mem):- !.
/*
verb(bite, 
 [tAnimate(Doer), done_by(Doer, Action),
  frame(Action), act_of(Action, biting), 
  tAnimate(Object), object(Object, Action),
  type_of(Instrument, teeth), using(Instrument, Action), 
  part_of(Instrument, Doer) ] ).
*/
verb_frame1(Action, bite,
  [does-done_by:tAnimate,some-victem,with-using:teeth],
  [Doer,does,$verb,some,Object,using,BPart],
  [done_by(Action,Doer),
   part_of(BPart, Doer),
   can_reach(BPart, Object),
   normally(isa(BPart,tBodyPart))]).

verb_frame1(Action, like,
  [does-done_by:tAnimate,some-targetObject,so-amount],
  [Doer,does,$verb,some,Object,a,LotsOrLittle],
  [done_by(Action,Doer),
   feelsAbout(Doer,Object,LotsOrLittle)]).

verb_frame1(Action, want,
  [does-done_by:tAnimate,to-targetAction:action],
  [Doer,does,$verb,want,to,AlsoDo],
  [done_by(Action,Doer),
   wantsToDo(Doer,Action,AlsoDo)]).


% %%%%%%%%%%%%%%
bpart_contol(break,broken).
bpart_contol(repair,unbroken).
bpart_contol(light,lit).
bpart_contol(unlight,unlit).
% %%%%%%%%%%%%%%
verb_frame1(Action,Light,
   \[does-done_by:tAnimate,some-objectActedOn,with-using:bpart],
   [Doer,does,$verb,some,Object,using,Instrument], 
   [done_by(Action,Doer),
    pre(cntrls(Doer, Instrument),can_reach(Instrument, Object)),    
  symetrically(opposite_values(Lit,Unlit)),
  pre(status(Object,Unlit)),
  pre(~status(Object,Lit)),
  post(~status(Object,Unlit)),
  post(status(Object,Lit)),
  end_of_list]):- bpart_contol(Light,Lit).




%reframed_call( Pred, Doer, [switch, Thing, OnOff], Result, M) :- preposition(_, OnOff), !, reframed_call( Pred, Doer, [switch, OnOff, Thing], Result, M).

verb_frame1(Action,switch,
   [does-done_by:tAnimate,some-objectActedOn,to-state:on_off,with-using:bpart],
   [Doer,does,$verb,some,Object,to,On,using,Instrument],
 [done_by(Action,Doer),
  pre(cntrls(Doer, Instrument),can_reach(Instrument, Object)),
  pre(position(Object,Off)),
  pre(~position(Object,On)),
  symetrically(opposite_values(On,Off)),
  post(~position(Object,Off)),
  post(position(Object,On)),
  end_of_list]):- On = on.


% %%%%%%%%%%%%%%
verb_undos(unlight,lit,bpart).
verb_undos(close,opened,bpart).
verb_undos(unlock,locked,key).
% %%%%%%%%%%%%%%
verb_frame1(Action,Unlock,
 [does-done_by:tAnimate,some-objectActedOn,with-using:Key],
 [Doer,does,$verb,some,Object,using,Instrument],
 [done_by(Action,Doer),
  pre(cntrls(Doer, Instrument),can_reach(Instrument, Object)),
  pre(status(Object,Locked)),
  post(~status(Object,Locked))]):- verb_undos(Unlock,Locked,Key).

% %%%%%%%%%%%%%%
verb_cantbe_causes(open,locked,opened).
% %%%%%%%%%%%%%%
verb_frame1(Action,Open,
   [does-done_by:tAnimate,some-objectActedOn,with-using:bpart],
   [Doer,does,$verb,some,Object,using,Instrument],
  [done_by(Action,Doer),
   pre(cntrls(Doer, Instrument),can_reach(Instrument, Object)),
   pre(~status(Object,Opened)),
   pre(~status(Object,Locked)),
    post(~status(Object,Locked)),
    post(status(Object,Opened)),
  end_of_list]):- verb_cantbe_causes(Open,Locked,Opened).

% %%%%%%%%%%%%%%
verb_undos_causes1(lock,opened,locked,key).
% %%%%%%%%%%%%%%
verb_frame1(Action,Lock,
 [does-done_by:tAnimate,some-objectActedOn,with-using:Key],
 [Doer,does,$verb,some,Object,using,Instrument],
 [done_by(Action,Doer),
  pre(cntrls(Doer, Instrument),can_reach(Instrument, Object)),
  pre(~status(Object,Locked)),
  post(~status(Object,StateOpened)),
  post(status(Object,Locked)),
  end_of_list]) :- 
  verb_undos_causes1(Lock,StateOpened,Locked,Key).

% %%%%%%%%%%%%%%
verb_tool_ends_ensures(burn,match,unflaming,burned).
verb_tool_ends_ensures(extinguish,extinguiser,flaming,unburned).
% %%%%%%%%%%%%%%
verb_frame1(Action,Burn,
 [does-done_by:tAnimate,some-objectActedOn,with-using:Match],
 [Doer,does,$verb,some,Object, with, Instrument],
 [done_by(Action,Doer),
  pre(cntrls(Doer, Instrument),can_reach(Instrument, Object)),
  symetrically(opposite_values(Unflaming, Flaming)),
   pre(status(Object,Unflaming)),
   post(~status(Object,Unflaming)),
   post(status(Object,Flaming)),
  symetrically(opposite_values(Burnt, Unburnt)),
   post(~status(Object,Unburnt)),             
   post(status(Object,Burnt)),
  end_of_list]):-
 verb_tool_ends_ensures(Burn,Match,Unflaming,Burnt).

   verbatum_anon(Verb):- member(Verb, [prolog, make, cls, mem, types, props, ls, debug, cd, pwd, 
 useragent, create, delprop, destroy, echo, halt, getprops, english,
 memory, model, path, properties, setprop, state, status, perceptq, help, threads,
 spy,nospy,call,
 rtrace, nortrace, 
 trace, notrace %, %whereami, whereis, whoami
 ]).


parse2object(List,Agent,M):- append(LList,[R],List),member(R,[(?),(.)]),!,parse2object(LList,Agent,M).
parse2object([am, i], Agent, M):- thought(inst(Agent), M), !.

parse2object([BE| List], Agent, M):- fail, quietly_talk_db([_,BE,is|_More]), parse2object(List,Agent,M),!.
parse2object([HAS| List], Agent, M):- fail, quietly_talk_db([_,have|HASHAVE]), member(HAS,HASHAVE), !, parse2object(List,Agent,M).
parse2object([Det| Type], TheThing, M):-
 (nth0(_N, [(unknown), the, thee, old, some, a], Det)), !,
 parse2object(Type, TheThing, M).

parse2object(Type, TheThing, M):-
 show_call(as1object(Type, TheThing, M)), !.



as1object([TheThing], Thing, M):- !, nonvar(TheThing), as1object(TheThing, Thing, M).
as1object(TheThing, Thing, _Mem):- atom(TheThing), atom_number(TheThing,Thing),!.
as1object(TheThing, Thing, M):- obj_props(M,Thing,Props),(same_word(TheThing,Thing)->true;(sub_term(Sub,Props),(atom(Sub);string(Sub)),same_word(TheThing,Sub))).
as1object(TheThing, Thing, _Mem):- \+ atom(TheThing),!, TheThing=Thing.
as1object(TheThing, Thing, M):- atom_of(inst, TheThing, Thing, M),!.
as1object(TheThing, Thing, M):- get_advstate(Mem2),Mem2\=M,as1object(TheThing, Thing, Mem2).
% as1object(Thing, Thing, _Mem).

to_string_lc(A,S):- var(A),!,freeze(A,to_string_lc(A,S)).
to_string_lc(S,L):- atomic(S), S\=[], !, string_lower(S,L).
to_string_lc(S,L):- catch(text_to_string(L,S),_,fail),!, string_lower(S,L).
to_string_lc(S,L):- is_list(S),!, maplist(to_string_lc,S,W),atomics_to_string(W,' ',L).
to_string_lc(A,S):- format(string(S),'~w',[A]).

same_word(T1,T2):- notrace((to_string_lc(T1,S1),to_string_lc(T2,S2),!,S1=S2)).
same_verb(Verb,Text):-  to_string_lc(Verb,LVerb),to_string_lc(Text,LText), atom_concat(LVerb,_,LText).

same_props(Props1,Props1):- !.
same_props(Props1,Props2):- each_prop(Props1,Prop1),each_prop(Props2,Prop2),same_prop(Prop1,Prop2).
each_prop(Props,Prop):- is_list(Props),!,member(PropsZ,Props),each_prop(PropsZ,Prop).
each_prop(PropC,Prop):- compound(PropC),PropC=Prop.


obj_props(M,Obj,Props):- var(M),!,get_advstate(Mem2),obj_props(Mem2,Obj,Props).
obj_props(M,Obj,Props):- nonvar(Obj),!,obj_props(M,Obj2,Props),Obj=@=Obj2.
obj_props(M,Obj,Props):- nonvar(Props),!,obj_props_v(M,Obj,Props2),same_props(Props,Props2).
obj_props(M,Obj,Props):- obj_props_v(M,Obj,Props).

obj_props_v(M,_,_):- \+ compound(M),!,fail.
obj_props_v(M,Obj,Props):- is_list(M),!,member(E,M),obj_props_v(E,Obj,Props).
obj_props_v(props(Obj,Props),Obj,Props):- !.
obj_props_v(percept_props(_,_,Obj,_,Props),Obj,Props):- !.
obj_props_v(Term,Obj,Props):- arg(_,Term,M),obj_props_v(M,Obj,Props).

same_prop(X,Y):- X=@=Y,X=Y.

args2logical(TheArgs, [Thing], M):- parse2object(TheArgs, Thing, M),!. % TheArgs\==[Thing],!.
args2logical(TheArgs, TheArgs, _M).
 
quietly_talk_db(L):- quietly(munl_call(talk_db(L))).

mu_is_kind(Thing,inst):- get_advstate(M), member(props(Thing,_),M).
mu_is_kind(Thing,type):- get_advstate(M), member(type_props(Thing,_),M).
%mu_is_kind(Thing,inst):- get_advstate(M), \+ member(type_props(Thing,_),M).

atom_of(Kind,TheThing,Thing,M):- sub_term_atom(Thing,M),mu_is_kind(Thing,Kind),TheThing==Thing,!.
atom_of(Kind,TheThing,Thing,M):- sub_term_atom(Thing,M),mu_is_kind(Thing,Kind),atom_concat(TheThing,_,Thing),!.
atom_of(Kind,TheThing,Thing,M):- sub_term_atom(Thing,M),mu_is_kind(Thing,Kind),atom_concat(_,TheThing,Thing),!.
atom_of(Kind,TheThing,Thing,M):- sub_term_atom(Thing,M),mu_is_kind(Thing,Kind),atom_contains(Thing,TheThing),!.


sub_term_atom(Term, TermO):- \+ compound(Term), !, atom(Term), TermO = Term.
sub_term_atom(Term, [Head|_]) :- nonvar(Head),
 sub_term_atom(Term, Head).
sub_term_atom(Term, [_|Tail]) :- !, nonvar(Tail),
 sub_term_atom(Term, Tail).
sub_term_atom(Term, T) :-
 \+ is_list(T),
 T =.. List,
 sub_term_atom(Term, List).



































% %%%%%%%%%%%%%%
% Movement
% %%%%%%%%%%%%%%

flee_run_escape(flee).
flee_run_escape(run).
flee_run_escape(escape).

% get [out,in,..] Object
parse_imperative_movement(Doer, [get, Prep, Object], goto_prep_obj(Doer, walk, Prep, Object), _Mem) :- preposition(spatial, Prep).
% n/s/e/w/u/d
parse_imperative_movement(Doer, [Dir], Logic, M):- maybe_compass_direction(Dir,Actual), !, must_mw1(txt2goto(Doer, walk, [Actual], Logic, M)).
% escape/flee/run .. 
parse_imperative_movement(Doer, [Escape|Info], Logic, M):- flee_run_escape(Escape), !, must_mw1(txt2goto(Doer, run, Info, Logic, M)).
% out/into
parse_imperative_movement(Doer, [Prep], Logic, M) :- preposition(spatial, Prep), !, must_mw1(txt2goto(Doer, walk, [Prep], Logic, M)).
% go .. 
parse_imperative_movement(Doer, [go|Info], Logic, M):- !, must_mw1(txt2goto(Doer, walk, Info, Logic, M)).
% outside
parse_imperative_movement(Doer, [ExitName], Logic, M) :- 
 in_agent_model(Doer, h(exit(ExitName), _, _), M), txt2goto(Doer, walk, [ExitName], Logic, M),!.
parse_imperative_movement(Doer, [ExitName], go_dir(Doer, walk, ExitName), M) :- 
  in_agent_model(Doer, h(exit(ExitName), _Place, _), M).


parse_imperative_movement(Doer, [get, Prep| More], Logic, M) :- preposition(spatial, Prep), !, must_mw1(txt2goto(Doer, walk, [Prep| More], Logic, M)).

% x shelf~1
% go on shelf~1

txt2goto(Doer, run, [], go_dir(Doer, run, escape), _Mem) :- !.
txt2goto(Doer, Walk,[to, Prep| More], Logic, M) :- !, txt2goto(Doer, Walk, [Prep| More], Logic, M).
txt2goto(Doer, Walk,[Alias| More], Logic, M) :- cmdalias(Alias,Dir), !, txt2goto(Doer, Walk,[Dir| More], Logic, M).

% go in kitchen
% go in car
txt2goto(Doer, Walk,[ Prep, Dest], goto_prep_obj(Doer, Walk, Prep, Where), M) :- 
 preposition(spatial, Prep),!,
 must_mw1(txt2place(Dest, Where, M)).

% go north
txt2goto(Doer, Walk,[ ExitName], go_dir(Doer, Walk, ExitName), M) :-
 in_agent_model(Doer, h(exit(ExitName), _, _), M).
% go escape
txt2goto(Doer, Walk,[ Dir], go_dir(Doer, Walk, Dir), _Mem) :- (compass_direction(Dir);Dir==escape),!.
txt2goto(Doer, Walk,[ Dir], go_dir(Doer, Walk, Dir), _Mem) :- (Dir=down;Dir==up),!.
% go [out,in,..] 
txt2goto(Doer, Walk,[ Prep], go_dir(Doer, Walk, Prep), _Mem) :- preposition(spatial, Prep).
% go kitchen
txt2goto(Doer, Walk, Dest, goto_loc(Doer, Walk, Where), M) :-
 txt2place(Dest, Where, M).


txt2place(List, Place, M):- is_list(List), parse2object(List,Object,M), txt2place(Object, Place, M),!.
txt2place(Dest, Place, M):- in_agent_model(advstate, h(_, _, Dest), M), Dest = Place.
txt2place(Dest, Place, M):- in_agent_model(advstate, h(_, Dest, _), M), Dest = Place.
txt2place(Dest, Place, M):- parse2object(Dest, Place, M).


end_of_file.

mu:  ?- xlisting(xGiveTheWord).
nlac(baseForm, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), "giver", 3338280).
nlac(baseForm, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), "giver", 4562556).
nlac(derivedUsingSuffix, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xEr_AgentTheSuffix, 3338267).
nlac(genTemplate, actGivingOfTypeFn, uU(xPhraseFnConstrained, uR(xPhraseFnBar1, xtNoun), uU(xConcatenatePhrasesFn, [uU(xHeadWordOfPhraseFn, uU(xWordFormFnConstrained, xtGerundiveNoun, xGiveTheWord)), uU(xPpPNpFn, xOfTheWord, uU(xParaphraseFnConstrained, nonSingularGeneric, 'ARG1'))])), 2595735).
nlac(genTemplate, agentSupportsAgentGeneric, uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG1'), uU(xHeadVerbForInitialSubjectFn, xGiveTheWord), uU(xPhraseFromStringFn, s("support", "to")), uU(xParaphraseFnNp, 'ARG2')]), 1255496).
nlac(genTemplate, dataTypeSpecifierOfArgumentDeclaration, uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG2'), uU(xHeadVerbForInitialSubjectFn, xGiveTheWord), uU(xNpDetNbarFnDefinite, uU(xPhraseFromStringFn, s("data", "type", "of", "the", "parameter", "declared", "in"))), uU(xParaphraseFnNp, 'ARG1')]), 3927707).
nlac(genTemplate, dataTypeSpecifierOfDeclaration, uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG2'), uU(xHeadVerbForInitialSubjectFn, xGiveTheWord), uU(xNpDetNbarFnDefinite, uU(xPhraseFromStringFn, s("data", "type", "of", "the", "expression", "declared", "by"))), uU(xParaphraseFnNp, 'ARG1')]), 3927705).
nlac(genTemplate, educationInFieldSufficientForActType, uU(xConcatenatePhrasesFn, [uU(xConcatenatePhrasesFn, [uU(xHeadWordOfPhraseFn, uU(xWordFormFnConstrained, gerund, xHaveTheWord)), uU(xNpDetNbarFnIndefinite, uU(xConcatenatePhrasesFn, [uU(xParaphraseFn, 'ARG1'), uU(xHeadWordOfPhraseFn, uU(xWordFormFnConstrained, singularGeneric, xEducateTheWord)), uU(xPpPNpFn, xInTheWord, uU(xParaphraseFnNp, 'ARG2'))]))]), uU(xHeadVerbForInitialSubjectFn, xGiveTheWord), uU(xPhraseFromStringFn, s("one", "the", "prerequisite", "information", "needed", "to")), uU(xParaphraseFnConstrained, infinitive, 'ARG3')]), 2808553).
nlac(genTemplate, gaveFundsTo, uU(xPhraseFnConstrained, xtNLSentence, uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG1'), uU(xHeadVerbForInitialSubjectFn, xHaveTheWord), uU(xWordFormFnConstrained, perfect, xGiveTheWord), uU(xWordFormFnConstrained, plural, xFundTheWord), uU(xPpPNpFn, xToTheWord, uU(xParaphraseFnNp, 'ARG2'))])), 1923227).
nlac(genTemplate, givee, uU(xPhraseFnTensedDefaultPast, 'ARG1', uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG2'), uU(xHeadVerbForInitialSubjectFn, xBeTheWord), uU(xWordFormFnConstrained, perfect, xGiveTheWord), uU(xWordFormFn, xSomethingTheWord), uU(xParaphraseFnPp, xDuringTheWord, 'ARG1')])), 1326005).
nlac(genTemplate, giver, uU(xPhraseFnTensedDefaultPast, 'ARG1', uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG2'), uU(xHeadVerbForInitialSubjectFn, xGiveTheWord), uU(xPhraseFromStringFn, "something"), uU(xPpPNpFn, xDuringTheWord, uU(xParaphraseFnNp, 'ARG1'))])), 1325837).
nlac(genTemplate, givesPreferentialTreatmentToEntityOfType, uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG1'), uU(xHeadVerbForInitialSubjectFn, xGiveTheWord), uU(xPhraseFromStringFn, s("preferential", "treatment", "to")), uU(xParaphraseFn, 'ARG2'), uU(xPhraseFromStringFn, s("compared", "to", "other", "instances", "of", "the", "class")), uU(xParaphraseFn, 'ARG3')]), 2990141).
nlac(genTemplate, givesPresentationTypeAtMeeting, uU(xPhraseFnConstrained, xtNLSentence, uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG1'), uU(xPhraseFnTensed, 'ARG2', uU(xHeadVerbForInitialSubjectFn, xGiveTheWord)), uU(xNpDetNbarFnIndefinite, uU(xParaphraseFn, 'ARG3')), uU(xPpPNpFn, xAtTheWord, uU(xParaphraseFn, 'ARG2'))])), 1428742).
nlac(genTemplate, givesSupportTo, uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG1'), uU(xHeadVerbForInitialSubjectFn, xGiveTheWord), uU(xWordFormFnConstrained, massNumber, xSupportTheWord), uU(xPpPNpFn, xToTheWord, uU(xParaphraseFnNp, 'ARG2'))]), 1648918).
nlac(genTemplate, objectGiven, uU(xPhraseFnTensedDefaultPast, 'ARG1', uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG2'), uU(xHeadVerbForInitialSubjectFn, xBeTheWord), uU(xWordFormFnConstrained, perfect, xGiveTheWord), uU(xPpPNpFn, xToTheWord, uU(xWordFormFn, xSomethingTheWord)), uU(xParaphraseFnPp, xDuringTheWord, 'ARG1')])), 1360265).
nlac(genTemplate, operationalTreeOfOpNumOfInstruction, uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG3'), uU(xHeadVerbForInitialSubjectFn, xGiveTheWord), uU(xNpDetNbarFnDefinite, uU(xPhraseFromStringFn, s("operational", "history", "of", "operand", "number"))), uU(xParaphraseFnNp, 'ARG2'), uU(xWordFormFnConstrained, nonPluralGeneric, xInTheWord), uU(xParaphraseFnNp, 'ARG1')]), 4621348).
nlac(genTemplate, pigments, uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG2'), uU(xHeadVerbForInitialSubjectFn, xGiveTheWord), uU(xParaphraseFnNp, 'ARG1'), uU(xPhraseFromStringFn, "pigment")]), 821335).
nlac(genTemplate, timeStampStringOfProgramActionRecord, uU(xConcatenatePhrasesFn, [uU(xParaphraseFnNp, 'ARG2'), uU(xHeadVerbForInitialSubjectFn, xGiveTheWord), uU(xNpDetNbarFnDefinite, uU(xPhraseFromStringFn, s("timestamp", "of"))), uU(xParaphraseFnNp, 'ARG1')]), 4744535).
nlac(isa, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), tIndividual, 3338270).
nlac(isa, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtDerivedWord, 3338268).
nlac(isa, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtEnglishWord, 3338275).
nlac(isa, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtLexicalWord, 3338269).
nlac(isa, xGiveTheWord, xtEnglishWord, 639002).
nlac(isa, xGiveTheWord, xtLexicalWord, 1133351).
nlac(morphologicallyDerivedFrom, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xGiveTheWord, 3338271).
nlac(posBaseForms, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtCountNoun, 3338272).
nlac(posBaseForms, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtCountNoun, 3338273).
nlac(posBaseForms, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtCountNoun, 4566788).
nlac(posBaseForms, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtNoun, 3338274).
nlac(posBaseForms, xGiveTheWord, xtVerb, 4559023).
nlac(posBaseForms, xGiveTheWord, xtVerb, 4562558).
nlac(posForms, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtCountNoun, 3338282).
nlac(posForms, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtCountNoun, 4570018).
nlac(posForms, xGiveTheWord, xtAdjectiveGradable, 2541643).
nlac(posForms, xGiveTheWord, xtAgentiveNoun, 638996).
nlac(posForms, xGiveTheWord, xtVerb, 4566787).
nlac(posForms, xGiveTheWord, xtVerb, 638994).
nlac(preferredBaseForm, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), "giver", 4559024).
nlac(preferredBaseForm, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), "giver", 4562559).

nlac(agentiveSg, xGiveTheWord, "giver", 638995).

nlac(baseForm, xGiveTheWord, "give", 3338279).
nlac(preferredBaseForm, xGiveTheWord, "give", 4561025).
nlac(infinitive, xGiveTheWord, "give", 4562557).
nlac(infinitive, xGiveTheWord, "give", 638997).
nlac(nonGradableAdjectiveForm, xGiveTheWord, "given", 2540248).
nlac(pastTenseUniversal, xGiveTheWord, "gave", 639000).
nlac(perfect, xGiveTheWord, "given", 638993).


nlac(quotedIsa, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtTermSuggestorExpertOnlyTerm, 3338276).
nlac(quotedIsa, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtTermSuggestorExpertOnlyTerm, 3338277).
nlac(quotedIsa, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), xtTermSuggestorExpertOnlyTerm, 3338278).
nlac(singular, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), "giver", 3338281).
nlac(singular, nartR(xWordWithSuffixFn, xGiveTheWord, xEr_AgentTheSuffix), "giver", 4566786).
nlac(compoundSemTransCanonical, xGiveTheWord, uU(vTheListFn, ["an", "alarm", "signal"]), xtMainVerb, xIntransitiveVerbFrame, actGivingAnAlarmSignal, uU(vTheListFn, [performedBy]), 2898338).
nlac(hasVerbAsMember, xGiveVerbClass, xGiveTheWord, 0, 698892).
nlac(lightVerbTransitivesemtrans, xGiveTheWord, actBirthEvent, and(isa('ACTION', actBirthEvent), birthParent('ACTION', 'SUBJECT')), 310818).
nlac(lightVerbTransitivesemtrans, xGiveTheWord, actSpeaking, and(isa('ACTION', actPublicSpeaking), performedBy('ACTION', 'SUBJECT')), 310815).
nlac(participatesInAlternation, xGiveTheWord, 0, xtDoubleObjectAlternation, 639001).
nlac(compoundSemTrans, xGiveTheWord, uU(vTheListFn, ["an", "alarm", "signal"]), xtMainVerb, xIntransitiveVerbFrame, and(isa('ACTION', actGivingAnAlarmSignal), performedBy('ACTION', 'SUBJECT')), 2898393).
nlac(compoundSemTrans, xGiveTheWord, uU(vTheListFn, ["medication"]), xtVerb, xDitransitiveNPNPFrame, and(isa('ACTION', actAdministeringADrug), performedBy('ACTION', 'SUBJECT')), 723758).
nlac(compoundSemTrans, xGiveTheWord, uU(vTheListFn, ["off"]), xtVerb, xTransitiveNPFrame, and(isa('ACTION', eventEmittingAnObject), objectEmitted('ACTION', 'OBJECT'), emitter('ACTION', 'SUBJECT')), 723789).
nlac(headMedialString, uU(vTheListFn, ["Al", "Montaz"]), xGiveTheWord, uU(vTheListFn, ["Ahmed", "Ressam", "money"]), xtVerb, iAlMontazGivesAhmedRessamMoney, 888588).
nlac(headMedialString, uU(vTheListFn, ["the", "organisation", "will"]), xGiveTheWord, uU(vTheListFn, ["you", "advance", "notice", "of", "collection", "dates", "and", "amounts,", "whether", "you", "set", "up", "a", "Direct", "Debit", "by", "the", "telephone,", "Internet", "or", "completed", "a", "paper", "Direct", "Debit", "Instruction"]), xtVerb, nartR(stateNthSubSituationTypeOfTypeFn, actSettingUpADirectDebit, actInforming, 2), 1725165).
nlac(verbSemTransCanonical, xGiveTheWord, 4, xTransitiveNPFrame, actYieldingMakingSomethingAvailable, uU(vTheListFn, [performedBy, objectActedOn]), 1896611).
nlac(agentiveNounSemTrans, xGiveTheWord, 0, xGenitiveFrame, and(objectGiven(A, 'POSSESSOR'), isa(A, actGivingSomething), fromPossessor(A, 'NOUN')), 1360226).
nlac(agentiveNounSemTrans, xGiveTheWord, 0, xRegularNounFrame, fromPossessor(_, 'NOUN'), 701451).
nlac(agentiveNounSemTrans, xGiveTheWord, 1, xGenitiveFrame, and(objectGiven(A, 'POSSESSOR'), isa(A, eventTransferringPossession), fromPossessor(A, 'NOUN')), 1360222).
nlac(assertTemplateReln, xtSTemplate, educationInFieldSufficientForActType, uU(vNLPatternListFn, [uU(tSetOfNLPatternExactFn, ["having"]), uU(tSetOfNLPatternExactFn, ["a"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), uU(tSetOfNLPatternExactFn, ["in"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternExactFn, ["one"]), uU(tSetOfNLPatternExactFn, ["the"]), uU(tSetOfNLPatternWordFn, iPrerequisiteTheWord, xtCountNoun), uU(tSetOfNLPatternWordFn, xInformTheWord, xtMassNoun), uU(tSetOfNLPatternExactFn, ["needed"]), uU(tSetOfNLPatternExactFn, ["to"]), uU(tSetOfNLPatternExactFn, ["perform"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3')]), educationInFieldSufficientForActType('ARG1', 'ARG2', 'ARG3'), 2808438).
nlac(assertTemplateReln, xtSTemplate, evaluationsReceived, uU(vNLPatternListFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternExactFn, ["the"]), uU(tSetOfRequireOneFn, ["performer", "performers"]), uU(tSetOfNLPatternExactFn, ["of"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'EVENT'), uU(tSetOfNLPatternExactFn, ["an", "evaluation", "of"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'VAL'), uU(tSetOfNLPatternExactFn, ["for", "how"]), uU(tSetOfRequireOneFn, ["he", "she", "they"]), uU(tSetOfNLPatternExactFn, ["satisfied"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'CRITERIA')]), evaluationsReceived('EVENT', iTheSentenceSubject, 'CRITERIA', 'VAL'), 1388573).
nlac(assertTemplateReln, xtSTemplate, fireSupportToOperation, uU(vNLPatternListFn, [uU(tSetOfNLPatternExactFn, ["during"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), iTemplateCommaMarker, uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["fire", "support"])]), fireSupportToOperation('ARG1', 'ARG2'), 1393531).
nlac(assertTemplateReln, xtSTemplate, fromPossessor, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, ["In", "During", uU(vWordSequenceFn, ["as", "a", "result", "of"])]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), uU(tSetOfOptionalOneFn, [iTemplateCommaMarker]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xLoseTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xSurrenderTheWord, xtVerb), uU(vWordSequenceFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), "up"])]), uU(tSetOfOptionalOneFn, ["his", "her", "their", "some"]), uU(tSetOfNLPatternExactFn, ["rights", "to"]), uU(tSetOfRequireOneFn, ["something", uU(vWordSequenceFn, ["some", "things"]), uU(vWordSequenceFn, ["some", "stuff"]), uU(vWordSequenceFn, ["some", "objects"])])]), fromPossessor('ARG1', 'ARG2'), 1396360).
nlac(assertTemplateReln, xtSTemplate, giver, uU(vNLPatternListFn, [uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternExactFn, ["something", "during"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1')]), giver('ARG1', 'ARG2'), 1389880).
nlac(assertTemplateReln, xtSTemplate, implementProtectsAgainst, uU(vNLPatternListFn, [uU(tSetOfOptionalSomeFn, ["wearing", "having", "using"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'IMPLEMENT'), uU(tSetOfOptionalSomeFn, ["on"]), uU(tSetOfOptionalSomeFn, ["can", "may", "should", "could"]), uU(tSetOfOptionalSomeFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xLendTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xAffordTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xOfferTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb)]), uU(tSetOfOptionalSomeFn, ["you", "one", "an", "the", "individual"]), uU(tSetOfNLPatternWordFn, xProtectTheWord, xtNLWordForm), uU(tSetOfOptionalSomeFn, ["you", "one", "an", "the", "individual"]), uU(tSetOfRequireSomeFn, ["from", "against"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'AGAINST')]), implementProtectsAgainst('IMPLEMENT', 'AGAINST'), 1394679).
nlac(assertTemplateReln, xtSTemplate, interviewer, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, ["In", "During"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), uU(tSetOfOptionalOneFn, ["TemplateCommaMarker"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfOptionalOneFn, [uU(vWordSequenceFn, [uU(tSetOfNLPatternWordFn, xBeTheWord, xtVerb), "the", "one", "who"]), uU(vWordSequenceFn, [uU(tSetOfNLPatternWordFn, xBeTheWord, xtVerb), "the", "person", "who"])]), uU(tSetOfOptionalOneFn, [uU(vWordSequenceFn, [uU(tSetOfNLPatternWordFn, xGetTheWord, xtVerb), "to"])]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xConductTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xRunTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xDoTheWord, xtVerb)]), uU(tSetOfRequireOneFn, ["an", "the"]), uU(tSetOfOptionalOneFn, ["actual"]), uU(tSetOfRequireOneFn, ["interview", "interviewing"])]), interviewer('ARG1', 'ARG2'), 1396255).
nlac(assertTemplateReln, xtSTemplate, providesCoverToFrom, uU(vNLPatternListFn, [uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfOptionalOneFn, ["some"]), uU(tSetOfNLPatternExactFn, ["cover", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfNLPatternExactFn, ["from"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3')]), providesCoverToFrom('ARG1', 'ARG2', 'ARG3'), 1388690).
nlac(assertTemplateReln, xtSTemplate, providingCoverToInCOA, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, ["in", "for"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), uU(tSetOfOptionalOneFn, [iTemplateCommaMarker]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xHelpTheWord, xtVerb)]), uU(tSetOfOptionalSomeFn, ["some", "measure", "any", "amount", "of"]), uU(tSetOfNLPatternExactFn, ["cover", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3')]), providingCoverToInCOA('ARG1', 'ARG2', 'ARG3'), 1395112).
nlac(assertTemplateReln, xtSTemplate, resultsFromTranscriptionOf, uU(vNLPatternListFn, [uU(tSetOfOptionalOneFn, ["the"]), uU(tSetOfOptionalOneFn, ["chemical", uU(vWordSequenceFn, ["process", "of"])]), uU(tSetOfRequireOneFn, ["transcription", "transcribing"]), uU(tSetOfOptionalOneFn, ["of"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xYieldTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xProduceTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xResultTheWord, xtVerb)]), uU(tSetOfOptionalOneFn, ["in"]), uU(tSetOfOptionalOneFn, [uU(vWordSequenceFn, ["the", "generation", "of"]), uU(vWordSequenceFn, ["the", "production", "of"]), uU(vWordSequenceFn, ["the", "expression", "of"])]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1')]), resultsFromTranscriptionOf('ARG1', 'ARG2'), 1396266).
nlac(assertTemplateReln, xtSTemplate, warner, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, ["in", "during"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'WARN'), uU(tSetOfOptionalOneFn, [iTemplateCommaMarker]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ALARM'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xMakeTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xIssueTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xSoundTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfRequireOneFn, ["an", "a", "the"]), uU(tSetOfRequireOneFn, ["alarm", "sound", "noise", "warned"])]), warner('WARN', 'ALARM'), 1391800).
nlac(assertTemplateReln, xtVPTemplate, agentSupportsAgentGeneric, uU(vNLPatternListFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternExactFn, ["support", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2')]), agentSupportsAgentGeneric(iTheSentenceSubject, 'ARG2'), 1393384).
nlac(assertTemplateReln, xtVPTemplate, fairCoverToFromDirectFireFrom, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xHaveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["fair", "cover", "from", "direct", "fire", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfNLPatternExactFn, ["from"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3')]), fairCoverToFromDirectFireFrom(iTheSentenceSubject, 'ARG2', 'ARG3'), 1390690).
nlac(assertTemplateReln, xtVPTemplate, fairCoverToFromIndirectFireFrom, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xHaveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["fair", "cover", "from", "indirect", "fire", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfNLPatternExactFn, ["from"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3')]), fairCoverToFromIndirectFireFrom(iTheSentenceSubject, 'ARG2', 'ARG3'), 1387129).
nlac(assertTemplateReln, xtVPTemplate, fireSupportToOperation, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["fire", "support"]), uU(tSetOfRequireOneFn, ["for", "during", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1')]), fireSupportToOperation('ARG1', iTheSentenceSubject), 1393031).
nlac(assertTemplateReln, xtVPTemplate, fromPossessor, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xLoseTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xSurrenderTheWord, xtVerb), uU(vWordSequenceFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), "up"])]), uU(tSetOfOptionalOneFn, ["his", "her", "their", "some"]), uU(tSetOfNLPatternExactFn, ["rights", "to"]), uU(tSetOfRequireOneFn, ["something", uU(vWordSequenceFn, ["some", "things"]), uU(vWordSequenceFn, ["some", "stuff"]), uU(vWordSequenceFn, ["some", "objects"])]), uU(tSetOfRequireOneFn, ["in", "during", uU(vWordSequenceFn, ["as", "a", "result", "of"])]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1')]), fromPossessor('ARG1', iTheSentenceSubject), 1389097).
nlac(assertTemplateReln, xtVPTemplate, goodCoverToFromDirectFireFrom, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xHaveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["good", "cover", "from", "direct", "fire", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfNLPatternExactFn, ["from"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3')]), goodCoverToFromDirectFireFrom(iTheSentenceSubject, 'ARG2', 'ARG3'), 1390450).
nlac(assertTemplateReln, xtVPTemplate, goodCoverToFromIndirectFireFrom, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xHaveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["good", "cover", "from", "indirect", "fire", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfNLPatternExactFn, ["from"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3')]), goodCoverToFromIndirectFireFrom(iTheSentenceSubject, 'ARG2', 'ARG3'), 1387366).
nlac(assertTemplateReln, xtVPTemplate, implementProtectsAgainst, uU(vNLPatternListFn, [uU(tSetOfOptionalSomeFn, ["can", "may", "should", "could"]), uU(tSetOfOptionalSomeFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xLendTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xAffordTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xOfferTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb)]), uU(tSetOfOptionalSomeFn, ["you", "one", "an", "the", "individual"]), uU(tSetOfNLPatternWordFn, xProtectTheWord, xtNLWordForm), uU(tSetOfOptionalSomeFn, ["you", "one", "an", "the", "individual"]), uU(tSetOfRequireSomeFn, ["from", "against"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'AGAINST')]), implementProtectsAgainst(iTheSentenceSubject, 'AGAINST'), 1395831).
nlac(assertTemplateReln, xtVPTemplate, mayAuthorize, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, ["may", "might", "can", "could"]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xAuthorizeTheWord, xtVerb), uU(vWordSequenceFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), "permission", "to"]), uU(vWordSequenceFn, [uU(tSetOfNLPatternWordFn, xGrantTheWord, xtVerb), "permission", "to"]), uU(tSetOfNLPatternWordFn, xPermitTheWord, xtVerb)]), uU(xNLPatternTemplateFn, xtNPTemplate, 'VAR2'), uU(tSetOfNLPatternExactFn, ["to"]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xDoTheWord, xtDoAux), uU(tSetOfNLPatternWordFn, xPerformTheWord, xtVerb)]), uU(xNLPatternTemplateFn, xtNPTemplate, 'VAR3')]), mayAuthorize(iTheSentenceSubject, 'VAR2', 'VAR3'), 1391782).
nlac(assertTemplateReln, xtVPTemplate, partialStructuralExplanation, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xBeTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["a"]), uU(tSetOfOptionalOneFn, ["partial"]), uU(tSetOfNLPatternExactFn, ["structural", "explanation", "for"]), uU(tSetOfRequireOneFn, ["how", "why", "that", uU(vWordSequenceFn, ["the", "fact", "that"]), uU(vWordSequenceFn, ["why", "it", "is", "that"])]), uU(xNLPatternTemplateFn, xtSTemplate, 'S2')]), partialStructuralExplanation(iTheSentenceSubject, 'S2'), 1390295).
nlac(assertTemplateReln, xtVPTemplate, poorCoverToFromDirectFireFrom, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xHaveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["poor", "cover", "from", "direct", "fire", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfRequireOneFn, ["by", "of", "from"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3')]), poorCoverToFromDirectFireFrom(iTheSentenceSubject, 'ARG2', 'ARG3'), 1394511).
nlac(assertTemplateReln, xtVPTemplate, poorCoverToFromIndirectFireFrom, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xHaveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["poor", "cover", "from", "indirect", "fire", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2'), uU(tSetOfNLPatternExactFn, ["from"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3')]), poorCoverToFromIndirectFireFrom(iTheSentenceSubject, 'ARG2', 'ARG3'), 1388532).
nlac(assertTemplateReln, xtVPTemplate, prescribedDosageForPatient, uU(vNLPatternListFn, [iTemplateSingleQuoteMarker, uU(tSetOfNLPatternExactFn, ["s"]), uU(tSetOfOptionalOneFn, ["prescribed"]), uU(tSetOfRequireOneFn, ["dosage", "amount", "quantity"]), uU(tSetOfOptionalSomeFn, ["of", "medicine"]), uU(tSetOfNLPatternExactFn, ["for", "the"]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xDrugTheWord, xtCountNoun), uU(tSetOfNLPatternWordFn, xPharmaceuticalTheWord, xtCountNoun), uU(tSetOfNLPatternWordFn, xMedicineTheWord, xtCountNoun), uU(tSetOfNLPatternWordFn, xSubstanceTheWord, xtCountNoun)]), uU(xNLPatternTemplateFn, xtNPTemplate, 'VAR2'), uU(tSetOfNLPatternWordFn, xBeTheWord, xtVerb), uU(tSetOfOptionalOneFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfOptionalSomeFn, ["at", "the", "rate", "on", "a", "schedule", "of"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'VAR3')]), prescribedDosageForPatient(iTheSentenceSubject, 'VAR2', 'VAR3'), 1391183).
nlac(assertTemplateReln, xtVPTemplate, protectsAgainstType, uU(vNLPatternListFn, [uU(tSetOfOptionalSomeFn, ["may", "can", "could", "might", "should", "often", "will", "does"]), uU(tSetOfOptionalSomeFn, [uU(tSetOfNLPatternWordFn, xBeTheWord, xtBeAux), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xLendTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xOfferTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xAffordTheWord, xtVerb)]), uU(tSetOfOptionalSomeFn, ["used", "to", "for", "in", "a", "an", "one", "way", "means", "method", "you", "the", "individual", uU(tSetOfNLPatternWordFn, nartR(xWordWithSuffixFn, xEffectTheWord, xIveTheSuffix), xtNLWordForm), "provide", "prevent", "solid", "strong", "good"]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProtectTheWord, xtNLWordForm), uU(tSetOfNLPatternWordFn, xDefendTheWord, xtNLWordForm)]), uU(tSetOfOptionalSomeFn, ["you", "one", "an", "the", "individual"]), uU(tSetOfRequireSomeFn, ["from", "against"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ATTACK')]), protectsAgainstType(iTheSentenceSubject, 'ATTACK'), 2941363).
nlac(assertTemplateReln, xtVPTemplate, providingCoverToInCOA, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xHelpTheWord, xtVerb)]), uU(tSetOfOptionalSomeFn, ["some", "measure", "of", "any", "amount"]), uU(tSetOfNLPatternExactFn, ["cover", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3'), uU(tSetOfRequireOneFn, ["in", uU(vWordSequenceFn, ["for", "the"])]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1')]), providingCoverToInCOA('ARG1', iTheSentenceSubject, 'ARG3'), 1394282).
nlac(assertTemplateReln, xtVPTemplate, supportsForceGeneral, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["general", "support", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2')]), supportsForceGeneral(iTheSentenceSubject, 'ARG2'), 1390594).
nlac(assertTemplateReln, xtVPTemplate, supportsUnitDirect, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["direct", "support", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2')]), supportsUnitDirect(iTheSentenceSubject, 'ARG2'), 1392523).
nlac(assertTemplateReln, xtVPTemplate, warner, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xIssueTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xSoundTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xMakeTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfRequireOneFn, ["an", "a", "the"]), uU(tSetOfRequireOneFn, ["sound", "alarm", "noise", "warned"]), uU(tSetOfRequireOneFn, ["in", "during"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'WARN')]), warner('WARN', iTheSentenceSubject), 1395307).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["a", "birthday", "present"]), xtVerb, nartR(tColOfSubcollectionOfWithRelationToTypeFn, actGiftGiving, objectGiven, tBirthdayPresent), 4531425).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["a", "lecture", "on", "a", "scientific", "topic"]), xtVerb, actScientificLecturing, 5078633).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["an", "alarm", "signal"]), xtMainVerb, actGivingAnAlarmSignal, 2898389).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["an", "organism", "water"]), xtVerb, actMakingWaterAvailableToOrganism, 1588709).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["a", "speech", "as", "part", "of", "an", "election", "campaign"]), xtVerb, actDeliveringAStumpSpeech, 2675701).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["a", "stump", "speech"]), xtVerb, actDeliveringAStumpSpeech, 2675702).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["away", "the", "bride"]), xtVerb, actCeremonialGivingAwayOfTheBride, 4545776).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["directions"]), xtVerb, actGivingSomeoneDirections, 4898795).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["economic", "aid"]), xtVerb, actGivingEconomicAid, 5078494).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["forth"]), xtVerb, eventExhalingSomeGasOrOdor, 2784617).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["head"]), xtVerb, actCunnilingus, 473713).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["humanitarian", "aid"]), xtVerb, actGivingHumanitarianAid, 5078441).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["off"]), xtVerb, eventEmission, 1915025).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["out"]), xtVerb, eventEmission, 1915026).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, [s("a", "demonstration")]), xtVerb, actGivingADemonstration, 4755187).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, [s("a", "speech")]), xtVerb, actPoliticalOratory, 5577668).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["something", "water"]), xtVerb, actMakingWaterAvailableToOrganism, 1588706).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, [s("someone", "directions", "to", "a", "restroom")]), xtVerb, actGivingSomeoneDirectionsToARestroom, 5005140).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["the", "bride", "away"]), xtVerb, actCeremonialGivingAwayOfTheBride, 4545777).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["the", "solution", "to", "an", "expression", "comparison", "problem"]), xtGerundiveNoun, nartR(actProvidingTheAnswerToMathProblemOfTypeFn, cwExpressionComparisonProblem), 5653700).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["the", "solution", "to", "an", "expression", "comparison", "problem"]), xtVerb, nartR(actProvidingTheAnswerToMathProblemOfTypeFn, cwExpressionComparisonProblem), 5653701).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["the", "solution", "to", "a", "one-variable", "linear", "equation"]), xtGerundiveNoun, nartR(actProvidingTheAnswerToMathProblemOfTypeFn, cwSolveLinearEquationOfOneVariableProblem), 5616974).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["the", "solution", "to", "a", "one-variable", "linear", "equation"]), xtVerb, nartR(actProvidingTheAnswerToMathProblemOfTypeFn, cwSolveLinearEquationOfOneVariableProblem), 5616975).
nlac(compoundString, xGiveTheWord, uU(vTheListFn, ["up"]), xtVerb, eventSparingTransferringPossession, 2066894).
nlac(denotationRelatedTo, xGiveTheWord, xtAgentiveNoun, 0, fromPossessor, 690404).
nlac(denotationRelatedTo, xGiveTheWord, xtVerb, 2, outputsCreated, 690844).
nlac(denotation, xGiveTheWord, xtAgentiveNoun, 0, giver, 782009).
nlac(denotation, xGiveTheWord, xtVerb, 0, actGivingSomething, 638999).
nlac(denotation, xGiveTheWord, xtVerb, 12, givesSupportToAgentOfCategory, 2803105).
nlac(denotation, xGiveTheWord, xtVerb, 1, eventTransferringPossession, 897295).
nlac(denotation, xGiveTheWord, xtVerb, 3, actGivingOfferingCommunicationAct, 1859844).
nlac(denotation, xGiveTheWord, xtVerb, 4, actYieldingMakingSomethingAvailable, 1896610).
nlac(multiWordString, uU(vTheListFn, ["gift"]), xGiveTheWord, xtGerundiveNoun, actGiftGiving, 756040).
nlac(multiWordString, uU(vTheListFn, ["name"]), xGiveTheWord, xtVerb, actNamingSomething, 5048186).
nlac(nounSemTrans, xGiveTheWord, 78, xGenitiveFrame, and(isa('NOUN', actYieldingMakingSomethingAvailable), objectActedOn('NOUN', 'POSSESSOR')), 1928244).
nlac(queryTemplateReln, xtQuestionTemplate, definitionalDisplaySentence, uU(vNLPatternListFn, [uU(tSetOfOptionalOneFn, [s("can", "you")]), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfRequireOneFn, [uU(vWordSequenceFn, ["give", "me", "information", "about"]), uU(vWordSequenceFn, ["give", "me", "information", "on"])]), uU(xNLPatternTemplateFn, xtNPTemplate, 'THING'), uU(tSetOfOptionalOneFn, [iTemplateQuestionMarkMarker])]), definitionalDisplaySentence('THING', _), 1632333).
nlac(queryTemplateReln, xtQuestionTemplate, fromPossessor, uU(vNLPatternListFn, [uU(tSetOfNLPatternWordFn, xDoTheWord, xtDoAux), uU(xNLPatternTemplateFn, xtNPTemplate, 'SUBJECT'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xLoseTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xSurrenderTheWord, xtVerb), uU(vWordSequenceFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), "up"])]), uU(tSetOfOptionalOneFn, ["his", "her", "their", "some"]), uU(tSetOfNLPatternExactFn, ["rights", "to"]), uU(tSetOfRequireOneFn, ["something", uU(vWordSequenceFn, ["some", "things"]), uU(vWordSequenceFn, ["some", "stuff"]), uU(vWordSequenceFn, ["some", "objects"])]), uU(tSetOfRequireOneFn, ["in", "during", uU(vWordSequenceFn, ["as", "a", "result", "of"])]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), uU(tSetOfOptionalOneFn, [iTemplateQuestionMarkMarker])]), fromPossessor('ARG1', 'SUBJECT'), 1394479).
nlac(queryTemplateReln, xtQuestionTemplate, fromPossessor, uU(vNLPatternListFn, [uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), uU(tSetOfNLPatternWordFn, xDoTheWord, xtDoAux), uU(xNLPatternTemplateFn, xtNPTemplate, 'SUBJECT'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xLoseTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xSurrenderTheWord, xtVerb), uU(vWordSequenceFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), "up"])]), uU(tSetOfOptionalOneFn, ["his", "her", "their", "some"]), uU(tSetOfNLPatternExactFn, ["rights", "to"]), uU(tSetOfRequireOneFn, ["something", uU(vWordSequenceFn, ["some", "things"]), uU(vWordSequenceFn, ["some", "stuff"]), uU(vWordSequenceFn, ["some", "objects"])]), uU(tSetOfRequireOneFn, ["in", "during", uU(vWordSequenceFn, ["as", "a", "result", "of"])]), uU(tSetOfOptionalOneFn, [iTemplateQuestionMarkMarker])]), fromPossessor('ARG1', 'SUBJECT'), 1391817).
nlac(queryTemplateReln, xtQuestionTemplate, givesSupportToAgentOfCategory, uU(vNLPatternListFn, [uU(tSetOfNLPatternWordFn, xBeTheWord, xtBeAux), uU(xNLPatternTemplateFn, xtNPTemplate, 'ORG'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(xNLPatternTemplateFn, xtNPTemplate, 'SUPPORTTYPE'), uU(tSetOfRequireOneFn, ["to", "for"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'AGT')]), givesSupportToAgentOfCategory('ORG', 'AGT', 'SUPPORTTYPE'), 1392982).
nlac(queryTemplateReln, xtQuestionTemplate, implementProtectsAgainst, uU(vNLPatternListFn, [uU(xNLPatternTemplateFn, xtNPTemplate, 'AGAINST'), uU(tSetOfOptionalSomeFn, ["can", "may", "should", "could"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'SUBJECT'), uU(tSetOfOptionalSomeFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xLendTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xAffordTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xOfferTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb)]), uU(tSetOfOptionalSomeFn, ["you", "one", "an", "the", "individual"]), uU(tSetOfNLPatternWordFn, xProtectTheWord, xtNLWordForm), uU(tSetOfOptionalSomeFn, ["you", "one", "an", "the", "individual"]), uU(tSetOfRequireSomeFn, ["from", "against"]), uU(tSetOfOptionalOneFn, [iTemplateQuestionMarkMarker])]), implementProtectsAgainst('SUBJECT', 'AGAINST'), 1392292).
nlac(queryTemplateReln, xtQuestionTemplate, providingCoverToInCOA, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, ["in", "for"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), iTemplateCommaMarker, uU(tSetOfNLPatternExactFn, ["what"]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xHelpTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["cover", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG3')]), providingCoverToInCOA('ARG1', _, 'ARG3'), 1390089).
nlac(queryTemplateReln, xtQuestionTemplate, supportsForceGeneral, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, ["who", "what"]), uU(tSetOfNLPatternWordFn, xDoTheWord, xtDoAux), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["general", "support", "to"])]), supportsForceGeneral('ARG1', 'ARG2'), 1392976).
nlac(queryTemplateReln, xtQuestionTemplate, supportsForceGeneral, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, ["who", "what"]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["general", "support", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2')]), supportsForceGeneral(_, 'ARG2'), 1389351).
nlac(queryTemplateReln, xtQuestionTemplate, supportsUnitDirect, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, ["who", "what"]), uU(tSetOfNLPatternWordFn, xDoTheWord, xtDoAux), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG1'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["direct", "support", "to"])]), supportsUnitDirect('ARG1', 'ARG2'), 1391860).
nlac(queryTemplateReln, xtQuestionTemplate, supportsUnitDirect, uU(vNLPatternListFn, [uU(tSetOfRequireOneFn, ["who", "what"]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["direct", "support", "to"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'ARG2')]), supportsUnitDirect(_, 'ARG2'), 1393830).
nlac(queryTemplateReln, xtQuestionTemplate, warner, uU(vNLPatternListFn, [uU(tSetOfNLPatternWordFn, xDoTheWord, xtDoAux), uU(xNLPatternTemplateFn, xtNPTemplate, 'SUBJECT'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xIssueTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xSoundTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfNLPatternExactFn, ["the", "warned"]), uU(tSetOfRequireOneFn, ["in", "during"]), uU(xNLPatternTemplateFn, xtNPTemplate, 'WARN'), uU(tSetOfOptionalOneFn, [iTemplateQuestionMarkMarker])]), warner('WARN', 'SUBJECT'), 1389224).
nlac(queryTemplateReln, xtQuestionTemplate, warner, uU(vNLPatternListFn, [uU(xNLPatternTemplateFn, xtNPTemplate, 'WARN'), uU(tSetOfNLPatternWordFn, xDoTheWord, xtDoAux), uU(xNLPatternTemplateFn, xtNPTemplate, 'SUBJECT'), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xIssueTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xSoundTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xMakeTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb)]), uU(tSetOfRequireOneFn, ["an", "a", "the"]), uU(tSetOfRequireOneFn, ["sound", "alarm", "noise", "warned"]), uU(tSetOfRequireOneFn, ["in", "during"]), uU(tSetOfOptionalOneFn, [iTemplateQuestionMarkMarker])]), warner('WARN', 'SUBJECT'), 1387475).
nlac(queryTemplateReln, xtSTemplate, definitionalDisplaySentence, uU(vNLPatternListFn, [uU(tSetOfOptionalOneFn, [uU(tSetOfNLPatternExactFn, ["please"])]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xGiveTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xProvideTheWord, xtVerb), uU(tSetOfNLPatternWordFn, xTellTheWord, xtVerb)]), uU(tSetOfOptionalOneFn, [uU(tSetOfNLPatternExactFn, ["to", "me"]), uU(tSetOfNLPatternExactFn, ["me"]), uU(tSetOfNLPatternExactFn, ["me", "with"])]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternExactFn, ["a"]), uU(tSetOfNLPatternExactFn, ["the"]), uU(tSetOfNLPatternExactFn, ["an"])]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternWordFn, xDefineTheWord, xtCountNoun), uU(tSetOfNLPatternWordFn, xMeanTheWord, xtCountNoun)]), uU(tSetOfRequireOneFn, [uU(tSetOfNLPatternExactFn, ["of"]), uU(tSetOfNLPatternExactFn, ["for"])]), uU(tSetOfOptionalOneFn, [uU(tSetOfNLPatternExactFn, ["a"]), uU(tSetOfNLPatternExactFn, ["an"])]), uU(xNLPatternTemplateFn, xtNBarTemplate, 'THING'), uU(tSetOfOptionalOneFn, [iTemplatePeriodMarker])]), definitionalDisplaySentence('THING', _), 1632324).
nlac(subcatFrame, xGiveTheWord, xtAgentiveNoun, 0, xGenitiveFrame, 1790709).
nlac(subcatFrame, xGiveTheWord, xtAgentiveNoun, 0, xRegularNounFrame, 1790728).
nlac(subcatFrame, xGiveTheWord, xtAgentiveNoun, 1, xGenitiveFrame, 1790733).
nlac(subcatFrame, xGiveTheWord, xtCountNoun, 78, xGenitiveFrame, 1929125).
nlac(subcatFrame, xGiveTheWord, xtVerb, 0, nartR(xPPCompFrameFn, ttDitransitivePPFrameType, xToTheWord), 764623).
nlac(subcatFrame, xGiveTheWord, xtVerb, 0, nartR(xPPCompFrameFn, ttTransitivePPFrameType, xOffTheWord), 765162).
nlac(subcatFrame, xGiveTheWord, xtVerb, 0, xDitransitiveNPNPFrame, 638998).
nlac(subcatFrame, xGiveTheWord, xtVerb, 0, xTransitiveNPFrame, 638992).
nlac(subcatFrame, xGiveTheWord, xtVerb, 1, xDitransitiveNPNPFrame, 638990).
nlac(subcatFrame, xGiveTheWord, xtVerb, 1, xTransitiveNPFrame, 638991).
nlac(subcatFrame, xGiveTheWord, xtVerb, 4, nartR(xPPCompFrameFn, ttDitransitivePPFrameType, xForTheWord), 3309535).
nlac(subcatFrame, xGiveTheWord, xtVerb, 4, nartR(xPPCompFrameFn, ttDitransitivePPFrameType, xToTheWord), 3309257).
nlac(subcatFrame, xGiveTheWord, xtVerb, 4, xTransitiveNPFrame, 1896613).
nlac(verbSemTrans, xGiveTheWord, 0, nartR(xPPCompFrameFn, ttDitransitivePPFrameType, xToTheWord), and(objectGiven('ACTION', 'OBJECT'), isa('ACTION', actGivingSomething), giver('ACTION', 'SUBJECT'), givee('ACTION', 'OBLIQUE-OBJECT')), 1360228).
nlac(verbSemTrans, xGiveTheWord, 0, nartR(xPPCompFrameFn, ttTransitivePPFrameType, xOffTheWord), and(isa('ACTION', eventEmittingAnObject), objectEmitted('ACTION', 'OBLIQUE-OBJECT'), emitter('ACTION', 'SUBJECT')), 764838).
nlac(verbSemTrans, xGiveTheWord, 0, xDitransitiveNPNPFrame, and(objectGiven('ACTION', 'OBJECT'), isa('ACTION', actGivingSomething), giver('ACTION', 'SUBJECT'), givee('ACTION', 'OBLIQUE-OBJECT')), 2046576).
nlac(verbSemTrans, xGiveTheWord, 4, nartR(xPPCompFrameFn, ttDitransitivePPFrameType, xForTheWord), and(isa('ACTION', actYieldingMakingSomethingAvailable), performedBy('ACTION', 'SUBJECT'), transportees('ACTION', 'OBJECT'), target('ACTION', 'OBLIQUE-OBJECT')), 3308275).
nlac(verbSemTrans, xGiveTheWord, 4, nartR(xPPCompFrameFn, ttDitransitivePPFrameType, xToTheWord), and(isa('ACTION', actYieldingMakingSomethingAvailable), performedBy('ACTION', 'SUBJECT'), transferredObject('ACTION', 'OBJECT'), target('ACTION', 'OBLIQUE-OBJECT')), 3307880).
nlac(verbSemTrans, xGiveTheWord, 4, xTransitiveNPFrame, and(isa('ACTION', actYieldingMakingSomethingAvailable), performedBy('ACTION', 'SUBJECT'), objectActedOn('ACTION', 'OBJECT')), 1896612).

