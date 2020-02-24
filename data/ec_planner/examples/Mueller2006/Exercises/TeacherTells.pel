:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Exercises/TeacherTells.e').
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
%; @book{Mueller:2006,
%;   author = "Erik T. Mueller",
%;   year = "2006",
%;   title = "Commonsense Reasoning",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann/Elsevier",
%; }
%;

% option modeldiff on
:- set_ec_option(modeldiff, on).

% load foundations/Root.e

% load foundations/EC.e

% sort agent
==> sort(agent).

% sort room
==> sort(room).

% sort fact
==> sort(fact).

% agent Teacher, Student
==> t(agent,teacher).
==> t(agent,student).

% room Kitchen, Classroom
==> t(room,kitchen).
==> t(room,classroom).

% fact Fact1, Fact2
==> t(fact,fact1).
==> t(fact,fact2).

% fluent InRoom(agent,room)
 %  fluent(inRoom(agent,room)).
==> mpred_prop(inRoom(agent,room),fluent).
==> meta_argtypes(inRoom(agent,room)).

% fluent ListeningTo(agent,agent)
 %  fluent(listeningTo(agent,agent)).
==> mpred_prop(listeningTo(agent,agent),fluent).
==> meta_argtypes(listeningTo(agent,agent)).

% fluent Know(agent,fact)
 %  fluent(know(agent,fact)).
==> mpred_prop(know(agent,fact),fluent).
==> meta_argtypes(know(agent,fact)).

% event Tell(agent,agent,fact)
 %  event(tell(agent,agent,fact)).
