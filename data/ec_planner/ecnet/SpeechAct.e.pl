:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/SpeechAct.e').
%;
%; Copyright (c) 2005 IBM Corporation and others.
%; All rights reserved. This program and the accompanying materials
%; are made available under the terms of the Common Public License v1.0
%; which accompanies this distribution, and is available at
%; http://www.eclipse.org/legal/cpl-v10.html
%;
%; Contributors:
%; IBM - Initial implementation
%;
%; The SpeechAct representation deals with a few speech acts
%; \fullcite{Searle:1969}.
%;
%; @book{Searle:1969,
%;   author = "John R. Searle",
%;   year = "1969",
%;   title = "Speech Acts: An Essay in the Philosophy of Language",
%;   address = "Cambridge",
%;   publisher = "Cambridge University Press",
%; }
%;
%; We handle
%; the illocutionary acts of
%; inviting someone into one's house (a form of request) and
%; greeting someone,
%; and the expressive speech act of crying for joy.
%;
%; inviting in
%; agent1 invites agent2 into room.

% event InviteIn(agent,agent,room)
 %  event(inviteIn(agent,agent,room)).
==> mpred_prop(inviteIn(agent,agent,room),event).
==> meta_argtypes(inviteIn(agent,agent,room)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:32
%; agent1 is invited into room by agent2.

% fluent InvitedIn(agent,room,agent)
 %  fluent(invitedIn(agent,room,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:34
==> mpred_prop(invitedIn(agent,room,agent),fluent).
==> meta_argtypes(invitedIn(agent,room,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:35
%; A precondition axiom states that for
%; an agent to invite another agent into a room,
%; the first agent must be in the room and
%; there must be an outside area such that
%; the second agent is at the outside area and
%; the outside area is adjacent to the room:
% [agent1,agent2,room,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:42
% Happens(InviteIn(agent1,agent2,room),time) ->
% HoldsAt(At(agent1,room),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:44
% {outside}% 
% HoldsAt(At(agent2,outside),time) &
% Adjacent(room,outside).

 /*   exists([Outside],
             if(happens(inviteIn(Agent1, Agent2, Room),
                        Time),
                 (holds_at(at(Agent1, Room), Time), holds_at(at(Agent2, Outside), Time), adjacent(Room, Outside)))).
 */

 /*  not(some(Location8, '$kolem_Fn_188'(Fn_188_Param, At_Param, Location, Maptime))) :-
       happens(inviteIn(Fn_188_Param, At_Param, Location),
               Maptime),
       (   not(holds_at(at(Fn_188_Param, Location), Maptime))
       ;   not(holds_at(at(At_Param, Location8), Maptime))
       ;   not(adjacent(Location, Location8))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:46
axiom(not(some(Location8, '$kolem_Fn_188'(Fn_188_Param, At_Param, Location, Maptime))),
   
    [ not(holds_at(at(Fn_188_Param, Location), Maptime)),
      happens(inviteIn(Fn_188_Param, At_Param, Location),
              Maptime)
    ]).
axiom(not(some(Location8, '$kolem_Fn_188'(Fn_188_Param, At_Param, Location, Maptime))),
   
    [ not(holds_at(at(At_Param, Location8), Maptime)),
      happens(inviteIn(Fn_188_Param, At_Param, Location),
              Maptime)
    ]).
axiom(not(some(Location8, '$kolem_Fn_188'(Fn_188_Param, At_Param, Location, Maptime))),
   
    [ not(adjacent(Location, Location8)),
      happens(inviteIn(Fn_188_Param, At_Param, Location),
              Maptime)
    ]).

 /*  not(happens(inviteIn(InviteIn_Param, At_Param15, Location12), Maptime11)) :-
       (   not(holds_at(at(InviteIn_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param15, Location13), Maptime11))
       ;   not(adjacent(Location12, Location13))
       ),
       some(Location13,
            '$kolem_Fn_188'(InviteIn_Param,
                            At_Param15,
                            Location12,
                            Maptime11)).
 */
axiom(not(happens(inviteIn(InviteIn_Param, At_Param15, Location12), Maptime11)),
   
    [ not(holds_at(at(InviteIn_Param, Location12), Maptime11)),
      some(Location13,
           '$kolem_Fn_188'(InviteIn_Param,
                           At_Param15,
                           Location12,
                           Maptime11))
    ]).
axiom(not(happens(inviteIn(InviteIn_Param, At_Param15, Location12), Maptime11)),
   
    [ not(holds_at(at(At_Param15, Location13), Maptime11)),
      some(Location13,
           '$kolem_Fn_188'(InviteIn_Param,
                           At_Param15,
                           Location12,
                           Maptime11))
    ]).
axiom(not(happens(inviteIn(InviteIn_Param, At_Param15, Location12), Maptime11)),
   
    [ not(adjacent(Location12, Location13)),
      some(Location13,
           '$kolem_Fn_188'(InviteIn_Param,
                           At_Param15,
                           Location12,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(inviteIn(At_Param18, A, Location16), Time17),
       some(Some_Param,
            '$kolem_Fn_188'(At_Param18, A, Location16, Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(inviteIn(At_Param18, A, Location16),
              Time17),
      some(Some_Param,
           '$kolem_Fn_188'(At_Param18,
                           A,
                           Location16,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(inviteIn(InviteIn_Param23,
                        At_Param22,
                        InviteIn_Ret),
               Time21),
       some(Location20,
            '$kolem_Fn_188'(InviteIn_Param23,
                            At_Param22,
                            InviteIn_Ret,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(inviteIn(InviteIn_Param23,
                       At_Param22,
                       InviteIn_Ret),
              Time21),
      some(Location20,
           '$kolem_Fn_188'(InviteIn_Param23,
                           At_Param22,
                           InviteIn_Ret,
                           Time21))
    ]).

 /*  adjacent(Adjacent_Param, Some_Param28) :-
       happens(inviteIn(InviteIn_Param27, A, Adjacent_Param),
               Maptime25),
       some(Some_Param28,
            '$kolem_Fn_188'(InviteIn_Param27,
                            A,
                            Adjacent_Param,
                            Maptime25)).
 */
axiom(adjacent(Adjacent_Param, Some_Param28),
   
    [ happens(inviteIn(InviteIn_Param27, A, Adjacent_Param),
              Maptime25),
      some(Some_Param28,
           '$kolem_Fn_188'(InviteIn_Param27,
                           A,
                           Adjacent_Param,
                           Maptime25))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:48
%; An effect axiom states that if
%; an agent invites another agent into a room,
%; the second agent will be invited into the room by the first agent:
% [agent1,agent2,room,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:52
% Initiates(InviteIn(agent1,agent2,room),
%           InvitedIn(agent2,room,agent1),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:54
axiom(initiates(inviteIn(Agent1, Agent2, Room), invitedIn(Agent2, Room, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:56
%; agent intends to walk into room.

% event IntendToWalkIn(agent,room)
 %  event(intendToWalkIn(agent,room)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:58
==> mpred_prop(intendToWalkIn(agent,room),event).
==> meta_argtypes(intendToWalkIn(agent,room)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:58
%; agent has the intention to walk into room.

% fluent IntentionToWalkIn(agent,room)
 %  fluent(intentionToWalkIn(agent,room)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:60
==> mpred_prop(intentionToWalkIn(agent,room),fluent).
==> meta_argtypes(intentionToWalkIn(agent,room)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:60
%; agent acts on the intention to walk into room.

% fluent ActOnIntentionToWalkIn(agent,room)
 %  fluent(actOnIntentionToWalkIn(agent,room)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:62
==> mpred_prop(actOnIntentionToWalkIn(agent,room),fluent).
==> meta_argtypes(actOnIntentionToWalkIn(agent,room)).

% noninertial ActOnIntentionToWalkIn
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:63
==> noninertial(actOnIntentionToWalkIn).
%; A trigger axiom states that
%; if an agent is invited into a room by another agent,
%; the first agent likes the second agent, and
%; the first agent does not already have the intention to
%; walk into the room,
%; the first agent intends to walk into the room:
% [agent1,agent2,room,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:71
% HoldsAt(InvitedIn(agent1,room,agent2),time) &
% HoldsAt(Like(agent1,agent2),time) &
% !HoldsAt(IntentionToWalkIn(agent1,room),time) ->
% Happens(IntendToWalkIn(agent1,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:74
axiom(happens(intendToWalkIn(Agent1, Room), Time),
   
    [ holds_at(invitedIn(Agent1, Room, Agent2), Time),
      holds_at(like(Agent1, Agent2), Time),
      not(holds_at(intentionToWalkIn(Agent1, Room), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:76
%; An effect axiom states that
%; if an agent intends to walk into a room,
%; the agent will have the intention to walk into the room:
% [agent,room,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:80
% Initiates(IntendToWalkIn(agent,room),
%           IntentionToWalkIn(agent,room),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:82
axiom(initiates(intendToWalkIn(Agent, Room), intentionToWalkIn(Agent, Room), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:84
%; Two trigger axioms state that
%; if an agent has the intention to walk into a room,
%; the agent acts on the intention to walk into the room,
%; the agent is at a location,
%; side one (two) of a door is the room,
%; side two (one) of the door is the location,
%; agent will walk through side two (one) of the door:
% [agent,room,location,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:92
% HoldsAt(IntentionToWalkIn(agent,room),time) &
% HoldsAt(ActOnIntentionToWalkIn(agent,room),time) &
% HoldsAt(At(agent,location),time) &
% Side1(door)=room &
% Side2(door)=location ->
% Happens(WalkThroughDoor21(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:97
axiom(happens(walkThroughDoor21(Agent, Door), Time),
   
    [ holds_at(intentionToWalkIn(Agent, Room), Time),
      holds_at(actOnIntentionToWalkIn(Agent, Room), Time),
      holds_at(at(Agent, Location), Time),
      equals(side1(Door), Room),
      equals(side2(Door), Location)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:99
% [agent,room,location,door,time]
% HoldsAt(IntentionToWalkIn(agent,room),time) &
% HoldsAt(ActOnIntentionToWalkIn(agent,room),time) &
% HoldsAt(At(agent,location),time) &
% Side2(door)=room &
% Side1(door)=location ->
% Happens(WalkThroughDoor12(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:105
axiom(happens(walkThroughDoor12(Agent, Door), Time),
   
    [ holds_at(intentionToWalkIn(Agent, Room), Time),
      holds_at(actOnIntentionToWalkIn(Agent, Room), Time),
      holds_at(at(Agent, Location), Time),
      equals(side2(Door), Room),
      equals(side1(Door), Location)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:107
%; Two effect axioms state that
%; if side one (two) of a door is a room and
%; an agent walks through side two (one) of the door,
%; the agent will no longer have the intention to
%; walk into the room:
% [agent,room,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:113
% Side1(door)=room ->
% Terminates(WalkThroughDoor21(agent,door),
%            IntentionToWalkIn(agent,room),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:116
axiom(terminates(walkThroughDoor21(Agent, Door), intentionToWalkIn(Agent, Room), Time),
    [equals(side1(Door), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:118
% [agent,room,door,time]
% Side2(door)=room ->
% Terminates(WalkThroughDoor12(agent,door),
%            IntentionToWalkIn(agent,room),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:122
axiom(terminates(walkThroughDoor12(Agent, Door), intentionToWalkIn(Agent, Room), Time),
    [equals(side2(Door), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:124
%; agent greets object.

% event Greet(agent,object)
 %  event(greet(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:126
==> mpred_prop(greet(agent,object),event).
==> meta_argtypes(greet(agent,object)).

% event SayPleasedToMeet(agent,agent)
 %  event(sayPleasedToMeet(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:128
==> mpred_prop(sayPleasedToMeet(agent,agent),event).
==> meta_argtypes(sayPleasedToMeet(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:129
%; agent says goodbye to object.

% event SayGoodbye(agent,object)
 %  event(sayGoodbye(agent,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:131
==> mpred_prop(sayGoodbye(agent,object),event).
==> meta_argtypes(sayGoodbye(agent,object)).

% event TalkAbout(agent,content)
 %  event(talkAbout(agent,content)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:133
==> mpred_prop(talkAbout(agent,content),event).
==> meta_argtypes(talkAbout(agent,content)).

% event Converse(agent,agent)
 %  event(converse(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:135
==> mpred_prop(converse(agent,agent),event).
==> meta_argtypes(converse(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:136
% [agent1,agent2,time]
% Happens(Converse(agent1,agent2),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:138
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(converse(Agent1, Agent2), Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_189'(Fn_189_Param, At_Param, Maptime))) :-
       happens(converse(Fn_189_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_189_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:140
axiom(not(some(Location6, '$kolem_Fn_189'(Fn_189_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_189_Param, Location6), Maptime)),
      happens(converse(Fn_189_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_189'(Fn_189_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(converse(Fn_189_Param, At_Param), Maptime)
    ]).

 /*  not(happens(converse(Converse_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(Converse_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_189'(Converse_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(converse(Converse_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(Converse_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_189'(Converse_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(converse(Converse_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_189'(Converse_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(converse(At_Param15, Converse_Ret), Time14),
       some(Location13,
            '$kolem_Fn_189'(At_Param15, Converse_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(converse(At_Param15, Converse_Ret), Time14),
      some(Location13,
           '$kolem_Fn_189'(At_Param15, Converse_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(converse(Converse_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_189'(Converse_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(converse(Converse_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_189'(Converse_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:142
%; A precondition axiom states that for
%; an agent to greet an object,
%; there must be a location such that
%; the agent is at the location and
%; the object is at the location:
% [agent,object,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:148
% Happens(Greet(agent,object),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:149
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object,location),time).

 /*   exists([Location],
             if(happens(greet(Agent, Object), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Object, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_190'(Fn_190_Param, At_Param, Maptime))) :-
       happens(greet(Fn_190_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_190_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:151
axiom(not(some(Location6, '$kolem_Fn_190'(Fn_190_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_190_Param, Location6), Maptime)),
      happens(greet(Fn_190_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_190'(Fn_190_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(greet(Fn_190_Param, At_Param), Maptime)
    ]).

 /*  not(happens(greet(Greet_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(Greet_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_190'(Greet_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(greet(Greet_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(Greet_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_190'(Greet_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(greet(Greet_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_190'(Greet_Param, At_Param12, Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(greet(At_Param15, Greet_Ret), Time14),
       some(Location13,
            '$kolem_Fn_190'(At_Param15, Greet_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(greet(At_Param15, Greet_Ret), Time14),
      some(Location13,
           '$kolem_Fn_190'(At_Param15, Greet_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(greet(Greet_Param20, At_Param19), Time18),
       some(Location17,
            '$kolem_Fn_190'(Greet_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(greet(Greet_Param20, At_Param19), Time18),
      some(Location17,
           '$kolem_Fn_190'(Greet_Param20, At_Param19, Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:153
% [agent,object,time]
% Happens(SayGoodbye(agent,object),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:155
% {location}% 
% HoldsAt(At(agent,location),time) &
% HoldsAt(At(object,location),time).

 /*   exists([Location],
             if(happens(sayGoodbye(Agent, Object), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Object, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_191'(Fn_191_Param, At_Param, Maptime))) :-
       happens(sayGoodbye(Fn_191_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_191_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:157
axiom(not(some(Location6, '$kolem_Fn_191'(Fn_191_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_191_Param, Location6), Maptime)),
      happens(sayGoodbye(Fn_191_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_191'(Fn_191_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(sayGoodbye(Fn_191_Param, At_Param), Maptime)
    ]).

 /*  not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(SayGoodbye_Param, Location10),
                        Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_191'(SayGoodbye_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(SayGoodbye_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_191'(SayGoodbye_Param,
                           At_Param12,
                           Maptime9))
    ]).
axiom(not(happens(sayGoodbye(SayGoodbye_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_191'(SayGoodbye_Param,
                           At_Param12,
                           Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(sayGoodbye(At_Param15, SayGoodbye_Ret), Time14),
       some(Location13,
            '$kolem_Fn_191'(At_Param15, SayGoodbye_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(sayGoodbye(At_Param15, SayGoodbye_Ret), Time14),
      some(Location13,
           '$kolem_Fn_191'(At_Param15, SayGoodbye_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(sayGoodbye(SayGoodbye_Param20, At_Param19),
               Time18),
       some(Location17,
            '$kolem_Fn_191'(SayGoodbye_Param20, At_Param19, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(sayGoodbye(SayGoodbye_Param20, At_Param19),
              Time18),
      some(Location17,
           '$kolem_Fn_191'(SayGoodbye_Param20,
                           At_Param19,
                           Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:159
%; speech: expression of emotions
%; agent cries for joy.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:162
% event CryForJoy(agent)
 %  event(cryForJoy(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:163
==> mpred_prop(cryForJoy(agent),event).
==> meta_argtypes(cryForJoy(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:164
%; A precondition axiom states that for
%; an agent to cry for joy,
%; the agent must be happy:
% [agent,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:168
% Happens(CryForJoy(agent),time) ->
% HoldsAt(Happy(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:169
axiom(requires(cryForJoy(Agent), Time),
    [holds_at(happy(Agent), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:171
% event Threaten(agent,agent,weapon)
 %  event(threaten(agent,agent,weapon)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:172
==> mpred_prop(threaten(agent,agent,weapon),event).
==> meta_argtypes(threaten(agent,agent,weapon)).

% event ReleaseFromThreat(agent,agent)
 %  event(releaseFromThreat(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:174
==> mpred_prop(releaseFromThreat(agent,agent),event).
==> meta_argtypes(releaseFromThreat(agent,agent)).

% fluent ThreatenedBy(agent,agent)
 %  fluent(threatenedBy(agent,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:176
==> mpred_prop(threatenedBy(agent,agent),fluent).
==> meta_argtypes(threatenedBy(agent,agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:177
% [agent1,agent2,weapon,time]
% Happens(Threaten(agent1,agent2,weapon), time) ->
% HoldsAt(Holding(agent1,weapon),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:180
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(threaten(Agent1, Agent2, Weapon),
                        Time),
                 (holds_at(holding(Agent1, Weapon), Time), holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_192'(Fn_192_Param, At_Param, Threaten_Ret, Maptime))) :-
       happens(threaten(Fn_192_Param, At_Param, Threaten_Ret),
               Maptime),
       (   not(holds_at(holding(Fn_192_Param, Threaten_Ret),
                        Maptime))
       ;   not(holds_at(at(Fn_192_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:182
axiom(not(some(Location7, '$kolem_Fn_192'(Fn_192_Param, At_Param, Threaten_Ret, Maptime))),
   
    [ not(holds_at(holding(Fn_192_Param, Threaten_Ret),
                   Maptime)),
      happens(threaten(Fn_192_Param, At_Param, Threaten_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_192'(Fn_192_Param, At_Param, Threaten_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_192_Param, Location7), Maptime)),
      happens(threaten(Fn_192_Param, At_Param, Threaten_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_192'(Fn_192_Param, At_Param, Threaten_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(threaten(Fn_192_Param, At_Param, Threaten_Ret),
              Maptime)
    ]).

 /*  not(happens(threaten(Threaten_Param, At_Param14, Threaten_Ret15), Maptime11)) :-
       (   not(holds_at(holding(Threaten_Param, Threaten_Ret15),
                        Maptime11))
       ;   not(holds_at(at(Threaten_Param, Location12),
                        Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_192'(Threaten_Param,
                            At_Param14,
                            Threaten_Ret15,
                            Maptime11)).
 */
axiom(not(happens(threaten(Threaten_Param, At_Param14, Threaten_Ret15), Maptime11)),
   
    [ not(holds_at(holding(Threaten_Param, Threaten_Ret15),
                   Maptime11)),
      some(Location12,
           '$kolem_Fn_192'(Threaten_Param,
                           At_Param14,
                           Threaten_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(threaten(Threaten_Param, At_Param14, Threaten_Ret15), Maptime11)),
   
    [ not(holds_at(at(Threaten_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_192'(Threaten_Param,
                           At_Param14,
                           Threaten_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(threaten(Threaten_Param, At_Param14, Threaten_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_192'(Threaten_Param,
                           At_Param14,
                           Threaten_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(holding(Holding_Param, Holding_Ret), Time16) :-
       happens(threaten(Holding_Param, A, Holding_Ret),
               Time16),
       some(Some_Param,
            '$kolem_Fn_192'(Holding_Param,
                            A,
                            Holding_Ret,
                            Time16)).
 */
axiom(holds_at(holding(Holding_Param, Holding_Ret), Time16),
   
    [ happens(threaten(Holding_Param, A, Holding_Ret),
              Time16),
      some(Some_Param,
           '$kolem_Fn_192'(Holding_Param,
                           A,
                           Holding_Ret,
                           Time16))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(threaten(At_Param22, A, Threaten_Ret23),
               Time21),
       some(Location20,
            '$kolem_Fn_192'(At_Param22,
                            A,
                            Threaten_Ret23,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(threaten(At_Param22, A, Threaten_Ret23),
              Time21),
      some(Location20,
           '$kolem_Fn_192'(At_Param22,
                           A,
                           Threaten_Ret23,
                           Time21))
    ]).

 /*  holds_at(at(At_Param26, Location24), Time25) :-
       happens(threaten(Threaten_Param27,
                        At_Param26,
                        Threaten_Ret28),
               Time25),
       some(Location24,
            '$kolem_Fn_192'(Threaten_Param27,
                            At_Param26,
                            Threaten_Ret28,
                            Time25)).
 */
axiom(holds_at(at(At_Param26, Location24), Time25),
   
    [ happens(threaten(Threaten_Param27,
                       At_Param26,
                       Threaten_Ret28),
              Time25),
      some(Location24,
           '$kolem_Fn_192'(Threaten_Param27,
                           At_Param26,
                           Threaten_Ret28,
                           Time25))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:184
% [agent1,agent2,weapon,time]
% Happens(Threaten(agent1,agent2,weapon), time) ->
% Happens(BecomeAngryAt(agent2,agent1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:186
axiom(happens(becomeAngryAt(Agent2, Agent1), Time),
    [happens(threaten(Agent1, Agent2, Weapon), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:188
% [agent1,agent2,weapon,time]
% Initiates(Threaten(agent1,agent2,weapon),
%           ThreatenedBy(agent2,agent1),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:191
axiom(initiates(threaten(Agent1, Agent2, Weapon), threatenedBy(Agent2, Agent1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:193
% [agent1,agent2,time]
% Terminates(ReleaseFromThreat(agent1,agent2),
%            ThreatenedBy(agent2,agent1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:196
axiom(terminates(releaseFromThreat(Agent1, Agent2), threatenedBy(Agent2, Agent1), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:198
% event Order(agent,agent,physobj)
 %  event(order(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:199
==> mpred_prop(order(agent,agent,physobj),event).
==> meta_argtypes(order(agent,agent,physobj)).

% fluent KnowOrder(agent,agent,physobj)
 %  fluent(knowOrder(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:201
==> mpred_prop(knowOrder(agent,agent,physobj),fluent).
==> meta_argtypes(knowOrder(agent,agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:202
% [agent1,agent2,physobj,time]
% Initiates(Order(agent1,agent2,physobj),
%           KnowOrder(agent2,agent1,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:205
axiom(initiates(order(Agent1, Agent2, Physobj), knowOrder(Agent2, Agent1, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:207
% [agent1,agent2,physobj,time]
% Happens(Order(agent1,agent2,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:209
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(order(Agent1, Agent2, Physobj),
                        Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_193'(Fn_193_Param, At_Param, Order_Ret, Maptime))) :-
       happens(order(Fn_193_Param, At_Param, Order_Ret),
               Maptime),
       (   not(holds_at(at(Fn_193_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:211
axiom(not(some(Location7, '$kolem_Fn_193'(Fn_193_Param, At_Param, Order_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_193_Param, Location7), Maptime)),
      happens(order(Fn_193_Param, At_Param, Order_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_193'(Fn_193_Param, At_Param, Order_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(order(Fn_193_Param, At_Param, Order_Ret),
              Maptime)
    ]).

 /*  not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)) :-
       (   not(holds_at(at(Order_Param, Location12), Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_193'(Order_Param,
                            At_Param14,
                            Order_Ret15,
                            Maptime11)).
 */
axiom(not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)),
   
    [ not(holds_at(at(Order_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_193'(Order_Param,
                           At_Param14,
                           Order_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(order(Order_Param, At_Param14, Order_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_193'(Order_Param,
                           At_Param14,
                           Order_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(order(At_Param18, A, Order_Ret19), Time17),
       some(Location16,
            '$kolem_Fn_193'(At_Param18,
                            A,
                            Order_Ret19,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(order(At_Param18, A, Order_Ret19), Time17),
      some(Location16,
           '$kolem_Fn_193'(At_Param18,
                           A,
                           Order_Ret19,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(order(Order_Param23, At_Param22, Order_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_193'(Order_Param23,
                            At_Param22,
                            Order_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(order(Order_Param23, At_Param22, Order_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_193'(Order_Param23,
                           At_Param22,
                           Order_Ret24,
                           Time21))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:213
% event Request(agent,agent,physobj)
 %  event(request(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:214
==> mpred_prop(request(agent,agent,physobj),event).
==> meta_argtypes(request(agent,agent,physobj)).

% fluent KnowRequest(agent,agent,physobj)
 %  fluent(knowRequest(agent,agent,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:216
==> mpred_prop(knowRequest(agent,agent,physobj),fluent).
==> meta_argtypes(knowRequest(agent,agent,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:217
% [agent1,agent2,physobj,time]
% Initiates(Request(agent1,agent2,physobj),
%           KnowRequest(agent2,agent1,physobj),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:220
axiom(initiates(request(Agent1, Agent2, Physobj), knowRequest(Agent2, Agent1, Physobj), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:222
% [agent1,agent2,physobj,time]
% Happens(Request(agent1,agent2,physobj),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:224
% {location}% 
% HoldsAt(At(agent1,location),time) &
% HoldsAt(At(agent2,location),time).

 /*   exists([Location],
             if(happens(request(Agent1, Agent2, Physobj),
                        Time),
                 (holds_at(at(Agent1, Location), Time), holds_at(at(Agent2, Location), Time)))).
 */

 /*  not(some(Location7, '$kolem_Fn_194'(Fn_194_Param, At_Param, Request_Ret, Maptime))) :-
       happens(request(Fn_194_Param, At_Param, Request_Ret),
               Maptime),
       (   not(holds_at(at(Fn_194_Param, Location7), Maptime))
       ;   not(holds_at(at(At_Param, Location7), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:226
axiom(not(some(Location7, '$kolem_Fn_194'(Fn_194_Param, At_Param, Request_Ret, Maptime))),
   
    [ not(holds_at(at(Fn_194_Param, Location7), Maptime)),
      happens(request(Fn_194_Param, At_Param, Request_Ret),
              Maptime)
    ]).
axiom(not(some(Location7, '$kolem_Fn_194'(Fn_194_Param, At_Param, Request_Ret, Maptime))),
   
    [ not(holds_at(at(At_Param, Location7), Maptime)),
      happens(request(Fn_194_Param, At_Param, Request_Ret),
              Maptime)
    ]).

 /*  not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)) :-
       (   not(holds_at(at(Request_Param, Location12), Maptime11))
       ;   not(holds_at(at(At_Param14, Location12), Maptime11))
       ),
       some(Location12,
            '$kolem_Fn_194'(Request_Param,
                            At_Param14,
                            Request_Ret15,
                            Maptime11)).
 */
axiom(not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)),
   
    [ not(holds_at(at(Request_Param, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_194'(Request_Param,
                           At_Param14,
                           Request_Ret15,
                           Maptime11))
    ]).
axiom(not(happens(request(Request_Param, At_Param14, Request_Ret15), Maptime11)),
   
    [ not(holds_at(at(At_Param14, Location12), Maptime11)),
      some(Location12,
           '$kolem_Fn_194'(Request_Param,
                           At_Param14,
                           Request_Ret15,
                           Maptime11))
    ]).

 /*  holds_at(at(At_Param18, Location16), Time17) :-
       happens(request(At_Param18, A, Request_Ret19),
               Time17),
       some(Location16,
            '$kolem_Fn_194'(At_Param18,
                            A,
                            Request_Ret19,
                            Time17)).
 */
axiom(holds_at(at(At_Param18, Location16), Time17),
   
    [ happens(request(At_Param18, A, Request_Ret19),
              Time17),
      some(Location16,
           '$kolem_Fn_194'(At_Param18,
                           A,
                           Request_Ret19,
                           Time17))
    ]).

 /*  holds_at(at(At_Param22, Location20), Time21) :-
       happens(request(Request_Param23,
                       At_Param22,
                       Request_Ret24),
               Time21),
       some(Location20,
            '$kolem_Fn_194'(Request_Param23,
                            At_Param22,
                            Request_Ret24,
                            Time21)).
 */
axiom(holds_at(at(At_Param22, Location20), Time21),
   
    [ happens(request(Request_Param23,
                      At_Param22,
                      Request_Ret24),
              Time21),
      some(Location20,
           '$kolem_Fn_194'(Request_Param23,
                           At_Param22,
                           Request_Ret24,
                           Time21))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/SpeechAct.e:228
%; End of file.
