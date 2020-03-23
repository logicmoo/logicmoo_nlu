:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
% Mon, 23 Mar 2020 02:29:12 GMT
% From ../ectest/Example1.e.pl:4
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1a.e',43).

 /*  loading(load_e_pl,
   	'/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e').
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

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:13
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',14).
% load foundations/Root.e
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',14).
:- load_e('foundations/Root.e', changed).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',14).
:- if(false).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',14).
:- endif.

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:14
% load foundations/EC.e
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',14).
:- load_e('foundations/EC.e', changed).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',14).
:- if(false).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',14).
:- endif.

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:16
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',17).
% sort agent
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',17).
==> sort(agent).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:18
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',19).
% fluent Awake(agent)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',19).
fluent(awake(agent)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',19).
==> mpred_prop(awake(agent),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',19).
==> meta_argtypes(awake(agent)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:19
% event WakeUp(agent)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',19).
event(wakeUp(agent)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',19).
==> mpred_prop(wakeUp(agent),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',19).
==> meta_argtypes(wakeUp(agent)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:21
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',22).
% [agent,time]
 % Initiates(WakeUp(agent),Awake(agent),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',22).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(wakeUp(Agent), awake(Agent), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',22).
axiom(initiates(wakeUp(Agent), awake(Agent), Time),
    []).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:23
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',24).
% agent James
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',24).
==> t(agent,james).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:24
% !HoldsAt(Awake(James),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',24).

 /*  [] ->
       ta(Ta_Param, tvs1=[], tvs2=[], initially(neg(awake(james)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',24).
axiom(initially(neg(awake(james))),
    []).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:25
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',26).
% Delta: 
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',26).
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:25
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',26).
% Happens(WakeUp(James),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',26).

 /*  [is_time(t)] ->
       ta(0, tvs1=[0], tvs2=[t], happens(wakeUp(james), t)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',26).
axiom(happens(wakeUp(james), t),
    [is_time(t)]).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:27
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',28).
% completion Delta Happens
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',28).
==> completion(delta).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',28).
==> completion(happens).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:29
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',30).
% range time 0 1
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',30).
==> range(time,0,1).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e:30
% range offset 1 1
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/Example1.e',30).
==> range(offset,1,1).
