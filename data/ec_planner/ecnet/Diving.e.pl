:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Diving.e').
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
%; scuba diving
%;

% sort object
==> sort(object).

% sort agent: object
==> subsort(agent,object).

% sort diver: agent
==> subsort(diver,agent).

% sort depth: integer
==> subsort(depth,integer).

% sort boat: object
==> subsort(boat,object).
%; reference line, anchor line, shotline, SMB line, ...

% sort line: object
==> subsort(line,object).

% sort equipment: object
==> subsort(equipment,object).

% sort weight: equipment
==> subsort(weight,equipment).

% sort fin: equipment
==> subsort(fin,equipment).

% sort airtank: equipment
==> subsort(airtank,equipment).
%; buoyancy compensator (BC)
%; buoyancy control device (BCD)

% sort computer: equipment
==> subsort(computer,equipment).

% sort bc: equipment
==> subsort(bc,equipment).

% fluent AtDepth(object,depth)
 %  fluent(atDepth(object,depth)).
==> mpred_prop(atDepth(object,depth),fluent).
==> meta_argtypes(atDepth(object,depth)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:34
% [object,depth1,depth2,time]
% HoldsAt(AtDepth(object,depth1),time) &
% HoldsAt(AtDepth(object,depth2),time) ->
% depth1 = depth2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:37
axiom(Depth1=Depth2,
   
    [ holds_at(atDepth(Object, Depth1), Time),
      holds_at(atDepth(Object, Depth2), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:39
% event Ascend(diver,depth)
 %  event(ascend(diver,depth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:40
==> mpred_prop(ascend(diver,depth),event).
==> meta_argtypes(ascend(diver,depth)).

% event Descend(diver,depth)
 %  event(descend(diver,depth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:42
==> mpred_prop(descend(diver,depth),event).
==> meta_argtypes(descend(diver,depth)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:43
% [diver,depth1,depth2,time]
% HoldsAt(AtDepth(diver,depth1),time) &
% Happens(Descend(diver,depth2),time) ->
% depth2>depth1.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:46
axiom(Depth2>Depth1,
   
    [ holds_at(atDepth(Diver, Depth1), Time),
      happens(descend(Diver, Depth2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:48
% [diver,depth1,depth2,time]
% HoldsAt(AtDepth(diver,depth1),time) &
% Happens(Ascend(diver,depth2),time) ->
% depth2<depth1.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:51
axiom(Depth2<Depth1,
   
    [ holds_at(atDepth(Diver, Depth1), Time),
      happens(ascend(Diver, Depth2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:53
% [diver,depth,time]
% Initiates(Descend(diver,depth),AtDepth(diver,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:54
axiom(initiates(descend(Diver, Depth), atDepth(Diver, Depth), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:56
% [diver,depth1,depth2,time]
% HoldsAt(AtDepth(diver,depth1),time) ->
% Terminates(Descend(diver,depth2),AtDepth(diver,depth1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:58
axiom(terminates(descend(Diver, Depth2), atDepth(Diver, Depth1), Time),
    [holds_at(atDepth(Diver, Depth1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:60
% [diver,depth,time]
% Initiates(Ascend(diver,depth),AtDepth(diver,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:61
axiom(initiates(ascend(Diver, Depth), atDepth(Diver, Depth), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:63
% [diver,depth1,depth2,time]
% HoldsAt(AtDepth(diver,depth1),time) ->
% Terminates(Ascend(diver,depth2),AtDepth(diver,depth1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:65
axiom(terminates(ascend(Diver, Depth2), atDepth(Diver, Depth1), Time),
    [holds_at(atDepth(Diver, Depth1), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:67
% fluent Wearing(diver,equipment)
 %  fluent(wearing(diver,equipment)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:68
==> mpred_prop(wearing(diver,equipment),fluent).
==> meta_argtypes(wearing(diver,equipment)).

% event PutOn(diver,equipment)
 %  event(putOn(diver,equipment)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:70
==> mpred_prop(putOn(diver,equipment),event).
==> meta_argtypes(putOn(diver,equipment)).

% event TakeOff(diver,equipment)
 %  event(takeOff(diver,equipment)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:72
==> mpred_prop(takeOff(diver,equipment),event).
==> meta_argtypes(takeOff(diver,equipment)).

% event Lose(diver,equipment)
 %  event(lose(diver,equipment)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:74
==> mpred_prop(lose(diver,equipment),event).
==> meta_argtypes(lose(diver,equipment)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:75
% [diver,equipment,depth,time]
% Releases(PutOn(diver,equipment),AtDepth(equipment,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:76
axiom(releases(putOn(Diver, Equipment), atDepth(Equipment, Depth), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:78
% [diver,equipment,time]
% Releases(PutOn(diver,equipment),UnderWater(equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:79
axiom(releases(putOn(Diver, Equipment), underWater(Equipment), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:81
% [diver,equipment,time]
% Happens(PutOn(diver,equipment),time) ->
% !{diver1} HoldsAt(Wearing(diver1,equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:83
axiom(requires(putOn(Diver, Equipment), Time),
    [not(holds_at(wearing(Diver1, Equipment), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:85
% [diver,depth,equipment,time]
% HoldsAt(Wearing(diver,equipment),time) ->
% (HoldsAt(AtDepth(diver,depth),time) <->
%  HoldsAt(AtDepth(equipment,depth),time)).

 /*  if(holds_at(wearing(Diver,Equipment),Time),
      equiv(holds_at(atDepth(Diver,Depth),Time),
   	 holds_at(atDepth(Equipment,Depth),Time))).
 */

 /*  not(holds_at(wearing(Wearing_Param, AtDepth_Param), Time4)) :-
       (   not(holds_at(atDepth(AtDepth_Param, AtDepth_Ret),
                        Time4)),
           holds_at(atDepth(Wearing_Param, AtDepth_Ret), Time4)
       ;   not(holds_at(atDepth(Wearing_Param, AtDepth_Ret),
                        Time4)),
           holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:88
axiom(not(holds_at(wearing(Wearing_Param, AtDepth_Param), Time4)),
   
    [ not(holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)),
      holds_at(atDepth(Wearing_Param, AtDepth_Ret), Time4)
    ]).
axiom(not(holds_at(wearing(Wearing_Param, AtDepth_Param), Time4)),
   
    [ not(holds_at(atDepth(Wearing_Param, AtDepth_Ret), Time4)),
      holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)
    ]).

 /*  holds_at(atDepth(AtDepth_Param9, AtDepth_Ret11), Time8) :-
       holds_at(atDepth(AtDepth_Param10, AtDepth_Ret11), Time8),
       holds_at(wearing(AtDepth_Param10, AtDepth_Param9), Time8).
 */
axiom(holds_at(atDepth(AtDepth_Param9, AtDepth_Ret11), Time8),
   
    [ holds_at(atDepth(AtDepth_Param10, AtDepth_Ret11), Time8),
      holds_at(wearing(AtDepth_Param10, AtDepth_Param9),
               Time8)
    ]).

 /*  not(holds_at(atDepth(AtDepth_Param13, AtDepth_Ret15), Time12)) :-
       not(holds_at(atDepth(AtDepth_Param14, AtDepth_Ret15),
                    Time12)),
       holds_at(wearing(AtDepth_Param13, AtDepth_Param14),
                Time12).
 */
axiom(not(holds_at(atDepth(AtDepth_Param13, AtDepth_Ret15), Time12)),
   
    [ not(holds_at(atDepth(AtDepth_Param14, AtDepth_Ret15),
                   Time12)),
      holds_at(wearing(AtDepth_Param13, AtDepth_Param14),
               Time12)
    ]).

 /*  holds_at(atDepth(AtDepth_Param17, AtDepth_Ret19), Time16) :-
       holds_at(atDepth(AtDepth_Param18, AtDepth_Ret19), Time16),
       holds_at(wearing(AtDepth_Param17, AtDepth_Param18),
                Time16).
 */
axiom(holds_at(atDepth(AtDepth_Param17, AtDepth_Ret19), Time16),
   
    [ holds_at(atDepth(AtDepth_Param18, AtDepth_Ret19),
               Time16),
      holds_at(wearing(AtDepth_Param17, AtDepth_Param18),
               Time16)
    ]).

 /*  not(holds_at(atDepth(AtDepth_Param21, AtDepth_Ret23), Time20)) :-
       not(holds_at(atDepth(AtDepth_Param22, AtDepth_Ret23),
                    Time20)),
       holds_at(wearing(AtDepth_Param22, AtDepth_Param21),
                Time20).
 */
axiom(not(holds_at(atDepth(AtDepth_Param21, AtDepth_Ret23), Time20)),
   
    [ not(holds_at(atDepth(AtDepth_Param22, AtDepth_Ret23),
                   Time20)),
      holds_at(wearing(AtDepth_Param22, AtDepth_Param21),
               Time20)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:90
% [diver,depth,object,time]
% HoldsAt(Holding(diver,object),time) ->
% (HoldsAt(AtDepth(diver,depth),time) <->
%  HoldsAt(AtDepth(object,depth),time)).

 /*  if(holds_at(holding(Diver,Object),Time),
      equiv(holds_at(atDepth(Diver,Depth),Time),
   	 holds_at(atDepth(Object,Depth),Time))).
 */

 /*  not(holds_at(holding(Holding_Param, AtDepth_Param), Time4)) :-
       (   not(holds_at(atDepth(AtDepth_Param, AtDepth_Ret),
                        Time4)),
           holds_at(atDepth(Holding_Param, AtDepth_Ret), Time4)
       ;   not(holds_at(atDepth(Holding_Param, AtDepth_Ret),
                        Time4)),
           holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:93
axiom(not(holds_at(holding(Holding_Param, AtDepth_Param), Time4)),
   
    [ not(holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)),
      holds_at(atDepth(Holding_Param, AtDepth_Ret), Time4)
    ]).
axiom(not(holds_at(holding(Holding_Param, AtDepth_Param), Time4)),
   
    [ not(holds_at(atDepth(Holding_Param, AtDepth_Ret), Time4)),
      holds_at(atDepth(AtDepth_Param, AtDepth_Ret), Time4)
    ]).

 /*  holds_at(atDepth(AtDepth_Param9, AtDepth_Ret11), Time8) :-
       holds_at(atDepth(AtDepth_Param10, AtDepth_Ret11), Time8),
       holds_at(holding(AtDepth_Param10, AtDepth_Param9), Time8).
 */
axiom(holds_at(atDepth(AtDepth_Param9, AtDepth_Ret11), Time8),
   
    [ holds_at(atDepth(AtDepth_Param10, AtDepth_Ret11), Time8),
      holds_at(holding(AtDepth_Param10, AtDepth_Param9),
               Time8)
    ]).

 /*  not(holds_at(atDepth(AtDepth_Param13, AtDepth_Ret15), Time12)) :-
       not(holds_at(atDepth(AtDepth_Param14, AtDepth_Ret15),
                    Time12)),
       holds_at(holding(AtDepth_Param13, AtDepth_Param14),
                Time12).
 */
axiom(not(holds_at(atDepth(AtDepth_Param13, AtDepth_Ret15), Time12)),
   
    [ not(holds_at(atDepth(AtDepth_Param14, AtDepth_Ret15),
                   Time12)),
      holds_at(holding(AtDepth_Param13, AtDepth_Param14),
               Time12)
    ]).

 /*  holds_at(atDepth(AtDepth_Param17, AtDepth_Ret19), Time16) :-
       holds_at(atDepth(AtDepth_Param18, AtDepth_Ret19), Time16),
       holds_at(holding(AtDepth_Param17, AtDepth_Param18),
                Time16).
 */
axiom(holds_at(atDepth(AtDepth_Param17, AtDepth_Ret19), Time16),
   
    [ holds_at(atDepth(AtDepth_Param18, AtDepth_Ret19),
               Time16),
      holds_at(holding(AtDepth_Param17, AtDepth_Param18),
               Time16)
    ]).

 /*  not(holds_at(atDepth(AtDepth_Param21, AtDepth_Ret23), Time20)) :-
       not(holds_at(atDepth(AtDepth_Param22, AtDepth_Ret23),
                    Time20)),
       holds_at(holding(AtDepth_Param22, AtDepth_Param21),
                Time20).
 */
axiom(not(holds_at(atDepth(AtDepth_Param21, AtDepth_Ret23), Time20)),
   
    [ not(holds_at(atDepth(AtDepth_Param22, AtDepth_Ret23),
                   Time20)),
      holds_at(holding(AtDepth_Param22, AtDepth_Param21),
               Time20)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:95
% [diver,equipment,time]
% HoldsAt(Wearing(diver,equipment),time) ->
% (HoldsAt(UnderWater(diver),time) <->
%  HoldsAt(UnderWater(equipment),time)).

 /*  if(holds_at(wearing(Diver,Equipment),Time),
      equiv(holds_at(underWater(Diver),Time),
   	 holds_at(underWater(Equipment),Time))).
 */

 /*  not(holds_at(wearing(Wearing_Param, Wearing_Ret), Time3)) :-
       (   not(holds_at(underWater(Wearing_Ret), Time3)),
           holds_at(underWater(Wearing_Param), Time3)
       ;   not(holds_at(underWater(Wearing_Param), Time3)),
           holds_at(underWater(Wearing_Ret), Time3)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:98
axiom(not(holds_at(wearing(Wearing_Param, Wearing_Ret), Time3)),
   
    [ not(holds_at(underWater(Wearing_Ret), Time3)),
      holds_at(underWater(Wearing_Param), Time3)
    ]).
axiom(not(holds_at(wearing(Wearing_Param, Wearing_Ret), Time3)),
   
    [ not(holds_at(underWater(Wearing_Param), Time3)),
      holds_at(underWater(Wearing_Ret), Time3)
    ]).

 /*  holds_at(underWater(UnderWater_Ret), Time6) :-
       holds_at(underWater(Wearing_Param7), Time6),
       holds_at(wearing(Wearing_Param7, UnderWater_Ret), Time6).
 */
axiom(holds_at(underWater(UnderWater_Ret), Time6),
   
    [ holds_at(underWater(Wearing_Param7), Time6),
      holds_at(wearing(Wearing_Param7, UnderWater_Ret), Time6)
    ]).

 /*  not(holds_at(underWater(Wearing_Param10), Time9)) :-
       not(holds_at(underWater(UnderWater_Ret11), Time9)),
       holds_at(wearing(Wearing_Param10, UnderWater_Ret11),
                Time9).
 */
axiom(not(holds_at(underWater(Wearing_Param10), Time9)),
   
    [ not(holds_at(underWater(UnderWater_Ret11), Time9)),
      holds_at(wearing(Wearing_Param10, UnderWater_Ret11),
               Time9)
    ]).

 /*  holds_at(underWater(Wearing_Param13), Time12) :-
       holds_at(underWater(UnderWater_Ret14), Time12),
       holds_at(wearing(Wearing_Param13, UnderWater_Ret14),
                Time12).
 */
axiom(holds_at(underWater(Wearing_Param13), Time12),
   
    [ holds_at(underWater(UnderWater_Ret14), Time12),
      holds_at(wearing(Wearing_Param13, UnderWater_Ret14),
               Time12)
    ]).

 /*  not(holds_at(underWater(UnderWater_Ret17), Time15)) :-
       not(holds_at(underWater(Wearing_Param16), Time15)),
       holds_at(wearing(Wearing_Param16, UnderWater_Ret17),
                Time15).
 */
axiom(not(holds_at(underWater(UnderWater_Ret17), Time15)),
   
    [ not(holds_at(underWater(Wearing_Param16), Time15)),
      holds_at(wearing(Wearing_Param16, UnderWater_Ret17),
               Time15)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:100
% [diver,object,time]
% HoldsAt(Holding(diver,object),time) ->
% (HoldsAt(UnderWater(diver),time) <->
%  HoldsAt(UnderWater(object),time)).

 /*  if(holds_at(holding(Diver,Object),Time),
      equiv(holds_at(underWater(Diver),Time),
   	 holds_at(underWater(Object),Time))).
 */

 /*  not(holds_at(holding(Holding_Param, Holding_Ret), Time3)) :-
       (   not(holds_at(underWater(Holding_Ret), Time3)),
           holds_at(underWater(Holding_Param), Time3)
       ;   not(holds_at(underWater(Holding_Param), Time3)),
           holds_at(underWater(Holding_Ret), Time3)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:103
axiom(not(holds_at(holding(Holding_Param, Holding_Ret), Time3)),
   
    [ not(holds_at(underWater(Holding_Ret), Time3)),
      holds_at(underWater(Holding_Param), Time3)
    ]).
axiom(not(holds_at(holding(Holding_Param, Holding_Ret), Time3)),
   
    [ not(holds_at(underWater(Holding_Param), Time3)),
      holds_at(underWater(Holding_Ret), Time3)
    ]).

 /*  holds_at(underWater(UnderWater_Ret), Time6) :-
       holds_at(underWater(Holding_Param7), Time6),
       holds_at(holding(Holding_Param7, UnderWater_Ret), Time6).
 */
axiom(holds_at(underWater(UnderWater_Ret), Time6),
   
    [ holds_at(underWater(Holding_Param7), Time6),
      holds_at(holding(Holding_Param7, UnderWater_Ret), Time6)
    ]).

 /*  not(holds_at(underWater(Holding_Param10), Time9)) :-
       not(holds_at(underWater(UnderWater_Ret11), Time9)),
       holds_at(holding(Holding_Param10, UnderWater_Ret11),
                Time9).
 */
axiom(not(holds_at(underWater(Holding_Param10), Time9)),
   
    [ not(holds_at(underWater(UnderWater_Ret11), Time9)),
      holds_at(holding(Holding_Param10, UnderWater_Ret11),
               Time9)
    ]).

 /*  holds_at(underWater(Holding_Param13), Time12) :-
       holds_at(underWater(UnderWater_Ret14), Time12),
       holds_at(holding(Holding_Param13, UnderWater_Ret14),
                Time12).
 */
axiom(holds_at(underWater(Holding_Param13), Time12),
   
    [ holds_at(underWater(UnderWater_Ret14), Time12),
      holds_at(holding(Holding_Param13, UnderWater_Ret14),
               Time12)
    ]).

 /*  not(holds_at(underWater(UnderWater_Ret17), Time15)) :-
       not(holds_at(underWater(Holding_Param16), Time15)),
       holds_at(holding(Holding_Param16, UnderWater_Ret17),
                Time15).
 */
axiom(not(holds_at(underWater(UnderWater_Ret17), Time15)),
   
    [ not(holds_at(underWater(Holding_Param16), Time15)),
      holds_at(holding(Holding_Param16, UnderWater_Ret17),
               Time15)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:105
% [diver,depth,equipment,time]
% HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Wearing(diver,equipment),time) ->
% Initiates(TakeOff(diver,equipment),AtDepth(equipment,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:108
axiom(initiates(takeOff(Diver, Equipment), atDepth(Equipment, Depth), Time),
   
    [ holds_at(atDepth(Diver, Depth), Time),
      holds_at(wearing(Diver, Equipment), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:110
% [diver,depth,equipment,time]
% !HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Wearing(diver,equipment),time) ->
% Terminates(TakeOff(diver,equipment),AtDepth(equipment,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:113
axiom(terminates(takeOff(Diver, Equipment), atDepth(Equipment, Depth), Time),
   
    [ not(holds_at(atDepth(Diver, Depth), Time)),
      holds_at(wearing(Diver, Equipment), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:115
% [diver,equipment,time]
% HoldsAt(UnderWater(diver),time) ->
% Initiates(TakeOff(diver,equipment),UnderWater(equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:117
axiom(initiates(takeOff(Diver, Equipment), underWater(Equipment), Time),
    [holds_at(underWater(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:119
% [diver,equipment,time]
% !HoldsAt(UnderWater(diver),time) ->
% Terminates(TakeOff(diver,equipment),UnderWater(equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:121
axiom(terminates(takeOff(Diver, Equipment), underWater(Equipment), Time),
    [not(holds_at(underWater(Diver), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:123
% [diver,equipment,depth,time]
% HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Wearing(diver,equipment),time) ->
% Initiates(Lose(diver,equipment),AtDepth(equipment,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:126
axiom(initiates(lose(Diver, Equipment), atDepth(Equipment, Depth), Time),
   
    [ holds_at(atDepth(Diver, Depth), Time),
      holds_at(wearing(Diver, Equipment), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:128
% [diver,equipment,depth,time]
% !HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Wearing(diver,equipment),time) ->
% Terminates(Lose(diver,equipment),AtDepth(equipment,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:131
axiom(terminates(lose(Diver, Equipment), atDepth(Equipment, Depth), Time),
   
    [ not(holds_at(atDepth(Diver, Depth), Time)),
      holds_at(wearing(Diver, Equipment), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:133
% [diver,equipment,time]
% HoldsAt(UnderWater(diver),time) ->
% Initiates(Lose(diver,equipment),UnderWater(equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:135
axiom(initiates(lose(Diver, Equipment), underWater(Equipment), Time),
    [holds_at(underWater(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:137
% [diver,equipment,time]
% !HoldsAt(UnderWater(diver),time) ->
% Terminates(Lose(diver,equipment),UnderWater(equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:139
axiom(terminates(lose(Diver, Equipment), underWater(Equipment), Time),
    [not(holds_at(underWater(Diver), Time))]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:141
% fluent Holding(diver,object)
 %  fluent(holding(diver,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:142
==> mpred_prop(holding(diver,object),fluent).
==> meta_argtypes(holding(diver,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:143
% [diver1,diver2,time]
% HoldsAt(Holding(diver1,diver2),time) ->
% !HoldsAt(Holding(diver2,diver1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:145
axiom(not(holds_at(holding(Diver2, Diver1), Time)),
    [holds_at(holding(Diver1, Diver2), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:147
% event Grab(diver,object)
 %  event(grab(diver,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:148
==> mpred_prop(grab(diver,object),event).
==> meta_argtypes(grab(diver,object)).

% event LetGoOf(diver,object)
 %  event(letGoOf(diver,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:150
==> mpred_prop(letGoOf(diver,object),event).
==> meta_argtypes(letGoOf(diver,object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:151
% [diver,object,time]
% Initiates(Grab(diver,object),Holding(diver,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:152
axiom(initiates(grab(Diver, Object), holding(Diver, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:154
% [diver,object,time]
% Terminates(LetGoOf(diver,object),Holding(diver,object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:155
axiom(terminates(letGoOf(Diver, Object), holding(Diver, Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:157
% [diver,object,depth,time]
% Releases(Grab(diver,object),AtDepth(object,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:158
axiom(releases(grab(Diver, Object), atDepth(Object, Depth), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:160
% [diver,object,time]
% Releases(Grab(diver,object),UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:161
axiom(releases(grab(Diver, Object), underWater(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:163
% [diver,object,depth,time]
% HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Holding(diver,object),time) ->
% Initiates(LetGoOf(diver,object),AtDepth(object,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:166
axiom(initiates(letGoOf(Diver, Object), atDepth(Object, Depth), Time),
   
    [ holds_at(atDepth(Diver, Depth), Time),
      holds_at(holding(Diver, Object), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:168
% [diver,object,depth,time]
% !HoldsAt(AtDepth(diver,depth),time) &
% HoldsAt(Holding(diver,object),time) ->
% Terminates(LetGoOf(diver,object),AtDepth(object,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:171
axiom(terminates(letGoOf(Diver, Object), atDepth(Object, Depth), Time),
   
    [ not(holds_at(atDepth(Diver, Depth), Time)),
      holds_at(holding(Diver, Object), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:173
% [diver,object,time]
% HoldsAt(UnderWater(diver),time) ->
% Initiates(LetGoOf(diver,object),UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:175
axiom(initiates(letGoOf(Diver, Object), underWater(Object), Time),
    [holds_at(underWater(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:177
% [diver,object,time]
% !HoldsAt(UnderWater(diver),time) ->
% Terminates(LetGoOf(diver,object),UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:179
axiom(terminates(letGoOf(Diver, Object), underWater(Object), Time),
    [not(holds_at(underWater(Diver), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:181
% [diver,equipment,time]
% Initiates(PutOn(diver,equipment),Wearing(diver,equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:182
axiom(initiates(putOn(Diver, Equipment), wearing(Diver, Equipment), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:184
% [diver,equipment,time]
% Happens(PutOn(diver,equipment),time) ->
% !HoldsAt(UnderWater(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:186
axiom(requires(putOn(Diver, Equipment), Time),
    [not(holds_at(underWater(Diver), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:188
% [diver,equipment,time]
% Terminates(TakeOff(diver,equipment),Wearing(diver,equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:189
axiom(terminates(takeOff(Diver, Equipment), wearing(Diver, Equipment), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:191
% [diver,equipment,time]
% Terminates(Lose(diver,equipment),Wearing(diver,equipment),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:192
axiom(terminates(lose(Diver, Equipment), wearing(Diver, Equipment), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:194
% fluent Vertical(diver)
 %  fluent(vertical(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:195
==> mpred_prop(vertical(diver),fluent).
==> meta_argtypes(vertical(diver)).

% fluent HorizontalDown(diver)
 %  fluent(horizontalDown(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:197
==> mpred_prop(horizontalDown(diver),fluent).
==> meta_argtypes(horizontalDown(diver)).

% fluent Inverted(diver)
 %  fluent(inverted(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:199
==> mpred_prop(inverted(diver),fluent).
==> meta_argtypes(inverted(diver)).

% fluent HorizontalUp(diver)
 %  fluent(horizontalUp(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:201
==> mpred_prop(horizontalUp(diver),fluent).
==> meta_argtypes(horizontalUp(diver)).

% xor Vertical, HorizontalDown, Inverted, HorizontalUp
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:203
xor([vertical,horizontalDown,inverted,horizontalUp]).

% event RotatePitch(diver)
 %  event(rotatePitch(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:205
==> mpred_prop(rotatePitch(diver),event).
==> meta_argtypes(rotatePitch(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:206
% [diver,time]
% HoldsAt(Vertical(diver),time) ->
% Initiates(RotatePitch(diver),HorizontalDown(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:208
axiom(initiates(rotatePitch(Diver), horizontalDown(Diver), Time),
    [holds_at(vertical(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:210
% [diver,time]
% HoldsAt(HorizontalDown(diver),time) ->
% Initiates(RotatePitch(diver),Inverted(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:212
axiom(initiates(rotatePitch(Diver), inverted(Diver), Time),
    [holds_at(horizontalDown(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:214
% [diver,time]
% HoldsAt(HorizontalDown(diver),time) ->
% Terminates(RotatePitch(diver),HorizontalDown(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:216
axiom(terminates(rotatePitch(Diver), horizontalDown(Diver), Time),
    [holds_at(horizontalDown(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:218
% [diver,time]
% HoldsAt(Inverted(diver),time) ->
% Initiates(RotatePitch(diver),HorizontalUp(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:220
axiom(initiates(rotatePitch(Diver), horizontalUp(Diver), Time),
    [holds_at(inverted(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:222
% [diver,time]
% HoldsAt(Inverted(diver),time) ->
% Terminates(RotatePitch(diver),Inverted(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:224
axiom(terminates(rotatePitch(Diver), inverted(Diver), Time),
    [holds_at(inverted(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:226
% [diver,time]
% HoldsAt(HorizontalUp(diver),time) ->
% Initiates(RotatePitch(diver),Vertical(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:228
axiom(initiates(rotatePitch(Diver), vertical(Diver), Time),
    [holds_at(horizontalUp(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:230
% [diver,time]
% HoldsAt(HorizontalUp(diver),time) ->
% Terminates(RotatePitch(diver),HorizontalUp(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:232
axiom(terminates(rotatePitch(Diver), horizontalUp(Diver), Time),
    [holds_at(horizontalUp(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:234
% event RotateYaw(diver)
 %  event(rotateYaw(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:235
==> mpred_prop(rotateYaw(diver),event).
==> meta_argtypes(rotateYaw(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:236
%; try taking out Holding condition here
% [diver,time]
% Happens(Ascend1(diver),time) &
% !Happens(RapidAscendToSurface(diver),time) &
% !({diver1} HoldsAt(Holding(diver,diver1),time)) ->
% Happens(RotateYaw(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:241
axiom(happens(rotateYaw(Diver), Time),
   
    [ happens(ascend1(Diver), Time),
      not(happens(rapidAscendToSurface(Diver), Time)),
      not(holds_at(holding(Diver, Diver1), Time))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:243
% fluent UnderWater(object)
 %  fluent(underWater(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:244
==> mpred_prop(underWater(object),fluent).
==> meta_argtypes(underWater(object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:245
% [object,depth,time]
% depth>% 0 &
% HoldsAt(AtDepth(object,depth),time) ->
% HoldsAt(UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:248
axiom(holds_at(underWater(Object), Time),
   
    [ comparison(Depth, 0, >),
      holds_at(atDepth(Object, Depth), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:250
% event EnterWater(object)
 %  event(enterWater(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:251
==> mpred_prop(enterWater(object),event).
==> meta_argtypes(enterWater(object)).

% event Surface(object)
 %  event(surface(object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:253
==> mpred_prop(surface(object),event).
==> meta_argtypes(surface(object)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:254
% [object,time]
% Initiates(EnterWater(object),UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:255
axiom(initiates(enterWater(Object), underWater(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:257
% [diver,time]
% Happens(EnterWater(diver),time) ->
% !{diver1} HoldsAt(Holding(diver1,diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:259
axiom(requires(enterWater(Diver), Time),
    [not(holds_at(holding(Diver1, Diver), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:261
% [object,depth,time]
% depth=% 0 ->
% Initiates(EnterWater(object),AtDepth(object,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:263
axiom(initiates(enterWater(Object), atDepth(Object, Depth), Time),
    [equals(Depth, 0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:265
% [object,time]
% Terminates(Surface(object),UnderWater(object),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:266
axiom(terminates(surface(Object), underWater(Object), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:268
% [diver,time]
% Terminates(Surface(diver),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:269
axiom(terminates(surface(Diver), positivelyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:271
% [diver,time]
% Terminates(Surface(diver),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:272
axiom(terminates(surface(Diver), negativelyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:274
% [diver,time]
% Terminates(Surface(diver),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:275
axiom(terminates(surface(Diver), neutrallyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:277
% [object,depth,time]
% Terminates(Surface(object),AtDepth(object,depth),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:278
axiom(terminates(surface(Object), atDepth(Object, Depth), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:280
% [diver,time]
 % Happens(EnterWater(diver),time) ->
% HoldsAt(Vertical(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:281
axiom(requires(enterWater(Diver), Time),
    [holds_at(vertical(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:283
% fluent StandingOn(diver,boat)
 %  fluent(standingOn(diver,boat)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:284
==> mpred_prop(standingOn(diver,boat),fluent).
==> meta_argtypes(standingOn(diver,boat)).

% event StandOn(diver,boat)
 %  event(standOn(diver,boat)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:286
==> mpred_prop(standOn(diver,boat),event).
==> meta_argtypes(standOn(diver,boat)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:287
% [diver,boat,time]
% Terminates(EnterWater(diver),StandingOn(diver,boat),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:288
axiom(terminates(enterWater(Diver), standingOn(Diver, Boat), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:290
% [diver,boat,time]
% Initiates(StandOn(diver,boat),StandingOn(diver,boat),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:291
axiom(initiates(standOn(Diver, Boat), standingOn(Diver, Boat), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:293
% fluent PositivelyBuoyant(diver)
 %  fluent(positivelyBuoyant(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:294
==> mpred_prop(positivelyBuoyant(diver),fluent).
==> meta_argtypes(positivelyBuoyant(diver)).

% fluent NeutrallyBuoyant(diver)
 %  fluent(neutrallyBuoyant(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:296
==> mpred_prop(neutrallyBuoyant(diver),fluent).
==> meta_argtypes(neutrallyBuoyant(diver)).

% fluent NegativelyBuoyant(diver)
 %  fluent(negativelyBuoyant(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:298
==> mpred_prop(negativelyBuoyant(diver),fluent).
==> meta_argtypes(negativelyBuoyant(diver)).

% mutex PositivelyBuoyant, NeutrallyBuoyant, NegativelyBuoyant
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:300
mutex(positivelyBuoyant).
mutex(neutrallyBuoyant).
mutex(negativelyBuoyant).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:301
% [diver,time]
% HoldsAt(PositivelyBuoyant(diver),time) ->
% HoldsAt(UnderWater(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:303
axiom(holds_at(underWater(Diver), Time),
    [holds_at(positivelyBuoyant(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:305
% [diver,time]
% HoldsAt(NeutrallyBuoyant(diver),time) ->
% HoldsAt(UnderWater(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:307
axiom(holds_at(underWater(Diver), Time),
    [holds_at(neutrallyBuoyant(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:309
% [diver,time]
% HoldsAt(NegativelyBuoyant(diver),time) ->
% HoldsAt(UnderWater(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:311
axiom(holds_at(underWater(Diver), Time),
    [holds_at(negativelyBuoyant(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:313
% event PressDeflateButton(diver,bc)
 %  event(pressDeflateButton(diver,bc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:314
==> mpred_prop(pressDeflateButton(diver,bc),event).
==> meta_argtypes(pressDeflateButton(diver,bc)).

% event PressDumpButton(diver,bc)
 %  event(pressDumpButton(diver,bc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:316
==> mpred_prop(pressDumpButton(diver,bc),event).
==> meta_argtypes(pressDumpButton(diver,bc)).

% event PressInflateButton(diver,bc)
 %  event(pressInflateButton(diver,bc)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:318
==> mpred_prop(pressInflateButton(diver,bc),event).
==> meta_argtypes(pressInflateButton(diver,bc)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:319
% [diver,bc,time]
% Happens(PressDeflateButton(diver,bc),time) ->
% HoldsAt(Vertical(diver),time) &
% HoldsAt(UnderWater(bc),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:322
axiom(requires(pressDeflateButton(Diver, Bc), Time),
   
    [ holds_at(vertical(Diver), Time),
      holds_at(underWater(Bc), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:324
% [diver,bc,time]
% Happens(PressDumpButton(diver,bc),time) ->
% HoldsAt(Vertical(diver),time) &
% HoldsAt(UnderWater(bc),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:327
axiom(requires(pressDumpButton(Diver, Bc), Time),
   
    [ holds_at(vertical(Diver), Time),
      holds_at(underWater(Bc), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:329
% [diver,bc,time]
 % Happens(PressDumpButton(diver,bc),time) ->
% HoldsAt(UncontrolledBuoyancy(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:330
axiom(requires(pressDumpButton(Diver, Bc), Time),
    [holds_at(uncontrolledBuoyancy(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:332
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Initiates(PressDeflateButton(diver,bc),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:334
axiom(initiates(pressDeflateButton(Diver, Bc), negativelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:336
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressDeflateButton(diver,bc),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:338
axiom(terminates(pressDeflateButton(Diver, Bc), neutrallyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:340
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressDeflateButton(diver,bc),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:342
axiom(terminates(pressDeflateButton(Diver, Bc), positivelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:344
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Initiates(PressDumpButton(diver,bc),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:346
axiom(initiates(pressDumpButton(Diver, Bc), negativelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:348
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressDumpButton(diver,bc),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:350
axiom(terminates(pressDumpButton(Diver, Bc), neutrallyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:352
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressDumpButton(diver,bc),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:354
axiom(terminates(pressDumpButton(Diver, Bc), positivelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:356
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Initiates(PressInflateButton(diver,bc),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:358
axiom(initiates(pressInflateButton(Diver, Bc), neutrallyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:360
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressInflateButton(diver,bc),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:362
axiom(terminates(pressInflateButton(Diver, Bc), positivelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:364
% [diver,bc,time]
% HoldsAt(Wearing(diver,bc),time) ->
% Terminates(PressInflateButton(diver,bc),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:366
axiom(terminates(pressInflateButton(Diver, Bc), negativelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Bc), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:368
% [diver,weight,time]
% HoldsAt(Wearing(diver,weight),time) ->
% Initiates(TakeOff(diver,weight),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:370
axiom(initiates(takeOff(Diver, Weight), positivelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Weight), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:372
% [diver,weight,time]
% HoldsAt(Wearing(diver,weight),time) ->
% Terminates(TakeOff(diver,weight),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:374
axiom(terminates(takeOff(Diver, Weight), negativelyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Weight), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:376
% [diver,weight,time]
% HoldsAt(Wearing(diver,weight),time) ->
% Terminates(TakeOff(diver,weight),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:378
axiom(terminates(takeOff(Diver, Weight), neutrallyBuoyant(Diver), Time),
    [holds_at(wearing(Diver, Weight), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:380
% fluent UncontrolledBuoyancy(diver)
 %  fluent(uncontrolledBuoyancy(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:381
==> mpred_prop(uncontrolledBuoyancy(diver),fluent).
==> meta_argtypes(uncontrolledBuoyancy(diver)).

% event LoseBuoyancyControl(diver)
 %  event(loseBuoyancyControl(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:383
==> mpred_prop(loseBuoyancyControl(diver),event).
==> meta_argtypes(loseBuoyancyControl(diver)).

% predicate IsInexperiencedDiver(diver)
 %  predicate(isInexperiencedDiver(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:385
==> mpred_prop(isInexperiencedDiver(diver),predicate).
==> meta_argtypes(isInexperiencedDiver(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:386
% [diver,time]
% Happens(LoseBuoyancyControl(diver),time) ->
% IsInexperiencedDiver(diver).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:388
axiom(requires(loseBuoyancyControl(Diver), Time),
    [isInexperiencedDiver(Diver)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:390
% [diver,time]
% Initiates(LoseBuoyancyControl(diver),UncontrolledBuoyancy(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:391
axiom(initiates(loseBuoyancyControl(Diver), uncontrolledBuoyancy(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:393
% [diver,time]
% Initiates(LoseBuoyancyControl(diver),PositivelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:394
axiom(initiates(loseBuoyancyControl(Diver), positivelyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:396
% [diver,time]
% Terminates(LoseBuoyancyControl(diver),NegativelyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:397
axiom(terminates(loseBuoyancyControl(Diver), negativelyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:399
% [diver,time]
% Terminates(LoseBuoyancyControl(diver),NeutrallyBuoyant(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:400
axiom(terminates(loseBuoyancyControl(Diver), neutrallyBuoyant(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:402
%; determining fluent

% fluent AscendDescendAmount(diver,depth)
 %  fluent(ascendDescendAmount(diver,depth)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:404
==> mpred_prop(ascendDescendAmount(diver,depth),fluent).
==> meta_argtypes(ascendDescendAmount(diver,depth)).

% noninertial AscendDescendAmount
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:405
==> noninertial(ascendDescendAmount).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:406
% [diver,depth1,depth2,time]
% HoldsAt(AscendDescendAmount(diver,depth1),time) &
% HoldsAt(AscendDescendAmount(diver,depth2),time) ->
% depth1=depth2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:409
axiom(Depth1=Depth2,
   
    [ holds_at(ascendDescendAmount(Diver, Depth1), Time),
      holds_at(ascendDescendAmount(Diver, Depth2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:411
% [diver,depth,time]
% Happens(Descend(diver,depth),time) ->
% HoldsAt(NegativelyBuoyant(diver),time) &
% ({depth1}
%  HoldsAt(AscendDescendAmount(diver,depth1),time) &
%  HoldsAt(AtDepth(diver,depth-depth1),time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:416
axiom(requires(descend(Diver, Depth), Time),
   
    [ holds_at(negativelyBuoyant(Diver), Time),
      holds_at(ascendDescendAmount(Diver, Depth1), Time),
      holds_at(atDepth(Diver, Depth-Depth1), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:418
% event KickUp(diver)
 %  event(kickUp(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:419
==> mpred_prop(kickUp(diver),event).
==> meta_argtypes(kickUp(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:420
% [diver,depth,time]
% Happens(Ascend(diver,depth),time) ->
% (HoldsAt(PositivelyBuoyant(diver),time) |
%  (HoldsAt(NeutrallyBuoyant(diver),time) & Happens(KickUp(diver),time))) &
% ({depth1}
%  HoldsAt(AscendDescendAmount(diver,depth1),time) &
%  HoldsAt(AtDepth(diver,depth+depth1),time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:426
axiom(requires(ascend(Diver, Depth), Time),
   
    [ holds_at(positivelyBuoyant(Diver), Time),
      holds_at(ascendDescendAmount(Diver, Depth1), Time),
      holds_at(atDepth(Diver, Depth+Depth1), Time)
    ]).
axiom(requires(ascend(Diver, Depth), Time),
   
    [ holds_at(neutrallyBuoyant(Diver), Time),
      happens(kickUp(Diver), Time),
      holds_at(ascendDescendAmount(Diver, Depth1), Time),
      holds_at(atDepth(Diver, Depth+Depth1), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:428
% [diver,time]
% Happens(KickUp(diver),time) ->
% HoldsAt(Vertical(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:430
axiom(requires(kickUp(Diver), Time),
    [holds_at(vertical(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:432
% event SwimAround(diver)
 %  event(swimAround(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:433
==> mpred_prop(swimAround(diver),event).
==> meta_argtypes(swimAround(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:434
% [diver,time]
% Happens(SwimAround(diver),time) ->
% HoldsAt(HorizontalDown(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:436
axiom(requires(swimAround(Diver), Time),
    [holds_at(horizontalDown(Diver), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:438
%; signaling

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:440
% event SignalDescend(diver,diver)
 %  event(signalDescend(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:441
==> mpred_prop(signalDescend(diver,diver),event).
==> meta_argtypes(signalDescend(diver,diver)).

% event SignalOutOfTime(diver,diver)
 %  event(signalOutOfTime(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:443
==> mpred_prop(signalOutOfTime(diver,diver),event).
==> meta_argtypes(signalOutOfTime(diver,diver)).

% event SignalAscend(diver,diver)
 %  event(signalAscend(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:445
==> mpred_prop(signalAscend(diver,diver),event).
==> meta_argtypes(signalAscend(diver,diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:446
%;[diver1,diver2,time]
%;Happens(SignalAscend(diver1,diver2),time) ->
%;Happens(SignalOutOfTime(diver1,diver2),time-1).
%;[diver1,diver2,time]
%;Happens(SignalDescend(diver1,diver2),time) ->
%;HoldsAt(See(diver1,diver2),time) &
%;HoldsAt(See(diver2,diver1),time).
%;[diver1,diver2,time]
%;Happens(SignalOutOfTime(diver1,diver2),time) ->
%;HoldsAt(See(diver1,diver2),time) &
%;HoldsAt(See(diver2,diver1),time).
%;[diver1,diver2,time]
%;Happens(SignalAscend(diver1,diver2),time) ->
%;HoldsAt(See(diver1,diver2),time) &
%;HoldsAt(See(diver2,diver1),time).
%;event LookAt(agent,object)
%;fluent See(agent,object)
%;[agent,object,time]
%;Initiates(LookAt(agent,object),See(agent,object),time).
%;[agent,object1,object2,time]
%;object1!=object2 ->
%;Terminates(LookAt(agent,object1),
%;           See(agent,object2),
%;           time).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:478
% event Descend1(diver)
 %  event(descend1(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:479
==> mpred_prop(descend1(diver),event).
==> meta_argtypes(descend1(diver)).

% event Ascend1(diver)
 %  event(ascend1(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:481
==> mpred_prop(ascend1(diver),event).
==> meta_argtypes(ascend1(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:482
%;[diver,object,time]
%;Terminates(Descend1(diver),See(diver,object),time).
%;[diver,object,time]
%;Terminates(Ascend1(diver),See(diver,object),time).
%;[diver,object,time]
%;Terminates(RotateYaw(diver),See(diver,object),time).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:491
% event RapidAscendToSurface(diver)
 %  event(rapidAscendToSurface(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:492
==> mpred_prop(rapidAscendToSurface(diver),event).
==> meta_argtypes(rapidAscendToSurface(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:493
% [diver,time]
% Happens(Descend1(diver),time) <->
% ({depth} Happens(Descend(diver,depth),time)).

 /*  happens(descend1(Diver), Time) <->
       exists([Depth], happens(descend(Diver, Depth), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:495
axiom(happens(descend1(Diver), Time),
    [happens(descend(Diver, Depth), Time)]).

 /*  if(happens(descend1(Diver),Time),
      exists([Depth],
   	  happens(descend(Diver,Depth),Time))).
 */

 /*  happens(descend(Descend_Param, Descend_Ret), Maptime) :-
       happens(descend1(Descend_Param), Maptime).
 */
axiom(happens(descend(Descend_Param, Descend_Ret), Maptime),
    [happens(descend1(Descend_Param), Maptime)]).

 /*  not(happens(descend1(Descend_Param7), Maptime6)) :-
       not(happens(descend(Descend_Param7, Descend_Ret8),
                   Maptime6)).
 */
axiom(not(happens(descend1(Descend_Param7), Maptime6)),
   
    [ not(happens(descend(Descend_Param7, Descend_Ret8),
                  Maptime6))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:497
% [diver,time]
% Happens(Ascend1(diver),time) <->
% ({depth} Happens(Ascend(diver,depth),time)).

 /*  happens(ascend1(Diver), Time) <->
       exists([Depth], happens(ascend(Diver, Depth), Time)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:499
axiom(happens(ascend1(Diver), Time),
    [happens(ascend(Diver, Depth), Time)]).

 /*  if(happens(ascend1(Diver),Time),
      exists([Depth],
   	  happens(ascend(Diver,Depth),Time))).
 */

 /*  happens(ascend(Ascend_Param, Ascend_Ret), Maptime) :-
       happens(ascend1(Ascend_Param), Maptime).
 */
axiom(happens(ascend(Ascend_Param, Ascend_Ret), Maptime),
    [happens(ascend1(Ascend_Param), Maptime)]).

 /*  not(happens(ascend1(Ascend_Param7), Maptime6)) :-
       not(happens(ascend(Ascend_Param7, Ascend_Ret8), Maptime6)).
 */
axiom(not(happens(ascend1(Ascend_Param7), Maptime6)),
   
    [ not(happens(ascend(Ascend_Param7, Ascend_Ret8),
                  Maptime6))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:501
% [diver,time]
% Happens(RapidAscendToSurface(diver),time) ->
% Happens(Ascend(diver,0),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:503
axiom(happens(ascend(Diver, 0), Time),
    [happens(rapidAscendToSurface(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:505
% event AscendLine(diver,line)
 %  event(ascendLine(diver,line)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:506
==> mpred_prop(ascendLine(diver,line),event).
==> meta_argtypes(ascendLine(diver,line)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:507
% [diver,line,time]
% Happens(AscendLine(diver,line),time) ->
% Happens(Ascend1(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:509
axiom(happens(ascend1(Diver), Time),
    [happens(ascendLine(Diver, Line), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:511
% fluent Disoriented(diver)
 %  fluent(disoriented(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:512
==> mpred_prop(disoriented(diver),fluent).
==> meta_argtypes(disoriented(diver)).

% event BecomeDisoriented(diver)
 %  event(becomeDisoriented(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:514
==> mpred_prop(becomeDisoriented(diver),event).
==> meta_argtypes(becomeDisoriented(diver)).

% event BecomeReoriented(diver)
 %  event(becomeReoriented(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:516
==> mpred_prop(becomeReoriented(diver),event).
==> meta_argtypes(becomeReoriented(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:517
% [diver,time]
% Initiates(BecomeDisoriented(diver),Disoriented(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:518
axiom(initiates(becomeDisoriented(Diver), disoriented(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:520
% [diver,time]
% Terminates(BecomeReoriented(diver),Disoriented(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:521
axiom(terminates(becomeReoriented(Diver), disoriented(Diver), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:523
% fluent DisturbedSilt()
 %  fluent(disturbedSilt()).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:524
==> mpred_prop(disturbedSilt(),fluent).
==> meta_argtypes(disturbedSilt()).

% event DisturbSilt(diver)
 %  event(disturbSilt(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:526
==> mpred_prop(disturbSilt(diver),event).
==> meta_argtypes(disturbSilt(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:527
% [diver,time]
% Initiates(DisturbSilt(diver),DisturbedSilt(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:528
axiom(initiates(disturbSilt(Diver), disturbedSilt(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:530
% [diver,time]
% Happens(BecomeDisoriented(diver),time) ->
% (!HoldsAt(DisturbedSilt(),time-1) &
%  HoldsAt(DisturbedSilt(),time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:533
axiom(requires(becomeDisoriented(Diver), start),
   
    [ not(holds_at(disturbedSilt(), t)),
      holds_at(disturbedSilt(), start),
      b(t, start),
      ignore(start-1=t)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:535
% event Panic(diver)
 %  event(panic(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:536
==> mpred_prop(panic(diver),event).
==> meta_argtypes(panic(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:537
% [diver,time]
 % Happens(Panic(diver),time) ->
% HoldsAt(Disoriented(diver),time) |
% HoldsAt(UncontrolledBuoyancy(diver),time) |
% ({equipment} Happens(Lose(diver,equipment),time-1)) |
% Happens(Vomit(diver),time-1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:541
axiom(requires(panic(Diver), Time),
    [holds_at(disoriented(Diver), Time)]).
axiom(requires(panic(Diver), Time),
    [holds_at(uncontrolledBuoyancy(Diver), Time)]).
axiom(requires(lose(Diver, Equipment), Time-1),
    [requires(panic(Diver), Time)]).
axiom(requires(vomit(Diver), Time-1),
    [requires(panic(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:543
% event Vomit(diver)
 %  event(vomit(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:544
==> mpred_prop(vomit(diver),event).
==> meta_argtypes(vomit(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:545
%; conditions

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:547
% fluent Unconscious(diver)
 %  fluent(unconscious(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:548
==> mpred_prop(unconscious(diver),fluent).
==> meta_argtypes(unconscious(diver)).

% event GoUnconscious(diver)
 %  event(goUnconscious(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:550
==> mpred_prop(goUnconscious(diver),event).
==> meta_argtypes(goUnconscious(diver)).

% event RegainConsciousness(diver)
 %  event(regainConsciousness(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:552
==> mpred_prop(regainConsciousness(diver),event).
==> meta_argtypes(regainConsciousness(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:553
% [diver,time]
% Initiates(GoUnconscious(diver),Unconscious(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:554
axiom(initiates(goUnconscious(Diver), unconscious(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:556
% [diver,time]
% Terminates(RegainConsciousness(diver),Unconscious(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:557
axiom(terminates(regainConsciousness(Diver), unconscious(Diver), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:559
% [diver,time]
% Happens(GoUnconscious(diver),time) ->
% Happens(RapidAscendToSurface(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:561
axiom(happens(rapidAscendToSurface(Diver), Time),
    [happens(goUnconscious(Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:563
% fluent HasEarPain(diver)
 %  fluent(hasEarPain(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:564
==> mpred_prop(hasEarPain(diver),fluent).
==> meta_argtypes(hasEarPain(diver)).

% event StartEarPain(diver)
 %  event(startEarPain(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:566
==> mpred_prop(startEarPain(diver),event).
==> meta_argtypes(startEarPain(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:567
% [diver,time]
 % Initiates(StartEarPain(diver),HasEarPain(diver),time).
axiom(initiates(startEarPain(Diver), hasEarPain(Diver), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:569
% fluent HasRupturedEardrum(diver)
 %  fluent(hasRupturedEardrum(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:570
==> mpred_prop(hasRupturedEardrum(diver),fluent).
==> meta_argtypes(hasRupturedEardrum(diver)).

% event RuptureEardrum(diver)
 %  event(ruptureEardrum(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:572
==> mpred_prop(ruptureEardrum(diver),event).
==> meta_argtypes(ruptureEardrum(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:573
% [diver,time]
% Initiates(RuptureEardrum(diver),HasRupturedEardrum(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:574
axiom(initiates(ruptureEardrum(Diver), hasRupturedEardrum(Diver), Time),
    []).

% fluent ConditionOK(diver)
 %  fluent(conditionOK(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:576
==> mpred_prop(conditionOK(diver),fluent).
==> meta_argtypes(conditionOK(diver)).

% fluent HasDecompressionIllness(diver)
 %  fluent(hasDecompressionIllness(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:578
==> mpred_prop(hasDecompressionIllness(diver),fluent).
==> meta_argtypes(hasDecompressionIllness(diver)).

% event StartDecompressionIllness(diver)
 %  event(startDecompressionIllness(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:580
==> mpred_prop(startDecompressionIllness(diver),event).
==> meta_argtypes(startDecompressionIllness(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:581
% [diver,time]
% Initiates(StartDecompressionIllness(diver),
%           HasDecompressionIllness(diver),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:584
axiom(initiates(startDecompressionIllness(Diver), hasDecompressionIllness(Diver), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:586
% fluent SignalingDecompress(computer,diver)
 %  fluent(signalingDecompress(computer,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:587
==> mpred_prop(signalingDecompress(computer,diver),fluent).
==> meta_argtypes(signalingDecompress(computer,diver)).

% fluent SignalingLowOnAir(computer,airtank,diver)
 %  fluent(signalingLowOnAir(computer,airtank,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:589
==> mpred_prop(signalingLowOnAir(computer,airtank,diver),fluent).
==> meta_argtypes(signalingLowOnAir(computer,airtank,diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:590
% [computer,airtank,diver,time]
% HoldsAt(SignalingLowOnAir(computer,airtank,diver),time) ->
% HoldsAt(LowOnAir(airtank),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:592
axiom(holds_at(lowOnAir(Airtank), Time),
   
    [ holds_at(signalingLowOnAir(Computer, Airtank, Diver),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:594
% [computer,diver,time]
% HoldsAt(SignalingDecompress(computer,diver),time) ->
% !{time1} time1<time & Happens(Decompress(diver),time1).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:596
axiom(not(exists([Time1],  (Time1<Time, happens(decompress(Diver), Time1)))),
    [holds_at(signalingDecompress(Computer, Diver), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:598
% event Decompress(diver)
 %  event(decompress(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:599
==> mpred_prop(decompress(diver),event).
==> meta_argtypes(decompress(diver)).

% event EqualizeEars(diver)
 %  event(equalizeEars(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:601
==> mpred_prop(equalizeEars(diver),event).
==> meta_argtypes(equalizeEars(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:602
% [diver,time]
% (Happens(Descend1(diver),time) | Happens(Ascend1(diver),time)) &
% !Happens(EqualizeEars(diver),time) ->
% Happens(StartEarPain(diver),time) &
% Happens(RuptureEardrum(diver),time).

 /*   if(((happens(descend1(Diver), Time);happens(ascend1(Diver), Time)), not(happens(equalizeEars(Diver), Time))),
          (happens(startEarPain(Diver), Time), happens(ruptureEardrum(Diver), Time))).
 */

 /*  happens(startEarPain(StartEarPain_Ret), Maptime) :-
       not(happens(equalizeEars(StartEarPain_Ret), Maptime)),
       (   happens(descend1(StartEarPain_Ret), Maptime)
       ;   happens(ascend1(StartEarPain_Ret), Maptime)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:606
axiom(happens(startEarPain(StartEarPain_Ret), Maptime),
   
    [ happens(descend1(StartEarPain_Ret), Maptime),
      not(happens(equalizeEars(StartEarPain_Ret), Maptime))
    ]).
axiom(happens(startEarPain(StartEarPain_Ret), Maptime),
   
    [ happens(ascend1(StartEarPain_Ret), Maptime),
      not(happens(equalizeEars(StartEarPain_Ret), Maptime))
    ]).

 /*  happens(ruptureEardrum(RuptureEardrum_Ret), Maptime4) :-
       not(happens(equalizeEars(RuptureEardrum_Ret), Maptime4)),
       (   happens(descend1(RuptureEardrum_Ret), Maptime4)
       ;   happens(ascend1(RuptureEardrum_Ret), Maptime4)
       ).
 */
axiom(happens(ruptureEardrum(RuptureEardrum_Ret), Maptime4),
   
    [ happens(descend1(RuptureEardrum_Ret), Maptime4),
      not(happens(equalizeEars(RuptureEardrum_Ret), Maptime4))
    ]).
axiom(happens(ruptureEardrum(RuptureEardrum_Ret), Maptime4),
   
    [ happens(ascend1(RuptureEardrum_Ret), Maptime4),
      not(happens(equalizeEars(RuptureEardrum_Ret), Maptime4))
    ]).

 /*  happens(equalizeEars(EqualizeEars_Ret), Maptime6) :-
       (   happens(descend1(EqualizeEars_Ret), Maptime6)
       ;   happens(ascend1(EqualizeEars_Ret), Maptime6)
       ),
       (   not(happens(startEarPain(EqualizeEars_Ret), Maptime6))
       ;   not(happens(ruptureEardrum(EqualizeEars_Ret), Maptime6))
       ).
 */
axiom(happens(equalizeEars(EqualizeEars_Ret), Maptime6),
   
    [ not(happens(startEarPain(EqualizeEars_Ret), Maptime6)),
      happens(descend1(EqualizeEars_Ret), Maptime6)
    ]).
axiom(happens(equalizeEars(EqualizeEars_Ret), Maptime6),
   
    [ not(happens(ruptureEardrum(EqualizeEars_Ret), Maptime6)),
      happens(descend1(EqualizeEars_Ret), Maptime6)
    ]).
axiom(happens(equalizeEars(EqualizeEars_Ret), Maptime6),
   
    [ not(happens(startEarPain(EqualizeEars_Ret), Maptime6)),
      happens(ascend1(EqualizeEars_Ret), Maptime6)
    ]).
axiom(happens(equalizeEars(EqualizeEars_Ret), Maptime6),
   
    [ not(happens(ruptureEardrum(EqualizeEars_Ret), Maptime6)),
      happens(ascend1(EqualizeEars_Ret), Maptime6)
    ]).

 /*  not(happens(descend1(Descend1_Ret), Maptime8)) :-
       not(happens(equalizeEars(Descend1_Ret), Maptime8)),
       (   not(happens(startEarPain(Descend1_Ret), Maptime8))
       ;   not(happens(ruptureEardrum(Descend1_Ret), Maptime8))
       ).
 */
axiom(not(happens(descend1(Descend1_Ret), Maptime8)),
   
    [ not(happens(startEarPain(Descend1_Ret), Maptime8)),
      not(happens(equalizeEars(Descend1_Ret), Maptime8))
    ]).
axiom(not(happens(descend1(Descend1_Ret), Maptime8)),
   
    [ not(happens(ruptureEardrum(Descend1_Ret), Maptime8)),
      not(happens(equalizeEars(Descend1_Ret), Maptime8))
    ]).

 /*  not(happens(ascend1(Ascend1_Ret), Maptime10)) :-
       not(happens(equalizeEars(Ascend1_Ret), Maptime10)),
       (   not(happens(startEarPain(Ascend1_Ret), Maptime10))
       ;   not(happens(ruptureEardrum(Ascend1_Ret), Maptime10))
       ).
 */
axiom(not(happens(ascend1(Ascend1_Ret), Maptime10)),
   
    [ not(happens(startEarPain(Ascend1_Ret), Maptime10)),
      not(happens(equalizeEars(Ascend1_Ret), Maptime10))
    ]).
axiom(not(happens(ascend1(Ascend1_Ret), Maptime10)),
   
    [ not(happens(ruptureEardrum(Ascend1_Ret), Maptime10)),
      not(happens(equalizeEars(Ascend1_Ret), Maptime10))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:608
% [diver,time]
% Happens(Ascend1(diver),time) &
% !Happens(Decompress(diver),time) ->
% Happens(StartDecompressionIllness(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:611
axiom(happens(startDecompressionIllness(Diver), Time),
   
    [ happens(ascend1(Diver), Time),
      not(happens(decompress(Diver), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:613
% [diver1,diver2,time]
% HoldsAt(Holding(diver1,diver2),time) &
% Happens(Ascend1(diver1),time) &
% !Happens(Decompress(diver2),time) ->
% Happens(StartDecompressionIllness(diver2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:617
axiom(happens(startDecompressionIllness(Diver2), Time),
   
    [ holds_at(holding(Diver1, Diver2), Time),
      happens(ascend1(Diver1), Time),
      not(happens(decompress(Diver2), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:619
% [diver,time]
% Happens(Decompress(diver),time) ->
% ({depth} depth>0 & HoldsAt(AtDepth(diver,depth),time)) &
% !HoldsAt(UncontrolledBuoyancy(diver),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:622
axiom(requires(decompress(Diver), Time),
   
    [ comparison(Depth, 0, >),
      holds_at(atDepth(Diver, Depth), Time),
      not(holds_at(uncontrolledBuoyancy(Diver), Time))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:624
% fluent HasHeadache(diver)
 %  fluent(hasHeadache(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:625
==> mpred_prop(hasHeadache(diver),fluent).
==> meta_argtypes(hasHeadache(diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:626
% [diver,time]
% HoldsAt(ConditionOK(diver),time) ->
% !HoldsAt(Unconscious(diver),time) &
% !HoldsAt(HasEarPain(diver),time) &
% !HoldsAt(HasRupturedEardrum(diver),time) &
% !HoldsAt(HasDecompressionIllness(diver),time) &
% !HoldsAt(HasHeadache(diver),time).

 /*   if(holds_at(conditionOK(Diver), Time),
          (not(holds_at(unconscious(Diver), Time)), not(holds_at(hasEarPain(Diver), Time)), not(holds_at(hasRupturedEardrum(Diver), Time)), not(holds_at(hasDecompressionIllness(Diver), Time)), not(holds_at(hasHeadache(Diver), Time)))).
 */

 /*  not(holds_at(conditionOK(ConditionOK_Ret), Time2)) :-
       (   holds_at(unconscious(ConditionOK_Ret), Time2)
       ;   holds_at(hasEarPain(ConditionOK_Ret), Time2)
       ;   holds_at(hasRupturedEardrum(ConditionOK_Ret), Time2)
       ;   holds_at(hasDecompressionIllness(ConditionOK_Ret), Time2)
       ;   holds_at(hasHeadache(ConditionOK_Ret), Time2)
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:632
axiom(not(holds_at(conditionOK(ConditionOK_Ret), Time2)),
    [holds_at(unconscious(ConditionOK_Ret), Time2)]).
axiom(not(holds_at(conditionOK(ConditionOK_Ret), Time2)),
    [holds_at(hasEarPain(ConditionOK_Ret), Time2)]).
axiom(not(holds_at(conditionOK(ConditionOK_Ret), Time2)),
    [holds_at(hasRupturedEardrum(ConditionOK_Ret), Time2)]).
axiom(not(holds_at(conditionOK(ConditionOK_Ret), Time2)),
    [holds_at(hasDecompressionIllness(ConditionOK_Ret), Time2)]).
axiom(not(holds_at(conditionOK(ConditionOK_Ret), Time2)),
    [holds_at(hasHeadache(ConditionOK_Ret), Time2)]).

 /*  not(holds_at(unconscious(Unconscious_Ret), Time4)) :-
       holds_at(conditionOK(Unconscious_Ret), Time4).
 */
axiom(not(holds_at(unconscious(Unconscious_Ret), Time4)),
    [holds_at(conditionOK(Unconscious_Ret), Time4)]).

 /*  not(holds_at(hasEarPain(HasEarPain_Ret), Time6)) :-
       holds_at(conditionOK(HasEarPain_Ret), Time6).
 */
axiom(not(holds_at(hasEarPain(HasEarPain_Ret), Time6)),
    [holds_at(conditionOK(HasEarPain_Ret), Time6)]).

 /*  not(holds_at(hasRupturedEardrum(HasRupturedEardrum_Ret), Time8)) :-
       holds_at(conditionOK(HasRupturedEardrum_Ret), Time8).
 */
axiom(not(holds_at(hasRupturedEardrum(HasRupturedEardrum_Ret), Time8)),
    [holds_at(conditionOK(HasRupturedEardrum_Ret), Time8)]).

 /*  not(holds_at(hasDecompressionIllness(HasDecompressionIllness_Ret), Time10)) :-
       holds_at(conditionOK(HasDecompressionIllness_Ret), Time10).
 */
axiom(not(holds_at(hasDecompressionIllness(HasDecompressionIllness_Ret), Time10)),
    [holds_at(conditionOK(HasDecompressionIllness_Ret), Time10)]).

 /*  not(holds_at(hasHeadache(HasHeadache_Ret), Time12)) :-
       holds_at(conditionOK(HasHeadache_Ret), Time12).
 */
axiom(not(holds_at(hasHeadache(HasHeadache_Ret), Time12)),
    [holds_at(conditionOK(HasHeadache_Ret), Time12)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:634
% event BeAirlifted(diver)
 %  event(beAirlifted(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:635
==> mpred_prop(beAirlifted(diver),event).
==> meta_argtypes(beAirlifted(diver)).

% event TakeInWater(diver)
 %  event(takeInWater(diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:637
==> mpred_prop(takeInWater(diver),event).
==> meta_argtypes(takeInWater(diver)).

% fluent LowOnAir(airtank)
 %  fluent(lowOnAir(airtank)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:639
==> mpred_prop(lowOnAir(airtank),fluent).
==> meta_argtypes(lowOnAir(airtank)).

% event BecomeLowOnAir(airtank)
 %  event(becomeLowOnAir(airtank)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:641
==> mpred_prop(becomeLowOnAir(airtank),event).
==> meta_argtypes(becomeLowOnAir(airtank)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:642
% [airtank,time]
% Initiates(BecomeLowOnAir(airtank),LowOnAir(airtank),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:643
axiom(initiates(becomeLowOnAir(Airtank), lowOnAir(Airtank), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:645
%; initial state
% [diver]
 % HoldsAt(ConditionOK(diver),0).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:646
axiom(initially(conditionOK(Diver)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:647
% [diver]
 % HoldsAt(Vertical(diver),0).
axiom(initially(vertical(Diver)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:648
% !HoldsAt(DisturbedSilt(),0).
 %  not(initially(disturbedSilt())).
axiom(not(initially(disturbedSilt())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:649
% [diver]
 % !HoldsAt(UncontrolledBuoyancy(diver),0).
 %  not(initially(uncontrolledBuoyancy(Diver))).
axiom(not(initially(uncontrolledBuoyancy(UncontrolledBuoyancy_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:650
% [diver]
 % !HoldsAt(Disoriented(diver),0).
 %  not(initially(disoriented(Diver))).
axiom(not(initially(disoriented(Disoriented_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:651
% [diver]
 % !HoldsAt(PositivelyBuoyant(diver),0) &
%         !HoldsAt(NeutrallyBuoyant(diver),0) &
%         !HoldsAt(NegativelyBuoyant(diver),0).

 /*   not(holds_at(positivelyBuoyant(Diver), 0)),
      not(holds_at(neutrallyBuoyant(Diver), 0)),
      not(holds_at(negativelyBuoyant(Diver), 0)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:653
axiom(not(holds_at(positivelyBuoyant(PositivelyBuoyant_Ret), t)),
    []).
axiom(not(holds_at(neutrallyBuoyant(NeutrallyBuoyant_Ret), t)),
    []).
axiom(not(holds_at(negativelyBuoyant(NegativelyBuoyant_Ret), t)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:654
% [diver,object]
 % !HoldsAt(Wearing(diver,object),0).
 %  not(initially(wearing(Diver,Object))).
axiom(not(initially(wearing(Wearing_Param, Wearing_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:655
% [diver,object]
 % !HoldsAt(Holding(diver,object),0).
 %  not(initially(holding(Diver,Object))).
axiom(not(initially(holding(Holding_Param, Holding_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:656
% [diver1,diver2]
 % !HoldsAt(Separated(diver1,diver2),0).
 %  not(initially(separated(Diver1,Diver2))).
axiom(not(initially(separated(Separated_Param, Separated_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:657
%;[agent,object] !HoldsAt(See(agent,object),0).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:659
% fluent Separated(diver,diver)
 %  fluent(separated(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:660
==> mpred_prop(separated(diver,diver),fluent).
==> meta_argtypes(separated(diver,diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:661
% [diver1,diver2,time]
% HoldsAt(Separated(diver1,diver2),time) ->
% HoldsAt(Separated(diver2,diver1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:663
axiom(holds_at(separated(Diver2, Diver1), Time),
    [holds_at(separated(Diver1, Diver2), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:665
% event BecomeSeparated(diver,diver)
 %  event(becomeSeparated(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:666
==> mpred_prop(becomeSeparated(diver,diver),event).
==> meta_argtypes(becomeSeparated(diver,diver)).

% event BeReunitedWith(diver,diver)
 %  event(beReunitedWith(diver,diver)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:668
==> mpred_prop(beReunitedWith(diver,diver),event).
==> meta_argtypes(beReunitedWith(diver,diver)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:669
% [diver1,diver2,time]
% Initiates(BecomeSeparated(diver1,diver2),Separated(diver1,diver2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:670
axiom(initiates(becomeSeparated(Diver1, Diver2), separated(Diver1, Diver2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:672
% [diver1,diver2,time]
% Initiates(BecomeSeparated(diver1,diver2),Separated(diver2,diver1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:673
axiom(initiates(becomeSeparated(Diver1, Diver2), separated(Diver2, Diver1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:675
% [diver1,diver2,time]
% Terminates(BeReunitedWith(diver1,diver2),Separated(diver1,diver2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:676
axiom(terminates(beReunitedWith(Diver1, Diver2), separated(Diver1, Diver2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:678
% [diver1,diver2,time]
% Terminates(BeReunitedWith(diver1,diver2),Separated(diver2,diver1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:679
axiom(terminates(beReunitedWith(Diver1, Diver2), separated(Diver2, Diver1), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Diving.e:681
%; End of file.
