:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter8/CameraWithFlash.e').
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

% sort camera
==> sort(camera).

% camera Camera1
==> t(camera,camera1).

% fluent ProperlyExposedPicture(camera)
 %  fluent(properlyExposedPicture(camera)).
==> mpred_prop(properlyExposedPicture(camera),fluent).
==> meta_argtypes(properlyExposedPicture(camera)).

% fluent ImproperlyExposedPicture(camera)
 %  fluent(improperlyExposedPicture(camera)).
==> mpred_prop(improperlyExposedPicture(camera),fluent).
==> meta_argtypes(improperlyExposedPicture(camera)).

% event ReleaseShutter(camera)
 %  event(releaseShutter(camera)).
==> mpred_prop(releaseShutter(camera),event).
==> meta_argtypes(releaseShutter(camera)).

% event TriggerFlash(camera)
 %  event(triggerFlash(camera)).
==> mpred_prop(triggerFlash(camera),event).
==> meta_argtypes(triggerFlash(camera)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:32
%; Sigma
% [camera,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:35
% Happens(TriggerFlash(camera),time) ->
% Initiates(ReleaseShutter(camera),ProperlyExposedPicture(camera),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:36
axiom(requires(triggerFlash(Camera), Time),
   
    [ initiates(releaseShutter(Camera),
                properlyExposedPicture(Camera),
                Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:38
% [camera,time]
% !Happens(TriggerFlash(camera),time) ->
% Initiates(ReleaseShutter(camera),ImproperlyExposedPicture(camera),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:40
axiom(initiates(releaseShutter(Camera), improperlyExposedPicture(Camera), Time),
    [not(happens(triggerFlash(Camera), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:42
%; Delta

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:44
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:44
% Happens(ReleaseShutter(Camera1),0).
axiom(happens(releaseShutter(camera1), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:45
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:45
% Happens(TriggerFlash(Camera1),1).
axiom(happens(triggerFlash(camera1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:46
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:46
% Happens(ReleaseShutter(Camera1),1).
axiom(happens(releaseShutter(camera1), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:48
%; added:
% [camera]
 % !HoldsAt(ImproperlyExposedPicture(camera),0).
 %  not(initially(improperlyExposedPicture(Camera))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:49
axiom(not(initially(improperlyExposedPicture(ImproperlyExposedPicture_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:50
% [camera]
 % !HoldsAt(ProperlyExposedPicture(camera),0).
 %  not(initially(properlyExposedPicture(Camera))).
axiom(not(initially(properlyExposedPicture(ProperlyExposedPicture_Ret))),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:52
% completion Delta Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:53
==> completion(delta).
==> completion(happens).

% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:55
==> range(time,0,2).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter8/CameraWithFlash.e:56
==> range(offset,1,1).
%; End of file.
