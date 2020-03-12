%% incoming

aXiom(go_upstairs) -->
	(   hands_are_free -> bring_up_dishes).

aXiom(go_downstairs) -->
	(   hands_are_free -> bring_down_towels).
