:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter9/RunningAndDriving.e').
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

% load foundations/Root.e

% load foundations/EC.e

% sort agent
==> sort(agent).

% sort location
==> sort(location).

% agent James
==> t(agent,james).

% location Bookstore
==> t(location,bookstore).

% fluent Tired(agent)
 %  fluent(tired(agent)).
==> mpred_prop(tired(agent),fluent).
==> meta_argtypes(tired(agent)).

% event Go(agent,location)
 %  event(go(agent,location)).
==> mpred_prop(go(agent,location),event).
==> meta_argtypes(go(agent,location)).

% event Run(agent,location)
 %  event(run(agent,location)).
==> mpred_prop(run(agent,location),event).
==> meta_argtypes(run(agent,location)).

% event Drive(agent,location)
 %  event(drive(agent,location)).
==> mpred_prop(drive(agent,location),event).
==> meta_argtypes(drive(agent,location)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:34
% [agent,location,time]
% Happens(Go(agent,location),time) ->
% Happens(Run(agent,location),time) | Happens(Drive(agent,location),time).

 /*   if(happens(go(Agent, Location), Time),
          (happens(run(Agent, Location), Time);happens(drive(Agent, Location), Time))).
 */

 /*  happens(run(Run_Param, Run_Ret), Maptime) :-
       not(happens(drive(Run_Param, Run_Ret), Maptime)),
       happens(go(Run_Param, Run_Ret), Maptime).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:36
axiom(happens(run(Run_Param, Run_Ret), Maptime),
   
    [ not(happens(drive(Run_Param, Run_Ret), Maptime)),
      happens(go(Run_Param, Run_Ret), Maptime)
    ]).

 /*  happens(drive(Drive_Param, Drive_Ret), Maptime6) :-
       not(happens(run(Drive_Param, Drive_Ret), Maptime6)),
       happens(go(Drive_Param, Drive_Ret), Maptime6).
 */
axiom(happens(drive(Drive_Param, Drive_Ret), Maptime6),
   
    [ not(happens(run(Drive_Param, Drive_Ret), Maptime6)),
      happens(go(Drive_Param, Drive_Ret), Maptime6)
    ]).

 /*  not(happens(go(Go_Param, Go_Ret), Maptime9)) :-
       not(happens(run(Go_Param, Go_Ret), Maptime9)),
       not(happens(drive(Go_Param, Go_Ret), Maptime9)).
 */
axiom(not(happens(go(Go_Param, Go_Ret), Maptime9)),
   
    [ not(happens(run(Go_Param, Go_Ret), Maptime9)),
      not(happens(drive(Go_Param, Go_Ret), Maptime9))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:38
% xor Run, Drive
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:39
xor([run,drive]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:40
% [agent,location,time]
 % Initiates(Run(agent,location),Tired(agent),time).
axiom(initiates(run(Agent, Location), tired(Agent), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:42
% !HoldsAt(Tired(James),0).
 %  not(initially(tired(james))).
axiom(not(initially(tired(james))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:43
% Happens(Go(James,Bookstore),0).
axiom(happens(go(james, bookstore), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:44
% HoldsAt(Tired(James),1).
holds_at(tired(james),1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:46
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:47
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter9/RunningAndDriving.e:48
==> range(offset,1,1).
%; End of file.
