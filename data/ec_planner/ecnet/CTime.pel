:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/CTime.e').
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
%; clock time
%; The CTime representation maps the time points of ECTime to clock time.
%; part of the day
%; time is in the daytime.

% predicate Daytime(time)
 %  predicate(daytime(time)).
==> mpred_prop(daytime(time),predicate).
==> meta_argtypes(daytime(time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:18
%; time is in the nighttime.

% predicate Nighttime(time)
 %  predicate(nighttime(time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:20
==> mpred_prop(nighttime(time),predicate).
==> meta_argtypes(nighttime(time)).

% xor Daytime, Nighttime
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:21
xor([daytime,nighttime]).
%; time is in the morning.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:23
% predicate Morning(time)
 %  predicate(morning(time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:24
==> mpred_prop(morning(time),predicate).
==> meta_argtypes(morning(time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:24
%; time is in the afternoon.

% predicate Afternoon(time)
 %  predicate(afternoon(time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:26
==> mpred_prop(afternoon(time),predicate).
==> meta_argtypes(afternoon(time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:26
%; time is in the evening.

% predicate Evening(time)
 %  predicate(evening(time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:28
==> mpred_prop(evening(time),predicate).
==> meta_argtypes(evening(time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:28
%; time is in the night.

% predicate Night(time)
 %  predicate(night(time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:30
==> mpred_prop(night(time),predicate).
==> meta_argtypes(night(time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:30
%; time is in the late night.

% predicate LateNight(time)
 %  predicate(lateNight(time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:32
==> mpred_prop(lateNight(time),predicate).
==> meta_argtypes(lateNight(time)).

% xor Morning, Afternoon, Evening, Night, LateNight
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:33
xor([morning,afternoon,evening,night,lateNight]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:34
% [time]
 % Daytime(time) <-> Morning(time)|Afternoon(time)|Evening(time).

 /*  daytime(Time) <->
       (   morning(Time)
       ;   afternoon(Time)
       ;   evening(Time)
       ).
 */
axiom(daytime(Time),
    [morning(Time)]).
axiom(daytime(Time),
    [afternoon(Time)]).
axiom(daytime(Time),
    [evening(Time)]).

 /*   if(daytime(Time),
          (morning(Time);afternoon(Time);evening(Time))).
 */

 /*  morning(Morning_Ret) :-
       ( not(afternoon(Morning_Ret)),
         not(evening(Morning_Ret))
       ),
       daytime(Morning_Ret).
 */
axiom(morning(Morning_Ret),
   
    [ not(afternoon(Morning_Ret)),
      not(evening(Morning_Ret)),
      daytime(Morning_Ret)
    ]).

 /*  afternoon(Afternoon_Ret) :-
       not(evening(Afternoon_Ret)),
       not(morning(Afternoon_Ret)),
       daytime(Afternoon_Ret).
 */
axiom(afternoon(Afternoon_Ret),
   
    [ not(evening(Afternoon_Ret)),
      not(morning(Afternoon_Ret)),
      daytime(Afternoon_Ret)
    ]).

 /*  evening(Evening_Ret) :-
       not(afternoon(Evening_Ret)),
       not(morning(Evening_Ret)),
       daytime(Evening_Ret).
 */
axiom(evening(Evening_Ret),
   
    [ not(afternoon(Evening_Ret)),
      not(morning(Evening_Ret)),
      daytime(Evening_Ret)
    ]).

 /*  not(daytime(Daytime_Ret)) :-
       not(morning(Daytime_Ret)),
       not(afternoon(Daytime_Ret)),
       not(evening(Daytime_Ret)).
 */
axiom(not(daytime(Daytime_Ret)),
   
    [ not(morning(Daytime_Ret)),
      not(afternoon(Daytime_Ret)),
      not(evening(Daytime_Ret))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:35
% [time]
 % Nighttime(time) <-> Night(time)|LateNight(time).

 /*  nighttime(Time) <->
       (   night(Time)
       ;   lateNight(Time)
       ).
 */
axiom(nighttime(Time),
    [night(Time)]).
axiom(nighttime(Time),
    [lateNight(Time)]).
 %   if(nighttime(Time),  (night(Time);lateNight(Time))).

 /*  night(Night_Ret) :-
       not(lateNight(Night_Ret)),
       nighttime(Night_Ret).
 */
axiom(night(Night_Ret),
    [not(lateNight(Night_Ret)), nighttime(Night_Ret)]).

 /*  lateNight(LateNight_Ret) :-
       not(night(LateNight_Ret)),
       nighttime(LateNight_Ret).
 */
axiom(lateNight(LateNight_Ret),
    [not(night(LateNight_Ret)), nighttime(LateNight_Ret)]).

 /*  not(nighttime(Nighttime_Ret)) :-
       not(night(Nighttime_Ret)),
       not(lateNight(Nighttime_Ret)).
 */
axiom(not(nighttime(Nighttime_Ret)),
    [not(night(Nighttime_Ret)), not(lateNight(Nighttime_Ret))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:37
%; dreams
%; time is part of a dream sequence.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:40
% predicate DreamSequence(time)
 %  predicate(dreamSequence(time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:41
==> mpred_prop(dreamSequence(time),predicate).
==> meta_argtypes(dreamSequence(time)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/CTime.e:42
%; End of file.
