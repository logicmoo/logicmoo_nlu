
:- discontiguous(verb_frame1/4).

push_frame(Info, Frame):- var(Frame), !, gensym(frame, F), Frame = [lbl(F)], push_frame(Info, Frame).
push_frame(Info, Frame):- do_eval_or_same(Info, BetterInfo), Info\=@=BetterInfo, push_frame(BetterInfo, Frame).
push_frame(Info, Frame):- member(Sub, Frame), Sub==Info, !.
push_frame(Info, Frame):- Frame = [H|T], setarg(2, Frame, [H|T]), setarg(1, Frame, Info).




/*
   Take the sentence:

      London 2pm 200 men mouths loudly protesting law not give police hell


   Add Blanks like:

   " _ London _ 2pm _ 200  _ men _ mouths _ loudly _ protesting _ law _ not _ give  _ police _ hell "


  Fill in blanks:

  " in London at 2pm using mouths by men very loudly orderTo protest about law did not acually give to police some hell"


  Lets make each one a frameroles:

  ?- permutation(["in London", "about 2pm", "acually", "using mouths", "by 200 men", "very loudly", "in_order_to protest", "about a new law",
                                                "did not give", "to police", "some hell"], Res).


  is the permutations output accepbale?


  If this is correct you can immagine a declarion as the "psuedo-preps"

   in _ about _ approx _ using _ by _ very _ orderto _ about  _ did _ acually _ to _ some _  of this GIVE frame



  dataformat would be...


  default_args_prep_order(give, in-place, about-time, approx-number, using-device,
               by-doer, very-adverb, orderto-reason, about-theme, did-truthvalue, acually-verb, to-doee, some-thing).

*/

some_hell_example:- forall(permutation([
           "in London", "about 2pm", "acually", "using mouths", "by 200 men", "very loudly", 
           "in_order_to protest", "about a new law",
            "did not give", "some hell", "to police"], Res),

  once((into_text80(Res, WL),any_to_string(WL,S),dmsg(S)))).
    

/*
   at(Place-London), when(Time-2pm), because(Reason-protesting),
   by(Doer-men), with(MoreDoers, "and women"), own(Instr-"knife"), VrtuhValue, did(Action-), toward(Vector-up), to(Doee), of(
*/
% to sally give love
% to sally does player1 give love
% did player1 give love to sally?
% give sally love
% give love to sally
%    From    GIVE    To      That
% player1   give    sally    love
/*

player1   give    [to sally]    [That] love



 "from" SENDS "to" "that"
  joe  sends  sally  love

   A sends  B     C
   from     to  that

   A eats  B     C




 
O = [[ player1], [did, give], [that, love], [to, sally]] ;
O = [[ player1], [to, sally], [did, give], [that, love]] ;
O = [[player1], [to, sally], [that, love], [did, give]] ;
O = [[player1], [that, love], [did, give], [to, sally]] ;
O = [[player1], [that, love], [ sally], [did, give]] ;
O = [[was, given], [from, player1], [ sally], [ love]] ;
O = [[did, give], [from, player1], [that, love], [to, sally]] ;
O = [[did, give], [to, sally], [from, player1], [ love]] ;
O = [[did, give], [to, sally], [that, love], [from, player1]] ;
O = [[did, give], [that, love], [from, player1], [to, sally]] ;
O = [[did, give], [that, love], [to, sally], [from, player1]] ;
O = [[to, sally], [from, player1], [did, give], [that, love]] ;
O = [[to, sally], [from, player1], [that, love], [did, give]] ;
O = [[to, sally], [did, give], [from, player1], [ love]] ;
O = [[to, sally], [did, give], [that, love], [from, player1]] ;
O = [[to, sally], [that, love], [from, player1], [did, give]] ;
O = [[to, sally], [that, love], [did, give], [from, player1]] ;
O = [[that, love], [from, player1], [did, give], [to, sally]] ;
O = [[that, love], [from, player1], [to, sally], [did, give]] ;
O = [[that, love], [did, give], [from, player1], [to, sally]] ;
O = [[that, love], [did, give], [to, sally], [from, player1]] ;
O = [[that, love], [to, sally], [from, player1], [did, give]] ;
O = [[that, love], [to, sally], [did, give], [from, player1]] ;



|[That love] player1   gave    [to sally]
[That love] [to sally]  player1   gave
[to sally]  [That love]  player1   gave
 player1   gave   [That love]    [to sally]

*/

  
eng2flogic(Sentence):-
  make,
  call_residue_vars((eng2flogic(Sentence, FrameOut),!,
  print_reply_colored(FrameOut)),Vs),
  remove_term_attr_type(Vs,['varnames','vn']).


eng2flogic(Sentence, FrameOutR):- 
  quietly(into_text80(Sentence, WL)), !,
  any_to_string(WL,S),
   wdmsg(?-eng2flogic(S)),
   eng2logic_frame(_,WL,FrameOut, _Mem),
   predsort(frcmp,FrameOut,FrameOutS),
   reverse(FrameOutS,FrameOutR).

%frame_sort(~(A),~(B),C):- !, compare(A,B,C).
%frame_sort(~(A), (B),C):- !, compare(A,B,C).
frame_sort(~(A),~(B),C):- !, frcmp(A,B,C).

:- discontiguous(eng2flogic_test/1).

eng2flogic_test([give,sally,love,joe]).
eng2flogic_test([give,sally,it]).
eng2flogic_test([give,to,sally]).
eng2flogic_test([give | English]):-
   permutation([[by, player1], [to, sally], [love]],P),flatten(P,English).
eng2flogic_test(English):- fail, 
  permutation([[by, player1],gave, [to, sally], [love]],P),flatten(P,English).
eng2flogic_test([some,love,we,gave,to,sally]).

eng2flogic_test([to,sally,we,gave,some,love]).
   

run_end2cmd_tests:- make,
  forall(eng2flogic_test(English),eng2flogic(English)).



parseForMWType(_Frame, _X, _Type,ParseText,[TextArg],Right):- 
   append([TextArg],Right,ParseText), is_prep(TextArg), !, fail.

parseForMWType(Frame, X, Type,ParseText, TextArg, Right):- 
   append([L|Eft],[Prep|Rest],ParseText), is_prep(Prep),
   parseForMWType(Frame, X, Type,[L|Eft], TextArg, RightL),
   append(RightL,[Prep|Rest], Right),!.
parseForMWType(Frame, X, _Type,ParseText, TextArg,Right):- 
   noun_phrase(_SO, X, true, LFOut, ParseText, Right),
   push_frame(LFOut,Frame),
   append(TextArg,Right,ParseText).


verb_tenses(Verb,VerbTensed,Tense):-
  List = [Verb, _Smooches, _Smoochered, _Smooching, _Smooched],
  %talkdb:talk_db(intransitive, give, gives, gived, giving, gived)
  talkdb:talk_db([_|List]),
  nth0(Nth0,List,VerbTensed),
  Key = [now, active, past, nowing, past],
  nth0(Nth0,Key,Tense).
verb_tenses(Verb,Verb,base).


