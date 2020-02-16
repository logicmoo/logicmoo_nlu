:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/GiunchigliaEtAl2004/MonkeyBananas.e').
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
%; @article{Giunchiglia:2004,
%;   author = "Enrico Giunchiglia and Joohyung Lee and Vladimir Lifschitz and Norman C. McCain and Hudson Turner",
%;   year = "2004",
%;   title = "Nonmonotonic causal theories",
%;   journal = "Artificial Intelligence",
%;   volume = "153",
%;   pages = "49--104",
%; }
%;

% sort object
==> sort(object).

% sort location
==> sort(location).

% object Monkey, Bananas, Box
==> t(object,monkey).
==> t(object,bananas).
==> t(object,box).

% location L1, L2, L3
==> t(location,l1).
==> t(location,l2).
==> t(location,l3).

% fluent At(object,location)
 %  fluent(at(object,location)).
==> mpred_prop(at(object,location),fluent).
==> meta_argtypes(at(object,location)).

% fluent OnBox()
 %  fluent(onBox()).
==> mpred_prop(onBox(),fluent).
==> meta_argtypes(onBox()).

% fluent HasBananas()
 %  fluent(hasBananas()).
==> mpred_prop(hasBananas(),fluent).
==> meta_argtypes(hasBananas()).

% event Walk(location)
 %  event(walk(location)).
==> mpred_prop(walk(location),event).
==> meta_argtypes(walk(location)).

% event PushBox(location)
 %  event(pushBox(location)).
==> mpred_prop(pushBox(location),event).
==> meta_argtypes(pushBox(location)).

% event ClimbOn()
 %  event(climbOn()).
==> mpred_prop(climbOn(),event).
==> meta_argtypes(climbOn()).

% event ClimbOff()
 %  event(climbOff()).
==> mpred_prop(climbOff(),event).
==> meta_argtypes(climbOff()).

% event GraspBananas()
 %  event(graspBananas()).
