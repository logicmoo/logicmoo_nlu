:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ectest/Example1a.e').
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
%; deduction

% option timediff off
:- set_ec_option(timediff, off).

% load foundations/Root.e

% load foundations/EC.e

% sort agent
==> sort(agent).

% fluent Awake(agent)
 %  fluent(awake(agent)).
==> mpred_prop(awake(agent),fluent).
==> meta_argtypes(awake(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:20
%;;   executable(wake_up(_X)).

% event WakeUp(agent)
 %  event(wakeUp(agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:22
==> mpred_prop(wakeUp(agent),event).
==> meta_argtypes(wakeUp(agent)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:23
%;;   axiom(initiates(wake_up(X),awake(X),T),[]).
% [agent,time]
 % Initiates(WakeUp(agent),Awake(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:24
axiom(initiates(wakeUp(Agent), awake(Agent), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:26
% agent James
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:27
==> t(agent,james).
%;; axiom(initially(neg(awake(nathan))),[]). 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:28
% !HoldsAt(Awake(James),0).
 %  not(initially(awake(james))).
axiom(not(initially(awake(james))),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:30
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:30
% Happens(WakeUp(James),0).
axiom(happens(wakeUp(james), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:32
% completion Delta Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:33
==> completion(delta).
==> completion(happens).

% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:35
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/Example1a.e:36
==> range(offset,1,1).
%;;   axiom(terminates(fall_asleep(X),awake(Y),T),[]). 
%;;  
%;;   abducible(dummy).
%;; executable(fall_asleep(_X)).
