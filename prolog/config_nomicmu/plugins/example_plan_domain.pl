


      
%% Have been in close contact with a person known to have COVID-19 or
%% have recently traveled from an area with widespread or ongoing
%% community spread of COVID-19 . Call ahead before you go to a
%% doctor’s office or emergency room. Tell them about your recent
%% travel and your symptoms.

%% Fact 3 Someone who has completed quarantine or has been released
%% from isolation does not pose a risk of infection to other people.

aXiom(when_true(daily)) ==>>
  begin_task(monitor_for_symptoms_of_virus), % dont end the task
  complete_task(wipe_down_all_surfaces_in_the_household_with_virus_killing_hospital_grade_santizing_wipes).

hasSymptoms(coronavirus,[fever,cough,shortnessOfBreath]).


aXiom(when_true(when_being_being_passed_by_community_spread_in_your_country)) ==>> 
  begin_task(restrict_all_unnecessary_travel).

restrict_all_unnecessary_travel :-
	do_not_go_to_the_gym.

if_there_is_a_confirmed_case_in_flint :-
	stay_indoors_as_much_as_possible,
	if_you_go_outside_stay_6_feet_or_more_from_passers_by,
	shop_at_times_of_day_where_there_are_not_a_lot_of_people,
	have_home_gym.

aXiom(when_true(if_there_is_an_outbreak_in_flint)) ==>>
  complete_task(do_not_leave_house_at_all) ;
  complete_task(leave_the_city).

leave_the_city :-
	get_tested_for_coronavirus.


get_tested_for_coronavirus :-
	(   outbreak_in_of(Flint,coronavirus) -> true ; true).

get_home_test_kits :-
	true.

if_we_have_to_go_to_a_place_where_there_is_a_known_case :-
	true.

if_our_loved_ones_insist_on_going_to_a_place_where_there_is_a_known_case :-
	(   if_loved_one_lives_with_you ->
	    institute_home_lockdown ;
	    true).

institute_home_lockdown :-
	do_not_leave_rooms,
	stay_6_feet_apart.

what_if_someone_in_the_house_becomes_sick :-
	true.

what_if_we_have_to_go_out_of_the_house :-
	true.


aXiom(go_shopping(Person)) ==>>
  shop_at_times_of_day_where_there_are_not_a_lot_of_people.
	

   aXiom(act(leave_house(Person,House))) ==>>
      precond(suggested,act(turn_down_heat(Person,House))).

aXiom(before_task(start_drive_car(Person,Car)))  ==>>
 complete_task(check_tire_pressure(Person,Car)),
 complete_task(get_in_car(Person,Car)),
 complete_task(ensure_have_enough_fuel_remaining(Person,Car)),
 complete_task(put_on_seat_belt(Person,Car)).

aXiom(before_task(buy_groceries(Person)))  ==>>
     ensure_you_are_replete(Person),
     resides_at(Person,House),
     located_at(KitchenTable,House),
     isa(KitchenTable,kitchenTable),
     ensure_kitchen_table_is_cleared(Person,Kitchentable),
     (
         buy_groceries_at(Person,nearestFn(aldi)) ;
         buy_groceries_at(Person,nearestFn(walmart))
     ).



aXiom(want(A,at(the(dishes),upstairs))) ==>>
   holding(A,dishes),
   do_act(go_upstairs(A)).

oper_db(A, go_upstairs(A),
   [holding(A,dishes), ~at(A,upstairs)], 
   [at(the(dishes),upstairs),at(A,upstairs)]).

aXiom(buy_groceries_at(Person,AldiStore)) ==>>
 storeIsPartOfChain(AldiStore,aldi),
 ensure(possesses(Person,Quarter)),
 isa(Quarter,quarter),
 ensure(possesses(Person,Bags)),
 isa(Bags,shoppingBags),
 go_to(Person,AldiStore).


clean_regularly :-
	true.

good_hygiene :-
	true.

hold_practice_trials :-
	someone_sick_in_the_house.
	

prepare_for_prolonged_outbreak :-
	true.

what_to_do_if_you_are_sick_with_coronavirus_disease_2019_covid_19 :-
	stay_home_except_to_get_medical_care,
	separate_yourself_from_other_people_and_animals_in_your_home.

separate_yourself_from_other_people_and_animals_in_your_home :-
	'as much as possible, you should stay in a specific room and away from other people in your home. Also, you should use a separate bathroom, if available'.



