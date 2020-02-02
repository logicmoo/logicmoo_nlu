:- module(cycnl_iface,[]).

%:- multifile((ttholds/1,ttholds/2,ttholds/3,ttholds/4,ttholds/5,ttholds/6,ttholds/7,ttholds/8,ttholds/9)).
%:- dynamic((ttholds/1,ttholds/2,ttholds/3,ttholds/4,ttholds/5,ttholds/6,ttholds/7,ttholds/8,ttholds/9)).
%:- discontiguous((ttholds/1,ttholds/2,ttholds/3,ttholds/4,ttholds/5,ttholds/6,ttholds/7,ttholds/8,ttholds/9)).
:- ensure_loaded(nl_iface).

:- if(\+ (exists_file('ac_xnl_7166.qlf'))).
:- format(user_error,'~NLoading ac_xnl_7166.qlf (this may take 60-120 seconds the very first time) ... ~n',[]).
%:- time(load_files(ac_xnl_7166,[qcompile(auto)])).
:- endif.

:- if(exists_source(ac_xnl_7166)).
:- reexport(ac_xnl_7166).
:- endif.

%:- retractall(assertion_content(retainTerm,_,_)).
