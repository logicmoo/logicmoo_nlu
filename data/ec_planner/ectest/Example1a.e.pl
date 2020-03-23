:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
% Mon, 23 Mar 2020 02:29:12 GMT
% From ../ectest/Example1a.e.pl:4
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',257).

 /*  loading(load_e_pl,
   	'/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e').
 */
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

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:12
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',13).
% option timediff off
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',13).
:- set_ec_option(timediff, off).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',13).
:- if(false).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',13).
:- endif.

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:14
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',15).
% load foundations/Root.e
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',15).
:- load_e('foundations/Root.e', changed).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',15).
:- if(false).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',15).
:- endif.

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:15
% load foundations/EC.e
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',15).
:- load_e('foundations/EC.e', changed).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',15).
:- if(false).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',15).
:- endif.

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:17
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',18).
% sort agent
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',18).
==> sort(agent).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:19
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',20).
% fluent Awake(agent)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',20).
fluent(awake(agent)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',20).
==> mpred_prop(awake(agent),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',20).
==> meta_argtypes(awake(agent)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:20
%;;   executable(wake_up(_X)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:21
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',22).
% event WakeUp(agent)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',22).
event(wakeUp(agent)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',22).
==> mpred_prop(wakeUp(agent),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',22).
==> meta_argtypes(wakeUp(agent)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:23
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',24).
%;;   axiom(initiates(wake_up(X),awake(X),T),[]).
% [agent,time]
 % Initiates(WakeUp(agent),Awake(agent),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',24).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(wakeUp(Agent), awake(Agent), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',24).
axiom(initiates(wakeUp(Agent), awake(Agent), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:26
% agent James
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',26).
==> t(agent,james).
%;; axiom(initially(neg(awake(nathan))),[]). 


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:28
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',29).
% !HoldsAt(Awake(James),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',29).

 /*  [] ->
       ta(Ta_Param, tvs1=[], tvs2=[], initially(neg(awake(james)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',29).
axiom(initially(neg(awake(james))),
    []).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:30
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',31).
% Delta: 
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',31).
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:30
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',31).
% Happens(WakeUp(James),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',31).

 /*  [is_time(t)] ->
       ta(0, tvs1=[0], tvs2=[t], happens(wakeUp(james), t)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',31).
axiom(happens(wakeUp(james), t),
    [is_time(t)]).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:32
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',33).
% completion Delta Happens
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',33).
==> completion(delta).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',33).
==> completion(happens).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:34
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',35).
% range time 0 1
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',35).
==> range(time,0,1).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e:35
% range offset 1 1
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',35).
==> range(offset,1,1).
%;;   axiom(terminates(fall_asleep(X),awake(Y),T),[]). 
%;;  
%;;   abducible(dummy).
%;; executable(fall_asleep(_X)).
