aXiom(do_exercises) -->
	exercise_upper_body,
	skip_a_day,
	exercise_lower_body,
	skip_a_day,
	exercise_upper_body,
	skip_a_day,
	exercise_lower_body,
	.

aXiom(exercise_upper_body) -->
	pre_exercise_routine,
	stretch_with_a_roller,
	do_some_brisk_walking_for_1_to_5_mins,
	do_three_compound_exercises_for_upper_body,
	post_exercise_routine
	.

aXiom(pre_exercise_routine) -->
	have_decent_meal_of_nutritious_food,
	ensure_not_hungry,
	have_bottle_of_water_or_sugar_free_gatorade
	.

aXiom(post_exercise_routine) -->
	wait_between_30_mins_and_two_hours,
	ensure_eat_20_grams_of_protein_and_ensure_40_grams_of_carbohydrates,
	ensure_7_to_9_hours_of_sleep
	.

wait_between_30_mins_and_two_hours ~?
	{dur 1800},
	{dur 3600},
	{dur 5400},
	{dur 7200}
	.

aXiom(have_decent_meal_of_nutritious_food) -->
	ensure_eat_20_grams_of_protein_and_ensure_40_grams_of_carbohydrates
	.

ensure_eat_20_grams_of_protein_and_ensure_40_grams_of_carbohydrates ~?
	eat_bowl_of_oatmeal_and_a_couple_of_scrambled_eggs,
	eat_ham_sandwich,
	eat_gatorade_bar
	.

aXiom(do_three_compound_exercises_for_upper_body) -->
	shoulder_press,
	shoulder_row,
	chest_press
	.

aXiom(shoulder_press) -->
	do_3_to_5_sets_of_8_to_12_reps
	.

aXiom(shoulder_row) -->
	do_3_to_5_sets_of_8_to_12_reps
	.

aXiom(chest_press) -->
	do_3_to_5_sets_of_8_to_12_reps
	.

aXiom(do_3_to_5_sets_of_8_to_12_reps) -->
	set_of_8_to_12,
	rest_30_to_120_seconds,
	set_of_8_to_12,
	rest_30_to_120_seconds,
	set_of_8_to_12,
	rest_30_to_120_seconds,
	optional_set_of_8_to_12,
	rest_30_to_120_seconds,
	optional_set_of_8_to_12

aXiom(set_of_8_to_12) -->
	do_rep,
	do_rep,
	do_rep,
	do_rep,
	do_rep,
	do_rep,
	do_rep,
	do_rep
	optional_do_rep,
	optional_do_rep,
	optional_do_rep,
	optional_do_rep
	.
	
rest_30_to_120_seconds ~?
	{dur 30},
	{dur 60},
	{dur 90},
	{dur 120}
	.

aXiom(exercise_lower_body) -->
	pre_exercise_routine,
	stretch_with_a_roller,
	do_some_brisk_walking_for_1_to_5_mins,
	do_three_compound_exercises_for_lower_body
	.

aXiom(do_three_compound_exercises_for_lower_body) -->
	dead_lifts,
	squats,
	lunges
	.

aXiom(dead_lifts) -->
	do_4_to_6_sets_of_4_to_6_reps
	.

aXiom(squats) -->
	do_3_to_5_sets_of_8_to_12_reps
	.

aXiom(lunges) -->
	do_3_to_5_sets_of_8_to_12_reps
	.

aXiom(do_4_to_6_sets_of_4_to_6_reps) -->
	set_of_4_to_6_reps,
	rest_120_seconds,
	set_of_4_to_6_reps,
	rest_120_seconds,
	set_of_4_to_6_reps,
	rest_120_seconds,
	set_of_4_to_6_reps,
	rest_120_seconds,
	optional_set_of_4_to_6_reps,
	rest_120_seconds,
	optional_set_of_4_to_6_reps
	.

rest_120_seconds dur 120.

aXiom(set_of_4_to_6_reps) -->
	do_rep,
	do_rep,
	do_rep,
	do_rep,
	optional_do_rep,
	optional_do_rep
	.