eng2logic_frame(Doer, SomeVerbText, FrameOut, _Mem):-
    length(SomeVerbText,L), L > 2,
    %talkdb:talk_db(transitive, give, gives, gave, giving, given).    
    verb_frame1(Action, Verb, FrameArgSInfo, UNormals),
    verb_tenses(Verb, VerbText, Tense),
    append(PreText,[VerbText|TextRS],SomeVerbText),
    %append([VerbText|TextRS],[by|PreText],Text),
    correct_normals(UNormals, Frame),
    must(member(done_by(Action, Doer), Frame)),
 must_det_l((
    fix_frame_args(FrameArgSInfo, FrameArgS),
    compute_frame_slots(FrameArgS, Slots),
    % all_different_bindings(VarsOf),    
    %push_frame(isa(Action, 'tAction'), Frame),
    push_frame(cmd(Verb,Tense,Slots), Frame),
    push_frame(textString(Action, s(VerbText)), Frame),
    push_frame(occurs(Action, Tense), Frame),
    debug_var([Verb, 'Event'], Action),
    debug_var("Actor", Doer),  
    shift_text_args_right(PreText, TextRS, TextR),
    % pprint([shift=[TextR],FrameArgS],always),
    once((parse_dataframe_right(FrameArgS, Action, Frame, TextR);pprint(failed([shift=[TextR],FrameArgS],always)))),
    %frame_defaults(FrameArgS, Frame),
    frame_to_asserts(Frame, FrameOut))).

shift_text_args_right( [], TextRS, TextR):- !, TextR= TextRS.
shift_text_args_right( [Prep|Text], TextRS, TextR):-
 is_prep_for_type(Prep,Type), parseForMWType(_Frame, _X, Type, Text,Left,Right),
 append(TextRS,[Prep|Left],TextRS),!,
 shift_text_args_right( Right, TextRS, TextR).
shift_text_args_right( Left, TextRS, TextR):- 
 append(TextRS,[by|Left],TextR),!.

txt_to_obj(TextArg,_NewArgValue):- var(TextArg),!.
txt_to_obj(List,NewArgValue):-  is_list(List),last(List,TextArg),!, txt_to_obj(TextArg,NewArgValue).
txt_to_obj(TextArg,NewArgValue):- upcase_atom(TextArg,UTextArg),gensym(UTextArg,NewArgValue).
  
parse_dataframe_right(FrameArgS, Action, Frame, Text):-
   % pprint(parse_dataframe_right(Text , FrameArgS, VarsOf),always),
   nth0(_Nth, FrameArgS, FrameArg, NewFrameArgS), 
   %nth0(Nth, VarsOf, NewArg, NewVarsOf),
   member(prep(Prep),FrameArg),
   once((append(Left, [PrepText| TextArgRight], Text),
     same_word(Prep, PrepText))),
   push_frame(prepOf(NewArg,Prep), Frame),
   FrameVars = [$prep=Prep,$action=Action],
   ignore((member(isa(Type),FrameArg),push_frame(isa(NewArg, Type), Frame))),
   show_failure(parseForMWType(Frame, NewArgValue, Type, TextArgRight,TextArg,Right)),!,
   ignore((member(var(NewArg),FrameArg),var(NewArg),ignore(=(NewArgValue,NewArg)))),
   ignore((member(frame(Info),FrameArg),subst_each(Info,FrameVars,FInfo), push_frame(FInfo,Frame))),
   push_frame(textString(NewArg, TextArg), Frame),  
   
   ignore((member(pred(Prop),FrameArg),push_frame(t(Prop, Action, NewArg), Frame))),
   ignore((member(default(Default),FrameArg),debug_var(Default, NewArg))),   
   append(Left, Right, NewText),
   parse_dataframe_right(NewFrameArgS, Action, Frame, NewText).

parse_dataframe_right(FrameArgS, Action, Frame, Text):-
  cont_parse_dataframe(FrameArgS , Text, Action, Frame).

cont_parse_dataframe([], [],      _Action, _Frame):- !.
cont_parse_dataframe([], Text, _Action, Frame):- !, push_frame(zexistsLeftOverText(Text), Frame).
cont_parse_dataframe(FrameArgS, [],  _Action, Frame):- !, push_frame(zexistsLeftOver(FrameArgS), Frame).

cont_parse_dataframe([FrameArg| FrameArgS], Text, Action, Frame):- 
   ignore((member(isa(Type),FrameArg),push_frame(isa(NewArg, Type), Frame))),
   member(var(NewArg),FrameArg),

   (((\+ member(optional(true),FrameArg), 
    show_failure(parseForMWType(Frame, NewArgValue, Type,Text,TextArg,Right)))) 
      -> push_frame(textString(NewArg, TextArg), Frame) ; Right = Text),

   ignore((member(pred(Prop),FrameArg),push_frame(t(Prop, Action, NewArg), Frame))),
   ignore((member(default(Default),FrameArg),debug_var(Default, NewArg))),
   ignore((member(var(NewArg),FrameArg),var(NewArg),ignore(=(NewArgValue,NewArg)))),
   ignore((member(prep(Prep),FrameArg),push_frame(prepOf(NewArg,Prep), Frame))),
  cont_parse_dataframe(FrameArgS, Right, Action, Frame).


%frame_to_asserts(List, cmdFrame(Frame)):- is_list(List), sort(List, ListR), list_to_conjuncts('&', ListR, Frame), !.
%frame_to_asserts(Frame, cmdFrame(Frame)).
frame_to_asserts(Frame, Frame).

frame_defaults([], _Frame):-!.
frame_defaults([FrameArg| FrameArgS], Frame):-
   ignore((
     member(var(NewArg),FrameArg),var(NewArg),
     member(default(D),FrameArg),
     debug_var(D,NewArg),
    % D=NewArg,
   !)),
   frame_defaults(FrameArgS, Frame).

subst_into_list([],[]).
subst_into_list(+(AB),[optional(true)|AABB]):- !, subst_into_list(AB,AABB),!.
subst_into_list(A+B,AABB):-!, subst_into_list(A,AA), subst_into_list(B,BB), append(AA,BB,AABB).
subst_into_list([A|B],AABB):-!, subst_into_list(A,AA), subst_into_list(B,BB), append(AA,BB,AABB).
subst_into_list(A,[A]):-!.

fix_frame_args([], []).
fix_frame_args([LastArg,[]], BetterFrameArgS):- !, fix_frame_args([LastArg], BetterFrameArgS).
fix_frame_args([FrameArg| FrameArgS], [[slot(Slot)|FrameArgL]|BetterFrameArgS]):-
  subst_into_list(FrameArg,FrameArgL),
  ignore(member(var(NewArg),FrameArgL)),
  ignore((member(default(Name),FrameArgL),functor(Name,F,_),debug_var(F,NewArg),debug_var(F,Slot))),
  fix_frame_args(FrameArgS, BetterFrameArgS).

compute_frame_slots([], []).
compute_frame_slots([FrameArg| FrameArgS], [FrameSlot|FrameSlotS]):-
  frame_arg_to_slot(FrameArg,FrameSlot),
  compute_frame_slots(FrameArgS, FrameSlotS).
