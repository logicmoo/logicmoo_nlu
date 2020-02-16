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
% Sept 20, 1999 - Douglas Miles
% July 10, 1996 - John Eikenberry
%
% Logicmoo Project changes:
%
% Main file.
%
*/

% Some Inform properties:
% light - rooms that have light in them
% can(eat) - can be eaten
% static - can't be taken or moved
% scenery - assumed to be in the room description (implies static)
% concealed - obscured, not listed, not part of 'all', but there
% found_in - lists places where scenery objects are seen
% absent - hides object entirely
% clothing - can be worn
% worn - is being worn
% container
% (opened = t) - container is open (must_mw be opened) to be used. there is no "closed").
% can(open) - can be opened and closed
% capacity(N) - number of objects a container or supporter can hold
% state(locked) - cannot be opened
% can(lock), with_key
% enterable
% supporter
% article - specifies indefinite article ('a', 'le')
% cant_go
% daemon - called each turn, if it is enabled for this object
% description
% inside_description
% invent - code for inventory listing of that object
% list_together - way to handle "5 fish"
% plural - pluralized-name =  if different from singular
% when_closed - description when closed
% when_open - description when (opened = t)
% when_on, when_off - like when_closed, etc.
% Some TADS properties:
% thedesc
% pluraldesc
% is_indistinguishable
% is_visible(vantage)
% touchable($agent, actor)
% valid(verb) - is object seeable, touchable, etc.
% verification(verb) - is verb logical for this object
% Parser disambiguation:
% eliminate objs not visalbe, touchable, etc.
% check preconditions for acting on a candidate object


:- op(1199, xfx, props).
:- op(1199, xfx, type).
:- op(900, fx, ~).


dest_target(spatially(in, Dest), Target):- nonvar(Dest), !, dest_target(Dest, Target).
dest_target(spatially(to, Dest), Target):- nonvar(Dest), !, dest_target(Dest, Target).
dest_target(loc(_, _, _, Target), Target):- nonvar(Target), !.


type_functor(dest, spatially(in, inst)).
type_functor(dest, spatially(at, inst)).
type_functor(dest, spatially(on, inst)).
type_functor(dest, of(up, $here)).
type_functor(dest, of(west, $here)).


type_functor(nv_of_any, structure_label(term)).


type_functor(memory, goals(list(goals))).
type_functor(memory, todo(list(doing))).
%type_functor(memory, model(list(state_with_stamps))).
type_functor(event, timestamp(ordinal, timept)).

%type_functor(state_with_stamps, holds_at(h(domrel, inst, inst), timept)).

type_functor(state, type_props(type, list(nv))).
type_functor(state, props(inst, list(nv))).
type_functor(state, memories(inst, list(event))).
type_functor(state, preceptq(inst, list(event))).
type_functor(state, h(domrel, inst, inst)).


type_functor(doing, inventory(agent)).
type_functor(doing, look(agent)).
type_functor(doing, examine(agent, optional(sense, see), optional(inst, here), optional(depth, 1))).
type_functor(event, percept_props(agent, sense, inst, depth, list(nv))).


type_functor(doing, dig(agent, holetype, prep, dest, inst)).
type_functor(doing, create(type)).

type_functor(doing, eat(agent, inst)).
type_functor(doing, hit(agent, inst, with)).
type_functor(doing, destroy(inst)).

type_functor(doing, switch(agent, tfstate, tf, inst)).
type_functor(doing, touch(agent, inst)).

%type_functor(doing, touchable(agent, instance)).


%type_functor(doing, say(Message)).  % undirected message
type_functor(doing, emote(agent, emotype, dest, statement)).
type_functor(event, emoted(agent, emotype, dest, statement)).


type_functor(doing, wait(agent)).
type_functor(event, time_passes(agent)).


type_functor(doing, recall(agent, prop, inst2)).
type_functor(doing, properties(inst)).
type_functor(doing, inspect(agent, getprop(inst, nv))).
type_functor(doing, setprop(inst, nv)).
type_functor(doing, print_(agent, msg)).



type_functor(doing, give(agent, inst, agnt2)).
type_functor(doing, take(agent, inst)).
type_functor(doing, drop(agent, inst)).

type_functor(doing, go_dir(agent, movetype, dir)).
type_functor(doing, goto_obj(agent, movetype, obj)).
type_functor(doing, goto_prep_obj(agent, movetype, domrel, obj)).

