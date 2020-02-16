:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Dress.e').
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
%; Dress
%; (cf Sleep)
%;

% event PutOn(agent,clothing)
 %  event(putOn(agent,clothing)).
==> mpred_prop(putOn(agent,clothing),event).
==> meta_argtypes(putOn(agent,clothing)).

% event TakeOff(agent,clothing)
 %  event(takeOff(agent,clothing)).
==> mpred_prop(takeOff(agent,clothing),event).
==> meta_argtypes(takeOff(agent,clothing)).

% fluent Wearing(agent,clothing)
 %  fluent(wearing(agent,clothing)).
==> mpred_prop(wearing(agent,clothing),fluent).
==> meta_argtypes(wearing(agent,clothing)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:20
% [agent,clothing,time]
% Initiates(PutOn(agent,clothing),
%           Wearing(agent,clothing),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:23
axiom(initiates(putOn(Agent, Clothing), wearing(Agent, Clothing), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:25
% [agent,clothing,time]
% Happens(PutOn(agent,clothing),time) ->
% !HoldsAt(Wearing(agent,clothing),time) &
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:28
% {location}%  HoldsAt(At(agent,location),time) &
%            HoldsAt(At(clothing,location),time).

 /*   exists([Location],
             if(happens(putOn(Agent, Clothing), Time),
                 (not(holds_at(wearing(Agent, Clothing), Time)), holds_at(at(Agent, Location), Time), holds_at(at(Clothing, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_140'(Fn_140_Param, At_Param, Maptime))) :-
       happens(putOn(Fn_140_Param, At_Param), Maptime),
       (   holds_at(wearing(Fn_140_Param, At_Param), Maptime)
       ;   not(holds_at(at(Fn_140_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:29
axiom(not(some(Location6, '$kolem_Fn_140'(Fn_140_Param, At_Param, Maptime))),
   
    [ holds_at(wearing(Fn_140_Param, At_Param), Maptime),
      happens(putOn(Fn_140_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_140'(Fn_140_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_140_Param, Location6), Maptime)),
      happens(putOn(Fn_140_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_140'(Fn_140_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(putOn(Fn_140_Param, At_Param), Maptime)
    ]).

 /*  not(happens(putOn(PutOn_Param, At_Param12), Maptime9)) :-
       (   holds_at(wearing(PutOn_Param, At_Param12), Maptime9)
       ;   not(holds_at(at(PutOn_Param, Location10), Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_140'(PutOn_Param, At_Param12, Maptime9)).
 */
axiom(not(happens(putOn(PutOn_Param, At_Param12), Maptime9)),
   
    [ holds_at(wearing(PutOn_Param, At_Param12), Maptime9),
      some(Location10,
           '$kolem_Fn_140'(PutOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(putOn(PutOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(PutOn_Param, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_140'(PutOn_Param, At_Param12, Maptime9))
    ]).
axiom(not(happens(putOn(PutOn_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_140'(PutOn_Param, At_Param12, Maptime9))
    ]).

 /*  not(holds_at(wearing(Wearing_Param, Wearing_Ret), Time13)) :-
       happens(putOn(Wearing_Param, Wearing_Ret), Time13),
       some(Some_Param,
            '$kolem_Fn_140'(Wearing_Param, Wearing_Ret, Time13)).
 */
axiom(not(holds_at(wearing(Wearing_Param, Wearing_Ret), Time13)),
   
    [ happens(putOn(Wearing_Param, Wearing_Ret), Time13),
      some(Some_Param,
           '$kolem_Fn_140'(Wearing_Param, Wearing_Ret, Time13))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(putOn(At_Param19, PutOn_Ret), Time18),
       some(Location17,
            '$kolem_Fn_140'(At_Param19, PutOn_Ret, Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(putOn(At_Param19, PutOn_Ret), Time18),
      some(Location17,
           '$kolem_Fn_140'(At_Param19, PutOn_Ret, Time18))
    ]).

 /*  holds_at(at(At_Param23, Location21), Time22) :-
       happens(putOn(PutOn_Param24, At_Param23), Time22),
       some(Location21,
            '$kolem_Fn_140'(PutOn_Param24, At_Param23, Time22)).
 */
axiom(holds_at(at(At_Param23, Location21), Time22),
   
    [ happens(putOn(PutOn_Param24, At_Param23), Time22),
      some(Location21,
           '$kolem_Fn_140'(PutOn_Param24, At_Param23, Time22))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:31
% [agent,clothing,time]
% Terminates(TakeOff(agent,clothing),
%            Wearing(agent,clothing),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:34
axiom(terminates(takeOff(Agent, Clothing), wearing(Agent, Clothing), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:36
% [agent,clothing,time]
% Happens(TakeOff(agent,clothing),time) ->
% HoldsAt(Wearing(agent,clothing),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:38
axiom(requires(takeOff(Agent, Clothing), Time),
    [holds_at(wearing(Agent, Clothing), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:40
% [agent,clothing,location,time]
% Releases(PutOn(agent,clothing),At(clothing,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:41
axiom(releases(putOn(Agent, Clothing), at(Clothing, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:43
% [agent,clothing,location,time]
% HoldsAt(Wearing(agent,clothing),time) &
% HoldsAt(At(agent,location),time) ->
% HoldsAt(At(clothing,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:46
axiom(holds_at(at(Clothing, Location), Time),
   
    [ holds_at(wearing(Agent, Clothing), Time),
      holds_at(at(Agent, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:48
%;[agent,clothing,location1,location2,time]
%;HoldsAt(At(agent,location1),time) &
%;location1 != location2 ->
%;Terminates(TakeOff(agent,clothing),At(clothing,location2),time).
% [agent,clothing,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:54
% HoldsAt(At(agent,location),time) ->
% Initiates(TakeOff(agent,clothing),At(clothing,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:55
axiom(initiates(takeOff(Agent, Clothing), at(Clothing, Location), Time),
    [holds_at(at(Agent, Location), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Dress.e:57
%; End of file.
