:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'includes/SaaSPatterns/RulesPatterns/ruleModel.e').


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:0
%; prédéfinies

% fluent F_RuleEffectPermitted(rule) 
 %  fluent(f_ruleEffectPermitted(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:2
==> mpred_prop(f_ruleEffectPermitted(rule),fluent).
==> meta_argtypes(f_ruleEffectPermitted(rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:2
%; prédéfinies

% fluent F_RuleEffectNOTpermitted(rule) 
 %  fluent(f_ruleEffectNOTpermitted(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:4
==> mpred_prop(f_ruleEffectNOTpermitted(rule),fluent).
==> meta_argtypes(f_ruleEffectNOTpermitted(rule)).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:6
% fluent F_RuleDenied(rule)
 %  fluent(f_ruleDenied(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:7
==> mpred_prop(f_ruleDenied(rule),fluent).
==> meta_argtypes(f_ruleDenied(rule)).

% fluent F_RulePermitted(rule)
 %  fluent(f_rulePermitted(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:8
==> mpred_prop(f_rulePermitted(rule),fluent).
==> meta_argtypes(f_rulePermitted(rule)).

% fluent F_RuleNotApplicable(rule)
 %  fluent(f_ruleNotApplicable(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:9
==> mpred_prop(f_ruleNotApplicable(rule),fluent).
==> meta_argtypes(f_ruleNotApplicable(rule)).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:12
% event Epermit(rule)
 %  event(epermit(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:13
==> mpred_prop(epermit(rule),event).
==> meta_argtypes(epermit(rule)).

% event EDeny(rule)
 %  event(eDeny(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:14
==> mpred_prop(eDeny(rule),event).
==> meta_argtypes(eDeny(rule)).

% event ERuleDoesNotApply(rule)
 %  event(eRuleDoesNotApply(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:15
==> mpred_prop(eRuleDoesNotApply(rule),event).
==> meta_argtypes(eRuleDoesNotApply(rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:17
% [rule,time]
 % Initiates(EDeny(rule),F_RuleDenied(rule),time).
axiom(initiates(eDeny(Rule), f_ruleDenied(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:18
% [rule,time]
 % Initiates(Epermit(rule),F_RulePermitted(rule),time).
axiom(initiates(epermit(Rule), f_rulePermitted(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:19
% [rule,time]
 % Initiates(ERuleDoesNotApply(rule),F_RuleNotApplicable(rule),time).
axiom(initiates(eRuleDoesNotApply(Rule), f_ruleNotApplicable(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:22
% [rule,time]
 % Happens(EDeny(rule),time) -> HoldsAt(F_TargetHolds(rule),time)
%                                             & HoldsAt(F_ConditionSatisfied(rule),time)
%                                             & HoldsAt(F_RuleEffectNOTpermitted(rule),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:24
axiom(requires(eDeny(Rule), Time),
   
    [ holds_at(f_targetHolds(Rule), Time),
      holds_at(f_conditionSatisfied(Rule), Time),
      holds_at(f_ruleEffectNOTpermitted(Rule), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:27
% [rule,time]
 % Happens(Epermit(rule),time) -> HoldsAt(F_TargetHolds(rule),time)
%                                             & HoldsAt(F_ConditionSatisfied(rule),time)
%                                             & HoldsAt(F_RuleEffectPermitted(rule),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:29
axiom(requires(epermit(Rule), Time),
   
    [ holds_at(f_targetHolds(Rule), Time),
      holds_at(f_conditionSatisfied(Rule), Time),
      holds_at(f_ruleEffectPermitted(Rule), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:31
% [rule,time]
 % Happens(ERuleDoesNotApply(rule),time) -> HoldsAt(F_TargetDoesntHolds(rule),time).
axiom(requires(eRuleDoesNotApply(Rule), Time),
    [holds_at(f_targetDoesntHolds(Rule), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:35
% [rule]
 % !HoldsAt(F_RulePermitted(rule),0).
 %  not(initially(f_rulePermitted(Rule))).
axiom(not(initially(f_rulePermitted(RulePermitted_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:36
% [rule]
 % !HoldsAt(F_RuleDenied(rule),0).
 %  not(initially(f_ruleDenied(Rule))).
axiom(not(initially(f_ruleDenied(RuleDenied_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:37
% [rule]
 % !HoldsAt(F_RuleNotApplicable(rule),0).
 %  not(initially(f_ruleNotApplicable(Rule))).
axiom(not(initially(f_ruleNotApplicable(RuleNotApplicable_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ruleModel.e:42
%;********************************************************************************************************************
%;--------------------------------------------------------------------------------------------------------------------
%;********************************************************************************************************************
%;[rule] HoldsAt(F_RulePermitted(rule),3) | HoldsAt(F_RuleDenied(rule),3).
%;[rule,time] Happens(RuleDeny(rule), time) |  Happens(RulePermit(rule), time) -> time=2.
%;[rule,time,ruleeffect] Happens(EDeny(rule),time) -> HoldsAt(F_TargetHolds(rule),time)
                                                %;    & HoldsAt(F_ConditionSatisfied(rule),time)
                                                %;    & ruleeffect=Deny.
%;[rule,time,ruleeffect] Happens(Epermit(rule),time) -> HoldsAt(F_TargetHolds(rule),time)
                                               %;    & HoldsAt(F_ConditionSatisfied(rule),time)
                                               %;    & ruleeffect=Permit.
