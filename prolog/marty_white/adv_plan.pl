/*
% NomicMUD: A MUD server written in Prolog
% Maintainer: Douglas Miles
% Dec 13, 2035
%
% Bits and pieces:
%
% LogicMOO, Inform7, FROLOG, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
% 
% Copyright (C) 2004 Marty White under the GNU GPL 
% Sept 20,1999 - Douglas Miles
% July 10,1996 - John Eikenberry 
%
% Logicmoo Project changes:
%
% Main file.
%
*/

action_handle_goals(Agent, Mem0, Mem0):- 
  \+ thought(goals([_|_]), Mem0), !,
 bugout3('~w: no goals exist~n', [Agent], autonomous).

action_handle_goals(Agent, Mem0, Mem1):- 
 bugout3('~w: goals exist: generating a plan...~n', [Agent], autonomous),
 Knower = Agent,
 generate_plan(Knower, Agent, NewPlan, Mem0), !,
 serialize_plan(Knower, Agent, NewPlan, Actions), !,
 bugout3('Planned actions are ~w~n', [Actions], autonomous),
 Actions = [Action|_],
 add_todo(Action, Mem0, Mem1).

% If goals exist, forget them (since ite above failed)
action_handle_goals(Agent, Mem0, Mem9) :-
 forget(goals([G0|GS]), Mem0, Mem1),
 memorize(goals([]), Mem1, Mem2),
 bugout3('~w: Can\'t solve goals ~p. Forgetting them.~n', [Agent,[G0|GS]], autonomous),
 memorize_appending(skipped_goals([G0|GS]),Mem2,Mem9),!.



has_satisfied_goals(Agent, Mem0, Mem3):-  
 forget(goals([G0|GS]), Mem0, Mem1),
 Goals = [G0|GS],
 agent_thought_model(Agent, ModelData, Mem0),
 select_unsatisfied_conditions(Goals, Unsatisfied, ModelData) ->
 subtract(Goals,Unsatisfied,Satisfied), !,
 Satisfied \== [],
 memorize(goals(Unsatisfied), Mem1, Mem2),
 bugout3('~w Goals some Satisfied: ~p.  Unsatisfied: ~p.~n', [Agent, Satisfied, Unsatisfied], autonomous),
 memorize_appending(goals_satisfied(Satisfied), Mem2, Mem3), !.

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
:- nop(ensure_loaded('adv_plan_opers')).
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:- op(900, fy, '~').

/*
Situation:

Person is in Kitchen
Floyd is in Pantry
The Pantry is North of Kitchen


Person wants goal satification to be easy.
Person thinks to know their environment, goal satisfiation will be easier.
Person goal is to know environment.
Person thinks if one is being an explorer, they will know their environment.
Person think doing what explorers do will make persons goal satisfaction easier.
Person thinks being an explorer means to find unexplored exits and travel to them.
Person thinks exits are known by looking.
Person goal is to have looked
Person the way to satifiy the goal to have looked is to: add_todo(Person,look(Person))
Person DOES look(Person)
Person notices exits: north, south, east, west.
Person thinks north is unexplored
Person thinks going north will be acting like an explorer
Person goal is to go north
Person makes plan to go north.. the plan is very simple: [go_dir(Person,walk,north)]
Person DOES go_dir(Person,walk,north)
Person leaves kitchen to the north
Kitchen(thus Person) sees Person departing kitchen to the north
Person enters pantry from the south
Pantry(thus Floyed and Person) sees Person enter pantry arriving from the south
Floyd belives Person was somewhere other than pantry before
Floyd belives Person traveled north and there might be an exit in the opposite dirrection (south) leading somewhere other than pantry
Person belives pantry is where they end up if they go north from kitchen
Person belives kitchen is where they end up if they go south from pantry


look(Person) is a cheap and effective strategy


event(trys(go_dir(Person,walk,north)))
  




precond_matches_effect(Cond, Cond).

precond_matches_effects(path(Here, There), StartEffects) :- 
 find_path(Here, There, _Route, StartEffects).
precond_matches_effects(exists(Object), StartEffects) :-
 in_model(h(_, Object, _), StartEffects)
 ;
 in_model(h(_, _, Object), StartEffects).
precond_matches_effects(Cond, Effects) :-
 in_model(E, Effects),
 precond_matches_effect(Cond, E).
*/
 
% oper(_Self, Action, Desc, Preconds, Effects)

