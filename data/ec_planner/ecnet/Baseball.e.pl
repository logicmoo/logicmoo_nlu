:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Baseball.e').
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
%; @book{EthanAllen:1982,
%;   author = "Ethan Allen",
%;   year = "1982",
%;   title = "Baseball Play and Strategy",
%;   address = "Robert E. Krieger",
%;   publisher = "Malabar, FL",
%;   edition = "Third",
%; }
%;
%; @book{Coombs:1967,
%;   author = "Jack Coombs",
%;   year = "1967",
%;   title = "Baseball",
%;   address = "Englewood Cliffs, NJ",
%;   publisher = "Prentice-Hall",
%;   edition = "4th",
%;   howpublished = "revised by Danny Litwhiler",
%; }
%;

% sort ballgame
==> sort(ballgame).

% sort hardball: ball
==> subsort(hardball,ball).

% sort base: physobj
==> subsort(base,physobj).

% sort firstbase: base
==> subsort(firstbase,base).
%;sort secondbase: base
%;sort thirdbase: base

% sort homeplate: base
==> subsort(homeplate,base).

% sort mound: physobj
==> subsort(mound,physobj).

% sort pitchermound: mound
==> subsort(pitchermound,mound).
%;sort furniture: physobj
%;sort bench: furniture
%;sort playerbench: bench

% sort field: physobj
==> subsort(field,physobj).
%;sort shortstoparea: field
%;sort catcherarea: field

% sort outfield: field
==> subsort(outfield,field).
%;sort leftfield: outfield
%;sort centerfield: outfield
%;sort rightfield: outfield

% function BallOf(ballgame): hardball
 %  functional_predicate(ballOf(ballgame,hardball)).
==> mpred_prop(ballOf(ballgame,hardball),functional_predicate).
==> meta_argtypes(ballOf(ballgame,hardball)).
resultIsa(ballOf,hardball).

% function FirstBaseOf(ballgame): firstbase
 %  functional_predicate(firstBaseOf(ballgame,firstbase)).
==> mpred_prop(firstBaseOf(ballgame,firstbase),functional_predicate).
==> meta_argtypes(firstBaseOf(ballgame,firstbase)).
resultIsa(firstBaseOf,firstbase).
%;function SecondBaseOf(ballgame): secondbase
%;function ThirdBaseOf(ballgame): thirdbase

% function HomeplateOf(ballgame): homeplate
 %  functional_predicate(homeplateOf(ballgame,homeplate)).
==> mpred_prop(homeplateOf(ballgame,homeplate),functional_predicate).
==> meta_argtypes(homeplateOf(ballgame,homeplate)).
resultIsa(homeplateOf,homeplate).

% function OutfieldOf(ballgame): outfield
 %  functional_predicate(outfieldOf(ballgame,outfield)).
==> mpred_prop(outfieldOf(ballgame,outfield),functional_predicate).
==> meta_argtypes(outfieldOf(ballgame,outfield)).
resultIsa(outfieldOf,outfield).

% function PitchermoundOf(ballgame): pitchermound
 %  functional_predicate(pitchermoundOf(ballgame,pitchermound)).
==> mpred_prop(pitchermoundOf(ballgame,pitchermound),
	       functional_predicate).
==> meta_argtypes(pitchermoundOf(ballgame,pitchermound)).
resultIsa(pitchermoundOf,pitchermound).

% function PlayerbenchOf(ballgame): playerbench
 %  functional_predicate(playerbenchOf(ballgame,playerbench)).
==> mpred_prop(playerbenchOf(ballgame,playerbench),
	       functional_predicate).
==> meta_argtypes(playerbenchOf(ballgame,playerbench)).
resultIsa(playerbenchOf,playerbench).

% predicate HomeTeamPlayer(ballgame,agent)
 %  predicate(homeTeamPlayer(ballgame,agent)).
==> mpred_prop(homeTeamPlayer(ballgame,agent),predicate).
==> meta_argtypes(homeTeamPlayer(ballgame,agent)).

% predicate VisitingTeamPlayer(ballgame,agent)
 %  predicate(visitingTeamPlayer(ballgame,agent)).
==> mpred_prop(visitingTeamPlayer(ballgame,agent),predicate).
==> meta_argtypes(visitingTeamPlayer(ballgame,agent)).

% predicate Player(ballgame,agent)
 %  predicate(player(ballgame,agent)).
==> mpred_prop(player(ballgame,agent),predicate).
==> meta_argtypes(player(ballgame,agent)).

% predicate OnOppositeTeams(ballgame,agent,agent)
 %  predicate(onOppositeTeams(ballgame,agent,agent)).
==> mpred_prop(onOppositeTeams(ballgame,agent,agent),predicate).
==> meta_argtypes(onOppositeTeams(ballgame,agent,agent)).

% event Pitch(ballgame,agent,hardball,agent)
 %  event(pitch(ballgame,agent,hardball,agent)).
==> mpred_prop(pitch(ballgame,agent,hardball,agent),event).
==> meta_argtypes(pitch(ballgame,agent,hardball,agent)).

% event PitchInStrikeZone(ballgame,agent,hardball,agent)
 %  event(pitchInStrikeZone(ballgame,agent,hardball,agent)).
