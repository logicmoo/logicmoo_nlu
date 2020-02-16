:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).

 /*  loading(always,
   	'includes/SaaSPatterns/RulesPatterns/ConditionsVerification.e').
 */

% fluent F_ConditionSatisfied(rule)
 %  fluent(f_conditionSatisfied(rule)).
==> mpred_prop(f_conditionSatisfied(rule),fluent).
==> meta_argtypes(f_conditionSatisfied(rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ConditionsVerification.e:1
%;event E_ConditionSatisfied(rule)
%;[rule,time] Initiates(E_ConditionSatisfied(rule),F_ConditionSatisfied(rule),time).
%;[rule,time] Happens(E_ConditionSatisfied(rule),time) -> HoldsAt(F_TargetHolds(rule),time).
%;[rule,time] Happens(E_ConditionSatisfied(rule), time) -> !HoldsAt(F_ConditionSatisfied(rule),time).
% [rule]
 
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/ConditionsVerification.e:11
% HoldsAt(F_ConditionSatisfied(rule),0).
axiom(initially(f_conditionSatisfied(Rule)),
    []).