sequenced(_Self,
  [ %Preconds:
  Here \= Self, There \= Self,
  \+ props(Self, knows_verbs(goto, f)),
  h(WasRel, Self, Here),
  props(Here, inherit(place, t)),
  props(There, inherit(place, t)),
  \+ in_state(~(open), There),
  \+ in_state(~(open), Here),
  \+ in_state(~(open), Dir),
  reverse_dir(Dir,RDir),
  h(exit(Dir), Here, There), % path(Here, There)
  % %Action:
  did(go_dir(Self, Walk, Dir)),
  %PostConds:
  ~h(WasRel, Self, Here),
  notice(Here,leaves(Self,Here,WasRel)),
  notice(Self,msg(cap(subj(actor(Self))),does(Walk), from(place(Here)), via(exit(Dir)) , Rel, to(place(There)))),
  h(Rel, Self, There),
  notice(There,enters(Self,There,RDir))]).

only_goto:- true.
planner_only:- nb_current(opers, planner).

:- discontiguous(implications/4).

implications(does, go_dir(Agent, Walk, ExitName),
     [ h(In, Agent, Here), h(exit(ExitName), Here, There) ],
     [ event(moving_in_dir(Agent, Walk, ExitName, In, Here, In, There)) ]).


implications(event, moving_in_dir(Object, Manner, ExitName, From, Here, To, There),
     [ Here \= There,  h(exit(ExitName), Here, There), h(exit(ReverseExit), There, Here) ],
     [  event(departing(Object, From, Here, Manner, ExitName)),
        event(arriving(Object, To, There, Manner,  ReverseExit))
        ]).

implications(event, departing(Agent, In, There, _Walk, ExitName),
    [ h(In, Agent, There), h(exit(ExitName), There, _)], [~h(In, Agent, There)]).

implications(event, arriving(Agent, In, Here, _Walk, ReverseExit),
    [~h(In, Agent, Here), h(exit(ReverseExit), Here, _)], [ h(In, Agent, Here)]).


:- discontiguous(oper/4).
% oper(_Self, Action, Preconds, Effects)
oper(Self, Action, Preconds, Effects):- % Hooks to KR above
 fail, sequenced(Self, Whole),
 append(Preconds,[did(Action)|Effects],Whole).



oper(Agent, go_dir(Agent, Walk, ExitName),
     [ Here \= Agent, There \= Agent, Here \= There, 
       k(In, Agent, Here),
       b(exit(ExitName), Here, _),
       h(exit(ExitName), Here, There),       
       ReverseExit \= ExitName, 
       h(exit(ReverseExit), There, Here)],
     [ 
        % implies believe(Agent, ~h(in, Agent, Here)),
        precept_local(Here, departing(Agent, In, Here, Walk, ExitName)),        
     ~h(In, Agent, Here),  
      h(In, Agent, There),
      %b(exit(ExitName), Here, There),
      %b(exit(ReverseExit), There, Here),
        % implies, believe(Agent, h(in, Agent, There)),
       precept_local(There, arriving(Agent, In, There, Walk,  ReverseExit))
   %  ~b(In, Agent, Here),  
   %   b(In, Agent, There),
        % There \= Here
        ]):- dif(ExitName, escape).


% Return an operator after substituting Agent for Agent.
oper(Agent, go_dir(Agent, _Walk, ExitName),
     [ b(in, Agent, Here),     
       b(exit(ExitName), Here, There),             
       Here \= Agent, There \= Agent, Here \= There
       ], % path(Here, There)
     [ ~b(in, Agent, Here),
        b(in, Agent, There)
     ]):- fail.

% equiv(precept_local(Here, departing(Agent, In, Here, Walk, ExitName)))  ~h(in, Agent, Here)

oper(Agent, go_dir(Agent, Walk, Escape),
     [ Object \= Agent, Here \= Agent,
       k(OldIn, Agent, Object),
       h(NewIn, Object, Here),
       Object \= Here      
     ],
     [ 
        precept_local(Object, departing(Agent, OldIn, Object, Walk, Escape)),
        % implies believe(Agent, ~h(in, Agent, Object)),
       ~k(OldIn, Agent, Object),        
        k(NewIn, Agent, Here),        
        precept_local(Here, arriving(Agent, NewIn, Here, Walk, EscapedObject))
        % implies, believe(Agent, h(in, Agent, Here))
     ]) :- Escape = escape, EscapedObject = escaped, \+ only_goto.


% Looking causes Percepts
oper(Agent, looky(Agent),
     [ Here \= Agent,
       % believe(Agent, h(_, Agent, _)),
       h(Sub, Agent, Here)       
       ], 
     [ foreach(
         (h(Sub, Child, Here), must_mw1(h(At, Child, Where))), 
             precept(Agent, h(At, Child, Where))) ] ) :- \+ only_goto.



% the World agent has a *goal that no events go unhandled
oper(world, handle_events(Here),
     [ precept_local(Here, Event)],               
     [ ~precept_local(Here, Event), 
       foreach((h(in, Agent, Here),prop(Agent,inherited(preceptQ))),precept(Agent,Event))]):- \+ only_goto.


