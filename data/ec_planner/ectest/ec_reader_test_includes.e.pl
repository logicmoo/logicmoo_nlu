:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'ectest/ec_reader_test_includes.e').
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/sorts.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% sort rule,subject,object,action,ruleeffect,policy,policyset
==> sort(rule).
==> sort(subject).
==> sort(object).
==> sort(action).
==> sort(ruleeffect).
==> sort(policy).
==> sort(policyset).
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/RulesPatterns/ruleOutput.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:30
% [rule,time]
 % Initiates(EDeny(rule),F_RuleDenied(rule),time).
axiom(initiates(eDeny(Rule), f_ruleDenied(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:31
% [rule,time]
 % Initiates(Epermit(rule),F_RulePermitted(rule),time).
axiom(initiates(epermit(Rule), f_rulePermitted(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:34
% [rule]
 % !HoldsAt(F_RulePermitted(rule),0).
 %  not(initially(f_rulePermitted(Rule))).
axiom(not(initially(f_rulePermitted(RulePermitted_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:35
% [rule]
 % !HoldsAt(F_RuleDenied(rule),0).
 %  not(initially(f_ruleDenied(Rule))).
axiom(not(initially(f_ruleDenied(RuleDenied_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:48
%;[rule] HoldsAt(F_RulePermitted(rule),3) | HoldsAt(F_RuleDenied(rule),3).
%;[rule,time] Happens(RuleDeny(rule), time) |  Happens(RulePermit(rule), time) -> time=2.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/RulesPatterns/targetHolds.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:56
% fluent F_TargetHolds(rule)
 %  fluent(f_targetHolds(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:57
==> mpred_prop(f_targetHolds(rule),fluent).
==> meta_argtypes(f_targetHolds(rule)).

% fluent F_TargetDoesntHolds(rule)
 %  fluent(f_targetDoesntHolds(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:58
==> mpred_prop(f_targetDoesntHolds(rule),fluent).
==> meta_argtypes(f_targetDoesntHolds(rule)).

% event E_MatchRuleParametters(rule)
 %  event(e_matchRuleParametters(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:60
==> mpred_prop(e_matchRuleParametters(rule),event).
==> meta_argtypes(e_matchRuleParametters(rule)).

% event E_DontMatchRuleParametters(rule)
 %  event(e_dontMatchRuleParametters(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:61
==> mpred_prop(e_dontMatchRuleParametters(rule),event).
==> meta_argtypes(e_dontMatchRuleParametters(rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:62
% [rule,time]
 % Initiates(E_MatchRuleParametters(rule),F_TargetHolds(rule),time).
axiom(initiates(e_matchRuleParametters(Rule), f_targetHolds(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:63
% [rule,time]
 % Initiates(E_DontMatchRuleParametters(rule),F_TargetDoesntHolds(rule),time).
axiom(initiates(e_dontMatchRuleParametters(Rule), f_targetDoesntHolds(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:65
% [rule,time]
 % Happens(E_MatchRuleParametters(rule), time) -> !HoldsAt(F_TargetHolds(rule),time).
axiom(requires(e_matchRuleParametters(Rule), Time),
    [not(holds_at(f_targetHolds(Rule), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:66
% [rule,time]
 % Happens(E_DontMatchRuleParametters(rule), time) -> !HoldsAt(F_TargetDoesntHolds(rule),time).
axiom(requires(e_dontMatchRuleParametters(Rule), Time),
    [not(holds_at(f_targetDoesntHolds(Rule), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:69
% [rule]
 % !HoldsAt(F_TargetHolds(rule),0).
 %  not(initially(f_targetHolds(Rule))).
axiom(not(initially(f_targetHolds(TargetHolds_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:70
% [rule]
 % !HoldsAt(F_TargetDoesntHolds(rule),0).
 %  not(initially(f_targetDoesntHolds(Rule))).
axiom(not(initially(f_targetDoesntHolds(TargetDoesntHolds_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:74
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/RulesPatterns/ConditionsVerification.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:77
% fluent F_ConditionSatisfied(rule)
 %  fluent(f_conditionSatisfied(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:78
==> mpred_prop(f_conditionSatisfied(rule),fluent).
==> meta_argtypes(f_conditionSatisfied(rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:78
%;event E_ConditionSatisfied(rule)
%;[rule,time] Initiates(E_ConditionSatisfied(rule),F_ConditionSatisfied(rule),time).
%;[rule,time] Happens(E_ConditionSatisfied(rule),time) -> HoldsAt(F_TargetHolds(rule),time).
%;[rule,time] Happens(E_ConditionSatisfied(rule), time) -> !HoldsAt(F_ConditionSatisfied(rule),time).
% [rule]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:88
% HoldsAt(F_ConditionSatisfied(rule),0).
axiom(initially(f_conditionSatisfied(Rule)),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:92
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/RulesPatterns/ruleModel.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:95
% fluent F_RuleEffectPermitted(rule)
 %  fluent(f_ruleEffectPermitted(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:96
==> mpred_prop(f_ruleEffectPermitted(rule),fluent).
==> meta_argtypes(f_ruleEffectPermitted(rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:96
%; prédéfinies

% fluent F_RuleEffectNOTpermitted(rule) 
 %  fluent(f_ruleEffectNOTpermitted(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:98
==> mpred_prop(f_ruleEffectNOTpermitted(rule),fluent).
==> meta_argtypes(f_ruleEffectNOTpermitted(rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:98
%;prédéfinies

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:101
% fluent F_RuleDenied(rule)
 %  fluent(f_ruleDenied(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:102
==> mpred_prop(f_ruleDenied(rule),fluent).
==> meta_argtypes(f_ruleDenied(rule)).

% fluent F_RulePermitted(rule)
 %  fluent(f_rulePermitted(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:103
==> mpred_prop(f_rulePermitted(rule),fluent).
==> meta_argtypes(f_rulePermitted(rule)).

% fluent F_RuleNotApplicable(rule)
 %  fluent(f_ruleNotApplicable(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:104
==> mpred_prop(f_ruleNotApplicable(rule),fluent).
==> meta_argtypes(f_ruleNotApplicable(rule)).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:107
% event Epermit(rule)
 %  event(epermit(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:108
==> mpred_prop(epermit(rule),event).
==> meta_argtypes(epermit(rule)).

% event EDeny(rule)
 %  event(eDeny(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:109
==> mpred_prop(eDeny(rule),event).
==> meta_argtypes(eDeny(rule)).

% event ERuleDoesNotApply(rule)
 %  event(eRuleDoesNotApply(rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:110
==> mpred_prop(eRuleDoesNotApply(rule),event).
==> meta_argtypes(eRuleDoesNotApply(rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:112
% [rule,time]
 % Initiates(EDeny(rule),F_RuleDenied(rule),time).
axiom(initiates(eDeny(Rule), f_ruleDenied(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:113
% [rule,time]
 % Initiates(Epermit(rule),F_RulePermitted(rule),time).
axiom(initiates(epermit(Rule), f_rulePermitted(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:114
% [rule,time]
 % Initiates(ERuleDoesNotApply(rule),F_RuleNotApplicable(rule),time).
axiom(initiates(eRuleDoesNotApply(Rule), f_ruleNotApplicable(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:117
% [rule,time]
 % Happens(EDeny(rule),time) -> HoldsAt(F_TargetHolds(rule),time)
%                                             & HoldsAt(F_ConditionSatisfied(rule),time)
%                                             & HoldsAt(F_RuleEffectNOTpermitted(rule),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:119
axiom(requires(eDeny(Rule), Time),
   
    [ holds_at(f_targetHolds(Rule), Time),
      holds_at(f_conditionSatisfied(Rule), Time),
      holds_at(f_ruleEffectNOTpermitted(Rule), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:122
% [rule,time]
 % Happens(Epermit(rule),time) -> HoldsAt(F_TargetHolds(rule),time)
%                                             & HoldsAt(F_ConditionSatisfied(rule),time)
%                                             & HoldsAt(F_RuleEffectPermitted(rule),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:124
axiom(requires(epermit(Rule), Time),
   
    [ holds_at(f_targetHolds(Rule), Time),
      holds_at(f_conditionSatisfied(Rule), Time),
      holds_at(f_ruleEffectPermitted(Rule), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:126
% [rule,time]
 % Happens(ERuleDoesNotApply(rule),time) -> HoldsAt(F_TargetDoesntHolds(rule),time).
axiom(requires(eRuleDoesNotApply(Rule), Time),
    [holds_at(f_targetDoesntHolds(Rule), Time)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:130
% [rule]
 % !HoldsAt(F_RulePermitted(rule),0).
 %  not(initially(f_rulePermitted(Rule))).
axiom(not(initially(f_rulePermitted(RulePermitted_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:131
% [rule]
 % !HoldsAt(F_RuleDenied(rule),0).
 %  not(initially(f_ruleDenied(Rule))).
axiom(not(initially(f_ruleDenied(RuleDenied_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:132
% [rule]
 % !HoldsAt(F_RuleNotApplicable(rule),0).
 %  not(initially(f_ruleNotApplicable(Rule))).
axiom(not(initially(f_ruleNotApplicable(RuleNotApplicable_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:137
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
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/ordering.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
% [rule,time]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:162
% Happens(E_MatchRuleParametters(rule), time) | Happens(E_DontMatchRuleParametters(rule), time) -> time = 0.
axiom(requires(e_matchRuleParametters(Rule), Time),
    [equals(Time, 0)]).
axiom(requires(e_dontMatchRuleParametters(Rule), Time),
    [equals(Time, 0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:164
% [rule,time]
 % Happens(EDeny(rule), time) | Happens(Epermit(rule), time) | Happens(ERuleDoesNotApply(rule), time) -> time = 1.
axiom(requires(eDeny(Rule), Time),
    [equals(Time, 1)]).
axiom(requires(epermit(Rule), Time),
    [equals(Time, 1)]).
axiom(requires(eRuleDoesNotApply(Rule), Time),
    [equals(Time, 1)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:166
%;[policy,time] Happens(E_policyPermit(policy), time) | Happens(E_policyDeny(policy), time) | Happens(E_PolicyDoesNotApply(policy),time) -> time = 2.
%;[policyset,time] Happens(E_policysetPermit(policyset), time) | Happens(E_policysetDeny(policyset), time) | Happens(E_policysetDontApply(policyset),time) -> time = 3.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/PolicySetPatterns/policySetModel.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:176
% event E_policysetPermit(policyset)
 %  event(e_policysetPermit(policyset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:177
==> mpred_prop(e_policysetPermit(policyset),event).
==> meta_argtypes(e_policysetPermit(policyset)).

% event E_policysetDeny(policyset)
 %  event(e_policysetDeny(policyset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:178
==> mpred_prop(e_policysetDeny(policyset),event).
==> meta_argtypes(e_policysetDeny(policyset)).

% event E_policysetDontApply(policyset)
 %  event(e_policysetDontApply(policyset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:179
==> mpred_prop(e_policysetDontApply(policyset),event).
==> meta_argtypes(e_policysetDontApply(policyset)).

% fluent F_policysetPermitted(policyset)
 %  fluent(f_policysetPermitted(policyset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:181
==> mpred_prop(f_policysetPermitted(policyset),fluent).
==> meta_argtypes(f_policysetPermitted(policyset)).

% fluent F_policysetDenied(policyset)
 %  fluent(f_policysetDenied(policyset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:182
==> mpred_prop(f_policysetDenied(policyset),fluent).
==> meta_argtypes(f_policysetDenied(policyset)).

% fluent F_policySetNotApplicable(policyset)
 %  fluent(f_policySetNotApplicable(policyset)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:183
==> mpred_prop(f_policySetNotApplicable(policyset),fluent).
==> meta_argtypes(f_policySetNotApplicable(policyset)).

% predicate PolicysetHaspolicies(policyset,policy)
 %  predicate(policysetHaspolicies(policyset,policy)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:185
==> mpred_prop(policysetHaspolicies(policyset,policy),predicate).
==> meta_argtypes(policysetHaspolicies(policyset,policy)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:187
% [policyset,time]
 % Initiates(E_policysetPermit(policyset),F_policysetPermitted(policyset),time).
axiom(initiates(e_policysetPermit(Policyset), f_policysetPermitted(Policyset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:188
% [policyset,time]
 % Initiates(E_policysetDeny(policyset),F_policysetDenied(policyset),time).
axiom(initiates(e_policysetDeny(Policyset), f_policysetDenied(Policyset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:189
% [policyset,time]
 % Initiates(E_policysetDontApply(policyset),F_policySetNotApplicable(policyset),time).
axiom(initiates(e_policysetDontApply(Policyset), f_policySetNotApplicable(Policyset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:193
%; 'policies combaning algorithm (stategy) : All Permit'
% [policyset,policy,time]
 % Happens(E_policysetPermit(policyset),time) & PolicysetHaspolicies(policyset,policy) -> HoldsAt(F_policyPermitted(policy),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:194
axiom(holds_at(f_policyPermitted(Policy), Time),
   
    [ happens(e_policysetPermit(Policyset), Time),
      policysetHaspolicies(Policyset, Policy)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:197
%; 'policies combaning algorithm (stategy) : Deny override'
% [policyset,time]
 % Happens(E_policysetDeny(policyset),time) -> {policy}  PolicysetHaspolicies(policyset,policy) & HoldsAt(F_policyDenied(policy),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:198
axiom(requires(e_policysetDeny(Policyset), Time),
   
    [ policysetHaspolicies(Policyset, Policy),
      holds_at(f_policyDenied(Policy), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:201
%; 'policies combaning algorithm (stategy) : All Permit'
% [policyset,policy,time]
 % Happens(E_policysetDontApply(policyset),time) & PolicysetHaspolicies(policyset,policy) -> HoldsAt(F_policyNotApplicable(policy),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:202
axiom(holds_at(f_policyNotApplicable(Policy), Time),
   
    [ happens(e_policysetDontApply(Policyset), Time),
      policysetHaspolicies(Policyset, Policy)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:205
% [policyset]
% !HoldsAt(F_policysetPermitted(policyset),0).
 %  not(initially(f_policysetPermitted(Policyset))).
axiom(not(initially(f_policysetPermitted(PolicysetPermitted_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:206
% [policyset]
% !HoldsAt(F_policysetDenied(policyset),0).
 %  not(initially(f_policysetDenied(Policyset))).
axiom(not(initially(f_policysetDenied(PolicysetDenied_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:207
% [policyset]
% !HoldsAt(F_policySetNotApplicable(policyset),0).
 %  not(initially(f_policySetNotApplicable(Policyset))).
axiom(not(initially(f_policySetNotApplicable(PolicySetNotApplicable_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:211
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/PolicyPatterns/policyModel.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:214
% event E_policyPermit(policy)
 %  event(e_policyPermit(policy)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:215
==> mpred_prop(e_policyPermit(policy),event).
==> meta_argtypes(e_policyPermit(policy)).

% event E_policyDeny(policy)
 %  event(e_policyDeny(policy)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:216
==> mpred_prop(e_policyDeny(policy),event).
==> meta_argtypes(e_policyDeny(policy)).

% event E_PolicyDoesNotApply(policy)
 %  event(e_policyDoesNotApply(policy)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:217
==> mpred_prop(e_policyDoesNotApply(policy),event).
==> meta_argtypes(e_policyDoesNotApply(policy)).

% fluent F_policyPermitted(policy)
 %  fluent(f_policyPermitted(policy)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:219
==> mpred_prop(f_policyPermitted(policy),fluent).
==> meta_argtypes(f_policyPermitted(policy)).

% fluent F_policyDenied(policy)
 %  fluent(f_policyDenied(policy)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:220
==> mpred_prop(f_policyDenied(policy),fluent).
==> meta_argtypes(f_policyDenied(policy)).

% fluent F_policyNotApplicable(policy)
 %  fluent(f_policyNotApplicable(policy)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:221
==> mpred_prop(f_policyNotApplicable(policy),fluent).
==> meta_argtypes(f_policyNotApplicable(policy)).

% predicate PolicyHasRules(policy,rule)
 %  predicate(policyHasRules(policy,rule)).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:223
==> mpred_prop(policyHasRules(policy,rule),predicate).
==> meta_argtypes(policyHasRules(policy,rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:225
% [policy,time]
 % Initiates(E_policyPermit(policy),F_policyPermitted(policy),time).
axiom(initiates(e_policyPermit(Policy), f_policyPermitted(Policy), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:226
% [policy,time]
 % Initiates(E_policyDeny(policy),F_policyDenied(policy),time).
axiom(initiates(e_policyDeny(Policy), f_policyDenied(Policy), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:227
% [policy,time]
 % Initiates(E_PolicyDoesNotApply(policy),F_policyNotApplicable(policy),time).
axiom(initiates(e_policyDoesNotApply(Policy), f_policyNotApplicable(Policy), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:231
%; 'Rule combaning algorithm (stategy) : All Permit'
% [policy,rule,time]
 % Happens(E_policyPermit(policy),time) & PolicyHasRules(policy,rule) -> HoldsAt(F_RulePermitted(rule),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:232
axiom(holds_at(f_rulePermitted(Rule), Time),
   
    [ happens(e_policyPermit(Policy), Time),
      policyHasRules(Policy, Rule)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:235
%; 'Rule combaning algorithm (stategy) : Deny override (s il existe au moin une règle satisfaite)'
% [policy,time]
 % Happens(E_policyDeny(policy),time) -> {rule}  PolicyHasRules(policy,rule) & HoldsAt(F_RuleDenied(rule),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:236
axiom(requires(e_policyDeny(Policy), Time),
   
    [ policyHasRules(Policy, Rule),
      holds_at(f_ruleDenied(Rule), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:239
%; 'Rule combaning algorithm (stategy) : All not Applicable'
% [policy,time,rule]
 % Happens(E_PolicyDoesNotApply(policy),time) & PolicyHasRules(policy,rule) -> HoldsAt(F_RuleNotApplicable(rule),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:240
axiom(holds_at(f_ruleNotApplicable(Rule), Time),
   
    [ happens(e_policyDoesNotApply(Policy), Time),
      policyHasRules(Policy, Rule)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:243
% [policy]
% !HoldsAt(F_policyPermitted(policy),0).
 %  not(initially(f_policyPermitted(Policy))).
axiom(not(initially(f_policyPermitted(PolicyPermitted_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:244
% [policy]
% !HoldsAt(F_policyDenied(policy),0).
 %  not(initially(f_policyDenied(Policy))).
axiom(not(initially(f_policyDenied(PolicyDenied_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:245
% [policy]
% !HoldsAt(F_policyNotApplicable(policy),0).
 %  not(initially(f_policyNotApplicable(Policy))).
axiom(not(initially(f_policyNotApplicable(PolicyNotApplicable_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:249
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/input.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:252
% subject Navas
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:253
==> t(subject,navas).

% object Gloves
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:254
==> t(object,gloves).

% action Get
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/ectest/ec_reader_test_includes.e:255
==> t(action,get).
