:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/RTSpace.e').
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
%; RTSpace: room-scale topological space
%;
%; We use topological and metric representations of space,
%; at two levels of granularity---room-scale and object-scale.
%; The RTSpace representation deals with topological space at
%; the scale of rooms and outdoor locations.
%; This representation of space consists of locations, which
%; are connected by portals. There are two types of locations:
%; rooms and outside areas (outsides).
%;
%; object is at location.

% fluent At(object,location)
 %  fluent(at(object,location)).
==> mpred_prop(at(object,location),fluent).
==> meta_argtypes(at(object,location)).

% manualrelease At
manualrelease(at).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:25
% [object1,location,time]
% (
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:26
% {object2} PartOf(object1,object2)) ->
% ReleasedAt(At(object1,location),time).

 /*  exists([Object2],
          if(partOf(Object1,Object2),
   	  releasedAt(at(Object1,Location),Time))).
 */

 /*  releasedAt(at(At_Param, Location5), Time6) :-
       partOf(At_Param, Some_Param),
       some(Some_Param,
            '$kolem_Fn_183'(At_Param, Location5, Time6)).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:27
axiom(releasedAt(at(At_Param, Location5), Time6),
   
    [ partOf(At_Param, Some_Param),
      some(Some_Param,
           '$kolem_Fn_183'(At_Param, Location5, Time6))
    ]).

 /*  not(partOf(PartOf_Param, Some_Param12)) :-
       not(releasedAt(at(PartOf_Param, Location9), Time10)),
       some(Some_Param12,
            '$kolem_Fn_183'(PartOf_Param, Location9, Time10)).
 */
axiom(not(partOf(PartOf_Param, Some_Param12)),
   
    [ not(releasedAt(at(PartOf_Param, Location9), Time10)),
      some(Some_Param12,
           '$kolem_Fn_183'(PartOf_Param, Location9, Time10))
    ]).

 /*  not(some(Some_Param15, '$kolem_Fn_183'(Fn_183_Param, Location13, Time14))) :-
       not(releasedAt(at(Fn_183_Param, Location13), Time14)),
       partOf(Fn_183_Param, Some_Param15).
 */
