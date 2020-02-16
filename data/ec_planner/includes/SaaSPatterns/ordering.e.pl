:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'includes/SaaSPatterns/ordering.e').


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/ordering.e:0
% [rule,time]
 % Happens(E_MatchRuleParametters(rule), time) | Happens(E_DontMatchRuleParametters(rule), time) -> time = 0.
axiom(requires(e_matchRuleParametters(Rule), Time),
    [equals(Time, 0)]).
axiom(requires(e_dontMatchRuleParametters(Rule), Time),
    [equals(Time, 0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/ordering.e:2
% [rule,time]
 % Happens(EDeny(rule), time) | Happens(Epermit(rule), time) | Happens(ERuleDoesNotApply(rule), time) -> time = 1.
axiom(requires(eDeny(Rule), Time),
    [equals(Time, 1)]).
axiom(requires(epermit(Rule), Time),
    [equals(Time, 1)]).
axiom(requires(eRuleDoesNotApply(Rule), Time),
    [equals(Time, 1)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/includes/SaaSPatterns/ordering.e:4
%;[policy,time] Happens(E_policyPermit(policy), time) | Happens(E_policyDeny(policy), time) | Happens(E_PolicyDoesNotApply(policy),time) -> time = 2.
%;[policyset,time] Happens(E_policysetPermit(policyset), time) | Happens(E_policysetDeny(policyset), time) | Happens(E_policysetDontApply(policyset),time) -> time = 3.
