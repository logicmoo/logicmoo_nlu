:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Gun.e').
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

% fluent Loaded(gun,bullet)
 %  fluent(loaded(gun,bullet)).
==> mpred_prop(loaded(gun,bullet),fluent).
==> meta_argtypes(loaded(gun,bullet)).

% noninertial Loaded
==> noninertial(loaded).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:14
% [gun,bullet,time]
% HoldsAt(Inside(bullet,gun),time) <->
% HoldsAt(Loaded(gun,bullet),time).

 /*  holds_at(inside(Bullet, Gun), Time) <->
       holds_at(loaded(Gun, Bullet), Time).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:16
axiom(holds_at(inside(Bullet, Gun), Time),
    [holds_at(loaded(Gun, Bullet), Time)]).
axiom(holds_at(loaded(Gun, Bullet), Time),
    [holds_at(inside(Bullet, Gun), Time)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:18
% event Shoot(agent,gun,object)
 %  event(shoot(agent,gun,object)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:19
==> mpred_prop(shoot(agent,gun,object),event).
==> meta_argtypes(shoot(agent,gun,object)).

% event ShootInjure(agent,gun,agent)
 %  event(shootInjure(agent,gun,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:21
==> mpred_prop(shootInjure(agent,gun,agent),event).
==> meta_argtypes(shootInjure(agent,gun,agent)).

% event ShootKill(agent,gun,agent)
 %  event(shootKill(agent,gun,agent)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:23
==> mpred_prop(shootKill(agent,gun,agent),event).
==> meta_argtypes(shootKill(agent,gun,agent)).

% event ShootDamage(agent,gun,physobj)
 %  event(shootDamage(agent,gun,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:25
==> mpred_prop(shootDamage(agent,gun,physobj),event).
==> meta_argtypes(shootDamage(agent,gun,physobj)).

% event ShootDestroy(agent,gun,physobj)
 %  event(shootDestroy(agent,gun,physobj)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:27
==> mpred_prop(shootDestroy(agent,gun,physobj),event).
==> meta_argtypes(shootDestroy(agent,gun,physobj)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:28
% [agent,gun,bullet,object,time]
% HoldsAt(Inside(bullet,gun),time) ->
% Terminates(Shoot(agent,gun,object),
%            Inside(bullet,gun),
%            time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:32
axiom(terminates(shoot(Agent, Gun, Object), inside(Bullet, Gun), Time),
    [holds_at(inside(Bullet, Gun), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:34
% [agent,gun,bullet,object,location1,location2,time]
% HoldsAt(Inside(bullet,gun),time) &
% HoldsAt(At(gun,location1),time) &
% location1 != location2 ->
% Terminates(Shoot(agent,gun,object),At(bullet,location2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:38
axiom(terminates(shoot(Agent, Gun, Object), at(Bullet, Location2), Time),
   
    [ holds_at(inside(Bullet, Gun), Time),
      holds_at(at(Gun, Location1), Time),
      { dif(Location1, Location2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:40
% [agent,gun,bullet,object,location,time]
% HoldsAt(At(object,location),time) &
% HoldsAt(Inside(bullet,gun),time) ->
% Initiates(Shoot(agent,gun,object),At(bullet,location),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:43
axiom(initiates(shoot(Agent, Gun, Object), at(Bullet, Location), Time),
   
    [ holds_at(at(Object, Location), Time),
      holds_at(inside(Bullet, Gun), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:45
% [agent,gun,object,time]
% Happens(Shoot(agent,gun,object),time) ->
% HoldsAt(Holding(agent,gun),time) &
% ({bullet} HoldsAt(Loaded(gun,bullet),time)) &
% ({location} HoldsAt(At(agent,location),time) &
%             HoldsAt(At(object,location),time)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:50
axiom(requires(shoot(Agent, Gun, Object), Time),
   
    [ holds_at(holding(Agent, Gun), Time),
      holds_at(loaded(Gun, Bullet), Time),
      holds_at(at(Agent, Location), Time),
      holds_at(at(Object, Location), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:52
% [agent1,gun,agent2,time]
% Happens(Shoot(agent1,gun,agent2),time) ->
% Happens(ShootInjure(agent1,gun,agent2),time) |
% Happens(ShootKill(agent1,gun,agent2),time).

 /*   if(happens(shoot(Agent1, Gun, Agent2), Time),
          (happens(shootInjure(Agent1, Gun, Agent2), Time);happens(shootKill(Agent1, Gun, Agent2), Time))).
 */

 /*  happens(shootInjure(ShootInjure_Param, A, ShootInjure_Ret), Maptime) :-
       not(happens(shootKill(ShootInjure_Param,
                             A,
                             ShootInjure_Ret),
                   Maptime)),
       happens(shoot(ShootInjure_Param, A, ShootInjure_Ret),
               Maptime).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:55
axiom(happens(shootInjure(ShootInjure_Param, A, ShootInjure_Ret), Maptime),
   
    [ not(happens(shootKill(ShootInjure_Param,
                            A,
                            ShootInjure_Ret),
                  Maptime)),
      happens(shoot(ShootInjure_Param, A, ShootInjure_Ret),
              Maptime)
    ]).

 /*  happens(shootKill(ShootKill_Param, A, ShootKill_Ret), Maptime7) :-
       not(happens(shootInjure(ShootKill_Param, A, ShootKill_Ret),
                   Maptime7)),
       happens(shoot(ShootKill_Param, A, ShootKill_Ret),
               Maptime7).
 */
