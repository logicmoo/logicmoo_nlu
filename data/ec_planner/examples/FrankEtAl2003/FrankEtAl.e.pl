:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/FrankEtAl2003/FrankEtAl.e').
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
%; @article{FrankEtAl:2003,
%;   author = "Stefan L. Frank and Mathieu Koppen and Leo G. M. Noordman and Wietske Vonk",
%;   year = "2003",
%;   title = "Modeling knowledge-based inferences in story comprehension",
%;   journal = "Cognitive Science",
%;   volume = "27",
%;   pages = "875--910",
%; }
%;

% fluent SunShining()
 %  fluent(sunShining()).
==> mpred_prop(sunShining(),fluent).
==> meta_argtypes(sunShining()).

% fluent Raining()
 %  fluent(raining()).
==> mpred_prop(raining(),fluent).
==> meta_argtypes(raining()).

% fluent Outside(agent)
 %  fluent(outside(agent)).
==> mpred_prop(outside(agent),fluent).
==> meta_argtypes(outside(agent)).

% fluent PlaySoccer(agent)
 %  fluent(playSoccer(agent)).
==> mpred_prop(playSoccer(agent),fluent).
==> meta_argtypes(playSoccer(agent)).

% fluent PlayHideAndSeek(agent)
 %  fluent(playHideAndSeek(agent)).
==> mpred_prop(playHideAndSeek(agent),fluent).
==> meta_argtypes(playHideAndSeek(agent)).

% fluent PlayComputerGame(agent)
 %  fluent(playComputerGame(agent)).
==> mpred_prop(playComputerGame(agent),fluent).
==> meta_argtypes(playComputerGame(agent)).

% fluent PlayWithDog(agent)
 %  fluent(playWithDog(agent)).
==> mpred_prop(playWithDog(agent),fluent).
==> meta_argtypes(playWithDog(agent)).

% fluent Win(agent)
 %  fluent(win(agent)).
==> mpred_prop(win(agent),fluent).
==> meta_argtypes(win(agent)).

% noninertial Outside, PlaySoccer, PlayHideAndSeek, PlayComputerGame
==> noninertial(outside).
==> noninertial(playSoccer).
==> noninertial(playHideAndSeek).
==> noninertial(playComputerGame).

% noninertial PlayWithDog, Win
==> noninertial(playWithDog).
==> noninertial(win).