% deducer Agents who preceive leavers from some exit believe the departing point is an exit 
oper(Agent, precept(Agent, departing(Someone, In, Here, Walk, ExitName)),
     [ did(go_dir(Someone, Walk, ExitName)),
       prop(Agent,inherited(deducer)),
       h(In, Agent, Here) ],
     [ believe(Agent, h(exit(ExitName), Here, _)),
       believe(Agent, prop(Someone,inherited(actor)))]):- \+ only_goto.

% deducer Agents who preceive arivers from some entrance believe the entry location is an exit 
oper(Agent, precept(Agent, arriving(Someone, In, Here, Walk, ExitName)),
     [ did(go_dir(Someone, Walk, ExitName)),
       prop(Agent,inherited(deducer)),
       believe(Agent, h(In, Agent, Here)) ],

     [ believe(Agent, h(exit(ExitName), Here, _)),
       believe(Agent, did(go_dir(Someone, Walk, ExitName))),
       believe(Agent, h(In, Someone, Here)),
       believe(Agent, prop(Someone,inherited(actor)))]):- \+ only_goto.

% deducer Agents who preceive arivers from some entrance believe the entry location is an exit 
oper(Agent, precept(Agent, arriving(Someone, In, Here, Walk, ExitName)),
     [ did(go_dir(Someone, Walk, ExitName)),
       isa(Agent,deducer),
       b(Agent, 
                [precept_local(There, departing(Someone, In, There, Walk, EnterName)),
                in(Agent, Here)]) ],
     [ b(Agent, 
                [exit(ExitName, Here, There),
                did(go_dir(Someone, Walk, EnterName)),
                in(Someone, Here),
                isa(Someone,actor)])]):- \+ only_goto.


% h = is really true
% b = is belived
% k = is belived and really true
oper(Agent, take(Agent, Thing), % from same room
  [ Thing \= Agent, exists(Thing),
    There \= Agent,
   k(takeable, Agent, Thing),
   h(At, Thing, There)
  ],
  [ ~ k(At, Thing, There),
      moves( At, Thing, There, take, held_by, Thing, Agent),
      k(held_by, Thing, Agent)]):- \+ only_goto.

oper(Agent, drop(Agent, Thing),
  [ Thing \= Agent, exists(Thing), 
      k(held_by, Thing, Agent),
      k(At, Agent, Where)],
  [ ~ h(held_by, Thing, Agent),
      moves(held_by, Thing, Agent, drop, At, Thing, Where),
      k(At, Thing, Where)] ):- \+ only_goto.

oper(Agent, put(Agent, Thing, Relation, Where), % in somewhere
  [ Thing \= Agent, exists(Thing), exists(Where),
      k(held_by, Thing, Agent),
      k(touchable, Agent, Where),
      has_rel(Relation, Where),
    ~ is_closed(Relation, Where)],
  [ ~ k(held_by, Thing, Agent),
      moves(held_by, Thing, Agent, put, Relation, Thing, Where),
      k(Relation, Thing, Where)] ):- \+ only_goto.
     

oper(Agent, give(Agent, Thing, Recipient), % in somewhere
  [ Thing \= Agent, Recipient \= Agent,
      exists(Thing), exists(Recipient),
      k(held_by, Thing, Agent),
      k(touchable, Agent, Recipient),
      k(touchable, Recipient, Agent)],
  [ ~ k(held_by, Thing, Agent),
      moves(held_by, Thing, Agent, give, held_by, Thing, Recipient),
      k(held_by, Thing, Recipient)] ):- \+ only_goto.

oper(Agent, tell(Agent, Player, [please, give, Recipient, the(Thing)]),
    [   Recipient \= Player, Agent \= Player,
        Thing \= Agent, Thing \= Recipient, Thing \= Player,
        exists(Thing), exists(Recipient), exists(Player),
        k(held_by, Thing, Player),
        k(touchable, Player, Recipient),
        k(touchable, Recipient, Player)],
    [ ~ k(held_by, Thing, Player),
        moves(held_by, Thing, Player, give, held_by, Thing, Recipient),
        k(held_by, Thing, Recipient)] ):- \+ only_goto.

% Return an operator after substituting Agent for Self.
operagent(Agent, Action, BConds, BEffects) :- oper_splitk(Agent, Action, Conds, Effects),
  once((oper_beliefs(Agent, Conds, BConds),
  oper_beliefs(Agent, Effects, BEffects))).

oper_beliefs(_Agent, [], []):- !.
oper_beliefs(Agent, [ believe(Agent2,H)|Conds], [H|BConds]):- Agent == Agent2, !,
  oper_beliefs(Agent, Conds, BConds).
oper_beliefs(Agent, [ A\=B|Conds], [A\=B|BConds]):- !,
  oper_beliefs(Agent, Conds, BConds).