type_functor(doing, goto_loc(agent, movetype, dest)).

type_functor(doing, throw(agent, inst, dest)).
type_functor(doing, put(agent, inst, dest)).
type_functor(event, moved(agent, how, inst, from, prop, to)).



type_functor(event, carrying(agent, list(inst))).
type_functor(event, destroyed(inst)).
type_functor(event, did(action)).
type_functor(event, percept(agent, exit_list(in, dest, list(exit)))).
type_functor(event, percept(agent, child_list(sense, dest, domrel, depth, list(inst)))).
type_functor(event, failed(doing, msg)).
type_functor(event, transformed(inst, inst2)).



type_functor(nv, adjs(list(text))).
type_functor(nv, can(actverb, tf)).
type_functor(nv, knows_verbs(actverb, tf)).
type_functor(nv, cant_go(inst, dir, text)).
type_functor(nv, class_desc(list(text))).
type_functor(nv, co(list(nv))).
type_functor(nv, desc(sv(text))).
type_functor(nv, door_to(inst)).
type_functor(nv, effect(verb_targeted, script)).
type_functor(nv, breaks_into = type).
type_functor(nv, has_rel(domrel, tf)).
type_functor(nv, has_sense(sense)).
type_functor(nv, isnt(type)).
type_functor(nv, inherit(type, tf)).
type_functor(nv, inherited(type)).
type_functor(nv, inheriting(type)).
type_functor(nv, inst(sv(term))).
type_functor(nv, name = (sv(text))).
type_functor(nv, nominals(list(text))).
type_functor(nv, nouns(list(text))).
type_functor(nv, oper(doing, preconds, postconds)).
type_functor(nv, =(name, value)).


:- ensure_loaded(adv_state).

two_adjs(W1,W2,W3):- var(W1),nonvar(W2),!,two_adjs(W2,W1,W3).
two_adjs(W1,W2,W3):- var(W1),var(W2),!, 
      nl_call( wn_s(A,B,W1,_,_,_)),once((nl_call(wn_ant(A,B,C,D)),
      A>C, 
      two_adjs_0(A,W2,C,W3,D))).
two_adjs(W1,W2,W3):- 
      nl_call(wn_s(A,B,W1,_,_,_)),once((nl_call(wn_ant(A,B,C,D)),
      two_adjs_0(A,W2,C,W3,D))).

two_adjs_0(A,W2,C,W3,D):- 
      nl_call(wn_at(A,E)),nl_call(wn_at(C,E)),
      nl_call(wn_s(C,D,W2,_,_,_)),nl_call(wn_s(E,1,W3,_,_,_)).


:- dynamic(istate/1).
istate([ structure_label(istate) ]).

:- push_to_state([

% Relationships

in(floyd, pantry),
in(the(player), kitchen),
worn_by(the(watch), the(player)),
held_by(the(bag), the(player)),

in(the(coins), the(bag)),
held_by(the(wrench), floyd),

exit(south, pantry, kitchen), % pantry exits south to kitchen
exit(north, kitchen, pantry),
exit(down, pantry, basement),
exit(up, basement, pantry),
exit(south, kitchen, garden),
exit(north, garden, kitchen),
exit(east, kitchen, dining_room),
exit(west, dining_room, kitchen),
exit(north, dining_room, living_room),
exit(east, living_room, dining_room),
exit(south, living_room, kitchen),
exit(west, kitchen, living_room),

in(the(shelf), pantry), % shelf is in pantry
in(the(locker), pantry), % locker is in pantry
in(the(rock), garden),
in(the(fountain), garden),
in(the(mushroom), garden),
in(the(shovel), basement), % FYI shovel has no props (this is a lttle test to see what happens)
in(the(videocamera), living_room),
in(the(fireplace), living_room),
in(screendoor, kitchen),
in(the(crate), kitchen),
in(the(apple), the(crate)),
in(screendoor, garden),
in(brklamp, garden)

]).


term_expansion(StateInfo, (:- push_to_state(StateInfo))):- is_state_info(StateInfo).

door type
  ~can(take),
   can(open),
   can(close),
   (opened = t),
   nouns(door),
   fully_corporial.

food type
   can(eat),
   object,
   measurable.

