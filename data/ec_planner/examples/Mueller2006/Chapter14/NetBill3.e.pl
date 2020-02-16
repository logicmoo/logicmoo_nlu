:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Chapter14/NetBill3.e').
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
%; @inproceedings{SirbuTygar:1995,
%;   author = "Marvin A. Sirbu and J. D. Tygar",
%;   year = "1995",
%;   title = "Net\uppercase{B}ill: An \uppercase{I}nternet commerce system optimized for network delivered services",
%;   editor = "
%;   booktitle = "40th \uppercase{IEEE} \uppercase{C}omputer \uppercase{S}ociety \uppercase{I}nternational \uppercase{C}onference",
%;   pages = "20--25",
%;   publisher = "
%;   address = "
%; }
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

% sort agent
==> sort(agent).

% agent MusicStore, Jen
==> t(agent,musicStore).
==> t(agent,jen).

% sort product
==> sort(product).

% product BritneyCD
==> t(product,britneyCD).

% sort f
==> sort(f).

% f PurchaseRequestedJenMusicStoreBritneyCD1
==> t(f,purchaseRequestedJenMusicStoreBritneyCD1).

% f DeliveredMusicStoreJenBritneyCD
==> t(f,deliveredMusicStoreJenBritneyCD).

% f EPOSentJenMusicStore1
==> t(f,ePOSentJenMusicStore1).

% sort amount: integer
==> subsort(amount,integer).

% fluent C(agent,agent,f)
 %  fluent(c(agent,agent,f)).
==> mpred_prop(c(agent,agent,f),fluent).
==> meta_argtypes(c(agent,agent,f)).

% fluent CC(agent,agent,f,f)
 %  fluent(cc(agent,agent,f,f)).
==> mpred_prop(cc(agent,agent,f,f),fluent).
==> meta_argtypes(cc(agent,agent,f,f)).

% event CreateC(agent,agent,f)
 %  event(createC(agent,agent,f)).
==> mpred_prop(createC(agent,agent,f),event).
==> meta_argtypes(createC(agent,agent,f)).

% event CreateCC(agent,agent,f,f)
 %  event(createCC(agent,agent,f,f)).
==> mpred_prop(createCC(agent,agent,f,f),event).
==> meta_argtypes(createCC(agent,agent,f,f)).

% event DischargeC(agent,agent,f)
 %  event(dischargeC(agent,agent,f)).
==> mpred_prop(dischargeC(agent,agent,f),event).
==> meta_argtypes(dischargeC(agent,agent,f)).

% event DischargeCC(agent,agent,f,f)
 %  event(dischargeCC(agent,agent,f,f)).
==> mpred_prop(dischargeCC(agent,agent,f,f),event).
==> meta_argtypes(dischargeCC(agent,agent,f,f)).

% fluent QuoteSent(agent,agent,product,amount)
 %  fluent(quoteSent(agent,agent,product,amount)).
==> mpred_prop(quoteSent(agent,agent,product,amount),fluent).
==> meta_argtypes(quoteSent(agent,agent,product,amount)).

% fluent PurchaseRequested(agent,agent,product,amount)
 %  fluent(purchaseRequested(agent,agent,product,amount)).
==> mpred_prop(purchaseRequested(agent,agent,product,amount),fluent).
==> meta_argtypes(purchaseRequested(agent,agent,product,amount)).

% fluent Delivered(agent,agent,product)
 %  fluent(delivered(agent,agent,product)).
==> mpred_prop(delivered(agent,agent,product),fluent).
==> meta_argtypes(delivered(agent,agent,product)).

% fluent EPOSent(agent,agent,amount)
 %  fluent(ePOSent(agent,agent,amount)).
==> mpred_prop(ePOSent(agent,agent,amount),fluent).
==> meta_argtypes(ePOSent(agent,agent,amount)).

% event SendQuote(agent,agent,product,amount)
 %  event(sendQuote(agent,agent,product,amount)).