oper_beliefs(Agent, [ exists(B)|Conds], [exists(B)|BConds]):-
  oper_beliefs(Agent, Conds, BConds).
oper_beliefs(Agent, [ _|Conds], BConds):-
  oper_beliefs(Agent, Conds, BConds).

% Return the initial list of operators.
initial_operators(Agent, Operators) :-
 findall(oper(Agent, Action, Conds, Effects),
   operagent(Agent, Action, Conds, Effects),
   Operators).


precondition_matches_effect(Cond, Effect) :-
 % player_format('  Comparing cond ~w with effect ~w: ', [Cond, Effect]),
 Cond = Effect. %, player_format('match~n', []).

%precondition_matches_effect(~ ~ Cond, Effect) :-
% precondition_matches_effect(Cond, Effect).
%precondition_matches_effect(Cond, ~ ~ Effect) :-
% precondition_matches_effect(Cond, Effect).

precondition_matches_effects(Cond, Effects) :-
 member(E, Effects),
 precondition_matches_effect(Cond, E).
preconditions_match_effects([Cond|Tail], Effects) :-
 precondition_matches_effects(Cond, Effects),
 preconditions_match_effects(Tail, Effects).

% plan(steps, orderings, bindings, links)
% step(id, operation)
new_plan(Self, CurrentState, GoalState, Plan) :-
 Plan = plan([step(start , oper(Self, true, [], CurrentState)),
    step(finish, oper(Self, true, GoalState, []))],
    [before(start, finish)],
    [],
    []).


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
:- nop(ensure_loaded('adv_util_ordering')).
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

isbefore(I, J, Orderings) :-
 member(before(I, J), Orderings).
%isbefore(I, K, Orderings) :-
% select_from(before(I, J), Orderings, Remaining),
% isbefore(J, K, Remaining).

% These will fail to create inconsistent orderings.
%add_ordering(B, Orderings, Orderings) :-
% member(B, Orderings), !.
%add_ordering(before(I, K), Orderings, [before(I, K)|Orderings]) :-
% I \= K,
% \+ isbefore(K, I, Orderings),
% bugout3(' ADDED ~w to orderings.~n', [before(I, K)], planner).
%add_ordering(B, O, O) :-
% bugout3(' FAILED to add ~w to orderings.~n', [B], planner),
% fail.

add_ordering(B, Orderings, Orderings) :-
 member(B, Orderings), !.
add_ordering(before(I, J), Order0, Order1) :-
 I \= J,
 \+ isbefore(J, I, Order0),
 add_ordering3(before(I, J), Order0, Order0, Order1).
add_ordering(B, Order0, Order0) :-
 once(pick_ordering(Order0, List)),
 bugout3(' FAILED add_ordering ~w to ~w~n', [B, List], planner),
 fail.

% add_ordering3(NewOrder, ToCheck, OldOrderings, NewOrderings)
add_ordering3(before(I, J), [], OldOrderings, NewOrderings) :-
 union([before(I, J)], OldOrderings, NewOrderings).
add_ordering3(before(I, J), [before(J, K)|Rest], OldOrderings, NewOrderings) :-
 I \= K,
 union([before(J, K)], OldOrderings, Orderings1),
 add_ordering3(before(I, J), Rest, Orderings1, NewOrderings).
add_ordering3(before(I, J), [before(H, I)|Rest], OldOrderings, NewOrderings) :-
 H \= J,
 union([before(H, J)], OldOrderings, Orderings1),
 add_ordering3(before(I, J), Rest, Orderings1, NewOrderings).
add_ordering3(before(I, J), [before(H, K)|Rest], OldOrderings, NewOrderings) :-
 I \= K,
 H \= J,
 add_ordering3(before(I, J), Rest, OldOrderings, NewOrderings).

% insert(E, L, L1) inserts E into L producing L1
% E is not added it is already there.
insert(X, [], [X]).
insert(A, [A|R], [A|R]).
insert(A, [B|R], [B|R1]) :-
 A \== B,
 insert(A, R, R1).

add_orderings([], Orderings, Orderings).
add_orderings([B|Tail], Orderings, NewOrderings) :-
 add_ordering(B, Orderings, Orderings2),
 add_orderings(Tail, Orderings2, NewOrderings).

del_ordering_node(I, [before(I)|Tail], Orderings) :-
 del_ordering_node(I, Tail, Orderings).
del_ordering_node(I, [before(_, I)|Tail], Orderings) :-
 del_ordering_node(I, Tail, Orderings).
del_ordering_node(I, [before(X, Y)|Tail], [before(X, Y)|Orderings]) :-
 X \= I,
 Y \= I,
 del_ordering_node(I, Tail, Orderings).
del_ordering_node(_I, [], []).

ordering_nodes(Orderings, Nodes) :-
 setof(Node,
  Other^(isbefore(Node, Other, Orderings);isbefore(Other, Node, Orderings)),
  Nodes).

