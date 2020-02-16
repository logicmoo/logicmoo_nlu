:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2004b/RunningAndDriving1.e').
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
%; @inproceedings{Mueller:2004b,
%;   author = "Erik T. Mueller",
%;   year = "2004",
%;   title = "A tool for satisfiability-based commonsense reasoning in the event calculus",
%;   editor = "Valerie Barr and Zdravko Markov",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{S}eventeenth \uppercase{I}nternational \uppercase{F}lorida \uppercase{A}rtificial \uppercase{I}ntelligence \uppercase{R}esearch \uppercase{S}ociety \uppercase{C}onference",
%;   pages = "147--152",
%;   address = "Menlo Park, CA",
%;   publisher = "AAAI Press",
%; }
%;

% load foundations/Root.e

% load foundations/EC.e

% sort agent
==> sort(agent).

% fluent Tired(agent)
 %  fluent(tired(agent)).
==> mpred_prop(tired(agent),fluent).
==> meta_argtypes(tired(agent)).

% event Move(agent)
 %  event(move(agent)).
==> mpred_prop(move(agent),event).
==> meta_argtypes(move(agent)).

% event Run(agent)
 %  event(run(agent)).
==> mpred_prop(run(agent),event).
==> meta_argtypes(run(agent)).

% event Drive(agent)
 %  event(drive(agent)).
==> mpred_prop(drive(agent),event).
==> meta_argtypes(drive(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:33
% [agent,time]
% Happens(Move(agent),time) ->
% Happens(Run(agent),time) | Happens(Drive(agent),time).

 /*   if(happens(move(Agent), Time),
          (happens(run(Agent), Time);happens(drive(Agent), Time))).
 */

 /*  happens(run(Run_Ret), Maptime) :-
       not(happens(drive(Run_Ret), Maptime)),
       happens(move(Run_Ret), Maptime).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:35
axiom(happens(run(Run_Ret), Maptime),
   
    [ not(happens(drive(Run_Ret), Maptime)),
      happens(move(Run_Ret), Maptime)
    ]).

 /*  happens(drive(Drive_Ret), Maptime4) :-
       not(happens(run(Drive_Ret), Maptime4)),
       happens(move(Drive_Ret), Maptime4).
 */
axiom(happens(drive(Drive_Ret), Maptime4),
   
    [ not(happens(run(Drive_Ret), Maptime4)),
      happens(move(Drive_Ret), Maptime4)
    ]).

 /*  not(happens(move(Move_Ret), Maptime6)) :-
       not(happens(run(Move_Ret), Maptime6)),
       not(happens(drive(Move_Ret), Maptime6)).
 */
axiom(not(happens(move(Move_Ret), Maptime6)),
   
    [ not(happens(run(Move_Ret), Maptime6)),
      not(happens(drive(Move_Ret), Maptime6))
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:37
% xor Run, Drive
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:38
xor([run,drive]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:39
% [agent,time]
 % Initiates(Run(agent),Tired(agent),time).
axiom(initiates(run(Agent), tired(Agent), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:41
% agent James
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:42
==> t(agent,james).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:43
% !HoldsAt(Tired(James),0).
 %  not(initially(tired(james))).
axiom(not(initially(tired(james))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:44
% Happens(Move(James),0).
axiom(happens(move(james), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:45
% HoldsAt(Tired(James),1).
holds_at(tired(james),1).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:47
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:48
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2004b/RunningAndDriving1.e:49
==> range(offset,1,1).
%; End of file.