==> mpred_prop(sendQuote(agent,agent,product,amount),event).
==> meta_argtypes(sendQuote(agent,agent,product,amount)).

% event RequestPurchase(agent,agent,product,amount)
 %  event(requestPurchase(agent,agent,product,amount)).
==> mpred_prop(requestPurchase(agent,agent,product,amount),event).
==> meta_argtypes(requestPurchase(agent,agent,product,amount)).

% event Deliver(agent,agent,product)
 %  event(deliver(agent,agent,product)).
==> mpred_prop(deliver(agent,agent,product),event).
==> meta_argtypes(deliver(agent,agent,product)).

% event SendEPO(agent,agent,amount)
 %  event(sendEPO(agent,agent,amount)).
==> mpred_prop(sendEPO(agent,agent,amount),event).
==> meta_argtypes(sendEPO(agent,agent,amount)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:66
%; Sigma
% [agent1,agent2,f,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:69
% Initiates(CreateC(agent1,agent2,f),C(agent1,agent2,f),time).
axiom(initiates(createC(Agent1, Agent2, F), c(Agent1, Agent2, F), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:71
% [agent1,agent2,f1,f2,time]
% Initiates(CreateCC(agent1,agent2,f1,f2),CC(agent1,agent2,f1,f2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:72
axiom(initiates(createCC(Agent1, Agent2, F1, F2), cc(Agent1, Agent2, F1, F2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:74
% [agent1,agent2,f,time]
% Terminates(DischargeC(agent1,agent2,f),C(agent1,agent2,f),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:75
axiom(terminates(dischargeC(Agent1, Agent2, F), c(Agent1, Agent2, F), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:77
% [agent1,agent2,f1,f2,time]
% Terminates(DischargeCC(agent1,agent2,f1,f2),CC(agent1,agent2,f1,f2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:78
axiom(terminates(dischargeCC(Agent1, Agent2, F1, F2), cc(Agent1, Agent2, F1, F2), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:80
% [agent1,agent2,product,amount,time]
% Initiates(SendQuote(agent1,agent2,product,amount),
%           QuoteSent(agent1,agent2,product,amount),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:83
axiom(initiates(sendQuote(Agent1, Agent2, Product, Amount), quoteSent(Agent1, Agent2, Product, Amount), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:85
% [agent1,agent2,product,amount,time]
% Initiates(RequestPurchase(agent1,agent2,product,amount),
%           PurchaseRequested(agent1,agent2,product,amount),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:88
axiom(initiates(requestPurchase(Agent1, Agent2, Product, Amount), purchaseRequested(Agent1, Agent2, Product, Amount), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:90
% [agent1,agent2,product,time]
% Initiates(Deliver(agent1,agent2,product),
%           Delivered(agent1,agent2,product),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:93
axiom(initiates(deliver(Agent1, Agent2, Product), delivered(Agent1, Agent2, Product), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:95
% [agent1,agent2,amount,time]
% Initiates(SendEPO(agent1,agent2,amount),
%           EPOSent(agent1,agent2,amount),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:98
axiom(initiates(sendEPO(Agent1, Agent2, Amount), ePOSent(Agent1, Agent2, Amount), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:100
% [agent1,agent2,product,amount,f1,f2,time]
% agent1=% MusicStore &
% agent2=Jen &
% product=BritneyCD &
% amount=1 &
% f1=PurchaseRequestedJenMusicStoreBritneyCD1 &
% f2=DeliveredMusicStoreJenBritneyCD ->
% Initiates(SendQuote(agent1,agent2,product,amount),
%           CC(agent1,agent2,f1,f2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:109
axiom(initiates(sendQuote(Agent1, Agent2, Product, Amount), cc(Agent1, Agent2, F1, F2), Time),
   
    [ equals(Agent1, musicStore),
      equals(Agent2, jen),
      equals(Product, britneyCD),
      equals(Amount, 1),
      equals(F1, purchaseRequestedJenMusicStoreBritneyCD1),
      equals(F2, deliveredMusicStoreJenBritneyCD)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:111
% [agent1,agent2,product,amount,f1,f2,time]
% agent1=% Jen &
% agent2=MusicStore &
% product=BritneyCD &
% amount=1 &
% f1=DeliveredMusicStoreJenBritneyCD &
% f2=EPOSentJenMusicStore1 &
% !HoldsAt(Delivered(agent2,agent1,product),time) ->
% Initiates(RequestPurchase(agent1,agent2,product,amount),
%           CC(agent1,agent2,f1,f2),
%           time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:121
axiom(initiates(requestPurchase(Agent1, Agent2, Product, Amount), cc(Agent1, Agent2, F1, F2), Time),
   
    [ equals(Agent1, jen),
      equals(Agent2, musicStore),
      equals(Product, britneyCD),
      equals(Amount, 1),
      equals(F1, deliveredMusicStoreJenBritneyCD),
      equals(F2, ePOSentJenMusicStore1),
      not(holds_at(delivered(Agent2, Agent1, Product),
                   Time))
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:123
%; Delta

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:125
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:125
% [time]
% HoldsAt(CC(MusicStore,Jen,PurchaseRequestedJenMusicStoreBritneyCD1,DeliveredMusicStoreJenBritneyCD),time) &
% HoldsAt(PurchaseRequested(Jen,MusicStore,BritneyCD,1),time) ->
% Happens(CreateC(MusicStore,Jen,DeliveredMusicStoreJenBritneyCD),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:128
axiom(happens(createC(musicStore, jen, deliveredMusicStoreJenBritneyCD), Time),
   
    [ holds_at(cc(musicStore,
                  jen,
                  purchaseRequestedJenMusicStoreBritneyCD1,
                  deliveredMusicStoreJenBritneyCD),
               Time),
      holds_at(purchaseRequested(jen, musicStore, britneyCD, 1), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:130
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:130
% [time]
% HoldsAt(CC(MusicStore,Jen,PurchaseRequestedJenMusicStoreBritneyCD1,DeliveredMusicStoreJenBritneyCD),time) &
% HoldsAt(PurchaseRequested(Jen, MusicStore, BritneyCD, 1),time) ->
% Happens(DischargeCC(MusicStore,Jen,PurchaseRequestedJenMusicStoreBritneyCD1,DeliveredMusicStoreJenBritneyCD),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:133
axiom(happens(dischargeCC(musicStore, jen, purchaseRequestedJenMusicStoreBritneyCD1, deliveredMusicStoreJenBritneyCD), Time),
   
    [ holds_at(cc(musicStore,
                  jen,
                  purchaseRequestedJenMusicStoreBritneyCD1,
                  deliveredMusicStoreJenBritneyCD),
               Time),
      holds_at(purchaseRequested(jen, musicStore, britneyCD, 1), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:135
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:135
% [time]
% HoldsAt(CC(Jen, MusicStore, DeliveredMusicStoreJenBritneyCD, EPOSentJenMusicStore1),time) &
% HoldsAt(Delivered(MusicStore,Jen,BritneyCD),time) ->
% Happens(CreateC(Jen,MusicStore,EPOSentJenMusicStore1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:138
axiom(happens(createC(jen, musicStore, ePOSentJenMusicStore1), Time),
   
    [ holds_at(cc(jen,
                  musicStore,
                  deliveredMusicStoreJenBritneyCD,
                  ePOSentJenMusicStore1),
               Time),
      holds_at(delivered(musicStore, jen, britneyCD), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:140
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:140
% [time]
% HoldsAt(CC(Jen, MusicStore, DeliveredMusicStoreJenBritneyCD, EPOSentJenMusicStore1),time) &
% HoldsAt(Delivered(MusicStore,Jen,BritneyCD),time) ->
% Happens(DischargeCC(Jen,MusicStore,DeliveredMusicStoreJenBritneyCD, EPOSentJenMusicStore1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:143
axiom(happens(dischargeCC(jen, musicStore, deliveredMusicStoreJenBritneyCD, ePOSentJenMusicStore1), Time),
   
    [ holds_at(cc(jen,
                  musicStore,
                  deliveredMusicStoreJenBritneyCD,
                  ePOSentJenMusicStore1),
               Time),
      holds_at(delivered(musicStore, jen, britneyCD), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:145
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:145
% [time]
% HoldsAt(C(MusicStore,Jen,DeliveredMusicStoreJenBritneyCD),time) &
% HoldsAt(Delivered(MusicStore,Jen,BritneyCD),time) ->
% Happens(DischargeC(MusicStore,Jen,DeliveredMusicStoreJenBritneyCD),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:148
axiom(happens(dischargeC(musicStore, jen, deliveredMusicStoreJenBritneyCD), Time),
   
    [ holds_at(c(musicStore, jen, deliveredMusicStoreJenBritneyCD), Time),
      holds_at(delivered(musicStore, jen, britneyCD), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:150
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:150
% [time]
% HoldsAt(C(Jen,MusicStore,EPOSentJenMusicStore1),time) &
% HoldsAt(EPOSent(Jen,MusicStore,1),time) ->
% Happens(DischargeC(Jen,MusicStore,EPOSentJenMusicStore1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:153
axiom(happens(dischargeC(jen, musicStore, ePOSentJenMusicStore1), Time),
   
    [ holds_at(c(jen, musicStore, ePOSentJenMusicStore1), Time),
      holds_at(ePOSent(jen, musicStore, 1), Time)
    ]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:155
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:155
% Happens(Deliver(MusicStore,Jen,BritneyCD),0).
axiom(happens(deliver(musicStore, jen, britneyCD), t),
    [is_time(0)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:156
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:156
% Happens(SendEPO(Jen,MusicStore,1),2).
axiom(happens(sendEPO(jen, musicStore, 1), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:158
%; Gamma
% [agent1,agent2,product,amount]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:161
% !HoldsAt(QuoteSent(agent1,agent2,product,amount),0).

 /*  not(initially(quoteSent(Agent1,
   			Agent2,
   			Product,
   			Amount))).
 */
axiom(not(initially(quoteSent(QuoteSent_Param, _, _, QuoteSent_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:163
% [agent1,agent2,product,amount]
% !HoldsAt(PurchaseRequested(agent1,agent2,product,amount),0).

 /*  not(initially(purchaseRequested(Agent1,
   				Agent2,
   				Product,
   				Amount))).
 */
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:164
axiom(not(initially(purchaseRequested(PurchaseRequested_Param, _, _, PurchaseRequested_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:166
% [agent1,agent2,product]
% !HoldsAt(Delivered(agent1,agent2,product),0).
 %  not(initially(delivered(Agent1,Agent2,Product))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:167
axiom(not(initially(delivered(Delivered_Param, _, Delivered_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:169
% [agent1,agent2,f]
% !HoldsAt(C(agent1,agent2,f),0).
 %  not(initially(c(Agent1,Agent2,F))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:170
axiom(not(initially(c(C_Param, _, C_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:172
% [agent1,agent2,f1,f2]
% !HoldsAt(CC(agent1,agent2,f1,f2),0).
 %  not(initially(cc(Agent1,Agent2,F1,F2))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:173
axiom(not(initially(cc(Cc_Param, _, _, Cc_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:175
% [agent1,agent2,amount]
% !HoldsAt(EPOSent(agent1,agent2,amount),0).
 %  not(initially(ePOSent(Agent1,Agent2,Amount))).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:176
axiom(not(initially(ePOSent(EPOSent_Param, _, EPOSent_Ret))),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:178
% completion Delta Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:179
==> completion(delta).
==> completion(happens).

% range time 0 4
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:181
==> range(time,0,4).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:182
==> range(offset,1,1).

% range amount 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Chapter14/NetBill3.e:183
==> range(amount,1,1).
%; End of file.