pick_ordering(Orderings, List) :-
 ordering_nodes(Orderings, Nodes),
 pick_ordering(Orderings, Nodes, List).

pick_ordering(Orderings, Nodes, [I|After]) :-
 select_from(I, Nodes, RemainingNodes),
 forall(member(J, RemainingNodes), \+ isbefore(J, I, Orderings) ),
 pick_ordering(Orderings, RemainingNodes, After).
pick_ordering(_Orderings, [], []).

test_ordering :-
 bugout3('ORDERING TEST:~n', planner),
 Unordered =
 [ before(start, finish),
  before(start, x),
  before(start, y), before(y, finish),
  before(x, z),
  before(z, finish)
 ],
 once(add_orderings(
 Unordered,
 [],
 Orderings)),
 bugout3(' unordered was ~w~n', [Unordered], planner),
 bugout3(' ordering is ~w~n', [Orderings], planner),
 pick_ordering(Orderings, List),
 bugout3(' picked ~w~n', [List], planner),
 fail.
test_ordering :- bugout3(' END ORDERING TEST~n', planner).


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
:- nop(ensure_loaded('adv_planner_conds')).
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


cond_is_achieved(step(J, _Oper), C, plan(Steps, Orderings, _)) :-
 member(step(I, oper(_Self, _, _, Effects)), Steps),
 precondition_matches_effects(C, Effects),
 isbefore(I, J, Orderings),
 bugout3('  Cond ~w of step ~w is achieved!~n', [C, J], planner).
cond_is_achieved(step(J, _Oper), C, plan(_Steps, _Orderings, _)) :-
 bugout3('  Cond ~w of step ~w is NOT achieved.~n', [C, J], planner),
 !, fail.

% Are the preconditions of a given step achieved by the effects of other
% steps, or are already true?
step_is_achieved(step(_J, oper(_Self, _, [])), _Plan). % No conditions, OK.
step_is_achieved(step(J, oper(Self, _, [C|Tail])), plan(Steps, Orderings, _)) :-
 cond_is_achieved(step(J), C, plan(Steps, Orderings, _)),
 step_is_achieved(step(J, oper(Self, _, Tail)), plan(Steps, Orderings, _)).

all_steps_are_achieved([Step|Tail], Plan) :-
 step_is_achieved(Step, Plan),
 all_steps_are_achieved(Tail, Plan).
all_steps_are_achieved([], _Plan).

is_solution(plan(Steps, O, B, L)) :-
 all_steps_are_achieved(Steps, plan(Steps, O, B, L)).

% Create a new step given an operator.
operator_as_step(oper(Self, Act, Cond, Effect), step(Id, oper(Self, Act, Cond, Effect))) :-
 Act =.. [Functor|_],
 atom_concat(Functor, '_step_', Prefix),
 gensym(Prefix, Id).

% Create a list of new steps given a list of operators.
operators_as_steps([], []).
operators_as_steps([Oper | OpTail], [Step | StepTail]) :-
 copy_term(Oper, FreshOper), % Avoid instantiating operator database.
 operator_as_step(FreshOper, Step),
 operators_as_steps(OpTail, StepTail).

cond_as_goal(ID, Cond, goal(ID, Cond)).
conds_as_goals(_, [], []).
conds_as_goals(ID, [C|R], [G|T]) :-
 cond_as_goal(ID, C, G),
 conds_as_goals(ID, R, T).

cond_equates(Cond0, Cond1) :- Cond0 = Cond1.
cond_equates(h(X, Y, Z), h(X, Y, Z)).
cond_equates(~ ~ Cond0, Cond1) :- cond_equates(Cond0, Cond1).
cond_equates(Cond0, ~ ~ Cond1) :- cond_equates(Cond0, Cond1).

cond_negates(~ Cond0, Cond1) :- cond_equates(Cond0, Cond1).
cond_negates(Cond0, ~ Cond1) :- cond_equates(Cond0, Cond1).

% Protect 1 link from 1 condition
% protect(link_to_protect, threatening_step, threatening_cond, ...)
protect(causes(StepI, _Cond0, _StepJ), StepI, _Cond1, Order0, Order0) :-
 !. % Step does not threaten itself.
protect(causes(_StepI, _Cond0, StepJ), StepJ, _Cond1, Order0, Order0) :-
 !. % Step does not threaten itself.
%protect(causes(_StepI, Cond, _StepJ), _StepK, Cond, Order0, Order0) :-
% !. % Cond does not threaten itself.
protect(causes(_StepI, Cond0, _StepJ), _StepK, Cond1, Order0, Order0) :-
 \+ cond_negates(Cond0, Cond1),
 !.