axiom(happens(shootKill(ShootKill_Param, A, ShootKill_Ret), Maptime7),
   
    [ not(happens(shootInjure(ShootKill_Param,
                              A,
                              ShootKill_Ret),
                  Maptime7)),
      happens(shoot(ShootKill_Param, A, ShootKill_Ret),
              Maptime7)
    ]).

 /*  not(happens(shoot(Shoot_Param, A, Shoot_Ret), Maptime10)) :-
       not(happens(shootInjure(Shoot_Param, A, Shoot_Ret),
                   Maptime10)),
       not(happens(shootKill(Shoot_Param, A, Shoot_Ret),
                   Maptime10)).
 */
axiom(not(happens(shoot(Shoot_Param, A, Shoot_Ret), Maptime10)),
   
    [ not(happens(shootInjure(Shoot_Param, A, Shoot_Ret),
                  Maptime10)),
      not(happens(shootKill(Shoot_Param, A, Shoot_Ret),
                  Maptime10))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:57
% [agent1,gun,bullet,agent2,time]
% HoldsAt(Inside(bullet,gun),time) &
% Happens(ShootKill(agent1,gun,agent2),time) ->
% Happens(Kill(bullet,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:60
axiom(happens(kill(Bullet, Agent2), Time),
   
    [ holds_at(inside(Bullet, Gun), Time),
      happens(shootKill(Agent1, Gun, Agent2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:62
% [agent1,gun,bullet,agent2,time]
% HoldsAt(Inside(bullet,gun),time) &
% Happens(ShootInjure(agent1,gun,agent2),time) ->
% Happens(Injure(bullet,agent2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:65
axiom(happens(injure(Bullet, Agent2), Time),
   
    [ holds_at(inside(Bullet, Gun), Time),
      happens(shootInjure(Agent1, Gun, Agent2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:67
% [agent,gun,physobj,time]
% Happens(Shoot(agent,gun,physobj),time) ->
% Happens(ShootDamage(agent,gun,physobj),time) |
% Happens(ShootDestroy(agent,gun,physobj),time).

 /*   if(happens(shoot(Agent, Gun, Physobj), Time),
          (happens(shootDamage(Agent, Gun, Physobj), Time);happens(shootDestroy(Agent, Gun, Physobj), Time))).
 */

 /*  happens(shootDamage(ShootDamage_Param, A, ShootDamage_Ret), Maptime) :-
       not(happens(shootDestroy(ShootDamage_Param,
                                A,
                                ShootDamage_Ret),
                   Maptime)),
       happens(shoot(ShootDamage_Param, A, ShootDamage_Ret),
               Maptime).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:70
axiom(happens(shootDamage(ShootDamage_Param, A, ShootDamage_Ret), Maptime),
   
    [ not(happens(shootDestroy(ShootDamage_Param,
                               A,
                               ShootDamage_Ret),
                  Maptime)),
      happens(shoot(ShootDamage_Param, A, ShootDamage_Ret),
              Maptime)
    ]).

 /*  happens(shootDestroy(ShootDestroy_Param, A, ShootDestroy_Ret), Maptime7) :-
       not(happens(shootDamage(ShootDestroy_Param,
                               A,
                               ShootDestroy_Ret),
                   Maptime7)),
       happens(shoot(ShootDestroy_Param, A, ShootDestroy_Ret),
               Maptime7).
 */
axiom(happens(shootDestroy(ShootDestroy_Param, A, ShootDestroy_Ret), Maptime7),
   
    [ not(happens(shootDamage(ShootDestroy_Param,
                              A,
                              ShootDestroy_Ret),
                  Maptime7)),
      happens(shoot(ShootDestroy_Param, A, ShootDestroy_Ret),
              Maptime7)
    ]).

 /*  not(happens(shoot(Shoot_Param, A, Shoot_Ret), Maptime10)) :-
       not(happens(shootDamage(Shoot_Param, A, Shoot_Ret),
                   Maptime10)),
       not(happens(shootDestroy(Shoot_Param, A, Shoot_Ret),
                   Maptime10)).
 */
axiom(not(happens(shoot(Shoot_Param, A, Shoot_Ret), Maptime10)),
   
    [ not(happens(shootDamage(Shoot_Param, A, Shoot_Ret),
                  Maptime10)),
      not(happens(shootDestroy(Shoot_Param, A, Shoot_Ret),
                  Maptime10))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:72
% [agent,gun,bullet,physobj,time]
% HoldsAt(Inside(bullet,gun),time) &
% Happens(ShootDamage(agent,gun,physobj),time) ->
% Happens(Damage(bullet,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:75
axiom(happens(damage(Bullet, Physobj), Time),
   
    [ holds_at(inside(Bullet, Gun), Time),
      happens(shootDamage(Agent, Gun, Physobj), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:77
% [agent,gun,bullet,physobj,time]
% HoldsAt(Inside(bullet,gun),time) &
% Happens(ShootDestroy(agent,gun,physobj),time) ->
% Happens(Destroy(bullet,physobj),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:80
axiom(happens(destroy(Bullet, Physobj), Time),
   
    [ holds_at(inside(Bullet, Gun), Time),
      happens(shootDestroy(Agent, Gun, Physobj), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Gun.e:82
%; End of file.
