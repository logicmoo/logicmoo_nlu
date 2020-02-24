/*                   
% NomicMUD: A MUD server written in Prolog
% Maintainer: Douglas Miles
% Dec 13, 2035
%
% Bits and pieces:
%
% LogicMOO, Inform7, FROLOG, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
% 
% Copyright (C) 2004 Marty White under the GNU GPL 
% Sept 20,1999 - Douglas Miles
% July 10,1996 - John Eikenberry 
%
% Logicmoo Project changes:
%
% Main file.
%
*/
% Marty's Tokenizer/Scanner/Lexer, written in Prolog.
/*
:- module(adv_io,[
 read_line_to_tokens/4,
 clear_overwritten_chars/1,
 is_main_console/0,
 overwrote_prompt/1,ensure_has_prompt/1,
 player_format/2,
 player_format/3,
 bugout3/2,
 bugout1/1,
 bugout3/3,
 with_tty/2,
 pprint/2,
 init_logging/0,
 stop_logging/0,
 bug/1,
 agent_to_input/2,
 agent_to_output/2,
 get_overwritten_chars/2,
 restore_overwritten_chars/1,
 %setup_console/0, 
 setup_console/1,

 our_current_portray_level/1,

 current_error_io/1,set_error/1, redirect_error_to_string/2
   
   /*post_message/1,
   post_message/2,
   sv_message/2,
   svo_message/3,
   svi_message/3,
   svoi_message/4,*/ ]).
*/
:- dynamic(mu_global:wants_quit/3).
:- dynamic(mu_global:console_tokens/2).
:- dynamic(mu_global:console_io_player/3).
:- volatile(mu_global:console_io_player/3).



current_error_io(Stream) :- stream_property(Stream, alias(user_error)), !. % force det. 
current_error_io(Stream) :- stream_property(Stream, alias(current_error)), !. % force det. 
current_error_io(Stream) :- stream_property(Stream, file_no(2)), !. % force det. 
set_error(Stream) :- set_stream(Stream, alias(user_error)). 

:- meta_predicate redirect_error_to_string(0,-).
redirect_error_to_string(Goal, String) :- 
  current_error_io(OldErr),
  new_memory_file(Handle),  
  setup_call_cleanup( 
   open_memory_file(Handle, write, Err),
   setup_call_cleanup( 
    set_error(Err),
    (once(Goal),
     flush_output(Err)), 
    set_error(OldErr)), 
   close(Err)),
  memory_file_to_string(Handle,String).


user:setup_console :- current_input(In),setup_console(In).

:- dynamic(mu_global:has_setup_setup_console/1).
:- volatile(mu_global:has_setup_setup_console/1).

setup_console(In):- mu_global:has_setup_setup_console(In),!.
setup_console(In):- 
 assert(mu_global:has_setup_setup_console(In)),
 set_prolog_flag(color_term, true),
 ensure_loaded(library(prolog_history)),
 (current_prolog_flag(readline,X)-> ensure_loaded(library(X));ensure_loaded(library(editline))),
 %ensure_loaded(library(editline)),
 '$toplevel':(
   
  setup_colors,
  setup_history,
  setup_readline),!.


:- dynamic(mu_global:input_log/1).
init_logging :- !.
init_logging :-
 get_time(StartTime),
 convert_time(StartTime, StartTimeString),
 open('~/.nomic_mu_input.log', append, FH),
 format(FH, '\n==== ADVENTURE INPUT, ~w\n', [StartTimeString]),
 asserta(mu_global:input_log(FH)).
stop_logging :-
 mu_global:input_log(FH) -> close(FH) ; true.

% :- dynamic(bugs/1). % Types of logging output.
%bugs([general, printer, planner, autonomous]).
bug_contexts([always, general, planner, autonomous, telnet, general, parser, printer]).
:- bug_contexts(List),foreach(member(E,List),debug(adv(E))).
:- debug(adv_skip(printer)).
:- debug(adv(unknown)).
:- nodebug(adv(unknown)).
:- debug(adv(all)).
%bugs([general, autonomous]).

