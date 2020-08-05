
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

  " in London at 2pm approx 200 using mouths by men very loudly orderTo protest about law did not acually give to police some hell"


  Lets make each one a frameroles:

  ?- premutation(["in London", "about 2pm", "approx 200", "using mouths", "by men", "very loudly", "orderto protest", "about law"
                                                "did not", "acually give", "to police", "some hell"], Res).


  is the permutations output accepbale?


  If this is correct you can immagine a declarion as the "psuedo-preps"

   in _ about _ approx _ using _ by _ very _ orderto _ about  _ did _ acually _ to _ some _  of this GIVE frame



  dataformat would be...


  default_args_prep_order(give, in-place, about-time, approx-number, using-device,
               by-doer, very-adverb, orderto-reason, about-theme, did-truthvalue, acually-verb, to-doee, some-thing).

*/

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



eng2logic_frame_test(Sentence):- 
  wdmsg(english=Sentence),
  eng2logic_frame(_, Sentence, FrameOut, _Mem),
  pprint(FrameOut, always),!.


some_eng2logic_frame_test([give,sally,love,joe]).
some_eng2logic_frame_test([give,sally,it]).
some_eng2logic_frame_test([give,to,sally]).
some_eng2logic_frame_test([give | English]):-
   permutation([[by, player1], [to, sally], [love]],P),flatten(P,English).
some_eng2logic_frame_test(English):- fail, 
  permutation([[by, player1],gave, [to, sally], [love]],P),flatten(P,English).
some_eng2logic_frame_test([some,love,we,gave,to,sally]).

some_eng2logic_frame_test([to,sally,we,gave,some,love]).

run_end2cmd_tests:- make,
  forall(some_eng2logic_frame_test(English),eng2logic_frame_test(English)).



parseForMWType(_Type,ParseText,[TextArg],Right):- 
  append([TextArg],Right,ParseText), \+ is_prep(TextArg).

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
    %push_frame(textString(Action, VerbText), Frame),
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
 is_prep_for_type(Prep,Type),parseForMWType(Type,Text,Left,Right),
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
   ignore((member(isa(Type),FrameArg),push_frame(isa(NewArg, Type), Frame))),
   show_failure(parseForMWType(Type,TextArgRight,TextArg,Right)),!,
   txt_to_obj(TextArg,NewArgValue),
   ignore((member(var(NewArg),FrameArg),var(NewArg),ignore(=(NewArgValue,NewArg)))),
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
    show_failure(parseForMWType(Type,Text,TextArg,Right)))) 
      -> (push_frame(textString(NewArg, TextArg), Frame),txt_to_obj(TextArg,NewArgValue))
      ; Right = Text),

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
correct_normals((U, UU), Normals):- !, correct_normals(U, UC), correct_normals(UU, UUC), !, append(UC, UUC, Normals).
correct_normals([U|UU], Normals):- !, correct_normals(U, UC), correct_normals(UU, UUC), !, append(UC, UUC, Normals).
correct_normals(P, Normals):- P=..[F, A1, A2|List], wrapper_funct_correction(F),
  P1=..[F, A1], P2=..[F, A2|List], !,
  correct_normals([P1|P2], Normals).
correct_normals(Normal, [Normal]).

frcmp(P1, P2, Cmp):- (\+ compound(P1) ; \+ compound(P2)), !, compare(P1, P2, Cmp).
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

verb_frame1(Action, Write,
  [   +default(Write)+var(Action)+isa(actWriting)+prep(do),
      default(surface)+var(Object)+prep(on)+prep(in)+prep(under)+isa(tObject)+pred(objectActedOn), 
      default(glyphs)+var(Depliction)+prep(some)+isa(tGlyphic)+pred(deplicts), 
      default(doer)+var(Doer)+isa(tAnimate)+prep(from)+prep(by)+pred(done_by), 
      +default(tKnife)+var(Instr)+prep(using;with)+isa(tTool)+pred(instrument)],  
  [done_by(Action, Doer),
      pre(isa(Instr, tKnife), cntrls(Doer, Instr), can_reach(Instr, Object)),
      part_of(Surface, Object),
      ~pre(exists(Depliction)),
       pre(~part_of(Depliction, Surface)),
       post(part_of(Depliction, Surface))]):-
  arg(_,v(etch,write,carve,dig),Write).

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