==> mpred_prop(tell(agent,agent,fact),event).
==> meta_argtypes(tell(agent,agent,fact)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:38
%; Sigma
% [agent1,agent2,fact,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:41
% (
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:41
% {room} HoldsAt(InRoom(agent1,room),time) &
%         HoldsAt(InRoom(agent2,room),time)) &
% HoldsAt(ListeningTo(agent2,agent1),time) ->
% Initiates(Tell(agent1,agent2,fact),Know(agent2,fact),time).

 /*   exists([Room],
             if(((holds_at(inRoom(Agent1, Room), Time), holds_at(inRoom(Agent2, Room), Time)), holds_at(listeningTo(Agent2, Agent1), Time)),
                initiates(tell(Agent1, Agent2, Fact),
                          know(Agent2, Fact),
                          Time))).
 */

 /*  initiates(tell(Tell_Param, Know_Param, Tell_Ret), know(Know_Param, Tell_Ret), Time6) :-
       ( ( holds_at(inRoom(Tell_Param, Some_Param), Time6),
           holds_at(inRoom(Know_Param, Some_Param), Time6)
         ),
         holds_at(listeningTo(Know_Param, Tell_Param), Time6)
       ),
       some(Some_Param,
            '$kolem_Fn_20'(Tell_Param,
                           Time6,
                           Know_Param,
                           Tell_Ret)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:44
axiom(initiates(tell(Tell_Param, Know_Param, Tell_Ret), know(Know_Param, Tell_Ret), Time6),
   
    [ holds_at(inRoom(Tell_Param, Some_Param), Time6),
      holds_at(inRoom(Know_Param, Some_Param), Time6),
      holds_at(listeningTo(Know_Param, Tell_Param), Time6),
      some(Some_Param,
           '$kolem_Fn_20'(Tell_Param,
                          Time6,
                          Know_Param,
                          Tell_Ret))
    ]).

 /*  not(holds_at(inRoom(InRoom_Param, Some_Param14), Time11)) :-
       holds_at(inRoom(InRoom_Param13, Some_Param14), Time11),
       holds_at(listeningTo(InRoom_Param13, InRoom_Param),
                Time11),
       not(initiates(tell(InRoom_Param,
                          InRoom_Param13,
                          Tell_Ret15),
                     know(InRoom_Param13, Tell_Ret15),
                     Time11)),
       some(Some_Param14,
            '$kolem_Fn_20'(InRoom_Param,
                           Time11,
                           InRoom_Param13,
                           Tell_Ret15)).
 */
axiom(not(holds_at(inRoom(InRoom_Param, Some_Param14), Time11)),
   
    [ holds_at(inRoom(InRoom_Param13, Some_Param14), Time11),
      holds_at(listeningTo(InRoom_Param13, InRoom_Param),
               Time11),
      not(initiates(tell(InRoom_Param,
                         InRoom_Param13,
                         Tell_Ret15),
                    know(InRoom_Param13, Tell_Ret15),
                    Time11)),
      some(Some_Param14,
           '$kolem_Fn_20'(InRoom_Param,
                          Time11,
                          InRoom_Param13,
                          Tell_Ret15))
    ]).

 /*  not(holds_at(inRoom(InRoom_Param17, Some_Param19), Time16)) :-
       holds_at(inRoom(InRoom_Param18, Some_Param19), Time16),
       holds_at(listeningTo(InRoom_Param17, InRoom_Param18),
                Time16),
       not(initiates(tell(InRoom_Param18,
                          InRoom_Param17,
                          Tell_Ret20),
                     know(InRoom_Param17, Tell_Ret20),
                     Time16)),
       some(Some_Param19,
            '$kolem_Fn_20'(InRoom_Param18,
                           Time16,
                           InRoom_Param17,
                           Tell_Ret20)).
 */
axiom(not(holds_at(inRoom(InRoom_Param17, Some_Param19), Time16)),
   
    [ holds_at(inRoom(InRoom_Param18, Some_Param19), Time16),
      holds_at(listeningTo(InRoom_Param17, InRoom_Param18),
               Time16),
      not(initiates(tell(InRoom_Param18,
                         InRoom_Param17,
                         Tell_Ret20),
                    know(InRoom_Param17, Tell_Ret20),
                    Time16)),
      some(Some_Param19,
           '$kolem_Fn_20'(InRoom_Param18,
                          Time16,
                          InRoom_Param17,
                          Tell_Ret20))
    ]).

 /*  not(holds_at(listeningTo(ListeningTo_Param, InRoom_Param23), Time21)) :-
       ( holds_at(inRoom(InRoom_Param23, Some_Param24), Time21),
         holds_at(inRoom(ListeningTo_Param, Some_Param24),
                  Time21)
       ),
       not(initiates(tell(InRoom_Param23,
                          ListeningTo_Param,
                          Tell_Ret25),
                     know(ListeningTo_Param, Tell_Ret25),
                     Time21)),
       some(Some_Param24,
            '$kolem_Fn_20'(InRoom_Param23,
                           Time21,
                           ListeningTo_Param,
                           Tell_Ret25)).
 */
axiom(not(holds_at(listeningTo(ListeningTo_Param, InRoom_Param23), Time21)),
   
    [ holds_at(inRoom(InRoom_Param23, Some_Param24), Time21),
      holds_at(inRoom(ListeningTo_Param, Some_Param24),
               Time21),
      not(initiates(tell(InRoom_Param23,
                         ListeningTo_Param,
                         Tell_Ret25),
                    know(ListeningTo_Param, Tell_Ret25),
                    Time21)),
      some(Some_Param24,
           '$kolem_Fn_20'(InRoom_Param23,
                          Time21,
                          ListeningTo_Param,
                          Tell_Ret25))
    ]).

 /*  not(some(Some_Param27, '$kolem_Fn_20'(Fn_20_Param, Time26, Know_Param29, Fn_20_Ret))) :-
       not(initiates(tell(Fn_20_Param, Know_Param29, Fn_20_Ret),
                     know(Know_Param29, Fn_20_Ret),
                     Time26)),
       ( holds_at(inRoom(Fn_20_Param, Some_Param27), Time26),
         holds_at(inRoom(Know_Param29, Some_Param27), Time26)
       ),
       holds_at(listeningTo(Know_Param29, Fn_20_Param), Time26).
 */
axiom(not(some(Some_Param27, '$kolem_Fn_20'(Fn_20_Param, Time26, Know_Param29, Fn_20_Ret))),
   
    [ not(initiates(tell(Fn_20_Param, Know_Param29, Fn_20_Ret),
                    know(Know_Param29, Fn_20_Ret),
                    Time26)),
      holds_at(inRoom(Fn_20_Param, Some_Param27), Time26),
      holds_at(inRoom(Know_Param29, Some_Param27), Time26),
      holds_at(listeningTo(Know_Param29, Fn_20_Param), Time26)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:46
%; Delta


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:48
% Happens(Tell(Teacher,Student,Fact1),0).
axiom(happens(tell(teacher, student, fact1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:50
%; Psi
% [agent,room1,room2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:53
% HoldsAt(InRoom(agent,room1),time) &
% HoldsAt(InRoom(agent,room2),time) ->
% room1 = room2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:55
axiom(Room1=Room2,
   
    [ holds_at(inRoom(Agent, Room1), Time),
      holds_at(inRoom(Agent, Room2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:57
%; Gamma
% [agent,fact]
 % !HoldsAt(Know(agent,fact),0).
 %  not(initially(know(Agent,Fact))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:59
axiom(not(initially(know(Know_Param, Know_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:60
% [agent1,agent2]
 % HoldsAt(ListeningTo(agent1,agent2),0).
axiom(initially(listeningTo(Agent1, Agent2)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:61
% [agent]
 % HoldsAt(InRoom(agent,Classroom),0).
axiom(initially(inRoom(Agent, classroom)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:63
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:64
==> completion(happens).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:66
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/TeacherTells.e:67
==> range(offset,1,1).
%; End of file.