bug(B) :- debugging(B,false),!,fail.
bug(B) :- debugging(adv_skip(B),true),!,fail.
bug(_) :- debugging(adv_skip(all),true),!,fail.
bug(_) :- debugging(adv(all)).
bug(B) :- debugging(adv(B),YN),!,YN.
bug(_) :- debugging(adv(unknown),YN),!,YN.


term_to_pretty_string(L,LinePrefix,SO):- 
  string_concat("\n",LinePrefix,SC),
  sformat(S,'~@',[print_reply(L)]), 
  split_string(S, "", "\s\t\n", [SS]), 
  replace_in_string("\n",SC,SS,SSS),
  string_concat(LinePrefix,SSS,SO).

  

bugout1(Fmt) :- 
  \+ \+ 
   ((mu:simplify_dbug(Fmt, FmtS), 
     term_to_pretty_string(FmtS,"% ",SSS), 
     bugout4("",'~s~n', [SSS], always))).

bugout3(Fmt, DebugDest) :- 
   bugout3('~q', [Fmt], DebugDest).

bugout3(Fmt, Args, DebugDest) :- 
  \+ \+
     ((mu:simplify_dbug(Args, ArgsS),
       bugout4("% ", Fmt, ArgsS, DebugDest))).

bugout4(Prefix, Fmt, Args, DebugDest) :-
 bug(DebugDest),
 !, 
 ansi_format([fg(cyan)], '~N~w', [Prefix]), ansi_format([fg(cyan)], Fmt, Args),
 must_det((stdio_player(Player),overwrote_prompt(Player))),!.
bugout4(_, _, _, _).

      
%:- set_stream(user_input,buffer_size(1)).
%:- set_stream(user_input,buffer(none)).
%:- set_stream(user_input,timeout(0.1)).


pprint(Term, B) :-
 bug(B),
 !,
 player_format('~N~@~N',[our_pretty_printer(Term)]),!.
pprint(_, _).

:- use_module(library(logicmoo/portray_vars)).

:- flag(our_pretty_printer,_,0).
our_current_portray_level(Level) :- flag(our_pretty_printer,Was,Was),Was=Level.
:- export(our_current_portray_level/1).
%our_pretty_printer(Term):- !, fmt90(Term).
our_pretty_printer(Term):- compound(Term),
 \+ \+ setup_call_cleanup( flag(our_pretty_printer,Was,Was+1),
                     \+ \+ our_prolog_pretty_print(Term),
                     flag(our_pretty_printer,_,Was)).
% our_pretty_printer(Term):- format(current_output,'~w',[Term]).
our_pretty_printer(Term):- fmt90(Term).

our_prolog_pretty_print(Term):- 
  pretty_numbervars(Term,Term2),
  prolog_pretty_print:print_term(Term2, [ output(current_output)]).


:- export(stdio_player/1).
stdio_player(Agent):- nonvar(Agent),!, stdio_player(AgentWas), !, AgentWas == Agent.
stdio_player(Agent):- stream_property(InStream, fileno(0)), mu_global:console_io_player(InStream, _, Agent),!.
stdio_player(Agent):- 
  Agent = 'player~1',
 \+ mu_global:console_io_player(_, _, Agent). 

:- thread_local(mu_global:current_agent_tl/1).
current_player(Agent):- mu_current_agent(AgentWas),!,AgentWas= Agent.

mu_current_agent(Agent):- current_agent_(AgentWas),!,AgentWas= Agent.
:- export(mu_current_agent/1).
current_agent_(Agent):- mu_global:current_agent_tl(Agent),!.
current_agent_(Agent):- current_input(InStream),mu_global:console_io_player(InStream, _, Agent).
current_agent_(Agent):- current_output(OutStream),mu_global:console_io_player(_, OutStream, Agent).
%current_agent_(Agent):- thread_self(Id),mu_global:console_host_io_history_unused(Id,_Alias,_InStream,_OutStream,_Host,_Peer, Agent).
current_agent_('player~1').

:- dynamic(mu_global:need_redraw/1).
overwrote_prompt(Agent):- retractall(mu_global:need_redraw(Agent)), asserta(mu_global:need_redraw(Agent)),!.

