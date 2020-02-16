:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/FrankEtAl2003/Story1.e').
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
%; see examples/FrankEtAl2003/Story1.txt

% option modeldiff on
:- set_ec_option(modeldiff, on).

% load foundations/Root.e

% load foundations/EC.e

% sort agent
==> sort(agent).

% load examples/FrankEtAl2003/FrankEtAl.e

% agent Bob, Jilly
==> t(agent,bob).
==> t(agent,jilly).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/Story1.e:32
% !HoldsAt(Raining(),0).
 %  not(initially(raining())).
axiom(not(initially(raining())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/Story1.e:33
% !HoldsAt(SunShining(),0).
 %  not(initially(sunShining())).
axiom(not(initially(sunShining())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/Story1.e:35
% (HoldsAt(PlaySoccer(Bob),1) & HoldsAt(PlaySoccer(Jilly),1)) |
% (HoldsAt(PlayHideAndSeek(Bob),1) & HoldsAt(PlayHideAndSeek(Jilly),1)) |
% (HoldsAt(PlayComputerGame(Bob),1) & HoldsAt(PlayComputerGame(Jilly),1)).

 /*   (   holds_at(playSoccer(bob), 1),
          holds_at(playSoccer(jilly), 1)
      ;   holds_at(playHideAndSeek(bob), 1),
          holds_at(playHideAndSeek(jilly), 1)
      ;   holds_at(playComputerGame(bob), 1),
          holds_at(playComputerGame(jilly), 1)
      ).
 */

 /*  holds_at(playSoccer(bob), 1) :-
       (   not(holds_at(playHideAndSeek(bob), 1))
       ;   not(holds_at(playHideAndSeek(jilly), 1))
       ),
       (   not(holds_at(playComputerGame(bob), 1))
       ;   not(holds_at(playComputerGame(jilly), 1))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/Story1.e:37
axiom(holds_at(playSoccer(bob), start),
   
    [ not(holds_at(playComputerGame(bob), start)),
      not(holds_at(playHideAndSeek(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playSoccer(bob), start),
   
    [ not(holds_at(playComputerGame(jilly), start)),
      not(holds_at(playHideAndSeek(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playSoccer(bob), start),
   
    [ not(holds_at(playComputerGame(bob), start)),
      not(holds_at(playHideAndSeek(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playSoccer(bob), start),
   
    [ not(holds_at(playComputerGame(jilly), start)),
      not(holds_at(playHideAndSeek(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(playSoccer(jilly), 1) :-
       (   not(holds_at(playHideAndSeek(bob), 1))
       ;   not(holds_at(playHideAndSeek(jilly), 1))
       ),
       (   not(holds_at(playComputerGame(bob), 1))
       ;   not(holds_at(playComputerGame(jilly), 1))
       ).
 */
axiom(holds_at(playSoccer(jilly), start),
   
    [ not(holds_at(playComputerGame(bob), start)),
      not(holds_at(playHideAndSeek(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playSoccer(jilly), start),
   
    [ not(holds_at(playComputerGame(jilly), start)),
      not(holds_at(playHideAndSeek(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playSoccer(jilly), start),
   
    [ not(holds_at(playComputerGame(bob), start)),
      not(holds_at(playHideAndSeek(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playSoccer(jilly), start),
   
    [ not(holds_at(playComputerGame(jilly), start)),
      not(holds_at(playHideAndSeek(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(playHideAndSeek(bob), 1) :-
       (   not(holds_at(playComputerGame(bob), 1))
       ;   not(holds_at(playComputerGame(jilly), 1))
       ),
       (   not(holds_at(playSoccer(bob), 1))
       ;   not(holds_at(playSoccer(jilly), 1))
       ).
 */
axiom(holds_at(playHideAndSeek(bob), start),
   
    [ not(holds_at(playSoccer(bob), start)),
      not(holds_at(playComputerGame(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playHideAndSeek(bob), start),
   
    [ not(holds_at(playSoccer(jilly), start)),
      not(holds_at(playComputerGame(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playHideAndSeek(bob), start),
   
    [ not(holds_at(playSoccer(bob), start)),
      not(holds_at(playComputerGame(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playHideAndSeek(bob), start),
   
    [ not(holds_at(playSoccer(jilly), start)),
      not(holds_at(playComputerGame(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(playHideAndSeek(jilly), 1) :-
       (   not(holds_at(playComputerGame(bob), 1))
       ;   not(holds_at(playComputerGame(jilly), 1))
       ),
       (   not(holds_at(playSoccer(bob), 1))
       ;   not(holds_at(playSoccer(jilly), 1))
       ).
 */
axiom(holds_at(playHideAndSeek(jilly), start),
   
    [ not(holds_at(playSoccer(bob), start)),
      not(holds_at(playComputerGame(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playHideAndSeek(jilly), start),
   
    [ not(holds_at(playSoccer(jilly), start)),
      not(holds_at(playComputerGame(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playHideAndSeek(jilly), start),
   
    [ not(holds_at(playSoccer(bob), start)),
      not(holds_at(playComputerGame(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playHideAndSeek(jilly), start),
   
    [ not(holds_at(playSoccer(jilly), start)),
      not(holds_at(playComputerGame(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(playComputerGame(bob), 1) :-
       (   not(holds_at(playHideAndSeek(bob), 1))
       ;   not(holds_at(playHideAndSeek(jilly), 1))
       ),
       (   not(holds_at(playSoccer(bob), 1))
       ;   not(holds_at(playSoccer(jilly), 1))
       ).
 */
axiom(holds_at(playComputerGame(bob), start),
   
    [ not(holds_at(playSoccer(bob), start)),
      not(holds_at(playHideAndSeek(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playComputerGame(bob), start),
   
    [ not(holds_at(playSoccer(jilly), start)),
      not(holds_at(playHideAndSeek(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playComputerGame(bob), start),
   
    [ not(holds_at(playSoccer(bob), start)),
      not(holds_at(playHideAndSeek(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playComputerGame(bob), start),
   
    [ not(holds_at(playSoccer(jilly), start)),
      not(holds_at(playHideAndSeek(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).

 /*  holds_at(playComputerGame(jilly), 1) :-
       (   not(holds_at(playHideAndSeek(bob), 1))
       ;   not(holds_at(playHideAndSeek(jilly), 1))
       ),
       (   not(holds_at(playSoccer(bob), 1))
       ;   not(holds_at(playSoccer(jilly), 1))
       ).
 */
axiom(holds_at(playComputerGame(jilly), start),
   
    [ not(holds_at(playSoccer(bob), start)),
      not(holds_at(playHideAndSeek(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playComputerGame(jilly), start),
   
    [ not(holds_at(playSoccer(jilly), start)),
      not(holds_at(playHideAndSeek(bob), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playComputerGame(jilly), start),
   
    [ not(holds_at(playSoccer(bob), start)),
      not(holds_at(playHideAndSeek(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).
axiom(holds_at(playComputerGame(jilly), start),
   
    [ not(holds_at(playSoccer(jilly), start)),
      not(holds_at(playHideAndSeek(jilly), start)),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/Story1.e:39
% HoldsAt(Win(Bob),1) | HoldsAt(Win(Jilly),1).

 /*   (   holds_at(win(bob), 1)
      ;   holds_at(win(jilly), 1)
      ).
 */

 /*  holds_at(win(bob), 1) :-
       not(holds_at(win(jilly), 1)).
 */
axiom(holds_at(win(bob), start),
    [not(holds_at(win(jilly), start)), b(t, start), ignore(t+1=start)]).

 /*  holds_at(win(jilly), 1) :-
       not(holds_at(win(bob), 1)).
 */
axiom(holds_at(win(jilly), start),
    [not(holds_at(win(bob), start)), b(t, start), ignore(t+1=start)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/Story1.e:41
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/Story1.e:42
==> range(time,0,1).

% range offset 0 0
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/FrankEtAl2003/Story1.e:43
==> range(offset,0,0).
%; End of file.