protect(causes(StepI, Cond0, StepJ), StepK, _Cond1, Order0, Order0) :-
 bugout3(' THREAT: ~w <> causes(~w, ~w, ~w)~n',
   [StepK, StepI, Cond0, StepJ], planner),
 fail.
protect(causes(StepI, _Cond0, StepJ), StepK, _Cond1, Order0, Order1) :-
 % Protect by moving threatening step before or after this link.
 add_ordering(before(StepK, StepI), Order0, Order1),
 bugout3(' RESOLVED with ~w~n', [before(StepK, StepI)], planner)
 ;
 add_ordering(before(StepJ, StepK), Order0, Order1),
 bugout3(' RESOLVED with ~w~n', [before(StepJ, StepK)], planner).
protect(causes(StepI, Cond0, StepJ), StepK, _Cond1, Order0, Order0) :-
 bugout3(' FAILED to resolve THREAT ~w <> causes(~w, ~w, ~w)~n',
   [StepK, StepI, Cond0, StepJ], planner),
 once(pick_ordering(Order0, Serial)),
 bugout3(' ORDERING is ~w~n', [Serial], planner),
 fail.

% Protect 1 link from 1 step's multiple effects
protect_link(_Link, _StepID, [], Order0, Order0).
protect_link(Link, StepID, [Cond|Effects], Order0, Order2):-
 protect(Link, StepID, Cond, Order0, Order1),
 protect_link(Link, StepID, Effects, Order1, Order2).

% Protect all links from 1 step's multiple effects
% protect_links(links_to_protect, threatening_step, threatening_cond, ...)
protect_links([], _StepID, _Effects, Order0, Order0).
protect_links([Link|Tail], StepID, Effects, Order0, Order2) :-
 protect_link(Link, StepID, Effects, Order0, Order1),
 protect_links(Tail, StepID, Effects, Order1, Order2).

% Protect 1 link from all steps' multiple effects
protect_link_all(_Link, [], Order0, Order0).
protect_link_all(Link, [step(StepID, oper(_Self, _, _, Effects))|Steps], Order0, Order2) :-
 protect_link(Link, StepID, Effects, Order0, Order1),
 protect_link_all(Link, Steps, Order1, Order2).

%add_binding((X\=Y), Bindings0, Bindings) :-
% X \= Y, % if they can't bind, don't bother to add them.
add_binding((X\=Y), Bindings, [(X\=Y)|Bindings]) :-
 X \== Y, % if they're distinct,
 % \+ \+ X=Y, % but could bind
 bindings_valid(Bindings).

bindings_valid([]).
bindings_valid([(X\=Y)|Bindings]) :-
 X \== Y,
 bindings_valid(Bindings).
%bindings_valid(B) :-
% bugout3(' BINDINGS are *INVALID*: ~w~n', [B], planner),
% fail.

bindings_safe([]) :- bugout3(' BINDINGS are SAFE~n', planner).
bindings_safe([(X\=Y)|Bindings]) :-
 X \= Y,
 bindings_safe(Bindings).
%bindings_safe(B) :-
% bugout3(' BINDINGS are *UNSAFE*: ~w~n', [B], planner),
% fail.


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODE FILE SECTION
:- nop(ensure_loaded('adv_planner_main')).
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


choose_operator([goal(GoalID, GoalCond)|Goals0], Goals0,
     _Operators,
     plan(Steps, Order0, Bindings, OldLinks),
     plan(Steps, Order9, Bindings, NewLinks),
     Depth, Depth ) :-
 % Achieved by existing step?
 member(step(StepID, oper(_Self, _Action, _Preconds, Effects)), Steps),
 precondition_matches_effects(GoalCond, Effects),
 add_ordering(before(StepID, GoalID), Order0, Order1),
 % Need to protect new link from all existing steps
 protect_link_all(causes(StepID, GoalCond, GoalID), Steps, Order1, Order9),
 union([causes(StepID, GoalCond, GoalID)], OldLinks, NewLinks),
 bindings_valid(Bindings),
 bugout3(' EXISTING step ~w satisfies ~w~n', [StepID, GoalCond], planner).
choose_operator([goal(_GoalID, X \= Y)|Goals0], Goals0,
     _Operators,
     plan(Steps, Order, Bindings, Links),
     plan(Steps, Order, NewBindings, Links),
     Depth, Depth ) :-
 add_binding((X\=Y), Bindings, NewBindings),
 bugout3(' BINDING ADDED: ~w~n', [X\=Y], planner).
