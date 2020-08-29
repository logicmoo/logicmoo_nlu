
:- module(kb0988_supp,[make_kb_stats/0]).
:- set_module(class(library)).
% ?- use_module(plkb0988_kb_supp).

%:- ifexistspldata('plkb0988/plkb0988_kb.qlf')).
%:- reexport('plkb0988_kb.qlf').
:- nl_iface:rexport_qlf(kb0988_supp,plkb0988_kb).
%:- endif.

make_stats(_F,_A).

make_kb_stats:- forall(kb_pred_0988(F,A),make_stats(F,A)).  