axiom(not(some(Some_Param15, '$kolem_Fn_183'(Fn_183_Param, Location13, Time14))),
   
    [ not(releasedAt(at(Fn_183_Param, Location13), Time14)),
      partOf(Fn_183_Param, Some_Param15)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:29
%; A state constraint says that an object
%; is at one location at a time:
% [object,location1,location2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:32
% HoldsAt(At(object,location1),time) &
% HoldsAt(At(object,location2),time) ->
% location1=location2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:34
axiom(Location1=Location2,
   
    [ holds_at(at(Object, Location1), Time),
      holds_at(at(Object, Location2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:36
%; connectivity
%; Side one of portal is location.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:39
% function Side1(portal): location
 %  functional_predicate(side1(portal,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:40
==> mpred_prop(side1(portal,location),functional_predicate).
==> meta_argtypes(side1(portal,location)).
resultIsa(side1,location).
%; Side two of portal is location.

% function Side2(portal): location
 %  functional_predicate(side2(portal,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:42
==> mpred_prop(side2(portal,location),functional_predicate).
==> meta_argtypes(side2(portal,location)).
resultIsa(side2,location).
%; The building of room is building.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:44
% function BuildingOf(room): building
 %  functional_predicate(buildingOf(room,building)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:45
==> mpred_prop(buildingOf(room,building),functional_predicate).
==> meta_argtypes(buildingOf(room,building)).
resultIsa(buildingOf,building).
%; object is at a location that has portal.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:47
% fluent NearPortal(object,portal)
 %  fluent(nearPortal(object,portal)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:48
==> mpred_prop(nearPortal(object,portal),fluent).
==> meta_argtypes(nearPortal(object,portal)).

% noninertial NearPortal
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:49
==> noninertial(nearPortal).
%; A state constraint says that an object is near
%; a portal if and only if there is a location such that
%; the object is at the location and one of the sides
%; of the portal is the location:
% [object,portal,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:55
% HoldsAt(NearPortal(object,portal),time) <->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:56
% {location}% 
%  (Side1(portal)=location|
%   Side2(portal)=location) &
%  HoldsAt(At(object,location),time).

 /*   exists([Location],
             equiv(holds_at(nearPortal(Object, Portal), Time),
                    ((side1(Portal)=Location;side2(Portal)=Location), holds_at(at(Object, Location), Time)))).
 */

 /*  not(some(Location6, '$kolem_Fn_184'(Fn_184_Param, NearPortal_Ret, Time5))) :-
       (   holds_at(nearPortal(Fn_184_Param, NearPortal_Ret),
                    Time5),
           (   not(equals(side1(NearPortal_Ret), Location6)),
               not(equals(side2(NearPortal_Ret), Location6))
           ;   not(holds_at(at(Fn_184_Param, Location6), Time5))
           )
       ;   not(holds_at(nearPortal(Fn_184_Param, NearPortal_Ret),
                        Time5)),
           holds_at(at(Fn_184_Param, Location6), Time5),
           (   equals(side1(NearPortal_Ret), Location6)
           ;   equals(side2(NearPortal_Ret), Location6)
           )
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:59
axiom(not(some(Location6, '$kolem_Fn_184'(Fn_184_Param, NearPortal_Ret, Time5))),
   
    [ not(equals(side1(NearPortal_Ret), Location6)),
      not(equals(side2(NearPortal_Ret), Location6)),
      holds_at(nearPortal(Fn_184_Param, NearPortal_Ret),
               Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_184'(Fn_184_Param, NearPortal_Ret, Time5))),
   
    [ not(holds_at(at(Fn_184_Param, Location6), Time5)),
      holds_at(nearPortal(Fn_184_Param, NearPortal_Ret),
               Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_184'(Fn_184_Param, NearPortal_Ret, Time5))),
   
    [ equals(side1(NearPortal_Ret), Location6),
      not(holds_at(nearPortal(Fn_184_Param, NearPortal_Ret),
                   Time5)),
      holds_at(at(Fn_184_Param, Location6), Time5)
    ]).
axiom(not(some(Location6, '$kolem_Fn_184'(Fn_184_Param, NearPortal_Ret, Time5))),
   
    [ equals(side2(NearPortal_Ret), Location6),
      not(holds_at(nearPortal(Fn_184_Param, NearPortal_Ret),
                   Time5)),
      holds_at(at(Fn_184_Param, Location6), Time5)
    ]).

 /*  not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)) :-
       (   not(equals(side1(NearPortal_Ret12), Location10)),
           not(equals(side2(NearPortal_Ret12), Location10))
       ;   not(holds_at(at(NearPortal_Param, Location10), Time9))
       ),
       some(Location10,
            '$kolem_Fn_184'(NearPortal_Param,
                            NearPortal_Ret12,
                            Time9)).
 */
axiom(not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)),
   
    [ not(equals(side1(NearPortal_Ret12), Location10)),
      not(equals(side2(NearPortal_Ret12), Location10)),
      some(Location10,
           '$kolem_Fn_184'(NearPortal_Param,
                           NearPortal_Ret12,
                           Time9))
    ]).
axiom(not(holds_at(nearPortal(NearPortal_Param, NearPortal_Ret12), Time9)),
   
    [ not(holds_at(at(NearPortal_Param, Location10), Time9)),
      some(Location10,
           '$kolem_Fn_184'(NearPortal_Param,
                           NearPortal_Ret12,
                           Time9))
    ]).

 /*  equals(side1(Side1_Ret), Some_Param) :-
       not(equals(side2(Side1_Ret), Some_Param)),
       holds_at(nearPortal(NearPortal_Param14, Side1_Ret),
                Time13),
       some(Some_Param,
            '$kolem_Fn_184'(NearPortal_Param14, Side1_Ret, Time13)).
 */
axiom(equals(side1(Side1_Ret), Some_Param),
   
    [ not(equals(side2(Side1_Ret), Some_Param)),
      holds_at(nearPortal(NearPortal_Param14, Side1_Ret),
               Time13),
      some(Some_Param,
           '$kolem_Fn_184'(NearPortal_Param14,
                           Side1_Ret,
                           Time13))
    ]).

 /*  equals(side2(Side2_Ret), Some_Param19) :-
       not(equals(side1(Side2_Ret), Some_Param19)),
       holds_at(nearPortal(NearPortal_Param18, Side2_Ret),
                Time17),
       some(Some_Param19,
            '$kolem_Fn_184'(NearPortal_Param18, Side2_Ret, Time17)).
 */
axiom(equals(side2(Side2_Ret), Some_Param19),
   
    [ not(equals(side1(Side2_Ret), Some_Param19)),
      holds_at(nearPortal(NearPortal_Param18, Side2_Ret),
               Time17),
      some(Some_Param19,
           '$kolem_Fn_184'(NearPortal_Param18,
                           Side2_Ret,
                           Time17))
    ]).

 /*  holds_at(at(At_Param, Location21), Time22) :-
       holds_at(nearPortal(At_Param, NearPortal_Ret24), Time22),
       some(Location21,
            '$kolem_Fn_184'(At_Param, NearPortal_Ret24, Time22)).
 */
axiom(holds_at(at(At_Param, Location21), Time22),
   
    [ holds_at(nearPortal(At_Param, NearPortal_Ret24), Time22),
      some(Location21,
           '$kolem_Fn_184'(At_Param, NearPortal_Ret24, Time22))
    ]).

 /*  holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25) :-
       ( holds_at(at(NearPortal_Param27, Location26), Time25),
         (   equals(side1(NearPortal_Ret28), Location26)
         ;   equals(side2(NearPortal_Ret28), Location26)
         )
       ),
       some(Location26,
            '$kolem_Fn_184'(NearPortal_Param27,
                            NearPortal_Ret28,
                            Time25)).
 */
axiom(holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25),
   
    [ equals(side1(NearPortal_Ret28), Location26),
      holds_at(at(NearPortal_Param27, Location26), Time25),
      some(Location26,
           '$kolem_Fn_184'(NearPortal_Param27,
                           NearPortal_Ret28,
                           Time25))
    ]).
axiom(holds_at(nearPortal(NearPortal_Param27, NearPortal_Ret28), Time25),
   
    [ equals(side2(NearPortal_Ret28), Location26),
      holds_at(at(NearPortal_Param27, Location26), Time25),
      some(Location26,
           '$kolem_Fn_184'(NearPortal_Param27,
                           NearPortal_Ret28,
                           Time25))
    ]).

 /*  not(holds_at(at(At_Param31, Location29), Time30)) :-
       (   equals(side1(Side1_Ret32), Location29)
       ;   equals(side2(Side1_Ret32), Location29)
       ),
       not(holds_at(nearPortal(At_Param31, Side1_Ret32), Time30)),
       some(Location29,
            '$kolem_Fn_184'(At_Param31, Side1_Ret32, Time30)).
 */
axiom(not(holds_at(at(At_Param31, Location29), Time30)),
   
    [ equals(side1(Side1_Ret32), Location29),
      not(holds_at(nearPortal(At_Param31, Side1_Ret32),
                   Time30)),
      some(Location29,
           '$kolem_Fn_184'(At_Param31, Side1_Ret32, Time30))
    ]).
axiom(not(holds_at(at(At_Param31, Location29), Time30)),
   
    [ equals(side2(Side1_Ret32), Location29),
      not(holds_at(nearPortal(At_Param31, Side1_Ret32),
                   Time30)),
      some(Location29,
           '$kolem_Fn_184'(At_Param31, Side1_Ret32, Time30))
    ]).

 /*  not(equals(side1(Side1_Ret36), Location33)) :-
       holds_at(at(At_Param35, Location33), Time34),
       not(holds_at(nearPortal(At_Param35, Side1_Ret36), Time34)),
       some(Location33,
            '$kolem_Fn_184'(At_Param35, Side1_Ret36, Time34)).
 */
axiom(not(equals(side1(Side1_Ret36), Location33)),
   
    [ holds_at(at(At_Param35, Location33), Time34),
      not(holds_at(nearPortal(At_Param35, Side1_Ret36),
                   Time34)),
      some(Location33,
           '$kolem_Fn_184'(At_Param35, Side1_Ret36, Time34))
    ]).

 /*  not(equals(side2(Side2_Ret40), Location37)) :-
       holds_at(at(At_Param39, Location37), Time38),
       not(holds_at(nearPortal(At_Param39, Side2_Ret40), Time38)),
       some(Location37,
            '$kolem_Fn_184'(At_Param39, Side2_Ret40, Time38)).
 */
axiom(not(equals(side2(Side2_Ret40), Location37)),
   
    [ holds_at(at(At_Param39, Location37), Time38),
      not(holds_at(nearPortal(At_Param39, Side2_Ret40),
                   Time38)),
      some(Location37,
           '$kolem_Fn_184'(At_Param39, Side2_Ret40, Time38))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:61
%; locking and unlocking doors
%; agent unlocks door.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:64
% event DoorUnlock(agent,door)
 %  event(doorUnlock(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:65
==> mpred_prop(doorUnlock(agent,door),event).
==> meta_argtypes(doorUnlock(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:65
%; agent locks door.

% event DoorLock(agent,door)
 %  event(doorLock(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:67
==> mpred_prop(doorLock(agent,door),event).
==> meta_argtypes(doorLock(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:67
%; door is unlocked.

% fluent DoorUnlocked(door)
 %  fluent(doorUnlocked(door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:69
==> mpred_prop(doorUnlocked(door),fluent).
==> meta_argtypes(doorUnlocked(door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:70
%; A precondition axiom states that
%; for an agent to unlock a door,
%; the agent must be awake,
%; the door must not already be unlocked, and
%; the agent must be near the door:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:76
% Happens(DoorUnlock(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% !HoldsAt(DoorUnlocked(door),time) &
% HoldsAt(NearPortal(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:79
axiom(requires(doorUnlock(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      not(holds_at(doorUnlocked(Door), Time)),
      holds_at(nearPortal(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:81
%; An effect axiom states that
%; if an agent unlocks a door,
%; the door will be unlocked:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:85
% Initiates(DoorUnlock(agent,door),DoorUnlocked(door),time).
axiom(initiates(doorUnlock(Agent, Door), doorUnlocked(Door), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:87
%; A precondition axiom states that
%; for an agent to lock a door,
%; the agent must be awake,
%; the door must be unlocked, and
%; the agent must be near the door:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:93
% Happens(DoorLock(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(DoorUnlocked(door),time) &
% HoldsAt(NearPortal(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:96
axiom(requires(doorLock(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(doorUnlocked(Door), Time),
      holds_at(nearPortal(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:98
%; An effect axiom states that
%; if an agent locks a door,
%; the door will no longer be unlocked.
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:102
% Terminates(DoorLock(agent,door),DoorUnlocked(door),time).
axiom(terminates(doorLock(Agent, Door), doorUnlocked(Door), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:104
%; A state constraint says that if a door is open,
%; it is unlocked:
% [door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:107
% HoldsAt(DoorIsOpen(door),time) -> HoldsAt(DoorUnlocked(door),time).
axiom(holds_at(doorUnlocked(Door), Time),
    [holds_at(doorIsOpen(Door), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:109
%; opening and closing doors
%; agent opens door.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:112
% event DoorOpen(agent,door)
 %  event(doorOpen(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:113
==> mpred_prop(doorOpen(agent,door),event).
==> meta_argtypes(doorOpen(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:113
%; agent closes door.

% event DoorClose(agent,door)
 %  event(doorClose(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:115
==> mpred_prop(doorClose(agent,door),event).
==> meta_argtypes(doorClose(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:115
%; door is open.

% fluent DoorIsOpen(door)
 %  fluent(doorIsOpen(door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:117
==> mpred_prop(doorIsOpen(door),fluent).
==> meta_argtypes(doorIsOpen(door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:118
%; A precondition axiom states that
%; for an agent to open a door,
%; the agent must be awake,
%; the door must not already be open,
%; the door must be unlocked, and
%; the agent must be near the door:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:125
% Happens(DoorOpen(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% !HoldsAt(DoorIsOpen(door),time) &
% HoldsAt(DoorUnlocked(door),time) &
% HoldsAt(NearPortal(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:129
axiom(requires(doorOpen(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      not(holds_at(doorIsOpen(Door), Time)),
      holds_at(doorUnlocked(Door), Time),
      holds_at(nearPortal(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:131
%; An effect axiom states that
%; if an agent opens a door,
%; the door will be open:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:135
% Initiates(DoorOpen(agent,door),DoorIsOpen(door),time).
axiom(initiates(doorOpen(Agent, Door), doorIsOpen(Door), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:137
%; A precondition axiom states that
%; for an agent to close a door,
%; the agent must be awake,
%; the door must be open,
%; the door must be unlocked, and
%; the agent must be near the door:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:144
% Happens(DoorClose(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(DoorIsOpen(door),time) &
% HoldsAt(DoorUnlocked(door),time) &
% HoldsAt(NearPortal(agent,door),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:148
axiom(requires(doorClose(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(doorIsOpen(Door), Time),
      holds_at(doorUnlocked(Door), Time),
      holds_at(nearPortal(Agent, Door), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:150
%; An effect axiom states that
%; if an agent closes a door,
%; the door will no longer be open:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:154
% Terminates(DoorClose(agent,door),DoorIsOpen(door),time).
axiom(terminates(doorClose(Agent, Door), doorIsOpen(Door), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:156
%; passing through doors
%; agent walks through side one of door.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:159
% event WalkThroughDoor12(agent,door)
 %  event(walkThroughDoor12(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:160
==> mpred_prop(walkThroughDoor12(agent,door),event).
==> meta_argtypes(walkThroughDoor12(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:160
%; agent walks through side two of door.

% event WalkThroughDoor21(agent,door)
 %  event(walkThroughDoor21(agent,door)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:162
==> mpred_prop(walkThroughDoor21(agent,door),event).
==> meta_argtypes(walkThroughDoor21(agent,door)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:163
%; Precondition axioms state that
%; for an agent to walk through a side of a door,
%; the agent must be awake and standing,
%; the door must be open, and
%; the agent must be at the side of the door that
%; the agent walks through:
% [agent,door,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:170
% Happens(WalkThroughDoor12(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(DoorIsOpen(door),time) &
% HoldsAt(At(agent,Side1(door)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:174
axiom(requires(walkThroughDoor12(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(doorIsOpen(Door), Time),
      holds_at(at(Agent, side1(Door)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:176
% [agent,door,time]
% Happens(WalkThroughDoor21(agent,door),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(DoorIsOpen(door),time) &
% HoldsAt(At(agent,Side2(door)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:181
axiom(requires(walkThroughDoor21(Agent, Door), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(doorIsOpen(Door), Time),
      holds_at(at(Agent, side2(Door)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:183
%; Effect axioms state that
%; if an agent walks through one side of a door,
%; the agent will be at the other side of the door:
% [agent,door,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:187
% Side2(door)=location ->
% Initiates(WalkThroughDoor12(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:188
axiom(initiates(walkThroughDoor12(Agent, Door), at(Agent, Location), Time),
    [equals(side2(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:190
% [agent,door,location,time]
% Side1(door)=location ->
% Initiates(WalkThroughDoor21(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:192
axiom(initiates(walkThroughDoor21(Agent, Door), at(Agent, Location), Time),
    [equals(side1(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:194
% [agent,door,location,time]
% Side1(door)=location ->
% Terminates(WalkThroughDoor12(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:196
axiom(terminates(walkThroughDoor12(Agent, Door), at(Agent, Location), Time),
    [equals(side1(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:198
% [agent,door,location,time]
% Side2(door)=location ->
% Terminates(WalkThroughDoor21(agent,door),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:200
axiom(terminates(walkThroughDoor21(Agent, Door), at(Agent, Location), Time),
    [equals(side2(Door), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:202
%; walking from one end of a street to another
%; agent walks from the first end of street to the second end.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:205
% event WalkStreet12(agent,street)
 %  event(walkStreet12(agent,street)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:206
==> mpred_prop(walkStreet12(agent,street),event).
==> meta_argtypes(walkStreet12(agent,street)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:206
%; agent walks from the second end of street to the first end.

% event WalkStreet21(agent,street)
 %  event(walkStreet21(agent,street)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:208
==> mpred_prop(walkStreet21(agent,street),event).
==> meta_argtypes(walkStreet21(agent,street)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:209
%; Precondition axioms state that
%; for an agent to walk from one end of a street to another,
%; the agent must be awake,
%; the agent must be standing, and
%; the agent must be at the first end of the street:
% [agent,street,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:215
% Happens(WalkStreet12(agent,street),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side1(street)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:218
axiom(requires(walkStreet12(Agent, Street), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(at(Agent, side1(Street)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:220
% [agent,street,time]
% Happens(WalkStreet21(agent,street),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side2(street)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:224
axiom(requires(walkStreet21(Agent, Street), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(at(Agent, side2(Street)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:226
%; Effect axioms state that
%; if an agent walks from one end of a street to another,
%; the agent will be at the other end of the street:
% [agent,street,location,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:230
% Side2(street)=location ->
% Initiates(WalkStreet12(agent,street),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:231
axiom(initiates(walkStreet12(Agent, Street), at(Agent, Location), Time),
    [equals(side2(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:233
% [agent,street,location,time]
% Side1(street)=location ->
% Initiates(WalkStreet21(agent,street),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:235
axiom(initiates(walkStreet21(Agent, Street), at(Agent, Location), Time),
    [equals(side1(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:237
% [agent,street,location,time]
% Side1(street)=location ->
% Terminates(WalkStreet12(agent,street),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:239
axiom(terminates(walkStreet12(Agent, Street), at(Agent, Location), Time),
    [equals(side1(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:241
% [agent,street,location,time]
% Side2(street)=location ->
% Terminates(WalkStreet21(agent,street),At(agent,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:243
axiom(terminates(walkStreet21(Agent, Street), at(Agent, Location), Time),
    [equals(side2(Street), Location)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:245
%; floors
%; The floor of room is integer.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:248
% function Floor(room): integer
 %  functional_predicate(floor(room,integer)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:249
==> mpred_prop(floor(room,integer),functional_predicate).
==> meta_argtypes(floor(room,integer)).
resultIsa(floor,integer).
%; walking up and down staircases
%; agent walks down staircase.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:253
% event WalkDownStaircase(agent,staircase)
 %  event(walkDownStaircase(agent,staircase)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:254
==> mpred_prop(walkDownStaircase(agent,staircase),event).
==> meta_argtypes(walkDownStaircase(agent,staircase)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:254
%; agent walks up staircase.

% event WalkUpStaircase(agent,staircase)
 %  event(walkUpStaircase(agent,staircase)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:256
==> mpred_prop(walkUpStaircase(agent,staircase),event).
==> meta_argtypes(walkUpStaircase(agent,staircase)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:257
%; Precondition axioms state that
%; for an agent to walk down (up) a staircase,
%; the agent must be awake, standing, and
%; at the top (bottom) of the staircase:
% [agent,staircase,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:262
% Happens(WalkDownStaircase(agent,staircase),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side2(staircase)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:265
axiom(requires(walkDownStaircase(Agent, Staircase), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(at(Agent, side2(Staircase)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:267
% [agent,staircase,time]
% Happens(WalkUpStaircase(agent,staircase),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(Standing(agent),time) &
% HoldsAt(At(agent,Side1(staircase)),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:271
axiom(requires(walkUpStaircase(Agent, Staircase), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(standing(Agent), Time),
      holds_at(at(Agent, side1(Staircase)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:273
%; Effect axioms state that
%; if an agent walks down (up) a staircase,
%; the agent will be at the bottom (top) of the staircase:
% [agent,staircase,room,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:277
% Side1(staircase)=room ->
% Initiates(WalkDownStaircase(agent,staircase),At(agent,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:278
axiom(initiates(walkDownStaircase(Agent, Staircase), at(Agent, Room), Time),
    [equals(side1(Staircase), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:280
% [agent,staircase,room,time]
% Side2(staircase)=room ->
% Terminates(WalkDownStaircase(agent,staircase),At(agent,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:282
axiom(terminates(walkDownStaircase(Agent, Staircase), at(Agent, Room), Time),
    [equals(side2(Staircase), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:284
% [agent,staircase,room,time]
% Side2(staircase)=room ->
% Initiates(WalkUpStaircase(agent,staircase),At(agent,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:286
axiom(initiates(walkUpStaircase(Agent, Staircase), at(Agent, Room), Time),
    [equals(side2(Staircase), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:288
% [agent,staircase,room,time]
% Side1(staircase)=room ->
% Terminates(WalkUpStaircase(agent,staircase),At(agent,room),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:290
axiom(terminates(walkUpStaircase(Agent, Staircase), at(Agent, Room), Time),
    [equals(side1(Staircase), Room)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:292
%; A state constraint says that if an agent is outside,
%; the agent is dressed.
% [agent,outside,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:295
% HoldsAt(At(agent,outside),time) ->
% HoldsAt(Dressed(agent),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:296
axiom(holds_at(dressed(Agent), Time),
    [holds_at(at(Agent, Outside), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:298
%; room looks out onto outside.

% function LookOutOnto(room): outside
 %  functional_predicate(lookOutOnto(room,outside)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:300
==> mpred_prop(lookOutOnto(room,outside),functional_predicate).
==> meta_argtypes(lookOutOnto(room,outside)).
resultIsa(lookOutOnto,outside).
%; location1 is adjacent to location2.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:302
% predicate Adjacent(location,location)
 %  predicate(adjacent(location,location)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:303
==> mpred_prop(adjacent(location,location),predicate).
==> meta_argtypes(adjacent(location,location)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:304
%; A state constraint says that
%; two locations are adjacent if and only if
%; they have a portal in common:
% [location1,location2]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:307
% Adjacent(location1,location2) <->
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:308
% {portal}% 
% (Side1(portal)=location1 &
%  Side2(portal)=location2) |
% (Side2(portal)=location1 &
%  Side1(portal)=location2).

 /*   exists([Portal],
             equiv(adjacent(Location1, Location2),
                    (side1(Portal)=Location1, side2(Portal)=Location2;side2(Portal)=Location1, side1(Portal)=Location2))).
 */

 /*  not(some(Some_Param, '$kolem_Fn_185'(Fn_185_Param, Fn_185_Ret))) :-
       (   not(adjacent(Fn_185_Param, Fn_185_Ret)),
           (   equals(side1(Some_Param), Fn_185_Param),
               equals(side2(Some_Param), Fn_185_Ret)
           ;   equals(side2(Some_Param), Fn_185_Param),
               equals(side1(Some_Param), Fn_185_Ret)
           )
       ;   adjacent(Fn_185_Param, Fn_185_Ret),
           (   not(equals(side1(Some_Param), Fn_185_Param))
           ;   not(equals(side2(Some_Param), Fn_185_Ret))
           ),
           (   not(equals(side2(Some_Param), Fn_185_Param))
           ;   not(equals(side1(Some_Param), Fn_185_Ret))
           )
       ).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:312
axiom(not(some(Some_Param, '$kolem_Fn_185'(Fn_185_Param, Fn_185_Ret))),
   
    [ equals(side1(Some_Param), Fn_185_Param),
      equals(side2(Some_Param), Fn_185_Ret),
      not(adjacent(Fn_185_Param, Fn_185_Ret))
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_185'(Fn_185_Param, Fn_185_Ret))),
   
    [ equals(side2(Some_Param), Fn_185_Param),
      equals(side1(Some_Param), Fn_185_Ret),
      not(adjacent(Fn_185_Param, Fn_185_Ret))
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_185'(Fn_185_Param, Fn_185_Ret))),
   
    [ not(equals(side2(Some_Param), Fn_185_Param)),
      not(equals(side1(Some_Param), Fn_185_Param)),
      adjacent(Fn_185_Param, Fn_185_Ret)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_185'(Fn_185_Param, Fn_185_Ret))),
   
    [ not(equals(side1(Some_Param), Fn_185_Ret)),
      not(equals(side1(Some_Param), Fn_185_Param)),
      adjacent(Fn_185_Param, Fn_185_Ret)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_185'(Fn_185_Param, Fn_185_Ret))),
   
    [ not(equals(side2(Some_Param), Fn_185_Param)),
      not(equals(side2(Some_Param), Fn_185_Ret)),
      adjacent(Fn_185_Param, Fn_185_Ret)
    ]).
axiom(not(some(Some_Param, '$kolem_Fn_185'(Fn_185_Param, Fn_185_Ret))),
   
    [ not(equals(side1(Some_Param), Fn_185_Ret)),
      not(equals(side2(Some_Param), Fn_185_Ret)),
      adjacent(Fn_185_Param, Fn_185_Ret)
    ]).

 /*  adjacent(Adjacent_Param, Adjacent_Ret) :-
       (   equals(side1(Some_Param8), Adjacent_Param),
           equals(side2(Some_Param8), Adjacent_Ret)
       ;   equals(side2(Some_Param8), Adjacent_Param),
           equals(side1(Some_Param8), Adjacent_Ret)
       ),
       some(Some_Param8,
            '$kolem_Fn_185'(Adjacent_Param, Adjacent_Ret)).
 */
axiom(adjacent(Adjacent_Param, Adjacent_Ret),
   
    [ equals(side1(Some_Param8), Adjacent_Param),
      equals(side2(Some_Param8), Adjacent_Ret),
      some(Some_Param8,
           '$kolem_Fn_185'(Adjacent_Param, Adjacent_Ret))
    ]).
axiom(adjacent(Adjacent_Param, Adjacent_Ret),
   
    [ equals(side2(Some_Param8), Adjacent_Param),
      equals(side1(Some_Param8), Adjacent_Ret),
      some(Some_Param8,
           '$kolem_Fn_185'(Adjacent_Param, Adjacent_Ret))
    ]).

 /*  not(equals(side1(Some_Param11), Adjacent_Param10)) :-
       equals(side2(Some_Param11), Equals_Ret),
       not(adjacent(Adjacent_Param10, Equals_Ret)),
       some(Some_Param11,
            '$kolem_Fn_185'(Adjacent_Param10, Equals_Ret)).
 */
axiom(not(equals(side1(Some_Param11), Adjacent_Param10)),
   
    [ equals(side2(Some_Param11), Equals_Ret),
      not(adjacent(Adjacent_Param10, Equals_Ret)),
      some(Some_Param11,
           '$kolem_Fn_185'(Adjacent_Param10, Equals_Ret))
    ]).

 /*  not(equals(side2(Some_Param14), Equals_Ret15)) :-
       equals(side1(Some_Param14), Adjacent_Param13),
       not(adjacent(Adjacent_Param13, Equals_Ret15)),
       some(Some_Param14,
            '$kolem_Fn_185'(Adjacent_Param13, Equals_Ret15)).
 */
axiom(not(equals(side2(Some_Param14), Equals_Ret15)),
   
    [ equals(side1(Some_Param14), Adjacent_Param13),
      not(adjacent(Adjacent_Param13, Equals_Ret15)),
      some(Some_Param14,
           '$kolem_Fn_185'(Adjacent_Param13, Equals_Ret15))
    ]).

 /*  not(equals(side2(Some_Param17), Adjacent_Param16)) :-
       equals(side1(Some_Param17), Equals_Ret18),
       not(adjacent(Adjacent_Param16, Equals_Ret18)),
       some(Some_Param17,
            '$kolem_Fn_185'(Adjacent_Param16, Equals_Ret18)).
 */
axiom(not(equals(side2(Some_Param17), Adjacent_Param16)),
   
    [ equals(side1(Some_Param17), Equals_Ret18),
      not(adjacent(Adjacent_Param16, Equals_Ret18)),
      some(Some_Param17,
           '$kolem_Fn_185'(Adjacent_Param16, Equals_Ret18))
    ]).

 /*  not(equals(side1(Some_Param20), Equals_Ret21)) :-
       equals(side2(Some_Param20), Adjacent_Param19),
       not(adjacent(Adjacent_Param19, Equals_Ret21)),
       some(Some_Param20,
            '$kolem_Fn_185'(Adjacent_Param19, Equals_Ret21)).
 */
axiom(not(equals(side1(Some_Param20), Equals_Ret21)),
   
    [ equals(side2(Some_Param20), Adjacent_Param19),
      not(adjacent(Adjacent_Param19, Equals_Ret21)),
      some(Some_Param20,
           '$kolem_Fn_185'(Adjacent_Param19, Equals_Ret21))
    ]).

 /*  not(adjacent(Adjacent_Param22, Adjacent_Ret24)) :-
       ( (   not(equals(side1(Some_Param23), Adjacent_Param22))
         ;   not(equals(side2(Some_Param23), Adjacent_Ret24))
         ),
         (   not(equals(side2(Some_Param23), Adjacent_Param22))
         ;   not(equals(side1(Some_Param23), Adjacent_Ret24))
         )
       ),
       some(Some_Param23,
            '$kolem_Fn_185'(Adjacent_Param22, Adjacent_Ret24)).
 */
axiom(not(adjacent(Adjacent_Param22, Adjacent_Ret24)),
   
    [ not(equals(side2(Some_Param23), Adjacent_Param22)),
      not(equals(side1(Some_Param23), Adjacent_Param22)),
      some(Some_Param23,
           '$kolem_Fn_185'(Adjacent_Param22, Adjacent_Ret24))
    ]).
axiom(not(adjacent(Adjacent_Param22, Adjacent_Ret24)),
   
    [ not(equals(side1(Some_Param23), Adjacent_Ret24)),
      not(equals(side1(Some_Param23), Adjacent_Param22)),
      some(Some_Param23,
           '$kolem_Fn_185'(Adjacent_Param22, Adjacent_Ret24))
    ]).
axiom(not(adjacent(Adjacent_Param22, Adjacent_Ret24)),
   
    [ not(equals(side2(Some_Param23), Adjacent_Param22)),
      not(equals(side2(Some_Param23), Adjacent_Ret24)),
      some(Some_Param23,
           '$kolem_Fn_185'(Adjacent_Param22, Adjacent_Ret24))
    ]).
axiom(not(adjacent(Adjacent_Param22, Adjacent_Ret24)),
   
    [ not(equals(side1(Some_Param23), Adjacent_Ret24)),
      not(equals(side2(Some_Param23), Adjacent_Ret24)),
      some(Some_Param23,
           '$kolem_Fn_185'(Adjacent_Param22, Adjacent_Ret24))
    ]).

 /*  equals(side1(Some_Param26), Adjacent_Param25) :-
       (   not(equals(side2(Some_Param26), Adjacent_Param25))
       ;   not(equals(side1(Some_Param26), Equals_Ret27))
       ),
       adjacent(Adjacent_Param25, Equals_Ret27),
       some(Some_Param26,
            '$kolem_Fn_185'(Adjacent_Param25, Equals_Ret27)).
 */
axiom(equals(side1(Some_Param26), Adjacent_Param25),
   
    [ not(equals(side2(Some_Param26), Adjacent_Param25)),
      adjacent(Adjacent_Param25, Equals_Ret27),
      some(Some_Param26,
           '$kolem_Fn_185'(Adjacent_Param25, Equals_Ret27))
    ]).
axiom(equals(side1(Some_Param26), Adjacent_Param25),
   
    [ not(equals(side1(Some_Param26), Equals_Ret27)),
      adjacent(Adjacent_Param25, Equals_Ret27),
      some(Some_Param26,
           '$kolem_Fn_185'(Adjacent_Param25, Equals_Ret27))
    ]).

 /*  equals(side2(Some_Param29), Equals_Ret30) :-
       (   not(equals(side2(Some_Param29), Adjacent_Param28))
       ;   not(equals(side1(Some_Param29), Equals_Ret30))
       ),
       adjacent(Adjacent_Param28, Equals_Ret30),
       some(Some_Param29,
            '$kolem_Fn_185'(Adjacent_Param28, Equals_Ret30)).
 */
axiom(equals(side2(Some_Param29), Equals_Ret30),
   
    [ not(equals(side2(Some_Param29), Adjacent_Param28)),
      adjacent(Adjacent_Param28, Equals_Ret30),
      some(Some_Param29,
           '$kolem_Fn_185'(Adjacent_Param28, Equals_Ret30))
    ]).
axiom(equals(side2(Some_Param29), Equals_Ret30),
   
    [ not(equals(side1(Some_Param29), Equals_Ret30)),
      adjacent(Adjacent_Param28, Equals_Ret30),
      some(Some_Param29,
           '$kolem_Fn_185'(Adjacent_Param28, Equals_Ret30))
    ]).

 /*  equals(side2(Some_Param32), Adjacent_Param31) :-
       (   not(equals(side1(Some_Param32), Adjacent_Param31))
       ;   not(equals(side2(Some_Param32), Equals_Ret33))
       ),
       adjacent(Adjacent_Param31, Equals_Ret33),
       some(Some_Param32,
            '$kolem_Fn_185'(Adjacent_Param31, Equals_Ret33)).
 */
axiom(equals(side2(Some_Param32), Adjacent_Param31),
   
    [ not(equals(side1(Some_Param32), Adjacent_Param31)),
      adjacent(Adjacent_Param31, Equals_Ret33),
      some(Some_Param32,
           '$kolem_Fn_185'(Adjacent_Param31, Equals_Ret33))
    ]).
axiom(equals(side2(Some_Param32), Adjacent_Param31),
   
    [ not(equals(side2(Some_Param32), Equals_Ret33)),
      adjacent(Adjacent_Param31, Equals_Ret33),
      some(Some_Param32,
           '$kolem_Fn_185'(Adjacent_Param31, Equals_Ret33))
    ]).

 /*  equals(side1(Some_Param35), Equals_Ret36) :-
       (   not(equals(side1(Some_Param35), Adjacent_Param34))
       ;   not(equals(side2(Some_Param35), Equals_Ret36))
       ),
       adjacent(Adjacent_Param34, Equals_Ret36),
       some(Some_Param35,
            '$kolem_Fn_185'(Adjacent_Param34, Equals_Ret36)).
 */
axiom(equals(side1(Some_Param35), Equals_Ret36),
   
    [ not(equals(side1(Some_Param35), Adjacent_Param34)),
      adjacent(Adjacent_Param34, Equals_Ret36),
      some(Some_Param35,
           '$kolem_Fn_185'(Adjacent_Param34, Equals_Ret36))
    ]).
axiom(equals(side1(Some_Param35), Equals_Ret36),
   
    [ not(equals(side2(Some_Param35), Equals_Ret36)),
      adjacent(Adjacent_Param34, Equals_Ret36),
      some(Some_Param35,
           '$kolem_Fn_185'(Adjacent_Param34, Equals_Ret36))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:314
%; The ground of outside is ground.

% function GroundOf(outside): ground
 %  functional_predicate(groundOf(outside,ground)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:316
==> mpred_prop(groundOf(outside,ground),functional_predicate).
==> meta_argtypes(groundOf(outside,ground)).
resultIsa(groundOf,ground).
%; The sky of outside is sky.

% function SkyOf(outside): sky
 %  functional_predicate(skyOf(outside,sky)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:318
==> mpred_prop(skyOf(outside,sky),functional_predicate).
==> meta_argtypes(skyOf(outside,sky)).
resultIsa(skyOf,sky).
%; State constraints fix the location of ground and sky:
% [outside,ground,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:321
% GroundOf(outside) = ground ->
% HoldsAt(At(ground,outside),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:322
axiom(holds_at(at(Ground, Outside), Time),
    [equals(groundOf(Outside), Ground)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:324
% [outside,sky,time]
% SkyOf(outside) = sky ->
% HoldsAt(At(sky,outside),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:326
axiom(holds_at(at(Sky, Outside), Time),
    [equals(skyOf(Outside), Sky)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/RTSpace.e:328
%; End of file.