==> mpred_prop(graspBananas(),event).
==> meta_argtypes(graspBananas()).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:36
% [object,location1,location2,time]
% HoldsAt(At(object,location1),time) &
% HoldsAt(At(object,location2),time) ->
% location1=location2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:39
axiom(Location1=Location2,
   
    [ holds_at(at(Object, Location1), Time),
      holds_at(at(Object, Location2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:41
% [object,location,time]
% object=% Monkey ->
% Initiates(Walk(location),At(object,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:43
axiom(initiates(walk(Location), at(Object, Location), Time),
    [equals(Object, monkey)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:45
% [object,location1,location2,time]
% object=% Monkey &
% HoldsAt(At(object,location1),time) ->
% Terminates(Walk(location2),At(object,location1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:48
axiom(terminates(walk(Location2), at(Object, Location1), Time),
   
    [ equals(Object, monkey),
      holds_at(at(Object, Location1), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:50
% [location,time]
% Happens(Walk(location),time) ->
% !HoldsAt(At(Monkey,location),time) &
% !HoldsAt(OnBox(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:53
axiom(requires(walk(Location), Time),
   
    [ not(holds_at(at(monkey, Location), Time)),
      not(holds_at(onBox(), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:55
% [location,time]
% HoldsAt(HasBananas(),time) &
% HoldsAt(At(Monkey,location),time) ->
% HoldsAt(At(Bananas,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:58
axiom(holds_at(at(bananas, Location), Time),
   
    [ holds_at(hasBananas(), Time),
      holds_at(at(monkey, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:60
% [object,location,time]
% object=% Box | object=Monkey ->
% Initiates(PushBox(location),At(object,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:62
axiom(initiates(pushBox(Location), at(Object, Location), Time),
    [equals(Object, box)]).
axiom(initiates(pushBox(Location), at(Object, Location), Time),
    [equals(Object, monkey)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:64
% [object,location1,location2,time]
% (object=Box | object=Monkey) &
% HoldsAt(At(object,location1),time) ->
% Terminates(PushBox(location2),At(object,location1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:67
axiom(terminates(pushBox(Location2), at(Object, Location1), Time),
   
    [ equals(Object, box),
      holds_at(at(Object, Location1), Time)
    ]).
axiom(terminates(pushBox(Location2), at(Object, Location1), Time),
   
    [ equals(Object, monkey),
      holds_at(at(Object, Location1), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:69
% [location,time]
% Happens(PushBox(location),time) ->
% ({location1}
%   HoldsAt(At(Box,location1),time) &
%   HoldsAt(At(Monkey,location1),time)) &
% !HoldsAt(At(Monkey,location),time) &
% !HoldsAt(OnBox(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:75
axiom(requires(pushBox(Location), Time),
   
    [ holds_at(at(box, Location1), Time),
      holds_at(at(monkey, Location1), Time),
      not(holds_at(at(monkey, Location), Time)),
      not(holds_at(onBox(), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:77
% [time]
 % Initiates(ClimbOn(),OnBox(),time).
axiom(initiates(climbOn(), onBox(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:79
% [time]
% Happens(ClimbOn(),time) ->
% !HoldsAt(OnBox(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:81
axiom(requires(climbOn(), Time),
    [not(holds_at(onBox(), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:83
% [time]
 % Terminates(ClimbOff(),OnBox(),time).
axiom(terminates(climbOff(), onBox(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:85
% [time]
% Happens(ClimbOff(),time) ->
% HoldsAt(OnBox(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:87
axiom(requires(climbOff(), Time),
    [holds_at(onBox(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:89
% [time]
 % Initiates(GraspBananas(),HasBananas(),time).
axiom(initiates(graspBananas(), hasBananas(), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:91
% [object,location,time]
% object=% Bananas ->
% Releases(GraspBananas(),At(object,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:93
axiom(releases(graspBananas(), at(Object, Location), Time),
    [equals(Object, bananas)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:95
% [time]
% Happens(GraspBananas(),time) ->
% ({location1}
%   HoldsAt(At(Bananas,location1),time) &
%   HoldsAt(At(Monkey,location1),time)) &
% HoldsAt(OnBox(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:100
axiom(requires(graspBananas(), Time),
   
    [ holds_at(at(bananas, Location1), Time),
      holds_at(at(monkey, Location1), Time),
      holds_at(onBox(), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:102
% [time]
% HoldsAt(OnBox(),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:104
% {location1}%  HoldsAt(At(Box,location1),time) &
%             HoldsAt(At(Monkey,location1),time).

 /*   exists([Location1],
             if(holds_at(onBox(), Time),
                 (holds_at(at(box, Location1), Time), holds_at(at(monkey, Location1), Time)))).
 */

 /*  not(some(Location, '$kolem_Fn_122'(Time3))) :-
       holds_at(onBox(), Time3),
       (   not(holds_at(at(box, Location), Time3))
       ;   not(holds_at(at(monkey, Location), Time3))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:105
axiom(not(some(Location, '$kolem_Fn_122'(Time3))),
   
    [ not(holds_at(at(box, Location), Time3)),
      holds_at(onBox(), Time3)
    ]).
axiom(not(some(Location, '$kolem_Fn_122'(Time3))),
   
    [ not(holds_at(at(monkey, Location), Time3)),
      holds_at(onBox(), Time3)
    ]).

 /*  not(holds_at(onBox(), Time5)) :-
       (   not(holds_at(at(box, Location6), Time5))
       ;   not(holds_at(at(monkey, Location6), Time5))
       ),
       some(Location6, '$kolem_Fn_122'(Time5)).
 */
axiom(not(holds_at(onBox(), Time5)),
   
    [ not(holds_at(at(box, Location6), Time5)),
      some(Location6, '$kolem_Fn_122'(Time5))
    ]).
axiom(not(holds_at(onBox(), Time5)),
   
    [ not(holds_at(at(monkey, Location6), Time5)),
      some(Location6, '$kolem_Fn_122'(Time5))
    ]).

 /*  holds_at(at(box, Location7), Time8) :-
       holds_at(onBox(), Time8),
       some(Location7, '$kolem_Fn_122'(Time8)).
 */
axiom(holds_at(at(box, Location7), Time8),
   
    [ holds_at(onBox(), Time8),
      some(Location7, '$kolem_Fn_122'(Time8))
    ]).

 /*  holds_at(at(monkey, Location9), Time10) :-
       holds_at(onBox(), Time10),
       some(Location9, '$kolem_Fn_122'(Time10)).
 */
axiom(holds_at(at(monkey, Location9), Time10),
   
    [ holds_at(onBox(), Time10),
      some(Location9, '$kolem_Fn_122'(Time10))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/GiunchigliaEtAl2004/MonkeyBananas.e:107
%; End of file.