compute_frame_slots([_FrameArg| FrameArgS],  FrameSlotS):-
  compute_frame_slots(FrameArgS, FrameSlotS).

frame_arg_to_slot(FrameArg,Name=NewArg):- 
   % \+ member(optional(true),FrameArg),
   (member(var(NewArg),FrameArg);member(slot(NewArg),FrameArg)),!,
   (member(pred(Name),FrameArg);member(prep(Name),FrameArg);member(default(Name),FrameArg)),!.
   

frmprint(Frame) :-
    %catch(make_pretty(I, O), _, I=O),
    guess_pretty(Frame),
    predsort(frcmp, Frame, FrameA),
    reverse(FrameA, FrameO),
    maplist(frmprint_e, FrameO).
frmprint_e(Frame) :- format('~N  ', []), fmt90(Frame).

sortDeref(P, PP):- \+ compound(P), !, P=PP.
%sortDeref(isa(X, Y), visa(X, Y)):-!.
sortDeref(~(P), PP):-!, sortDeref(P, PP).
sortDeref(P, PP):- arg(1, P, PP), compound(PP).
sortDeref(P, PP):- safe_functor(P, F, N), wrapper_funct_sortin(F), arg(N, P, E), !, sortDeref(E, PP).
sortDeref(P, P).


all_different_bindings([]):- !.
all_different_bindings([_]):- !.
all_different_bindings([X, Y]):- !, dif(X, Y).
all_different_bindings([X, Y, Z]):- !, dif(X, Y), dif(X, Z), dif(Z, Y).
all_different_bindings([X|Text]):- maplist(dif(X), Text), all_different_bindings(Text).

wrapper_funct_sortin(F):- arg(_, v(~, post, pre), F).
wrapper_funct_correction(F):- arg(_, v(~, post, normally, pre), F).

correct_normals(Nil, Nil):- Nil==[], !.
correct_normals(EOL, []):- EOL==end_of_list, !.
correct_normals(UNormals, Normals):- \+ compound(UNormals), !, [UNormals]=Normals.
correct_normals(~(PreU), Normals):- compound(PreU), PreU=pre(U), !, correct_normals(pre(~(U)), Normals).
correct_normals((U, UU), Normals):- !, correct_normals(U, UC), correct_normals(UU, UUC), !, append(UC, UUC, Normals).
correct_normals([U|UU], Normals):- !, correct_normals(U, UC), correct_normals(UU, UUC), !, append(UC, UUC, Normals).
correct_normals(P, Normals):- P=..[F, A1, A2|List], wrapper_funct_correction(F),
  P1=..[F, A1], P2=..[F, A2|List], !,
  correct_normals([P1|P2], Normals).
correct_normals(Normal, [Normal]).

frcmp(P1, P2, Cmp):- (\+ compound(P1) ; \+ compound(P2)), !, compare(P1, P2, Cmp).
frcmp(P1, P2, Cmp):- N=1, (arg(N, P1, A);arg(N, P2, A)), is_list(A), !, compare(P1, P2, Cmp).
frcmp(P2, P1, Cmp):- sortDeref(P1, PP1)->P1\=@=PP1, !, frcmp(P2, PP1, Cmp).
frcmp(P1, P2, Cmp):- sortDeref(P1, PP1)->P1\=@=PP1, !, frcmp(PP1, P2, Cmp).
frcmp(P1, P2, Cmp):- N=1, arg(N, P1, F1), arg(N, P2, F2), F1==F2, !, compare(P1, P2, Cmp).
frcmp(P1, P2, Cmp):- safe_functor(P1, F1, _), safe_functor(P2, F2, _), F1\==F2, compare(F1, F2, Cmp), Cmp \= (=), !.
frcmp(P1, P2, Cmp):- arg(N, P1, F1), arg(N, P2, F2), frcmp(F1, F2, Cmp), Cmp \= (=), !.
frcmp(P1, P2, Cmp):- compare(P1, P2, Cmp).
%reframed_call( Pred, Doer, [give, Object, to, Recipient], give(Doer, Object, Recipient), _Mem):- !.



% player1 give sally love
verb_frame1(Action,  Give,
[ +default(Give)+var(Action)+isa(actGiving)+prep(do),
   default(them)+var(Recipient)+prep(to)+isa(tAnimate)+pred(recipient),
   default(it)+var(Object)+prep(some)+isa(tObject)+pred(objectActedOn),
   default(someone)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
   +default(handOf(Doer))+var(Instr)+prep(using)+isa(tBodyPart)+pred(instrument),
[]],  
  [done_by(Action, Doer),

   normally(
            isa(Instr, tBodyPart),
            cntrls(Doer, Instr),
            can_reach(Instr, Recipient)),
   pre(
            cntrls(Doer, Object),
           ~cntrls(Recipient, Object)),
   post(
           ~cntrls(Doer, Object),
            cntrls(Recipient, Object)),
   end_of_list]):-
  arg(_,v(give,kick,throw),Give).

   

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

/*

The experts attributed Raphael this picture.

I forwarded Winifred the letter.

Managers presented the_foreman a_gold_watch.

Ted Kicked John the ball

Monica hit Martina the ball.

The critics ascribe Shakespeare this play

She was given the job by the previous manager.

The previous manager gave her the job  from Joe in the office at 9pm for a joke


9pm, The previous manager gave her joe's  office job
 AT      BY                    TO   FROM   IN




       BY            GAVE   TO    THAT

*/


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
verb_frame1(Action, Etch,
  [   +default(Etch)+var(Action)+isa(actCarved)+prep(do),

      default(someone)+var(Someone)+prep(to)+isa(tAnimate)+pred(receiver),      
      +default(object)+var(Object)+prep(into)+isa(tObject)+pred(objectActedOn)+frame(part_of(Surface, Object)), 
      +default(surface)+var(Surface)+prep(on)+prep(in)+prep(under)+isa(tObject)+pred(surface)+
         frame(partOf(Surface,$prep,Object)), 
      default(glyphs)+var(Glyphs)+prep(about)+isa(tGlyphic)+pred(deplicts), 
      +default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by), 
      +default(instrument(Etch))+var(Instr)+prep(using)+prep(with)+isa(tTool)+pred(instrument)],  
  [done_by(Action, Doer),
      pre(isa(Instr, tKnife), cntrls(Doer, Instr), can_reach(Instr, Object)),
      part_of(Surface, Object),later(see(Someone, Object)),
      ~pre(exists(Glyphs)),
       pre(~part_of(Glyphs, Surface)),
       post(part_of(Glyphs, Surface))]):-
  arg(_,v(etch,carve,dig),Etch).


eng2flogic_test("Bertrand wrote Fred a letter").
eng2flogic_test("Bertrand wrote a letter to Fred").
eng2flogic_test(English):-
   permutation(["Bertrand wrote" , "a letter", "about Gottlob", "to Fred"], English).   
eng2flogic_test(English):-  fail,
  permutation(["by Bertrand" , "a letter was written",  "about Gottlob", "to Fred"],English).

