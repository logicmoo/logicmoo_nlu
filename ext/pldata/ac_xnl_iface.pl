:- module(cycnl_iface,[]).

%:- multifile((ttholds/1,ttholds/2,ttholds/3,ttholds/4,ttholds/5,ttholds/6,ttholds/7,ttholds/8,ttholds/9)).
%:- dynamic((ttholds/1,ttholds/2,ttholds/3,ttholds/4,ttholds/5,ttholds/6,ttholds/7,ttholds/8,ttholds/9)).
%:- discontiguous((ttholds/1,ttholds/2,ttholds/3,ttholds/4,ttholds/5,ttholds/6,ttholds/7,ttholds/8,ttholds/9)).
%:- ensure_loaded(nl_iface).

:- if(\+ (exists_file('ac_xnl_7166.qlf'))).
:- format(user_error,'~NQuickload Compiling (qcompile/1) ac_xnl_7166.qlf (this may take 60-120 seconds the very first time) ... ~n',[]),
   prolog_statistics:time(load_files(ac_xnl_7166,[qcompile(auto)])),
   % prolog_statistics:time(qcompile(ac_xnl_7166)),
   format(user_error,'~NMade ac_xnl_7166.qlf ~n',[]).
:- endif.


:- if((exists_file('ac_xnl_7166.qlf'))).

:- format(user_error,'~NLoading ac_xnl_7166.qlf  ... ~n',[]).
:- reexport('ac_xnl_7166.qlf').

:- else.
:- format(user_error,'~NMissing ac_xnl_7166.qlf  ... ~n',[]).

:- if(exists_source(ac_xnl_7166)).
:- format(user_error,'~NLoading ac_xnl_7166 instead  ... ~n',[]).
:- reexport(ac_xnl_7166).
:- endif.

:- reexport(ac_xnl_7166_nlkb).

:- endif.
