:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Shanahan1999/ChessBoard.e').
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
%; due to Raymond Reiter
%;
%; @inproceedings{KarthaLifschitz:1994,
%;   author = "G. Neelakantan Kartha and Vladimir Lifschitz",
%;   year = "1994",
%;   title = "Actions with indirect effects (preliminary report)",
%;   editor = "Jon Doyle and Erik Sandewall and Pietro Torasso",
%;   booktitle = "\uppercase{P}roceedings of the \uppercase{F}ourth \uppercase{I}nternational \uppercase{C}onference on \uppercase{P}rinciples of \uppercase{K}nowledge \uppercase{R}epresentation and \uppercase{R}easoning",
%;   pages = "341--350",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann",
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
%; InitiallyN -> !HoldsAt
%; pruning of models irrelevant to example
%; timestamps
%;

% load foundations/Root.e

% load foundations/EC.e

% event Throw()
 %  event(throw()).
==> mpred_prop(throw(),event).
==> meta_argtypes(throw()).

% fluent ItsBlack()
 %  fluent(itsBlack()).
==> mpred_prop(itsBlack(),fluent).
==> meta_argtypes(itsBlack()).

% fluent ItsWhite()
 %  fluent(itsWhite()).
==> mpred_prop(itsWhite(),fluent).
==> meta_argtypes(itsWhite()).

% fluent OnBlack()
 %  fluent(onBlack()).
==> mpred_prop(onBlack(),fluent).
==> meta_argtypes(onBlack()).

% fluent OnWhite()
 %  fluent(onWhite()).
==> mpred_prop(onWhite(),fluent).
==> meta_argtypes(onWhite()).

% noninertial ItsBlack, ItsWhite
==> noninertial(itsBlack).
==> noninertial(itsWhite).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:54
% [time]
% HoldsAt(ItsWhite(),time) ->
% Initiates(Throw(),OnWhite(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:56
axiom(initiates(throw(), onWhite(), Time),
    [holds_at(itsWhite(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:58
% [time]
% HoldsAt(ItsBlack(),time) ->
% Initiates(Throw(),OnBlack(),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:60
axiom(initiates(throw(), onBlack(), Time),
    [holds_at(itsBlack(), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:62
% [time]
 % HoldsAt(ItsWhite(),time) | HoldsAt(ItsBlack(),time).

 /*   (   holds_at(itsWhite(), Time)
      ;   holds_at(itsBlack(), Time)
      ).
 */

 /*  holds_at(itsWhite(), Time1) :-
       not(holds_at(itsBlack(), Time1)).
 */
axiom(holds_at(itsWhite(), Time1),
    [not(holds_at(itsBlack(), Time1))]).

 /*  holds_at(itsBlack(), Time2) :-
       not(holds_at(itsWhite(), Time2)).
 */
axiom(holds_at(itsBlack(), Time2),
    [not(holds_at(itsWhite(), Time2))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:64
% !HoldsAt(OnWhite(),0).
 %  not(initially(onWhite())).
axiom(not(initially(onWhite())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:65
% !HoldsAt(OnBlack(),0).
 %  not(initially(onBlack())).
axiom(not(initially(onBlack())),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:66
% Happens(Throw(),1).
axiom(happens(throw(), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:68
%; prune models irrelevant to example:


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:69
% HoldsAt(ItsWhite(),0).
axiom(initially(itsWhite()),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:70
% HoldsAt(ItsBlack(),0).
axiom(initially(itsBlack()),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:71
% HoldsAt(ItsWhite(),2).
holds_at(itsWhite(),2).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:72
% HoldsAt(ItsBlack(),2).
holds_at(itsBlack(),2).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:74
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:75
==> completion(happens).

% range time 0 2
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:77
==> range(time,0,2).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Shanahan1999/ChessBoard.e:78
==> range(offset,1,1).
%; End of file.