verb_frame1(Action, Write,
  [   +default(Write)+var(Action)+isa(actWriting)+prep(do),
      prep(to)+default(someone)+var(Someone)+prep(for)+isa(tAnimate)+pred(receiver),      
      prep(some)+default(book)+var(Object)+isa(tObject)+pred(transcribedTo),  
      prep(by)+default(doer)+var(Doer)+isa(tAnimate)+prep(from)+pred(done_by), 
      +default(topic)+var(Topic)+prep(about)+isa(tTopic)+pred(topic), 
      +default(instrumentOf(Write))+var(Instr)+prep(using)+prep(with)+isa(tTool)+pred(instrument)],  
  [
       pre(cntrls(Doer, Instr),
           knows(Doer, Topic),
           can_reach(Instr, Object),
           equals(instrumentOf(Write), Instr),
           ~part_of(Topic, Object)),
       done_by(Action, Doer),
       post(part_of(Topic, Object)),
       eventually(reads(Someone, Object))]):-
  arg(_,v(transcribe,write,pen),Write).


verb_frame1(Action,  Put, % to-region, of-container
  [   +default(Put)+var(Action)+isa(actPlacing)+prep(do),
      default(it)+var(Object)+prep(some)+isa(tObject)+pred(objectActedOn), 
      default(somewhere)+var(Place)+prep(to)+pred(toLocation),
      default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by), 
      +default(hand)+var(Instr)+prep(using)+isa(tBodyPart)+pred(patient)],  
 [done_by(Action, Doer),
  cntrls(Doer, Instr), can_reach(Instr, Place),
  part_of(Place, Container),
  or(h(How, Place, Container), h(How, Container, Place)),
  post(h(How, Container, Object))]):- arg(_,v(put,place),Put).


% %%%%%%%%%%%%%%
% Dig
% %%%%%%%%%%%%%%
/*
reframed_call( Pred, Agent, [dig, ShapeHole], dig(Agent, ShapeHole, Where, Instr), M) :- fail,
 in_agent_model(Agent, inst(Agent), M),
 in_agent_model(Agent, h(_, Agent, Where), M),
 Instr=shovel.
*/

verb_frame1(Action,  Dig,
 [ +default(dig)+var(Action)+isa(actDiging)+prep(do),
 some-shape_of, 
 on-faceOf:surfaceOf(Object), 
 in-objectActedOn:tGround,
  default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
 + default(shovel)+var(Instr)+prep(using)+isa(tTool)+pred(instrument),
 []],
 % [Doer, does, $verb, some, ShapeHole, on, Surface, into, Object, using, Instr],
[done_by(Action, Doer),
  normally(
           isa(Instr, tTool),
           cntrls(Doer, Instr),
           can_reach(Instr, Surface)),
 part_of(Surface, Object),
 ~pre(exists(ShapeHole)),
 pre(~part_of(ShapeHole, Object)),
 post(part_of(ShapeHole, Object))]):- 
   arg(_,v(dig),Dig),
   debug_var(tool, Instr), debug_var(hole, ShapeHole).

/*
verb(bite,
 [tAnimate(Doer), done_by(Doer, Action),
  frame(Action), act_of(Action, biting),
  tAnimate(Object), object(Object, Action),
  type_of(Instr, teeth), using(Instr, Action),
  part_of(Instr, Doer) ] ).
*/
verb_frame1(Action,  bite,
   [
	+default(bite)+var(Action)+isa(actBiting)+prep(do),
	default(it)+var(Object)+prep(some)+isa(tObject)+pred(victem), 
        default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
        +default(teeth)+var(Instr)+prep(using)+isa(tTeeth)+pred(instrument),
        []],
  % [Doer, does, $verb, some, Object, using, Instr],
  [done_by(Action, Doer),
   part_of(Instr, Doer),
   can_reach(Instr, Object),
   normally(isa(Instr, tBodyPart))]).

verb_frame1(Action,  like,
   [
	default(like)+var(Action)+isa(actLiking)+prep(do),
	default(it)+var(Object)+prep(some)+isa(tObject)+pred(objectActedOn),
	default(much)+var(LotsOrLittle)+prep(so)+pred(amount),
        default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
   []],
  % [Doer, does, $verb, some, Object, a, LotsOrLittle],
  [done_by(Action, Doer),
   feelsAbout(Doer, Object, LotsOrLittle)]).

verb_frame1(Action,  want,
  [
   +default(like)+var(Action)+isa(actLiking)+prep(do),
   default(action)+var(AlsoDo)+isa(tAction)+pred(targetAction)+prep(to),
   default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
   []],
  % [Doer, does, $verb, want, to, AlsoDo],
  [done_by(Action, Doer),
   wantsToDo(Doer, Action, AlsoDo)]).


% %%%%%%%%%%%%%%
bpart_contol(break, broken).
bpart_contol(repair, unbroken).
bpart_contol(Smooch, Smooched):- 
  munl_call(talkdb:talk_db(_, Smooch, _Smooches, Smooched, _Smooching, Smooched)).
bpart_contol(light, lit).
bpart_contol(unlight, unlit).
bpart_contol(Open, Opened):- munl_call(clex:tv_pp(Opened, Open)).

% %%%%%%%%%%%%%%
verb_frame1(Action,  Light,
  [
   default(like)+var(Action)+isa(actLiking)+prep(do),
   default(it)+var(Object)+prep(some)+isa(tObject)+pred(objectActedOn),
   default(hand)+var(Instr)+prep(using)+isa(tbpart)+pred(instrument),
   default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
   []],
   % [Doer, does, $verb, some, Object, using, Instr],
   [done_by(Action, Doer),
    pre(cntrls(Doer, Instr), can_reach(Instr, Object)),
  symetrically(opposite_values(Lit, Unlit)),
  pre(status(Object, Unlit)),
  pre(~status(Object, Lit)),
  post(~status(Object, Unlit)),
  post(status(Object, Lit)),
  end_of_list]):- bpart_contol(Light, Lit).




%reframed_call( Pred, Doer, [switch, Thing, OnOff], Result, M) :- preposition(_, OnOff), !, reframed_call( Pred, Doer, [switch, OnOff, Thing], Result, M).

verb_frame1(Action,  switch,
 [ 
 default(switch)+var(Action)+isa(act(switch))+prep(do),
 default(it)+var(Object)+prep(some)+isa(tObject)+pred(objectActedOn),
 default(on)+var(On)+isa(act(state))+pre(tp),
 default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
 to-state:on_off,
 default(hand)+var(Instr)+prep(using)+isa(tbpart)+pred(instrument)],
   % [Doer, does, $verb, some, Object, to, On, using, Instr],
 [done_by(Action, Doer),
  pre(cntrls(Doer, Instr), can_reach(Instr, Object)),
  pre(position(Object, Off)),
  pre(~position(Object, On)),
  symetrically(opposite_values(On, Off)),
  post(~position(Object, Off)),
  post(position(Object, On)),
  end_of_list]):- On = on.


