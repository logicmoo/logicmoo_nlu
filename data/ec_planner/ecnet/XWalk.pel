:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/XWalk.e').
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
%; XWalk: WALK x-schema representation of walking
%;
%; @phdthesis{Narayanan:1997,
%;   author = "Srinivas S. Narayanan",
%;   year = "1997",
%;   title = "Knowledge-based Action Representations for Metaphor and Aspect (\uppercase{KARMA})",
%;   address = "Berkeley, CA",
%;   school = "University of California, Berkeley",
%; }
%;

% option trajectory on
:- set_ec_option(trajectory, on).

% sort xschema
==> sort(xschema).
%; parameters

% predicate XWalkAgent(xschema,agent)
 %  predicate(xWalkAgent(xschema,agent)).
==> mpred_prop(xWalkAgent(xschema,agent),predicate).
==> meta_argtypes(xWalkAgent(xschema,agent)).

% function XWalkRate(xschema): offset ; step duration
 %  functional_predicate(xWalkRate(xschema,[offset,;,step,duration])).
==> mpred_prop(xWalkRate(xschema,[offset,;,step,duration]),
	       functional_predicate).
==> meta_argtypes(xWalkRate(xschema,[offset,;,step,duration])).
resultIsa(xWalkRate,[offset,;,step,duration]).

% function XWalkSize(xschema): offset ; step size
 %  functional_predicate(xWalkSize(xschema,[offset,;,step,size])).
==> mpred_prop(xWalkSize(xschema,[offset,;,step,size]),
	       functional_predicate).
==> meta_argtypes(xWalkSize(xschema,[offset,;,step,size])).
resultIsa(xWalkSize,[offset,;,step,size]).
%; TTL input lines

% fluent XWalkEnabled(xschema)
 %  fluent(xWalkEnabled(xschema)).
==> mpred_prop(xWalkEnabled(xschema),fluent).
==> meta_argtypes(xWalkEnabled(xschema)).

% fluent XWalkGroundStable(xschema)
 %  fluent(xWalkGroundStable(xschema)).
==> mpred_prop(xWalkGroundStable(xschema),fluent).
==> meta_argtypes(xWalkGroundStable(xschema)).

% fluent XWalkPosture(xschema)
 %  fluent(xWalkPosture(xschema)).
==> mpred_prop(xWalkPosture(xschema),fluent).
==> meta_argtypes(xWalkPosture(xschema)).

% fluent XWalkFootingOK(xschema)
 %  fluent(xWalkFootingOK(xschema)).
==> mpred_prop(xWalkFootingOK(xschema),fluent).
==> meta_argtypes(xWalkFootingOK(xschema)).

% noninertial XWalkEnabled, XWalkGroundStable, XWalkPosture, XWalkFootingOK
==> noninertial(xWalkEnabled).
==> noninertial(xWalkGroundStable).
==> noninertial(xWalkPosture).
==> noninertial(xWalkFootingOK).
%; fluents

% fluent XWalkDistance(xschema,distance)
 %  fluent(xWalkDistance(xschema,distance)).