ensure_has_prompt(Agent):-  
 ignore((retract(mu_global:need_redraw(Agent)),
  ttyflush,
  player_format(Agent,'~N~w@spatial> ',[Agent]),retractall(mu_global:need_redraw(Agent)))),
  ttyflush.


player_format(Fmt,List):-
 mu_current_agent(Agent) ->
 notrace(player_format(Agent, Fmt, List)).

player_format(Agent,Fmt,List):-
 agent_to_output(Agent,OutStream),
 must_det(format(OutStream,Fmt,List)),!,
 overwrote_prompt(Agent).
player_format(Agent,Fmt,List):- must_det(format(Fmt,List)),
 overwrote_prompt(Agent).




:- dynamic user:portray/1.
:- multifile user:portray/1.
:- module_transparent user:portray/1.
user:portray(Logic) :- fail,  
 compound(Logic), 
 our_current_portray_level(Level),
 our_portray_at_level(Level, Logic),!.

our_portray_at_level(Level,Logic):- 
 Level<2,
 our_pretty_printer(Logic).

%user:portray(ItemToPrint) :- print_item_list(ItemToPrint). % called by print.



identifer_code(Char) :- char_type(Char, csym).
identifer_code(Char) :- char_type(Char,to_lower('~')).
identifer_code(Char) :- memberchk(Char, `-'`).

punct_code(Punct) :- memberchk(Punct, `,.?;:!&\"`), !. % '
punct_code(Punct) :- \+ identifer_code(Punct), char_type(Punct, graph).

% -- Split a list of chars into a leading identifier_mw and the rest.
% Fails if list does not start with a valid identifier_mw.
identifier_mw([-1|_String], _, _) :- !, fail. % char_type pukes on -1 (EOF)
identifier_mw([Char|String], [Char|Tail], Rest) :-
 identifer_code(Char),
 identifier1(String, Tail, Rest).

identifier1(String, Id, Rest) :-
 identifier_mw(String, Id, Rest), !.
identifier1(String, [], String).

% -- Split a list of chars into a leading token_mw and the rest.
% Fails if list does not start with a valid token_mw.
token_mw(String, Token, Rest) :-
 identifier_mw(String, Token, Rest), !. % Is it an identifier_mw?
%token_mw(String,id(Atom),Rest) :-
% identifier_mw(String, Text, Rest), !, atom_codes(Atom,Text).
token_mw([Punct|Rest], [Punct], Rest) :-
 %char_type(Punct, punct), !. % Is it a single char token_mw?
 punct_code(Punct), !. 

% -- Completely tokenize_mw a string.
% Ignores unrecognized characters.
tokenize_mw([],[]) :- !.
tokenize_mw([-1],[`quit`]) :- !.
tokenize_mw(String, [Token|Rest]) :-
 token_mw(String, Token, Tail),
 !,
 tokenize_mw(Tail, Rest).
tokenize_mw([_BadChar|Tail], Rest) :-
 !,
 tokenize_mw(Tail, Rest).

log_codes([-1]).
log_codes(_) :- \+ mu_global:input_log(_),!.
log_codes(LineCodes) :-
 ignore(notrace(catch((atom_codes(Line, LineCodes),
 mu_global:input_log(FH),
 format(FH, '>~w\n', [Line])),_,true))).


%! skip_to_nl_mw(+Input) is det.
%
% Read input after the term. Skips white space and %... comment
% until the end of the line or a non-blank character.

skip_to_nl_mw(In) :-
 repeat,
 peek_char(In, C),
 ( C == '%'
 -> skip(In, '\n')
 ; char_type(C, space)
 -> get_char(In, _),
  C == '\n'
 ; true
 ),
 !.


:- meta_predicate with_tty(+,0).
with_tty(In,Goal):- 
 stream_property(In,tty(Was)),
 stream_property(In,timeout(TWas)), 
 New = '', % format(atom(New),'~w@spatial> ',[Agent]),
 setup_call_cleanup(( 
 set_stream(In, tty(true)),set_stream(In, timeout(infinite))), 
  setup_call_cleanup(prompt(Old,New),
  (%skip_to_nl_mw(In),
  Goal), prompt(_,Old)),
 (set_stream(In, timeout(TWas)),set_stream(In, tty(Was)))),!.
         