choose_operator([goal(GoalID, ~ GoalCond)|Goals0], Goals0,
     _Operators,
     plan(Steps, Order0, Bindings, OldLinks),
     plan(Steps, Order9, Bindings, NewLinks),
     Depth, Depth ) :-
 % Negative condition achieved by start step?
 memberchk(step(start, oper(_Self, _Action, _Preconds, Effects)), Steps),
 \+ precondition_matches_effects(GoalCond, Effects),
 add_ordering(before(start, GoalID), Order0, Order1),
 % Need to protect new link from all existing steps
 protect_link_all(causes(start, GoalCond, GoalID), Steps, Order1, Order9),
 union([causes(start, ~ GoalCond, GoalID)], OldLinks, NewLinks),
 bindings_valid(Bindings),
 bugout3(' START SATISFIES NOT ~w~n', [GoalCond], planner).
choose_operator([goal(GoalID, exists(GoalCond))|Goals0], Goals0,
     _Operators,
     plan(Steps, Order0, Bindings, OldLinks),
     plan(Steps, Order9, Bindings, NewLinks),
     Depth, Depth ) :-
 memberchk(step(start, oper(_Self, _Action, _Preconds, Effects)), Steps),
 ( in_model(h(_Prep, GoalCond, _Where), Effects);
 in_model(h(_Prep, _What, GoalCond), Effects)),
 add_ordering(before(start, GoalID), Order0, Order1),
 % Need to protect new link from all existing steps
 protect_link_all(causes(start, GoalCond, GoalID), Steps, Order1, Order9),
 union([causes(start, exists(GoalCond), GoalID)], OldLinks, NewLinks),
 bindings_valid(Bindings),
 bugout3(' START SATISFIES exists(~w)~n', [GoalCond], planner).
choose_operator([goal(GoalID, GoalCond)|Goals0], Goals2,
     Operators,
     plan(OldSteps, Order0, Bindings, OldLinks),
     plan(NewSteps, Order9, Bindings, NewLinks),
     Depth0, Depth ) :-
 % Condition achieved by new step?
 Depth0 > 0,
 Depth is Depth0 - 1,
 %operators_as_steps(Operators, FreshSteps),
 copy_term(Operators, FreshOperators),
 % Find a new operator.
 %member(step(StepID, oper(_Self, Action, Preconds, Effects)), FreshSteps),
 member(oper(Self, Action, Preconds, Effects), FreshOperators),
 precondition_matches_effects(GoalCond, Effects),
 operator_as_step(oper(Self, Action, Preconds, Effects),
     step(StepID, oper(Self, Action, Preconds, Effects)) ),
 % Add ordering constraints.
 add_orderings([before(start, StepID),
     before(StepID, GoalID),
     before(StepID, finish)],
    Order0, Order1),
 % Need to protect existing links from new step.
 protect_links(OldLinks, StepID, Effects, Order1, Order2),
 % Need to protect new link from all existing steps
 protect_link_all(causes(StepID, GoalCond, GoalID), OldSteps, Order2, Order9),
 % Add the step.
 append(OldSteps, [step(StepID, oper(Self, Action, Preconds, Effects))], NewSteps),
 % Add causal constraint.
 union([causes(StepID, GoalCond, GoalID)], OldLinks, NewLinks),
 % Add consequent goals.
 conds_as_goals(StepID, Preconds, NewGoals),
 append(Goals0, NewGoals, Goals2),
 bindings_valid(Bindings),
 bugout3(' ~w CREATED ~w to satisfy ~w~n',
   [Depth, StepID, GoalCond], autonomous),
 pprint(oper(Self, Action, Preconds, Effects), planner),
 once(pick_ordering(Order9, List)),
 bugout3(' Orderings are ~w~n', [List], planner).
choose_operator([goal(GoalID, GoalCond)|_G0], _G2, _Op, _P0, _P2, D, D) :-
 bugout3(' CHOOSE_OPERATOR FAILED on goal:~n goal(~w, ~w)~n',
   [GoalID, GoalCond], planner),
 !, fail.
choose_operator(G0, _G2, _Op, _P0, _P2, D, D) :-
 bugout3(' !!! CHOOSE_OPERATOR FAILED: G0 = ~w~n', [G0], planner), !, fail.

planning_loop([], _Operators, plan(S, O, B, L), plan(S, O, B, L), _Depth, _TO ) :-
 bugout3('FOUND SOLUTION?~n', planner),
 bindings_safe(B).
planning_loop(Goals0, Operators, Plan0, Plan2, Depth0, Timeout) :-
 %Limit > 0,
 get_time(Now),
 (Now > Timeout -> throw(timeout(planner)); true),
 bugout3('GOALS ARE: ~w~n', [Goals0], planner),
 choose_operator(Goals0, Goals1, Operators, Plan0, Plan1, Depth0, Depth),
 %Limit2 is Limit - 1,
 planning_loop(Goals1, Operators, Plan1, Plan2, Depth, Timeout).
%planning_loop(_Goals0, _Operators, Plan0, Plan0, _Limit) :-
% Limit < 1,
% bugout3('Search limit reached!~n', planner),
% fail.

