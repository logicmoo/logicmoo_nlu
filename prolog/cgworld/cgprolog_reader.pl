
                 
cginput:is_module.
:- current_op(X,Y,'->'),cginput:op(X,Y,'<-').
:- current_op(X,Y,(+)),cginput:op(X,Y,(*)).
:- cginput:current_op(X,Y,(*)),cginput:op(X,Y,(?)).
:- cginput:current_op(X,Y,(*)),cginput:op(X,Y,(@)).

cg_df_to_term(In,Out):- any_to_string(In,Str),
  % replace_in_string(['('='{',')'='}'],Str,Str0),
  replace_in_string(['XXX'='XXX'],Str,Str0),
  read_term_from_atom(Str0,Out,[module(cginput),variable_names(Vars)]),
  maplist(call,Vars).

assert_cg(X):- \+ compound(X),cg_df_to_term(X,Y),!,assert_cg(Y).
assert_cg(X):- format("~N~p.~n",[X]).


cg_reader_text("
[Person: Tom]<-(Expr)<-[Believe]->(Thme)-
     [Proposition:  [Person: Mary *x]<-(Expr)<-[Want]->(Thme)-
     [Situation:  [?x]<-(Agnt)<-[Marry]->(Thme)->[Sailor] ]].
").

cg_reader_text("[Cat: @every]->(On)->[Mat]").
cg_reader_text("

[Go]-
   (Agnt)->[Person: John] -
   (Dest)->[City: Boston] -
   (Inst)->[Bus].

").
cg_reader_text("[Cat: ?x]-(On)->[Mat].").
cg_reader_tests :- forall(cg_reader_text(X),assert_cg(X)).
/*

?- cg_reader_tests.

Outputs:

['Person':'Tom']<-'Expr'<-['Believe']->'Thme'-['Proposition':['Person':'Mary'*x]<-'Expr'<-['Want']->'Thme'-['Situation':[?x]<-'Agnt'<-['Marry']->'Thme'->['Sailor']]].

['Cat': @every]->'On'->['Mat'].

['Go']-'Agnt'->['Person':'John']-'Dest'->['City':'Boston']-'Inst'->['Bus'].

['Cat': ?x]-'On'->['Mat'].

*/