% -- Input from stdin, convert to a list of atom-tokens.

read_line_to_tokens(_Agent,In,Prev,Tokens):- 
 setup_console(In),
 with_tty(In,
            (read_line_to_codes(In,LineCodesR),read_pending_input(In,_,[]))), 
 append(Prev,LineCodesR,LineCodes),
 NegOne is -1,  
 must_det(line_to_tokens(LineCodes,NegOne,Tokens0)),!,
 must_det(Tokens0=Tokens).

line_to_tokens([],_,[]):-!.
line_to_tokens(NegOne,NegOne,end_of_file):-!.
line_to_tokens([NegOne],NegOne,end_of_file):-!.

line_to_tokens(LineCodes,NegOne,Tokens) :- 
 append([L],NewLineCodes,LineCodes),
 member(L,[10,13,32]),!,
 line_to_tokens(NewLineCodes,NegOne,Tokens).
line_to_tokens(LineCodes,NegOne,Tokens) :- 
 append(NewLineCodes,[L],LineCodes),
 member(L,[10,13,32]),!,
 line_to_tokens(NewLineCodes,NegOne,Tokens).

line_to_tokens(LineCodes,_NegOne,Tokens) :- 
 last(LineCodes,L),
 memberchk(L,[46, 41|`.)`]), 
 notrace(catch((read_term_from_codes(LineCodes,Term,
  [syntax_errors(error),var_prefix(false),
  % variables(Vars),
  variable_names(VNs),cycles(true),dotlists(true),singletons(_)])),_,fail)),
 nb_setval('$variable_names',VNs),
 Tokens=Term,!.

line_to_tokens(LineCodes,_,Tokens):- 
 ignore(log_codes(LineCodes)),!,
 tokenize_mw(LineCodes, TokenCodes),!,
 % Convert list of list of codes to list of atoms:
 findall(Atom, (member(Codes, TokenCodes), atom_codes(Atom, Codes)), Tokens), 
 nop(save_to_history(LineCodes)),
 !.

:- multifile(prolog:history/2).
save_to_history(LineCodes):- 
 ignore(notrace((
 atom_string(AtomLineCodes,LineCodes), 
 current_input(In),
 % dmsg(LineCodes->AtomLineCodes),
 ignore(catch('$save_history_line'(AtomLineCodes),_,true)),
 ignore(catch(prolog:history(user_input, add(AtomLineCodes)), _, true)),
 ignore(catch(prolog:history(In, add(AtomLineCodes)), _, true))))).


:- dynamic(overwritten_chars/2).
:- volatile(overwritten_chars/2).

add_pending_input(Agent,C):- agent_to_input(Agent,In),add_pending_input0(In,C).
add_pending_input0(In,C):- retract(overwritten_chars(In,SoFar)),append(SoFar,[C],New),!,assert(overwritten_chars(In,New)).
add_pending_input0(In,C):- assert(overwritten_chars(In,[C])).

clear_overwritten_chars(Agent):- agent_to_input(Agent,In),retractall(overwritten_chars(In,_SoFar)).
restore_overwritten_chars(Agent):- agent_to_input(Agent,In),overwritten_chars(In,SoFar),format('~s',[SoFar]).


stream_pairs(In,Out):- nonvar(In), var(Out), stream_property(In,file_no(F)),stream_property(Out,file_no(F)),stream_property(Out,output),!.
stream_pairs(In,Out):- nonvar(Out), var(In), stream_property(Out,file_no(F)),stream_property(In,file_no(F)),stream_property(In,input),!.
stream_pairs(In,Out):- mu_global:console_io_player(In,Out, _Agent).
stream_pairs(In,Out):- var(In), !, stream_property(Out, input), \+ stream_property(Out, file_name(_)), once(stream_pairs(In,Out)), \+ using_stream_in(In,_OtherAgent).
%stream_pairs(In,Out):- var(Out), !, stream_property(Out, output), \+ stream_property(Out, fileno(2)), once(stream_pairs(In,Out)), \+ using_stream_in(In,_OtherAgent).

