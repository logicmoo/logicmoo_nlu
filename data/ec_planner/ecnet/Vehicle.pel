:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Vehicle.e').
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
%; Vehicle: transportation vehicles
%;

% sort vehicle: physobj
==> subsort(vehicle,physobj).

% sort vehiclein: vehicle
==> subsort(vehiclein,vehicle).

% sort vehicleon: vehicle
==> subsort(vehicleon,vehicle).

% sort train: vehicleon
==> subsort(train,vehicleon).

% sort carriage: vehiclein
==> subsort(carriage,vehiclein).

% sort vehicledoor
==> sort(vehicledoor).
%; RideTrack

% event RideTrack12(train,track)
 %  event(rideTrack12(train,track)).
==> mpred_prop(rideTrack12(train,track),event).
==> meta_argtypes(rideTrack12(train,track)).

% event RideTrack21(train,track)
 %  event(rideTrack21(train,track)).
==> mpred_prop(rideTrack21(train,track),event).
==> meta_argtypes(rideTrack21(train,track)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:27
% [train,track,time]
% Happens(RideTrack12(train,track),time) ->
% HoldsAt(At(train,Side1(track)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:29
axiom(requires(rideTrack12(Train, Track), Time),
    [holds_at(at(Train, side1(Track)), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:31
% [train,track,time]
% Happens(RideTrack21(train,track),time) ->
% HoldsAt(At(train,Side2(track)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:33
axiom(requires(rideTrack21(Train, Track), Time),
    [holds_at(at(Train, side2(Track)), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:35
% [train,track,location,time]
% Side2(track)=location ->
% Initiates(RideTrack12(train,track),At(train,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:37
axiom(initiates(rideTrack12(Train, Track), at(Train, Location), Time),
    [equals(side2(Track), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:39
% [train,track,location,time]
% Side1(track)=location ->
% Initiates(RideTrack21(train,track),At(train,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:41
axiom(initiates(rideTrack21(Train, Track), at(Train, Location), Time),
    [equals(side1(Track), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:43
% [train,track,location,time]
% Side1(track)=location ->
% Terminates(RideTrack12(train,track),At(train,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:45
axiom(terminates(rideTrack12(Train, Track), at(Train, Location), Time),
    [equals(side1(Track), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:47
% [train,track,location,time]
% Side2(track)=location ->
% Terminates(RideTrack21(train,track),At(train,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:49
axiom(terminates(rideTrack21(Train, Track), at(Train, Location), Time),
    [equals(side2(Track), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:51
%; DriveStreet

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:53
% event DriveStreet12(vehicle,street)
 %  event(driveStreet12(vehicle,street)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:54
==> mpred_prop(driveStreet12(vehicle,street),event).
==> meta_argtypes(driveStreet12(vehicle,street)).

% event DriveStreet21(vehicle,street)
 %  event(driveStreet21(vehicle,street)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:56
==> mpred_prop(driveStreet21(vehicle,street),event).
==> meta_argtypes(driveStreet21(vehicle,street)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:57
% [vehicle,street,time]
% Happens(DriveStreet12(vehicle,street),time) ->
% HoldsAt(At(vehicle,Side1(street)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:59
axiom(requires(driveStreet12(Vehicle, Street), Time),
    [holds_at(at(Vehicle, side1(Street)), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:61
% [vehicle,street,time]
% Happens(DriveStreet21(vehicle,street),time) ->
% HoldsAt(At(vehicle,Side2(street)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:63
axiom(requires(driveStreet21(Vehicle, Street), Time),
    [holds_at(at(Vehicle, side2(Street)), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:65
% [vehicle,street,location,time]
% Side2(street)=location ->
% Initiates(DriveStreet12(vehicle,street),At(vehicle,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:67
axiom(initiates(driveStreet12(Vehicle, Street), at(Vehicle, Location), Time),
    [equals(side2(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:69
% [vehicle,street,location,time]
% Side1(street)=location ->
% Initiates(DriveStreet21(vehicle,street),At(vehicle,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:71
axiom(initiates(driveStreet21(Vehicle, Street), at(Vehicle, Location), Time),
    [equals(side1(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:73
% [vehicle,street,location,time]
% Side1(street)=location ->
% Terminates(DriveStreet12(vehicle,street),At(vehicle,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:75
axiom(terminates(driveStreet12(Vehicle, Street), at(Vehicle, Location), Time),
    [equals(side1(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:77
% [vehicle,street,location,time]
% Side2(street)=location ->
% Terminates(DriveStreet21(vehicle,street),At(vehicle,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:79
axiom(terminates(driveStreet21(Vehicle, Street), at(Vehicle, Location), Time),
    [equals(side2(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:81
%; Pulling

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:83
% event PointToward(agent,horse,street)
 %  event(pointToward(agent,horse,street)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:84
==> mpred_prop(pointToward(agent,horse,street),event).
==> meta_argtypes(pointToward(agent,horse,street)).

% fluent PointedToward(horse,street)
 %  fluent(pointedToward(horse,street)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:86
==> mpred_prop(pointedToward(horse,street),fluent).
==> meta_argtypes(pointedToward(horse,street)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:87
% [horse,street1,street2,time]
% HoldsAt(PointedToward(horse,street1),time) &
% HoldsAt(PointedToward(horse,street2),time) ->
% street1=street2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:90
axiom(Street1=Street2,
   
    [ holds_at(pointedToward(Horse, Street1), Time),
      holds_at(pointedToward(Horse, Street2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:92
% [agent,horse,street,time]
% Initiates(PointToward(agent,horse,street),
%           PointedToward(horse,street),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:95
axiom(initiates(pointToward(Agent, Horse, Street), pointedToward(Horse, Street), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:97
% [agent,horse,street1,street2,time]
% HoldsAt(PointedToward(horse,street1),time) ->
% Terminates(PointToward(agent,horse,street2),
%            PointedToward(horse,street1),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:101
axiom(terminates(pointToward(Agent, Horse, Street2), pointedToward(Horse, Street1), Time),
    [holds_at(pointedToward(Horse, Street1), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:103
% [horse,vehicle,street,time]
% Terminates(PullStreet12(horse,vehicle,street),
%            PointedToward(horse,street),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:106
axiom(terminates(pullStreet12(Horse, Vehicle, Street), pointedToward(Horse, Street), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:108
% [horse,vehicle,street,time]
% Terminates(PullStreet21(horse,vehicle,street),
%            PointedToward(horse,street),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:111
axiom(terminates(pullStreet21(Horse, Vehicle, Street), pointedToward(Horse, Street), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:113
% [horse,street,time]
% HoldsAt(PointedToward(horse,street),time) ->
% HoldsAt(NearPortal(horse,street),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:115
axiom(holds_at(nearPortal(Horse, Street), Time),
    [holds_at(pointedToward(Horse, Street), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:117
% event Lash(agent,horse)
 %  event(lash(agent,horse)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:118
==> mpred_prop(lash(agent,horse),event).
==> meta_argtypes(lash(agent,horse)).

% fluent HitchedTo(horse,vehicle)
 %  fluent(hitchedTo(horse,vehicle)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:120
==> mpred_prop(hitchedTo(horse,vehicle),fluent).
==> meta_argtypes(hitchedTo(horse,vehicle)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:121
% [horse,vehicle,location,time]
% HoldsAt(HitchedTo(horse,vehicle),time) &
% HoldsAt(At(vehicle,location),time) ->
% HoldsAt(At(horse,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:124
axiom(holds_at(at(Horse, Location), Time),
   
    [ holds_at(hitchedTo(Horse, Vehicle), Time),
      holds_at(at(Vehicle, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:126
% [agent,horse,vehicle,street,time]
% Happens(Lash(agent,horse),time) &
% HoldsAt(PointedToward(horse,street),time) &
% HoldsAt(HitchedTo(horse,vehicle),time) &
% HoldsAt(At(horse,Side1(street)),time) ->
% Happens(PullStreet12(horse,vehicle,street),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:131
axiom(happens(pullStreet12(Horse, Vehicle, Street), Time),
   
    [ happens(lash(Agent, Horse), Time),
      holds_at(pointedToward(Horse, Street), Time),
      holds_at(hitchedTo(Horse, Vehicle), Time),
      holds_at(at(Horse, side1(Street)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:133
% [agent,horse,vehicle,street,time]
% Happens(Lash(agent,horse),time) &
% HoldsAt(PointedToward(horse,street),time) &
% HoldsAt(HitchedTo(horse,vehicle),time) &
% HoldsAt(At(horse,Side2(street)),time) ->
% Happens(PullStreet21(horse,vehicle,street),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:138
axiom(happens(pullStreet21(Horse, Vehicle, Street), Time),
   
    [ happens(lash(Agent, Horse), Time),
      holds_at(pointedToward(Horse, Street), Time),
      holds_at(hitchedTo(Horse, Vehicle), Time),
      holds_at(at(Horse, side2(Street)), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:140
% event PullStreet12(horse,vehicle,street)
 %  event(pullStreet12(horse,vehicle,street)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:141
==> mpred_prop(pullStreet12(horse,vehicle,street),event).
==> meta_argtypes(pullStreet12(horse,vehicle,street)).

% event PullStreet21(horse,vehicle,street)
 %  event(pullStreet21(horse,vehicle,street)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:143
==> mpred_prop(pullStreet21(horse,vehicle,street),event).
==> meta_argtypes(pullStreet21(horse,vehicle,street)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:144
% [horse,vehicle,street,time]
% Happens(PullStreet12(horse,vehicle,street),time) ->
% Happens(DriveStreet12(vehicle,street),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:146
axiom(happens(driveStreet12(Vehicle, Street), Time),
    [happens(pullStreet12(Horse, Vehicle, Street), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:148
% [horse,vehicle,street,time]
% Happens(PullStreet21(horse,vehicle,street),time) ->
% Happens(DriveStreet21(vehicle,street),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:150
axiom(happens(driveStreet21(Vehicle, Street), Time),
    [happens(pullStreet21(Horse, Vehicle, Street), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:152
% [horse,vehicle,street,time]
% Happens(PullStreet12(horse,vehicle,street),time) ->
% HoldsAt(At(horse,Side1(street)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:154
axiom(requires(pullStreet12(Horse, Vehicle, Street), Time),
    [holds_at(at(Horse, side1(Street)), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:156
% [horse,vehicle,street,time]
% Happens(PullStreet21(horse,vehicle,street),time) ->
% HoldsAt(At(horse,Side2(street)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:158
axiom(requires(pullStreet21(Horse, Vehicle, Street), Time),
    [holds_at(at(Horse, side2(Street)), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:160
% [horse,vehicle,street,location,time]
% Side2(street)=location ->
% Initiates(PullStreet12(horse,vehicle,street),At(horse,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:162
axiom(initiates(pullStreet12(Horse, Vehicle, Street), at(Horse, Location), Time),
    [equals(side2(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:164
% [horse,vehicle,street,location,time]
% Side1(street)=location ->
% Initiates(PullStreet21(horse,vehicle,street),At(horse,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:166
axiom(initiates(pullStreet21(Horse, Vehicle, Street), at(Horse, Location), Time),
    [equals(side1(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:168
% [horse,vehicle,street,location,time]
% Side1(street)=location ->
% Terminates(PullStreet12(horse,vehicle,street),At(horse,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:170
axiom(terminates(pullStreet12(Horse, Vehicle, Street), at(Horse, Location), Time),
    [equals(side1(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:172
% [horse,vehicle,street,location,time]
% Side2(street)=location ->
% Terminates(PullStreet21(horse,vehicle,street),At(horse,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:174
axiom(terminates(pullStreet21(Horse, Vehicle, Street), at(Horse, Location), Time),
    [equals(side2(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:176
%; OnVehicle

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:178
% fluent OnVehicle(object,vehicleon)
 %  fluent(onVehicle(object,vehicleon)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:179
==> mpred_prop(onVehicle(object,vehicleon),fluent).
==> meta_argtypes(onVehicle(object,vehicleon)).

% event GetOnVehicle(agent,vehicleon)
 %  event(getOnVehicle(agent,vehicleon)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:181
==> mpred_prop(getOnVehicle(agent,vehicleon),event).
==> meta_argtypes(getOnVehicle(agent,vehicleon)).

% event GetOffVehicle(agent,vehicleon)
 %  event(getOffVehicle(agent,vehicleon)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:183
==> mpred_prop(getOffVehicle(agent,vehicleon),event).
==> meta_argtypes(getOffVehicle(agent,vehicleon)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:184
% [vehicleon1,vehicleon2,time]
% HoldsAt(OnVehicle(vehicleon1,vehicleon2),time) ->
% vehicleon1!=vehicleon2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:186
axiom(Vehicleon1\=Vehicleon2,
    [holds_at(onVehicle(Vehicleon1, Vehicleon2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:188
% [vehicleon1,vehicleon2,time]
% HoldsAt(OnVehicle(vehicleon1,vehicleon2),time) ->
% !HoldsAt(OnVehicle(vehicleon2,vehicleon1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:190
axiom(not(holds_at(onVehicle(Vehicleon2, Vehicleon1), Time)),
    [holds_at(onVehicle(Vehicleon1, Vehicleon2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:192
% [agent,vehicleon,time]
% Initiates(GetOnVehicle(agent,vehicleon),OnVehicle(agent,vehicleon),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:193
axiom(initiates(getOnVehicle(Agent, Vehicleon), onVehicle(Agent, Vehicleon), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:195
% [agent,vehicleon,time]
% Happens(GetOnVehicle(agent,vehicleon),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:197
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(vehicleon,location),time).

 /*   exists([Location],
             if(happens(getOnVehicle(Agent, Vehicleon), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Vehicleon, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_195'(Fn_195_Param, At_Param, Maptime))) :-
       happens(getOnVehicle(Fn_195_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_195_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:199
axiom(not(some(Location6, '$kolem_Fn_195'(Fn_195_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_195_Param, Location6), Maptime)),
      happens(getOnVehicle(Fn_195_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_195'(Fn_195_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(getOnVehicle(Fn_195_Param, At_Param), Maptime)
    ]).

 /*  not(happens(getOnVehicle(GetOnVehicle_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(GetOnVehicle_Param, Location10),
                        Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_195'(GetOnVehicle_Param,
                            At_Param12,
                            Maptime9)).
 */
axiom(not(happens(getOnVehicle(GetOnVehicle_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(GetOnVehicle_Param, Location10),
                   Maptime9)),
      some(Location10,
           '$kolem_Fn_195'(GetOnVehicle_Param,
                           At_Param12,
                           Maptime9))
    ]).
axiom(not(happens(getOnVehicle(GetOnVehicle_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_195'(GetOnVehicle_Param,
                           At_Param12,
                           Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(getOnVehicle(At_Param15, GetOnVehicle_Ret),
               Time14),
       some(Location13,
            '$kolem_Fn_195'(At_Param15, GetOnVehicle_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(getOnVehicle(At_Param15, GetOnVehicle_Ret),
              Time14),
      some(Location13,
           '$kolem_Fn_195'(At_Param15, GetOnVehicle_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(getOnVehicle(GetOnVehicle_Param20, At_Param19),
               Time18),
       some(Location17,
            '$kolem_Fn_195'(GetOnVehicle_Param20,
                            At_Param19,
                            Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(getOnVehicle(GetOnVehicle_Param20, At_Param19),
              Time18),
      some(Location17,
           '$kolem_Fn_195'(GetOnVehicle_Param20,
                           At_Param19,
                           Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:201
% [agent,vehicleon,time]
% Terminates(GetOffVehicle(agent,vehicleon),OnVehicle(agent,vehicleon),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:202
axiom(terminates(getOffVehicle(Agent, Vehicleon), onVehicle(Agent, Vehicleon), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:204
% [agent,vehicleon,time]
% Happens(GetOffVehicle(agent,vehicleon),time) ->
% HoldsAt(OnVehicle(agent,vehicleon),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:206
axiom(requires(getOffVehicle(Agent, Vehicleon), Time),
    [holds_at(onVehicle(Agent, Vehicleon), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:208
% [agent,vehicleon,location,time]
% Releases(GetOnVehicle(agent,vehicleon),
%          At(agent,location),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:211
axiom(releases(getOnVehicle(Agent, Vehicleon), at(Agent, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:213
%;[agent,vehicleon,location1,location2,time]
%;HoldsAt(At(vehicleon,location1),time) &
%;location1 != location2 ->
%;Terminates(GetOffVehicle(agent,vehicleon),
%;           At(agent,location2),
%;           time).
% [agent,vehicleon,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:221
% HoldsAt(At(vehicleon,location),time) ->
% Initiates(GetOffVehicle(agent,vehicleon),
%           At(agent,location),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:224
axiom(initiates(getOffVehicle(Agent, Vehicleon), at(Agent, Location), Time),
    [holds_at(at(Vehicleon, Location), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:226
% [object,vehicleon,location,time]
% HoldsAt(OnVehicle(object,vehicleon),time) &
% HoldsAt(At(vehicleon,location),time) ->
% HoldsAt(At(object,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:229
axiom(holds_at(at(Object, Location), Time),
   
    [ holds_at(onVehicle(Object, Vehicleon), Time),
      holds_at(at(Vehicleon, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:231
%; InVehicle

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:233
% fluent InVehicle(object,vehiclein)
 %  fluent(inVehicle(object,vehiclein)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:234
==> mpred_prop(inVehicle(object,vehiclein),fluent).
==> meta_argtypes(inVehicle(object,vehiclein)).

% event GetInVehicle(agent,vehiclein)
 %  event(getInVehicle(agent,vehiclein)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:236
==> mpred_prop(getInVehicle(agent,vehiclein),event).
==> meta_argtypes(getInVehicle(agent,vehiclein)).

% event GetOutOfVehicle(agent,vehiclein)
 %  event(getOutOfVehicle(agent,vehiclein)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:238
==> mpred_prop(getOutOfVehicle(agent,vehiclein),event).
==> meta_argtypes(getOutOfVehicle(agent,vehiclein)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:239
% [vehiclein1,vehiclein2,time]
% HoldsAt(InVehicle(vehiclein1,vehiclein2),time) ->
% vehiclein1!=vehiclein2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:241
axiom(Vehiclein1\=Vehiclein2,
    [holds_at(inVehicle(Vehiclein1, Vehiclein2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:243
% [vehiclein1,vehiclein2,time]
% HoldsAt(InVehicle(vehiclein1,vehiclein2),time) ->
% !HoldsAt(InVehicle(vehiclein2,vehiclein1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:245
axiom(not(holds_at(inVehicle(Vehiclein2, Vehiclein1), Time)),
    [holds_at(inVehicle(Vehiclein1, Vehiclein2), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:247
% [agent,vehiclein,time]
% Initiates(GetInVehicle(agent,vehiclein),InVehicle(agent,vehiclein),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:248
axiom(initiates(getInVehicle(Agent, Vehiclein), inVehicle(Agent, Vehiclein), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:250
% [agent,vehiclein,time]
% Happens(GetInVehicle(agent,vehiclein),time) ->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:252
% {location}% 
%  HoldsAt(At(agent,location),time) &
%  HoldsAt(At(vehiclein,location),time).

 /*   exists([Location],
             if(happens(getInVehicle(Agent, Vehiclein), Time),
                 (holds_at(at(Agent, Location), Time), holds_at(at(Vehiclein, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_196'(Fn_196_Param, At_Param, Maptime))) :-
       happens(getInVehicle(Fn_196_Param, At_Param), Maptime),
       (   not(holds_at(at(Fn_196_Param, Location6), Maptime))
       ;   not(holds_at(at(At_Param, Location6), Maptime))
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:254
axiom(not(some(Location6, '$kolem_Fn_196'(Fn_196_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(Fn_196_Param, Location6), Maptime)),
      happens(getInVehicle(Fn_196_Param, At_Param), Maptime)
    ]).
axiom(not(some(Location6, '$kolem_Fn_196'(Fn_196_Param, At_Param, Maptime))),
   
    [ not(holds_at(at(At_Param, Location6), Maptime)),
      happens(getInVehicle(Fn_196_Param, At_Param), Maptime)
    ]).

 /*  not(happens(getInVehicle(GetInVehicle_Param, At_Param12), Maptime9)) :-
       (   not(holds_at(at(GetInVehicle_Param, Location10),
                        Maptime9))
       ;   not(holds_at(at(At_Param12, Location10), Maptime9))
       ),
       some(Location10,
            '$kolem_Fn_196'(GetInVehicle_Param,
                            At_Param12,
                            Maptime9)).
 */
axiom(not(happens(getInVehicle(GetInVehicle_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(GetInVehicle_Param, Location10),
                   Maptime9)),
      some(Location10,
           '$kolem_Fn_196'(GetInVehicle_Param,
                           At_Param12,
                           Maptime9))
    ]).
axiom(not(happens(getInVehicle(GetInVehicle_Param, At_Param12), Maptime9)),
   
    [ not(holds_at(at(At_Param12, Location10), Maptime9)),
      some(Location10,
           '$kolem_Fn_196'(GetInVehicle_Param,
                           At_Param12,
                           Maptime9))
    ]).

 /*  holds_at(at(At_Param15, Location13), Time14) :-
       happens(getInVehicle(At_Param15, GetInVehicle_Ret),
               Time14),
       some(Location13,
            '$kolem_Fn_196'(At_Param15, GetInVehicle_Ret, Time14)).
 */
axiom(holds_at(at(At_Param15, Location13), Time14),
   
    [ happens(getInVehicle(At_Param15, GetInVehicle_Ret),
              Time14),
      some(Location13,
           '$kolem_Fn_196'(At_Param15, GetInVehicle_Ret, Time14))
    ]).

 /*  holds_at(at(At_Param19, Location17), Time18) :-
       happens(getInVehicle(GetInVehicle_Param20, At_Param19),
               Time18),
       some(Location17,
            '$kolem_Fn_196'(GetInVehicle_Param20,
                            At_Param19,
                            Time18)).
 */
axiom(holds_at(at(At_Param19, Location17), Time18),
   
    [ happens(getInVehicle(GetInVehicle_Param20, At_Param19),
              Time18),
      some(Location17,
           '$kolem_Fn_196'(GetInVehicle_Param20,
                           At_Param19,
                           Time18))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:256
% [agent,vehiclein,time]
% Terminates(GetOutOfVehicle(agent,vehiclein),InVehicle(agent,vehiclein),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:257
axiom(terminates(getOutOfVehicle(Agent, Vehiclein), inVehicle(Agent, Vehiclein), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:259
% [agent,vehiclein,time]
% Happens(GetOutOfVehicle(agent,vehiclein),time) ->
% HoldsAt(InVehicle(agent,vehiclein),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:261
axiom(requires(getOutOfVehicle(Agent, Vehiclein), Time),
    [holds_at(inVehicle(Agent, Vehiclein), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:263
% [agent,vehiclein,location,time]
% Releases(GetInVehicle(agent,vehiclein),
%          At(agent,location),
%          time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:266
axiom(releases(getInVehicle(Agent, Vehiclein), at(Agent, Location), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:268
%;[agent,vehiclein,location1,location2,time]
%;HoldsAt(At(vehiclein,location1),time) &
%;location1 != location2 ->
%;Terminates(GetOutOfVehicle(agent,vehiclein),
%;           At(agent,location2),
%;           time).
% [agent,vehiclein,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:276
% HoldsAt(At(vehiclein,location),time) ->
% Initiates(GetOutOfVehicle(agent,vehiclein),
%           At(agent,location),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:279
axiom(initiates(getOutOfVehicle(Agent, Vehiclein), at(Agent, Location), Time),
    [holds_at(at(Vehiclein, Location), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:281
% [object,vehiclein,location,time]
% HoldsAt(InVehicle(object,vehiclein),time) &
% HoldsAt(At(vehiclein,location),time) ->
% HoldsAt(At(object,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:284
axiom(holds_at(at(Object, Location), Time),
   
    [ holds_at(inVehicle(Object, Vehiclein), Time),
      holds_at(at(Vehiclein, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:286
%; vehicle door
%; door does not have to be open for entry; passenger can jump in

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:289
% event VehicleDoorOpen(agent,vehicledoor)
 %  event(vehicleDoorOpen(agent,vehicledoor)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:290
==> mpred_prop(vehicleDoorOpen(agent,vehicledoor),event).
==> meta_argtypes(vehicleDoorOpen(agent,vehicledoor)).

% event VehicleDoorClose(agent,vehicledoor)
 %  event(vehicleDoorClose(agent,vehicledoor)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:292
==> mpred_prop(vehicleDoorClose(agent,vehicledoor),event).
==> meta_argtypes(vehicleDoorClose(agent,vehicledoor)).

% fluent VehicleDoorIsOpen(vehicledoor)
 %  fluent(vehicleDoorIsOpen(vehicledoor)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:294
==> mpred_prop(vehicleDoorIsOpen(vehicledoor),fluent).
==> meta_argtypes(vehicleDoorIsOpen(vehicledoor)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:295
% [agent,vehicledoor,time]
% Happens(VehicleDoorOpen(agent,vehicledoor),time) ->
% HoldsAt(Awake(agent),time) &
% !HoldsAt(VehicleDoorIsOpen(vehicledoor),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:298
axiom(requires(vehicleDoorOpen(Agent, Vehicledoor), Time),
   
    [ holds_at(awake(Agent), Time),
      not(holds_at(vehicleDoorIsOpen(Vehicledoor), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:300
% [agent,vehicledoor,time]
% Initiates(VehicleDoorOpen(agent,vehicledoor),
%           VehicleDoorIsOpen(vehicledoor),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:303
axiom(initiates(vehicleDoorOpen(Agent, Vehicledoor), vehicleDoorIsOpen(Vehicledoor), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:305
% [agent,vehicledoor,time]
% Happens(VehicleDoorClose(agent,vehicledoor),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(VehicleDoorIsOpen(vehicledoor),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:308
axiom(requires(vehicleDoorClose(Agent, Vehicledoor), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(vehicleDoorIsOpen(Vehicledoor), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:310
% [agent,vehicledoor,time]
% Terminates(VehicleDoorClose(agent,vehicledoor),
%            VehicleDoorIsOpen(vehicledoor),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:313
axiom(terminates(vehicleDoorClose(Agent, Vehicledoor), vehicleDoorIsOpen(Vehicledoor), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:315
%; ticketagent

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:317
% sort ticketagent: agent
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:318
==> subsort(ticketagent,agent).

% fluent BeTicketAgent0(ticketagent)
 %  fluent(beTicketAgent0(ticketagent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:320
==> mpred_prop(beTicketAgent0(ticketagent),fluent).
==> meta_argtypes(beTicketAgent0(ticketagent)).

% fluent BeTicketAgent1(ticketagent)
 %  fluent(beTicketAgent1(ticketagent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:321
==> mpred_prop(beTicketAgent1(ticketagent),fluent).
==> meta_argtypes(beTicketAgent1(ticketagent)).

% fluent BeTicketAgent2(ticketagent)
 %  fluent(beTicketAgent2(ticketagent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:322
==> mpred_prop(beTicketAgent2(ticketagent),fluent).
==> meta_argtypes(beTicketAgent2(ticketagent)).

% xor BeTicketAgent0, BeTicketAgent1, BeTicketAgent2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:324
xor([beTicketAgent0,beTicketAgent1,beTicketAgent2]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:325
% [ticketagent,agent,ticket,time]
% HoldsAt(BeTicketAgent0(ticketagent),time) ->
% Terminates(Request(agent,ticketagent,ticket),
%            BeTicketAgent0(ticketagent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:329
axiom(terminates(request(Agent, Ticketagent, Ticket), beTicketAgent0(Ticketagent), Time),
    [holds_at(beTicketAgent0(Ticketagent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:331
% [ticketagent,agent,ticket,time]
% HoldsAt(BeTicketAgent0(ticketagent),time) ->
% Initiates(Request(agent,ticketagent,ticket),
%           BeTicketAgent1(ticketagent),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:335
axiom(initiates(request(Agent, Ticketagent, Ticket), beTicketAgent1(Ticketagent), Time),
    [holds_at(beTicketAgent0(Ticketagent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:337
% [ticketagent,agent,ticket,time]
% HoldsAt(BeTicketAgent1(ticketagent),time) &
% HoldsAt(KnowRequest(ticketagent,agent,ticket),time) ->
% Happens(PickUp(ticketagent,ticket),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:340
axiom(happens(pickUp(Ticketagent, Ticket), Time),
   
    [ holds_at(beTicketAgent1(Ticketagent), Time),
      holds_at(knowRequest(Ticketagent, Agent, Ticket),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:342
% [ticketagent,ticket,time]
% HoldsAt(BeTicketAgent1(ticketagent),time) ->
% Terminates(PickUp(ticketagent,ticket),
%            BeTicketAgent1(ticketagent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:346
axiom(terminates(pickUp(Ticketagent, Ticket), beTicketAgent1(Ticketagent), Time),
    [holds_at(beTicketAgent1(Ticketagent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:348
% [ticketagent,ticket,time]
% HoldsAt(BeTicketAgent1(ticketagent),time) ->
% Initiates(PickUp(ticketagent,ticket),
%           BeTicketAgent2(ticketagent),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:352
axiom(initiates(pickUp(Ticketagent, Ticket), beTicketAgent2(Ticketagent), Time),
    [holds_at(beTicketAgent1(Ticketagent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:354
% [ticketagent,agent,ticket,time]
% HoldsAt(BeTicketAgent2(ticketagent),time) &
% HoldsAt(KnowRequest(ticketagent,agent,ticket),time) ->
% Happens(HandTo(ticketagent,agent,ticket),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:357
axiom(happens(handTo(Ticketagent, Agent, Ticket), Time),
   
    [ holds_at(beTicketAgent2(Ticketagent), Time),
      holds_at(knowRequest(Ticketagent, Agent, Ticket),
               Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:359
% [ticketagent,ticket,agent,time]
% HoldsAt(BeTicketAgent2(ticketagent),time) ->
% Terminates(HandTo(ticketagent,agent,ticket),
%            BeTicketAgent2(ticketagent),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:363
axiom(terminates(handTo(Ticketagent, Agent, Ticket), beTicketAgent2(Ticketagent), Time),
    [holds_at(beTicketAgent2(Ticketagent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:365
% [ticketagent,ticket,agent,time]
% HoldsAt(BeTicketAgent2(ticketagent),time) ->
% Initiates(HandTo(ticketagent,agent,ticket),
%           BeTicketAgent0(ticketagent),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:369
axiom(initiates(handTo(Ticketagent, Agent, Ticket), beTicketAgent0(Ticketagent), Time),
    [holds_at(beTicketAgent2(Ticketagent), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Vehicle.e:371
%; End of file.