% xor PlaySoccer, PlayHideAndSeek, PlayComputerGame, PlayWithDog
xor([playSoccer,playHideAndSeek,playComputerGame,playWithDog]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:34
% [agent,time]
% HoldsAt(PlaySoccer(agent),time) ->
% HoldsAt(Outside(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:36
axiom(holds_at(outside(Agent), Time),
    [holds_at(playSoccer(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:38
% [agent,time]
% HoldsAt(PlaySoccer(agent),time) ->
% ({agent1} agent1!=agent & HoldsAt(PlaySoccer(agent1),time)).

 /*   if(holds_at(playSoccer(Agent), Time),
         exists([Agent1],
                 (Agent1\=Agent, holds_at(playSoccer(Agent1), Time)))).
 */

 /*  not(holds_at(playSoccer(PlaySoccer_Ret), Time3)) :-
       (   not({dif(Dif_Param, PlaySoccer_Ret)})
       ;   not(holds_at(playSoccer(Dif_Param), Time3))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:40
axiom(not(holds_at(playSoccer(PlaySoccer_Ret), Time3)),
    [not({dif(Dif_Param, PlaySoccer_Ret)})]).
axiom(not(holds_at(playSoccer(PlaySoccer_Ret), Time3)),
    [not(holds_at(playSoccer(Dif_Param), Time3))]).

 /*  { dif(Dif_Param7, Dif_Ret)
   } :-
       holds_at(playSoccer(Dif_Ret), Time6).
 */
axiom({ dif(Dif_Param7, Dif_Ret)
},
    [holds_at(playSoccer(Dif_Ret), Time6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:42
% [agent,time]
% HoldsAt(PlayHideAndSeek(agent),time) ->
% ({agent1} agent1!=agent & HoldsAt(PlayHideAndSeek(agent1),time)).

 /*   if(holds_at(playHideAndSeek(Agent), Time),
         exists([Agent1],
                 (Agent1\=Agent, holds_at(playHideAndSeek(Agent1), Time)))).
 */

 /*  not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time3)) :-
       (   not({dif(Dif_Param, PlayHideAndSeek_Ret)})
       ;   not(holds_at(playHideAndSeek(Dif_Param), Time3))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:44
axiom(not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time3)),
    [not({dif(Dif_Param, PlayHideAndSeek_Ret)})]).
axiom(not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time3)),
    [not(holds_at(playHideAndSeek(Dif_Param), Time3))]).

 /*  { dif(Dif_Param7, Dif_Ret)
   } :-
       holds_at(playHideAndSeek(Dif_Ret), Time6).
 */
axiom({ dif(Dif_Param7, Dif_Ret)
},
    [holds_at(playHideAndSeek(Dif_Ret), Time6)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:46
% [agent,time]
% HoldsAt(PlayComputerGame(agent),time) ->
% !HoldsAt(Outside(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:48
axiom(not(holds_at(outside(Agent), Time)),
    [holds_at(playComputerGame(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:50
% [agent,time]
% HoldsAt(Win(agent),time) ->
% (HoldsAt(PlaySoccer(agent),time) |
%  HoldsAt(PlayHideAndSeek(agent),time) |
%  (HoldsAt(PlayComputerGame(agent),time) &
%   ({agent1} agent1!=agent & HoldsAt(PlayComputerGame(agent1),time)))).

 /*   if(holds_at(win(Agent), Time),
          (holds_at(playSoccer(Agent), Time);holds_at(playHideAndSeek(Agent), Time);holds_at(playComputerGame(Agent), Time), exists([Agent1],  (Agent1\=Agent, holds_at(playComputerGame(Agent1), Time))))).
 */

 /*  not(holds_at(win(Win_Ret), Time3)) :-
       not(holds_at(playSoccer(Win_Ret), Time3)),
       not(holds_at(playHideAndSeek(Win_Ret), Time3)),
       (   not(holds_at(playComputerGame(Win_Ret), Time3))
       ;   not({dif(Dif_Param, Win_Ret)})
       ;   not(holds_at(playComputerGame(Dif_Param), Time3))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:55
axiom(not(holds_at(win(Win_Ret), Time3)),
   
    [ not(holds_at(playComputerGame(Win_Ret), Time3)),
      not(holds_at(playSoccer(Win_Ret), Time3)),
      not(holds_at(playHideAndSeek(Win_Ret), Time3))
    ]).
axiom(not(holds_at(win(Win_Ret), Time3)),
   
    [ not({dif(Dif_Param, Win_Ret)}),
      not(holds_at(playSoccer(Win_Ret), Time3)),
      not(holds_at(playHideAndSeek(Win_Ret), Time3))
    ]).
axiom(not(holds_at(win(Win_Ret), Time3)),
   
    [ not(holds_at(playComputerGame(Dif_Param), Time3)),
      not(holds_at(playSoccer(Win_Ret), Time3)),
      not(holds_at(playHideAndSeek(Win_Ret), Time3))
    ]).

 /*  holds_at(playSoccer(PlaySoccer_Ret), Time6) :-
       ( not(holds_at(playHideAndSeek(PlaySoccer_Ret), Time6)),
         (   not(holds_at(playComputerGame(PlaySoccer_Ret), Time6))
         ;   not({dif(Dif_Param7, PlaySoccer_Ret)})
         ;   not(holds_at(playComputerGame(Dif_Param7), Time6))
         )
       ),
       holds_at(win(PlaySoccer_Ret), Time6).
 */
axiom(holds_at(playSoccer(PlaySoccer_Ret), Time6),
   
    [ not(holds_at(playComputerGame(PlaySoccer_Ret), Time6)),
      not(holds_at(playHideAndSeek(PlaySoccer_Ret), Time6)),
      holds_at(win(PlaySoccer_Ret), Time6)
    ]).
axiom(holds_at(playSoccer(PlaySoccer_Ret), Time6),
   
    [ not({dif(Dif_Param7, PlaySoccer_Ret)}),
      not(holds_at(playHideAndSeek(PlaySoccer_Ret), Time6)),
      holds_at(win(PlaySoccer_Ret), Time6)
    ]).
axiom(holds_at(playSoccer(PlaySoccer_Ret), Time6),
   
    [ not(holds_at(playComputerGame(Dif_Param7), Time6)),
      not(holds_at(playHideAndSeek(PlaySoccer_Ret), Time6)),
      holds_at(win(PlaySoccer_Ret), Time6)
    ]).

 /*  holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time9) :-
       (   not(holds_at(playComputerGame(PlayHideAndSeek_Ret), Time9))
       ;   not({dif(Dif_Param10, PlayHideAndSeek_Ret)})
       ;   not(holds_at(playComputerGame(Dif_Param10), Time9))
       ),
       not(holds_at(playSoccer(PlayHideAndSeek_Ret), Time9)),
       holds_at(win(PlayHideAndSeek_Ret), Time9).
 */
axiom(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time9),
   
    [ not(holds_at(playComputerGame(PlayHideAndSeek_Ret), Time9)),
      not(holds_at(playSoccer(PlayHideAndSeek_Ret), Time9)),
      holds_at(win(PlayHideAndSeek_Ret), Time9)
    ]).
axiom(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time9),
   
    [ not({dif(Dif_Param10, PlayHideAndSeek_Ret)}),
      not(holds_at(playSoccer(PlayHideAndSeek_Ret), Time9)),
      holds_at(win(PlayHideAndSeek_Ret), Time9)
    ]).
axiom(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time9),
   
    [ not(holds_at(playComputerGame(Dif_Param10), Time9)),
      not(holds_at(playSoccer(PlayHideAndSeek_Ret), Time9)),
      holds_at(win(PlayHideAndSeek_Ret), Time9)
    ]).

 /*  holds_at(playComputerGame(PlayComputerGame_Ret), Time12) :-
       not(holds_at(playHideAndSeek(PlayComputerGame_Ret), Time12)),
       not(holds_at(playSoccer(PlayComputerGame_Ret), Time12)),
       holds_at(win(PlayComputerGame_Ret), Time12).
 */
axiom(holds_at(playComputerGame(PlayComputerGame_Ret), Time12),
   
    [ not(holds_at(playHideAndSeek(PlayComputerGame_Ret), Time12)),
      not(holds_at(playSoccer(PlayComputerGame_Ret), Time12)),
      holds_at(win(PlayComputerGame_Ret), Time12)
    ]).

 /*  { dif(Dif_Param15, Dif_Ret)
   } :-
       not(holds_at(playHideAndSeek(Dif_Ret), Time14)),
       not(holds_at(playSoccer(Dif_Ret), Time14)),
       holds_at(win(Dif_Ret), Time14).
 */
axiom({ dif(Dif_Param15, Dif_Ret)
},
   
    [ not(holds_at(playHideAndSeek(Dif_Ret), Time14)),
      not(holds_at(playSoccer(Dif_Ret), Time14)),
      holds_at(win(Dif_Ret), Time14)
    ]).

 /*  holds_at(playComputerGame(PlayComputerGame_Ret18), Time17) :-
       not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret19), Time17)),
       not(holds_at(playSoccer(PlayHideAndSeek_Ret19), Time17)),
       holds_at(win(PlayHideAndSeek_Ret19), Time17).
 */
axiom(holds_at(playComputerGame(PlayComputerGame_Ret18), Time17),
   
    [ not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret19), Time17)),
      not(holds_at(playSoccer(PlayHideAndSeek_Ret19), Time17)),
      holds_at(win(PlayHideAndSeek_Ret19), Time17)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:57
% [agent,time]
% HoldsAt(PlaySoccer(agent),time) &
% HoldsAt(Win(agent),time) ->
% !HoldsAt(PlaySoccer(agent),time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:60
axiom(not(holds_at(playSoccer(Agent), start)),
   
    [ holds_at(playSoccer(Agent), t),
      holds_at(win(Agent), t),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:62
% [agent,time]
% HoldsAt(PlayHideAndSeek(agent),time) &
% HoldsAt(Win(agent),time) ->
% !HoldsAt(PlayHideAndSeek(agent),time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:65
axiom(not(holds_at(playHideAndSeek(Agent), start)),
   
    [ holds_at(playHideAndSeek(Agent), t),
      holds_at(win(Agent), t),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:67
% [agent,time]
% HoldsAt(PlayComputerGame(agent),time) &
% HoldsAt(Win(agent),time) ->
% !HoldsAt(PlayComputerGame(agent),time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:70
axiom(not(holds_at(playComputerGame(Agent), start)),
   
    [ holds_at(playComputerGame(Agent), t),
      holds_at(win(Agent), t),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:72
% [agent,time]
% HoldsAt(Win(agent),time) ->
% HoldsAt(PlaySoccer(agent),time-1) |
% HoldsAt(PlayHideAndSeek(agent),time-1) |
% HoldsAt(PlayComputerGame(agent),time-1).

 /*   if(holds_at(win(Agent), Time),
          (holds_at(playSoccer(Agent), Time-1);holds_at(playHideAndSeek(Agent), Time-1);holds_at(playComputerGame(Agent), Time-1))).
 */

 /*  holds_at(playSoccer(PlaySoccer_Ret), Time2-1) :-
       ( not(holds_at(playHideAndSeek(PlaySoccer_Ret), Time2-1)),
         not(holds_at(playComputerGame(PlaySoccer_Ret), Time2-1))
       ),
       holds_at(win(PlaySoccer_Ret), Time2).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:76
axiom(holds_at(playSoccer(PlaySoccer_Ret), t),
   
    [ not(holds_at(playHideAndSeek(PlaySoccer_Ret), t)),
      not(holds_at(playComputerGame(PlaySoccer_Ret), t)),
      holds_at(win(PlaySoccer_Ret), start),
      b(t, start),
      ignore(start-1=t)
    ]).

 /*  holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time4-1) :-
       not(holds_at(playComputerGame(PlayHideAndSeek_Ret), Time4-1)),
       not(holds_at(playSoccer(PlayHideAndSeek_Ret), Time4-1)),
       holds_at(win(PlayHideAndSeek_Ret), Time4).
 */
axiom(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), t),
   
    [ not(holds_at(playComputerGame(PlayHideAndSeek_Ret), t)),
      not(holds_at(playSoccer(PlayHideAndSeek_Ret), t)),
      holds_at(win(PlayHideAndSeek_Ret), start),
      b(t, start),
      ignore(start-1=t)
    ]).

 /*  holds_at(playComputerGame(PlayComputerGame_Ret), Time6-1) :-
       not(holds_at(playHideAndSeek(PlayComputerGame_Ret), Time6-1)),
       not(holds_at(playSoccer(PlayComputerGame_Ret), Time6-1)),
       holds_at(win(PlayComputerGame_Ret), Time6).
 */
axiom(holds_at(playComputerGame(PlayComputerGame_Ret), t),
   
    [ not(holds_at(playHideAndSeek(PlayComputerGame_Ret), t)),
      not(holds_at(playSoccer(PlayComputerGame_Ret), t)),
      holds_at(win(PlayComputerGame_Ret), start),
      b(t, start),
      ignore(start-1=t)
    ]).

 /*  not(holds_at(win(Win_Ret), Time8)) :-
       not(holds_at(playSoccer(Win_Ret), Time8-1)),
       not(holds_at(playHideAndSeek(Win_Ret), Time8-1)),
       not(holds_at(playComputerGame(Win_Ret), Time8-1)).
 */
axiom(not(holds_at(win(Win_Ret), start)),
   
    [ not(holds_at(playSoccer(Win_Ret), t)),
      not(holds_at(playHideAndSeek(Win_Ret), t)),
      not(holds_at(playComputerGame(Win_Ret), t)),
      b(t, start),
      ignore(start-1=t)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:78
% [agent,time]
% HoldsAt(PlaySoccer(agent),time) ->
% !HoldsAt(Raining(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:80
axiom(not(holds_at(raining(), Time)),
    [holds_at(playSoccer(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:82
% [agent,time]
% HoldsAt(Win(agent),time) ->
% !({agent1} agent1!=agent & HoldsAt(Win(agent1),time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:84
axiom(not(exists([Agent1],  (Agent1\=Agent, holds_at(win(Agent1), Time)))),
    [holds_at(win(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:86
% [agent1,agent2,time]
% HoldsAt(PlayHideAndSeek(agent1),time) &
% HoldsAt(PlayHideAndSeek(agent2),time) ->
% ((HoldsAt(Outside(agent1),time) & HoldsAt(Outside(agent2),time)) |
%  (!HoldsAt(Outside(agent1),time) & !HoldsAt(Outside(agent2),time))).

 /*   if((holds_at(playHideAndSeek(Agent1), Time), holds_at(playHideAndSeek(Agent2), Time)),
          (holds_at(outside(Agent1), Time), holds_at(outside(Agent2), Time);not(holds_at(outside(Agent1), Time)), not(holds_at(outside(Agent2), Time)))).
 */

 /*  not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time3)) :-
       holds_at(playHideAndSeek(PlayHideAndSeek_Ret5), Time3),
       (   not(holds_at(outside(PlayHideAndSeek_Ret), Time3))
       ;   not(holds_at(outside(PlayHideAndSeek_Ret5), Time3))
       ),
       (   holds_at(outside(PlayHideAndSeek_Ret), Time3)
       ;   holds_at(outside(PlayHideAndSeek_Ret5), Time3)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:90
axiom(not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time3)),
   
    [ holds_at(outside(PlayHideAndSeek_Ret), Time3),
      not(holds_at(outside(PlayHideAndSeek_Ret), Time3)),
      holds_at(playHideAndSeek(PlayHideAndSeek_Ret5), Time3)
    ]).
axiom(not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time3)),
   
    [ holds_at(outside(PlayHideAndSeek_Ret5), Time3),
      not(holds_at(outside(PlayHideAndSeek_Ret), Time3)),
      holds_at(playHideAndSeek(PlayHideAndSeek_Ret5), Time3)
    ]).
axiom(not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time3)),
   
    [ holds_at(outside(PlayHideAndSeek_Ret), Time3),
      not(holds_at(outside(PlayHideAndSeek_Ret5), Time3)),
      holds_at(playHideAndSeek(PlayHideAndSeek_Ret5), Time3)
    ]).
axiom(not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret), Time3)),
   
    [ holds_at(outside(PlayHideAndSeek_Ret5), Time3),
      not(holds_at(outside(PlayHideAndSeek_Ret5), Time3)),
      holds_at(playHideAndSeek(PlayHideAndSeek_Ret5), Time3)
    ]).

 /*  not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret7), Time6)) :-
       holds_at(playHideAndSeek(PlayHideAndSeek_Ret8), Time6),
       (   not(holds_at(outside(PlayHideAndSeek_Ret8), Time6))
       ;   not(holds_at(outside(PlayHideAndSeek_Ret7), Time6))
       ),
       (   holds_at(outside(PlayHideAndSeek_Ret8), Time6)
       ;   holds_at(outside(PlayHideAndSeek_Ret7), Time6)
       ).
 */
axiom(not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret7), Time6)),
   
    [ holds_at(outside(PlayHideAndSeek_Ret8), Time6),
      not(holds_at(outside(PlayHideAndSeek_Ret8), Time6)),
      holds_at(playHideAndSeek(PlayHideAndSeek_Ret8), Time6)
    ]).
axiom(not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret7), Time6)),
   
    [ holds_at(outside(PlayHideAndSeek_Ret7), Time6),
      not(holds_at(outside(PlayHideAndSeek_Ret8), Time6)),
      holds_at(playHideAndSeek(PlayHideAndSeek_Ret8), Time6)
    ]).
axiom(not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret7), Time6)),
   
    [ holds_at(outside(PlayHideAndSeek_Ret8), Time6),
      not(holds_at(outside(PlayHideAndSeek_Ret7), Time6)),
      holds_at(playHideAndSeek(PlayHideAndSeek_Ret8), Time6)
    ]).
axiom(not(holds_at(playHideAndSeek(PlayHideAndSeek_Ret7), Time6)),
   
    [ holds_at(outside(PlayHideAndSeek_Ret7), Time6),
      not(holds_at(outside(PlayHideAndSeek_Ret7), Time6)),
      holds_at(playHideAndSeek(PlayHideAndSeek_Ret8), Time6)
    ]).

 /*  holds_at(outside(Outside_Ret), Time9) :-
       (   holds_at(outside(Outside_Ret), Time9)
       ;   holds_at(outside(Outside_Ret11), Time9)
       ),
       holds_at(playHideAndSeek(Outside_Ret), Time9),
       holds_at(playHideAndSeek(Outside_Ret11), Time9).
 */
axiom(holds_at(outside(Outside_Ret), Time9),
   
    [ holds_at(outside(Outside_Ret), Time9),
      holds_at(playHideAndSeek(Outside_Ret), Time9),
      holds_at(playHideAndSeek(Outside_Ret11), Time9)
    ]).
axiom(holds_at(outside(Outside_Ret), Time9),
   
    [ holds_at(outside(Outside_Ret11), Time9),
      holds_at(playHideAndSeek(Outside_Ret), Time9),
      holds_at(playHideAndSeek(Outside_Ret11), Time9)
    ]).

 /*  holds_at(outside(Outside_Ret13), Time12) :-
       (   holds_at(outside(Outside_Ret14), Time12)
       ;   holds_at(outside(Outside_Ret13), Time12)
       ),
       holds_at(playHideAndSeek(Outside_Ret14), Time12),
       holds_at(playHideAndSeek(Outside_Ret13), Time12).
 */
axiom(holds_at(outside(Outside_Ret13), Time12),
   
    [ holds_at(outside(Outside_Ret14), Time12),
      holds_at(playHideAndSeek(Outside_Ret14), Time12),
      holds_at(playHideAndSeek(Outside_Ret13), Time12)
    ]).
axiom(holds_at(outside(Outside_Ret13), Time12),
   
    [ holds_at(outside(Outside_Ret13), Time12),
      holds_at(playHideAndSeek(Outside_Ret14), Time12),
      holds_at(playHideAndSeek(Outside_Ret13), Time12)
    ]).

 /*  not(holds_at(outside(Outside_Ret16), Time15)) :-
       (   not(holds_at(outside(Outside_Ret16), Time15))
       ;   not(holds_at(outside(Outside_Ret17), Time15))
       ),
       holds_at(playHideAndSeek(Outside_Ret16), Time15),
       holds_at(playHideAndSeek(Outside_Ret17), Time15).
 */
axiom(not(holds_at(outside(Outside_Ret16), Time15)),
   
    [ not(holds_at(outside(Outside_Ret16), Time15)),
      holds_at(playHideAndSeek(Outside_Ret16), Time15),
      holds_at(playHideAndSeek(Outside_Ret17), Time15)
    ]).
axiom(not(holds_at(outside(Outside_Ret16), Time15)),
   
    [ not(holds_at(outside(Outside_Ret17), Time15)),
      holds_at(playHideAndSeek(Outside_Ret16), Time15),
      holds_at(playHideAndSeek(Outside_Ret17), Time15)
    ]).

 /*  not(holds_at(outside(Outside_Ret19), Time18)) :-
       (   not(holds_at(outside(Outside_Ret20), Time18))
       ;   not(holds_at(outside(Outside_Ret19), Time18))
       ),
       holds_at(playHideAndSeek(Outside_Ret20), Time18),
       holds_at(playHideAndSeek(Outside_Ret19), Time18).
 */
axiom(not(holds_at(outside(Outside_Ret19), Time18)),
   
    [ not(holds_at(outside(Outside_Ret20), Time18)),
      holds_at(playHideAndSeek(Outside_Ret20), Time18),
      holds_at(playHideAndSeek(Outside_Ret19), Time18)
    ]).
axiom(not(holds_at(outside(Outside_Ret19), Time18)),
   
    [ not(holds_at(outside(Outside_Ret19), Time18)),
      holds_at(playHideAndSeek(Outside_Ret20), Time18),
      holds_at(playHideAndSeek(Outside_Ret19), Time18)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/FrankEtAl.e:92
%; End of file.
