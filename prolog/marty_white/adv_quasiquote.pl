

parse_kind(Type,String,Logic):- trace_or_throw(parse_kind(Type,String,Logic)).

flatten_ul(NewData,NewDataF):- var(NewData),!,NewDataF=NewData.
flatten_ul(NewData,NewDataF):- is_list(NewDataM),flatten(NewData,NewDataM),NewData\==NewDataM,!,flatten_ul(NewDataM,NewDataF).
flatten_ul([NewData],NewDataF):- !, flatten_ul(NewData,NewDataF).
flatten_ul(NewData,NewDataF):- NewData=NewDataF.

cleanup_elements( Ctx,Dom,Term):- is_list(Dom),must_maplist(cleanup_elements(Ctx),Dom,Term).
cleanup_elements(_Ctx,Dom,Term):- var(Dom),Term=Dom,!.
cleanup_elements(_Ctx,Dom,Term):- string(Dom),into_text80(Dom,Term),!.
cleanup_elements(_Ctx,Dom,Term):- atom(Dom),into_text80(Dom,TermM),!, (TermM=[Term] -> true; TermM=Term),!.
cleanup_elements(_Ctx,Dom,Term):- \+ compound(Dom), Term = Dom, !.
cleanup_elements( Ctx,element(M:S,[],Data),Term):-
  cleanup_elements(e(M:S,Ctx),Data,NewData),
  flatten_ul(NewData,NewDataF),
  P=..[S,NewDataF],!,
  cleanup_elements(Ctx,M:P,Term).

cleanup_elements( Ctx,element(S,[],Data),Term):- 
  cleanup_elements(e(S,Ctx),Data,NewData),
  flatten_ul(NewData,NewDataF),
  P=..[S,NewDataF],!,
  cleanup_elements(Ctx,P,Term).

cleanup_elements( Ctx,Dom,Term):- 
  compound_name_arguments(Dom,F,Args),
  cleanup_elements( Ctx,Args,MArgs),
  (is_list(MArgs) 
    -> (length(MArgs,ML),length(Args,L),
            (ML == L 
             -> compound_name_arguments(Term,F,MArgs)
               ; Term =..[F,MArgs]))
   ; (Term=MArgs)).
  

i7_term(Ctx, Dom):- dmsg(i7_term(Ctx, Dom)).

i7_syntax_term(TiM, M, Vars, Dict, Dom, i7_term(Out, TermF)):-
  Ctx = v(TiM, M, Vars, Dict),
  copy_term(Ctx:Dom,CtxC:DomC),
  cleanup_elements(CtxC,DomC,Term),flatten_ul(Term,TermF),
  cleanup_elements(CtxC,CtxC,Out).

i7_syntax(TiM, M, Content, Vars, Dict, Term):-
    must_be(list, Dict),
    with_quasi_quotation_input(
        Content, In,
        load_sgml(In, Dom,
                  [  dialect(html5),
                     attribute_value(string),
                     cdata(string),
                     system_entities(true),
                     space(remove),
                     syntax_errors(quiet),
                     case_preserving_attributes(true),
                     case_sensitive_attributes(false),
                  max_errors(-1)])),
    i7_syntax_term(TiM, M, Vars, Dict, Dom, Term).

:- dynamic(system:i7/4).
:- module_transparent(system:i7/4).
:- export(system:i7/4).
:- mu:import(system:i7/4).
/*
testi7(a) :- Subj=7, Y={|i7(Subj)|| fooSubj |}, writeln(Y).

testi7(b) :- Z = {|i7(7)|| oogle |}, writeln(Z).

testi7(c) :- Y={|i7(7)|| fooSubj |}, writeln(Y).

:- listing(testi7/1).
*/

:- use_module(library(quasi_quotations)).

% so we recognize {|i7(type(Subj))||.... |}
:- quasi_quotation_syntax(system:i7).
%!	i7_syntax(+Vars:list, +Dict:list, -Term:list) is det
%
%	called at compile time to convert the quasiquote to
%	the target language
%
%	We make ourselves look like the English quoter
%	so you can insert English in the content fed to html//1
%	or {|i7(Subj)||<p>some html with</p>|}
system:i7(Content, Vars, Dict, Term) :- 
    '$current_typein_module'(TiM), 
    strip_module(_,M,_),
    i7_syntax(TiM, M, Content, Vars, Dict, Term).