% %%%%%%%%%%%%%%
verb_undos(unlight, lit, bpart).
verb_undos(close, opened, bpart).
verb_undos(unlock, locked, key).
% %%%%%%%%%%%%%%
verb_frame1(Action,  Unlock,
 [+default(Unlock)+var(Action)+isa(act(Unlock))+prep(do),
  default(it)+var(Object)+prep(some)+isa(tObject)+pred(objectActedOn),
  default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
  +default(Key)+var(Instr)+prep(using)+pred(instrument),
  []],
 % [Doer, does, $verb, some, Object, using, Instr],
 [done_by(Action, Doer),
  pre(cntrls(Doer, Instr), can_reach(Instr, Object)),
  pre(status(Object, Locked)),
  post(~status(Object, Locked))]):- verb_undos(Unlock, Locked, Key).

% %%%%%%%%%%%%%%
verb_cantbe_causes(open, locked, opened).
% %%%%%%%%%%%%%%
verb_frame1(Action,  Open,
 [+default(Open)+var(Action)+isa(act(Open))+prep(do),
  default(it)+var(Object)+prep(some)+isa(tObject)+pred(objectActedOn),
  default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
  +default(hand)+var(Instr)+prep(using)+isa(tbpart)+pred(instrument),
  []],
 % [Doer, does, $verb, some, Object, using, Instr],
  [done_by(Action, Doer),
   pre(cntrls(Doer, Instr), can_reach(Instr, Object)),
   pre(~status(Object, Opened)),
   pre(~status(Object, Locked)),
    post(~status(Object, Locked)),
    post(status(Object, Opened)),
  end_of_list]):- verb_cantbe_causes(Open, Locked, Opened).

% %%%%%%%%%%%%%%
verb_undos_causes1(lock, opened, locked, key).
% %%%%%%%%%%%%%%
verb_frame1(Action,  Lock,
 [+default(Lock)+var(Action)+isa(act(Lock))+prep(do),
 default(it)+var(Object)+prep(some)+isa(tObject)+pred(objectActedOn),
 default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
 +default(key)+var(Key)+prep(using)+isa(tKey)+pred(instrument)],
 % [Doer, does, $verb, some, Object, using, Instr],
 [done_by(Action, Doer),
  pre(cntrls(Doer, Instr), can_reach(Instr, Object)),
  pre(~status(Object, Locked)),
  post(~status(Object, StateOpened)),
  post(status(Object, Locked)),
  end_of_list]) :-
  verb_undos_causes1(Lock, StateOpened, Locked, Key).

% %%%%%%%%%%%%%%
verb_tool_ends_ensures(burn, match, unflaming, burned).
verb_tool_ends_ensures(extinguish, extinguiser, flaming, unburned).
% %%%%%%%%%%%%%%
verb_frame1(Action,  Burn,
 [default(it)+var(Object)+prep(some)+isa(tObject)+pred(objectActedOn),
  default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by),
  +default(match)+var(Match)+prep(using)+isa(tMatch)+pred(instrument)],
 % [Doer, does, $verb, some, Object, with, Instr],
 [done_by(Action, Doer),
  pre(cntrls(Doer, Instr), can_reach(Instr, Object)),
  symetrically(opposite_values(Unflaming, Flaming)),
   pre(status(Object, Unflaming)),
   post(~status(Object, Unflaming)),
   post(status(Object, Flaming)),
  symetrically(opposite_values(Burnt, Unburnt)),
   post(~status(Object, Unburnt)),
   post(status(Object, Burnt)),
  end_of_list]):-
 verb_tool_ends_ensures(Burn, Match, Unflaming, Burnt).


end_of_file.