serialize_plan(_Knower, _Agent, plan([], _Orderings, _B, _L), []) :- !.

serialize_plan(Knower, Agent, plan(Steps, Orderings, B, L), Tail) :-
 select_from(step(_, oper(Agent, true, _)), Steps, RemainingSteps),
 !,
 serialize_plan(Knower, Agent, plan(RemainingSteps, Orderings, B, L), Tail).

serialize_plan(Knower, Agent, plan(Steps, Orderings, B, L), [Action|Tail]) :-
 select_from(step(StepI, oper(Agent, Action, _)), Steps, RemainingSteps),
 \+ (member(step(StepJ, _Oper), RemainingSteps),
  isbefore(StepJ, StepI, Orderings)),
 serialize_plan(Knower, Agent, plan(RemainingSteps, Orderings, B, L), Tail).

serialize_plan(Knower, Agent, plan(_Steps, Orderings, _B, _L)) :-
 bugout3('serialize_plan FAILED: Knower=~p, Agent=~p !~n',[Knower, Agent], planner),
 pick_ordering(Orderings, List),
 bugout3(' Orderings are ~w~n', [List], planner),
 fail.

select_unsatisfied_conditions([], [], _Model) :- !.
select_unsatisfied_conditions([Cond|Tail], Unsatisfied, ModelData) :-
 precondition_matches_effects(Cond, ModelData),
 !,
 select_unsatisfied_conditions(Tail, Unsatisfied, ModelData).
select_unsatisfied_conditions([~ Cond|Tail], Unsatisfied, ModelData) :-
 \+ precondition_matches_effects(Cond, ModelData),
 !,
 select_unsatisfied_conditions(Tail, Unsatisfied, ModelData).
select_unsatisfied_conditions([Cond|Tail], [Cond|Unsatisfied], ModelData) :-
 !,
 select_unsatisfied_conditions(Tail, Unsatisfied, ModelData).


depth_planning_loop(PlannerGoals, Operators, SeedPlan, FullPlan,
     Depth, Timeout) :-
 bugout3('PLANNING DEPTH is ~w~n', [Depth], autonomous),
 planning_loop(PlannerGoals, Operators, SeedPlan, FullPlan, Depth, Timeout),
 !.
depth_planning_loop(PlannerGoals, Operators, SeedPlan, FullPlan,
     Depth0, Timeout) :-
 Depth0 =< 7,
 Depth is Depth0 + 1,
 depth_planning_loop(PlannerGoals, Operators, SeedPlan, FullPlan,
      Depth, Timeout).

generate_plan(Knower, Agent, FullPlan, Mem0) :-
 initial_operators(Knower, Operators),
 bugout3('OPERATORS are:~n', planner), pprint(Operators, planner),

 agent_thought_model(Agent, ModelData, Mem0),

 %bugout3('CURRENT STATE is ~w~n', [Model0], planner),
 thought(goals(Goals), Mem0),
 new_plan(Agent, ModelData, Goals, SeedPlan),
 bugout3('SEED PLAN is:~n', planner), pprint(SeedPlan, planner),
 !,
 %planning_loop(Operators, SeedPlan, FullPlan),
 conds_as_goals(finish, Goals, PlannerGoals),
 get_time(Now),
 Timeout is Now + 60, % seconds
 catch(
 depth_planning_loop(PlannerGoals, Operators, SeedPlan, FullPlan,
      1, Timeout),
 timeout(planner),
 (bugout3('PLANNER TIMEOUT~n', autonomous), fail)
 ),
 bugout3('FULL PLAN is:~n', planner), pprint(FullPlan, planner).

% ----


path2dir1(Here, There, go_dir(_Self, _Walk, Dir), ModelData):- 
 in_model(h(exit(Dir), Here, There), ModelData).
path2dir1(Here, There, goto_obj(_Self, _Walk, There), ModelData) :-
 in_model(h(descended, Here, There), ModelData).

path2directions([Here, There], [GOTO], ModelData):-
  path2dir1(Here, There, GOTO, ModelData).
path2directions([Here, Next|Trail], [GOTO|Tail], ModelData) :-
 path2dir1(Here, Next, GOTO, ModelData),
 path2directions([Next|Trail], Tail, ModelData).


find_path1([First|_Rest], Dest, First, _ModelData) :-
 First = [Dest|_].
find_path1([[Last|Trail]|Others], Dest, Route, ModelData) :-
 findall([Z, Last|Trail],
   (in_model(h(_Prep, Last, Z), ModelData), \+ member(Z, Trail)),
   List),
 append(Others, List, NewRoutes),
 find_path1(NewRoutes, Dest, Route, ModelData).
find_path(Start, Dest, Route, ModelData) :-
 find_path1([[Start]], Dest, R, ModelData),
 reverse(R, RR),
 path2directions(RR, Route, ModelData).



