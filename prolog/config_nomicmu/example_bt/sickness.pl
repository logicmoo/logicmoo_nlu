.aXiom(declare_a_sick_day) -->
	declare_an_off_off_day,
	prevent_going_to_gym,
	treat_sickness.

aXiom(treat_sickness) -->
	(   treat_cold ; true_flu).

aXiom(treat_cold) -->
	has_cold,
	drink_emergen_c_packet,
	schedule_meal_chicken_soup,
	schedule_nap.

must_cough_or_sneeze -->
	covert_cough_or_sneeze_with_with_a_tissue,
	wash_hands.

% %% source: 30 seconds: ?
% %% source: 70 percent: Amanda
wash_hands(Person) -->
	has_household(Person,Household),
	(   if_hands_are_visibly_dirty(Person) ->
	    wash_hands_with_soap_and_water_for_at_least_30_seconds(Person) ;
	    (	if_soap_and_water_are_readily_available(Household) ->
		wash_hands_with_soap_and_water_for_at_least_30_seconds(Person) ;
		wash_hands_with_a_hand_sanitizer_that_is_at_least_70_percent_alcohol(Person))).

wash_hands_with_a_hand_sanitizer_that_is_at_least_70_percent_alcohol(Person) -->
	wash_hands_with_hand_sanitzer_covering_all_surfaces_of_your_hands_and_rubbing_them_together_until_they_feel_dry(Person).

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% %% Flu Symptoms

% %% fever* or feeling feverish/chills.
% %% cough.
% %% sore throat.
% %% runny or stuffy nose.
% %% muscle or body aches.
% %% headaches.
% %% fatigue (tiredness)
% %% some people may have vomiting and diarrhea, though this is more common in children than adults.

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% %% The most common symptoms of fever include:

% %% headache
% %% warm forehead
% %% chills
% %% aching muscles
% %% general feeling of weakness
% %% sore eyes
% %% loss of appetite
% %% dehydration
% %% swollen lymph nodes

% %% Infants or young children who have a fever may also experience:

% %% greater irritability than usual
% %% lethargy
% %% flushed skin
% %% paleness
% %% difficulty swallowing
% %% refusal to eat, drink, or breastfeed

% %% In severe cases, a fever may cause:

% %% excessive sleepiness
% %% confusion
% %% convulsions
% %% severe pain in other parts of the body
% %% unusual vaginal discharge
% %% pain during urination
% %% skin rash
% %% vomiting
% %% diarrhea

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%