==> mpred_prop(pitchInStrikeZone(ballgame,agent,hardball,agent),event).
==> meta_argtypes(pitchInStrikeZone(ballgame,agent,hardball,agent)).

% event PitchOutOfStrikeZone(ballgame,agent,hardball,agent)
 %  event(pitchOutOfStrikeZone(ballgame,agent,hardball,agent)).
==> mpred_prop(pitchOutOfStrikeZone(ballgame,agent,hardball,agent),
	       event).
==> meta_argtypes(pitchOutOfStrikeZone(ballgame,agent,hardball,agent)).

% event Swing(ballgame,agent,hardball)
 %  event(swing(ballgame,agent,hardball)).
==> mpred_prop(swing(ballgame,agent,hardball),event).
==> meta_argtypes(swing(ballgame,agent,hardball)).

% event SwingMiss(ballgame,agent,hardball)
 %  event(swingMiss(ballgame,agent,hardball)).
==> mpred_prop(swingMiss(ballgame,agent,hardball),event).
==> meta_argtypes(swingMiss(ballgame,agent,hardball)).

% event SwingHit(ballgame,agent,hardball)
 %  event(swingHit(ballgame,agent,hardball)).
==> mpred_prop(swingHit(ballgame,agent,hardball),event).
==> meta_argtypes(swingHit(ballgame,agent,hardball)).

% event SwingHitFair(ballgame,agent,hardball)
 %  event(swingHitFair(ballgame,agent,hardball)).
==> mpred_prop(swingHitFair(ballgame,agent,hardball),event).
==> meta_argtypes(swingHitFair(ballgame,agent,hardball)).

% event SwingHitFoul(ballgame,agent,hardball)
 %  event(swingHitFoul(ballgame,agent,hardball)).
==> mpred_prop(swingHitFoul(ballgame,agent,hardball),event).
==> meta_argtypes(swingHitFoul(ballgame,agent,hardball)).

% event SwingHitFairFly(ballgame,agent,hardball)
 %  event(swingHitFairFly(ballgame,agent,hardball)).
==> mpred_prop(swingHitFairFly(ballgame,agent,hardball),event).
==> meta_argtypes(swingHitFairFly(ballgame,agent,hardball)).

% event SwingHitFairGround(ballgame,agent,hardball)
 %  event(swingHitFairGround(ballgame,agent,hardball)).
