:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter4/BankAccountServiceFee.e').
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

% option modeldiff on
:- set_ec_option(modeldiff, on).

% load foundations/Root.e

% load foundations/EC.e

% sort account
==> sort(account).

% sort value: integer
==> subsort(value,integer).

% account Account1, Account2
==> t(account,account1).
==> t(account,account2).

% predicate EndOfMonth(time)
 %  predicate(endOfMonth(time)).
==> mpred_prop(endOfMonth(time),predicate).
==> meta_argtypes(endOfMonth(time)).

% function ServiceFee(account): value
 %  functional_predicate(serviceFee(account,value)).
==> mpred_prop(serviceFee(account,value),functional_predicate).
==> meta_argtypes(serviceFee(account,value)).
resultIsa(serviceFee,value).

% function MinimumBalance(account): value
 %  functional_predicate(minimumBalance(account,value)).
==> mpred_prop(minimumBalance(account,value),functional_predicate).
==> meta_argtypes(minimumBalance(account,value)).
resultIsa(minimumBalance,value).

% fluent ServiceFeeCharged(account)
 %  fluent(serviceFeeCharged(account)).
==> mpred_prop(serviceFeeCharged(account),fluent).
==> meta_argtypes(serviceFeeCharged(account)).

% fluent Balance(account,value)
 %  fluent(balance(account,value)).
==> mpred_prop(balance(account,value),fluent).
==> meta_argtypes(balance(account,value)).

% event Transfer(account,account,value)
 %  event(transfer(account,account,value)).
==> mpred_prop(transfer(account,account,value),event).
==> meta_argtypes(transfer(account,account,value)).

% event MonthlyReset(account)
 %  event(monthlyReset(account)).
==> mpred_prop(monthlyReset(account),event).
==> meta_argtypes(monthlyReset(account)).

% event ChargeServiceFee(account)
 %  event(chargeServiceFee(account)).
