% ===================================================================
% File 'parser_fwd.pl'
% Purpose: English to KIF conversions from SWI-Prolog
% This implementation is incomplete
% Maintainer: Douglas Miles
% Contact: $Author: dmiles $users.sourceforge.net ;
% Version: 'parser_fwd.pl' 1.0.0
% Revision:  $Revision: 1.3 $
% Revised At:   $Date: 2012/06/06 15:43:15 $
% ===================================================================

:-module(parser_fwd,[]).


:- '$set_source_module'(baseKB).

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% MAIN %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================

system:t33f:- make,t33fa.
system:t33fa:- forall((must_test_fwd(Sent,Type),Type\==ask),nl_fwd(Sent)).


baseKB:sanity_test:- t33fa.

system:nl_fwd :- locally(tracing80,
             with_no_assertions(lmconf:use_cyc_database,
                  locally(t_l:usePlTalk,(told,repeat,prompt_read('BRATKO> ',U),
                            to_wordlist_atoms(U,WL),(WL==[bye];WL==[end,'_',of,'_',file];ain(nl_fwd(WL))))))).

irc_cmd:irc_invoke_nlp(Channel,User,_Say,"list"):-     
   ID = uid(User,_),
   OldPipeline = pipeline(ID,_Name,_Value),
   forall(OldPipeline, eggdrop:say(Channel:User,OldPipeline)).  

% :- trace.
irc_cmd:irc_invoke_nlp(Channel,User,Say,Args):- 
   nop(say(irc_invoke_nlp(Channel,User,Say,Args))),
   parser_tokenize:into_text80(Args,Text80),parser_tokenize:into_acetext(Text80,Ace),  
   ID = uid(User,Ace),
   OLDID = uid(User,_),
   OldPipeline = pipeline(OLDID,_Name,_Value),
   forall(OldPipeline, ain(\+ OldPipeline)),
   ain(pipeline(ID,monitor,send_to(User,Channel))),
   ain(pipeline(ID,text80,Text80)),
   ain(pipeline(ID,acetext,Ace)).

irc_cmd:irc_invoke_fallback(Channel,User,Say,Text):- dmsg(irc_cmd:irc_invoke_fallback(Channel,User,Say,Text)).

%:- virtualize_source_file(bodies).

pipe_to_fwc(M,P,add_conversion(From,M:Pred,To)):- compound(P), P=..[Pred,+From,-To],atom(From),!.

:- fixup_exports.

%:- share_mp(add_conversion/3).
%:- share_mp(pipeline/3).
%:- share_mp(saved_aceparagraph_to_drs/7).
% :- share_mp(saved_aceparagraph_to_drs/7).
%:- share_mp((==>)/2).

:- include(library(pfc_syntax)).  
%:- virtualize_source_file(heads).

(nl_fwd(Sentence)/gensym(test,Id)) ==> pipeline(Id,input,Sentence).
(nl_fwd(Sentence,Kind)/gensym(Kind,Id)) ==> pipeline(Id,input,Sentence).

system:nl_fwd(S):- awc, ground(S), ain(nl_fwd(S)).
nl_fwd(S,K):- awc, ground(S), ain(nl_fwd(S,K)).

%:- mpred_trace_all.

add_conversion(From,Pred,To) ==>
   ((pipeline(ID,From,VarFrom),{t(Pred,VarFrom,VarTo)}) ==> pipeline(ID,To,VarTo)).

% ==> add_conversion(input,to_wordlist_atoms,text80).
==> add_conversion(text80,bratko_parse,lf_b).
==> add_conversion(lf_b,bratko_clausify,clause_b).
==> add_conversion(clause_b,bratko_reply,reply_b).

==> add_conversion(text80,parser_chat80:sent_to_parsed,parsed80).
==> add_conversion(parsed80,parser_chat80:sent_to_prelogic,prelogic80).


(pipeline(ID,acetext,VarFrom), 
  { parser_all:my_aceparagraph_to_drs(VarFrom, Sentences_set, SyntaxTrees,UnresolvedDrsCopy, Drs0, Messages) }) ==>
  saved_aceparagraph_to_drs(ID,VarFrom, Sentences_set, SyntaxTrees,UnresolvedDrsCopy, Drs0, Messages).

saved_aceparagraph_to_drs(ID, _VarFrom, Sentences_set, SyntaxTrees,UnresolvedDrsCopy, Drs0, Messages)==>
  (pipeline(ID,sentences_set,Sentences_set),pipeline(ID,syntaxTrees,SyntaxTrees),
   pipeline(ID,unresolvedDrsCopy,UnresolvedDrsCopy),pipeline(ID,drs0,Drs0),pipeline(ID,messages,Messages)).

