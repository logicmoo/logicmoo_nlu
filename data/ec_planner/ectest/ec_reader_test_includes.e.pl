:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
% Mon, 23 Mar 2020 02:29:10 GMT
% From ../ectest/ec_reader_test_includes.e.pl:4
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_foundations.e',262).

 /*  loading(load_e_pl,
   	'/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e').
 */
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/sorts.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:6
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',7).
% sort rule,subject,object,action,ruleeffect,policy,policyset
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',7).
==> sort(rule).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',7).
==> sort(subject).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',7).
==> sort(object).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',7).
==> sort(action).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',7).
==> sort(ruleeffect).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',7).
==> sort(policy).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',7).
==> sort(policyset).
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/RulesPatterns/ruleOutput.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:24
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',25).
% fluent F_RuleDenied(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',25).
fluent(f_ruleDenied(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',25).
==> mpred_prop(f_ruleDenied(rule),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',25).
==> meta_argtypes(f_ruleDenied(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:25
% fluent F_RulePermitted(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',25).
fluent(f_rulePermitted(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',25).
==> mpred_prop(f_rulePermitted(rule),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',25).
==> meta_argtypes(f_rulePermitted(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:27
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',28).
% event Epermit(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',28).
event(epermit(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',28).
==> mpred_prop(epermit(rule),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',28).
==> meta_argtypes(epermit(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:28
% event EDeny(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',28).
event(eDeny(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',28).
==> mpred_prop(eDeny(rule),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',28).
==> meta_argtypes(eDeny(rule)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:30
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',31).
% [rule,time]
 % Initiates(EDeny(rule),F_RuleDenied(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',31).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(eDeny(Rule), f_ruleDenied(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',31).
axiom(initiates(eDeny(Rule), f_ruleDenied(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:31
% [rule,time]
 % Initiates(Epermit(rule),F_RulePermitted(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',31).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(epermit(Rule), f_rulePermitted(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',31).
axiom(initiates(epermit(Rule), f_rulePermitted(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:34
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',35).
% [rule]
 % !HoldsAt(F_RulePermitted(rule),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',35).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_rulePermitted(Rule)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',35).
axiom(initially(neg(f_rulePermitted(Rule))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:35
% [rule]
 % !HoldsAt(F_RuleDenied(rule),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',35).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_ruleDenied(Rule)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',35).
axiom(initially(neg(f_ruleDenied(Rule))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:48
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',49).
%;[rule] HoldsAt(F_RulePermitted(rule),3) | HoldsAt(F_RuleDenied(rule),3).
%;[rule,time] Happens(RuleDeny(rule), time) |  Happens(RulePermit(rule), time) -> time=2.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/RulesPatterns/targetHolds.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:56
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',57).
% fluent F_TargetHolds(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',57).
fluent(f_targetHolds(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',57).
==> mpred_prop(f_targetHolds(rule),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',57).
==> meta_argtypes(f_targetHolds(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:57
% fluent F_TargetDoesntHolds(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',57).
fluent(f_targetDoesntHolds(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',57).
==> mpred_prop(f_targetDoesntHolds(rule),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',57).
==> meta_argtypes(f_targetDoesntHolds(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:59
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',60).
% event E_MatchRuleParametters(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',60).
event(e_matchRuleParametters(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',60).
==> mpred_prop(e_matchRuleParametters(rule),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',60).
==> meta_argtypes(e_matchRuleParametters(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:60
% event E_DontMatchRuleParametters(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',60).
event(e_dontMatchRuleParametters(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',60).
==> mpred_prop(e_dontMatchRuleParametters(rule),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',60).
==> meta_argtypes(e_dontMatchRuleParametters(rule)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:62
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',63).
% [rule,time]
 % Initiates(E_MatchRuleParametters(rule),F_TargetHolds(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',63).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(e_matchRuleParametters(Rule),
                    f_targetHolds(Rule),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',63).
axiom(initiates(e_matchRuleParametters(Rule), f_targetHolds(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:63
% [rule,time]
 % Initiates(E_DontMatchRuleParametters(rule),F_TargetDoesntHolds(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',63).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(e_dontMatchRuleParametters(Rule),
                    f_targetDoesntHolds(Rule),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',63).
axiom(initiates(e_dontMatchRuleParametters(Rule), f_targetDoesntHolds(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:65
% [rule,time]
 % Happens(E_MatchRuleParametters(rule), time) -> !HoldsAt(F_TargetHolds(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',65).

 /*  happens(e_matchRuleParametters(Rule), Time) ->
       holds_at(neg(f_targetHolds(Rule)), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',65).

 /*  holds_at(neg(f_targetHolds(Rule)), Time) :-
       happens(e_matchRuleParametters(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',65).

 /*  [holds_at(metreqs(e_matchRuleParametters(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(e_matchRuleParametters(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',65).
axiom(requires(e_matchRuleParametters(Rule), Time),
    [holds_at(metreqs(e_matchRuleParametters(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',65).

 /*  [holds_at(neg(f_targetHolds(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(e_matchRuleParametters(Rule)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',65).
axiom(holds_at(requirements(e_matchRuleParametters(Rule)), Time),
    [holds_at(neg(f_targetHolds(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',65).

 /*  not(happens(e_matchRuleParametters(Rule), Time)) :-
       not(holds_at(neg(f_targetHolds(Rule)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',65).

 /*  [holds_at(f_targetHolds(Rule), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(e_matchRuleParametters(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',65).
axiom(not(happens(e_matchRuleParametters(Rule), Time)),
    [holds_at(f_targetHolds(Rule), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:66
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',67).
% [rule,time]
 % Happens(E_DontMatchRuleParametters(rule), time) -> !HoldsAt(F_TargetDoesntHolds(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',67).

 /*  happens(e_dontMatchRuleParametters(Rule), Time) ->
       holds_at(neg(f_targetDoesntHolds(Rule)), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',67).

 /*  holds_at(neg(f_targetDoesntHolds(Rule)), Time) :-
       happens(e_dontMatchRuleParametters(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',67).

 /*  [holds_at(metreqs(e_dontMatchRuleParametters(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(e_dontMatchRuleParametters(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',67).
axiom(requires(e_dontMatchRuleParametters(Rule), Time),
    [holds_at(metreqs(e_dontMatchRuleParametters(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',67).

 /*  [holds_at(neg(f_targetDoesntHolds(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(e_dontMatchRuleParametters(Rule)),
                   Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',67).
axiom(holds_at(requirements(e_dontMatchRuleParametters(Rule)), Time),
    [holds_at(neg(f_targetDoesntHolds(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',67).

 /*  not(happens(e_dontMatchRuleParametters(Rule), Time)) :-
       not(holds_at(neg(f_targetDoesntHolds(Rule)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',67).

 /*  [holds_at(f_targetDoesntHolds(Rule), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(e_dontMatchRuleParametters(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',67).
axiom(not(happens(e_dontMatchRuleParametters(Rule), Time)),
    [holds_at(f_targetDoesntHolds(Rule), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:69
% [rule]
 % !HoldsAt(F_TargetHolds(rule),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',69).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_targetHolds(Rule)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',69).
axiom(initially(neg(f_targetHolds(Rule))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:70
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',71).
% [rule]
 % !HoldsAt(F_TargetDoesntHolds(rule),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',71).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_targetDoesntHolds(Rule)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',71).
axiom(initially(neg(f_targetDoesntHolds(Rule))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:74
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',75).
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/RulesPatterns/ConditionsVerification.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:77
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',78).
% fluent F_ConditionSatisfied(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',78).
fluent(f_conditionSatisfied(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',78).
==> mpred_prop(f_conditionSatisfied(rule),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',78).
==> meta_argtypes(f_conditionSatisfied(rule)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:78
%;event E_ConditionSatisfied(rule)
%;[rule,time] Initiates(E_ConditionSatisfied(rule),F_ConditionSatisfied(rule),time).
%;[rule,time] Happens(E_ConditionSatisfied(rule),time) -> HoldsAt(F_TargetHolds(rule),time).
%;[rule,time] Happens(E_ConditionSatisfied(rule), time) -> !HoldsAt(F_ConditionSatisfied(rule),time).
% [rule]
 
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:88
% HoldsAt(F_ConditionSatisfied(rule),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',88).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(f_conditionSatisfied(Rule))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',88).
axiom(initially(f_conditionSatisfied(Rule)),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:92
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/RulesPatterns/ruleModel.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:95
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',96).
% fluent F_RuleEffectPermitted(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',96).
fluent(f_ruleEffectPermitted(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',96).
==> mpred_prop(f_ruleEffectPermitted(rule),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',96).
==> meta_argtypes(f_ruleEffectPermitted(rule)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:96
%; prédéfinies

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:97
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',98).
% fluent F_RuleEffectNOTpermitted(rule) 
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',98).
fluent(f_ruleEffectNOTpermitted(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',98).
==> mpred_prop(f_ruleEffectNOTpermitted(rule),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',98).
==> meta_argtypes(f_ruleEffectNOTpermitted(rule)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:98
%;prédéfinies

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:101
% fluent F_RuleDenied(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',101).
fluent(f_ruleDenied(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',101).
==> mpred_prop(f_ruleDenied(rule),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',101).
==> meta_argtypes(f_ruleDenied(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:102
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',103).
% fluent F_RulePermitted(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',103).
fluent(f_rulePermitted(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',103).
==> mpred_prop(f_rulePermitted(rule),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',103).
==> meta_argtypes(f_rulePermitted(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:103
% fluent F_RuleNotApplicable(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',103).
fluent(f_ruleNotApplicable(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',103).
==> mpred_prop(f_ruleNotApplicable(rule),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',103).
==> meta_argtypes(f_ruleNotApplicable(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:107
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',108).
% event Epermit(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',108).
event(epermit(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',108).
==> mpred_prop(epermit(rule),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',108).
==> meta_argtypes(epermit(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:108
% event EDeny(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',108).
event(eDeny(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',108).
==> mpred_prop(eDeny(rule),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',108).
==> meta_argtypes(eDeny(rule)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:109
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',110).
% event ERuleDoesNotApply(rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',110).
event(eRuleDoesNotApply(rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',110).
==> mpred_prop(eRuleDoesNotApply(rule),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',110).
==> meta_argtypes(eRuleDoesNotApply(rule)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:112
% [rule,time]
 % Initiates(EDeny(rule),F_RuleDenied(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',112).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(eDeny(Rule), f_ruleDenied(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',112).
axiom(initiates(eDeny(Rule), f_ruleDenied(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:113
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',114).
% [rule,time]
 % Initiates(Epermit(rule),F_RulePermitted(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',114).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(epermit(Rule), f_rulePermitted(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',114).
axiom(initiates(epermit(Rule), f_rulePermitted(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:114
% [rule,time]
 % Initiates(ERuleDoesNotApply(rule),F_RuleNotApplicable(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',114).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(eRuleDoesNotApply(Rule),
                    f_ruleNotApplicable(Rule),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',114).
axiom(initiates(eRuleDoesNotApply(Rule), f_ruleNotApplicable(Rule), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:117
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).
% [rule,time]
 % Happens(EDeny(rule),time) -> HoldsAt(F_TargetHolds(rule),time)
%                                             & HoldsAt(F_ConditionSatisfied(rule),time)
%                                             & HoldsAt(F_RuleEffectNOTpermitted(rule),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:119
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  happens(eDeny(Rule), Time) ->
       holds_at(f_targetHolds(Rule), Time),
       holds_at(f_conditionSatisfied(Rule), Time),
       holds_at(f_ruleEffectNOTpermitted(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  not(happens(eDeny(Rule), Time)) :-
       (   not(holds_at(f_targetHolds(Rule), Time))
       ;   not(holds_at(f_conditionSatisfied(Rule), Time))
       ;   not(holds_at(f_ruleEffectNOTpermitted(Rule), Time))
       ).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  [(holds_at(neg(f_targetHolds(Rule)), Time);holds_at(neg(f_conditionSatisfied(Rule)), Time);holds_at(neg(f_ruleEffectNOTpermitted(Rule)), Time))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(eDeny(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).
axiom(not(happens(eDeny(Rule), Time)),
   
    [  (holds_at(neg(f_targetHolds(Rule)), Time);holds_at(neg(f_conditionSatisfied(Rule)), Time);holds_at(neg(f_ruleEffectNOTpermitted(Rule)), Time))
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  holds_at(f_targetHolds(Rule), Time) :-
       happens(eDeny(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  [holds_at(metreqs(eDeny(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(eDeny(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).
axiom(requires(eDeny(Rule), Time),
    [holds_at(metreqs(eDeny(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  [holds_at(f_targetHolds(Rule), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(eDeny(Rule)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).
axiom(holds_at(requirements(eDeny(Rule)), Time),
    [holds_at(f_targetHolds(Rule), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  holds_at(f_conditionSatisfied(Rule), Time) :-
       happens(eDeny(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  [holds_at(metreqs(eDeny(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(eDeny(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).
axiom(requires(eDeny(Rule), Time),
    [holds_at(metreqs(eDeny(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  [holds_at(f_conditionSatisfied(Rule), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(eDeny(Rule)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).
axiom(holds_at(requirements(eDeny(Rule)), Time),
    [holds_at(f_conditionSatisfied(Rule), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  holds_at(f_ruleEffectNOTpermitted(Rule), Time) :-
       happens(eDeny(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  [holds_at(metreqs(eDeny(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(eDeny(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).
axiom(requires(eDeny(Rule), Time),
    [holds_at(metreqs(eDeny(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).

 /*  [holds_at(f_ruleEffectNOTpermitted(Rule), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(eDeny(Rule)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',118).
axiom(holds_at(requirements(eDeny(Rule)), Time),
    [holds_at(f_ruleEffectNOTpermitted(Rule), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:122
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).
% [rule,time]
 % Happens(Epermit(rule),time) -> HoldsAt(F_TargetHolds(rule),time)
%                                             & HoldsAt(F_ConditionSatisfied(rule),time)
%                                             & HoldsAt(F_RuleEffectPermitted(rule),time).
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:124
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  happens(epermit(Rule), Time) ->
       holds_at(f_targetHolds(Rule), Time),
       holds_at(f_conditionSatisfied(Rule), Time),
       holds_at(f_ruleEffectPermitted(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  not(happens(epermit(Rule), Time)) :-
       (   not(holds_at(f_targetHolds(Rule), Time))
       ;   not(holds_at(f_conditionSatisfied(Rule), Time))
       ;   not(holds_at(f_ruleEffectPermitted(Rule), Time))
       ).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  [(holds_at(neg(f_targetHolds(Rule)), Time);holds_at(neg(f_conditionSatisfied(Rule)), Time);holds_at(neg(f_ruleEffectPermitted(Rule)), Time))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(epermit(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).
axiom(not(happens(epermit(Rule), Time)),
   
    [  (holds_at(neg(f_targetHolds(Rule)), Time);holds_at(neg(f_conditionSatisfied(Rule)), Time);holds_at(neg(f_ruleEffectPermitted(Rule)), Time))
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  holds_at(f_targetHolds(Rule), Time) :-
       happens(epermit(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  [holds_at(metreqs(epermit(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(epermit(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).
axiom(requires(epermit(Rule), Time),
    [holds_at(metreqs(epermit(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  [holds_at(f_targetHolds(Rule), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(epermit(Rule)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).
axiom(holds_at(requirements(epermit(Rule)), Time),
    [holds_at(f_targetHolds(Rule), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  holds_at(f_conditionSatisfied(Rule), Time) :-
       happens(epermit(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  [holds_at(metreqs(epermit(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(epermit(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).
axiom(requires(epermit(Rule), Time),
    [holds_at(metreqs(epermit(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  [holds_at(f_conditionSatisfied(Rule), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(epermit(Rule)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).
axiom(holds_at(requirements(epermit(Rule)), Time),
    [holds_at(f_conditionSatisfied(Rule), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  holds_at(f_ruleEffectPermitted(Rule), Time) :-
       happens(epermit(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  [holds_at(metreqs(epermit(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(epermit(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).
axiom(requires(epermit(Rule), Time),
    [holds_at(metreqs(epermit(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).

 /*  [holds_at(f_ruleEffectPermitted(Rule), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(epermit(Rule)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',123).
axiom(holds_at(requirements(epermit(Rule)), Time),
    [holds_at(f_ruleEffectPermitted(Rule), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:126
% [rule,time]
 % Happens(ERuleDoesNotApply(rule),time) -> HoldsAt(F_TargetDoesntHolds(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',126).

 /*  happens(eRuleDoesNotApply(Rule), Time) ->
       holds_at(f_targetDoesntHolds(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',126).

 /*  holds_at(f_targetDoesntHolds(Rule), Time) :-
       happens(eRuleDoesNotApply(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',126).

 /*  [holds_at(metreqs(eRuleDoesNotApply(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(eRuleDoesNotApply(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',126).
axiom(requires(eRuleDoesNotApply(Rule), Time),
    [holds_at(metreqs(eRuleDoesNotApply(Rule)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',126).

 /*  [holds_at(f_targetDoesntHolds(Rule), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(eRuleDoesNotApply(Rule)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',126).
axiom(holds_at(requirements(eRuleDoesNotApply(Rule)), Time),
    [holds_at(f_targetDoesntHolds(Rule), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',126).

 /*  not(happens(eRuleDoesNotApply(Rule), Time)) :-
       not(holds_at(f_targetDoesntHolds(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',126).

 /*  [holds_at(neg(f_targetDoesntHolds(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(eRuleDoesNotApply(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',126).
axiom(not(happens(eRuleDoesNotApply(Rule), Time)),
    [holds_at(neg(f_targetDoesntHolds(Rule)), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:130
% [rule]
 % !HoldsAt(F_RulePermitted(rule),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',130).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_rulePermitted(Rule)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',130).
axiom(initially(neg(f_rulePermitted(Rule))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:131
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',132).
% [rule]
 % !HoldsAt(F_RuleDenied(rule),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',132).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_ruleDenied(Rule)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',132).
axiom(initially(neg(f_ruleDenied(Rule))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:132
% [rule]
 % !HoldsAt(F_RuleNotApplicable(rule),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',132).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_ruleNotApplicable(Rule)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',132).
axiom(initially(neg(f_ruleNotApplicable(Rule))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:137
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',138).
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
 
% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:162
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',163).
% Happens(E_MatchRuleParametters(rule), time) | Happens(E_DontMatchRuleParametters(rule), time) -> time = 0.
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',163).

 /*  happens(e_matchRuleParametters(Rule), Time);happens(e_dontMatchRuleParametters(Rule), Time) ->
       equals(Time, 0).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',163).

 /*  not(happens(e_matchRuleParametters(Rule), Time)) :-
       not(equals(Time, 0)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',163).

 /*  [not(equals(Time, 0))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(e_matchRuleParametters(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',163).
axiom(not(happens(e_matchRuleParametters(Rule), Time)),
    [not(equals(Time, 0))]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',163).

 /*  not(happens(e_dontMatchRuleParametters(Rule), Time)) :-
       not(equals(Time, 0)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',163).

 /*  [not(equals(Time, 0))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(e_dontMatchRuleParametters(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',163).
axiom(not(happens(e_dontMatchRuleParametters(Rule), Time)),
    [not(equals(Time, 0))]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:164
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).
% [rule,time]
 % Happens(EDeny(rule), time) | Happens(Epermit(rule), time) | Happens(ERuleDoesNotApply(rule), time) -> time = 1.
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).

 /*  happens(eDeny(Rule), Time);happens(epermit(Rule), Time);happens(eRuleDoesNotApply(Rule), Time) ->
       equals(Time, 1).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).

 /*  not(happens(eDeny(Rule), Time)) :-
       not(equals(Time, 1)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).

 /*  [not(equals(Time, 1))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(eDeny(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).
axiom(not(happens(eDeny(Rule), Time)),
    [not(equals(Time, 1))]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).

 /*  not(happens(epermit(Rule), Time)) :-
       not(equals(Time, 1)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).

 /*  [not(equals(Time, 1))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(epermit(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).
axiom(not(happens(epermit(Rule), Time)),
    [not(equals(Time, 1))]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).

 /*  not(happens(eRuleDoesNotApply(Rule), Time)) :-
       not(equals(Time, 1)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).

 /*  [not(equals(Time, 1))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(eRuleDoesNotApply(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',165).
axiom(not(happens(eRuleDoesNotApply(Rule), Time)),
    [not(equals(Time, 1))]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:166
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',167).
%;[policy,time] Happens(E_policyPermit(policy), time) | Happens(E_policyDeny(policy), time) | Happens(E_PolicyDoesNotApply(policy),time) -> time = 2.
%;[policyset,time] Happens(E_policysetPermit(policyset), time) | Happens(E_policysetDeny(policyset), time) | Happens(E_policysetDontApply(policyset),time) -> time = 3.
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/PolicySetPatterns/policySetModel.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:176
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',177).
% event E_policysetPermit(policyset)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',177).
event(e_policysetPermit(policyset)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',177).
==> mpred_prop(e_policysetPermit(policyset),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',177).
==> meta_argtypes(e_policysetPermit(policyset)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:177
% event E_policysetDeny(policyset)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',177).
event(e_policysetDeny(policyset)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',177).
==> mpred_prop(e_policysetDeny(policyset),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',177).
==> meta_argtypes(e_policysetDeny(policyset)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:178
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',179).
% event E_policysetDontApply(policyset)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',179).
event(e_policysetDontApply(policyset)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',179).
==> mpred_prop(e_policysetDontApply(policyset),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',179).
==> meta_argtypes(e_policysetDontApply(policyset)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:180
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',181).
% fluent F_policysetPermitted(policyset)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',181).
fluent(f_policysetPermitted(policyset)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',181).
==> mpred_prop(f_policysetPermitted(policyset),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',181).
==> meta_argtypes(f_policysetPermitted(policyset)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:181
% fluent F_policysetDenied(policyset)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',181).
fluent(f_policysetDenied(policyset)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',181).
==> mpred_prop(f_policysetDenied(policyset),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',181).
==> meta_argtypes(f_policysetDenied(policyset)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:182
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',183).
% fluent F_policySetNotApplicable(policyset)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',183).
fluent(f_policySetNotApplicable(policyset)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',183).
==> mpred_prop(f_policySetNotApplicable(policyset),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',183).
==> meta_argtypes(f_policySetNotApplicable(policyset)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:184
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',185).
% predicate PolicysetHaspolicies(policyset,policy)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',185).
predicate(policysetHaspolicies(policyset,policy)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',185).
==> mpred_prop(policysetHaspolicies(policyset,policy),predicate).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',185).
==> meta_argtypes(policysetHaspolicies(policyset,policy)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:187
% [policyset,time]
 % Initiates(E_policysetPermit(policyset),F_policysetPermitted(policyset),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',187).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(e_policysetPermit(Policyset),
                    f_policysetPermitted(Policyset),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',187).
axiom(initiates(e_policysetPermit(Policyset), f_policysetPermitted(Policyset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:188
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',189).
% [policyset,time]
 % Initiates(E_policysetDeny(policyset),F_policysetDenied(policyset),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',189).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(e_policysetDeny(Policyset),
                    f_policysetDenied(Policyset),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',189).
axiom(initiates(e_policysetDeny(Policyset), f_policysetDenied(Policyset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:189
% [policyset,time]
 % Initiates(E_policysetDontApply(policyset),F_policySetNotApplicable(policyset),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',189).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(e_policysetDontApply(Policyset),
                    f_policySetNotApplicable(Policyset),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',189).
axiom(initiates(e_policysetDontApply(Policyset), f_policySetNotApplicable(Policyset), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:193
%; 'policies combaning algorithm (stategy) : All Permit'
% [policyset,policy,time]
 % Happens(E_policysetPermit(policyset),time) & PolicysetHaspolicies(policyset,policy) -> HoldsAt(F_policyPermitted(policy),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',195).

 /*  happens(e_policysetPermit(Policyset), Time), policysetHaspolicies(Policyset, Policy) ->
       holds_at(f_policyPermitted(Policy), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',195).

 /*  holds_at(f_policyPermitted(Policy), Time) :-
       happens(e_policysetPermit(Policyset), Time),
       policysetHaspolicies(Policyset, Policy).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',195).

 /*  [happens(e_policysetPermit(Policyset), Time), policysetHaspolicies(Policyset, Policy)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(f_policyPermitted(Policy), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',195).
axiom(holds_at(f_policyPermitted(Policy), Time),
   
    [ happens(e_policysetPermit(Policyset), Time),
      policysetHaspolicies(Policyset, Policy)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',195).

 /*  not(happens(e_policysetPermit(Policyset), Time)) :-
       policysetHaspolicies(Policyset, Policy),
       not(holds_at(f_policyPermitted(Policy), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',195).

 /*  [policysetHaspolicies(Policyset, Policy), holds_at(neg(f_policyPermitted(Policy)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(e_policysetPermit(Policyset), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',195).
axiom(not(happens(e_policysetPermit(Policyset), Time)),
   
    [ policysetHaspolicies(Policyset, Policy),
      holds_at(neg(f_policyPermitted(Policy)), Time)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',195).

 /*  not(policysetHaspolicies(Policyset, Policy)) :-
       happens(e_policysetPermit(Policyset), Time),
       not(holds_at(f_policyPermitted(Policy), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',195).

 /*  [happens(e_policysetPermit(Policyset), Time), holds_at(neg(f_policyPermitted(Policy)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(policysetHaspolicies(Policyset, Policy))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',195).
axiom(not(policysetHaspolicies(Policyset, Policy)),
   
    [ happens(e_policysetPermit(Policyset), Time),
      holds_at(neg(f_policyPermitted(Policy)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:197
%; 'policies combaning algorithm (stategy) : Deny override'
% [policyset,time]
 % Happens(E_policysetDeny(policyset),time) -> {policy}  PolicysetHaspolicies(policyset,policy) & HoldsAt(F_policyDenied(policy),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).

 /*  happens(e_policysetDeny(Policyset), Time) ->
       exists([Policy],
               (policysetHaspolicies(Policyset, Policy), holds_at(f_policyDenied(Policy), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).

 /*  not(happens(e_policysetDeny(Policyset), Time)) :-
       (   not(policysetHaspolicies(Policyset, Policy))
       ;   not(holds_at(f_policyDenied(Policy), Time))
       ).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).

 /*  [(not(policysetHaspolicies(Policyset, Policy));holds_at(neg(f_policyDenied(Policy)), Time))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(e_policysetDeny(Policyset), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).
axiom(not(happens(e_policysetDeny(Policyset), Time)),
   
    [  (not(policysetHaspolicies(Policyset, Policy));holds_at(neg(f_policyDenied(Policy)), Time))
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).

 /*  policysetHaspolicies(Policyset, Policy) :-
       happens(e_policysetDeny(Policyset), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).

 /*  [holds_at(metreqs(e_policysetDeny(Policyset)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(e_policysetDeny(Policyset), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).
axiom(requires(e_policysetDeny(Policyset), Time),
    [holds_at(metreqs(e_policysetDeny(Policyset)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).

 /*  [policysetHaspolicies(Policyset, Policy)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(e_policysetDeny(Policyset)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).
axiom(holds_at(requirements(e_policysetDeny(Policyset)), Time),
    [policysetHaspolicies(Policyset, Policy)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).

 /*  holds_at(f_policyDenied(Policy), Time) :-
       happens(e_policysetDeny(Policyset), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).

 /*  [holds_at(metreqs(e_policysetDeny(Policyset)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(e_policysetDeny(Policyset), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).
axiom(requires(e_policysetDeny(Policyset), Time),
    [holds_at(metreqs(e_policysetDeny(Policyset)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).

 /*  [holds_at(f_policyDenied(Policy), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(e_policysetDeny(Policyset)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',199).
axiom(holds_at(requirements(e_policysetDeny(Policyset)), Time),
    [holds_at(f_policyDenied(Policy), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:201
%; 'policies combaning algorithm (stategy) : All Permit'
% [policyset,policy,time]
 % Happens(E_policysetDontApply(policyset),time) & PolicysetHaspolicies(policyset,policy) -> HoldsAt(F_policyNotApplicable(policy),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',203).

 /*  happens(e_policysetDontApply(Policyset), Time), policysetHaspolicies(Policyset, Policy) ->
       holds_at(f_policyNotApplicable(Policy), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',203).

 /*  holds_at(f_policyNotApplicable(Policy), Time) :-
       happens(e_policysetDontApply(Policyset), Time),
       policysetHaspolicies(Policyset, Policy).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',203).

 /*  [happens(e_policysetDontApply(Policyset), Time), policysetHaspolicies(Policyset, Policy)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(f_policyNotApplicable(Policy), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',203).
axiom(holds_at(f_policyNotApplicable(Policy), Time),
   
    [ happens(e_policysetDontApply(Policyset), Time),
      policysetHaspolicies(Policyset, Policy)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',203).

 /*  not(happens(e_policysetDontApply(Policyset), Time)) :-
       policysetHaspolicies(Policyset, Policy),
       not(holds_at(f_policyNotApplicable(Policy), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',203).

 /*  [policysetHaspolicies(Policyset, Policy), holds_at(neg(f_policyNotApplicable(Policy)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(e_policysetDontApply(Policyset), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',203).
axiom(not(happens(e_policysetDontApply(Policyset), Time)),
   
    [ policysetHaspolicies(Policyset, Policy),
      holds_at(neg(f_policyNotApplicable(Policy)), Time)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',203).

 /*  not(policysetHaspolicies(Policyset, Policy)) :-
       happens(e_policysetDontApply(Policyset), Time),
       not(holds_at(f_policyNotApplicable(Policy), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',203).

 /*  [happens(e_policysetDontApply(Policyset), Time), holds_at(neg(f_policyNotApplicable(Policy)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(policysetHaspolicies(Policyset, Policy))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',203).
axiom(not(policysetHaspolicies(Policyset, Policy)),
   
    [ happens(e_policysetDontApply(Policyset), Time),
      holds_at(neg(f_policyNotApplicable(Policy)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:205
% [policyset]
% !HoldsAt(F_policysetPermitted(policyset),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',205).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_policysetPermitted(Policyset)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',205).
axiom(initially(neg(f_policysetPermitted(Policyset))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:206
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',207).
% [policyset]
% !HoldsAt(F_policysetDenied(policyset),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',207).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_policysetDenied(Policyset)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',207).
axiom(initially(neg(f_policysetDenied(Policyset))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:207
% [policyset]
% !HoldsAt(F_policySetNotApplicable(policyset),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',207).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_policySetNotApplicable(Policyset)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',207).
axiom(initially(neg(f_policySetNotApplicable(Policyset))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:211
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/PolicyPatterns/policyModel.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:214
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',215).
% event E_policyPermit(policy)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',215).
event(e_policyPermit(policy)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',215).
==> mpred_prop(e_policyPermit(policy),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',215).
==> meta_argtypes(e_policyPermit(policy)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:215
% event E_policyDeny(policy)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',215).
event(e_policyDeny(policy)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',215).
==> mpred_prop(e_policyDeny(policy),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',215).
==> meta_argtypes(e_policyDeny(policy)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:216
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',217).
% event E_PolicyDoesNotApply(policy)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',217).
event(e_policyDoesNotApply(policy)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',217).
==> mpred_prop(e_policyDoesNotApply(policy),event).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',217).
==> meta_argtypes(e_policyDoesNotApply(policy)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:218
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',219).
% fluent F_policyPermitted(policy)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',219).
fluent(f_policyPermitted(policy)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',219).
==> mpred_prop(f_policyPermitted(policy),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',219).
==> meta_argtypes(f_policyPermitted(policy)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:219
% fluent F_policyDenied(policy)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',219).
fluent(f_policyDenied(policy)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',219).
==> mpred_prop(f_policyDenied(policy),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',219).
==> meta_argtypes(f_policyDenied(policy)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:220
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',221).
% fluent F_policyNotApplicable(policy)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',221).
fluent(f_policyNotApplicable(policy)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',221).
==> mpred_prop(f_policyNotApplicable(policy),fluent).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',221).
==> meta_argtypes(f_policyNotApplicable(policy)).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:222
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',223).
% predicate PolicyHasRules(policy,rule)
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',223).
predicate(policyHasRules(policy,rule)).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',223).
==> mpred_prop(policyHasRules(policy,rule),predicate).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',223).
==> meta_argtypes(policyHasRules(policy,rule)).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:225
% [policy,time]
 % Initiates(E_policyPermit(policy),F_policyPermitted(policy),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',225).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(e_policyPermit(Policy),
                    f_policyPermitted(Policy),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',225).
axiom(initiates(e_policyPermit(Policy), f_policyPermitted(Policy), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:226
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',227).
% [policy,time]
 % Initiates(E_policyDeny(policy),F_policyDenied(policy),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',227).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(e_policyDeny(Policy),
                    f_policyDenied(Policy),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',227).
axiom(initiates(e_policyDeny(Policy), f_policyDenied(Policy), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:227
% [policy,time]
 % Initiates(E_PolicyDoesNotApply(policy),F_policyNotApplicable(policy),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',227).

 /*  [] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          initiates(e_policyDoesNotApply(Policy),
                    f_policyNotApplicable(Policy),
                    Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',227).
axiom(initiates(e_policyDoesNotApply(Policy), f_policyNotApplicable(Policy), Time),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:231
%; 'Rule combaning algorithm (stategy) : All Permit'
% [policy,rule,time]
 % Happens(E_policyPermit(policy),time) & PolicyHasRules(policy,rule) -> HoldsAt(F_RulePermitted(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',233).

 /*  happens(e_policyPermit(Policy), Time), policyHasRules(Policy, Rule) ->
       holds_at(f_rulePermitted(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',233).

 /*  holds_at(f_rulePermitted(Rule), Time) :-
       happens(e_policyPermit(Policy), Time),
       policyHasRules(Policy, Rule).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',233).

 /*  [happens(e_policyPermit(Policy), Time), policyHasRules(Policy, Rule)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(f_rulePermitted(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',233).
axiom(holds_at(f_rulePermitted(Rule), Time),
   
    [ happens(e_policyPermit(Policy), Time),
      policyHasRules(Policy, Rule)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',233).

 /*  not(happens(e_policyPermit(Policy), Time)) :-
       policyHasRules(Policy, Rule),
       not(holds_at(f_rulePermitted(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',233).

 /*  [policyHasRules(Policy, Rule), holds_at(neg(f_rulePermitted(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(e_policyPermit(Policy), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',233).
axiom(not(happens(e_policyPermit(Policy), Time)),
   
    [ policyHasRules(Policy, Rule),
      holds_at(neg(f_rulePermitted(Rule)), Time)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',233).

 /*  not(policyHasRules(Policy, Rule)) :-
       happens(e_policyPermit(Policy), Time),
       not(holds_at(f_rulePermitted(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',233).

 /*  [happens(e_policyPermit(Policy), Time), holds_at(neg(f_rulePermitted(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(policyHasRules(Policy, Rule))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',233).
axiom(not(policyHasRules(Policy, Rule)),
   
    [ happens(e_policyPermit(Policy), Time),
      holds_at(neg(f_rulePermitted(Rule)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:235
%; 'Rule combaning algorithm (stategy) : Deny override (s il existe au moin une règle satisfaite)'
% [policy,time]
 % Happens(E_policyDeny(policy),time) -> {rule}  PolicyHasRules(policy,rule) & HoldsAt(F_RuleDenied(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).

 /*  happens(e_policyDeny(Policy), Time) ->
       exists([Rule],
               (policyHasRules(Policy, Rule), holds_at(f_ruleDenied(Rule), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).

 /*  not(happens(e_policyDeny(Policy), Time)) :-
       (   not(policyHasRules(Policy, Rule))
       ;   not(holds_at(f_ruleDenied(Rule), Time))
       ).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).

 /*  [(not(policyHasRules(Policy, Rule));holds_at(neg(f_ruleDenied(Rule)), Time))] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(e_policyDeny(Policy), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).
axiom(not(happens(e_policyDeny(Policy), Time)),
   
    [  (not(policyHasRules(Policy, Rule));holds_at(neg(f_ruleDenied(Rule)), Time))
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).

 /*  policyHasRules(Policy, Rule) :-
       happens(e_policyDeny(Policy), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).

 /*  [holds_at(metreqs(e_policyDeny(Policy)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(e_policyDeny(Policy), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).
axiom(requires(e_policyDeny(Policy), Time),
    [holds_at(metreqs(e_policyDeny(Policy)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).

 /*  [policyHasRules(Policy, Rule)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(e_policyDeny(Policy)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).
axiom(holds_at(requirements(e_policyDeny(Policy)), Time),
    [policyHasRules(Policy, Rule)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).

 /*  holds_at(f_ruleDenied(Rule), Time) :-
       happens(e_policyDeny(Policy), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).

 /*  [holds_at(metreqs(e_policyDeny(Policy)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          requires(e_policyDeny(Policy), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).
axiom(requires(e_policyDeny(Policy), Time),
    [holds_at(metreqs(e_policyDeny(Policy)), Time)]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).

 /*  [holds_at(f_ruleDenied(Rule), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(requirements(e_policyDeny(Policy)), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',237).
axiom(holds_at(requirements(e_policyDeny(Policy)), Time),
    [holds_at(f_ruleDenied(Rule), Time)]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:239
%; 'Rule combaning algorithm (stategy) : All not Applicable'
% [policy,time,rule]
 % Happens(E_PolicyDoesNotApply(policy),time) & PolicyHasRules(policy,rule) -> HoldsAt(F_RuleNotApplicable(rule),time).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',241).

 /*  happens(e_policyDoesNotApply(Policy), Time), policyHasRules(Policy, Rule) ->
       holds_at(f_ruleNotApplicable(Rule), Time).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',241).

 /*  holds_at(f_ruleNotApplicable(Rule), Time) :-
       happens(e_policyDoesNotApply(Policy), Time),
       policyHasRules(Policy, Rule).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',241).

 /*  [happens(e_policyDoesNotApply(Policy), Time), policyHasRules(Policy, Rule)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          holds_at(f_ruleNotApplicable(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',241).
axiom(holds_at(f_ruleNotApplicable(Rule), Time),
   
    [ happens(e_policyDoesNotApply(Policy), Time),
      policyHasRules(Policy, Rule)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',241).

 /*  not(happens(e_policyDoesNotApply(Policy), Time)) :-
       policyHasRules(Policy, Rule),
       not(holds_at(f_ruleNotApplicable(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',241).

 /*  [policyHasRules(Policy, Rule), holds_at(neg(f_ruleNotApplicable(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(happens(e_policyDoesNotApply(Policy), Time))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',241).
axiom(not(happens(e_policyDoesNotApply(Policy), Time)),
   
    [ policyHasRules(Policy, Rule),
      holds_at(neg(f_ruleNotApplicable(Rule)), Time)
    ]).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',241).

 /*  not(policyHasRules(Policy, Rule)) :-
       happens(e_policyDoesNotApply(Policy), Time),
       not(holds_at(f_ruleNotApplicable(Rule), Time)).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',241).

 /*  [happens(e_policyDoesNotApply(Policy), Time), holds_at(neg(f_ruleNotApplicable(Rule)), Time)] ->
       ta(Time,
          tvs1=[Time],
          tvs2=[Time],
          not(policyHasRules(Policy, Rule))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',241).
axiom(not(policyHasRules(Policy, Rule)),
   
    [ happens(e_policyDoesNotApply(Policy), Time),
      holds_at(neg(f_ruleNotApplicable(Rule)), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:243
% [policy]
% !HoldsAt(F_policyPermitted(policy),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',243).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_policyPermitted(Policy)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',243).
axiom(initially(neg(f_policyPermitted(Policy))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:244
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',245).
% [policy]
% !HoldsAt(F_policyDenied(policy),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',245).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_policyDenied(Policy)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',245).
axiom(initially(neg(f_policyDenied(Policy))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:245
% [policy]
% !HoldsAt(F_policyNotApplicable(policy),0).
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',245).

 /*  [] ->
       ta(Ta_Param,
          tvs1=[],
          tvs2=[],
          initially(neg(f_policyNotApplicable(Policy)))).
 */
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',245).
axiom(initially(neg(f_policyNotApplicable(Policy))),
    []).


% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:249
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%; FILE: includes/SaaSPatterns/input.e
%; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:252
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',253).
% subject Navas
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',253).
==> t(subject,navas).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:253
% object Gloves
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',253).
==> t(object,gloves).

% From /opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e:254
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',255).
% action Get
:-was_s_l('/opt/logicmoo_workspace/packs_sys/logicmoo_nlu/prolog/ec_planner/ectest/ec_reader_test_includes.e',255).
==> t(action,get).