==> mpred_prop(chargeServiceFee(account),event).
==> meta_argtypes(chargeServiceFee(account)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:40
%; Sigma
% [account1,account2,value1,value2,value3,value4,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:43
% HoldsAt(Balance(account1,value1),time) &
% HoldsAt(Balance(account2,value2),time) &
% value3>0 &
% value1>=value3 &
% value4=(value2+value3) ->
% Initiates(Transfer(account1,account2,value3),Balance(account2,value4),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:48
axiom(initiates(transfer(Account1, Account2, Value3), balance(Account2, Value4), Time),
   
    [ holds_at(balance(Account1, Value1), Time),
      holds_at(balance(Account2, Value2), Time),
      comparison(Value3, 0, >),
      Value1>=Value3,
      equals(Value4, Value2+Value3)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:50
% [account1,account2,value1,value2,value3,time]
% HoldsAt(Balance(account1,value1),time) &
% HoldsAt(Balance(account2,value2),time) &
% value3>0 &
% value1>=value3 ->
% Terminates(Transfer(account1,account2,value3),Balance(account2,value2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:55
axiom(terminates(transfer(Account1, Account2, Value3), balance(Account2, Value2), Time),
   
    [ holds_at(balance(Account1, Value1), Time),
      holds_at(balance(Account2, Value2), Time),
      comparison(Value3, 0, >),
      Value1>=Value3
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:57
% [account1,account2,value1,value2,value3,value4,time]
% HoldsAt(Balance(account1,value1),time) &
% HoldsAt(Balance(account2,value2),time) &
% value3>0 &
% value1>=value3 &
% value4=(value1-value3) ->
% Initiates(Transfer(account1,account2,value3),Balance(account1,value4),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:63
axiom(initiates(transfer(Account1, Account2, Value3), balance(Account1, Value4), Time),
   
    [ holds_at(balance(Account1, Value1), Time),
      holds_at(balance(Account2, Value2), Time),
      comparison(Value3, 0, >),
      Value1>=Value3,
      equals(Value4, Value1-Value3)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:65
% [account1,account2,value1,value2,value3,time]
% HoldsAt(Balance(account1,value1),time) &
% HoldsAt(Balance(account2,value2),time) &
% value3>0 &
% value1>=value3 ->
% Terminates(Transfer(account1,account2,value3),Balance(account1,value1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:70
axiom(terminates(transfer(Account1, Account2, Value3), balance(Account1, Value1), Time),
   
    [ holds_at(balance(Account1, Value1), Time),
      holds_at(balance(Account2, Value2), Time),
      comparison(Value3, 0, >),
      Value1>=Value3
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:72
% [account,time]
% Initiates(ChargeServiceFee(account),ServiceFeeCharged(account),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:73
axiom(initiates(chargeServiceFee(Account), serviceFeeCharged(Account), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:75
% [account,time]
% Terminates(MonthlyReset(account),ServiceFeeCharged(account),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:76
axiom(terminates(monthlyReset(Account), serviceFeeCharged(Account), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:78
% [account,value1,value2,time]
% HoldsAt(Balance(account,value1),time) &
% value2 = (value1-ServiceFee(account)) ->
% Initiates(ChargeServiceFee(account),
%           Balance(account,value2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:83
axiom(initiates(chargeServiceFee(Account), balance(Account, Value2), Time),
   
    [ holds_at(balance(Account, Value1), Time),
      equals(Value2, Value1-serviceFee(Account))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:85
% [account,value,time]
% HoldsAt(Balance(account,value),time) ->
% Terminates(ChargeServiceFee(account),Balance(account,value),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:87
axiom(terminates(chargeServiceFee(Account), balance(Account, Value), Time),
    [holds_at(balance(Account, Value), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:89
%; Delta
% [account,value,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:92
% HoldsAt(Balance(account,value),time) &
% value<MinimumBalance(account) &
% !HoldsAt(ServiceFeeCharged(account),time) ->
% Happens(ChargeServiceFee(account),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:95
axiom(happens(chargeServiceFee(Account), Time),
   
    [ holds_at(balance(Account, Value), Time),
      comparison(Value, minimumBalance(Account), <),
      not(holds_at(serviceFeeCharged(Account), Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:97
% [account,time]
% EndOfMonth(time) ->
% Happens(MonthlyReset(account),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:99
axiom(happens(monthlyReset(Account), Time),
    [endOfMonth(Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:101
% Happens(Transfer(Account1,Account2,1),0).
axiom(happens(transfer(account1, account2, 1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:102
% Happens(Transfer(Account1,Account2,1),0).
axiom(happens(transfer(account1, account2, 1), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:104
%; Psi
% [account,value1,value2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:107
% HoldsAt(Balance(account,value1),time) &
% HoldsAt(Balance(account,value2),time) ->
% value1=value2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:109
axiom(Value1=Value2,
   
    [ holds_at(balance(Account, Value1), Time),
      holds_at(balance(Account, Value2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:111
%; Gamma


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:113
% !HoldsAt(ServiceFeeCharged(Account1),0).
 %  not(initially(serviceFeeCharged(account1))).
axiom(not(initially(serviceFeeCharged(account1))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:114
% !HoldsAt(ServiceFeeCharged(Account2),0).
 %  not(initially(serviceFeeCharged(account2))).
axiom(not(initially(serviceFeeCharged(account2))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:115
% HoldsAt(Balance(Account1,3),0).
axiom(initially(balance(account1, 3)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:116
% HoldsAt(Balance(Account2,1),0).
axiom(initially(balance(account2, 1)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:117
% MinimumBalance(Account1)=3.
minimumBalance(account1,3).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:118
% MinimumBalance(Account2)=1.
minimumBalance(account2,1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:119
% ServiceFee(Account1)=1.
serviceFee(account1,1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:120
% ServiceFee(Account2)=1.
serviceFee(account2,1).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:121
% [time]
 % !EndOfMonth(time).
 %  not(endOfMonth(Time)).
axiom(not(endOfMonth(EndOfMonth_Ret)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:123
% completion Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:124
==> completion(happens).

% range time 0 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:126
==> range(time,0,3).

% range value 1 3
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:127
==> range(value,1,3).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter4/BankAccountServiceFee.e:128
==> range(offset,1,1).
%; End of file.