==> mpred_prop(swingHitFairGround(ballgame,agent,hardball),event).
==> meta_argtypes(swingHitFairGround(ballgame,agent,hardball)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:82
% [ballgame,agent]
% HomeTeamPlayer(ballgame,agent) ->
% !VisitingTeamPlayer(ballgame,agent).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:84
axiom(not(visitingTeamPlayer(Ballgame, Agent)),
    [homeTeamPlayer(Ballgame, Agent)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:86
% [ballgame,agent]
 % HomeTeamPlayer(ballgame,agent) -> Player(ballgame,agent).
axiom(player(Ballgame, Agent),
    [homeTeamPlayer(Ballgame, Agent)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:88
% [ballgame,agent]
 % VisitingTeamPlayer(ballgame,agent) -> Player(ballgame,agent).
axiom(player(Ballgame, Agent),
    [visitingTeamPlayer(Ballgame, Agent)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:90
% [ballgame,agent1,agent2]
% OnOppositeTeams(ballgame,agent1,agent2) <->
% (HomeTeamPlayer(ballgame,agent1) &
%  VisitingTeamPlayer(ballgame,agent2)) |
% (HomeTeamPlayer(ballgame,agent2) &
%  VisitingTeamPlayer(ballgame,agent1)).

 /*  onOppositeTeams(Ballgame, Agent1, Agent2) <->
       (   homeTeamPlayer(Ballgame, Agent1),
           visitingTeamPlayer(Ballgame, Agent2)
       ;   homeTeamPlayer(Ballgame, Agent2),
           visitingTeamPlayer(Ballgame, Agent1)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:95
axiom(onOppositeTeams(Ballgame, Agent1, Agent2),
   
    [ homeTeamPlayer(Ballgame, Agent1),
      visitingTeamPlayer(Ballgame, Agent2)
    ]).
axiom(onOppositeTeams(Ballgame, Agent1, Agent2),
   
    [ homeTeamPlayer(Ballgame, Agent2),
      visitingTeamPlayer(Ballgame, Agent1)
    ]).

 /*   if(onOppositeTeams(Ballgame, Agent1, Agent2),
          (homeTeamPlayer(Ballgame, Agent1), visitingTeamPlayer(Ballgame, Agent2);homeTeamPlayer(Ballgame, Agent2), visitingTeamPlayer(Ballgame, Agent1))).
 */

 /*  not(onOppositeTeams(OnOppositeTeams_Param, HomeTeamPlayer_Ret, OnOppositeTeams_Ret)) :-
       (   not(homeTeamPlayer(OnOppositeTeams_Param,
                              HomeTeamPlayer_Ret))
       ;   not(visitingTeamPlayer(OnOppositeTeams_Param,
                                  OnOppositeTeams_Ret))
       ),
       (   not(homeTeamPlayer(OnOppositeTeams_Param,
                              OnOppositeTeams_Ret))
       ;   not(visitingTeamPlayer(OnOppositeTeams_Param,
                                  HomeTeamPlayer_Ret))
       ).
 */
axiom(not(onOppositeTeams(OnOppositeTeams_Param, HomeTeamPlayer_Ret, OnOppositeTeams_Ret)),
   
    [ not(homeTeamPlayer(OnOppositeTeams_Param,
                         OnOppositeTeams_Ret)),
      not(homeTeamPlayer(OnOppositeTeams_Param, HomeTeamPlayer_Ret))
    ]).
axiom(not(onOppositeTeams(OnOppositeTeams_Param, HomeTeamPlayer_Ret, OnOppositeTeams_Ret)),
   
    [ not(visitingTeamPlayer(OnOppositeTeams_Param,
                             HomeTeamPlayer_Ret)),
      not(homeTeamPlayer(OnOppositeTeams_Param, HomeTeamPlayer_Ret))
    ]).
axiom(not(onOppositeTeams(OnOppositeTeams_Param, HomeTeamPlayer_Ret, OnOppositeTeams_Ret)),
   
    [ not(homeTeamPlayer(OnOppositeTeams_Param,
                         OnOppositeTeams_Ret)),
      not(visitingTeamPlayer(OnOppositeTeams_Param,
                             OnOppositeTeams_Ret))
    ]).
axiom(not(onOppositeTeams(OnOppositeTeams_Param, HomeTeamPlayer_Ret, OnOppositeTeams_Ret)),
   
    [ not(visitingTeamPlayer(OnOppositeTeams_Param,
                             HomeTeamPlayer_Ret)),
      not(visitingTeamPlayer(OnOppositeTeams_Param,
                             OnOppositeTeams_Ret))
    ]).

 /*  homeTeamPlayer(HomeTeamPlayer_Param, HomeTeamPlayer_Ret7) :-
       (   not(homeTeamPlayer(HomeTeamPlayer_Param,
                              HomeTeamPlayer_Ret8))
       ;   not(visitingTeamPlayer(HomeTeamPlayer_Param,
                                  HomeTeamPlayer_Ret7))
       ),
       onOppositeTeams(HomeTeamPlayer_Param,
                       HomeTeamPlayer_Ret7,
                       HomeTeamPlayer_Ret8).
 */
axiom(homeTeamPlayer(HomeTeamPlayer_Param, HomeTeamPlayer_Ret7),
   
    [ not(homeTeamPlayer(HomeTeamPlayer_Param, HomeTeamPlayer_Ret8)),
      onOppositeTeams(HomeTeamPlayer_Param,
                      HomeTeamPlayer_Ret7,
                      HomeTeamPlayer_Ret8)
    ]).
axiom(homeTeamPlayer(HomeTeamPlayer_Param, HomeTeamPlayer_Ret7),
   
    [ not(visitingTeamPlayer(HomeTeamPlayer_Param,
                             HomeTeamPlayer_Ret7)),
      onOppositeTeams(HomeTeamPlayer_Param,
                      HomeTeamPlayer_Ret7,
                      HomeTeamPlayer_Ret8)
    ]).

 /*  visitingTeamPlayer(VisitingTeamPlayer_Param, VisitingTeamPlayer_Ret) :-
       (   not(homeTeamPlayer(VisitingTeamPlayer_Param,
                              VisitingTeamPlayer_Ret))
       ;   not(visitingTeamPlayer(VisitingTeamPlayer_Param,
                                  VisitingTeamPlayer_Ret11))
       ),
       onOppositeTeams(VisitingTeamPlayer_Param,
                       VisitingTeamPlayer_Ret11,
                       VisitingTeamPlayer_Ret).
 */
axiom(visitingTeamPlayer(VisitingTeamPlayer_Param, VisitingTeamPlayer_Ret),
   
    [ not(homeTeamPlayer(VisitingTeamPlayer_Param,
                         VisitingTeamPlayer_Ret)),
      onOppositeTeams(VisitingTeamPlayer_Param,
                      VisitingTeamPlayer_Ret11,
                      VisitingTeamPlayer_Ret)
    ]).
axiom(visitingTeamPlayer(VisitingTeamPlayer_Param, VisitingTeamPlayer_Ret),
   
    [ not(visitingTeamPlayer(VisitingTeamPlayer_Param,
                             VisitingTeamPlayer_Ret11)),
      onOppositeTeams(VisitingTeamPlayer_Param,
                      VisitingTeamPlayer_Ret11,
                      VisitingTeamPlayer_Ret)
    ]).

 /*  homeTeamPlayer(HomeTeamPlayer_Param12, HomeTeamPlayer_Ret13) :-
       (   not(homeTeamPlayer(HomeTeamPlayer_Param12,
                              HomeTeamPlayer_Ret14))
       ;   not(visitingTeamPlayer(HomeTeamPlayer_Param12,
                                  HomeTeamPlayer_Ret13))
       ),
       onOppositeTeams(HomeTeamPlayer_Param12,
                       HomeTeamPlayer_Ret14,
                       HomeTeamPlayer_Ret13).
 */
axiom(homeTeamPlayer(HomeTeamPlayer_Param12, HomeTeamPlayer_Ret13),
   
    [ not(homeTeamPlayer(HomeTeamPlayer_Param12,
                         HomeTeamPlayer_Ret14)),
      onOppositeTeams(HomeTeamPlayer_Param12,
                      HomeTeamPlayer_Ret14,
                      HomeTeamPlayer_Ret13)
    ]).
axiom(homeTeamPlayer(HomeTeamPlayer_Param12, HomeTeamPlayer_Ret13),
   
    [ not(visitingTeamPlayer(HomeTeamPlayer_Param12,
                             HomeTeamPlayer_Ret13)),
      onOppositeTeams(HomeTeamPlayer_Param12,
                      HomeTeamPlayer_Ret14,
                      HomeTeamPlayer_Ret13)
    ]).

 /*  visitingTeamPlayer(VisitingTeamPlayer_Param15, VisitingTeamPlayer_Ret16) :-
       (   not(homeTeamPlayer(VisitingTeamPlayer_Param15,
                              VisitingTeamPlayer_Ret16))
       ;   not(visitingTeamPlayer(VisitingTeamPlayer_Param15,
                                  VisitingTeamPlayer_Ret17))
       ),
       onOppositeTeams(VisitingTeamPlayer_Param15,
                       VisitingTeamPlayer_Ret16,
                       VisitingTeamPlayer_Ret17).
 */
axiom(visitingTeamPlayer(VisitingTeamPlayer_Param15, VisitingTeamPlayer_Ret16),
   
    [ not(homeTeamPlayer(VisitingTeamPlayer_Param15,
                         VisitingTeamPlayer_Ret16)),
      onOppositeTeams(VisitingTeamPlayer_Param15,
                      VisitingTeamPlayer_Ret16,
                      VisitingTeamPlayer_Ret17)
    ]).
axiom(visitingTeamPlayer(VisitingTeamPlayer_Param15, VisitingTeamPlayer_Ret16),
   
    [ not(visitingTeamPlayer(VisitingTeamPlayer_Param15,
                             VisitingTeamPlayer_Ret17)),
      onOppositeTeams(VisitingTeamPlayer_Param15,
                      VisitingTeamPlayer_Ret16,
                      VisitingTeamPlayer_Ret17)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:97
% [ballgame,agent1,hardball,agent2,pitchermound,homeplate]
% Happens(Pitch(ballgame,agent1,hardball,agent2),time) &
% PitchermoundOf(ballgame) = pitchermound &
% HomeplateOf(ballgame) = homeplate ->
% HoldsAt(Near(agent1,pitchermound),time) &
% HoldsAt(Near(agent2,homeplate),time) &
% OnOppositeTeams(ballgame,agent1,agent2).

 /*   if((happens(pitch(Ballgame, Agent1, Hardball, Agent2), time), equals(pitchermoundOf(Ballgame), Pitchermound), equals(homeplateOf(Ballgame), Homeplate)),
          (holds_at(near(Agent1, Pitchermound), time), holds_at(near(Agent2, Homeplate), time), onOppositeTeams(Ballgame, Agent1, Agent2))).
 */

 /*  not(happens(pitch(Pitch_Param, Near_Param, _, Near_Param8), time)) :-
       ( equals(pitchermoundOf(Pitch_Param), Equals_Ret),
         equals(homeplateOf(Pitch_Param), Equals_Ret10)
       ),
       (   not(holds_at(near(Near_Param, Equals_Ret), time))
       ;   not(holds_at(near(Near_Param8, Equals_Ret10), time))
       ;   not(onOppositeTeams(Pitch_Param,
                               Near_Param,
                               Near_Param8))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:103
axiom(not(happens(pitch(Pitch_Param, Near_Param, _, Near_Param8), time)),
   
    [ not(holds_at(near(Near_Param, Equals_Ret), time)),
      equals(pitchermoundOf(Pitch_Param), Equals_Ret),
      equals(homeplateOf(Pitch_Param), Equals_Ret10)
    ]).
axiom(not(happens(pitch(Pitch_Param, Near_Param, _, Near_Param8), time)),
   
    [ not(holds_at(near(Near_Param8, Equals_Ret10), time)),
      equals(pitchermoundOf(Pitch_Param), Equals_Ret),
      equals(homeplateOf(Pitch_Param), Equals_Ret10)
    ]).
axiom(not(happens(pitch(Pitch_Param, Near_Param, _, Near_Param8), time)),
   
    [ not(onOppositeTeams(Pitch_Param,
                          Near_Param,
                          Near_Param8)),
      equals(pitchermoundOf(Pitch_Param), Equals_Ret),
      equals(homeplateOf(Pitch_Param), Equals_Ret10)
    ]).

 /*  not(equals(pitchermoundOf(Pitch_Param11), Equals_Ret14)) :-
       equals(homeplateOf(Pitch_Param11), Equals_Ret15),
       happens(pitch(Pitch_Param11,
                     Near_Param12,
                     _,
                     Near_Param13),
               time),
       (   not(holds_at(near(Near_Param12, Equals_Ret14), time))
       ;   not(holds_at(near(Near_Param13, Equals_Ret15), time))
       ;   not(onOppositeTeams(Pitch_Param11,
                               Near_Param12,
                               Near_Param13))
       ).
 */
axiom(not(equals(pitchermoundOf(Pitch_Param11), Equals_Ret14)),
   
    [ not(holds_at(near(Near_Param12, Equals_Ret14), time)),
      equals(homeplateOf(Pitch_Param11), Equals_Ret15),
      happens(pitch(Pitch_Param11,
                    Near_Param12,
                    _,
                    Near_Param13),
              time)
    ]).
axiom(not(equals(pitchermoundOf(Pitch_Param11), Equals_Ret14)),
   
    [ not(holds_at(near(Near_Param13, Equals_Ret15), time)),
      equals(homeplateOf(Pitch_Param11), Equals_Ret15),
      happens(pitch(Pitch_Param11,
                    Near_Param12,
                    _,
                    Near_Param13),
              time)
    ]).
axiom(not(equals(pitchermoundOf(Pitch_Param11), Equals_Ret14)),
   
    [ not(onOppositeTeams(Pitch_Param11,
                          Near_Param12,
                          Near_Param13)),
      equals(homeplateOf(Pitch_Param11), Equals_Ret15),
      happens(pitch(Pitch_Param11,
                    Near_Param12,
                    _,
                    Near_Param13),
              time)
    ]).

 /*  not(equals(homeplateOf(Pitch_Param16), Equals_Ret19)) :-
       equals(pitchermoundOf(Pitch_Param16), Equals_Ret20),
       happens(pitch(Pitch_Param16,
                     Near_Param17,
                     _,
                     Near_Param18),
               time),
       (   not(holds_at(near(Near_Param17, Equals_Ret20), time))
       ;   not(holds_at(near(Near_Param18, Equals_Ret19), time))
       ;   not(onOppositeTeams(Pitch_Param16,
                               Near_Param17,
                               Near_Param18))
       ).
 */
axiom(not(equals(homeplateOf(Pitch_Param16), Equals_Ret19)),
   
    [ not(holds_at(near(Near_Param17, Equals_Ret20), time)),
      equals(pitchermoundOf(Pitch_Param16), Equals_Ret20),
      happens(pitch(Pitch_Param16,
                    Near_Param17,
                    _,
                    Near_Param18),
              time)
    ]).
axiom(not(equals(homeplateOf(Pitch_Param16), Equals_Ret19)),
   
    [ not(holds_at(near(Near_Param18, Equals_Ret19), time)),
      equals(pitchermoundOf(Pitch_Param16), Equals_Ret20),
      happens(pitch(Pitch_Param16,
                    Near_Param17,
                    _,
                    Near_Param18),
              time)
    ]).
axiom(not(equals(homeplateOf(Pitch_Param16), Equals_Ret19)),
   
    [ not(onOppositeTeams(Pitch_Param16,
                          Near_Param17,
                          Near_Param18)),
      equals(pitchermoundOf(Pitch_Param16), Equals_Ret20),
      happens(pitch(Pitch_Param16,
                    Near_Param17,
                    _,
                    Near_Param18),
              time)
    ]).

 /*  holds_at(near(Near_Param21, Near_Ret), time) :-
       happens(pitch(Pitch_Param22,
                     Near_Param21,
                     _,
                     Pitch_Ret),
               time),
       equals(pitchermoundOf(Pitch_Param22), Near_Ret),
       equals(homeplateOf(Pitch_Param22), Equals_Ret25).
 */
axiom(holds_at(near(Near_Param21, Near_Ret), time),
   
    [ happens(pitch(Pitch_Param22,
                    Near_Param21,
                    _,
                    Pitch_Ret),
              time),
      equals(pitchermoundOf(Pitch_Param22), Near_Ret),
      equals(homeplateOf(Pitch_Param22), Equals_Ret25)
    ]).

 /*  holds_at(near(Near_Param26, Near_Ret28), time) :-
       happens(pitch(Pitch_Param27, _, _, Near_Param26),
               time),
       equals(pitchermoundOf(Pitch_Param27), Equals_Ret29),
       equals(homeplateOf(Pitch_Param27), Near_Ret28).
 */
axiom(holds_at(near(Near_Param26, Near_Ret28), time),
   
    [ happens(pitch(Pitch_Param27, _, _, Near_Param26),
              time),
      equals(pitchermoundOf(Pitch_Param27), Equals_Ret29),
      equals(homeplateOf(Pitch_Param27), Near_Ret28)
    ]).

 /*  onOppositeTeams(OnOppositeTeams_Param, A, OnOppositeTeams_Ret) :-
       happens(pitch(OnOppositeTeams_Param,
                     A,
                     _,
                     OnOppositeTeams_Ret),
               time),
       equals(pitchermoundOf(OnOppositeTeams_Param), Equals_Ret32),
       equals(homeplateOf(OnOppositeTeams_Param), Equals_Ret33).
 */
axiom(onOppositeTeams(OnOppositeTeams_Param, A, OnOppositeTeams_Ret),
   
    [ happens(pitch(OnOppositeTeams_Param,
                    A,
                    _,
                    OnOppositeTeams_Ret),
              time),
      equals(pitchermoundOf(OnOppositeTeams_Param), Equals_Ret32),
      equals(homeplateOf(OnOppositeTeams_Param), Equals_Ret33)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:105
% [ballgame,agent1,agent2,hardball,time]
% Happens(Pitch(ballgame,agent1,hardball,agent2),time) ->
% Happens(PitchInStrikeZone(ballgame,agent1,hardball,agent2),time) |
% Happens(PitchOutOfStrikeZone(ballgame,agent1,hardball,agent2),time).

 /*   if(happens(pitch(Ballgame, Agent1, Hardball, Agent2),
                 Time),
          (happens(pitchInStrikeZone(Ballgame, Agent1, Hardball, Agent2), Time);happens(pitchOutOfStrikeZone(Ballgame, Agent1, Hardball, Agent2), Time))).
 */

 /*  happens(pitchInStrikeZone(PitchInStrikeZone_Param, A, B, PitchInStrikeZone_Ret), Maptime) :-
       not(happens(pitchOutOfStrikeZone(PitchInStrikeZone_Param,
                                        A,
                                        B,
                                        PitchInStrikeZone_Ret),
                   Maptime)),
       happens(pitch(PitchInStrikeZone_Param,
                     A,
                     B,
                     PitchInStrikeZone_Ret),
               Maptime).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:108
axiom(happens(pitchInStrikeZone(PitchInStrikeZone_Param, A, B, PitchInStrikeZone_Ret), Maptime),
   
    [ not(happens(pitchOutOfStrikeZone(PitchInStrikeZone_Param,
                                       A,
                                       B,
                                       PitchInStrikeZone_Ret),
                  Maptime)),
      happens(pitch(PitchInStrikeZone_Param,
                    A,
                    B,
                    PitchInStrikeZone_Ret),
              Maptime)
    ]).

 /*  happens(pitchOutOfStrikeZone(PitchOutOfStrikeZone_Param, A, B, PitchOutOfStrikeZone_Ret), Maptime8) :-
       not(happens(pitchInStrikeZone(PitchOutOfStrikeZone_Param,
                                     A,
                                     B,
                                     PitchOutOfStrikeZone_Ret),
                   Maptime8)),
       happens(pitch(PitchOutOfStrikeZone_Param,
                     A,
                     B,
                     PitchOutOfStrikeZone_Ret),
               Maptime8).
 */
axiom(happens(pitchOutOfStrikeZone(PitchOutOfStrikeZone_Param, A, B, PitchOutOfStrikeZone_Ret), Maptime8),
   
    [ not(happens(pitchInStrikeZone(PitchOutOfStrikeZone_Param,
                                    A,
                                    B,
                                    PitchOutOfStrikeZone_Ret),
                  Maptime8)),
      happens(pitch(PitchOutOfStrikeZone_Param,
                    A,
                    B,
                    PitchOutOfStrikeZone_Ret),
              Maptime8)
    ]).

 /*  not(happens(pitch(Pitch_Param, A, B, Pitch_Ret), Maptime11)) :-
       not(happens(pitchInStrikeZone(Pitch_Param,
                                     A,
                                     B,
                                     Pitch_Ret),
                   Maptime11)),
       not(happens(pitchOutOfStrikeZone(Pitch_Param,
                                        A,
                                        B,
                                        Pitch_Ret),
                   Maptime11)).
 */
axiom(not(happens(pitch(Pitch_Param, A, B, Pitch_Ret), Maptime11)),
   
    [ not(happens(pitchInStrikeZone(Pitch_Param,
                                    A,
                                    B,
                                    Pitch_Ret),
                  Maptime11)),
      not(happens(pitchOutOfStrikeZone(Pitch_Param,
                                       A,
                                       B,
                                       Pitch_Ret),
                  Maptime11))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:110
% [ballgame,agent1,agent2,hardball,time]
% Happens(PitchInStrikeZone(ballgame,agent1,hardball,agent2),time) ->
% !Happens(PitchOutOfStrikeZone(ballgame,agent1,hardball,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:112
axiom(not(happens(pitchOutOfStrikeZone(Ballgame, Agent1, Hardball, Agent2), Time)),
   
    [ happens(pitchInStrikeZone(Ballgame,
                                Agent1,
                                Hardball,
                                Agent2),
              Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:114
% [ballgame,agent1,agent2,hardball,time]
% Happens(PitchInStrikeZone(ballgame,agent1,hardball,agent2),time) ->
% Happens(Swing(ballgame,agent2,hardball),time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:116
axiom(happens(swing(Ballgame, Agent2, Hardball), start),
   
    [ happens(pitchInStrikeZone(Ballgame,
                                Agent1,
                                Hardball,
                                Agent2),
              t),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:118
% [ballgame,agent,hardball,time]
% Happens(Swing(ballgame,agent,hardball),time) ->
% Happens(SwingHit(ballgame,agent,hardball),time) |
% Happens(SwingMiss(ballgame,agent,hardball),time).

 /*   if(happens(swing(Ballgame, Agent, Hardball), Time),
          (happens(swingHit(Ballgame, Agent, Hardball), Time);happens(swingMiss(Ballgame, Agent, Hardball), Time))).
 */

 /*  happens(swingHit(SwingHit_Param, A, SwingHit_Ret), Maptime) :-
       not(happens(swingMiss(SwingHit_Param, A, SwingHit_Ret),
                   Maptime)),
       happens(swing(SwingHit_Param, A, SwingHit_Ret),
               Maptime).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:121
axiom(happens(swingHit(SwingHit_Param, A, SwingHit_Ret), Maptime),
   
    [ not(happens(swingMiss(SwingHit_Param, A, SwingHit_Ret),
                  Maptime)),
      happens(swing(SwingHit_Param, A, SwingHit_Ret),
              Maptime)
    ]).

 /*  happens(swingMiss(SwingMiss_Param, A, SwingMiss_Ret), Maptime7) :-
       not(happens(swingHit(SwingMiss_Param, A, SwingMiss_Ret),
                   Maptime7)),
       happens(swing(SwingMiss_Param, A, SwingMiss_Ret),
               Maptime7).
 */
axiom(happens(swingMiss(SwingMiss_Param, A, SwingMiss_Ret), Maptime7),
   
    [ not(happens(swingHit(SwingMiss_Param, A, SwingMiss_Ret),
                  Maptime7)),
      happens(swing(SwingMiss_Param, A, SwingMiss_Ret),
              Maptime7)
    ]).

 /*  not(happens(swing(Swing_Param, A, Swing_Ret), Maptime10)) :-
       not(happens(swingHit(Swing_Param, A, Swing_Ret),
                   Maptime10)),
       not(happens(swingMiss(Swing_Param, A, Swing_Ret),
                   Maptime10)).
 */
axiom(not(happens(swing(Swing_Param, A, Swing_Ret), Maptime10)),
   
    [ not(happens(swingHit(Swing_Param, A, Swing_Ret),
                  Maptime10)),
      not(happens(swingMiss(Swing_Param, A, Swing_Ret),
                  Maptime10))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:123
% [ballgame,agent,hardball,time]
% Happens(SwingHit(ballgame,agent,hardball),time) ->
% !Happens(SwingMiss(ballgame,agent,hardball),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:125
axiom(not(happens(swingMiss(Ballgame, Agent, Hardball), Time)),
    [happens(swingHit(Ballgame, Agent, Hardball), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:127
% [ballgame,agent,hardball,time]
% Happens(SwingHit(ballgame,agent,hardball),time) ->
% Happens(SwingHitFair(ballgame,agent,hardball),time) |
% Happens(SwingHitFoul(ballgame,agent,hardball),time).

 /*   if(happens(swingHit(Ballgame, Agent, Hardball), Time),
          (happens(swingHitFair(Ballgame, Agent, Hardball), Time);happens(swingHitFoul(Ballgame, Agent, Hardball), Time))).
 */

 /*  happens(swingHitFair(SwingHitFair_Param, A, SwingHitFair_Ret), Maptime) :-
       not(happens(swingHitFoul(SwingHitFair_Param,
                                A,
                                SwingHitFair_Ret),
                   Maptime)),
       happens(swingHit(SwingHitFair_Param, A, SwingHitFair_Ret),
               Maptime).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:130
axiom(happens(swingHitFair(SwingHitFair_Param, A, SwingHitFair_Ret), Maptime),
   
    [ not(happens(swingHitFoul(SwingHitFair_Param,
                               A,
                               SwingHitFair_Ret),
                  Maptime)),
      happens(swingHit(SwingHitFair_Param,
                       A,
                       SwingHitFair_Ret),
              Maptime)
    ]).

 /*  happens(swingHitFoul(SwingHitFoul_Param, A, SwingHitFoul_Ret), Maptime7) :-
       not(happens(swingHitFair(SwingHitFoul_Param,
                                A,
                                SwingHitFoul_Ret),
                   Maptime7)),
       happens(swingHit(SwingHitFoul_Param, A, SwingHitFoul_Ret),
               Maptime7).
 */
axiom(happens(swingHitFoul(SwingHitFoul_Param, A, SwingHitFoul_Ret), Maptime7),
   
    [ not(happens(swingHitFair(SwingHitFoul_Param,
                               A,
                               SwingHitFoul_Ret),
                  Maptime7)),
      happens(swingHit(SwingHitFoul_Param,
                       A,
                       SwingHitFoul_Ret),
              Maptime7)
    ]).

 /*  not(happens(swingHit(SwingHit_Param, A, SwingHit_Ret), Maptime10)) :-
       not(happens(swingHitFair(SwingHit_Param, A, SwingHit_Ret),
                   Maptime10)),
       not(happens(swingHitFoul(SwingHit_Param, A, SwingHit_Ret),
                   Maptime10)).
 */
axiom(not(happens(swingHit(SwingHit_Param, A, SwingHit_Ret), Maptime10)),
   
    [ not(happens(swingHitFair(SwingHit_Param,
                               A,
                               SwingHit_Ret),
                  Maptime10)),
      not(happens(swingHitFoul(SwingHit_Param,
                               A,
                               SwingHit_Ret),
                  Maptime10))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:132
% [ballgame,agent,hardball,time]
% Happens(SwingHitFair(ballgame,agent,hardball),time) ->
% !Happens(SwingHitFoul(ballgame,agent,hardball),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:134
axiom(not(happens(swingHitFoul(Ballgame, Agent, Hardball), Time)),
   
    [ happens(swingHitFair(Ballgame, Agent, Hardball),
              Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:136
% [ballgame,agent,hardball,time]
% Happens(SwingHitFair(ballgame,agent,hardball),time) ->
% Happens(SwingHitFairFly(ballgame,agent,hardball),time) |
% Happens(SwingHitFairGround(ballgame,agent,hardball),time).

 /*   if(happens(swingHitFair(Ballgame, Agent, Hardball),
                 Time),
          (happens(swingHitFairFly(Ballgame, Agent, Hardball), Time);happens(swingHitFairGround(Ballgame, Agent, Hardball), Time))).
 */

 /*  happens(swingHitFairFly(SwingHitFairFly_Param, A, SwingHitFairFly_Ret), Maptime) :-
       not(happens(swingHitFairGround(SwingHitFairFly_Param,
                                      A,
                                      SwingHitFairFly_Ret),
                   Maptime)),
       happens(swingHitFair(SwingHitFairFly_Param,
                            A,
                            SwingHitFairFly_Ret),
               Maptime).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:139
axiom(happens(swingHitFairFly(SwingHitFairFly_Param, A, SwingHitFairFly_Ret), Maptime),
   
    [ not(happens(swingHitFairGround(SwingHitFairFly_Param,
                                     A,
                                     SwingHitFairFly_Ret),
                  Maptime)),
      happens(swingHitFair(SwingHitFairFly_Param,
                           A,
                           SwingHitFairFly_Ret),
              Maptime)
    ]).

 /*  happens(swingHitFairGround(SwingHitFairGround_Param, A, SwingHitFairGround_Ret), Maptime7) :-
       not(happens(swingHitFairFly(SwingHitFairGround_Param,
                                   A,
                                   SwingHitFairGround_Ret),
                   Maptime7)),
       happens(swingHitFair(SwingHitFairGround_Param,
                            A,
                            SwingHitFairGround_Ret),
               Maptime7).
 */
axiom(happens(swingHitFairGround(SwingHitFairGround_Param, A, SwingHitFairGround_Ret), Maptime7),
   
    [ not(happens(swingHitFairFly(SwingHitFairGround_Param,
                                  A,
                                  SwingHitFairGround_Ret),
                  Maptime7)),
      happens(swingHitFair(SwingHitFairGround_Param,
                           A,
                           SwingHitFairGround_Ret),
              Maptime7)
    ]).

 /*  not(happens(swingHitFair(SwingHitFair_Param, A, SwingHitFair_Ret), Maptime10)) :-
       not(happens(swingHitFairFly(SwingHitFair_Param,
                                   A,
                                   SwingHitFair_Ret),
                   Maptime10)),
       not(happens(swingHitFairGround(SwingHitFair_Param,
                                      A,
                                      SwingHitFair_Ret),
                   Maptime10)).
 */
axiom(not(happens(swingHitFair(SwingHitFair_Param, A, SwingHitFair_Ret), Maptime10)),
   
    [ not(happens(swingHitFairFly(SwingHitFair_Param,
                                  A,
                                  SwingHitFair_Ret),
                  Maptime10)),
      not(happens(swingHitFairGround(SwingHitFair_Param,
                                     A,
                                     SwingHitFair_Ret),
                  Maptime10))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:141
% [ballgame,agent,hardball,time]
% Happens(SwingHitFairFly(ballgame,agent,hardball),time) ->
% Happens(SwingHitFairGround(ballgame,agent,hardball),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:143
axiom(happens(swingHitFairGround(Ballgame, Agent, Hardball), Time),
   
    [ happens(swingHitFairFly(Ballgame, Agent, Hardball),
              Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:145
% [ballgame,agent,hardball,homeplate,firstbase,time]
% Happens(SwingHit(ballgame,agent,hardball),time) &
% HomeplateOf(ballgame) = homeplate &
% FirstBaseOf(ballgame) = firstbase ->
% Happens(RunFromTo(agent,homeplate,firstbase),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:149
axiom(happens(runFromTo(Agent, Homeplate, Firstbase), Time),
   
    [ happens(swingHit(Ballgame, Agent, Hardball), Time),
      equals(homeplateOf(Ballgame), Homeplate),
      equals(firstBaseOf(Ballgame), Firstbase)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:151
% [ballgame,agent,hardball,homeplate,outfield,time]
% HomeplateOf(ballgame) = homeplate &
% OutfieldOf(ballgame) = outfield &
% Happens(SwingHitFairFly(ballgame,agent,hardball),time) ->
% Happens(HitFromTo(agent,hardball,homeplate,outfield),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:155
axiom(happens(hitFromTo(Agent, Hardball, Homeplate, Outfield), Time),
   
    [ equals(homeplateOf(Ballgame), Homeplate),
      equals(outfieldOf(Ballgame), Outfield),
      happens(swingHitFairFly(Ballgame, Agent, Hardball),
              Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Baseball.e:157
%; End of file.