% ?-eng2flogic("give sally love joe").
[ cmd( give, now,
    [ do=Give,
      recipient=Sally76,
      objectActedOn=Love31,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(Someone,"joe"),
  textString(Give,"give"),
  textString(Love31,"love"),
  textString(Sally76,"sally"),
  recipient(Give,Sally76),
  prepOf(Someone,from),
  prepOf(Give,do),
  prepOf(Love31,some),
  prepOf(Sally76,to),
  occurs(Give,now),
  objectActedOn(Give,Love31),
  iza(Someone,'Joe'),
  iza(Love31,'Love'),
  iza(Sally76,'Sally'),
  isa(Someone,tAnimate),
  isa(Give,actGiving),
  isa(Love31,tObject),
  isa(Sally76,tAnimate),
  done_by(Give,Someone),
  zexistsLeftOver( [[slot(HandOf9),optional(true),default(handOf(Someone)),var(HandOf),prep(using),isa(tBodyPart),pred(instrument)]]),
  pre( cntrls(Someone,Love31)),
  pre( ~( cntrls(Sally76,Love31))),
  post( cntrls(Sally76,Love31)),
  post( ~( cntrls(Someone,Love31))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally76))  ]


% ?-eng2flogic("give sally it").
[ cmd( give, now,
    [ do=Give,
      recipient=Sally77,
      objectActedOn=It13,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(It13,"it"),
  textString(Give,"give"),
  textString(Sally77,"sally"),
  recipient(Give,Sally77),
  prepOf(It13,some),
  prepOf(Give,do),
  prepOf(Sally77,to),
  occurs(Give,now),
  objectActedOn(Give,It13),
  iza(Sally77,'Sally'),
  isa(It13,tObject),
  isa(Give,actGiving),
  isa(Sally77,tAnimate),
  done_by(Give,Someone),
  &(
       denotableBy(It13,iPronounPersonalFn("it")),
       iza(It13,tInanimateObject),
      denotableBy(It13,agreementFn('3rd')),
     denotableBy(It13,iVarnamedFn("It"))),
  zexistsLeftOver( [ [ slot(Someone7),
      default(someone),
      var(Someone),
      isa(tAnimate),
      prep(from),
      prep(by),
      pred(done_by)  ],
     [ slot(HandOf9),
       optional(true),
       default( handOf(Someone)),
       var(HandOf),
       prep(using),
       isa(tBodyPart),
       pred(instrument)  ]  ]),
  pre( cntrls(Someone,It13)),
  pre( ~( cntrls(Sally77,It13))),
  post( cntrls(Sally77,It13)),
  post( ~( cntrls(Someone,It13))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally77))  ]


% ?-eng2flogic("give to sally").
[ cmd( give, now,
    [ do=Give,
      recipient=Sally78,
      objectActedOn=It,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(Sally78,"sally"),
  textString(Give,"give"),
  recipient(Give,Sally78),
  prepOf(Sally78,to),
  occurs(Give,now),
  iza(Sally78,'Sally'),
  isa(Sally78,tAnimate),
  done_by(Give,Someone),
  zexistsLeftOver( [ [ slot(Give1),
      optional(true),
      default(give),
      var(Give),
      isa(actGiving),
      prep(do)  ],
     [ slot(It5),
       default(it),
       var(It),
       prep(some),
       isa(tObject),
       pred(objectActedOn)  ],
     [ slot(Someone7),
       default(someone),
       var(Someone),
       isa(tAnimate),
       prep(from),
       prep(by),
       pred(done_by)  ],
     [ slot(HandOf9),
       optional(true),
       default( handOf(Someone)),
       var(HandOf),
       prep(using),
       isa(tBodyPart),
       pred(instrument)  ]  ]),
  pre( cntrls(Someone,It)),
  pre( ~( cntrls(Sally78,It))),
  post( cntrls(Sally78,It)),
  post( ~( cntrls(Someone,It))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally78))  ]


% ?-eng2flogic("give by player1 to sally love").
[ cmd( give, now,
    [ do=Give,
      recipient=Sally79,
      objectActedOn=It,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(Sally79,"sally"),
  textString(Give,"give"),
  recipient(Give,Sally79),
  prepOf(HandOf,using),
  prepOf(Sally79,to),
  prepOf(Someone,from),
  prepOf(Give,do),
  prepOf(It,some),
  occurs(Give,now),
  objectActedOn(Give,It),
  iza(Sally79,'Sally'),
  isa(HandOf,tBodyPart),
  isa(Sally79,tAnimate),
  isa(Someone,tAnimate),
  isa(Give,actGiving),
  isa(It,tObject),
  instrument(Give,HandOf),
  done_by(Give,Someone),
  zexistsLeftOverText( [ by,
     player1,
     love  ]),
  pre( cntrls(Someone,It)),
  pre( ~( cntrls(Sally79,It))),
  post( cntrls(Sally79,It)),
  post( ~( cntrls(Someone,It))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally79))  ]


% ?-eng2flogic("give by player1 love to sally").
[ cmd( give, now,
    [ do=Give,
      recipient=Sally80,
      objectActedOn=It,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(Sally80,"sally"),
  textString(Give,"give"),
  recipient(Give,Sally80),
  prepOf(HandOf,using),
  prepOf(Sally80,to),
  prepOf(Someone,from),
  prepOf(Give,do),
  prepOf(It,some),
  occurs(Give,now),
  objectActedOn(Give,It),
  iza(Sally80,'Sally'),
  isa(HandOf,tBodyPart),
  isa(Sally80,tAnimate),
  isa(Someone,tAnimate),
  isa(Give,actGiving),
  isa(It,tObject),
  instrument(Give,HandOf),
  done_by(Give,Someone),
  zexistsLeftOverText( [ by,
     player1,
     love  ]),
  pre( cntrls(Someone,It)),
  pre( ~( cntrls(Sally80,It))),
  post( cntrls(Sally80,It)),
  post( ~( cntrls(Someone,It))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally80))  ]


% ?-eng2flogic("give to sally by player1 love").
[ cmd( give, now,
    [ do=Give,
      recipient=Sally81,
      objectActedOn=It,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(Sally81,"sally"),
  textString(Give,"give"),
  recipient(Give,Sally81),
  prepOf(HandOf,using),
  prepOf(Sally81,to),
  prepOf(Someone,from),
  prepOf(Give,do),
  prepOf(It,some),
  occurs(Give,now),
  objectActedOn(Give,It),
  iza(Sally81,'Sally'),
  isa(HandOf,tBodyPart),
  isa(Sally81,tAnimate),
  isa(Someone,tAnimate),
  isa(Give,actGiving),
  isa(It,tObject),
  instrument(Give,HandOf),
  done_by(Give,Someone),
  zexistsLeftOverText( [ by,
     player1,
     love  ]),
  pre( cntrls(Someone,It)),
  pre( ~( cntrls(Sally81,It))),
  post( cntrls(Sally81,It)),
  post( ~( cntrls(Someone,It))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally81))  ]


% ?-eng2flogic("give to sally love by player1").
[ cmd( give, now,
    [ do=Give,
      recipient=Sally82,
      objectActedOn=Love32,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(Sally82,"sally"),
  textString(Give,"give"),
  textString(Love32,"love"),
  recipient(Give,Sally82),
  prepOf(HandOf,using),
  prepOf(Sally82,to),
  prepOf(Someone,from),
  prepOf(Give,do),
  prepOf(Love32,some),
  occurs(Give,now),
  objectActedOn(Give,Love32),
  iza(Sally82,'Sally'),
  iza(Love32,'Love'),
  isa(HandOf,tBodyPart),
  isa(Sally82,tAnimate),
  isa(Someone,tAnimate),
  isa(Give,actGiving),
  isa(Love32,tObject),
  instrument(Give,HandOf),
  done_by(Give,Someone),
  zexistsLeftOverText( [ by,
     player1  ]),
  pre( cntrls(Someone,Love32)),
  pre( ~( cntrls(Sally82,Love32))),
  post( cntrls(Sally82,Love32)),
  post( ~( cntrls(Someone,Love32))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally82))  ]


% ?-eng2flogic("give love by player1 to sally").
[ cmd( give, now,
    [ do=Give,
      recipient=Sally83,
      objectActedOn=Love33,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(Sally83,"sally"),
  textString(Give,"give"),
  textString(Love33,"love"),
  recipient(Give,Sally83),
  prepOf(HandOf,using),
  prepOf(Sally83,to),
  prepOf(Someone,from),
  prepOf(Give,do),
  prepOf(Love33,some),
  occurs(Give,now),
  objectActedOn(Give,Love33),
  iza(Sally83,'Sally'),
  iza(Love33,'Love'),
  isa(HandOf,tBodyPart),
  isa(Sally83,tAnimate),
  isa(Someone,tAnimate),
  isa(Give,actGiving),
  isa(Love33,tObject),
  instrument(Give,HandOf),
  done_by(Give,Someone),
  zexistsLeftOverText( [ by,
     player1  ]),
  pre( cntrls(Someone,Love33)),
  pre( ~( cntrls(Sally83,Love33))),
  post( cntrls(Sally83,Love33)),
  post( ~( cntrls(Someone,Love33))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally83))  ]


% ?-eng2flogic("give love to sally by player1").
[ cmd( give, now,
    [ do=Give,
      recipient=Sally84,
      objectActedOn=Love34,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(Sally84,"sally"),
  textString(Give,"give"),
  textString(Love34,"love"),
  recipient(Give,Sally84),
  prepOf(HandOf,using),
  prepOf(Sally84,to),
  prepOf(Someone,from),
  prepOf(Give,do),
  prepOf(Love34,some),
  occurs(Give,now),
  objectActedOn(Give,Love34),
  iza(Sally84,'Sally'),
  iza(Love34,'Love'),
  isa(HandOf,tBodyPart),
  isa(Sally84,tAnimate),
  isa(Someone,tAnimate),
  isa(Give,actGiving),
  isa(Love34,tObject),
  instrument(Give,HandOf),
  done_by(Give,Someone),
  zexistsLeftOverText( [ by,
     player1  ]),
  pre( cntrls(Someone,Love34)),
  pre( ~( cntrls(Sally84,Love34))),
  post( cntrls(Sally84,Love34)),
  post( ~( cntrls(Someone,Love34))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally84))  ]


% ?-eng2flogic("some love we gave to sally").
[ cmd( give, past,
    [ do=Give,
      recipient=Sally85,
      objectActedOn=Love35,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(Love35,"love"),
  textString(Sally85,"sally"),
  textString(Someone,"we"),
  textString(Give,"gave"),
  recipient(Give,Sally85),
  prepOf(Love35,some),
  prepOf(Sally85,to),
  prepOf(Someone,by),
  occurs(Give,past),
  objectActedOn(Give,Love35),
  iza(Love35,'Love'),
  iza(Sally85,'Sally'),
  isa(Love35,tObject),
  isa(Sally85,tAnimate),
  isa(Someone,tAnimate),
  done_by(Give,Someone),
  &(
       denotableBy(Someone,iPronounPersonalFn("we")),
       denotableBy(Someone,agreementFn('1st')),
      denotableBy(Someone,iVarnamedFn("Us")),
     ~( numberOf(Someone,1))),
  zexistsLeftOver( [ [ slot(Give1),
      optional(true),
      default(give),
      var(Give),
      isa(actGiving),
      prep(do)  ],
     [ slot(HandOf9),
       optional(true),
       default( handOf(Someone)),
       var(HandOf),
       prep(using),
       isa(tBodyPart),
       pred(instrument)  ]  ]),
  pre( cntrls(Someone,Love35)),
  pre( ~( cntrls(Sally85,Love35))),
  post( cntrls(Sally85,Love35)),
  post( ~( cntrls(Someone,Love35))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally85))  ]


% ?-eng2flogic("to sally we gave some love").
[ cmd( give, past,
    [ do=Give,
      recipient=Sally90,
      objectActedOn=Love36,
      done_by=Someone,
      instrument=HandOf  ]),
  textString(Love36,"love"),
  textString(Sally90,"sally"),
  textString(Someone,"we"),
  textString(Give,"gave"),
  recipient(Give,Sally90),
  prepOf(Love36,some),
  prepOf(Sally90,to),
  prepOf(Someone,by),
  occurs(Give,past),
  objectActedOn(Give,Love36),
  iza(Love36,'Love'),
  iza(Sally90,'Sally'),
  isa(Love36,tObject),
  isa(Sally90,tAnimate),
  isa(Someone,tAnimate),
  done_by(Give,Someone),
  &(
       denotableBy(Someone,iPronounPersonalFn("we")),
       denotableBy(Someone,agreementFn('1st')),
      denotableBy(Someone,iVarnamedFn("Us")),
     ~( numberOf(Someone,1))),
  zexistsLeftOver( [ [ slot(Give1),
      optional(true),
      default(give),
      var(Give),
      isa(actGiving),
      prep(do)  ],
     [ slot(HandOf9),
       optional(true),
       default( handOf(Someone)),
       var(HandOf),
       prep(using),
       isa(tBodyPart),
       pred(instrument)  ]  ]),
  pre( cntrls(Someone,Love36)),
  pre( ~( cntrls(Sally90,Love36))),
  post( cntrls(Sally90,Love36)),
  post( ~( cntrls(Someone,Love36))),
  normally( isa(HandOf,tBodyPart)),
  normally( cntrls(Someone,HandOf)),
  normally( can_reach(HandOf,Sally90))  ]


% ?-eng2flogic("Bertrand wrote Fred a letter").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred467,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=Topic,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,Topic),
  textString(iBertrand,"bertrand"),
  textString(Write,"wrote"),
  textString(Fred467,"fred"),
  receiver(Write,Fred467),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Write,do),
  prepOf(Topic,about),
  prepOf(Book,some),
  prepOf(Fred467,to),
  occurs(Write,past),
  iza(Fred467,'Fred'),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Write,actWriting),
  isa(Topic,tTopic),
  isa(Book,tObject),
  isa(Fred467,tAnimate),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,Topic)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(Topic,Book))),
  post( part_of(Topic,Book)),
  eventually( reads(Fred467,Book)),
  true  ]


% ?-eng2flogic("Bertrand wrote a letter to Fred").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred468,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=Topic,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,Topic),
  textString(iBertrand,"bertrand"),
  textString(Fred468,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred468),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred468,to),
  prepOf(Write,do),
  prepOf(Topic,about),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred468,'Fred'),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred468,tAnimate),
  isa(Write,actWriting),
  isa(Topic,tTopic),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,Topic)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(Topic,Book))),
  post( part_of(Topic,Book)),
  eventually( reads(Fred468,Book)),
  true  ]


