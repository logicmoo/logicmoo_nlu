:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ecnet/Book.e').
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
%; Book: book (a sort of device)
%;

% sort page: integer
==> subsort(page,integer).
%; agent opens book to page.

% event BookOpenTo(agent,book,page)
 %  event(bookOpenTo(agent,book,page)).
==> mpred_prop(bookOpenTo(agent,book,page),event).
==> meta_argtypes(bookOpenTo(agent,book,page)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:18
%; agent closes book.

% event BookClose(agent,book)
 %  event(bookClose(agent,book)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:20
==> mpred_prop(bookClose(agent,book),event).
==> meta_argtypes(bookClose(agent,book)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:21
%; book is open to page.

% fluent BookIsOpenTo(book,page)
 %  fluent(bookIsOpenTo(book,page)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:23
==> mpred_prop(bookIsOpenTo(book,page),fluent).
==> meta_argtypes(bookIsOpenTo(book,page)).

% fluent BookClosed(book)
 %  fluent(bookClosed(book)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:25
==> mpred_prop(bookClosed(book),fluent).
==> meta_argtypes(bookClosed(book)).

% noninertial BookClosed
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:26
==> noninertial(bookClosed).
%; agent turns page of book to page.

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:28
% event BookTurnPageTo(agent,book,page)
 %  event(bookTurnPageTo(agent,book,page)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:29
==> mpred_prop(bookTurnPageTo(agent,book,page),event).
==> meta_argtypes(bookTurnPageTo(agent,book,page)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:30
% [book,page1,page2,time]
% HoldsAt(BookIsOpenTo(book,page1),time) &
% HoldsAt(BookIsOpenTo(book,page2),time) ->
% page1=page2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:33
axiom(Page1=Page2,
   
    [ holds_at(bookIsOpenTo(Book, Page1), Time),
      holds_at(bookIsOpenTo(Book, Page2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:35
% [book,time]
% HoldsAt(BookClosed(book),time) <->
% !{page} HoldsAt(BookIsOpenTo(book,page),time).

 /*  holds_at(bookClosed(Book), Time) <->
       not(exists([Page],
                  holds_at(bookIsOpenTo(Book, Page), Time))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:37
axiom(holds_at(bookClosed(Book), Time),
    [not(holds_at(bookIsOpenTo(Book, Page), Time))]).
axiom(not(exists([Page], holds_at(bookIsOpenTo(Book, Page), Time))),
    [holds_at(bookClosed(Book), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:39
%; A precondition axiom states that
%; for an agent to open a book to a page,
%; the agent must be awake,
%; the book must be closed, and
%; the agent must be holding the book.
% [agent,book,page,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:45
% Happens(BookOpenTo(agent,book,page),time) ->
% HoldsAt(Awake(agent),time) &
% HoldsAt(BookClosed(book),time) &
% HoldsAt(Holding(agent,book),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:48
axiom(requires(bookOpenTo(Agent, Book, Page), Time),
   
    [ holds_at(awake(Agent), Time),
      holds_at(bookClosed(Book), Time),
      holds_at(holding(Agent, Book), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:50
%; An effect axiom states that
%; if an agent opens a book to a page,
%; the book will be open to the page:
% [agent,book,page,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:54
% Initiates(BookOpenTo(agent,book,page),BookIsOpenTo(book,page),time).
axiom(initiates(bookOpenTo(Agent, Book, Page), bookIsOpenTo(Book, Page), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:56
%; A precondition axiom states that
%; for an agent to close a book,
%; the agent must be awake,
%; the book must not already be closed, and
%; the agent must be holding the book.
% [agent,book,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:62
% Happens(BookClose(agent,book),time) ->
% HoldsAt(Awake(agent),time) &
% !HoldsAt(BookClosed(book),time) &
% HoldsAt(Holding(agent,book),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:65
axiom(requires(bookClose(Agent, Book), Time),
   
    [ holds_at(awake(Agent), Time),
      not(holds_at(bookClosed(Book), Time)),
      holds_at(holding(Agent, Book), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:67
%; An effect axiom states that
%; if an agent closes a book,
%; the book will no longer be open:
% [agent,book,page,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:71
% Terminates(BookClose(agent,book),BookIsOpenTo(book,page),time).
axiom(terminates(bookClose(Agent, Book), bookIsOpenTo(Book, Page), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:73
% [agent,book,page,time]
% Happens(BookTurnPageTo(agent,book,page),time) ->
% HoldsAt(Awake(agent),time) &
% ({page1} page1 != page & HoldsAt(BookIsOpenTo(book,page1),time)) &
% HoldsAt(Holding(agent,book),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:77
axiom(requires(bookTurnPageTo(Agent, Book, Page), Time),
   
    [ holds_at(awake(Agent), Time),
      { dif(Page1, Page)
      },
      holds_at(bookIsOpenTo(Book, Page1), Time),
      holds_at(holding(Agent, Book), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:79
% [agent,book,page,time]
% Initiates(BookTurnPageTo(agent,book,page),BookIsOpenTo(book,page),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:80
axiom(initiates(bookTurnPageTo(Agent, Book, Page), bookIsOpenTo(Book, Page), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:82
% [agent,book,page1,page2,time]
% HoldsAt(BookIsOpenTo(book,page1),time) &
% page1 != page2 ->
% Terminates(BookTurnPageTo(agent,book,page2),BookIsOpenTo(book,page1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:85
axiom(terminates(bookTurnPageTo(Agent, Book, Page2), bookIsOpenTo(Book, Page1), Time),
   
    [ holds_at(bookIsOpenTo(Book, Page1), Time),
      { dif(Page1, Page2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ecnet/Book.e:87
%; End of file.