using_stream_in(Stream,OtherAgent):- mu_global:console_io_player(Stream, _, OtherAgent).
%using_stream_in(Stream,OtherAgent):- mu_global:console_host_io_history_unused(_Id,_Alias,Stream,_Out,_Host, _Peer, OtherAgent), \+ mu_global:console_io_player(Stream, OtherAgent).

using_stream(Stream,OtherAgent):- using_stream_in(Stream,OtherAgent).
using_stream(Stream,OtherAgent):- mu_global:console_io_player(_, Stream, OtherAgent).

agent_to_output(Agent, Stream):- mu_global:console_io_player(_, Stream, Agent).
agent_to_output(Agent, Stream):- mu_global:console_io_player(InStream, _, Agent),stream_pairs(InStream, Stream).
agent_to_output(_Agent,Stream):- current_output(Stream), \+ using_stream(Stream,_Other),!.
agent_to_output(_Agent,Stream):- stream_property(Stream, file_no(1)), \+ using_stream(Stream,_Other),!.
agent_to_output(Agent, Stream):- fail, agent_to_input(Agent,In), stream_property(In,file_no(F)),stream_property(Stream,file_no(F)),stream_property(Stream,write),!.
agent_to_output(Agent, Stream):- throw(agent_io(Agent,agent_to_output(Agent, Stream))).
%agent_to_output(Agent, Stream):- mu_global:console_host_io_history_unused(_Id,_Alias,_In,Stream,_Host, _Peer, Agent),!.
       
% agent_to_input(Agent,In):- overwritten_chars(Agent,_SoFar),In=Agent,
agent_to_input(Agent, Stream):- using_stream_in(Stream,Agent),!.
agent_to_input(_Agent,Stream):- current_input(Stream), \+ using_stream(Stream,_Other),!.
agent_to_input(_Agent,Stream):- stream_property(Stream, file_no(0)), \+ using_stream(Stream,_Other),!.
agent_to_input(Agent, Stream):- fail, agent_to_output(Agent,Stream), stream_property(Stream,file_no(F)),stream_property(Stream,file_no(F)),stream_property(Stream,read),!.
agent_to_input(Agent, Stream):- throw(agent_io(Agent,agent_to_input(Agent, Stream))).
%agent_to_input(Agent, Stream):- mu_global:console_host_io_history_unused(_Id,_Alias,Stream,_Out,_Host, _Peer, Agent),!.

is_main_console:- current_input(Stream), stream_property(Stream, file_no(0)).

user:ci:- ci('telnet~1').
user:ci(Agent):- 
 agent_to_input(Agent,In),
 agent_to_output(Agent,Out),
 forall(stream_property(In,P),bugout1(ins(P))),
 listing(overwritten_chars),
 %line_position(In,LIn),
 %bugout1(ins(line_position(In,LIn))),
 forall(stream_property(Out,P),bugout1(outs(P))),
 line_position(Out,LInOut),!,bugout1(outs(line_position(Out,LInOut))),!.

get_overwritten_chars(Agent,Chars):- agent_to_input(Agent,In),overwritten_chars(In,Chars).
get_overwritten_chars(_Agent,[]).


wordlist(List) --> optional_ws, wordlist1(List), optional_ws.
optional_ws --> whitespace.
optional_ws --> {true}.
wordlist1(List) --> wordlist2(List).
wordlist1([]) --> {true}.
wordlist2([X|Y]) --> word(X), whitespace, wordlist2(Y).
wordlist2([X]) --> word(X).
%wordlist([X|Y]) --> word(X), whitespace, wordlist(Y).
%wordlist([X]) --> whitespace, wordlist(X).
%wordlist([X]) --> word(X).
%wordlist([X]) --> word(X), whitespace.

%word(W) --> charlist(X), {name(W,X)}.
word(W) --> charlist(X), {atom_codes(W,X)}.

charlist([X|Y]) --> chr(X), charlist(Y).
charlist([X]) --> chr(X).

chr(X) --> [X], {X>=48}.

whitespace --> whsp, whitespace.
whitespace --> whsp.

whsp --> [X], {X<48}.

:- initialization(setup_console,program).

:- initialization(setup_console,restore).