% ?-eng2flogic("bertrand wrote a letter about Gottlob to Fred").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred469,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred469,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred469),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred469,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred469,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred469,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred469,Book)),
  true  ]


% ?-eng2flogic("bertrand wrote a letter to Fred about Gottlob").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred470,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred470,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred470),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred470,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred470,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred470,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred470,Book)),
  true  ]


% ?-eng2flogic("bertrand wrote about Gottlob a letter to Fred").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred471,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred471,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred471),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred471,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred471,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred471,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred471,Book)),
  true  ]


% ?-eng2flogic("bertrand wrote about Gottlob to Fred a letter").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred472,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred472,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred472),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred472,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred472,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred472,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred472,Book)),
  true  ]


% ?-eng2flogic("bertrand wrote to Fred a letter about Gottlob").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred473,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred473,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred473),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred473,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred473,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred473,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred473,Book)),
  true  ]


% ?-eng2flogic("bertrand wrote to Fred about Gottlob a letter").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred474,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred474,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred474),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred474,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred474,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred474,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred474,Book)),
  true  ]


% ?-eng2flogic("a letter Bertrand wrote about Gottlob to Fred").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred475,
      transcribedTo=Book,
      done_by=Doer,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(Fred475,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred475),
  prepOf(iGottlob,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred475,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred475,'Fred'),
  isa(iGottlob,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred475,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter,
     'Bertrand'  ]),
  pre( knows(Doer,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred475,Book)),
  true  ]


% ?-eng2flogic("a letter Bertrand wrote to Fred about Gottlob").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred476,
      transcribedTo=Book,
      done_by=Doer,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(Fred476,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred476),
  prepOf(iGottlob,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred476,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred476,'Fred'),
  isa(iGottlob,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred476,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter,
     'Bertrand'  ]),
  pre( knows(Doer,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred476,Book)),
  true  ]


% ?-eng2flogic("a letter about Gottlob Bertrand wrote to Fred").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred477,
      transcribedTo=Book,
      done_by=Doer,
      topic=gottlob_bertrand,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,gottlob_bertrand),
  textString(gottlob_bertrand,"gottlob bertrand"),
  textString(Fred477,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred477),
  prepOf(gottlob_bertrand,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred477,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred477,'Fred'),
  isa(gottlob_bertrand,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred477,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter  ]),
  pre( knows(Doer,gottlob_bertrand)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(gottlob_bertrand,Book))),
  post( part_of(gottlob_bertrand,Book)),
  eventually( reads(Fred477,Book)),
  true  ]


% ?-eng2flogic("a letter about Gottlob to Fred Bertrand wrote").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred478,
      transcribedTo=Book,
      done_by=Doer,
      topic=gottlob_bertrand,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,gottlob_bertrand),
  textString(gottlob_bertrand,"gottlob bertrand"),
  textString(Fred478,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred478),
  prepOf(gottlob_bertrand,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred478,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred478,'Fred'),
  isa(gottlob_bertrand,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred478,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter  ]),
  pre( knows(Doer,gottlob_bertrand)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(gottlob_bertrand,Book))),
  post( part_of(gottlob_bertrand,Book)),
  eventually( reads(Fred478,Book)),
  true  ]