basement props place,
   desc('This is a very dark basement.'),
   (dark= t).

dining_room props place.


:- push_to_state([

   props(garden,
     [place,
   % goto($agent, Prep, Dir, dir, result) provides special handling for going in a direction.
   cant_go($agent, up, 'You lack the ability to fly.'),
   oper(/*garden, */ go_dir($agent, _, south),
   % precond(Test, FailureMessage)
     precond(getprop(screendoor, (opened = t)), ['you must_mw open the door first']),
   % body(clause)
     body(inherited)),
   % cant_go provides last-ditch special handling for Go.
   cant_go($agent, _Dir, 'The fence surrounding the garden is too tall and solid to pass.')]),

   props(kitchen, [inherit(place), desc('cooking happens here')]),

   h(reverse(on), the(table), the(table_leg)),
   on(the(box), the(table)),
   in(the(bowl), the(box)),
   in(the(flour), the(bowl)),
   in(the(table), kitchen), % a table is in kitchen
   on(the(lamp), the(table)), % a lamp is on the table

   in(the(sink), kitchen),
   in(the(plate), the(sink)),
   in(the(cabinate), kitchen),
   in(the(cup), the(cabinate)),

end_of_list]).

props(living_room, [inherit(place)]).

props(pantry, [
   volume_capacity = 1000,
   nouns(closet),
   nominals(kitchen),
   desc('You\'re in a dark kitchen pantry.'),
   dark = t,
   inherit(place)
]).

% Things

props(brklamp,
   inherit(broken),
   name = ('possibly broken lamp'),
   effect(switch(on), print_(_Agent, "Switch is flipped")),
   effect(hit, ['print_'("Hit brklamp"), setprop($self, inherit(broken))]),
   inherit(lamp)).

    
props(screendoor, [
   % see DM4
   door_to(kitchen),
   door_to(garden),
   opened = f,
   inherit(door)
]).


