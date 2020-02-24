:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'includes/SaaSPatterns/RulesPatterns/targetHolds.e').

% fluent F_TargetHolds(rule)
 %  fluent(f_targetHolds(rule)).
==> mpred_prop(f_targetHolds(rule),fluent).
==> meta_argtypes(f_targetHolds(rule)).

% fluent F_TargetDoesntHolds(rule)
 %  fluent(f_targetDoesntHolds(rule)).
==> mpred_prop(f_targetDoesntHolds(rule),fluent).
==> meta_argtypes(f_targetDoesntHolds(rule)).

% event E_MatchRuleParametters(rule)
 %  event(e_matchRuleParametters(rule)).
==> mpred_prop(e_matchRuleParametters(rule),event).
==> meta_argtypes(e_matchRuleParametters(rule)).

% event E_DontMatchRuleParametters(rule)
 %  event(e_dontMatchRuleParametters(rule)).
==> mpred_prop(e_dontMatchRuleParametters(rule),event).
==> meta_argtypes(e_dontMatchRuleParametters(rule)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/targetHolds.e:6
% [rule,time]
 % Initiates(E_MatchRuleParametters(rule),F_TargetHolds(rule),time).
axiom(initiates(e_matchRuleParametters(Rule), f_targetHolds(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/targetHolds.e:7
% [rule,time]
 % Initiates(E_DontMatchRuleParametters(rule),F_TargetDoesntHolds(rule),time).
axiom(initiates(e_dontMatchRuleParametters(Rule), f_targetDoesntHolds(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/targetHolds.e:9
% [rule,time]
 % Happens(E_MatchRuleParametters(rule), time) -> !HoldsAt(F_TargetHolds(rule),time).
axiom(requires(e_matchRuleParametters(Rule), Time),
    [not(holds_at(f_targetHolds(Rule), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/targetHolds.e:10
% [rule,time]
 % Happens(E_DontMatchRuleParametters(rule), time) -> !HoldsAt(F_TargetDoesntHolds(rule),time).
axiom(requires(e_dontMatchRuleParametters(Rule), Time),
    [not(holds_at(f_targetDoesntHolds(Rule), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/targetHolds.e:13
% [rule]
 % !HoldsAt(F_TargetHolds(rule),0).
 %  not(initially(f_targetHolds(Rule))).
axiom(not(initially(f_targetHolds(TargetHolds_Ret))),
    []).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/RulesPatterns/targetHolds.e:14
% [rule]
 % !HoldsAt(F_TargetDoesntHolds(rule),0).
 %  not(initially(f_targetDoesntHolds(Rule))).
axiom(not(initially(f_targetDoesntHolds(TargetDoesntHolds_Ret))),
    []).
