:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).

 /*  loading(always,
   	'includes/SaaSPatterns/PolicySetPatterns/policySetModel.e').
 */

% event E_policysetPermit(policyset)
 %  event(e_policysetPermit(policyset)).
==> mpred_prop(e_policysetPermit(policyset),event).
==> meta_argtypes(e_policysetPermit(policyset)).

% event E_policysetDeny(policyset)
 %  event(e_policysetDeny(policyset)).
==> mpred_prop(e_policysetDeny(policyset),event).
==> meta_argtypes(e_policysetDeny(policyset)).

% event E_policysetDontApply(policyset)
 %  event(e_policysetDontApply(policyset)).
==> mpred_prop(e_policysetDontApply(policyset),event).
==> meta_argtypes(e_policysetDontApply(policyset)).

% fluent F_policysetPermitted(policyset)
 %  fluent(f_policysetPermitted(policyset)).
==> mpred_prop(f_policysetPermitted(policyset),fluent).
==> meta_argtypes(f_policysetPermitted(policyset)).

% fluent F_policysetDenied(policyset)
 %  fluent(f_policysetDenied(policyset)).
==> mpred_prop(f_policysetDenied(policyset),fluent).
==> meta_argtypes(f_policysetDenied(policyset)).

% fluent F_policySetNotApplicable(policyset)
 %  fluent(f_policySetNotApplicable(policyset)).
==> mpred_prop(f_policySetNotApplicable(policyset),fluent).
==> meta_argtypes(f_policySetNotApplicable(policyset)).

% predicate PolicysetHaspolicies(policyset,policy)
 %  predicate(policysetHaspolicies(policyset,policy)).
==> mpred_prop(policysetHaspolicies(policyset,policy),predicate).
==> meta_argtypes(policysetHaspolicies(policyset,policy)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:11
% [policyset,time]
 % Initiates(E_policysetPermit(policyset),F_policysetPermitted(policyset),time).
axiom(initiates(e_policysetPermit(Policyset), f_policysetPermitted(Policyset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:12
% [policyset,time]
 % Initiates(E_policysetDeny(policyset),F_policysetDenied(policyset),time).
axiom(initiates(e_policysetDeny(Policyset), f_policysetDenied(Policyset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:13
% [policyset,time]
 % Initiates(E_policysetDontApply(policyset),F_policySetNotApplicable(policyset),time).
axiom(initiates(e_policysetDontApply(Policyset), f_policySetNotApplicable(Policyset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:17
%; 'policies combaning algorithm (stategy) : All Permit'
% [policyset,policy,time]
 % Happens(E_policysetPermit(policyset),time) & PolicysetHaspolicies(policyset,policy) -> HoldsAt(F_policyPermitted(policy),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:18
axiom(holds_at(f_policyPermitted(Policy), Time),
   
    [ happens(e_policysetPermit(Policyset), Time),
      policysetHaspolicies(Policyset, Policy)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:21
%; 'policies combaning algorithm (stategy) : Deny override'
% [policyset,time]
 % Happens(E_policysetDeny(policyset),time) -> {policy}  PolicysetHaspolicies(policyset,policy) & HoldsAt(F_policyDenied(policy),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:22
axiom(requires(e_policysetDeny(Policyset), Time),
   
    [ policysetHaspolicies(Policyset, Policy),
      holds_at(f_policyDenied(Policy), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:25
%; 'policies combaning algorithm (stategy) : All Permit'
% [policyset,policy,time]
 % Happens(E_policysetDontApply(policyset),time) & PolicysetHaspolicies(policyset,policy) -> HoldsAt(F_policyNotApplicable(policy),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:26
axiom(holds_at(f_policyNotApplicable(Policy), Time),
   
    [ happens(e_policysetDontApply(Policyset), Time),
      policysetHaspolicies(Policyset, Policy)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:29
% [policyset]
% !HoldsAt(F_policysetPermitted(policyset),0).
 %  not(initially(f_policysetPermitted(Policyset))).
axiom(not(initially(f_policysetPermitted(PolicysetPermitted_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:30
% [policyset]
% !HoldsAt(F_policysetDenied(policyset),0).
 %  not(initially(f_policysetDenied(Policyset))).
axiom(not(initially(f_policysetDenied(PolicysetDenied_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicySetPatterns/policySetModel.e:31
% [policyset]
% !HoldsAt(F_policySetNotApplicable(policyset),0).
 %  not(initially(f_policySetNotApplicable(Policyset))).
axiom(not(initially(f_policySetNotApplicable(PolicySetNotApplicable_Ret))),
    []).