==> mpred_prop(xWalkDistance(xschema,distance),fluent).
==> meta_argtypes(xWalkDistance(xschema,distance)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:43
% [xschema,distance1,distance2,time]
% HoldsAt(XWalkDistance(xschema,distance1),time) &
% HoldsAt(XWalkDistance(xschema,distance2),time) ->
% distance1=distance2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:46
axiom(Distance1=Distance2,
   
    [ holds_at(xWalkDistance(Xschema, Distance1), Time),
      holds_at(xWalkDistance(Xschema, Distance2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:48
%; logic gate behavior

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:50
% fluent XWalkVision(xschema)
 %  fluent(xWalkVision(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:51
==> mpred_prop(xWalkVision(xschema),fluent).
==> meta_argtypes(xWalkVision(xschema)).

% fluent XWalkVisionOK(xschema)
 %  fluent(xWalkVisionOK(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:52
==> mpred_prop(xWalkVisionOK(xschema),fluent).
==> meta_argtypes(xWalkVisionOK(xschema)).

% fluent XWalkAtDestination(xschema)
 %  fluent(xWalkAtDestination(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:53
==> mpred_prop(xWalkAtDestination(xschema),fluent).
==> meta_argtypes(xWalkAtDestination(xschema)).

% fluent XWalkDone(xschema)
 %  fluent(xWalkDone(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:54
==> mpred_prop(xWalkDone(xschema),fluent).
==> meta_argtypes(xWalkDone(xschema)).

% noninertial XWalkVision, XWalkVisionOK, XWalkAtDestination, XWalkDone
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:55
==> noninertial(xWalkVision).
==> noninertial(xWalkVisionOK).
==> noninertial(xWalkAtDestination).
==> noninertial(xWalkDone).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:56
% [xschema,time]
% HoldsAt(XWalkGroundStable(xschema),time) <->
% HoldsAt(XWalkVision(xschema),time).

 /*  holds_at(xWalkGroundStable(Xschema), Time) <->
       holds_at(xWalkVision(Xschema), Time).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:58
axiom(holds_at(xWalkGroundStable(Xschema), Time),
    [holds_at(xWalkVision(Xschema), Time)]).
axiom(holds_at(xWalkVision(Xschema), Time),
    [holds_at(xWalkGroundStable(Xschema), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:60
% [xschema,time]
% HoldsAt(XWalkEnabled(xschema),time) &
% HoldsAt(XWalkVision(xschema),time) &
% HoldsAt(XWalkPosture(xschema),time) <->
% HoldsAt(XWalkVisionOK(xschema),time).

 /*  holds_at(xWalkEnabled(Xschema), Time), holds_at(xWalkVision(Xschema), Time), holds_at(xWalkPosture(Xschema), Time) <->
       holds_at(xWalkVisionOK(Xschema), Time).
 */

 /*   if(holds_at(xWalkVisionOK(Xschema), Time),
          (holds_at(xWalkEnabled(Xschema), Time), holds_at(xWalkVision(Xschema), Time), holds_at(xWalkPosture(Xschema), Time))).
 */

 /*  not(holds_at(xWalkVisionOK(XWalkVisionOK_Ret), Time2)) :-
       (   not(holds_at(xWalkEnabled(XWalkVisionOK_Ret), Time2))
       ;   not(holds_at(xWalkVision(XWalkVisionOK_Ret), Time2))
       ;   not(holds_at(xWalkPosture(XWalkVisionOK_Ret), Time2))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:64
axiom(not(holds_at(xWalkVisionOK(XWalkVisionOK_Ret), Time2)),
    [not(holds_at(xWalkEnabled(XWalkVisionOK_Ret), Time2))]).
axiom(not(holds_at(xWalkVisionOK(XWalkVisionOK_Ret), Time2)),
    [not(holds_at(xWalkVision(XWalkVisionOK_Ret), Time2))]).
axiom(not(holds_at(xWalkVisionOK(XWalkVisionOK_Ret), Time2)),
    [not(holds_at(xWalkPosture(XWalkVisionOK_Ret), Time2))]).

 /*  holds_at(xWalkEnabled(XWalkEnabled_Ret), Time4) :-
       holds_at(xWalkVisionOK(XWalkEnabled_Ret), Time4).
 */
axiom(holds_at(xWalkEnabled(XWalkEnabled_Ret), Time4),
    [holds_at(xWalkVisionOK(XWalkEnabled_Ret), Time4)]).

 /*  holds_at(xWalkVision(XWalkVision_Ret), Time6) :-
       holds_at(xWalkVisionOK(XWalkVision_Ret), Time6).
 */
axiom(holds_at(xWalkVision(XWalkVision_Ret), Time6),
    [holds_at(xWalkVisionOK(XWalkVision_Ret), Time6)]).

 /*  holds_at(xWalkPosture(XWalkPosture_Ret), Time8) :-
       holds_at(xWalkVisionOK(XWalkPosture_Ret), Time8).
 */
axiom(holds_at(xWalkPosture(XWalkPosture_Ret), Time8),
    [holds_at(xWalkVisionOK(XWalkPosture_Ret), Time8)]).
axiom(holds_at(xWalkVisionOK(Xschema), Time),
   
    [ holds_at(xWalkEnabled(Xschema), Time),
      holds_at(xWalkVision(Xschema), Time),
      holds_at(xWalkPosture(Xschema), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:66
% [xschema,time]
% HoldsAt(XWalkDistance(xschema,0),time) <->
% HoldsAt(XWalkAtDestination(xschema),time).

 /*  holds_at(xWalkDistance(Xschema, 0), Time) <->
       holds_at(xWalkAtDestination(Xschema), Time).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:68
axiom(holds_at(xWalkDistance(Xschema, 0), Time),
    [holds_at(xWalkAtDestination(Xschema), Time)]).
axiom(holds_at(xWalkAtDestination(Xschema), Time),
    [holds_at(xWalkDistance(Xschema, 0), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:70
% [xschema,time]
% HoldsAt(XWalkAtDestination(xschema),time) <->
% HoldsAt(XWalkDone(xschema),time).

 /*  holds_at(xWalkAtDestination(Xschema), Time) <->
       holds_at(xWalkDone(Xschema), Time).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:72
axiom(holds_at(xWalkAtDestination(Xschema), Time),
    [holds_at(xWalkDone(Xschema), Time)]).
axiom(holds_at(xWalkDone(Xschema), Time),
    [holds_at(xWalkAtDestination(Xschema), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:74
%; durative events
%; distance is the goal

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:77
% fluent XWalkStepping(xschema,distance) 
 %  fluent(xWalkStepping(xschema,distance)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:78
==> mpred_prop(xWalkStepping(xschema,distance),fluent).
==> meta_argtypes(xWalkStepping(xschema,distance)).

% event XWalkSteppingOn(xschema)
 %  event(xWalkSteppingOn(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:79
==> mpred_prop(xWalkSteppingOn(xschema),event).
==> meta_argtypes(xWalkSteppingOn(xschema)).

% event XWalkSteppingOff(xschema)
 %  event(xWalkSteppingOff(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:80
==> mpred_prop(xWalkSteppingOff(xschema),event).
==> meta_argtypes(xWalkSteppingOff(xschema)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:81
% [xschema,distance1,distance2,time]
% HoldsAt(XWalkDistance(xschema,distance1),time) &
% distance2 = distance1 - XWalkSize(xschema) ->
% Initiates(XWalkSteppingOn(xschema),XWalkStepping(xschema,distance2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:84
axiom(initiates(xWalkSteppingOn(Xschema), xWalkStepping(Xschema, Distance2), Time),
   
    [ holds_at(xWalkDistance(Xschema, Distance1), Time),
      equals(Distance2, Distance1-xWalkSize(Xschema))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:86
% [xschema,distance,time]
% Terminates(XWalkSteppingOff(xschema),XWalkStepping(xschema,distance),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:87
axiom(terminates(xWalkSteppingOff(Xschema), xWalkStepping(Xschema, Distance), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:89
% [xschema,distance,time]
% Releases(XWalkSteppingOn(xschema),XWalkDistance(xschema,distance),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:90
axiom(releases(xWalkSteppingOn(Xschema), xWalkDistance(Xschema, Distance), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:92
% [xschema,distance1,distance2,time]
% HoldsAt(XWalkDistance(xschema,distance1),time) &
% distance1 != distance2 ->
% Terminates(XWalkSteppingOff(xschema),XWalkDistance(xschema,distance2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:95
axiom(terminates(xWalkSteppingOff(Xschema), xWalkDistance(Xschema, Distance2), Time),
   
    [ holds_at(xWalkDistance(Xschema, Distance1), Time),
      { dif(Distance1, Distance2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:97
% [xschema,distance,time]
% HoldsAt(XWalkDistance(xschema,distance),time) ->
% Initiates(XWalkSteppingOff(xschema),XWalkDistance(xschema,distance),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:99
axiom(initiates(xWalkSteppingOff(Xschema), xWalkDistance(Xschema, Distance), Time),
    [holds_at(xWalkDistance(Xschema, Distance), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:101
% [xschema,distance01,distance02,distance03,offset,time]
% HoldsAt(XWalkDistance(xschema,distance01),time) &
% (distance03=(distance01-(offset*(XWalkSize(xschema)/XWalkRate(xschema))))) ->
% Trajectory(XWalkStepping(xschema,distance02),
%            time,
%            XWalkDistance(xschema,distance03),
%            offset).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:107
axiom(trajectory(xWalkStepping(Xschema, Distance02), Time, xWalkDistance(Xschema, Distance03), Offset),
   
    [ holds_at(xWalkDistance(Xschema, Distance01), Time),
      equals(Distance03,
             Distance01-Offset*(xWalkSize(Xschema)/xWalkRate(Xschema)))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:109
% [xschema,distance,time]
% HoldsAt(XWalkStepping(xschema,distance),time) &
% HoldsAt(XWalkDistance(xschema,distance),time) ->
% Happens(XWalkSteppingOff(xschema),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:112
axiom(happens(xWalkSteppingOff(Xschema), Time),
   
    [ holds_at(xWalkStepping(Xschema, Distance), Time),
      holds_at(xWalkDistance(Xschema, Distance), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:114
%; punctual events

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:116
% event XWalkTestFooting(xschema)
 %  event(xWalkTestFooting(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:117
==> mpred_prop(xWalkTestFooting(xschema),event).
==> meta_argtypes(xWalkTestFooting(xschema)).

% event XWalkMoveFoot(xschema)
 %  event(xWalkMoveFoot(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:118
==> mpred_prop(xWalkMoveFoot(xschema),event).
==> meta_argtypes(xWalkMoveFoot(xschema)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:119
% [xschema,time]
% Happens(XWalkTestFooting(xschema),time) &
% !HoldsAt(XWalkFootingOK(xschema),time) ->
% Happens(XWalkMoveFoot(xschema),time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:122
axiom(happens(xWalkMoveFoot(Xschema), start),
   
    [ happens(xWalkTestFooting(Xschema), t),
      not(holds_at(xWalkFootingOK(Xschema), t)),
      b(t, start),
      ignore(t+1=start)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:124
% [xschema,time]
% Happens(XWalkMoveFoot(xschema),time) ->
% Happens(XWalkReadyOn(xschema),time+1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:126
axiom(happens(xWalkReadyOn(Xschema), start),
    [happens(xWalkMoveFoot(Xschema), t), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:128
%; Petri net behavior

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:130
% fluent XWalkReady(xschema)
 %  fluent(xWalkReady(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:131
==> mpred_prop(xWalkReady(xschema),fluent).
==> meta_argtypes(xWalkReady(xschema)).

% event XWalkReadyOn(xschema)
 %  event(xWalkReadyOn(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:132
==> mpred_prop(xWalkReadyOn(xschema),event).
==> meta_argtypes(xWalkReadyOn(xschema)).

% event XWalkReadyOff(xschema)
 %  event(xWalkReadyOff(xschema)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:133
==> mpred_prop(xWalkReadyOff(xschema),event).
==> meta_argtypes(xWalkReadyOff(xschema)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:134
% [xschema,time]
% HoldsAt(XWalkEnabled(xschema),time) &
% HoldsAt(XWalkVision(xschema),time) &
% HoldsAt(XWalkPosture(xschema),time) &
% !({distance} HoldsAt(XWalkStepping(xschema,distance),time)) & ; !!! pulse
% !HoldsAt(XWalkReady(xschema),time) ->
% Happens(XWalkReadyOn(xschema),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:140
axiom(happens(xWalkReadyOn(Xschema), Time),
   
    [ holds_at(xWalkEnabled(Xschema), Time),
      holds_at(xWalkVision(Xschema), Time),
      holds_at(xWalkPosture(Xschema), Time),
      not(holds_at(xWalkStepping(Xschema, Distance), Time)),
      not(holds_at(xWalkReady(Xschema), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:142
% [xschema,time]
% Initiates(XWalkReadyOn(xschema),XWalkReady(xschema),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:143
axiom(initiates(xWalkReadyOn(Xschema), xWalkReady(Xschema), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:145
% [xschema,time]
% Terminates(XWalkReadyOff(xschema),XWalkReady(xschema),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:146
axiom(terminates(xWalkReadyOff(Xschema), xWalkReady(Xschema), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:148
%; bypass_ok
% [xschema,time]
% !(
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:150
% {distance} HoldsAt(XWalkStepping(xschema,distance),time)) &
% HoldsAt(XWalkVisionOK(xschema),time) &
% HoldsAt(XWalkReady(xschema),time) ->
% Happens(XWalkSteppingOn(xschema),time) &
% Happens(XWalkReadyOff(xschema),time).

 /*   exists([Distance],
             if((not(holds_at(xWalkStepping(Xschema, Distance), Time)), holds_at(xWalkVisionOK(Xschema), Time), holds_at(xWalkReady(Xschema), Time)),
                 (happens(xWalkSteppingOn(Xschema), Time), happens(xWalkReadyOff(Xschema), Time)))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_198'(Fn_198_Param, Time4))) :-
       ( not(holds_at(xWalkStepping(Fn_198_Param, Some_Param),
                      Time4)),
         holds_at(xWalkVisionOK(Fn_198_Param), Time4),
         holds_at(xWalkReady(Fn_198_Param), Time4)
       ),
       (   not(happens(xWalkSteppingOn(Fn_198_Param), Time4))
       ;   not(happens(xWalkReadyOff(Fn_198_Param), Time4))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:154
axiom(not(some(Some_Param, '$kolem_Fn_198'(Fn_198_Param, Time4))),
   
    [ not(happens(xWalkSteppingOn(Fn_198_Param), Time4)),
      not(holds_at(xWalkStepping(Fn_198_Param, Some_Param),
                   Time4)),
      holds_at(xWalkVisionOK(Fn_198_Param), Time4),
      holds_at(xWalkReady(Fn_198_Param), Time4)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_198'(Fn_198_Param, Time4))),
   
    [ not(happens(xWalkReadyOff(Fn_198_Param), Time4)),
      not(holds_at(xWalkStepping(Fn_198_Param, Some_Param),
                   Time4)),
      holds_at(xWalkVisionOK(Fn_198_Param), Time4),
      holds_at(xWalkReady(Fn_198_Param), Time4)
    ]).

 /*  holds_at(xWalkStepping(XWalkStepping_Param, Some_Param9), Time7) :-
       ( holds_at(xWalkVisionOK(XWalkStepping_Param), Time7),
         holds_at(xWalkReady(XWalkStepping_Param), Time7)
       ),
       (   not(happens(xWalkSteppingOn(XWalkStepping_Param), Time7))
       ;   not(happens(xWalkReadyOff(XWalkStepping_Param), Time7))
       ),
       some(Some_Param9,
            '$kolem_Fn_198'(XWalkStepping_Param, Time7)).
 */
axiom(holds_at(xWalkStepping(XWalkStepping_Param, Some_Param9), Time7),
   
    [ not(happens(xWalkSteppingOn(XWalkStepping_Param), Time7)),
      holds_at(xWalkVisionOK(XWalkStepping_Param), Time7),
      holds_at(xWalkReady(XWalkStepping_Param), Time7),
      some(Some_Param9,
           '$kolem_Fn_198'(XWalkStepping_Param, Time7))
    ]).
axiom(holds_at(xWalkStepping(XWalkStepping_Param, Some_Param9), Time7),
   
    [ not(happens(xWalkReadyOff(XWalkStepping_Param), Time7)),
      holds_at(xWalkVisionOK(XWalkStepping_Param), Time7),
      holds_at(xWalkReady(XWalkStepping_Param), Time7),
      some(Some_Param9,
           '$kolem_Fn_198'(XWalkStepping_Param, Time7))
    ]).

 /*  not(holds_at(xWalkVisionOK(XWalkStepping_Param11), Time10)) :-
       holds_at(xWalkReady(XWalkStepping_Param11), Time10),
       not(holds_at(xWalkStepping(XWalkStepping_Param11, Some_Param12),
                    Time10)),
       (   not(happens(xWalkSteppingOn(XWalkStepping_Param11), Time10))
       ;   not(happens(xWalkReadyOff(XWalkStepping_Param11), Time10))
       ),
       some(Some_Param12,
            '$kolem_Fn_198'(XWalkStepping_Param11, Time10)).
 */
axiom(not(holds_at(xWalkVisionOK(XWalkStepping_Param11), Time10)),
   
    [ not(happens(xWalkSteppingOn(XWalkStepping_Param11), Time10)),
      holds_at(xWalkReady(XWalkStepping_Param11), Time10),
      not(holds_at(xWalkStepping(XWalkStepping_Param11,
                                 Some_Param12),
                   Time10)),
      some(Some_Param12,
           '$kolem_Fn_198'(XWalkStepping_Param11, Time10))
    ]).
axiom(not(holds_at(xWalkVisionOK(XWalkStepping_Param11), Time10)),
   
    [ not(happens(xWalkReadyOff(XWalkStepping_Param11), Time10)),
      holds_at(xWalkReady(XWalkStepping_Param11), Time10),
      not(holds_at(xWalkStepping(XWalkStepping_Param11,
                                 Some_Param12),
                   Time10)),
      some(Some_Param12,
           '$kolem_Fn_198'(XWalkStepping_Param11, Time10))
    ]).

 /*  not(holds_at(xWalkReady(XWalkStepping_Param14), Time13)) :-
       holds_at(xWalkVisionOK(XWalkStepping_Param14), Time13),
       not(holds_at(xWalkStepping(XWalkStepping_Param14, Some_Param15),
                    Time13)),
       (   not(happens(xWalkSteppingOn(XWalkStepping_Param14), Time13))
       ;   not(happens(xWalkReadyOff(XWalkStepping_Param14), Time13))
       ),
       some(Some_Param15,
            '$kolem_Fn_198'(XWalkStepping_Param14, Time13)).
 */
axiom(not(holds_at(xWalkReady(XWalkStepping_Param14), Time13)),
   
    [ not(happens(xWalkSteppingOn(XWalkStepping_Param14), Time13)),
      holds_at(xWalkVisionOK(XWalkStepping_Param14), Time13),
      not(holds_at(xWalkStepping(XWalkStepping_Param14,
                                 Some_Param15),
                   Time13)),
      some(Some_Param15,
           '$kolem_Fn_198'(XWalkStepping_Param14, Time13))
    ]).
axiom(not(holds_at(xWalkReady(XWalkStepping_Param14), Time13)),
   
    [ not(happens(xWalkReadyOff(XWalkStepping_Param14), Time13)),
      holds_at(xWalkVisionOK(XWalkStepping_Param14), Time13),
      not(holds_at(xWalkStepping(XWalkStepping_Param14,
                                 Some_Param15),
                   Time13)),
      some(Some_Param15,
           '$kolem_Fn_198'(XWalkStepping_Param14, Time13))
    ]).

 /*  happens(xWalkSteppingOn(XWalkStepping_Param17), Maptime) :-
       ( not(holds_at(xWalkStepping(XWalkStepping_Param17,
                                    Some_Param18),
                      Maptime)),
         holds_at(xWalkVisionOK(XWalkStepping_Param17), Maptime),
         holds_at(xWalkReady(XWalkStepping_Param17), Maptime)
       ),
       some(Some_Param18,
            '$kolem_Fn_198'(XWalkStepping_Param17, Maptime)).
 */
axiom(happens(xWalkSteppingOn(XWalkStepping_Param17), Maptime),
   
    [ not(holds_at(xWalkStepping(XWalkStepping_Param17,
                                 Some_Param18),
                   Maptime)),
      holds_at(xWalkVisionOK(XWalkStepping_Param17), Maptime),
      holds_at(xWalkReady(XWalkStepping_Param17), Maptime),
      some(Some_Param18,
           '$kolem_Fn_198'(XWalkStepping_Param17, Maptime))
    ]).

 /*  happens(xWalkReadyOff(XWalkStepping_Param20), Maptime19) :-
       ( not(holds_at(xWalkStepping(XWalkStepping_Param20,
                                    Some_Param21),
                      Maptime19)),
         holds_at(xWalkVisionOK(XWalkStepping_Param20), Maptime19),
         holds_at(xWalkReady(XWalkStepping_Param20), Maptime19)
       ),
       some(Some_Param21,
            '$kolem_Fn_198'(XWalkStepping_Param20, Maptime19)).
 */
axiom(happens(xWalkReadyOff(XWalkStepping_Param20), Maptime19),
   
    [ not(holds_at(xWalkStepping(XWalkStepping_Param20,
                                 Some_Param21),
                   Maptime19)),
      holds_at(xWalkVisionOK(XWalkStepping_Param20), Maptime19),
      holds_at(xWalkReady(XWalkStepping_Param20), Maptime19),
      some(Some_Param21,
           '$kolem_Fn_198'(XWalkStepping_Param20, Maptime19))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:156
%; !bypass_ok
% [xschema,time]
% !(
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:158
% {distance} HoldsAt(XWalkStepping(xschema,distance),time)) &
% !HoldsAt(XWalkVisionOK(xschema),time) &
% HoldsAt(XWalkReady(xschema),time) ->
% Happens(XWalkTestFooting(xschema),time) &
% Happens(XWalkReadyOff(xschema),time).

 /*   exists([Distance],
             if((not(holds_at(xWalkStepping(Xschema, Distance), Time)), not(holds_at(xWalkVisionOK(Xschema), Time)), holds_at(xWalkReady(Xschema), Time)),
                 (happens(xWalkTestFooting(Xschema), Time), happens(xWalkReadyOff(Xschema), Time)))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_199'(Fn_199_Param, Time4))) :-
       ( not(holds_at(xWalkStepping(Fn_199_Param, Some_Param),
                      Time4)),
         not(holds_at(xWalkVisionOK(Fn_199_Param), Time4)),
         holds_at(xWalkReady(Fn_199_Param), Time4)
       ),
       (   not(happens(xWalkTestFooting(Fn_199_Param), Time4))
       ;   not(happens(xWalkReadyOff(Fn_199_Param), Time4))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:162
axiom(not(some(Some_Param, '$kolem_Fn_199'(Fn_199_Param, Time4))),
   
    [ not(happens(xWalkTestFooting(Fn_199_Param), Time4)),
      not(holds_at(xWalkStepping(Fn_199_Param, Some_Param),
                   Time4)),
      not(holds_at(xWalkVisionOK(Fn_199_Param), Time4)),
      holds_at(xWalkReady(Fn_199_Param), Time4)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_199'(Fn_199_Param, Time4))),
   
    [ not(happens(xWalkReadyOff(Fn_199_Param), Time4)),
      not(holds_at(xWalkStepping(Fn_199_Param, Some_Param),
                   Time4)),
      not(holds_at(xWalkVisionOK(Fn_199_Param), Time4)),
      holds_at(xWalkReady(Fn_199_Param), Time4)
    ]).

 /*  holds_at(xWalkStepping(XWalkStepping_Param, Some_Param9), Time7) :-
       ( not(holds_at(xWalkVisionOK(XWalkStepping_Param), Time7)),
         holds_at(xWalkReady(XWalkStepping_Param), Time7)
       ),
       (   not(happens(xWalkTestFooting(XWalkStepping_Param), Time7))
       ;   not(happens(xWalkReadyOff(XWalkStepping_Param), Time7))
       ),
       some(Some_Param9,
            '$kolem_Fn_199'(XWalkStepping_Param, Time7)).
 */
axiom(holds_at(xWalkStepping(XWalkStepping_Param, Some_Param9), Time7),
   
    [ not(happens(xWalkTestFooting(XWalkStepping_Param), Time7)),
      not(holds_at(xWalkVisionOK(XWalkStepping_Param), Time7)),
      holds_at(xWalkReady(XWalkStepping_Param), Time7),
      some(Some_Param9,
           '$kolem_Fn_199'(XWalkStepping_Param, Time7))
    ]).
axiom(holds_at(xWalkStepping(XWalkStepping_Param, Some_Param9), Time7),
   
    [ not(happens(xWalkReadyOff(XWalkStepping_Param), Time7)),
      not(holds_at(xWalkVisionOK(XWalkStepping_Param), Time7)),
      holds_at(xWalkReady(XWalkStepping_Param), Time7),
      some(Some_Param9,
           '$kolem_Fn_199'(XWalkStepping_Param, Time7))
    ]).

 /*  holds_at(xWalkVisionOK(XWalkStepping_Param11), Time10) :-
       holds_at(xWalkReady(XWalkStepping_Param11), Time10),
       not(holds_at(xWalkStepping(XWalkStepping_Param11, Some_Param12),
                    Time10)),
       (   not(happens(xWalkTestFooting(XWalkStepping_Param11),
                       Time10))
       ;   not(happens(xWalkReadyOff(XWalkStepping_Param11), Time10))
       ),
       some(Some_Param12,
            '$kolem_Fn_199'(XWalkStepping_Param11, Time10)).
 */
axiom(holds_at(xWalkVisionOK(XWalkStepping_Param11), Time10),
   
    [ not(happens(xWalkTestFooting(XWalkStepping_Param11), Time10)),
      holds_at(xWalkReady(XWalkStepping_Param11), Time10),
      not(holds_at(xWalkStepping(XWalkStepping_Param11,
                                 Some_Param12),
                   Time10)),
      some(Some_Param12,
           '$kolem_Fn_199'(XWalkStepping_Param11, Time10))
    ]).
axiom(holds_at(xWalkVisionOK(XWalkStepping_Param11), Time10),
   
    [ not(happens(xWalkReadyOff(XWalkStepping_Param11), Time10)),
      holds_at(xWalkReady(XWalkStepping_Param11), Time10),
      not(holds_at(xWalkStepping(XWalkStepping_Param11,
                                 Some_Param12),
                   Time10)),
      some(Some_Param12,
           '$kolem_Fn_199'(XWalkStepping_Param11, Time10))
    ]).

 /*  not(holds_at(xWalkReady(XWalkStepping_Param14), Time13)) :-
       not(holds_at(xWalkVisionOK(XWalkStepping_Param14), Time13)),
       not(holds_at(xWalkStepping(XWalkStepping_Param14, Some_Param15),
                    Time13)),
       (   not(happens(xWalkTestFooting(XWalkStepping_Param14),
                       Time13))
       ;   not(happens(xWalkReadyOff(XWalkStepping_Param14), Time13))
       ),
       some(Some_Param15,
            '$kolem_Fn_199'(XWalkStepping_Param14, Time13)).
 */
axiom(not(holds_at(xWalkReady(XWalkStepping_Param14), Time13)),
   
    [ not(happens(xWalkTestFooting(XWalkStepping_Param14), Time13)),
      not(holds_at(xWalkVisionOK(XWalkStepping_Param14), Time13)),
      not(holds_at(xWalkStepping(XWalkStepping_Param14,
                                 Some_Param15),
                   Time13)),
      some(Some_Param15,
           '$kolem_Fn_199'(XWalkStepping_Param14, Time13))
    ]).
axiom(not(holds_at(xWalkReady(XWalkStepping_Param14), Time13)),
   
    [ not(happens(xWalkReadyOff(XWalkStepping_Param14), Time13)),
      not(holds_at(xWalkVisionOK(XWalkStepping_Param14), Time13)),
      not(holds_at(xWalkStepping(XWalkStepping_Param14,
                                 Some_Param15),
                   Time13)),
      some(Some_Param15,
           '$kolem_Fn_199'(XWalkStepping_Param14, Time13))
    ]).

 /*  happens(xWalkTestFooting(XWalkStepping_Param17), Maptime) :-
       ( not(holds_at(xWalkStepping(XWalkStepping_Param17,
                                    Some_Param18),
                      Maptime)),
         not(holds_at(xWalkVisionOK(XWalkStepping_Param17), Maptime)),
         holds_at(xWalkReady(XWalkStepping_Param17), Maptime)
       ),
       some(Some_Param18,
            '$kolem_Fn_199'(XWalkStepping_Param17, Maptime)).
 */
axiom(happens(xWalkTestFooting(XWalkStepping_Param17), Maptime),
   
    [ not(holds_at(xWalkStepping(XWalkStepping_Param17,
                                 Some_Param18),
                   Maptime)),
      not(holds_at(xWalkVisionOK(XWalkStepping_Param17), Maptime)),
      holds_at(xWalkReady(XWalkStepping_Param17), Maptime),
      some(Some_Param18,
           '$kolem_Fn_199'(XWalkStepping_Param17, Maptime))
    ]).

 /*  happens(xWalkReadyOff(XWalkStepping_Param20), Maptime19) :-
       ( not(holds_at(xWalkStepping(XWalkStepping_Param20,
                                    Some_Param21),
                      Maptime19)),
         not(holds_at(xWalkVisionOK(XWalkStepping_Param20), Maptime19)),
         holds_at(xWalkReady(XWalkStepping_Param20), Maptime19)
       ),
       some(Some_Param21,
            '$kolem_Fn_199'(XWalkStepping_Param20, Maptime19)).
 */
axiom(happens(xWalkReadyOff(XWalkStepping_Param20), Maptime19),
   
    [ not(holds_at(xWalkStepping(XWalkStepping_Param20,
                                 Some_Param21),
                   Maptime19)),
      not(holds_at(xWalkVisionOK(XWalkStepping_Param20), Maptime19)),
      holds_at(xWalkReady(XWalkStepping_Param20), Maptime19),
      some(Some_Param21,
           '$kolem_Fn_199'(XWalkStepping_Param20, Maptime19))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:164
% [xschema,distance,time]
% HoldsAt(XWalkStepping(xschema,distance),time) &
% HoldsAt(XWalkDistance(xschema,distance),time) &
% (distance > 0) ->
% Happens(XWalkReadyOn(xschema),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:168
axiom(happens(xWalkReadyOn(Xschema), Time),
   
    [ holds_at(xWalkStepping(Xschema, Distance), Time),
      holds_at(xWalkDistance(Xschema, Distance), Time),
      comparison(Distance, 0, >)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/XWalk.e:170
%; End of file.
