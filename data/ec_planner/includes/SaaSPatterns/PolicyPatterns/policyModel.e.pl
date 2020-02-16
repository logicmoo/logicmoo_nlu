:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'includes/SaaSPatterns/PolicyPatterns/policyModel.e').

% event E_policyPermit(policy)
 %  event(e_policyPermit(policy)).
==> mpred_prop(e_policyPermit(policy),event).
==> meta_argtypes(e_policyPermit(policy)).

% event E_policyDeny(policy)
 %  event(e_policyDeny(policy)).
==> mpred_prop(e_policyDeny(policy),event).
==> meta_argtypes(e_policyDeny(policy)).

% event E_PolicyDoesNotApply(policy)
 %  event(e_policyDoesNotApply(policy)).
==> mpred_prop(e_policyDoesNotApply(policy),event).
==> meta_argtypes(e_policyDoesNotApply(policy)).

% fluent F_policyPermitted(policy)
 %  fluent(f_policyPermitted(policy)).
==> mpred_prop(f_policyPermitted(policy),fluent).
==> meta_argtypes(f_policyPermitted(policy)).

% fluent F_policyDenied(policy)
 %  fluent(f_policyDenied(policy)).
==> mpred_prop(f_policyDenied(policy),fluent).
==> meta_argtypes(f_policyDenied(policy)).

% fluent F_policyNotApplicable(policy)
 %  fluent(f_policyNotApplicable(policy)).
==> mpred_prop(f_policyNotApplicable(policy),fluent).
==> meta_argtypes(f_policyNotApplicable(policy)).

% predicate PolicyHasRules(policy,rule)
 %  predicate(policyHasRules(policy,rule)).
==> mpred_prop(policyHasRules(policy,rule),predicate).
==> meta_argtypes(policyHasRules(policy,rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:11
% [policy,time]
 % Initiates(E_policyPermit(policy),F_policyPermitted(policy),time).
axiom(initiates(e_policyPermit(Policy), f_policyPermitted(Policy), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:12
% [policy,time]
 % Initiates(E_policyDeny(policy),F_policyDenied(policy),time).
axiom(initiates(e_policyDeny(Policy), f_policyDenied(Policy), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:13
% [policy,time]
 % Initiates(E_PolicyDoesNotApply(policy),F_policyNotApplicable(policy),time).
axiom(initiates(e_policyDoesNotApply(Policy), f_policyNotApplicable(Policy), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:17
%; 'Rule combaning algorithm (stategy) : All Permit'
% [policy,rule,time]
 % Happens(E_policyPermit(policy),time) & PolicyHasRules(policy,rule) -> HoldsAt(F_RulePermitted(rule),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:18
axiom(holds_at(f_rulePermitted(Rule), Time),
   
    [ happens(e_policyPermit(Policy), Time),
      policyHasRules(Policy, Rule)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:21
%; 'Rule combaning algorithm (stategy) : Deny override (s il existe au moin une règle satisfaite)'
% [policy,time]
 % Happens(E_policyDeny(policy),time) -> {rule}  PolicyHasRules(policy,rule) & HoldsAt(F_RuleDenied(rule),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:22
axiom(requires(e_policyDeny(Policy), Time),
   
    [ policyHasRules(Policy, Rule),
      holds_at(f_ruleDenied(Rule), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:25
%; 'Rule combaning algorithm (stategy) : All not Applicable'
% [policy,time,rule]
 % Happens(E_PolicyDoesNotApply(policy),time) & PolicyHasRules(policy,rule) -> HoldsAt(F_RuleNotApplicable(rule),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:26
axiom(holds_at(f_ruleNotApplicable(Rule), Time),
   
    [ happens(e_policyDoesNotApply(Policy), Time),
      policyHasRules(Policy, Rule)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:29
% [policy]
% !HoldsAt(F_policyPermitted(policy),0).
 %  not(initially(f_policyPermitted(Policy))).
axiom(not(initially(f_policyPermitted(PolicyPermitted_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:30
% [policy]
% !HoldsAt(F_policyDenied(policy),0).
 %  not(initially(f_policyDenied(Policy))).
axiom(not(initially(f_policyDenied(PolicyDenied_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/PolicyPatterns/policyModel.e:31
% [policy]
% !HoldsAt(F_policyNotApplicable(policy),0).
 %  not(initially(f_policyNotApplicable(Policy))).
axiom(not(initially(f_policyNotApplicable(PolicyNotApplicable_Ret))),
    []).
