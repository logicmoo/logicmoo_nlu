:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1999/CoinToss.e').
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
%; @article{Kartha:1994,
%;   author = "G. Neelakantan Kartha",
%;   year = "1994",
%;   title = "Two counterexamples related to \uppercase{B}aker's approach to the frame problem",
%;   journal = "Artificial Intelligence",
%;   volume = "69",
%;   number = "1--2",
%;   pages = "379--391",
%; }
%;
%; @incollection{Shanahan:1999,
%;   author = "Shanahan, Murray",
%;   year = "1999",
%;   title = "The Event Calculus explained",
%;   editor = "Michael J. Wooldridge and Manuela M. Veloso",
%;   booktitle = "Artificial Intelligence Today: Recent Trends and Developments",
%;   series = "Lecture Notes in Computer Science",
%;   volume = "1600",
%;   pages = "409--430",
%;   address = "Berlin",
%;   publisher = "Springer",
%; }
%;
%; model finding
%;
%; modifications from Shanahan's formulation:
%; InitiallyP -> HoldsAt
%; pruning of models irrelevant to example
%; timestamps
%;

% load foundations/Root.e

% load foundations/EC.e

% event Toss()
 %  event(toss()).
==> mpred_prop(toss(),event).
==> meta_argtypes(toss()).

% fluent ItsHeads()
 %  fluent(itsHeads()).
==> mpred_prop(itsHeads(),fluent).
==> meta_argtypes(itsHeads()).

% fluent Heads()
 %  fluent(heads()).
==> mpred_prop(heads(),fluent).
==> meta_argtypes(heads()).

% noninertial ItsHeads
==> noninertial(itsHeads).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:49
% [time]
 % HoldsAt(ItsHeads(),time) -> Initiates(Toss(),Heads(),time).
axiom(initiates(toss(), heads(), Time),
    [holds_at(itsHeads(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:50
% [time]
 % !HoldsAt(ItsHeads(),time) -> Terminates(Toss(),Heads(),time).
axiom(terminates(toss(), heads(), Time),
    [not(holds_at(itsHeads(), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:52
% HoldsAt(Heads(),0).
axiom(initially(heads()),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:53
% Happens(Toss(),1).
axiom(happens(toss(), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:54
% Happens(Toss(),2).
axiom(happens(toss(), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:55
% Happens(Toss(),3).
axiom(happens(toss(), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:57
%; prune models irrelevant to example:


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:58
% HoldsAt(ItsHeads(),0).
axiom(initially(itsHeads()),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:59
% HoldsAt(ItsHeads(),4).
holds_at(itsHeads(),4).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:61
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:62
==> completion(happens).

% range time 0 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:64
==> range(time,0,4).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/CoinToss.e:65
==> range(offset,1,1).
%; End of file.
