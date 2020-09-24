

:- begin_tests(test_lex_info).



test('?- test_lex_info("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("His friends are liked by hers.",[bad_juju,sanity]),_479026).


test('?- test_lex_info("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("Her friends are not liked by his.",[bad_juju,sanity]),_479026).


test('?- test_lex_info("Do their friends like each other?",[bad_juju,feature])',[true(compound(_479026)),nondet]):-call(test_lex_info("Do their friends like each other?",[bad_juju,feature]),_479026).


test('?- test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_479074),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_479074),sanity]),_479026).


test('?- test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_479072),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_479072),sanity]),_479026).


test('?- test_lex_info("There are 5 houses with five different colors.",[riddle(_479076),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("There are 5 houses with five different colors.",[riddle(_479076),sanity]),_479026).


test('?- test_lex_info("There are 5 houses",[riddle_prep,sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("There are 5 houses",[riddle_prep,sanity]),_479026).


test('?- test_lex_info("Each house has a different color",[riddle_prep,sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("Each house has a different color",[riddle_prep,sanity]),_479026).


test('?- test_lex_info("In each house lives a person with a different nationality.",[riddle(_479080),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("In each house lives a person with a different nationality.",[riddle(_479080),sanity]),_479026).


test('?- test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_479026).


test('?- test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_479026).


test('?- test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_479026)),nondet]):-call(test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_479026).


test('?- test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_479026)),nondet]):-call(test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_479026).


test('?- test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_479026).


test('?- test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_479026)),nondet]):-call(test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression]),_479026).


test('?- test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_479026)),nondet]):-call(test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_479026).


test('?- test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_479026).


test('?- test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_479026)),nondet]):-call(test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression]),_479026).


test('?- test_lex_info("The brit lives in the red house.",[riddle(_479074),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The brit lives in the red house.",[riddle(_479074),sanity]),_479026).


test('?- test_lex_info("The swede keeps dogs as pets.",[riddle(_479072),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The swede keeps dogs as pets.",[riddle(_479072),sanity]),_479026).


test('?- test_lex_info("A dane drinks tea.",[riddle(_479070),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("A dane drinks tea.",[riddle(_479070),sanity]),_479026).


test('?- test_lex_info("The green house is on the left of the white house.",[riddle(_479078),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The green house is on the left of the white house.",[riddle(_479078),sanity]),_479026).


test('?- test_lex_info("The green house\'s owner drinks coffee.",[riddle(_479074),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The green house's owner drinks coffee.",[riddle(_479074),sanity]),_479026).


test('?- test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_479076),sanity,regression])',[true(compound(_479026)),nondet]):-call(test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_479076),sanity,regression]),_479026).


test('?- test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_479076),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_479076),sanity]),_479026).


test('?- test_lex_info("The man living in the center house drinks milk.",[riddle(_479078),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The man living in the center house drinks milk.",[riddle(_479078),sanity]),_479026).


test('?- test_lex_info("The Norwegian lives in the first house .",[riddle(_479076),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The Norwegian lives in the first house .",[riddle(_479076),sanity]),_479026).


test('?- test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_479082),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_479082),sanity]),_479026).


test('?- test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_479082),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_479082),sanity]),_479026).


test('?- test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_479076),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_479076),sanity]),_479026).


test('?- test_lex_info("The German smokes Prince.",[riddle(_479072),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The German smokes Prince.",[riddle(_479072),sanity]),_479026).


test('?- test_lex_info("The Norwegian lives next to the blue house.",[riddle(_479076),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The Norwegian lives next to the blue house.",[riddle(_479076),sanity]),_479026).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_479080),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_479080),sanity]),_479026).


test('?- test_lex_info("Who owns the fish?",[riddle(_479070),sanity])',[true(compound(_479026)),nondet]):-call(test_lex_info("Who owns the fish?",[riddle(_479070),sanity]),_479026).


test('?- test_lex_info("One woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("One woman paints.",[quants]),_479026).


test('?- test_lex_info("No woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("No woman paints.",[quants]),_479026).


test('?- test_lex_info("Some woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Some woman paints.",[quants]),_479026).


test('?- test_lex_info("Every woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Every woman paints.",[quants]),_479026).


test('?- test_lex_info("Each woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Each woman paints.",[quants]),_479026).


test('?- test_lex_info("Any woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Any woman paints.",[quants]),_479026).


test('?- test_lex_info("The woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("The woman paints.",[quants]),_479026).


test('?- test_lex_info("The not woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("The not woman paints.",[quants]),_479026).


test('?- test_lex_info("Not a woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not a woman paints.",[quants]),_479026).


test('?- test_lex_info("Not one woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not one woman paints.",[quants]),_479026).


test('?- test_lex_info("Not no woman paints.",[quants_neg_postcond])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not no woman paints.",[quants_neg_postcond]),_479026).


test('?- test_lex_info("Not some woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not some woman paints.",[quants]),_479026).


test('?- test_lex_info("Not every woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not every woman paints.",[quants]),_479026).


test('?- test_lex_info("Not each woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not each woman paints.",[quants]),_479026).


test('?- test_lex_info("Not any woman paints.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not any woman paints.",[quants]),_479026).


test('?- test_lex_info("The women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("The women paint.",[quants]),_479026).


test('?- test_lex_info("Women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Women paint.",[quants]),_479026).


test('?- test_lex_info("Some women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Some women paint.",[quants]),_479026).


test('?- test_lex_info("No women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("No women paint.",[quants]),_479026).


test('?- test_lex_info("All women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("All women paint.",[quants]),_479026).


test('?- test_lex_info("Any women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Any women paint.",[quants]),_479026).


test('?- test_lex_info("Not women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not women paint.",[quants]),_479026).


test('?- test_lex_info("Not no women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not no women paint.",[quants]),_479026).


test('?- test_lex_info("Not all women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not all women paint.",[quants]),_479026).


test('?- test_lex_info("Not any women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not any women paint.",[quants]),_479026).


test('?- test_lex_info("The three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("The three women paint.",[quants]),_479026).


test('?- test_lex_info("Three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Three women paint.",[quants]),_479026).


test('?- test_lex_info("Some three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Some three women paint.",[quants]),_479026).


test('?- test_lex_info("No three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("No three women paint.",[quants]),_479026).


test('?- test_lex_info("Every three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Every three women paint.",[quants]),_479026).


test('?- test_lex_info("All three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("All three women paint.",[quants]),_479026).


test('?- test_lex_info("Any three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Any three women paint.",[quants]),_479026).


test('?- test_lex_info("Not three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not three women paint.",[quants]),_479026).


test('?- test_lex_info("Not some three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not some three women paint.",[quants]),_479026).


test('?- test_lex_info("Not no three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not no three women paint.",[quants]),_479026).


test('?- test_lex_info("Not all three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not all three women paint.",[quants]),_479026).


test('?- test_lex_info("Not every three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not every three women paint.",[quants]),_479026).


test('?- test_lex_info("Not any three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not any three women paint.",[quants]),_479026).


test('?- test_lex_info("Not three of the women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not three of the women paint.",[quants]),_479026).


test('?- test_lex_info("Not some of the three women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not some of the three women paint.",[quants]),_479026).


test('?- test_lex_info("Not no three of the women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not no three of the women paint.",[quants]),_479026).


test('?- test_lex_info("Not all three of the women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not all three of the women paint.",[quants]),_479026).


test('?- test_lex_info("Not every three of the women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not every three of the women paint.",[quants]),_479026).


test('?- test_lex_info("Not any three of the women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not any three of the women paint.",[quants]),_479026).


test('?- test_lex_info("Not three of the four women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not three of the four women paint.",[quants]),_479026).


test('?- test_lex_info("Not none of three out of the four women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not none of three out of the four women paint.",[quants]),_479026).


test('?- test_lex_info("Not all three of the four women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not all three of the four women paint.",[quants]),_479026).


test('?- test_lex_info("Not any three of the four women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not any three of the four women paint.",[quants]),_479026).


test('?- test_lex_info("Three of the four women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Three of the four women paint.",[quants]),_479026).


test('?- test_lex_info("Three out of the four women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Three out of the four women paint.",[quants]),_479026).


test('?- test_lex_info("All three of the four women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("All three of the four women paint.",[quants]),_479026).


test('?- test_lex_info("Any three of the four women paint.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("Any three of the four women paint.",[quants]),_479026).


test('?- test_lex_info("I paint",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("I paint",[pronoun]),_479026).


test('?- test_lex_info("you paint",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("you paint",[pronoun]),_479026).


test('?- test_lex_info("We paint",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("We paint",[pronoun]),_479026).


test('?- test_lex_info("None paint",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("None paint",[pronoun]),_479026).


test('?- test_lex_info("They paint",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("They paint",[pronoun]),_479026).


test('?- test_lex_info("Some paint",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Some paint",[pronoun]),_479026).


test('?- test_lex_info("It paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("It paints",[pronoun]),_479026).


test('?- test_lex_info("he paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("he paints",[pronoun]),_479026).


test('?- test_lex_info("She paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She paints",[pronoun]),_479026).


test('?- test_lex_info("Someone paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Someone paints",[pronoun]),_479026).


test('?- test_lex_info("Anybody paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Anybody paints",[pronoun]),_479026).


test('?- test_lex_info("Anyone paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Anyone paints",[pronoun]),_479026).


test('?- test_lex_info("Anything paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Anything paints",[pronoun]),_479026).


test('?- test_lex_info("Everybody paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Everybody paints",[pronoun]),_479026).


test('?- test_lex_info("Everyone paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Everyone paints",[pronoun]),_479026).


test('?- test_lex_info("Everything paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Everything paints",[pronoun]),_479026).


test('?- test_lex_info("Nobody paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Nobody paints",[pronoun]),_479026).


test('?- test_lex_info("No one paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("No one paints",[pronoun]),_479026).


test('?- test_lex_info("Nothing paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Nothing paints",[pronoun]),_479026).


test('?- test_lex_info("One paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("One paints",[pronoun]),_479026).


test('?- test_lex_info("Somebody paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Somebody paints",[pronoun]),_479026).


test('?- test_lex_info("Something paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Something paints",[pronoun]),_479026).


test('?- test_lex_info("Not anybody paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not anybody paints",[pronoun]),_479026).


test('?- test_lex_info("Not anyone paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not anyone paints",[pronoun]),_479026).


test('?- test_lex_info("Not anything paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not anything paints",[pronoun]),_479026).


test('?- test_lex_info("Not everybody paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not everybody paints",[pronoun]),_479026).


test('?- test_lex_info("Not everyone paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not everyone paints",[pronoun]),_479026).


test('?- test_lex_info("Not everything paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not everything paints",[pronoun]),_479026).


test('?- test_lex_info("Not nothing paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not nothing paints",[pronoun]),_479026).


test('?- test_lex_info("Not one paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not one paints",[pronoun]),_479026).


test('?- test_lex_info("Not somebody paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not somebody paints",[pronoun]),_479026).


test('?- test_lex_info("Not something paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("Not something paints",[pronoun]),_479026).


test('?- test_lex_info("She likes i",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes i",[pronoun]),_479026).


test('?- test_lex_info("She likes me",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes me",[pronoun]),_479026).


test('?- test_lex_info("She likes you",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes you",[pronoun]),_479026).


test('?- test_lex_info("She likes it",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes it",[pronoun]),_479026).


test('?- test_lex_info("She likes us",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes us",[pronoun]),_479026).


test('?- test_lex_info("She likes them",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes them",[pronoun]),_479026).


test('?- test_lex_info("She likes no one",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes no one",[pronoun]),_479026).


test('?- test_lex_info("She likes none",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes none",[pronoun]),_479026).


test('?- test_lex_info("She likes him",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes him",[pronoun]),_479026).


test('?- test_lex_info("She likes herself",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes herself",[pronoun]),_479026).


test('?- test_lex_info("She likes himself",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("She likes himself",[pronoun]),_479026).


test('?- test_lex_info("It is us that paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("It is us that paints",[pronoun]),_479026).


test('?- test_lex_info("It is them that paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("It is them that paints",[pronoun]),_479026).


test('?- test_lex_info("It is he that paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("It is he that paints",[pronoun]),_479026).


test('?- test_lex_info("It is she that paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("It is she that paints",[pronoun]),_479026).


test('?- test_lex_info("It is her that paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("It is her that paints",[pronoun]),_479026).


test('?- test_lex_info("It is him that paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("It is him that paints",[pronoun]),_479026).


test('?- test_lex_info("We are us that paint",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("We are us that paint",[pronoun]),_479026).


test('?- test_lex_info("We are all of us that paint",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("We are all of us that paint",[pronoun]),_479026).


test('?- test_lex_info("It is everybody that paints",[pronoun])',[true(compound(_479026)),nondet]):-call(test_lex_info("It is everybody that paints",[pronoun]),_479026).


test('?- test_lex_info("Every man that paints likes monet.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Every man that paints likes monet.",[bratko]),_479026).


test('?- test_lex_info("A woman that admires John paints.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A woman that admires John paints.",[bratko]),_479026).


test('?- test_lex_info("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Every woman that likes a man that admires monet paints.",[bratko]),_479026).


test('?- test_lex_info("John likes Annie.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("John likes Annie.",[bratko]),_479026).


test('?- test_lex_info("Annie likes a man that admires monet.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Annie likes a man that admires monet.",[bratko]),_479026).


test('?- test_lex_info("Bertrand Russell wrote principia.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Bertrand Russell wrote principia.",[bratko]),_479026).


test('?- test_lex_info("An author wrote principia.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("An author wrote principia.",[bratko]),_479026).


test('?- test_lex_info("Iraq is a country.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Iraq is a country.",[bratko]),_479026).


test('?- test_lex_info("A happy author wrote principia.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A happy author wrote principia.",[bratko]),_479026).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_479026).


test('?- test_lex_info("Bertrand is an author.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Bertrand is an author.",[bratko]),_479026).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_479026).


test('?- test_lex_info("Every author is a programmer.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Every author is a programmer.",[bratko]),_479026).


test('?- test_lex_info("Is Bertrand an programmer?",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Is Bertrand an programmer?",[bratko]),_479026).


test('?- test_lex_info("What is a author?",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("What is a author?",[bratko]),_479026).


test('?- test_lex_info("What did Bertrand write?",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("What did Bertrand write?",[bratko]),_479026).


test('?- test_lex_info("What is a book?",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("What is a book?",[bratko]),_479026).


test('?- test_lex_info("Principia is a book.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Principia is a book.",[bratko]),_479026).


test('?- test_lex_info("Bertrand is Bertrand.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Bertrand is Bertrand.",[bratko]),_479026).


test('?- test_lex_info("Shrdlu halts.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Shrdlu halts.",[bratko]),_479026).


test('?- test_lex_info("Every student wrote a program.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Every student wrote a program.",[bratko]),_479026).


test('?- test_lex_info("Terry writes a program.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Terry writes a program.",[bratko]),_479026).


test('?- test_lex_info("Terry writes a program that halts.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("Terry writes a program that halts.",[bratko]),_479026).


test('?- test_lex_info("An author of every book wrote a program.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("An author of every book wrote a program.",[bratko]),_479026).


test('?- test_lex_info("A man hapilly maried paints.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A man hapilly maried paints.",[bratko]),_479026).


test('?- test_lex_info("A hapilly maried man paints.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A hapilly maried man paints.",[bratko]),_479026).


test('?- test_lex_info("A man who knows paints.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A man who knows paints.",[bratko]),_479026).


test('?- test_lex_info("A man gives something.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A man gives something.",[bratko]),_479026).


test('?- test_lex_info("A man gives his word.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A man gives his word.",[bratko]),_479026).


test('?- test_lex_info("A man of his word paints.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A man of his word paints.",[bratko]),_479026).


test('?- test_lex_info("A man paints.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A man paints.",[bratko]),_479026).


test('?- test_lex_info("A man that paints paints.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A man that paints paints.",[bratko]),_479026).


test('?- test_lex_info("A man walks.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A man walks.",[bratko]),_479026).


test('?- test_lex_info("A man that walks paints.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A man that walks paints.",[bratko]),_479026).


test('?- test_lex_info("It halts.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("It halts.",[bratko]),_479026).


test('?- test_lex_info("A man of his word that walks paints.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("A man of his word that walks paints.",[bratko]),_479026).


test('?- test_lex_info("The cost of what the product is changes.",[bratko])',[true(compound(_479026)),nondet]):-call(test_lex_info("The cost of what the product is changes.",[bratko]),_479026).


test('?- test_lex_info("We need a virtual machine server.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("We need a virtual machine server.",[aindy]),_479026).


test('?- test_lex_info("The virtual machine server should have several VMs.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("The virtual machine server should have several VMs.",[aindy]),_479026).


test('?- test_lex_info("One VM should be the POSI VM.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("One VM should be the POSI VM.",[aindy]),_479026).


test('?- test_lex_info("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("One VM should be the FRDCSA.org VM.",[aindy]),_479026).


test('?- test_lex_info("One VM should be the mail server.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("One VM should be the mail server.",[aindy]),_479026).


test('?- test_lex_info("One computer should be the backup server.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("One computer should be the backup server.",[aindy]),_479026).


test('?- test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_479026).


test('?- test_lex_info("I need a fast computer for work.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I need a fast computer for work.",[aindy]),_479026).


test('?- test_lex_info("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_479026).


test('?- test_lex_info("I need a dedicated computer for network security research.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I need a dedicated computer for network security research.",[aindy]),_479026).


test('?- test_lex_info("I need a machine to run Tails on.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I need a machine to run Tails on.",[aindy]),_479026).


test('?- test_lex_info("I need a machine off the network for airgap security.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I need a machine off the network for airgap security.",[aindy]),_479026).


test('?- test_lex_info("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("One VM should be the game server for running game development projects.",[aindy]),_479026).


test('?- test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_479026).


test('?- test_lex_info("I could read about how to build a private watson.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I could read about how to build a private watson.",[aindy]),_479026).


test('?- test_lex_info("Need backups.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("Need backups.",[aindy]),_479026).


test('?- test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy]),_479026).


test('?- test_lex_info("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("Set up schedules for updating the software on all machines.",[aindy]),_479026).


test('?- test_lex_info("Read books on server room layout.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("Read books on server room layout.",[aindy]),_479026).


test('?- test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_479026).


test('?- test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_479026).


test('?- test_lex_info("I want a gaming computer.  Do I?",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I want a gaming computer.  Do I?",[aindy]),_479026).


test('?- test_lex_info("I want a windows 7 computer for work.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I want a windows 7 computer for work.",[aindy]),_479026).


test('?- test_lex_info("I want a fast linux computer for work.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I want a fast linux computer for work.",[aindy]),_479026).


test('?- test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_479026).


test('?- test_lex_info("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I could install a fresh operating system on justin for work.",[aindy]),_479026).


test('?- test_lex_info("I probably want a separate git computer.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I probably want a separate git computer.",[aindy]),_479026).


test('?- test_lex_info("I need to start buying servers.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I need to start buying servers.",[aindy]),_479026).


test('?- test_lex_info("I want a rackmount case for servers.",[aindy])',[true(compound(_479026)),nondet]):-call(test_lex_info("I want a rackmount case for servers.",[aindy]),_479026).


test('?- test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)]),_479026).


test('?- test_lex_info("2 oceans border each african country.",[chat80(tell)])',[true(compound(_479026)),nondet]):-call(test_lex_info("2 oceans border each african country.",[chat80(tell)]),_479026).


test('?- test_lex_info("There are 10 large cars.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("There are 10 large cars.",[quants]),_479026).


test('?- test_lex_info("There are 10 oceans.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("There are 10 oceans.",[quants]),_479026).


test('?- test_lex_info("There are 10 women.",[quants])',[true(compound(_479026)),nondet]):-call(test_lex_info("There are 10 women.",[quants]),_479026).


test('?- test_lex_info("An ocean borders an African country.",[chat80(tell)])',[true(compound(_479026)),nondet]):-call(test_lex_info("An ocean borders an African country.",[chat80(tell)]),_479026).


test('?- test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_479026)),nondet]):-call(test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell]),_479026).


test('?- test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_479026)),nondet]):-call(test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_479026).


test('?- test_lex_info("Bertrand wrote a book.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Bertrand wrote a book.",[bratko(book)]),_479026).


test('?- test_lex_info("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Bertrand wrote nothing.",[bratko(book)]),_479026).


test('?- test_lex_info("Bertrand wrote.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Bertrand wrote.",[bratko(book)]),_479026).


test('?- test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)]),_479026).


test('?- test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)]),_479026).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_479026).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_479026).


test('?- test_lex_info("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("What did alfred write to Bertrand?",[bratko(book)]),_479026).


test('?- test_lex_info("Alfred wrote a letter.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Alfred wrote a letter.",[bratko(book)]),_479026).


test('?- test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)]),_479026).


test('?- test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)]),_479026).


test('?- test_lex_info("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand.",[bratko(book)]),_479026).


test('?- test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)]),_479026).


test('?- test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)]),_479026).


test('?- test_lex_info("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Who did alfred write a letter to?",[bratko(book)]),_479026).


test('?- test_lex_info("Alfred gave it.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Alfred gave it.",[bratko(book)]),_479026).


test('?- test_lex_info("Alfred gave a book.",[bratko(book)])',[true(compound(_479026)),nondet]):-call(test_lex_info("Alfred gave a book.",[bratko(book)]),_479026).


test('?- test_lex_info("a pride of lions paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a pride of lions paint",[of]),_479026).


test('?- test_lex_info("a flock of birds paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a flock of birds paint",[of]),_479026).


test('?- test_lex_info("a litter of pups paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a litter of pups paint",[of]),_479026).


test('?- test_lex_info("a prickle of porcupines paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a prickle of porcupines paint",[of]),_479026).


test('?- test_lex_info("a litter of cubs paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a litter of cubs paint",[of]),_479026).


test('?- test_lex_info("a pack of dogs paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a pack of dogs paint",[of]),_479026).


test('?- test_lex_info("a colony of beavers paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a colony of beavers paint",[of]),_479026).


test('?- test_lex_info("a gaggle of geese paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a gaggle of geese paint",[of]),_479026).


test('?- test_lex_info("a family of otters paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a family of otters paint",[of]),_479026).


test('?- test_lex_info("a huddle of walruses paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a huddle of walruses paint",[of]),_479026).


test('?- test_lex_info("a herd of deer paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a herd of deer paint",[of]),_479026).


test('?- test_lex_info("a culture of bacteria paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a culture of bacteria paint",[of]),_479026).


test('?- test_lex_info("a swarm of bees paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a swarm of bees paint",[of]),_479026).


test('?- test_lex_info("a bed of clams paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a bed of clams paint",[of]),_479026).


test('?- test_lex_info("a school of cod paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a school of cod paint",[of]),_479026).


test('?- test_lex_info("a herd of dinosaurs paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a herd of dinosaurs paint",[of]),_479026).


test('?- test_lex_info("a mess of iguanas paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a mess of iguanas paint",[of]),_479026).


test('?- test_lex_info("a mob of wombats paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a mob of wombats paint",[of]),_479026).


test('?- test_lex_info("a pod of pelicans paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a pod of pelicans paint",[of]),_479026).


test('?- test_lex_info("a troop of boy scouts paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a troop of boy scouts paint",[of]),_479026).


test('?- test_lex_info("a team of athletes paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a team of athletes paint",[of]),_479026).


test('?- test_lex_info("a panel of experts paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a panel of experts paint",[of]),_479026).


test('?- test_lex_info("a crew of sailors paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a crew of sailors paint",[of]),_479026).


test('?- test_lex_info("a band of robbers paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a band of robbers paint",[of]),_479026).


test('?- test_lex_info("a troupe of performers paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a troupe of performers paint",[of]),_479026).


test('?- test_lex_info("a crowd of onlookers paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a crowd of onlookers paint",[of]),_479026).


test('?- test_lex_info("a curse of painters paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a curse of painters paint",[of]),_479026).


test('?- test_lex_info("a fleet of cars paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a fleet of cars paint",[of]),_479026).


test('?- test_lex_info("a pair of shoes paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a pair of shoes paint",[of]),_479026).


test('?- test_lex_info("a fleet of ships paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("a fleet of ships paint",[of]),_479026).


test('?- test_lex_info("an anthology of stories paint",[of])',[true(compound(_479026)),nondet]):-call(test_lex_info("an anthology of stories paint",[of]),_479026).


test('?- test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_1758).


test('?- test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_1758).


test('?- test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_1758).


test('?- test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_1758).


test('?- test_lex_info("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_1758).


test('?- test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_1758).


test('?- test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_1758).


test('?- test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest]),_1758).


test('?- test_lex_info("Logged on player character",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Logged on player character",[descriptionTest]),_1758).


test('?- test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_1758).


test('?- test_lex_info("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_1758).


test('?- test_lex_info("Wesley is her son",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Wesley is her son",[descriptionTest]),_1758).


test('?- test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_1758).


test('?- test_lex_info("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Counselor Deanna Troi is here",[descriptionTest]),_1758).


test('?- test_lex_info("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Counselor Troi is the ship's main counselor",[descriptionTest]),_1758).


test('?- test_lex_info("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_1758).


test('?- test_lex_info("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Commander William Riker is here, staring at you",[descriptionTest]),_1758).


test('?- test_lex_info("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Commander Riker is the Enterprise's first officer",[descriptionTest]),_1758).


test('?- test_lex_info("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("He's in charge of keeping the crew in line",[descriptionTest]),_1758).


test('?- test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_1758).


test('?- test_lex_info("Captain Picard is a very important man",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Captain Picard is a very important man",[descriptionTest]),_1758).


test('?- test_lex_info("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("He's very smart, and very wise",[descriptionTest]),_1758).


test('?- test_lex_info("Don\'t mess with him!",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Don't mess with him!",[descriptionTest]),_1758).


test('?- test_lex_info("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Guinan is here, tending the bar",[descriptionTest]),_1758).


test('?- test_lex_info("Guinan is a strange being",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Guinan is a strange being",[descriptionTest]),_1758).


test('?- test_lex_info("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_1758).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_1758).


test('?- test_lex_info("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_1758).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_1758).


test('?- test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_1758).


test('?- test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_1758).


test('?- test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_1758).


test('?- test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_1758).


test('?- test_lex_info("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Livingston is Captain Picard's pet fish",[descriptionTest]),_1758).


test('?- test_lex_info("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_1758).


test('?- test_lex_info("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_1758).


test('?- test_lex_info("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Spot is Data's orange coloured cat",[descriptionTest]),_1758).


test('?- test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_1758).


test('?- test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest]),_1758).


test('?- test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_1758).


test('?- test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_1758).


test('?- test_lex_info("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Alexander Rozhenko is Worf's son",[descriptionTest]),_1758).


test('?- test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_1758).


test('?- test_lex_info("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_1758).


test('?- test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest]),_1758).


test('?- test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_1758).


test('?- test_lex_info("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A large phaser rifle is lying here",[descriptionTest]),_1758).


test('?- test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_1758).


test('?- test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_1758).


test('?- test_lex_info("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_1758).


test('?- test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_1758).


test('?- test_lex_info("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_1758).


test('?- test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_1758).


test('?- test_lex_info("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_1758).


test('?- test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest]),_1758).


test('?- test_lex_info("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_1758).


test('?- test_lex_info("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A Starfleet communication badge is lying here",[descriptionTest]),_1758).


test('?- test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_1758).


test('?- test_lex_info("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Worf's silver chain sash has been left here",[descriptionTest]),_1758).


test('?- test_lex_info("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_1758).


test('?- test_lex_info("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Geordi's VISOR is lying here",[descriptionTest]),_1758).


test('?- test_lex_info("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_1758).


test('?- test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_1758).


test('?- test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_1758).


test('?- test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest]),_1758).


test('?- test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_1758).


test('?- test_lex_info("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Captain Picard's wooden flute is sitting here",[descriptionTest]),_1758).


test('?- test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_1758).


test('?- test_lex_info("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Commander Riker's trombone has been placed here",[descriptionTest]),_1758).


test('?- test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_1758).


test('?- test_lex_info("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A small cup of tea is sitting here",[descriptionTest]),_1758).


test('?- test_lex_info("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A bottle of synthehol is standing here",[descriptionTest]),_1758).


test('?- test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest]),_1758).


test('?- test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_1758).


test('?- test_lex_info("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A small glass of prune juice is sitting here",[descriptionTest]),_1758).


test('?- test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest]),_1758).


test('?- test_lex_info("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You find yourself in the middle of main engineering",[descriptionTest]),_1758).


test('?- test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_1758).


test('?- test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_1758).


test('?- test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_1758).


test('?- test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the middle of Geordi's quarters",[descriptionTest]),_1758).


test('?- test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_1758).


test('?- test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_1758).


test('?- test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest]),_1758).


test('?- test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the middle of Data's quarters",[descriptionTest]),_1758).


test('?- test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_1758).


test('?- test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_1758).


test('?- test_lex_info("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the dimly lit Brig",[descriptionTest]),_1758).


test('?- test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_1758).


test('?- test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_1758).


test('?- test_lex_info(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_1758).


test('?- test_lex_info("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the Enterprise transporter room",[descriptionTest]),_1758).


test('?- test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_1758).


test('?- test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_1758).


test('?- test_lex_info("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You find yourself in a transporter beam",[descriptionTest]),_1758).


test('?- test_lex_info("All you can see is blue flashing light",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("All you can see is blue flashing light",[descriptionTest]),_1758).


test('?- test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest]),_1758).


test('?- test_lex_info("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_1758).


test('?- test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest]),_1758).


test('?- test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_1758).


test('?- test_lex_info("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the turbolift",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the turbolift",[descriptionTest]),_1758).


test('?- test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_1758).


test('?- test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest]),_1758).


test('?- test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're now on Holodeck 2",[descriptionTest]),_1758).


test('?- test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_1758).


test('?- test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_1758).


test('?- test_lex_info("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Right now, this holodeck is not functioning",[descriptionTest]),_1758).


test('?- test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the main cargo bay of the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_1758).


test('?- test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_1758).


test('?- test_lex_info("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You've arrived in Riker's quarters",[descriptionTest]),_1758).


test('?- test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_1758).


test('?- test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_1758).


test('?- test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_1758).


test('?- test_lex_info("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_1758).


test('?- test_lex_info("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You emerge into a dark narrow alley",[descriptionTest]),_1758).


test('?- test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest]),_1758).


test('?- test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_1758).


test('?- test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_1758).


test('?- test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_1758).


test('?- test_lex_info("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The archway leading out of the holodeck is west",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in Doctor Crusher's quarters",[descriptionTest]),_1758).


test('?- test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_1758).


test('?- test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_1758).


test('?- test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_1758).


test('?- test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_1758).


test('?- test_lex_info("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_1758).


test('?- test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_1758).


test('?- test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_1758).


test('?- test_lex_info("A large grey door leads into space",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A large grey door leads into space",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest]),_1758).


test('?- test_lex_info("You feel very cold",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You feel very cold",[descriptionTest]),_1758).


test('?- test_lex_info("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_1758).


test('?- test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_1758).


test('?- test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in Worf's quarters",[descriptionTest]),_1758).


test('?- test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_1758).


test('?- test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_1758).


test('?- test_lex_info("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You emerge into the Enterprise gym",[descriptionTest]),_1758).


test('?- test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest]),_1758).


test('?- test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_1758).


test('?- test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_1758).


test('?- test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_1758).


test('?- test_lex_info("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_1758).


test('?- test_lex_info("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_1758).


test('?- test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_1758).


test('?- test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_1758).


test('?- test_lex_info("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Two large windows offer a great view of space",[descriptionTest]),_1758).


test('?- test_lex_info("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the Enterprise science lab",[descriptionTest]),_1758).


test('?- test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_1758).


test('?- test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_1758).


test('?- test_lex_info("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A complex looking computer console is facing this machine",[descriptionTest]),_1758).


test('?- test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_1758).


test('?- test_lex_info("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_1758).


test('?- test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're standing in Captain Picard's ready room",[descriptionTest]),_1758).


test('?- test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_1758).


test('?- test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_1758).


test('?- test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_1758).


test('?- test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest]),_1758).


test('?- test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_1758).


test('?- test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_1758).


test('?- test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_1758).


test('?- test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_1758).


test('?- test_lex_info("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("This is where the ship's pilot and information officer sit",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're in the conference room of the Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_1758).


test('?- test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_1758).


test('?- test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_1758).


test('?- test_lex_info("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_1758)),nondet]):-call(test_lex_info("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_1758).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_1758).


test('?- test_lex_info("no two owners eat pizza",[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info("no two owners eat pizza",[sanity]),_1758).


test('?- test_lex_info("no three owners eat pizza",[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info("no three owners eat pizza",[sanity]),_1758).


test('?- test_lex_info("no three owners eat the same pizza",[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info("no three owners eat the same pizza",[sanity]),_1758).


test('?- test_lex_info("no three owners eat the same kind of pizza",[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info("no three owners eat the same kind of pizza",[sanity]),_1758).


test('?- test_lex_info("no owners eat the same pizza",[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info("no owners eat the same pizza",[sanity]),_1758).


test('?- test_lex_info("no owners eat the same kind of pizza",[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info("no owners eat the same kind of pizza",[sanity]),_1758).


test('?- test_lex_info("there are 5 houses",[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info("there are 5 houses",[sanity]),_1758).


test('?- test_lex_info("there are not 5 houses",[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info("there are not 5 houses",[sanity]),_1758).


test('?- test_lex_info("there are not zero houses",[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info("there are not zero houses",[sanity]),_1758).


test('?- test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_1758)),nondet]):-call(test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug]),_1758).


test('?- test_lex_info(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info(noun_phrase("at most the 5 owners"),[sanity]),_1758).


test('?- test_lex_info(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info(noun_phrase("at most 5 owners"),[sanity]),_1758).


test('?- test_lex_info(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info(noun_phrase("less than 3 owners"),[sanity]),_1758).


test('?- test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_1758)),nondet]):-call(test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity]),_1758).


test('?- test_lex_info(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_1758)),nondet]):-call(test_lex_info(noun_phrase("no three owners"),[sanity,no_working]),_1758).


test('?- test_lex_info("terry writes a non-program.",[tell])',[true(compound(_1758)),nondet]):-call(test_lex_info("terry writes a non-program.",[tell]),_1758).


test('?- test_lex_info("every nonhuman programmer writes a program.",[tell])',[true(compound(_1758)),nondet]):-call(test_lex_info("every nonhuman programmer writes a program.",[tell]),_1758).


test('?- test_lex_info("every human programmer writes a not a program.",[tell])',[true(compound(_1758)),nondet]):-call(test_lex_info("every human programmer writes a not a program.",[tell]),_1758).


test('?- test_lex_info("every human programmer happily writes a not a program.",[tell])',[true(compound(_1758)),nondet]):-call(test_lex_info("every human programmer happily writes a not a program.",[tell]),_1758).


:- end_tests(test_lex_info).



:- begin_tests(chat80).



test('?- chat80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_1928)),nondet]):-call(chat80("His friends are liked by hers.",[bad_juju,sanity]),_1928).


test('?- chat80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_1928)),nondet]):-call(chat80("Her friends are not liked by his.",[bad_juju,sanity]),_1928).


test('?- chat80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_1928)),nondet]):-call(chat80("Do their friends like each other?",[bad_juju,feature]),_1928).


test('?- chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_1976),sanity])',[true(compound(_1928)),nondet]):-call(chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_1976),sanity]),_1928).


test('?- chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_1974),sanity])',[true(compound(_1928)),nondet]):-call(chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_1974),sanity]),_1928).


test('?- chat80("There are 5 houses with five different colors.",[riddle(_1978),sanity])',[true(compound(_1928)),nondet]):-call(chat80("There are 5 houses with five different colors.",[riddle(_1978),sanity]),_1928).


test('?- chat80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_1928)),nondet]):-call(chat80("There are 5 houses",[riddle_prep,sanity]),_1928).


test('?- chat80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_1928)),nondet]):-call(chat80("Each house has a different color",[riddle_prep,sanity]),_1928).


test('?- chat80("In each house lives a person with a different nationality.",[riddle(_1982),sanity])',[true(compound(_1928)),nondet]):-call(chat80("In each house lives a person with a different nationality.",[riddle(_1982),sanity]),_1928).


test('?- chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_1928)),nondet]):-call(chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_1928).


test('?- chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_1928)),nondet]):-call(chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_1928).


test('?- chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_1928)),nondet]):-call(chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_1928).


test('?- chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_1928)),nondet]):-call(chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_1928).


test('?- chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_1928)),nondet]):-call(chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_1928).


test('?- chat80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_1928)),nondet]):-call(chat80("No owners have the same pet.",[riddle(1),sanity,regression]),_1928).


test('?- chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_1928)),nondet]):-call(chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_1928).


test('?- chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_1928)),nondet]):-call(chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_1928).


test('?- chat80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_1928)),nondet]):-call(chat80("No two owners have the same pet.",[riddle(1),sanity,regression]),_1928).


test('?- chat80("The brit lives in the red house.",[riddle(_1976),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The brit lives in the red house.",[riddle(_1976),sanity]),_1928).


test('?- chat80("The swede keeps dogs as pets.",[riddle(_1974),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The swede keeps dogs as pets.",[riddle(_1974),sanity]),_1928).


test('?- chat80("A dane drinks tea.",[riddle(_1972),sanity])',[true(compound(_1928)),nondet]):-call(chat80("A dane drinks tea.",[riddle(_1972),sanity]),_1928).


test('?- chat80("The green house is on the left of the white house.",[riddle(_1980),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The green house is on the left of the white house.",[riddle(_1980),sanity]),_1928).


test('?- chat80("The green house\'s owner drinks coffee.",[riddle(_1976),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The green house's owner drinks coffee.",[riddle(_1976),sanity]),_1928).


test('?- chat80("The person who smokes Pall Mall rears birds.",[riddle(_1978),sanity,regression])',[true(compound(_1928)),nondet]):-call(chat80("The person who smokes Pall Mall rears birds.",[riddle(_1978),sanity,regression]),_1928).


test('?- chat80("The owner of the yellow house smokes Dunhill.",[riddle(_1978),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The owner of the yellow house smokes Dunhill.",[riddle(_1978),sanity]),_1928).


test('?- chat80("The man living in the center house drinks milk.",[riddle(_1980),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The man living in the center house drinks milk.",[riddle(_1980),sanity]),_1928).


test('?- chat80("The Norwegian lives in the first house .",[riddle(_1978),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The Norwegian lives in the first house .",[riddle(_1978),sanity]),_1928).


test('?- chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_1984),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_1984),sanity]),_1928).


test('?- chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_1984),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_1984),sanity]),_1928).


test('?- chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_1978),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_1978),sanity]),_1928).


test('?- chat80("The German smokes Prince.",[riddle(_1974),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The German smokes Prince.",[riddle(_1974),sanity]),_1928).


test('?- chat80("The Norwegian lives next to the blue house.",[riddle(_1978),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The Norwegian lives next to the blue house.",[riddle(_1978),sanity]),_1928).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_1982),sanity])',[true(compound(_1928)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_1982),sanity]),_1928).


test('?- chat80("Who owns the fish?",[riddle(_1972),sanity])',[true(compound(_1928)),nondet]):-call(chat80("Who owns the fish?",[riddle(_1972),sanity]),_1928).


test('?- chat80("One woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("One woman paints.",[quants]),_1928).


test('?- chat80("No woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("No woman paints.",[quants]),_1928).


test('?- chat80("Some woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Some woman paints.",[quants]),_1928).


test('?- chat80("Every woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Every woman paints.",[quants]),_1928).


test('?- chat80("Each woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Each woman paints.",[quants]),_1928).


test('?- chat80("Any woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Any woman paints.",[quants]),_1928).


test('?- chat80("The woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("The woman paints.",[quants]),_1928).


test('?- chat80("The not woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("The not woman paints.",[quants]),_1928).


test('?- chat80("Not a woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not a woman paints.",[quants]),_1928).


test('?- chat80("Not one woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not one woman paints.",[quants]),_1928).


test('?- chat80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_1928)),nondet]):-call(chat80("Not no woman paints.",[quants_neg_postcond]),_1928).


test('?- chat80("Not some woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not some woman paints.",[quants]),_1928).


test('?- chat80("Not every woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not every woman paints.",[quants]),_1928).


test('?- chat80("Not each woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not each woman paints.",[quants]),_1928).


test('?- chat80("Not any woman paints.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not any woman paints.",[quants]),_1928).


test('?- chat80("The women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("The women paint.",[quants]),_1928).


test('?- chat80("Women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Women paint.",[quants]),_1928).


test('?- chat80("Some women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Some women paint.",[quants]),_1928).


test('?- chat80("No women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("No women paint.",[quants]),_1928).


test('?- chat80("All women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("All women paint.",[quants]),_1928).


test('?- chat80("Any women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Any women paint.",[quants]),_1928).


test('?- chat80("Not women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not women paint.",[quants]),_1928).


test('?- chat80("Not no women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not no women paint.",[quants]),_1928).


test('?- chat80("Not all women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not all women paint.",[quants]),_1928).


test('?- chat80("Not any women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not any women paint.",[quants]),_1928).


test('?- chat80("The three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("The three women paint.",[quants]),_1928).


test('?- chat80("Three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Three women paint.",[quants]),_1928).


test('?- chat80("Some three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Some three women paint.",[quants]),_1928).


test('?- chat80("No three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("No three women paint.",[quants]),_1928).


test('?- chat80("Every three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Every three women paint.",[quants]),_1928).


test('?- chat80("All three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("All three women paint.",[quants]),_1928).


test('?- chat80("Any three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Any three women paint.",[quants]),_1928).


test('?- chat80("Not three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not three women paint.",[quants]),_1928).


test('?- chat80("Not some three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not some three women paint.",[quants]),_1928).


test('?- chat80("Not no three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not no three women paint.",[quants]),_1928).


test('?- chat80("Not all three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not all three women paint.",[quants]),_1928).


test('?- chat80("Not every three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not every three women paint.",[quants]),_1928).


test('?- chat80("Not any three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not any three women paint.",[quants]),_1928).


test('?- chat80("Not three of the women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not three of the women paint.",[quants]),_1928).


test('?- chat80("Not some of the three women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not some of the three women paint.",[quants]),_1928).


test('?- chat80("Not no three of the women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not no three of the women paint.",[quants]),_1928).


test('?- chat80("Not all three of the women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not all three of the women paint.",[quants]),_1928).


test('?- chat80("Not every three of the women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not every three of the women paint.",[quants]),_1928).


test('?- chat80("Not any three of the women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not any three of the women paint.",[quants]),_1928).


test('?- chat80("Not three of the four women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not three of the four women paint.",[quants]),_1928).


test('?- chat80("Not none of three out of the four women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not none of three out of the four women paint.",[quants]),_1928).


test('?- chat80("Not all three of the four women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not all three of the four women paint.",[quants]),_1928).


test('?- chat80("Not any three of the four women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Not any three of the four women paint.",[quants]),_1928).


test('?- chat80("Three of the four women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Three of the four women paint.",[quants]),_1928).


test('?- chat80("Three out of the four women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Three out of the four women paint.",[quants]),_1928).


test('?- chat80("All three of the four women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("All three of the four women paint.",[quants]),_1928).


test('?- chat80("Any three of the four women paint.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("Any three of the four women paint.",[quants]),_1928).


test('?- chat80("I paint",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("I paint",[pronoun]),_1928).


test('?- chat80("you paint",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("you paint",[pronoun]),_1928).


test('?- chat80("We paint",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("We paint",[pronoun]),_1928).


test('?- chat80("None paint",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("None paint",[pronoun]),_1928).


test('?- chat80("They paint",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("They paint",[pronoun]),_1928).


test('?- chat80("Some paint",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Some paint",[pronoun]),_1928).


test('?- chat80("It paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("It paints",[pronoun]),_1928).


test('?- chat80("he paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("he paints",[pronoun]),_1928).


test('?- chat80("She paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She paints",[pronoun]),_1928).


test('?- chat80("Someone paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Someone paints",[pronoun]),_1928).


test('?- chat80("Anybody paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Anybody paints",[pronoun]),_1928).


test('?- chat80("Anyone paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Anyone paints",[pronoun]),_1928).


test('?- chat80("Anything paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Anything paints",[pronoun]),_1928).


test('?- chat80("Everybody paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Everybody paints",[pronoun]),_1928).


test('?- chat80("Everyone paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Everyone paints",[pronoun]),_1928).


test('?- chat80("Everything paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Everything paints",[pronoun]),_1928).


test('?- chat80("Nobody paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Nobody paints",[pronoun]),_1928).


test('?- chat80("No one paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("No one paints",[pronoun]),_1928).


test('?- chat80("Nothing paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Nothing paints",[pronoun]),_1928).


test('?- chat80("One paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("One paints",[pronoun]),_1928).


test('?- chat80("Somebody paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Somebody paints",[pronoun]),_1928).


test('?- chat80("Something paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Something paints",[pronoun]),_1928).


test('?- chat80("Not anybody paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Not anybody paints",[pronoun]),_1928).


test('?- chat80("Not anyone paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Not anyone paints",[pronoun]),_1928).


test('?- chat80("Not anything paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Not anything paints",[pronoun]),_1928).


test('?- chat80("Not everybody paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Not everybody paints",[pronoun]),_1928).


test('?- chat80("Not everyone paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Not everyone paints",[pronoun]),_1928).


test('?- chat80("Not everything paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Not everything paints",[pronoun]),_1928).


test('?- chat80("Not nothing paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Not nothing paints",[pronoun]),_1928).


test('?- chat80("Not one paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Not one paints",[pronoun]),_1928).


test('?- chat80("Not somebody paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Not somebody paints",[pronoun]),_1928).


test('?- chat80("Not something paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("Not something paints",[pronoun]),_1928).


test('?- chat80("She likes i",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes i",[pronoun]),_1928).


test('?- chat80("She likes me",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes me",[pronoun]),_1928).


test('?- chat80("She likes you",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes you",[pronoun]),_1928).


test('?- chat80("She likes it",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes it",[pronoun]),_1928).


test('?- chat80("She likes us",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes us",[pronoun]),_1928).


test('?- chat80("She likes them",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes them",[pronoun]),_1928).


test('?- chat80("She likes no one",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes no one",[pronoun]),_1928).


test('?- chat80("She likes none",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes none",[pronoun]),_1928).


test('?- chat80("She likes him",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes him",[pronoun]),_1928).


test('?- chat80("She likes herself",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes herself",[pronoun]),_1928).


test('?- chat80("She likes himself",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("She likes himself",[pronoun]),_1928).


test('?- chat80("It is us that paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("It is us that paints",[pronoun]),_1928).


test('?- chat80("It is them that paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("It is them that paints",[pronoun]),_1928).


test('?- chat80("It is he that paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("It is he that paints",[pronoun]),_1928).


test('?- chat80("It is she that paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("It is she that paints",[pronoun]),_1928).


test('?- chat80("It is her that paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("It is her that paints",[pronoun]),_1928).


test('?- chat80("It is him that paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("It is him that paints",[pronoun]),_1928).


test('?- chat80("We are us that paint",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("We are us that paint",[pronoun]),_1928).


test('?- chat80("We are all of us that paint",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("We are all of us that paint",[pronoun]),_1928).


test('?- chat80("It is everybody that paints",[pronoun])',[true(compound(_1928)),nondet]):-call(chat80("It is everybody that paints",[pronoun]),_1928).


test('?- chat80("Every man that paints likes monet.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Every man that paints likes monet.",[bratko]),_1928).


test('?- chat80("A woman that admires John paints.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A woman that admires John paints.",[bratko]),_1928).


test('?- chat80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Every woman that likes a man that admires monet paints.",[bratko]),_1928).


test('?- chat80("John likes Annie.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("John likes Annie.",[bratko]),_1928).


test('?- chat80("Annie likes a man that admires monet.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Annie likes a man that admires monet.",[bratko]),_1928).


test('?- chat80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Bertrand Russell wrote principia.",[bratko]),_1928).


test('?- chat80("An author wrote principia.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("An author wrote principia.",[bratko]),_1928).


test('?- chat80("Iraq is a country.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Iraq is a country.",[bratko]),_1928).


test('?- chat80("A happy author wrote principia.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A happy author wrote principia.",[bratko]),_1928).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_1928).


test('?- chat80("Bertrand is an author.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Bertrand is an author.",[bratko]),_1928).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_1928).


test('?- chat80("Every author is a programmer.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Every author is a programmer.",[bratko]),_1928).


test('?- chat80("Is Bertrand an programmer?",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Is Bertrand an programmer?",[bratko]),_1928).


test('?- chat80("What is a author?",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("What is a author?",[bratko]),_1928).


test('?- chat80("What did Bertrand write?",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("What did Bertrand write?",[bratko]),_1928).


test('?- chat80("What is a book?",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("What is a book?",[bratko]),_1928).


test('?- chat80("Principia is a book.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Principia is a book.",[bratko]),_1928).


test('?- chat80("Bertrand is Bertrand.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Bertrand is Bertrand.",[bratko]),_1928).


test('?- chat80("Shrdlu halts.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Shrdlu halts.",[bratko]),_1928).


test('?- chat80("Every student wrote a program.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Every student wrote a program.",[bratko]),_1928).


test('?- chat80("Terry writes a program.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Terry writes a program.",[bratko]),_1928).


test('?- chat80("Terry writes a program that halts.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("Terry writes a program that halts.",[bratko]),_1928).


test('?- chat80("An author of every book wrote a program.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("An author of every book wrote a program.",[bratko]),_1928).


test('?- chat80("A man hapilly maried paints.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A man hapilly maried paints.",[bratko]),_1928).


test('?- chat80("A hapilly maried man paints.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A hapilly maried man paints.",[bratko]),_1928).


test('?- chat80("A man who knows paints.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A man who knows paints.",[bratko]),_1928).


test('?- chat80("A man gives something.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A man gives something.",[bratko]),_1928).


test('?- chat80("A man gives his word.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A man gives his word.",[bratko]),_1928).


test('?- chat80("A man of his word paints.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A man of his word paints.",[bratko]),_1928).


test('?- chat80("A man paints.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A man paints.",[bratko]),_1928).


test('?- chat80("A man that paints paints.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A man that paints paints.",[bratko]),_1928).


test('?- chat80("A man walks.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A man walks.",[bratko]),_1928).


test('?- chat80("A man that walks paints.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A man that walks paints.",[bratko]),_1928).


test('?- chat80("It halts.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("It halts.",[bratko]),_1928).


test('?- chat80("A man of his word that walks paints.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("A man of his word that walks paints.",[bratko]),_1928).


test('?- chat80("The cost of what the product is changes.",[bratko])',[true(compound(_1928)),nondet]):-call(chat80("The cost of what the product is changes.",[bratko]),_1928).


test('?- chat80("We need a virtual machine server.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("We need a virtual machine server.",[aindy]),_1928).


test('?- chat80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("The virtual machine server should have several VMs.",[aindy]),_1928).


test('?- chat80("One VM should be the POSI VM.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("One VM should be the POSI VM.",[aindy]),_1928).


test('?- chat80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("One VM should be the FRDCSA.org VM.",[aindy]),_1928).


test('?- chat80("One VM should be the mail server.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("One VM should be the mail server.",[aindy]),_1928).


test('?- chat80("One computer should be the backup server.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("One computer should be the backup server.",[aindy]),_1928).


test('?- chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_1928).


test('?- chat80("I need a fast computer for work.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I need a fast computer for work.",[aindy]),_1928).


test('?- chat80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_1928).


test('?- chat80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I need a dedicated computer for network security research.",[aindy]),_1928).


test('?- chat80("I need a machine to run Tails on.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I need a machine to run Tails on.",[aindy]),_1928).


test('?- chat80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I need a machine off the network for airgap security.",[aindy]),_1928).


test('?- chat80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("One VM should be the game server for running game development projects.",[aindy]),_1928).


test('?- chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_1928).


test('?- chat80("I could read about how to build a private watson.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I could read about how to build a private watson.",[aindy]),_1928).


test('?- chat80("Need backups.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("Need backups.",[aindy]),_1928).


test('?- chat80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("Practice setting up backups of a machine to a different machine.",[aindy]),_1928).


test('?- chat80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("Set up schedules for updating the software on all machines.",[aindy]),_1928).


test('?- chat80("Read books on server room layout.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("Read books on server room layout.",[aindy]),_1928).


test('?- chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_1928).


test('?- chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_1928).


test('?- chat80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I want a gaming computer.  Do I?",[aindy]),_1928).


test('?- chat80("I want a windows 7 computer for work.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I want a windows 7 computer for work.",[aindy]),_1928).


test('?- chat80("I want a fast linux computer for work.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I want a fast linux computer for work.",[aindy]),_1928).


test('?- chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_1928).


test('?- chat80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I could install a fresh operating system on justin for work.",[aindy]),_1928).


test('?- chat80("I probably want a separate git computer.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I probably want a separate git computer.",[aindy]),_1928).


test('?- chat80("I need to start buying servers.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I need to start buying servers.",[aindy]),_1928).


test('?- chat80("I want a rackmount case for servers.",[aindy])',[true(compound(_1928)),nondet]):-call(chat80("I want a rackmount case for servers.",[aindy]),_1928).


test('?- chat80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_1928)),nondet]):-call(chat80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_1928).


test('?- chat80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_1928)),nondet]):-call(chat80("2 oceans border each african country.",[chat80(tell)]),_1928).


test('?- chat80("There are 10 large cars.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("There are 10 large cars.",[quants]),_1928).


test('?- chat80("There are 10 oceans.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("There are 10 oceans.",[quants]),_1928).


test('?- chat80("There are 10 women.",[quants])',[true(compound(_1928)),nondet]):-call(chat80("There are 10 women.",[quants]),_1928).


test('?- chat80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_1928)),nondet]):-call(chat80("An ocean borders an African country.",[chat80(tell)]),_1928).


test('?- chat80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_1928)),nondet]):-call(chat80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_1928).


test('?- chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_1928)),nondet]):-call(chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_1928).


test('?- chat80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Bertrand wrote a book.",[bratko(book)]),_1928).


test('?- chat80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Bertrand wrote nothing.",[bratko(book)]),_1928).


test('?- chat80("Bertrand wrote.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Bertrand wrote.",[bratko(book)]),_1928).


test('?- chat80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_1928).


test('?- chat80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Bertrand wrote about Gottlob.",[bratko(book)]),_1928).


test('?- chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_1928).


test('?- chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_1928).


test('?- chat80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("What did alfred write to Bertrand?",[bratko(book)]),_1928).


test('?- chat80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Alfred wrote a letter.",[bratko(book)]),_1928).


test('?- chat80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_1928).


test('?- chat80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Alfred wrote something to Bertrand.",[bratko(book)]),_1928).


test('?- chat80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Alfred wrote to Bertrand.",[bratko(book)]),_1928).


test('?- chat80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_1928).


test('?- chat80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Alfred wrote Bertrand a letter.",[bratko(book)]),_1928).


test('?- chat80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Who did alfred write a letter to?",[bratko(book)]),_1928).


test('?- chat80("Alfred gave it.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Alfred gave it.",[bratko(book)]),_1928).


test('?- chat80("Alfred gave a book.",[bratko(book)])',[true(compound(_1928)),nondet]):-call(chat80("Alfred gave a book.",[bratko(book)]),_1928).


test('?- chat80("a pride of lions paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a pride of lions paint",[of]),_1928).


test('?- chat80("a flock of birds paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a flock of birds paint",[of]),_1928).


test('?- chat80("a litter of pups paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a litter of pups paint",[of]),_1928).


test('?- chat80("a prickle of porcupines paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a prickle of porcupines paint",[of]),_1928).


test('?- chat80("a litter of cubs paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a litter of cubs paint",[of]),_1928).


test('?- chat80("a pack of dogs paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a pack of dogs paint",[of]),_1928).


test('?- chat80("a colony of beavers paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a colony of beavers paint",[of]),_1928).


test('?- chat80("a gaggle of geese paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a gaggle of geese paint",[of]),_1928).


test('?- chat80("a family of otters paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a family of otters paint",[of]),_1928).


test('?- chat80("a huddle of walruses paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a huddle of walruses paint",[of]),_1928).


test('?- chat80("a herd of deer paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a herd of deer paint",[of]),_1928).


test('?- chat80("a culture of bacteria paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a culture of bacteria paint",[of]),_1928).


test('?- chat80("a swarm of bees paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a swarm of bees paint",[of]),_1928).


test('?- chat80("a bed of clams paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a bed of clams paint",[of]),_1928).


test('?- chat80("a school of cod paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a school of cod paint",[of]),_1928).


test('?- chat80("a herd of dinosaurs paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a herd of dinosaurs paint",[of]),_1928).


test('?- chat80("a mess of iguanas paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a mess of iguanas paint",[of]),_1928).


test('?- chat80("a mob of wombats paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a mob of wombats paint",[of]),_1928).


test('?- chat80("a pod of pelicans paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a pod of pelicans paint",[of]),_1928).


test('?- chat80("a troop of boy scouts paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a troop of boy scouts paint",[of]),_1928).


test('?- chat80("a team of athletes paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a team of athletes paint",[of]),_1928).


test('?- chat80("a panel of experts paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a panel of experts paint",[of]),_1928).


test('?- chat80("a crew of sailors paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a crew of sailors paint",[of]),_1928).


test('?- chat80("a band of robbers paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a band of robbers paint",[of]),_1928).


test('?- chat80("a troupe of performers paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a troupe of performers paint",[of]),_1928).


test('?- chat80("a crowd of onlookers paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a crowd of onlookers paint",[of]),_1928).


test('?- chat80("a curse of painters paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a curse of painters paint",[of]),_1928).


test('?- chat80("a fleet of cars paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a fleet of cars paint",[of]),_1928).


test('?- chat80("a pair of shoes paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a pair of shoes paint",[of]),_1928).


test('?- chat80("a fleet of ships paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("a fleet of ships paint",[of]),_1928).


test('?- chat80("an anthology of stories paint",[of])',[true(compound(_1928)),nondet]):-call(chat80("an anthology of stories paint",[of]),_1928).


test('?- chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_1928).


test('?- chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_1928).


test('?- chat80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_1928).


test('?- chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_1928).


test('?- chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_1928).


test('?- chat80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_1928).


test('?- chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_1928).


test('?- chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_1928).


test('?- chat80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_1928).


test('?- chat80("Logged on player character",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Logged on player character",[descriptionTest]),_1928).


test('?- chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_1928).


test('?- chat80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_1928).


test('?- chat80("Wesley is her son",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Wesley is her son",[descriptionTest]),_1928).


test('?- chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_1928).


test('?- chat80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Counselor Deanna Troi is here",[descriptionTest]),_1928).


test('?- chat80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Counselor Troi is the ship's main counselor",[descriptionTest]),_1928).


test('?- chat80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_1928).


test('?- chat80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Commander William Riker is here, staring at you",[descriptionTest]),_1928).


test('?- chat80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_1928).


test('?- chat80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("He's in charge of keeping the crew in line",[descriptionTest]),_1928).


test('?- chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_1928).


test('?- chat80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Captain Picard is a very important man",[descriptionTest]),_1928).


test('?- chat80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_1928).


test('?- chat80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("He's very smart, and very wise",[descriptionTest]),_1928).


test('?- chat80("Don\'t mess with him!",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Don't mess with him!",[descriptionTest]),_1928).


test('?- chat80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Guinan is here, tending the bar",[descriptionTest]),_1928).


test('?- chat80("Guinan is a strange being",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Guinan is a strange being",[descriptionTest]),_1928).


test('?- chat80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_1928).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_1928).


test('?- chat80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_1928).


test('?- chat80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_1928).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_1928).


test('?- chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_1928).


test('?- chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_1928).


test('?- chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_1928).


test('?- chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_1928).


test('?- chat80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Livingston is Captain Picard's pet fish",[descriptionTest]),_1928).


test('?- chat80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_1928).


test('?- chat80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_1928).


test('?- chat80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Spot is Data's orange coloured cat",[descriptionTest]),_1928).


test('?- chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_1928).


test('?- chat80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_1928).


test('?- chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_1928).


test('?- chat80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_1928).


test('?- chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_1928).


test('?- chat80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Alexander Rozhenko is Worf's son",[descriptionTest]),_1928).


test('?- chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_1928).


test('?- chat80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_1928).


test('?- chat80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_1928).


test('?- chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_1928).


test('?- chat80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A large phaser rifle is lying here",[descriptionTest]),_1928).


test('?- chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_1928).


test('?- chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_1928).


test('?- chat80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_1928).


test('?- chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_1928).


test('?- chat80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_1928).


test('?- chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_1928).


test('?- chat80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_1928).


test('?- chat80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_1928).


test('?- chat80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_1928).


test('?- chat80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A Starfleet communication badge is lying here",[descriptionTest]),_1928).


test('?- chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_1928).


test('?- chat80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Worf's silver chain sash has been left here",[descriptionTest]),_1928).


test('?- chat80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_1928).


test('?- chat80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Geordi's VISOR is lying here",[descriptionTest]),_1928).


test('?- chat80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_1928).


test('?- chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_1928).


test('?- chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_1928).


test('?- chat80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A shard of dilithium crystal is lying here",[descriptionTest]),_1928).


test('?- chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_1928).


test('?- chat80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_1928).


test('?- chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_1928).


test('?- chat80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Commander Riker's trombone has been placed here",[descriptionTest]),_1928).


test('?- chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_1928).


test('?- chat80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A small cup of tea is sitting here",[descriptionTest]),_1928).


test('?- chat80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A bottle of synthehol is standing here",[descriptionTest]),_1928).


test('?- chat80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_1928).


test('?- chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_1928).


test('?- chat80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A small glass of prune juice is sitting here",[descriptionTest]),_1928).


test('?- chat80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A bottle of Vulcan beer is standing here",[descriptionTest]),_1928).


test('?- chat80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You find yourself in the middle of main engineering",[descriptionTest]),_1928).


test('?- chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_1928).


test('?- chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_1928).


test('?- chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_1928).


test('?- chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_1928).


test('?- chat80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_1928).


test('?- chat80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the middle of Geordi's quarters",[descriptionTest]),_1928).


test('?- chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_1928).


test('?- chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_1928).


test('?- chat80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_1928).


test('?- chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_1928).


test('?- chat80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the middle of Data's quarters",[descriptionTest]),_1928).


test('?- chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_1928).


test('?- chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_1928).


test('?- chat80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_1928).


test('?- chat80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the dimly lit Brig",[descriptionTest]),_1928).


test('?- chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_1928).


test('?- chat80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_1928).


test('?- chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_1928).


test('?- chat80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_1928).


test('?- chat80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_1928).


test('?- chat80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the Enterprise transporter room",[descriptionTest]),_1928).


test('?- chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_1928).


test('?- chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_1928).


test('?- chat80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You find yourself in a transporter beam",[descriptionTest]),_1928).


test('?- chat80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("All you can see is blue flashing light",[descriptionTest]),_1928).


test('?- chat80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("It feels as though your body is racing around at high speeds",[descriptionTest]),_1928).


test('?- chat80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_1928).


test('?- chat80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You step through the doors and find yourself in a large school room",[descriptionTest]),_1928).


test('?- chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_1928).


test('?- chat80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_1928).


test('?- chat80("You\'re in the turbolift",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the turbolift",[descriptionTest]),_1928).


test('?- chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_1928).


test('?- chat80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_1928).


test('?- chat80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_1928).


test('?- chat80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're now on Holodeck 2",[descriptionTest]),_1928).


test('?- chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_1928).


test('?- chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_1928).


test('?- chat80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Right now, this holodeck is not functioning",[descriptionTest]),_1928).


test('?- chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_1928).


test('?- chat80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_1928).


test('?- chat80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_1928).


test('?- chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_1928).


test('?- chat80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You've arrived in Riker's quarters",[descriptionTest]),_1928).


test('?- chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_1928).


test('?- chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_1928).


test('?- chat80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_1928).


test('?- chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_1928).


test('?- chat80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_1928).


test('?- chat80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You emerge into a dark narrow alley",[descriptionTest]),_1928).


test('?- chat80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Tall dark brick buildings block your way north and south",[descriptionTest]),_1928).


test('?- chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_1928).


test('?- chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_1928).


test('?- chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_1928).


test('?- chat80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The archway leading out of the holodeck is west",[descriptionTest]),_1928).


test('?- chat80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in Doctor Crusher's quarters",[descriptionTest]),_1928).


test('?- chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_1928).


test('?- chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_1928).


test('?- chat80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_1928).


test('?- chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_1928).


test('?- chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_1928).


test('?- chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_1928).


test('?- chat80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_1928).


test('?- chat80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_1928).


test('?- chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_1928).


test('?- chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_1928).


test('?- chat80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_1928).


test('?- chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_1928).


test('?- chat80("A large grey door leads into space",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A large grey door leads into space",[descriptionTest]),_1928).


test('?- chat80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_1928).


test('?- chat80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_1928).


test('?- chat80("You feel very cold",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You feel very cold",[descriptionTest]),_1928).


test('?- chat80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_1928).


test('?- chat80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_1928).


test('?- chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_1928).


test('?- chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_1928).


test('?- chat80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in Worf's quarters",[descriptionTest]),_1928).


test('?- chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_1928).


test('?- chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_1928).


test('?- chat80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You emerge into the Enterprise gym",[descriptionTest]),_1928).


test('?- chat80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The room is quite large, with a soft grey floor",[descriptionTest]),_1928).


test('?- chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_1928).


test('?- chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_1928).


test('?- chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_1928).


test('?- chat80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_1928).


test('?- chat80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_1928).


test('?- chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_1928).


test('?- chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_1928).


test('?- chat80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Two large windows offer a great view of space",[descriptionTest]),_1928).


test('?- chat80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_1928).


test('?- chat80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the Enterprise science lab",[descriptionTest]),_1928).


test('?- chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_1928).


test('?- chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_1928).


test('?- chat80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A complex looking computer console is facing this machine",[descriptionTest]),_1928).


test('?- chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_1928).


test('?- chat80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_1928).


test('?- chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_1928).


test('?- chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_1928).


test('?- chat80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_1928).


test('?- chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_1928).


test('?- chat80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're standing in Captain Picard's ready room",[descriptionTest]),_1928).


test('?- chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_1928).


test('?- chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_1928).


test('?- chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_1928).


test('?- chat80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("This is where the Captain makes all of his important decisions",[descriptionTest]),_1928).


test('?- chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_1928).


test('?- chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_1928).


test('?- chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_1928).


test('?- chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_1928).


test('?- chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_1928).


test('?- chat80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("This is where the ship's pilot and information officer sit",[descriptionTest]),_1928).


test('?- chat80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're in the conference room of the Enterprise",[descriptionTest]),_1928).


test('?- chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_1928).


test('?- chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_1928).


test('?- chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_1928).


test('?- chat80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_1928)),nondet]):-call(chat80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_1928).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_1928)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_1928).


test('?- chat80("no two owners eat pizza",[sanity])',[true(compound(_1928)),nondet]):-call(chat80("no two owners eat pizza",[sanity]),_1928).


test('?- chat80("no three owners eat pizza",[sanity])',[true(compound(_1928)),nondet]):-call(chat80("no three owners eat pizza",[sanity]),_1928).


test('?- chat80("no three owners eat the same pizza",[sanity])',[true(compound(_1928)),nondet]):-call(chat80("no three owners eat the same pizza",[sanity]),_1928).


test('?- chat80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_1928)),nondet]):-call(chat80("no three owners eat the same kind of pizza",[sanity]),_1928).


test('?- chat80("no owners eat the same pizza",[sanity])',[true(compound(_1928)),nondet]):-call(chat80("no owners eat the same pizza",[sanity]),_1928).


test('?- chat80("no owners eat the same kind of pizza",[sanity])',[true(compound(_1928)),nondet]):-call(chat80("no owners eat the same kind of pizza",[sanity]),_1928).


test('?- chat80("there are 5 houses",[sanity])',[true(compound(_1928)),nondet]):-call(chat80("there are 5 houses",[sanity]),_1928).


test('?- chat80("there are not 5 houses",[sanity])',[true(compound(_1928)),nondet]):-call(chat80("there are not 5 houses",[sanity]),_1928).


test('?- chat80("there are not zero houses",[sanity])',[true(compound(_1928)),nondet]):-call(chat80("there are not zero houses",[sanity]),_1928).


test('?- chat80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_1928)),nondet]):-call(chat80(noun_phrase("less than 2 owners"),[sanity,bug]),_1928).


test('?- chat80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_1928)),nondet]):-call(chat80(noun_phrase("at most the 5 owners"),[sanity]),_1928).


test('?- chat80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_1928)),nondet]):-call(chat80(noun_phrase("at most 5 owners"),[sanity]),_1928).


test('?- chat80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_1928)),nondet]):-call(chat80(noun_phrase("less than 3 owners"),[sanity]),_1928).


test('?- chat80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_1928)),nondet]):-call(chat80(noun_phrase("at most 50 percent of owners"),[sanity]),_1928).


test('?- chat80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_1928)),nondet]):-call(chat80(noun_phrase("no three owners"),[sanity,no_working]),_1928).


test('?- chat80("terry writes a non-program.",[tell])',[true(compound(_1928)),nondet]):-call(chat80("terry writes a non-program.",[tell]),_1928).


test('?- chat80("every nonhuman programmer writes a program.",[tell])',[true(compound(_1928)),nondet]):-call(chat80("every nonhuman programmer writes a program.",[tell]),_1928).


test('?- chat80("every human programmer writes a not a program.",[tell])',[true(compound(_1928)),nondet]):-call(chat80("every human programmer writes a not a program.",[tell]),_1928).


test('?- chat80("every human programmer happily writes a not a program.",[tell])',[true(compound(_1928)),nondet]):-call(chat80("every human programmer happily writes a not a program.",[tell]),_1928).


:- end_tests(chat80).



:- begin_tests(curt80).



test('?- curt80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_2104)),nondet]):-call(curt80("His friends are liked by hers.",[bad_juju,sanity]),_2104).


test('?- curt80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_2104)),nondet]):-call(curt80("Her friends are not liked by his.",[bad_juju,sanity]),_2104).


test('?- curt80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_2104)),nondet]):-call(curt80("Do their friends like each other?",[bad_juju,feature]),_2104).


test('?- curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_2152),sanity])',[true(compound(_2104)),nondet]):-call(curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_2152),sanity]),_2104).


test('?- curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_2150),sanity])',[true(compound(_2104)),nondet]):-call(curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_2150),sanity]),_2104).


test('?- curt80("There are 5 houses with five different colors.",[riddle(_2154),sanity])',[true(compound(_2104)),nondet]):-call(curt80("There are 5 houses with five different colors.",[riddle(_2154),sanity]),_2104).


test('?- curt80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_2104)),nondet]):-call(curt80("There are 5 houses",[riddle_prep,sanity]),_2104).


test('?- curt80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_2104)),nondet]):-call(curt80("Each house has a different color",[riddle_prep,sanity]),_2104).


test('?- curt80("In each house lives a person with a different nationality.",[riddle(_2158),sanity])',[true(compound(_2104)),nondet]):-call(curt80("In each house lives a person with a different nationality.",[riddle(_2158),sanity]),_2104).


test('?- curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_2104)),nondet]):-call(curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_2104).


test('?- curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_2104)),nondet]):-call(curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_2104).


test('?- curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_2104)),nondet]):-call(curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_2104).


test('?- curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_2104)),nondet]):-call(curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_2104).


test('?- curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_2104)),nondet]):-call(curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_2104).


test('?- curt80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_2104)),nondet]):-call(curt80("No owners have the same pet.",[riddle(1),sanity,regression]),_2104).


test('?- curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_2104)),nondet]):-call(curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_2104).


test('?- curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_2104)),nondet]):-call(curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_2104).


test('?- curt80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_2104)),nondet]):-call(curt80("No two owners have the same pet.",[riddle(1),sanity,regression]),_2104).


test('?- curt80("The brit lives in the red house.",[riddle(_2152),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The brit lives in the red house.",[riddle(_2152),sanity]),_2104).


test('?- curt80("The swede keeps dogs as pets.",[riddle(_2150),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The swede keeps dogs as pets.",[riddle(_2150),sanity]),_2104).


test('?- curt80("A dane drinks tea.",[riddle(_2148),sanity])',[true(compound(_2104)),nondet]):-call(curt80("A dane drinks tea.",[riddle(_2148),sanity]),_2104).


test('?- curt80("The green house is on the left of the white house.",[riddle(_2156),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The green house is on the left of the white house.",[riddle(_2156),sanity]),_2104).


test('?- curt80("The green house\'s owner drinks coffee.",[riddle(_2152),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The green house's owner drinks coffee.",[riddle(_2152),sanity]),_2104).


test('?- curt80("The person who smokes Pall Mall rears birds.",[riddle(_2154),sanity,regression])',[true(compound(_2104)),nondet]):-call(curt80("The person who smokes Pall Mall rears birds.",[riddle(_2154),sanity,regression]),_2104).


test('?- curt80("The owner of the yellow house smokes Dunhill.",[riddle(_2154),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The owner of the yellow house smokes Dunhill.",[riddle(_2154),sanity]),_2104).


test('?- curt80("The man living in the center house drinks milk.",[riddle(_2156),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The man living in the center house drinks milk.",[riddle(_2156),sanity]),_2104).


test('?- curt80("The Norwegian lives in the first house .",[riddle(_2154),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The Norwegian lives in the first house .",[riddle(_2154),sanity]),_2104).


test('?- curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_2160),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_2160),sanity]),_2104).


test('?- curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_2160),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_2160),sanity]),_2104).


test('?- curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_2154),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_2154),sanity]),_2104).


test('?- curt80("The German smokes Prince.",[riddle(_2150),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The German smokes Prince.",[riddle(_2150),sanity]),_2104).


test('?- curt80("The Norwegian lives next to the blue house.",[riddle(_2154),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The Norwegian lives next to the blue house.",[riddle(_2154),sanity]),_2104).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_2158),sanity])',[true(compound(_2104)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_2158),sanity]),_2104).


test('?- curt80("Who owns the fish?",[riddle(_2148),sanity])',[true(compound(_2104)),nondet]):-call(curt80("Who owns the fish?",[riddle(_2148),sanity]),_2104).


test('?- curt80("One woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("One woman paints.",[quants]),_2104).


test('?- curt80("No woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("No woman paints.",[quants]),_2104).


test('?- curt80("Some woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Some woman paints.",[quants]),_2104).


test('?- curt80("Every woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Every woman paints.",[quants]),_2104).


test('?- curt80("Each woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Each woman paints.",[quants]),_2104).


test('?- curt80("Any woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Any woman paints.",[quants]),_2104).


test('?- curt80("The woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("The woman paints.",[quants]),_2104).


test('?- curt80("The not woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("The not woman paints.",[quants]),_2104).


test('?- curt80("Not a woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not a woman paints.",[quants]),_2104).


test('?- curt80("Not one woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not one woman paints.",[quants]),_2104).


test('?- curt80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_2104)),nondet]):-call(curt80("Not no woman paints.",[quants_neg_postcond]),_2104).


test('?- curt80("Not some woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not some woman paints.",[quants]),_2104).


test('?- curt80("Not every woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not every woman paints.",[quants]),_2104).


test('?- curt80("Not each woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not each woman paints.",[quants]),_2104).


test('?- curt80("Not any woman paints.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not any woman paints.",[quants]),_2104).


test('?- curt80("The women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("The women paint.",[quants]),_2104).


test('?- curt80("Women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Women paint.",[quants]),_2104).


test('?- curt80("Some women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Some women paint.",[quants]),_2104).


test('?- curt80("No women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("No women paint.",[quants]),_2104).


test('?- curt80("All women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("All women paint.",[quants]),_2104).


test('?- curt80("Any women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Any women paint.",[quants]),_2104).


test('?- curt80("Not women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not women paint.",[quants]),_2104).


test('?- curt80("Not no women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not no women paint.",[quants]),_2104).


test('?- curt80("Not all women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not all women paint.",[quants]),_2104).


test('?- curt80("Not any women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not any women paint.",[quants]),_2104).


test('?- curt80("The three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("The three women paint.",[quants]),_2104).


test('?- curt80("Three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Three women paint.",[quants]),_2104).


test('?- curt80("Some three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Some three women paint.",[quants]),_2104).


test('?- curt80("No three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("No three women paint.",[quants]),_2104).


test('?- curt80("Every three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Every three women paint.",[quants]),_2104).


test('?- curt80("All three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("All three women paint.",[quants]),_2104).


test('?- curt80("Any three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Any three women paint.",[quants]),_2104).


test('?- curt80("Not three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not three women paint.",[quants]),_2104).


test('?- curt80("Not some three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not some three women paint.",[quants]),_2104).


test('?- curt80("Not no three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not no three women paint.",[quants]),_2104).


test('?- curt80("Not all three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not all three women paint.",[quants]),_2104).


test('?- curt80("Not every three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not every three women paint.",[quants]),_2104).


test('?- curt80("Not any three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not any three women paint.",[quants]),_2104).


test('?- curt80("Not three of the women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not three of the women paint.",[quants]),_2104).


test('?- curt80("Not some of the three women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not some of the three women paint.",[quants]),_2104).


test('?- curt80("Not no three of the women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not no three of the women paint.",[quants]),_2104).


test('?- curt80("Not all three of the women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not all three of the women paint.",[quants]),_2104).


test('?- curt80("Not every three of the women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not every three of the women paint.",[quants]),_2104).


test('?- curt80("Not any three of the women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not any three of the women paint.",[quants]),_2104).


test('?- curt80("Not three of the four women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not three of the four women paint.",[quants]),_2104).


test('?- curt80("Not none of three out of the four women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not none of three out of the four women paint.",[quants]),_2104).


test('?- curt80("Not all three of the four women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not all three of the four women paint.",[quants]),_2104).


test('?- curt80("Not any three of the four women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Not any three of the four women paint.",[quants]),_2104).


test('?- curt80("Three of the four women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Three of the four women paint.",[quants]),_2104).


test('?- curt80("Three out of the four women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Three out of the four women paint.",[quants]),_2104).


test('?- curt80("All three of the four women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("All three of the four women paint.",[quants]),_2104).


test('?- curt80("Any three of the four women paint.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("Any three of the four women paint.",[quants]),_2104).


test('?- curt80("I paint",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("I paint",[pronoun]),_2104).


test('?- curt80("you paint",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("you paint",[pronoun]),_2104).


test('?- curt80("We paint",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("We paint",[pronoun]),_2104).


test('?- curt80("None paint",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("None paint",[pronoun]),_2104).


test('?- curt80("They paint",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("They paint",[pronoun]),_2104).


test('?- curt80("Some paint",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Some paint",[pronoun]),_2104).


test('?- curt80("It paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("It paints",[pronoun]),_2104).


test('?- curt80("he paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("he paints",[pronoun]),_2104).


test('?- curt80("She paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She paints",[pronoun]),_2104).


test('?- curt80("Someone paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Someone paints",[pronoun]),_2104).


test('?- curt80("Anybody paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Anybody paints",[pronoun]),_2104).


test('?- curt80("Anyone paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Anyone paints",[pronoun]),_2104).


test('?- curt80("Anything paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Anything paints",[pronoun]),_2104).


test('?- curt80("Everybody paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Everybody paints",[pronoun]),_2104).


test('?- curt80("Everyone paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Everyone paints",[pronoun]),_2104).


test('?- curt80("Everything paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Everything paints",[pronoun]),_2104).


test('?- curt80("Nobody paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Nobody paints",[pronoun]),_2104).


test('?- curt80("No one paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("No one paints",[pronoun]),_2104).


test('?- curt80("Nothing paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Nothing paints",[pronoun]),_2104).


test('?- curt80("One paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("One paints",[pronoun]),_2104).


test('?- curt80("Somebody paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Somebody paints",[pronoun]),_2104).


test('?- curt80("Something paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Something paints",[pronoun]),_2104).


test('?- curt80("Not anybody paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Not anybody paints",[pronoun]),_2104).


test('?- curt80("Not anyone paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Not anyone paints",[pronoun]),_2104).


test('?- curt80("Not anything paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Not anything paints",[pronoun]),_2104).


test('?- curt80("Not everybody paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Not everybody paints",[pronoun]),_2104).


test('?- curt80("Not everyone paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Not everyone paints",[pronoun]),_2104).


test('?- curt80("Not everything paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Not everything paints",[pronoun]),_2104).


test('?- curt80("Not nothing paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Not nothing paints",[pronoun]),_2104).


test('?- curt80("Not one paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Not one paints",[pronoun]),_2104).


test('?- curt80("Not somebody paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Not somebody paints",[pronoun]),_2104).


test('?- curt80("Not something paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("Not something paints",[pronoun]),_2104).


test('?- curt80("She likes i",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes i",[pronoun]),_2104).


test('?- curt80("She likes me",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes me",[pronoun]),_2104).


test('?- curt80("She likes you",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes you",[pronoun]),_2104).


test('?- curt80("She likes it",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes it",[pronoun]),_2104).


test('?- curt80("She likes us",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes us",[pronoun]),_2104).


test('?- curt80("She likes them",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes them",[pronoun]),_2104).


test('?- curt80("She likes no one",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes no one",[pronoun]),_2104).


test('?- curt80("She likes none",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes none",[pronoun]),_2104).


test('?- curt80("She likes him",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes him",[pronoun]),_2104).


test('?- curt80("She likes herself",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes herself",[pronoun]),_2104).


test('?- curt80("She likes himself",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("She likes himself",[pronoun]),_2104).


test('?- curt80("It is us that paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("It is us that paints",[pronoun]),_2104).


test('?- curt80("It is them that paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("It is them that paints",[pronoun]),_2104).


test('?- curt80("It is he that paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("It is he that paints",[pronoun]),_2104).


test('?- curt80("It is she that paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("It is she that paints",[pronoun]),_2104).


test('?- curt80("It is her that paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("It is her that paints",[pronoun]),_2104).


test('?- curt80("It is him that paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("It is him that paints",[pronoun]),_2104).


test('?- curt80("We are us that paint",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("We are us that paint",[pronoun]),_2104).


test('?- curt80("We are all of us that paint",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("We are all of us that paint",[pronoun]),_2104).


test('?- curt80("It is everybody that paints",[pronoun])',[true(compound(_2104)),nondet]):-call(curt80("It is everybody that paints",[pronoun]),_2104).


test('?- curt80("Every man that paints likes monet.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Every man that paints likes monet.",[bratko]),_2104).


test('?- curt80("A woman that admires John paints.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A woman that admires John paints.",[bratko]),_2104).


test('?- curt80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Every woman that likes a man that admires monet paints.",[bratko]),_2104).


test('?- curt80("John likes Annie.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("John likes Annie.",[bratko]),_2104).


test('?- curt80("Annie likes a man that admires monet.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Annie likes a man that admires monet.",[bratko]),_2104).


test('?- curt80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Bertrand Russell wrote principia.",[bratko]),_2104).


test('?- curt80("An author wrote principia.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("An author wrote principia.",[bratko]),_2104).


test('?- curt80("Iraq is a country.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Iraq is a country.",[bratko]),_2104).


test('?- curt80("A happy author wrote principia.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A happy author wrote principia.",[bratko]),_2104).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_2104).


test('?- curt80("Bertrand is an author.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Bertrand is an author.",[bratko]),_2104).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_2104).


test('?- curt80("Every author is a programmer.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Every author is a programmer.",[bratko]),_2104).


test('?- curt80("Is Bertrand an programmer?",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Is Bertrand an programmer?",[bratko]),_2104).


test('?- curt80("What is a author?",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("What is a author?",[bratko]),_2104).


test('?- curt80("What did Bertrand write?",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("What did Bertrand write?",[bratko]),_2104).


test('?- curt80("What is a book?",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("What is a book?",[bratko]),_2104).


test('?- curt80("Principia is a book.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Principia is a book.",[bratko]),_2104).


test('?- curt80("Bertrand is Bertrand.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Bertrand is Bertrand.",[bratko]),_2104).


test('?- curt80("Shrdlu halts.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Shrdlu halts.",[bratko]),_2104).


test('?- curt80("Every student wrote a program.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Every student wrote a program.",[bratko]),_2104).


test('?- curt80("Terry writes a program.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Terry writes a program.",[bratko]),_2104).


test('?- curt80("Terry writes a program that halts.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("Terry writes a program that halts.",[bratko]),_2104).


test('?- curt80("An author of every book wrote a program.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("An author of every book wrote a program.",[bratko]),_2104).


test('?- curt80("A man hapilly maried paints.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A man hapilly maried paints.",[bratko]),_2104).


test('?- curt80("A hapilly maried man paints.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A hapilly maried man paints.",[bratko]),_2104).


test('?- curt80("A man who knows paints.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A man who knows paints.",[bratko]),_2104).


test('?- curt80("A man gives something.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A man gives something.",[bratko]),_2104).


test('?- curt80("A man gives his word.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A man gives his word.",[bratko]),_2104).


test('?- curt80("A man of his word paints.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A man of his word paints.",[bratko]),_2104).


test('?- curt80("A man paints.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A man paints.",[bratko]),_2104).


test('?- curt80("A man that paints paints.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A man that paints paints.",[bratko]),_2104).


test('?- curt80("A man walks.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A man walks.",[bratko]),_2104).


test('?- curt80("A man that walks paints.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A man that walks paints.",[bratko]),_2104).


test('?- curt80("It halts.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("It halts.",[bratko]),_2104).


test('?- curt80("A man of his word that walks paints.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("A man of his word that walks paints.",[bratko]),_2104).


test('?- curt80("The cost of what the product is changes.",[bratko])',[true(compound(_2104)),nondet]):-call(curt80("The cost of what the product is changes.",[bratko]),_2104).


test('?- curt80("We need a virtual machine server.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("We need a virtual machine server.",[aindy]),_2104).


test('?- curt80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("The virtual machine server should have several VMs.",[aindy]),_2104).


test('?- curt80("One VM should be the POSI VM.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("One VM should be the POSI VM.",[aindy]),_2104).


test('?- curt80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("One VM should be the FRDCSA.org VM.",[aindy]),_2104).


test('?- curt80("One VM should be the mail server.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("One VM should be the mail server.",[aindy]),_2104).


test('?- curt80("One computer should be the backup server.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("One computer should be the backup server.",[aindy]),_2104).


test('?- curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_2104).


test('?- curt80("I need a fast computer for work.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I need a fast computer for work.",[aindy]),_2104).


test('?- curt80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_2104).


test('?- curt80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I need a dedicated computer for network security research.",[aindy]),_2104).


test('?- curt80("I need a machine to run Tails on.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I need a machine to run Tails on.",[aindy]),_2104).


test('?- curt80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I need a machine off the network for airgap security.",[aindy]),_2104).


test('?- curt80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("One VM should be the game server for running game development projects.",[aindy]),_2104).


test('?- curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_2104).


test('?- curt80("I could read about how to build a private watson.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I could read about how to build a private watson.",[aindy]),_2104).


test('?- curt80("Need backups.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("Need backups.",[aindy]),_2104).


test('?- curt80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("Practice setting up backups of a machine to a different machine.",[aindy]),_2104).


test('?- curt80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("Set up schedules for updating the software on all machines.",[aindy]),_2104).


test('?- curt80("Read books on server room layout.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("Read books on server room layout.",[aindy]),_2104).


test('?- curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_2104).


test('?- curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_2104).


test('?- curt80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I want a gaming computer.  Do I?",[aindy]),_2104).


test('?- curt80("I want a windows 7 computer for work.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I want a windows 7 computer for work.",[aindy]),_2104).


test('?- curt80("I want a fast linux computer for work.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I want a fast linux computer for work.",[aindy]),_2104).


test('?- curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_2104).


test('?- curt80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I could install a fresh operating system on justin for work.",[aindy]),_2104).


test('?- curt80("I probably want a separate git computer.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I probably want a separate git computer.",[aindy]),_2104).


test('?- curt80("I need to start buying servers.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I need to start buying servers.",[aindy]),_2104).


test('?- curt80("I want a rackmount case for servers.",[aindy])',[true(compound(_2104)),nondet]):-call(curt80("I want a rackmount case for servers.",[aindy]),_2104).


test('?- curt80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_2104)),nondet]):-call(curt80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_2104).


test('?- curt80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_2104)),nondet]):-call(curt80("2 oceans border each african country.",[chat80(tell)]),_2104).


test('?- curt80("There are 10 large cars.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("There are 10 large cars.",[quants]),_2104).


test('?- curt80("There are 10 oceans.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("There are 10 oceans.",[quants]),_2104).


test('?- curt80("There are 10 women.",[quants])',[true(compound(_2104)),nondet]):-call(curt80("There are 10 women.",[quants]),_2104).


test('?- curt80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_2104)),nondet]):-call(curt80("An ocean borders an African country.",[chat80(tell)]),_2104).


test('?- curt80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_2104)),nondet]):-call(curt80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_2104).


test('?- curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_2104)),nondet]):-call(curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_2104).


test('?- curt80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Bertrand wrote a book.",[bratko(book)]),_2104).


test('?- curt80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Bertrand wrote nothing.",[bratko(book)]),_2104).


test('?- curt80("Bertrand wrote.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Bertrand wrote.",[bratko(book)]),_2104).


test('?- curt80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_2104).


test('?- curt80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Bertrand wrote about Gottlob.",[bratko(book)]),_2104).


test('?- curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_2104).


test('?- curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_2104).


test('?- curt80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("What did alfred write to Bertrand?",[bratko(book)]),_2104).


test('?- curt80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Alfred wrote a letter.",[bratko(book)]),_2104).


test('?- curt80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_2104).


test('?- curt80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Alfred wrote something to Bertrand.",[bratko(book)]),_2104).


test('?- curt80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Alfred wrote to Bertrand.",[bratko(book)]),_2104).


test('?- curt80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_2104).


test('?- curt80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Alfred wrote Bertrand a letter.",[bratko(book)]),_2104).


test('?- curt80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Who did alfred write a letter to?",[bratko(book)]),_2104).


test('?- curt80("Alfred gave it.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Alfred gave it.",[bratko(book)]),_2104).


test('?- curt80("Alfred gave a book.",[bratko(book)])',[true(compound(_2104)),nondet]):-call(curt80("Alfred gave a book.",[bratko(book)]),_2104).


test('?- curt80("a pride of lions paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a pride of lions paint",[of]),_2104).


test('?- curt80("a flock of birds paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a flock of birds paint",[of]),_2104).


test('?- curt80("a litter of pups paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a litter of pups paint",[of]),_2104).


test('?- curt80("a prickle of porcupines paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a prickle of porcupines paint",[of]),_2104).


test('?- curt80("a litter of cubs paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a litter of cubs paint",[of]),_2104).


test('?- curt80("a pack of dogs paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a pack of dogs paint",[of]),_2104).


test('?- curt80("a colony of beavers paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a colony of beavers paint",[of]),_2104).


test('?- curt80("a gaggle of geese paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a gaggle of geese paint",[of]),_2104).


test('?- curt80("a family of otters paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a family of otters paint",[of]),_2104).


test('?- curt80("a huddle of walruses paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a huddle of walruses paint",[of]),_2104).


test('?- curt80("a herd of deer paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a herd of deer paint",[of]),_2104).


test('?- curt80("a culture of bacteria paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a culture of bacteria paint",[of]),_2104).


test('?- curt80("a swarm of bees paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a swarm of bees paint",[of]),_2104).


test('?- curt80("a bed of clams paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a bed of clams paint",[of]),_2104).


test('?- curt80("a school of cod paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a school of cod paint",[of]),_2104).


test('?- curt80("a herd of dinosaurs paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a herd of dinosaurs paint",[of]),_2104).


test('?- curt80("a mess of iguanas paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a mess of iguanas paint",[of]),_2104).


test('?- curt80("a mob of wombats paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a mob of wombats paint",[of]),_2104).


test('?- curt80("a pod of pelicans paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a pod of pelicans paint",[of]),_2104).


test('?- curt80("a troop of boy scouts paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a troop of boy scouts paint",[of]),_2104).


test('?- curt80("a team of athletes paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a team of athletes paint",[of]),_2104).


test('?- curt80("a panel of experts paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a panel of experts paint",[of]),_2104).


test('?- curt80("a crew of sailors paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a crew of sailors paint",[of]),_2104).


test('?- curt80("a band of robbers paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a band of robbers paint",[of]),_2104).


test('?- curt80("a troupe of performers paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a troupe of performers paint",[of]),_2104).


test('?- curt80("a crowd of onlookers paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a crowd of onlookers paint",[of]),_2104).


test('?- curt80("a curse of painters paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a curse of painters paint",[of]),_2104).


test('?- curt80("a fleet of cars paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a fleet of cars paint",[of]),_2104).


test('?- curt80("a pair of shoes paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a pair of shoes paint",[of]),_2104).


test('?- curt80("a fleet of ships paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("a fleet of ships paint",[of]),_2104).


test('?- curt80("an anthology of stories paint",[of])',[true(compound(_2104)),nondet]):-call(curt80("an anthology of stories paint",[of]),_2104).


test('?- curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_2104).


test('?- curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_2104).


test('?- curt80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_2104).


test('?- curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_2104).


test('?- curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_2104).


test('?- curt80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_2104).


test('?- curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_2104).


test('?- curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_2104).


test('?- curt80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_2104).


test('?- curt80("Logged on player character",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Logged on player character",[descriptionTest]),_2104).


test('?- curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_2104).


test('?- curt80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_2104).


test('?- curt80("Wesley is her son",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Wesley is her son",[descriptionTest]),_2104).


test('?- curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_2104).


test('?- curt80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Counselor Deanna Troi is here",[descriptionTest]),_2104).


test('?- curt80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Counselor Troi is the ship's main counselor",[descriptionTest]),_2104).


test('?- curt80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_2104).


test('?- curt80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Commander William Riker is here, staring at you",[descriptionTest]),_2104).


test('?- curt80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_2104).


test('?- curt80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("He's in charge of keeping the crew in line",[descriptionTest]),_2104).


test('?- curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_2104).


test('?- curt80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Captain Picard is a very important man",[descriptionTest]),_2104).


test('?- curt80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_2104).


test('?- curt80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("He's very smart, and very wise",[descriptionTest]),_2104).


test('?- curt80("Don\'t mess with him!",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Don't mess with him!",[descriptionTest]),_2104).


test('?- curt80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Guinan is here, tending the bar",[descriptionTest]),_2104).


test('?- curt80("Guinan is a strange being",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Guinan is a strange being",[descriptionTest]),_2104).


test('?- curt80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_2104).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_2104).


test('?- curt80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_2104).


test('?- curt80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_2104).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_2104).


test('?- curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_2104).


test('?- curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_2104).


test('?- curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_2104).


test('?- curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_2104).


test('?- curt80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Livingston is Captain Picard's pet fish",[descriptionTest]),_2104).


test('?- curt80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_2104).


test('?- curt80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_2104).


test('?- curt80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Spot is Data's orange coloured cat",[descriptionTest]),_2104).


test('?- curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_2104).


test('?- curt80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_2104).


test('?- curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_2104).


test('?- curt80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_2104).


test('?- curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_2104).


test('?- curt80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Alexander Rozhenko is Worf's son",[descriptionTest]),_2104).


test('?- curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_2104).


test('?- curt80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_2104).


test('?- curt80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_2104).


test('?- curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_2104).


test('?- curt80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A large phaser rifle is lying here",[descriptionTest]),_2104).


test('?- curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_2104).


test('?- curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_2104).


test('?- curt80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_2104).


test('?- curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_2104).


test('?- curt80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_2104).


test('?- curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_2104).


test('?- curt80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_2104).


test('?- curt80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_2104).


test('?- curt80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_2104).


test('?- curt80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A Starfleet communication badge is lying here",[descriptionTest]),_2104).


test('?- curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_2104).


test('?- curt80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Worf's silver chain sash has been left here",[descriptionTest]),_2104).


test('?- curt80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_2104).


test('?- curt80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Geordi's VISOR is lying here",[descriptionTest]),_2104).


test('?- curt80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_2104).


test('?- curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_2104).


test('?- curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_2104).


test('?- curt80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A shard of dilithium crystal is lying here",[descriptionTest]),_2104).


test('?- curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_2104).


test('?- curt80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_2104).


test('?- curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_2104).


test('?- curt80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Commander Riker's trombone has been placed here",[descriptionTest]),_2104).


test('?- curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_2104).


test('?- curt80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A small cup of tea is sitting here",[descriptionTest]),_2104).


test('?- curt80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A bottle of synthehol is standing here",[descriptionTest]),_2104).


test('?- curt80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_2104).


test('?- curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_2104).


test('?- curt80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A small glass of prune juice is sitting here",[descriptionTest]),_2104).


test('?- curt80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A bottle of Vulcan beer is standing here",[descriptionTest]),_2104).


test('?- curt80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You find yourself in the middle of main engineering",[descriptionTest]),_2104).


test('?- curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_2104).


test('?- curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_2104).


test('?- curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_2104).


test('?- curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_2104).


test('?- curt80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_2104).


test('?- curt80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the middle of Geordi's quarters",[descriptionTest]),_2104).


test('?- curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_2104).


test('?- curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_2104).


test('?- curt80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_2104).


test('?- curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_2104).


test('?- curt80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the middle of Data's quarters",[descriptionTest]),_2104).


test('?- curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_2104).


test('?- curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_2104).


test('?- curt80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_2104).


test('?- curt80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the dimly lit Brig",[descriptionTest]),_2104).


test('?- curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_2104).


test('?- curt80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_2104).


test('?- curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_2104).


test('?- curt80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_2104).


test('?- curt80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_2104).


test('?- curt80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the Enterprise transporter room",[descriptionTest]),_2104).


test('?- curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_2104).


test('?- curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_2104).


test('?- curt80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You find yourself in a transporter beam",[descriptionTest]),_2104).


test('?- curt80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("All you can see is blue flashing light",[descriptionTest]),_2104).


test('?- curt80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("It feels as though your body is racing around at high speeds",[descriptionTest]),_2104).


test('?- curt80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_2104).


test('?- curt80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You step through the doors and find yourself in a large school room",[descriptionTest]),_2104).


test('?- curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_2104).


test('?- curt80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_2104).


test('?- curt80("You\'re in the turbolift",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the turbolift",[descriptionTest]),_2104).


test('?- curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_2104).


test('?- curt80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_2104).


test('?- curt80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_2104).


test('?- curt80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're now on Holodeck 2",[descriptionTest]),_2104).


test('?- curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_2104).


test('?- curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_2104).


test('?- curt80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Right now, this holodeck is not functioning",[descriptionTest]),_2104).


test('?- curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_2104).


test('?- curt80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_2104).


test('?- curt80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_2104).


test('?- curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_2104).


test('?- curt80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You've arrived in Riker's quarters",[descriptionTest]),_2104).


test('?- curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_2104).


test('?- curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_2104).


test('?- curt80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_2104).


test('?- curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_2104).


test('?- curt80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_2104).


test('?- curt80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You emerge into a dark narrow alley",[descriptionTest]),_2104).


test('?- curt80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Tall dark brick buildings block your way north and south",[descriptionTest]),_2104).


test('?- curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_2104).


test('?- curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_2104).


test('?- curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_2104).


test('?- curt80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The archway leading out of the holodeck is west",[descriptionTest]),_2104).


test('?- curt80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in Doctor Crusher's quarters",[descriptionTest]),_2104).


test('?- curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_2104).


test('?- curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_2104).


test('?- curt80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_2104).


test('?- curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_2104).


test('?- curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_2104).


test('?- curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_2104).


test('?- curt80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_2104).


test('?- curt80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_2104).


test('?- curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_2104).


test('?- curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_2104).


test('?- curt80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_2104).


test('?- curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_2104).


test('?- curt80("A large grey door leads into space",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A large grey door leads into space",[descriptionTest]),_2104).


test('?- curt80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_2104).


test('?- curt80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_2104).


test('?- curt80("You feel very cold",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You feel very cold",[descriptionTest]),_2104).


test('?- curt80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_2104).


test('?- curt80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_2104).


test('?- curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_2104).


test('?- curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_2104).


test('?- curt80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in Worf's quarters",[descriptionTest]),_2104).


test('?- curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_2104).


test('?- curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_2104).


test('?- curt80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You emerge into the Enterprise gym",[descriptionTest]),_2104).


test('?- curt80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The room is quite large, with a soft grey floor",[descriptionTest]),_2104).


test('?- curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_2104).


test('?- curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_2104).


test('?- curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_2104).


test('?- curt80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_2104).


test('?- curt80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_2104).


test('?- curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_2104).


test('?- curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_2104).


test('?- curt80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Two large windows offer a great view of space",[descriptionTest]),_2104).


test('?- curt80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_2104).


test('?- curt80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the Enterprise science lab",[descriptionTest]),_2104).


test('?- curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_2104).


test('?- curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_2104).


test('?- curt80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A complex looking computer console is facing this machine",[descriptionTest]),_2104).


test('?- curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_2104).


test('?- curt80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_2104).


test('?- curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_2104).


test('?- curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_2104).


test('?- curt80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_2104).


test('?- curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_2104).


test('?- curt80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're standing in Captain Picard's ready room",[descriptionTest]),_2104).


test('?- curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_2104).


test('?- curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_2104).


test('?- curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_2104).


test('?- curt80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("This is where the Captain makes all of his important decisions",[descriptionTest]),_2104).


test('?- curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_2104).


test('?- curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_2104).


test('?- curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_2104).


test('?- curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_2104).


test('?- curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_2104).


test('?- curt80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("This is where the ship's pilot and information officer sit",[descriptionTest]),_2104).


test('?- curt80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're in the conference room of the Enterprise",[descriptionTest]),_2104).


test('?- curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_2104).


test('?- curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_2104).


test('?- curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_2104).


test('?- curt80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_2104)),nondet]):-call(curt80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_2104).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_2104)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_2104).


test('?- curt80("no two owners eat pizza",[sanity])',[true(compound(_2104)),nondet]):-call(curt80("no two owners eat pizza",[sanity]),_2104).


test('?- curt80("no three owners eat pizza",[sanity])',[true(compound(_2104)),nondet]):-call(curt80("no three owners eat pizza",[sanity]),_2104).


test('?- curt80("no three owners eat the same pizza",[sanity])',[true(compound(_2104)),nondet]):-call(curt80("no three owners eat the same pizza",[sanity]),_2104).


test('?- curt80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_2104)),nondet]):-call(curt80("no three owners eat the same kind of pizza",[sanity]),_2104).


test('?- curt80("no owners eat the same pizza",[sanity])',[true(compound(_2104)),nondet]):-call(curt80("no owners eat the same pizza",[sanity]),_2104).


test('?- curt80("no owners eat the same kind of pizza",[sanity])',[true(compound(_2104)),nondet]):-call(curt80("no owners eat the same kind of pizza",[sanity]),_2104).


test('?- curt80("there are 5 houses",[sanity])',[true(compound(_2104)),nondet]):-call(curt80("there are 5 houses",[sanity]),_2104).


test('?- curt80("there are not 5 houses",[sanity])',[true(compound(_2104)),nondet]):-call(curt80("there are not 5 houses",[sanity]),_2104).


test('?- curt80("there are not zero houses",[sanity])',[true(compound(_2104)),nondet]):-call(curt80("there are not zero houses",[sanity]),_2104).


test('?- curt80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_2104)),nondet]):-call(curt80(noun_phrase("less than 2 owners"),[sanity,bug]),_2104).


test('?- curt80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_2104)),nondet]):-call(curt80(noun_phrase("at most the 5 owners"),[sanity]),_2104).


test('?- curt80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_2104)),nondet]):-call(curt80(noun_phrase("at most 5 owners"),[sanity]),_2104).


test('?- curt80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_2104)),nondet]):-call(curt80(noun_phrase("less than 3 owners"),[sanity]),_2104).


test('?- curt80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_2104)),nondet]):-call(curt80(noun_phrase("at most 50 percent of owners"),[sanity]),_2104).


test('?- curt80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_2104)),nondet]):-call(curt80(noun_phrase("no three owners"),[sanity,no_working]),_2104).


test('?- curt80("terry writes a non-program.",[tell])',[true(compound(_2104)),nondet]):-call(curt80("terry writes a non-program.",[tell]),_2104).


test('?- curt80("every nonhuman programmer writes a program.",[tell])',[true(compound(_2104)),nondet]):-call(curt80("every nonhuman programmer writes a program.",[tell]),_2104).


test('?- curt80("every human programmer writes a not a program.",[tell])',[true(compound(_2104)),nondet]):-call(curt80("every human programmer writes a not a program.",[tell]),_2104).


test('?- curt80("every human programmer happily writes a not a program.",[tell])',[true(compound(_2104)),nondet]):-call(curt80("every human programmer happily writes a not a program.",[tell]),_2104).


:- end_tests(curt80).



:- begin_tests(e2c).



test('?- e2c("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_2280)),nondet]):-call(e2c("His friends are liked by hers.",[bad_juju,sanity]),_2280).


test('?- e2c("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_2280)),nondet]):-call(e2c("Her friends are not liked by his.",[bad_juju,sanity]),_2280).


test('?- e2c("Do their friends like each other?",[bad_juju,feature])',[true(compound(_2280)),nondet]):-call(e2c("Do their friends like each other?",[bad_juju,feature]),_2280).


test('?- e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_2328),sanity])',[true(compound(_2280)),nondet]):-call(e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_2328),sanity]),_2280).


test('?- e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_2326),sanity])',[true(compound(_2280)),nondet]):-call(e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_2326),sanity]),_2280).


test('?- e2c("There are 5 houses with five different colors.",[riddle(_2330),sanity])',[true(compound(_2280)),nondet]):-call(e2c("There are 5 houses with five different colors.",[riddle(_2330),sanity]),_2280).


test('?- e2c("There are 5 houses",[riddle_prep,sanity])',[true(compound(_2280)),nondet]):-call(e2c("There are 5 houses",[riddle_prep,sanity]),_2280).


test('?- e2c("Each house has a different color",[riddle_prep,sanity])',[true(compound(_2280)),nondet]):-call(e2c("Each house has a different color",[riddle_prep,sanity]),_2280).


test('?- e2c("In each house lives a person with a different nationality.",[riddle(_2334),sanity])',[true(compound(_2280)),nondet]):-call(e2c("In each house lives a person with a different nationality.",[riddle(_2334),sanity]),_2280).


test('?- e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_2280)),nondet]):-call(e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_2280).


test('?- e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_2280)),nondet]):-call(e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_2280).


test('?- e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_2280)),nondet]):-call(e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_2280).


test('?- e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_2280)),nondet]):-call(e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_2280).


test('?- e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_2280)),nondet]):-call(e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_2280).


test('?- e2c("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_2280)),nondet]):-call(e2c("No owners have the same pet.",[riddle(1),sanity,regression]),_2280).


test('?- e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_2280)),nondet]):-call(e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_2280).


test('?- e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_2280)),nondet]):-call(e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_2280).


test('?- e2c("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_2280)),nondet]):-call(e2c("No two owners have the same pet.",[riddle(1),sanity,regression]),_2280).


test('?- e2c("The brit lives in the red house.",[riddle(_2328),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The brit lives in the red house.",[riddle(_2328),sanity]),_2280).


test('?- e2c("The swede keeps dogs as pets.",[riddle(_2326),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The swede keeps dogs as pets.",[riddle(_2326),sanity]),_2280).


test('?- e2c("A dane drinks tea.",[riddle(_2324),sanity])',[true(compound(_2280)),nondet]):-call(e2c("A dane drinks tea.",[riddle(_2324),sanity]),_2280).


test('?- e2c("The green house is on the left of the white house.",[riddle(_2332),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The green house is on the left of the white house.",[riddle(_2332),sanity]),_2280).


test('?- e2c("The green house\'s owner drinks coffee.",[riddle(_2328),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The green house's owner drinks coffee.",[riddle(_2328),sanity]),_2280).


test('?- e2c("The person who smokes Pall Mall rears birds.",[riddle(_2330),sanity,regression])',[true(compound(_2280)),nondet]):-call(e2c("The person who smokes Pall Mall rears birds.",[riddle(_2330),sanity,regression]),_2280).


test('?- e2c("The owner of the yellow house smokes Dunhill.",[riddle(_2330),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The owner of the yellow house smokes Dunhill.",[riddle(_2330),sanity]),_2280).


test('?- e2c("The man living in the center house drinks milk.",[riddle(_2332),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The man living in the center house drinks milk.",[riddle(_2332),sanity]),_2280).


test('?- e2c("The Norwegian lives in the first house .",[riddle(_2330),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The Norwegian lives in the first house .",[riddle(_2330),sanity]),_2280).


test('?- e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_2336),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_2336),sanity]),_2280).


test('?- e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_2336),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_2336),sanity]),_2280).


test('?- e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_2330),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_2330),sanity]),_2280).


test('?- e2c("The German smokes Prince.",[riddle(_2326),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The German smokes Prince.",[riddle(_2326),sanity]),_2280).


test('?- e2c("The Norwegian lives next to the blue house.",[riddle(_2330),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The Norwegian lives next to the blue house.",[riddle(_2330),sanity]),_2280).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_2334),sanity])',[true(compound(_2280)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_2334),sanity]),_2280).


test('?- e2c("Who owns the fish?",[riddle(_2324),sanity])',[true(compound(_2280)),nondet]):-call(e2c("Who owns the fish?",[riddle(_2324),sanity]),_2280).


test('?- e2c("One woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("One woman paints.",[quants]),_2280).


test('?- e2c("No woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("No woman paints.",[quants]),_2280).


test('?- e2c("Some woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Some woman paints.",[quants]),_2280).


test('?- e2c("Every woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Every woman paints.",[quants]),_2280).


test('?- e2c("Each woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Each woman paints.",[quants]),_2280).


test('?- e2c("Any woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Any woman paints.",[quants]),_2280).


test('?- e2c("The woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("The woman paints.",[quants]),_2280).


test('?- e2c("The not woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("The not woman paints.",[quants]),_2280).


test('?- e2c("Not a woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not a woman paints.",[quants]),_2280).


test('?- e2c("Not one woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not one woman paints.",[quants]),_2280).


test('?- e2c("Not no woman paints.",[quants_neg_postcond])',[true(compound(_2280)),nondet]):-call(e2c("Not no woman paints.",[quants_neg_postcond]),_2280).


test('?- e2c("Not some woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not some woman paints.",[quants]),_2280).


test('?- e2c("Not every woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not every woman paints.",[quants]),_2280).


test('?- e2c("Not each woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not each woman paints.",[quants]),_2280).


test('?- e2c("Not any woman paints.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not any woman paints.",[quants]),_2280).


test('?- e2c("The women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("The women paint.",[quants]),_2280).


test('?- e2c("Women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Women paint.",[quants]),_2280).


test('?- e2c("Some women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Some women paint.",[quants]),_2280).


test('?- e2c("No women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("No women paint.",[quants]),_2280).


test('?- e2c("All women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("All women paint.",[quants]),_2280).


test('?- e2c("Any women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Any women paint.",[quants]),_2280).


test('?- e2c("Not women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not women paint.",[quants]),_2280).


test('?- e2c("Not no women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not no women paint.",[quants]),_2280).


test('?- e2c("Not all women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not all women paint.",[quants]),_2280).


test('?- e2c("Not any women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not any women paint.",[quants]),_2280).


test('?- e2c("The three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("The three women paint.",[quants]),_2280).


test('?- e2c("Three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Three women paint.",[quants]),_2280).


test('?- e2c("Some three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Some three women paint.",[quants]),_2280).


test('?- e2c("No three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("No three women paint.",[quants]),_2280).


test('?- e2c("Every three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Every three women paint.",[quants]),_2280).


test('?- e2c("All three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("All three women paint.",[quants]),_2280).


test('?- e2c("Any three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Any three women paint.",[quants]),_2280).


test('?- e2c("Not three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not three women paint.",[quants]),_2280).


test('?- e2c("Not some three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not some three women paint.",[quants]),_2280).


test('?- e2c("Not no three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not no three women paint.",[quants]),_2280).


test('?- e2c("Not all three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not all three women paint.",[quants]),_2280).


test('?- e2c("Not every three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not every three women paint.",[quants]),_2280).


test('?- e2c("Not any three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not any three women paint.",[quants]),_2280).


test('?- e2c("Not three of the women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not three of the women paint.",[quants]),_2280).


test('?- e2c("Not some of the three women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not some of the three women paint.",[quants]),_2280).


test('?- e2c("Not no three of the women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not no three of the women paint.",[quants]),_2280).


test('?- e2c("Not all three of the women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not all three of the women paint.",[quants]),_2280).


test('?- e2c("Not every three of the women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not every three of the women paint.",[quants]),_2280).


test('?- e2c("Not any three of the women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not any three of the women paint.",[quants]),_2280).


test('?- e2c("Not three of the four women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not three of the four women paint.",[quants]),_2280).


test('?- e2c("Not none of three out of the four women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not none of three out of the four women paint.",[quants]),_2280).


test('?- e2c("Not all three of the four women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not all three of the four women paint.",[quants]),_2280).


test('?- e2c("Not any three of the four women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Not any three of the four women paint.",[quants]),_2280).


test('?- e2c("Three of the four women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Three of the four women paint.",[quants]),_2280).


test('?- e2c("Three out of the four women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Three out of the four women paint.",[quants]),_2280).


test('?- e2c("All three of the four women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("All three of the four women paint.",[quants]),_2280).


test('?- e2c("Any three of the four women paint.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("Any three of the four women paint.",[quants]),_2280).


test('?- e2c("I paint",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("I paint",[pronoun]),_2280).


test('?- e2c("you paint",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("you paint",[pronoun]),_2280).


test('?- e2c("We paint",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("We paint",[pronoun]),_2280).


test('?- e2c("None paint",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("None paint",[pronoun]),_2280).


test('?- e2c("They paint",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("They paint",[pronoun]),_2280).


test('?- e2c("Some paint",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Some paint",[pronoun]),_2280).


test('?- e2c("It paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("It paints",[pronoun]),_2280).


test('?- e2c("he paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("he paints",[pronoun]),_2280).


test('?- e2c("She paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She paints",[pronoun]),_2280).


test('?- e2c("Someone paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Someone paints",[pronoun]),_2280).


test('?- e2c("Anybody paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Anybody paints",[pronoun]),_2280).


test('?- e2c("Anyone paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Anyone paints",[pronoun]),_2280).


test('?- e2c("Anything paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Anything paints",[pronoun]),_2280).


test('?- e2c("Everybody paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Everybody paints",[pronoun]),_2280).


test('?- e2c("Everyone paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Everyone paints",[pronoun]),_2280).


test('?- e2c("Everything paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Everything paints",[pronoun]),_2280).


test('?- e2c("Nobody paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Nobody paints",[pronoun]),_2280).


test('?- e2c("No one paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("No one paints",[pronoun]),_2280).


test('?- e2c("Nothing paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Nothing paints",[pronoun]),_2280).


test('?- e2c("One paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("One paints",[pronoun]),_2280).


test('?- e2c("Somebody paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Somebody paints",[pronoun]),_2280).


test('?- e2c("Something paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Something paints",[pronoun]),_2280).


test('?- e2c("Not anybody paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Not anybody paints",[pronoun]),_2280).


test('?- e2c("Not anyone paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Not anyone paints",[pronoun]),_2280).


test('?- e2c("Not anything paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Not anything paints",[pronoun]),_2280).


test('?- e2c("Not everybody paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Not everybody paints",[pronoun]),_2280).


test('?- e2c("Not everyone paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Not everyone paints",[pronoun]),_2280).


test('?- e2c("Not everything paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Not everything paints",[pronoun]),_2280).


test('?- e2c("Not nothing paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Not nothing paints",[pronoun]),_2280).


test('?- e2c("Not one paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Not one paints",[pronoun]),_2280).


test('?- e2c("Not somebody paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Not somebody paints",[pronoun]),_2280).


test('?- e2c("Not something paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("Not something paints",[pronoun]),_2280).


test('?- e2c("She likes i",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes i",[pronoun]),_2280).


test('?- e2c("She likes me",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes me",[pronoun]),_2280).


test('?- e2c("She likes you",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes you",[pronoun]),_2280).


test('?- e2c("She likes it",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes it",[pronoun]),_2280).


test('?- e2c("She likes us",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes us",[pronoun]),_2280).


test('?- e2c("She likes them",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes them",[pronoun]),_2280).


test('?- e2c("She likes no one",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes no one",[pronoun]),_2280).


test('?- e2c("She likes none",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes none",[pronoun]),_2280).


test('?- e2c("She likes him",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes him",[pronoun]),_2280).


test('?- e2c("She likes herself",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes herself",[pronoun]),_2280).


test('?- e2c("She likes himself",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("She likes himself",[pronoun]),_2280).


test('?- e2c("It is us that paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("It is us that paints",[pronoun]),_2280).


test('?- e2c("It is them that paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("It is them that paints",[pronoun]),_2280).


test('?- e2c("It is he that paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("It is he that paints",[pronoun]),_2280).


test('?- e2c("It is she that paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("It is she that paints",[pronoun]),_2280).


test('?- e2c("It is her that paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("It is her that paints",[pronoun]),_2280).


test('?- e2c("It is him that paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("It is him that paints",[pronoun]),_2280).


test('?- e2c("We are us that paint",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("We are us that paint",[pronoun]),_2280).


test('?- e2c("We are all of us that paint",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("We are all of us that paint",[pronoun]),_2280).


test('?- e2c("It is everybody that paints",[pronoun])',[true(compound(_2280)),nondet]):-call(e2c("It is everybody that paints",[pronoun]),_2280).


test('?- e2c("Every man that paints likes monet.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Every man that paints likes monet.",[bratko]),_2280).


test('?- e2c("A woman that admires John paints.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A woman that admires John paints.",[bratko]),_2280).


test('?- e2c("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Every woman that likes a man that admires monet paints.",[bratko]),_2280).


test('?- e2c("John likes Annie.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("John likes Annie.",[bratko]),_2280).


test('?- e2c("Annie likes a man that admires monet.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Annie likes a man that admires monet.",[bratko]),_2280).


test('?- e2c("Bertrand Russell wrote principia.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Bertrand Russell wrote principia.",[bratko]),_2280).


test('?- e2c("An author wrote principia.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("An author wrote principia.",[bratko]),_2280).


test('?- e2c("Iraq is a country.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Iraq is a country.",[bratko]),_2280).


test('?- e2c("A happy author wrote principia.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A happy author wrote principia.",[bratko]),_2280).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_2280).


test('?- e2c("Bertrand is an author.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Bertrand is an author.",[bratko]),_2280).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_2280).


test('?- e2c("Every author is a programmer.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Every author is a programmer.",[bratko]),_2280).


test('?- e2c("Is Bertrand an programmer?",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Is Bertrand an programmer?",[bratko]),_2280).


test('?- e2c("What is a author?",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("What is a author?",[bratko]),_2280).


test('?- e2c("What did Bertrand write?",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("What did Bertrand write?",[bratko]),_2280).


test('?- e2c("What is a book?",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("What is a book?",[bratko]),_2280).


test('?- e2c("Principia is a book.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Principia is a book.",[bratko]),_2280).


test('?- e2c("Bertrand is Bertrand.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Bertrand is Bertrand.",[bratko]),_2280).


test('?- e2c("Shrdlu halts.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Shrdlu halts.",[bratko]),_2280).


test('?- e2c("Every student wrote a program.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Every student wrote a program.",[bratko]),_2280).


test('?- e2c("Terry writes a program.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Terry writes a program.",[bratko]),_2280).


test('?- e2c("Terry writes a program that halts.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("Terry writes a program that halts.",[bratko]),_2280).


test('?- e2c("An author of every book wrote a program.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("An author of every book wrote a program.",[bratko]),_2280).


test('?- e2c("A man hapilly maried paints.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A man hapilly maried paints.",[bratko]),_2280).


test('?- e2c("A hapilly maried man paints.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A hapilly maried man paints.",[bratko]),_2280).


test('?- e2c("A man who knows paints.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A man who knows paints.",[bratko]),_2280).


test('?- e2c("A man gives something.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A man gives something.",[bratko]),_2280).


test('?- e2c("A man gives his word.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A man gives his word.",[bratko]),_2280).


test('?- e2c("A man of his word paints.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A man of his word paints.",[bratko]),_2280).


test('?- e2c("A man paints.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A man paints.",[bratko]),_2280).


test('?- e2c("A man that paints paints.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A man that paints paints.",[bratko]),_2280).


test('?- e2c("A man walks.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A man walks.",[bratko]),_2280).


test('?- e2c("A man that walks paints.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A man that walks paints.",[bratko]),_2280).


test('?- e2c("It halts.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("It halts.",[bratko]),_2280).


test('?- e2c("A man of his word that walks paints.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("A man of his word that walks paints.",[bratko]),_2280).


test('?- e2c("The cost of what the product is changes.",[bratko])',[true(compound(_2280)),nondet]):-call(e2c("The cost of what the product is changes.",[bratko]),_2280).


test('?- e2c("We need a virtual machine server.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("We need a virtual machine server.",[aindy]),_2280).


test('?- e2c("The virtual machine server should have several VMs.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("The virtual machine server should have several VMs.",[aindy]),_2280).


test('?- e2c("One VM should be the POSI VM.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("One VM should be the POSI VM.",[aindy]),_2280).


test('?- e2c("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("One VM should be the FRDCSA.org VM.",[aindy]),_2280).


test('?- e2c("One VM should be the mail server.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("One VM should be the mail server.",[aindy]),_2280).


test('?- e2c("One computer should be the backup server.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("One computer should be the backup server.",[aindy]),_2280).


test('?- e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_2280).


test('?- e2c("I need a fast computer for work.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I need a fast computer for work.",[aindy]),_2280).


test('?- e2c("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_2280).


test('?- e2c("I need a dedicated computer for network security research.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I need a dedicated computer for network security research.",[aindy]),_2280).


test('?- e2c("I need a machine to run Tails on.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I need a machine to run Tails on.",[aindy]),_2280).


test('?- e2c("I need a machine off the network for airgap security.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I need a machine off the network for airgap security.",[aindy]),_2280).


test('?- e2c("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("One VM should be the game server for running game development projects.",[aindy]),_2280).


test('?- e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_2280).


test('?- e2c("I could read about how to build a private watson.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I could read about how to build a private watson.",[aindy]),_2280).


test('?- e2c("Need backups.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("Need backups.",[aindy]),_2280).


test('?- e2c("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("Practice setting up backups of a machine to a different machine.",[aindy]),_2280).


test('?- e2c("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("Set up schedules for updating the software on all machines.",[aindy]),_2280).


test('?- e2c("Read books on server room layout.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("Read books on server room layout.",[aindy]),_2280).


test('?- e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_2280).


test('?- e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_2280).


test('?- e2c("I want a gaming computer.  Do I?",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I want a gaming computer.  Do I?",[aindy]),_2280).


test('?- e2c("I want a windows 7 computer for work.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I want a windows 7 computer for work.",[aindy]),_2280).


test('?- e2c("I want a fast linux computer for work.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I want a fast linux computer for work.",[aindy]),_2280).


test('?- e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_2280).


test('?- e2c("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I could install a fresh operating system on justin for work.",[aindy]),_2280).


test('?- e2c("I probably want a separate git computer.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I probably want a separate git computer.",[aindy]),_2280).


test('?- e2c("I need to start buying servers.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I need to start buying servers.",[aindy]),_2280).


test('?- e2c("I want a rackmount case for servers.",[aindy])',[true(compound(_2280)),nondet]):-call(e2c("I want a rackmount case for servers.",[aindy]),_2280).


test('?- e2c("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_2280)),nondet]):-call(e2c("Each african country is bordered by 2 oceans.",[chat80(tell)]),_2280).


test('?- e2c("2 oceans border each african country.",[chat80(tell)])',[true(compound(_2280)),nondet]):-call(e2c("2 oceans border each african country.",[chat80(tell)]),_2280).


test('?- e2c("There are 10 large cars.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("There are 10 large cars.",[quants]),_2280).


test('?- e2c("There are 10 oceans.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("There are 10 oceans.",[quants]),_2280).


test('?- e2c("There are 10 women.",[quants])',[true(compound(_2280)),nondet]):-call(e2c("There are 10 women.",[quants]),_2280).


test('?- e2c("An ocean borders an African country.",[chat80(tell)])',[true(compound(_2280)),nondet]):-call(e2c("An ocean borders an African country.",[chat80(tell)]),_2280).


test('?- e2c("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_2280)),nondet]):-call(e2c("What is the ocean that borders african countries and that borders asian countries?",[tell]),_2280).


test('?- e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_2280)),nondet]):-call(e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_2280).


test('?- e2c("Bertrand wrote a book.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Bertrand wrote a book.",[bratko(book)]),_2280).


test('?- e2c("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Bertrand wrote nothing.",[bratko(book)]),_2280).


test('?- e2c("Bertrand wrote.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Bertrand wrote.",[bratko(book)]),_2280).


test('?- e2c("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Bertrand wrote a book about Gottlob.",[bratko(book)]),_2280).


test('?- e2c("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Bertrand wrote about Gottlob.",[bratko(book)]),_2280).


test('?- e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_2280).


test('?- e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_2280).


test('?- e2c("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("What did alfred write to Bertrand?",[bratko(book)]),_2280).


test('?- e2c("Alfred wrote a letter.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Alfred wrote a letter.",[bratko(book)]),_2280).


test('?- e2c("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Alfred wrote a letter to Bertrand.",[bratko(book)]),_2280).


test('?- e2c("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Alfred wrote something to Bertrand.",[bratko(book)]),_2280).


test('?- e2c("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Alfred wrote to Bertrand.",[bratko(book)]),_2280).


test('?- e2c("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Alfred wrote to Bertrand a letter.",[bratko(book)]),_2280).


test('?- e2c("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Alfred wrote Bertrand a letter.",[bratko(book)]),_2280).


test('?- e2c("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Who did alfred write a letter to?",[bratko(book)]),_2280).


test('?- e2c("Alfred gave it.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Alfred gave it.",[bratko(book)]),_2280).


test('?- e2c("Alfred gave a book.",[bratko(book)])',[true(compound(_2280)),nondet]):-call(e2c("Alfred gave a book.",[bratko(book)]),_2280).


test('?- e2c("a pride of lions paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a pride of lions paint",[of]),_2280).


test('?- e2c("a flock of birds paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a flock of birds paint",[of]),_2280).


test('?- e2c("a litter of pups paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a litter of pups paint",[of]),_2280).


test('?- e2c("a prickle of porcupines paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a prickle of porcupines paint",[of]),_2280).


test('?- e2c("a litter of cubs paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a litter of cubs paint",[of]),_2280).


test('?- e2c("a pack of dogs paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a pack of dogs paint",[of]),_2280).


test('?- e2c("a colony of beavers paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a colony of beavers paint",[of]),_2280).


test('?- e2c("a gaggle of geese paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a gaggle of geese paint",[of]),_2280).


test('?- e2c("a family of otters paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a family of otters paint",[of]),_2280).


test('?- e2c("a huddle of walruses paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a huddle of walruses paint",[of]),_2280).


test('?- e2c("a herd of deer paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a herd of deer paint",[of]),_2280).


test('?- e2c("a culture of bacteria paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a culture of bacteria paint",[of]),_2280).


test('?- e2c("a swarm of bees paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a swarm of bees paint",[of]),_2280).


test('?- e2c("a bed of clams paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a bed of clams paint",[of]),_2280).


test('?- e2c("a school of cod paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a school of cod paint",[of]),_2280).


test('?- e2c("a herd of dinosaurs paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a herd of dinosaurs paint",[of]),_2280).


test('?- e2c("a mess of iguanas paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a mess of iguanas paint",[of]),_2280).


test('?- e2c("a mob of wombats paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a mob of wombats paint",[of]),_2280).


test('?- e2c("a pod of pelicans paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a pod of pelicans paint",[of]),_2280).


test('?- e2c("a troop of boy scouts paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a troop of boy scouts paint",[of]),_2280).


test('?- e2c("a team of athletes paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a team of athletes paint",[of]),_2280).


test('?- e2c("a panel of experts paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a panel of experts paint",[of]),_2280).


test('?- e2c("a crew of sailors paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a crew of sailors paint",[of]),_2280).


test('?- e2c("a band of robbers paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a band of robbers paint",[of]),_2280).


test('?- e2c("a troupe of performers paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a troupe of performers paint",[of]),_2280).


test('?- e2c("a crowd of onlookers paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a crowd of onlookers paint",[of]),_2280).


test('?- e2c("a curse of painters paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a curse of painters paint",[of]),_2280).


test('?- e2c("a fleet of cars paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a fleet of cars paint",[of]),_2280).


test('?- e2c("a pair of shoes paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a pair of shoes paint",[of]),_2280).


test('?- e2c("a fleet of ships paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("a fleet of ships paint",[of]),_2280).


test('?- e2c("an anthology of stories paint",[of])',[true(compound(_2280)),nondet]):-call(e2c("an anthology of stories paint",[of]),_2280).


test('?- e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_2280).


test('?- e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_2280).


test('?- e2c("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_2280).


test('?- e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_2280).


test('?- e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_2280).


test('?- e2c("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_2280).


test('?- e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_2280).


test('?- e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_2280).


test('?- e2c("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("He stowed super-human strength, and is extremely tough",[descriptionTest]),_2280).


test('?- e2c("Logged on player character",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Logged on player character",[descriptionTest]),_2280).


test('?- e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_2280).


test('?- e2c("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_2280).


test('?- e2c("Wesley is her son",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Wesley is her son",[descriptionTest]),_2280).


test('?- e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_2280).


test('?- e2c("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Counselor Deanna Troi is here",[descriptionTest]),_2280).


test('?- e2c("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Counselor Troi is the ship's main counselor",[descriptionTest]),_2280).


test('?- e2c("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_2280).


test('?- e2c("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Commander William Riker is here, staring at you",[descriptionTest]),_2280).


test('?- e2c("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Commander Riker is the Enterprise's first officer",[descriptionTest]),_2280).


test('?- e2c("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("He's in charge of keeping the crew in line",[descriptionTest]),_2280).


test('?- e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_2280).


test('?- e2c("Captain Picard is a very important man",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Captain Picard is a very important man",[descriptionTest]),_2280).


test('?- e2c("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_2280).


test('?- e2c("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("He's very smart, and very wise",[descriptionTest]),_2280).


test('?- e2c("Don\'t mess with him!",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Don't mess with him!",[descriptionTest]),_2280).


test('?- e2c("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Guinan is here, tending the bar",[descriptionTest]),_2280).


test('?- e2c("Guinan is a strange being",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Guinan is a strange being",[descriptionTest]),_2280).


test('?- e2c("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_2280).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_2280).


test('?- e2c("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_2280).


test('?- e2c("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_2280).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_2280).


test('?- e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_2280).


test('?- e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_2280).


test('?- e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_2280).


test('?- e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_2280).


test('?- e2c("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Livingston is Captain Picard's pet fish",[descriptionTest]),_2280).


test('?- e2c("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_2280).


test('?- e2c("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_2280).


test('?- e2c("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Spot is Data's orange coloured cat",[descriptionTest]),_2280).


test('?- e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_2280).


test('?- e2c("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A nervous looking ensign is standing here, watching you",[descriptionTest]),_2280).


test('?- e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_2280).


test('?- e2c("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_2280).


test('?- e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_2280).


test('?- e2c("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Alexander Rozhenko is Worf's son",[descriptionTest]),_2280).


test('?- e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_2280).


test('?- e2c("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_2280).


test('?- e2c("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A standard issue Starfleet phaser has been left here",[descriptionTest]),_2280).


test('?- e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_2280).


test('?- e2c("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A large phaser rifle is lying here",[descriptionTest]),_2280).


test('?- e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_2280).


test('?- e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_2280).


test('?- e2c("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_2280).


test('?- e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_2280).


test('?- e2c("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_2280).


test('?- e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_2280).


test('?- e2c("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_2280).


test('?- e2c("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A pair of Starfleet black boots are sitting here",[descriptionTest]),_2280).


test('?- e2c("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_2280).


test('?- e2c("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A Starfleet communication badge is lying here",[descriptionTest]),_2280).


test('?- e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_2280).


test('?- e2c("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Worf's silver chain sash has been left here",[descriptionTest]),_2280).


test('?- e2c("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_2280).


test('?- e2c("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Geordi's VISOR is lying here",[descriptionTest]),_2280).


test('?- e2c("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_2280).


test('?- e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_2280).


test('?- e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_2280).


test('?- e2c("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A shard of dilithium crystal is lying here",[descriptionTest]),_2280).


test('?- e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_2280).


test('?- e2c("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Captain Picard's wooden flute is sitting here",[descriptionTest]),_2280).


test('?- e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_2280).


test('?- e2c("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Commander Riker's trombone has been placed here",[descriptionTest]),_2280).


test('?- e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_2280).


test('?- e2c("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A small cup of tea is sitting here",[descriptionTest]),_2280).


test('?- e2c("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A bottle of synthehol is standing here",[descriptionTest]),_2280).


test('?- e2c("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A bottle of Ferengi ale is sitting here",[descriptionTest]),_2280).


test('?- e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_2280).


test('?- e2c("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A small glass of prune juice is sitting here",[descriptionTest]),_2280).


test('?- e2c("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A bottle of Vulcan beer is standing here",[descriptionTest]),_2280).


test('?- e2c("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You find yourself in the middle of main engineering",[descriptionTest]),_2280).


test('?- e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_2280).


test('?- e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_2280).


test('?- e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_2280).


test('?- e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_2280).


test('?- e2c("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_2280).


test('?- e2c("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the middle of Geordi's quarters",[descriptionTest]),_2280).


test('?- e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_2280).


test('?- e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_2280).


test('?- e2c("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A neatly made bed has been placed against the northern wall",[descriptionTest]),_2280).


test('?- e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_2280).


test('?- e2c("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the middle of Data's quarters",[descriptionTest]),_2280).


test('?- e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_2280).


test('?- e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_2280).


test('?- e2c("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_2280).


test('?- e2c("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the dimly lit Brig",[descriptionTest]),_2280).


test('?- e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_2280).


test('?- e2c("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_2280).


test('?- e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_2280).


test('?- e2c(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_2280).


test('?- e2c("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_2280).


test('?- e2c("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the Enterprise transporter room",[descriptionTest]),_2280).


test('?- e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_2280).


test('?- e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_2280).


test('?- e2c("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You find yourself in a transporter beam",[descriptionTest]),_2280).


test('?- e2c("All you can see is blue flashing light",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("All you can see is blue flashing light",[descriptionTest]),_2280).


test('?- e2c("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("It feels as though your body is racing around at high speeds",[descriptionTest]),_2280).


test('?- e2c("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_2280).


test('?- e2c("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You step through the doors and find yourself in a large school room",[descriptionTest]),_2280).


test('?- e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_2280).


test('?- e2c("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_2280).


test('?- e2c("You\'re in the turbolift",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the turbolift",[descriptionTest]),_2280).


test('?- e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_2280).


test('?- e2c("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Several vertical rows of lights make this place very well lit",[descriptionTest]),_2280).


test('?- e2c("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("From here, you can access the other decks on the Enterprise",[descriptionTest]),_2280).


test('?- e2c("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're now on Holodeck 2",[descriptionTest]),_2280).


test('?- e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_2280).


test('?- e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_2280).


test('?- e2c("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Right now, this holodeck is not functioning",[descriptionTest]),_2280).


test('?- e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_2280).


test('?- e2c("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the main cargo bay of the Enterprise",[descriptionTest]),_2280).


test('?- e2c("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_2280).


test('?- e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_2280).


test('?- e2c("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You've arrived in Riker's quarters",[descriptionTest]),_2280).


test('?- e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_2280).


test('?- e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_2280).


test('?- e2c("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_2280).


test('?- e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_2280).


test('?- e2c("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_2280).


test('?- e2c("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You emerge into a dark narrow alley",[descriptionTest]),_2280).


test('?- e2c("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Tall dark brick buildings block your way north and south",[descriptionTest]),_2280).


test('?- e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_2280).


test('?- e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_2280).


test('?- e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_2280).


test('?- e2c("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The archway leading out of the holodeck is west",[descriptionTest]),_2280).


test('?- e2c("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in Doctor Crusher's quarters",[descriptionTest]),_2280).


test('?- e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_2280).


test('?- e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_2280).


test('?- e2c("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_2280).


test('?- e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_2280).


test('?- e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_2280).


test('?- e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_2280).


test('?- e2c("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_2280).


test('?- e2c("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_2280).


test('?- e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_2280).


test('?- e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_2280).


test('?- e2c("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_2280).


test('?- e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_2280).


test('?- e2c("A large grey door leads into space",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A large grey door leads into space",[descriptionTest]),_2280).


test('?- e2c("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_2280).


test('?- e2c("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You can see stars in every direction, which provide the only light here",[descriptionTest]),_2280).


test('?- e2c("You feel very cold",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You feel very cold",[descriptionTest]),_2280).


test('?- e2c("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_2280).


test('?- e2c("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_2280).


test('?- e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_2280).


test('?- e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_2280).


test('?- e2c("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in Worf's quarters",[descriptionTest]),_2280).


test('?- e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_2280).


test('?- e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_2280).


test('?- e2c("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You emerge into the Enterprise gym",[descriptionTest]),_2280).


test('?- e2c("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The room is quite large, with a soft grey floor",[descriptionTest]),_2280).


test('?- e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_2280).


test('?- e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_2280).


test('?- e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_2280).


test('?- e2c("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_2280).


test('?- e2c("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_2280).


test('?- e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_2280).


test('?- e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_2280).


test('?- e2c("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Two large windows offer a great view of space",[descriptionTest]),_2280).


test('?- e2c("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_2280).


test('?- e2c("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the Enterprise science lab",[descriptionTest]),_2280).


test('?- e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_2280).


test('?- e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_2280).


test('?- e2c("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A complex looking computer console is facing this machine",[descriptionTest]),_2280).


test('?- e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_2280).


test('?- e2c("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_2280).


test('?- e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_2280).


test('?- e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_2280).


test('?- e2c("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_2280).


test('?- e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_2280).


test('?- e2c("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're standing in Captain Picard's ready room",[descriptionTest]),_2280).


test('?- e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_2280).


test('?- e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_2280).


test('?- e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_2280).


test('?- e2c("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("This is where the Captain makes all of his important decisions",[descriptionTest]),_2280).


test('?- e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_2280).


test('?- e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_2280).


test('?- e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_2280).


test('?- e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_2280).


test('?- e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_2280).


test('?- e2c("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("This is where the ship's pilot and information officer sit",[descriptionTest]),_2280).


test('?- e2c("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're in the conference room of the Enterprise",[descriptionTest]),_2280).


test('?- e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_2280).


test('?- e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_2280).


test('?- e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_2280).


test('?- e2c("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_2280)),nondet]):-call(e2c("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_2280).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_2280)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_2280).


test('?- e2c("no two owners eat pizza",[sanity])',[true(compound(_2280)),nondet]):-call(e2c("no two owners eat pizza",[sanity]),_2280).


test('?- e2c("no three owners eat pizza",[sanity])',[true(compound(_2280)),nondet]):-call(e2c("no three owners eat pizza",[sanity]),_2280).


test('?- e2c("no three owners eat the same pizza",[sanity])',[true(compound(_2280)),nondet]):-call(e2c("no three owners eat the same pizza",[sanity]),_2280).


test('?- e2c("no three owners eat the same kind of pizza",[sanity])',[true(compound(_2280)),nondet]):-call(e2c("no three owners eat the same kind of pizza",[sanity]),_2280).


test('?- e2c("no owners eat the same pizza",[sanity])',[true(compound(_2280)),nondet]):-call(e2c("no owners eat the same pizza",[sanity]),_2280).


test('?- e2c("no owners eat the same kind of pizza",[sanity])',[true(compound(_2280)),nondet]):-call(e2c("no owners eat the same kind of pizza",[sanity]),_2280).


test('?- e2c("there are 5 houses",[sanity])',[true(compound(_2280)),nondet]):-call(e2c("there are 5 houses",[sanity]),_2280).


test('?- e2c("there are not 5 houses",[sanity])',[true(compound(_2280)),nondet]):-call(e2c("there are not 5 houses",[sanity]),_2280).


test('?- e2c("there are not zero houses",[sanity])',[true(compound(_2280)),nondet]):-call(e2c("there are not zero houses",[sanity]),_2280).


test('?- e2c(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_2280)),nondet]):-call(e2c(noun_phrase("less than 2 owners"),[sanity,bug]),_2280).


test('?- e2c(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_2280)),nondet]):-call(e2c(noun_phrase("at most the 5 owners"),[sanity]),_2280).


test('?- e2c(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_2280)),nondet]):-call(e2c(noun_phrase("at most 5 owners"),[sanity]),_2280).


test('?- e2c(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_2280)),nondet]):-call(e2c(noun_phrase("less than 3 owners"),[sanity]),_2280).


test('?- e2c(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_2280)),nondet]):-call(e2c(noun_phrase("at most 50 percent of owners"),[sanity]),_2280).


test('?- e2c(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_2280)),nondet]):-call(e2c(noun_phrase("no three owners"),[sanity,no_working]),_2280).


test('?- e2c("terry writes a non-program.",[tell])',[true(compound(_2280)),nondet]):-call(e2c("terry writes a non-program.",[tell]),_2280).


test('?- e2c("every nonhuman programmer writes a program.",[tell])',[true(compound(_2280)),nondet]):-call(e2c("every nonhuman programmer writes a program.",[tell]),_2280).


test('?- e2c("every human programmer writes a not a program.",[tell])',[true(compound(_2280)),nondet]):-call(e2c("every human programmer writes a not a program.",[tell]),_2280).


test('?- e2c("every human programmer happily writes a not a program.",[tell])',[true(compound(_2280)),nondet]):-call(e2c("every human programmer happily writes a not a program.",[tell]),_2280).


:- end_tests(e2c).