:- push_to_state([
 type_props(broken, [
    name = ('definately broken'),
    effect(switch(on), true),
    effect(switch(off), true),
    can(switch),
    adjs([dented]),
    adjs($class)
 ]),

 type_props(mushroom, [
   % See DM4
   name = ('speckled mushroom'),
   % singular,                     
   inherit(food),
   nouns([mushroom, fungus, toadstool]),
   adjs([speckled]),
   % initial(description used until initial state changes)
   initial('A speckled mushroom grows out of the sodden earth, on a long stalk.'),
   % description(examination description)
   desc('The mushroom is capped with blotches, and you aren\'t at all sure it\'s not a toadstool.'),
   can(eat),
   % before(VERB, CODE) -- Call CODE before default code for VERB.
   %  If CODE succeeds, don't call VERB.
   before(eat, (random100 =< 30, die('It was poisoned!'); 'yuck!')),
   after(take,
    (initial, 'You pick the mushroom, neatly cleaving its thin stalk.'))]),
                               
 type_props(door, [
   ~can(take),
    can(open),
    can(close),
    (opened = t),
    nouns($class),
    inherit(fully_corporial)]),

 type_props(unthinkable, [
   ~can(examine),
    adjs($class),
    class_desc(['kind is normally unthinkable'])]),

 type_props(thinkable, [
    can(examine),
    nouns($self),
    adjs($class),
    class_desc(['kind is normally thinkable'])]),

 type_props(noncorporial, [
   ~can(examine),
   ~can(touch),
    inherit(thinkable),
    adjs($class),
   ~inherit(fully_corporial),
    class_desc(['direct inheriters are completely noncorporial'])]),

 type_props(only_conceptual, [
   adjs($class),
   inherit(noncorporial),
   inherit(thinkable),
   class_desc(['kind is only conceptual'])]),

 type_props(partly_noncorporial, [
   inherit(fully_corporial),
   adjs($class),
   inherit(noncorporial),
   class_desc(['kind is both partly corporial and non-corporial'])]),
   
 type_props(fully_corporial, [
   can(touch),
   can(examine),
   inherit(thinkable),
   cleanliness=clean,
   adjs($class),
   class_desc(['kind is corporial'])]),
   
 type_props(object, [
    can(examine),
    adjs(physical),
    can(move),
    inherit(fully_corporial),
    inherit(thinkable),
    class_desc(['kind is an Movable Object'])]),
   
 type_props(untakeable, [
    adjs($class),
   ~can(take),
    class_desc(['kind is an Immobile Object'])]),
   
   
 type_props(furnature, [
   can(examine),
   inherit(untakeable),
   inherit(fully_corporial),
   inherit(surface),
   inherit(thinkable),
   adjs(physical),
   class_desc(['kind is furnature'])]),
   

  

  % People

 props(floyd, [name = ('Floyd the robot'), powered = f, inherit(autonomous),inherit(robot)]),

 type_props(telnet, [adjs([remote]), inherit(player), nouns([player])]),
 type_props(player, [name = ($self),
   % 1 = look at object  2 = glance at child_list 3 = glance at grandchildren 
   model_depth = 3, % how much of the model to get
   % 5 = save game |  4 = debug | 3 = look at Obj | 2 =  | 1 = basic fun info
   % prop_depth = 3, % what prop level to get
   % Basic fun props
   inherit(autoscan),
   look_depth = 2, 
   user_mode = 2, % 1 = fun-only, normal, debug
   access_level = admin, % guest,user,admin,wizard
   inherit(console), inherit(humanoid)]),
 type_props(console, [adjs(physical), nominals([console]), nouns([player])]),

 % p(a,b,c).
 % c1_p_a1(a),c1_p_a1(b),c1_p_a1(c):-



 type_props(humanoid, [
   knows_verbs(eat),
   volume = 50, % liters  (water is 1 kilogram per liter)
   mass = 50, % kilograms
   inherit(character),   
   inherit(memorize),
   
   
   % players use power but cant be powered down
   can(switch(off), f), powered = t
  ]),
   
 type_props(autonomous, [inherit(autoscan)]),

 type_props(character, [
   has_rel(worn_by),
   has_rel(held_by),
   % overridable defaults
   model_depth = 3,
   mass = 50, volume = 50, % liters  (water is 1 kilogram per liter)
   has_sense(see),
   %inherit(perceptq),
   inherit(no_perceptq),
   inherit(memorize),
   inherit(actor),
   inherit(autoscan),
   inherit(partly_noncorporial)
  ]),

 type_props(actor, [
   knows_verbs(examine),
   inherit(partly_noncorporial)
  ]),

 type_props(robot, [
  ~knows_verbs(eat),
   inherit(autonomous),
   emitting(see, light),
   volume = 50, mass = 200, % density 4 % kilograms per liter
   nouns([robot]),
   adjs([metallic]),
   desc('Your classic robot: metallic with glowing red eyes, enthusiastic but not very clever.'),
   can(switch),
   inherit(memorize),
   nouns($class),
   inherit(shiny),
   inherit(character),
   powered = t,
   % TODO: floyd should `look($agent)` when turned back on.
   effect(switch(on), setprop($self, powered = t)),
   effect(switch(off), setprop($self, (powered= f)))
  ]),

  type_props(natural_force, [
   ~knows_verbs(eat),      
   ~can(touch),
   ~has_rel(held_by),
   ~has_rel(worn_by),
    has_sense(see),
    inherit(no_perceptq),
    inherit(noncorporial),
    inherit(actor)
   ]),

   
   % Places
 type_props(place, [
   volume_capacity = 10000,
   default_rel = in,
   has_rel(in),
   nouns([here, $self]),
   adjs([locally]),
  ~can(move),
  ~can(take),
   oper(discard($agent, Thing),
    precond(h(child, $agent, Thing), ['dont have']), % precond(Test, FailureMessage)
    body(take($agent, Thing, in, $self))), % body(clause)
   % inherit(container),
   has_rel(exit(_))
  ]),
   
 type_props(container, [
   default_rel = in,
   opened = f,
   can(open),
   has_rel(in),
  oper(put($agent, Thing, in, $self),
   precond(~getprop(Thing, inherit(liquid)), ['liquids would spill out']), % precond(Test, FailureMessage)
   body(take($agent, Thing, in, $self)))  % body(clause)
  ]),


 type_props(bag, [
   volume_capacity = 10,
   inherit(container),
   inherit(object)   
  ]),
   
 type_props(cup, [inherit(flask)]),
   
 type_props(flask, [
   adjs(physical),
  oper(put($agent, Thing, in, $self),
   % precond(Test, FailureMessage)
   precond(getprop(Thing, inherit(fully_corporial)), ['non-physical would spill out']),
   % body(clause)
   body(take($agent, Thing, in, $self))),
   inherit(container),
   inherit(object)
  ]),
   
 type_props(bowl, [
   inherit(uncloseable),
   inherit(flask),
   volume_capacity = 2,
   breaks_into = shards,
   cleanliness = dirty,
   name = ('porcelain bowl'),
   desc('This is a modest glass cooking bowl with a yellow flower motif glazed into the outside surface.')
  ]),

 type_props(plate, [
   inherit(surface),
   inherit(object),
   volume_capacity = 2,
   breaks_into = shards,
   cleanliness = dirty,
   name($class)
  ]),

 type_props(fireplace, [
  ~has_rel(on),
   has_rel(over),
   inherit(uncloseable),
   volume_capacity = 20,
   inherit(furnature)
  ]),

 type_props(box, [
   opened = f,
   volume_capacity = 11,
   inherit(container),
   inherit(object),   
   inherit(cardboard)
  ]),

 type_props(crate, [
    inherit(container),
    inherit(object),
    volume_capacity = 13,
    inherit(wooden),
    (opened = t)
  ]),

 type_props(locker, [
    inherit(container),
    inherit(object),
    volume_capacity = 13,
    inherit(metal),
    opened = f
  ]),
 type_props(wooden, [
   breaks_into = splinters,
   can(burn)
  ]),

 type_props(metal, [
  ~can(burn)
  ]),

 type_props(cardboard, [
   inherit(paper)
  ]),

 type_props(paper, [
   can(burn)
  ]),

 type_props(sink, [
   cleanliness = dirty,
   inherit(uncloseable),
   inherit(flask),
   inherit(furnature),
   volume_capacity = 5
  ]),

 type_props(uncloseable, [
   opened = t,
  ~can(close),
  ~can(open),
   inherit(container)
  ]),

 type_props(cabinate, [
   inherit(container),
   inherit(furnature),
   volume_capacity = 10
  ]),

 type_props(fountain, [
   volume_capacity = 150,
   inherit(place),
   inherit(sink)
  ]),
   
 type_props(measurable, [adjs($class), ammount = some]),
   
   
   % shiny things are fully_corporial
 type_props(shiny, [adjs($class), inherit(object), inherit(fully_corporial)]),
   
 type_props(coins, [inherit(shiny), inherit(measurable)]),
   
 type_props(flour, [inherit(food), inherit(measurable)]),

 type_props(lamp, [
   name = ('shiny brass lamp'),
   powered = t,
   can(switch),
   nouns(light),
   nominals(brass),
   inherit(shiny),
   inherit(object),
   emitting(see, light),
   effect(switch(on), setprop($self, emitting(see, light))),
   effect(switch(off), delprop($self, emitting(see, light))),
   breaks_into = (broken_lamp)
  ]),

 type_props(broken_lamp, [
   name = ('dented brass lamp'),
   % TODO: prevent user from referring to 'broken_lamp'
   nouns(light),
   nominals(brass),
   adjs(dented),
   can(switch),
   effect(switch(on), true),
   effect(switch(off), true) % calls true(S0, S1) !
  ]),
   
 type_props(surface, [has_rel(on), default_rel = on, adjs(physical), cleanliness=clean]),
   
 type_props(shelf, [inherit(surface), adjs(physical), inherit(furnature)]),
   
 type_props(table, [inherit(surface), adjs(physical), default_rel=on])
 ]).

 type_props(wrench, [inherit(shiny)]).

 type_props(videocamera, [
   inherit(memorize),
   inherit(perceptq),
   inherit(memorize_perceptq),
   can(switch),
   effect(switch(on), setprop($self, powered = t)),
   effect(switch(off), setprop($self, (powered= f))),
   powered = t,
   has_sense(see),
   breaks_into = (broken_videocam)
  ]).

  type_props(broken_videocam, [~can(switch), (powered= f), inherit(videocamera)]).



:- multifile(extra_decl/2).
:- dynamic(extra_decl/2).

extra_decl(T, PP):- extra_decl0(T, P), correct_props(T, P, PP).
extra_decl0(T, P):- member(type_props(T, P), [  ]).
   
:- op(0, xfx, props).

%:- istate(IState),sort(IState,SIState),reverse(SIState,RIState), pprint(RIState, always).