(installed_converter(M,P),{pipe_to_fwc(M,P,FWCode)})==> FWCode.

uninteresting_pipe(sentences_set).
uninteresting_pipe(monitor).
uninteresting_pipe(input).
uninteresting_pipe(acetext).
uninteresting_pipe(text80).


((pipeline(ID,monitor,send_to(User,Channel)),   
      pipeline(ID,Name,Value),  
     {\+ uninteresting_pipe(Name), numbervars(Value,0,_,[attvar(skip)])})
  ==> tell_aboutonce(Channel:User,Name=Value)).

tell_aboutonce(N,V) ==> {once(say(N,V))}.

% =================================================================
% %%%%%%%%%%%%%%%%%%%%%%% examples/tests %%%%%%%%%%%%%%%%%%%%%%%
% =================================================================
% :- mpred_trace_all.

% list_exceptions:- thread_property(T,status(exception(E))).
% :- prolog_load_context(source,File),asserta(used_ain_syntax(File,M,I, (:- ain_in_thread(M,I)))).
%:- set_fc_mode(thread).

% ==> nl_fwd("every man that paints likes monet .",tell).
% ==> nl_fwd("a woman that admires john paints .",tell).
% ==> nl_fwd("every woman that likes a man that admires monet paints.",tell).
/*
==> nl_fwd("Every woman waits.", tell).
==> nl_fwd("all men are mortal.",tell).
==> nl_fwd("what countries are there in europe ?", ask).
==> nl_fwd("bertrand is an author .",tell).
==> nl_fwd("bertand is in europe.", tell).

==> nl_fwd("john likes annie .",tell).
==> nl_fwd("annie likes a man that admires monet .",tell).
==> nl_fwd("bertrand wrote principia .",tell).
==> nl_fwd("a author wrote principia .",tell).
==> nl_fwd("a happy author wrote principia .",tell).
==> nl_fwd("is bertrand an author ?",ask).
==> nl_fwd("is bertrand an author ?",ask).
==> nl_fwd("every author is a programmer .",tell).
==> nl_fwd("is bertrand an programmer ?",ask). % Just a sanity test
==> nl_fwd("what did bertrand write ?",ask).
==> nl_fwd("what is a book ?",ask).
==> nl_fwd("what is a author ?",ask).
==> nl_fwd("principia is a book .",tell).
==> nl_fwd("bertrand is bertrand .",tell).
==> nl_fwd("is bertrand bertrand ?",ask).
==> nl_fwd("shrdlu halts .",tell).
==> nl_fwd("every student wrote a program .",tell).
==> nl_fwd("terry writes a program .",tell).
==> nl_fwd("terry writes a program that halts .",tell).

==> nl_fwd("an author of every book wrote a program .",tell).
==> nl_fwd("a man hapilly maried paints .",tell).
==> nl_fwd("a hapilly maried man paints .",tell).
==> nl_fwd("a man who knows paints .",tell).
==> nl_fwd("a man gives something .",tell).
==> nl_fwd("a man gives his word .",tell).

==> nl_fwd("a man of his word paints .",tell).
==> nl_fwd("a man paints .",tell).
==> nl_fwd("a man that paints paints .",tell).
==> nl_fwd("a man walks .",tell).
==> nl_fwd("a man that walks paints .",tell).

==> nl_fwd("a man of his word that walks paints .",tell).
==> nl_fwd("the cost of what the product is changes .",tell).

==> nl_fwd("bertrand wrote nothing .",tell).
==> nl_fwd("it halts .",tell).
==> nl_fwd("bertrand wrote a book .",tell).

% passes the above and fails the below
==> nl_fwd("bertrand wrote .",tell).
==> nl_fwd("bertrand wrote a book about gottlob .",tell).
==> nl_fwd("bertrand wrote about gottlob .",tell).
==> nl_fwd("bertrand wrote nothing about gottlob .",tell).

==> nl_fwd("what did alfred give to bertrand ?",ask).
==> nl_fwd("alfred gave a book to bertrand .",tell).
==> nl_fwd("who did alfred give a book to ?",ask).

==> nl_fwd("alfred gave it .",tell).
==> nl_fwd("alfred gave a book .",tell).
*/
% :- get_fc_mode(direct).

:- threads.