% ?-eng2flogic("a letter to Fred Bertrand wrote about Gottlob").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred479,
      transcribedTo=Book,
      done_by=Doer,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(Fred479,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred479),
  prepOf(iGottlob,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred479,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred479,'Fred'),
  isa(iGottlob,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred479,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter,
     'Bertrand'  ]),
  pre( knows(Doer,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred479,Book)),
  true  ]


% ?-eng2flogic("a letter to Fred about Gottlob Bertrand wrote").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred480,
      transcribedTo=Book,
      done_by=Doer,
      topic=gottlob_bertrand,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,gottlob_bertrand),
  textString(gottlob_bertrand,"gottlob bertrand"),
  textString(Fred480,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred480),
  prepOf(gottlob_bertrand,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred480,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred480,'Fred'),
  isa(gottlob_bertrand,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred480,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter  ]),
  pre( knows(Doer,gottlob_bertrand)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(gottlob_bertrand,Book))),
  post( part_of(gottlob_bertrand,Book)),
  eventually( reads(Fred480,Book)),
  true  ]


% ?-eng2flogic("about gottlob Bertrand wrote a letter to Fred").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred481,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred481,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred481),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred481,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred481,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred481,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred481,Book)),
  true  ]


% ?-eng2flogic("about gottlob Bertrand wrote to Fred a letter").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred482,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred482,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred482),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred482,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred482,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred482,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred482,Book)),
  true  ]


% ?-eng2flogic("about gottlob a letter Bertrand wrote to Fred").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred483,
      transcribedTo=Book,
      done_by=Doer,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(Fred483,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred483),
  prepOf(iGottlob,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred483,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred483,'Fred'),
  isa(iGottlob,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred483,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter,
     'Bertrand'  ]),
  pre( knows(Doer,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred483,Book)),
  true  ]


% ?-eng2flogic("about gottlob a letter to Fred Bertrand wrote").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred484,
      transcribedTo=Book,
      done_by=Doer,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(Fred484,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred484),
  prepOf(iGottlob,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred484,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred484,'Fred'),
  isa(iGottlob,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred484,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter,
     'Bertrand'  ]),
  pre( knows(Doer,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred484,Book)),
  true  ]


% ?-eng2flogic("about gottlob to Fred Bertrand wrote a letter").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred485,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred485,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred485),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred485,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred485,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred485,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred485,Book)),
  true  ]


% ?-eng2flogic("about gottlob to Fred a letter Bertrand wrote").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred486,
      transcribedTo=Book,
      done_by=Doer,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(Fred486,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred486),
  prepOf(iGottlob,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred486,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred486,'Fred'),
  isa(iGottlob,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred486,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter,
     'Bertrand'  ]),
  pre( knows(Doer,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred486,Book)),
  true  ]


% ?-eng2flogic("to fred Bertrand wrote a letter about Gottlob").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred491,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred491,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred491),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred491,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred491,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred491,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred491,Book)),
  true  ]


% ?-eng2flogic("to fred Bertrand wrote about Gottlob a letter").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred496,
      transcribedTo=Book,
      done_by=iBertrand,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(iBertrand,"bertrand"),
  textString(Fred496,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred496),
  prepOf(iGottlob,about),
  prepOf(iBertrand,by),
  prepOf(InstrumentOf,using),
  prepOf(Fred496,to),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred496,'Fred'),
  isa(iGottlob,tTopic),
  isa(iBertrand,tAnimate),
  isa(InstrumentOf,tTool),
  isa(Fred496,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,iBertrand),
  zexistsLeftOverText( [ a,
     letter  ]),
  pre( knows(iBertrand,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(iBertrand,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred496,Book)),
  true  ]


% ?-eng2flogic("to fred a letter Bertrand wrote about Gottlob").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred501,
      transcribedTo=Book,
      done_by=Doer,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(Fred501,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred501),
  prepOf(iGottlob,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred501,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred501,'Fred'),
  isa(iGottlob,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred501,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter,
     'Bertrand'  ]),
  pre( knows(Doer,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred501,Book)),
  true  ]


% ?-eng2flogic("to fred a letter about Gottlob Bertrand wrote").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred506,
      transcribedTo=Book,
      done_by=Doer,
      topic=gottlob_bertrand,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,gottlob_bertrand),
  textString(gottlob_bertrand,"gottlob bertrand"),
  textString(Fred506,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred506),
  prepOf(gottlob_bertrand,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred506,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred506,'Fred'),
  isa(gottlob_bertrand,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred506,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter  ]),
  pre( knows(Doer,gottlob_bertrand)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(gottlob_bertrand,Book))),
  post( part_of(gottlob_bertrand,Book)),
  eventually( reads(Fred506,Book)),
  true  ]


% ?-eng2flogic("to fred about Gottlob Bertrand wrote a letter").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred511,
      transcribedTo=Book,
      done_by=Doer,
      topic=gottlob_bertrand,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,gottlob_bertrand),
  textString(gottlob_bertrand,"gottlob bertrand"),
  textString(Fred511,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred511),
  prepOf(gottlob_bertrand,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred511,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred511,'Fred'),
  isa(gottlob_bertrand,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred511,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ a,
     letter,
     by  ]),
  pre( knows(Doer,gottlob_bertrand)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(gottlob_bertrand,Book))),
  post( part_of(gottlob_bertrand,Book)),
  eventually( reads(Fred511,Book)),
  true  ]


% ?-eng2flogic("to fred about Gottlob a letter Bertrand wrote").
[ cmd( write, past,
    [ do=Write,
      receiver=Fred516,
      transcribedTo=Book,
      done_by=Doer,
      topic=iGottlob,
      instrument=InstrumentOf  ]),
  transcribedTo(Write,Book),
  topic(Write,iGottlob),
  textString(iGottlob,"gottlob"),
  textString(Fred516,"fred"),
  textString(Write,"wrote"),
  receiver(Write,Fred516),
  prepOf(iGottlob,about),
  prepOf(InstrumentOf,using),
  prepOf(Fred516,to),
  prepOf(Doer,by),
  prepOf(Write,do),
  prepOf(Book,some),
  occurs(Write,past),
  iza(Fred516,'Fred'),
  isa(iGottlob,tTopic),
  isa(InstrumentOf,tTool),
  isa(Fred516,tAnimate),
  isa(Doer,tAnimate),
  isa(Write,actWriting),
  isa(Book,tObject),
  instrument(Write,InstrumentOf),
  done_by(Write,Doer),
  zexistsLeftOverText( [ by,
     a,
     letter,
     'Bertrand'  ]),
  pre( knows(Doer,iGottlob)),
  pre( equals(
      instrumentOf(write),
      InstrumentOf)),
  pre( cntrls(Doer,InstrumentOf)),
  pre( can_reach(InstrumentOf,Book)),
  pre( ~( part_of(iGottlob,Book))),
  post( part_of(iGottlob,Book)),
  eventually( reads(Fred516,Book)),
  true  ]


true.

mu:  ?-
