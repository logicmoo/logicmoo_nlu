
:- use_module(library(logicmoo_common)).

:- expects_dialect(sicstus).

cg_df_to_term(In,Out):- any_to_string(In,Str),
  replace_in_string(['('='{',')'='}'],Str,Str0),
  atom_to_term(Str0,Out,Vars),
  maplist(call,Vars).

