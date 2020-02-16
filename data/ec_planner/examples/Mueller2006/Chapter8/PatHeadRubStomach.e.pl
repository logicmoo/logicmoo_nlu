:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter8/PatHeadRubStomach.e').
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

% event PatHead(agent)
 %  event(patHead(agent)).
==> mpred_prop(patHead(agent),event).
==> meta_argtypes(patHead(agent)).

% event RubStomach(agent)
 %  event(rubStomach(agent)).
==> mpred_prop(rubStomach(agent),event).
==> meta_argtypes(rubStomach(agent)).

% agent Nathan
==> t(agent,nathan).
%; Delta
% [agent,time]
% Happens(PatHead(agent),time) ->
% !Happens(RubStomach(agent),time).
axiom(not(happens(rubStomach(Agent), Time)),
    [happens(patHead(Agent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/PatHeadRubStomach.e:35
% Happens(PatHead(Nathan),0) & Happens(RubStomach(Nathan),0).

 /*   happens(patHead(nathan), 0),
      happens(rubStomach(nathan), 0).
 */
axiom(happens(patHead(nathan), t),
    [is_time(0)]).
axiom(happens(rubStomach(nathan), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/PatHeadRubStomach.e:37
% range time 0 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/PatHeadRubStomach.e:38
==> range(time,0,1).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/PatHeadRubStomach.e:39
==> range(offset,1,1).
%; End of file.
