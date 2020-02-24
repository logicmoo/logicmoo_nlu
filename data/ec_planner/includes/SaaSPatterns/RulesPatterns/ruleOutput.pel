:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'includes/SaaSPatterns/RulesPatterns/ruleOutput.e').

% fluent F_RuleDenied(rule)
 %  fluent(f_ruleDenied(rule)).
==> mpred_prop(f_ruleDenied(rule),fluent).
==> meta_argtypes(f_ruleDenied(rule)).

% fluent F_RulePermitted(rule)
 %  fluent(f_rulePermitted(rule)).
==> mpred_prop(f_rulePermitted(rule),fluent).
==> meta_argtypes(f_rulePermitted(rule)).

% event Epermit(rule)
 %  event(epermit(rule)).
==> mpred_prop(epermit(rule),event).
==> meta_argtypes(epermit(rule)).

% event EDeny(rule)
 %  event(eDeny(rule)).
==> mpred_prop(eDeny(rule),event).
==> meta_argtypes(eDeny(rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleOutput.e:6
% [rule,time]
 % Initiates(EDeny(rule),F_RuleDenied(rule),time).
axiom(initiates(eDeny(Rule), f_ruleDenied(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleOutput.e:7
% [rule,time]
 % Initiates(Epermit(rule),F_RulePermitted(rule),time).
axiom(initiates(epermit(Rule), f_rulePermitted(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleOutput.e:10
% [rule]
 % !HoldsAt(F_RulePermitted(rule),0).
 %  not(initially(f_rulePermitted(Rule))).
axiom(not(initially(f_rulePermitted(RulePermitted_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleOutput.e:11
% [rule]
 % !HoldsAt(F_RuleDenied(rule),0).
 %  not(initially(f_ruleDenied(Rule))).
axiom(not(initially(f_ruleDenied(RuleDenied_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleOutput.e:24
%;[rule] HoldsAt(F_RulePermitted(rule),3) | HoldsAt(F_RuleDenied(rule),3).
%;[rule,time] Happens(RuleDeny(rule), time) |  Happens(RulePermit(rule), time) -> time=2.
