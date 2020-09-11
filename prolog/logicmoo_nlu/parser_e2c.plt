

:- begin_tests(test_lex_info).



test('?- test_lex_info("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_110066)),nondet]):-call(test_lex_info("His friends are liked by hers.",[bad_juju,sanity]),_110066).


test('?- test_lex_info("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_110068)),nondet]):-call(test_lex_info("Her friends are not liked by his.",[bad_juju,sanity]),_110068).


test('?- test_lex_info("Do their friends like each other?",[bad_juju,feature])',[true(compound(_110068)),nondet]):-call(test_lex_info("Do their friends like each other?",[bad_juju,feature]),_110068).


test('?- test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_110010),sanity])',[true(compound(_110072)),nondet]):-call(test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_110010),sanity]),_110072).


test('?- test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_110008),sanity])',[true(compound(_110070)),nondet]):-call(test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_110008),sanity]),_110070).


test('?- test_lex_info("There are 5 houses with five different colors.",[riddle(_110012),sanity])',[true(compound(_110074)),nondet]):-call(test_lex_info("There are 5 houses with five different colors.",[riddle(_110012),sanity]),_110074).


test('?- test_lex_info("There are 5 houses",[riddle_prep,sanity])',[true(compound(_110064)),nondet]):-call(test_lex_info("There are 5 houses",[riddle_prep,sanity]),_110064).


test('?- test_lex_info("Each house has a different color",[riddle_prep,sanity])',[true(compound(_110068)),nondet]):-call(test_lex_info("Each house has a different color",[riddle_prep,sanity]),_110068).


test('?- test_lex_info("In each house lives a person with a different nationality.",[riddle(_110016),sanity])',[true(compound(_110078)),nondet]):-call(test_lex_info("In each house lives a person with a different nationality.",[riddle(_110016),sanity]),_110078).


test('?- test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_110090)),nondet]):-call(test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_110090).


test('?- test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_110078)),nondet]):-call(test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_110078).


test('?- test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_110076)),nondet]):-call(test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_110076).


test('?- test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_110080)),nondet]):-call(test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_110080).


test('?- test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_110084)),nondet]):-call(test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_110084).


test('?- test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_110076)),nondet]):-call(test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression]),_110076).


test('?- test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_110080)),nondet]):-call(test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_110080).


test('?- test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_110074)),nondet]):-call(test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_110074).


test('?- test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_110078)),nondet]):-call(test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression]),_110078).


test('?- test_lex_info("The brit lives in the red house.",[riddle(_110010),sanity])',[true(compound(_110072)),nondet]):-call(test_lex_info("The brit lives in the red house.",[riddle(_110010),sanity]),_110072).


test('?- test_lex_info("The swede keeps dogs as pets.",[riddle(_110008),sanity])',[true(compound(_110070)),nondet]):-call(test_lex_info("The swede keeps dogs as pets.",[riddle(_110008),sanity]),_110070).


test('?- test_lex_info("A dane drinks tea.",[riddle(_110006),sanity])',[true(compound(_110068)),nondet]):-call(test_lex_info("A dane drinks tea.",[riddle(_110006),sanity]),_110068).


test('?- test_lex_info("The green house is on the left of the white house.",[riddle(_110014),sanity])',[true(compound(_110076)),nondet]):-call(test_lex_info("The green house is on the left of the white house.",[riddle(_110014),sanity]),_110076).


test('?- test_lex_info("The green house\'s owner drinks coffee.",[riddle(_110010),sanity])',[true(compound(_110072)),nondet]):-call(test_lex_info("The green house's owner drinks coffee.",[riddle(_110010),sanity]),_110072).


test('?- test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_110012),sanity,regression])',[true(compound(_110080)),nondet]):-call(test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_110012),sanity,regression]),_110080).


test('?- test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_110012),sanity])',[true(compound(_110074)),nondet]):-call(test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_110012),sanity]),_110074).


test('?- test_lex_info("The man living in the center house drinks milk.",[riddle(_110014),sanity])',[true(compound(_110076)),nondet]):-call(test_lex_info("The man living in the center house drinks milk.",[riddle(_110014),sanity]),_110076).


test('?- test_lex_info("The Norwegian lives in the first house .",[riddle(_110012),sanity])',[true(compound(_110074)),nondet]):-call(test_lex_info("The Norwegian lives in the first house .",[riddle(_110012),sanity]),_110074).


test('?- test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_110018),sanity])',[true(compound(_110080)),nondet]):-call(test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_110018),sanity]),_110080).


test('?- test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_110018),sanity])',[true(compound(_110080)),nondet]):-call(test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_110018),sanity]),_110080).


test('?- test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_110012),sanity])',[true(compound(_110074)),nondet]):-call(test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_110012),sanity]),_110074).


test('?- test_lex_info("The German smokes Prince.",[riddle(_110008),sanity])',[true(compound(_110070)),nondet]):-call(test_lex_info("The German smokes Prince.",[riddle(_110008),sanity]),_110070).


test('?- test_lex_info("The Norwegian lives next to the blue house.",[riddle(_110012),sanity])',[true(compound(_110074)),nondet]):-call(test_lex_info("The Norwegian lives next to the blue house.",[riddle(_110012),sanity]),_110074).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_110016),sanity])',[true(compound(_110078)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_110016),sanity]),_110078).


test('?- test_lex_info("Who owns the fish?",[riddle(_110006),sanity])',[true(compound(_110068)),nondet]):-call(test_lex_info("Who owns the fish?",[riddle(_110006),sanity]),_110068).


test('?- test_lex_info("One woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("One woman paints.",[quants]),_110058).


test('?- test_lex_info("No woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("No woman paints.",[quants]),_110058).


test('?- test_lex_info("Some woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Some woman paints.",[quants]),_110058).


test('?- test_lex_info("Every woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Every woman paints.",[quants]),_110058).


test('?- test_lex_info("Each woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Each woman paints.",[quants]),_110058).


test('?- test_lex_info("Any woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Any woman paints.",[quants]),_110058).


test('?- test_lex_info("The woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("The woman paints.",[quants]),_110058).


test('?- test_lex_info("The not woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("The not woman paints.",[quants]),_110058).


test('?- test_lex_info("Not a woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not a woman paints.",[quants]),_110058).


test('?- test_lex_info("Not one woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not one woman paints.",[quants]),_110058).


test('?- test_lex_info("Not no woman paints.",[quants_neg_postcond])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not no woman paints.",[quants_neg_postcond]),_110058).


test('?- test_lex_info("Not some woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not some woman paints.",[quants]),_110058).


test('?- test_lex_info("Not every woman paints.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("Not every woman paints.",[quants]),_110060).


test('?- test_lex_info("Not each woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not each woman paints.",[quants]),_110058).


test('?- test_lex_info("Not any woman paints.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not any woman paints.",[quants]),_110058).


test('?- test_lex_info("The women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("The women paint.",[quants]),_110058).


test('?- test_lex_info("Women paint.",[quants])',[true(compound(_110056)),nondet]):-call(test_lex_info("Women paint.",[quants]),_110056).


test('?- test_lex_info("Some women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Some women paint.",[quants]),_110058).


test('?- test_lex_info("No women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("No women paint.",[quants]),_110058).


test('?- test_lex_info("All women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("All women paint.",[quants]),_110058).


test('?- test_lex_info("Any women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Any women paint.",[quants]),_110058).


test('?- test_lex_info("Not women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not women paint.",[quants]),_110058).


test('?- test_lex_info("Not no women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not no women paint.",[quants]),_110058).


test('?- test_lex_info("Not all women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not all women paint.",[quants]),_110058).


test('?- test_lex_info("Not any women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not any women paint.",[quants]),_110058).


test('?- test_lex_info("The three women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("The three women paint.",[quants]),_110058).


test('?- test_lex_info("Three women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Three women paint.",[quants]),_110058).


test('?- test_lex_info("Some three women paint.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("Some three women paint.",[quants]),_110060).


test('?- test_lex_info("No three women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("No three women paint.",[quants]),_110058).


test('?- test_lex_info("Every three women paint.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("Every three women paint.",[quants]),_110060).


test('?- test_lex_info("All three women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("All three women paint.",[quants]),_110058).


test('?- test_lex_info("Any three women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Any three women paint.",[quants]),_110058).


test('?- test_lex_info("Not three women paint.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not three women paint.",[quants]),_110058).


test('?- test_lex_info("Not some three women paint.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("Not some three women paint.",[quants]),_110060).


test('?- test_lex_info("Not no three women paint.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("Not no three women paint.",[quants]),_110060).


test('?- test_lex_info("Not all three women paint.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("Not all three women paint.",[quants]),_110060).


test('?- test_lex_info("Not every three women paint.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("Not every three women paint.",[quants]),_110060).


test('?- test_lex_info("Not any three women paint.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("Not any three women paint.",[quants]),_110060).


test('?- test_lex_info("Not three of the women paint.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("Not three of the women paint.",[quants]),_110060).


test('?- test_lex_info("Not some of the three women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("Not some of the three women paint.",[quants]),_110062).


test('?- test_lex_info("Not no three of the women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("Not no three of the women paint.",[quants]),_110062).


test('?- test_lex_info("Not all three of the women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("Not all three of the women paint.",[quants]),_110062).


test('?- test_lex_info("Not every three of the women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("Not every three of the women paint.",[quants]),_110062).


test('?- test_lex_info("Not any three of the women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("Not any three of the women paint.",[quants]),_110062).


test('?- test_lex_info("Not three of the four women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("Not three of the four women paint.",[quants]),_110062).


test('?- test_lex_info("Not none of three out of the four women paint.",[quants])',[true(compound(_110064)),nondet]):-call(test_lex_info("Not none of three out of the four women paint.",[quants]),_110064).


test('?- test_lex_info("Not all three of the four women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("Not all three of the four women paint.",[quants]),_110062).


test('?- test_lex_info("Not any three of the four women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("Not any three of the four women paint.",[quants]),_110062).


test('?- test_lex_info("Three of the four women paint.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("Three of the four women paint.",[quants]),_110060).


test('?- test_lex_info("Three out of the four women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("Three out of the four women paint.",[quants]),_110062).


test('?- test_lex_info("All three of the four women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("All three of the four women paint.",[quants]),_110062).


test('?- test_lex_info("Any three of the four women paint.",[quants])',[true(compound(_110062)),nondet]):-call(test_lex_info("Any three of the four women paint.",[quants]),_110062).


test('?- test_lex_info("I paint",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("I paint",[pronoun]),_110056).


test('?- test_lex_info("you paint",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("you paint",[pronoun]),_110056).


test('?- test_lex_info("We paint",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("We paint",[pronoun]),_110056).


test('?- test_lex_info("None paint",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("None paint",[pronoun]),_110056).


test('?- test_lex_info("They paint",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("They paint",[pronoun]),_110056).


test('?- test_lex_info("Some paint",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("Some paint",[pronoun]),_110056).


test('?- test_lex_info("It paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("It paints",[pronoun]),_110056).


test('?- test_lex_info("he paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("he paints",[pronoun]),_110056).


test('?- test_lex_info("She paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("She paints",[pronoun]),_110056).


test('?- test_lex_info("Someone paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("Someone paints",[pronoun]),_110056).


test('?- test_lex_info("Anybody paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("Anybody paints",[pronoun]),_110056).


test('?- test_lex_info("Anyone paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("Anyone paints",[pronoun]),_110056).


test('?- test_lex_info("Anything paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Anything paints",[pronoun]),_110058).


test('?- test_lex_info("Everybody paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Everybody paints",[pronoun]),_110058).


test('?- test_lex_info("Everyone paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Everyone paints",[pronoun]),_110058).


test('?- test_lex_info("Everything paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Everything paints",[pronoun]),_110058).


test('?- test_lex_info("Nobody paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("Nobody paints",[pronoun]),_110056).


test('?- test_lex_info("No one paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("No one paints",[pronoun]),_110056).


test('?- test_lex_info("Nothing paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("Nothing paints",[pronoun]),_110056).


test('?- test_lex_info("One paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("One paints",[pronoun]),_110056).


test('?- test_lex_info("Somebody paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Somebody paints",[pronoun]),_110058).


test('?- test_lex_info("Something paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Something paints",[pronoun]),_110058).


test('?- test_lex_info("Not anybody paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not anybody paints",[pronoun]),_110058).


test('?- test_lex_info("Not anyone paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not anyone paints",[pronoun]),_110058).


test('?- test_lex_info("Not anything paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not anything paints",[pronoun]),_110058).


test('?- test_lex_info("Not everybody paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not everybody paints",[pronoun]),_110058).


test('?- test_lex_info("Not everyone paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not everyone paints",[pronoun]),_110058).


test('?- test_lex_info("Not everything paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not everything paints",[pronoun]),_110058).


test('?- test_lex_info("Not nothing paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not nothing paints",[pronoun]),_110058).


test('?- test_lex_info("Not one paints",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("Not one paints",[pronoun]),_110056).


test('?- test_lex_info("Not somebody paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not somebody paints",[pronoun]),_110058).


test('?- test_lex_info("Not something paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("Not something paints",[pronoun]),_110058).


test('?- test_lex_info("She likes i",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("She likes i",[pronoun]),_110056).


test('?- test_lex_info("She likes me",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("She likes me",[pronoun]),_110056).


test('?- test_lex_info("She likes you",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("She likes you",[pronoun]),_110056).


test('?- test_lex_info("She likes it",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("She likes it",[pronoun]),_110056).


test('?- test_lex_info("She likes us",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("She likes us",[pronoun]),_110056).


test('?- test_lex_info("She likes them",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("She likes them",[pronoun]),_110056).


test('?- test_lex_info("She likes no one",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("She likes no one",[pronoun]),_110058).


test('?- test_lex_info("She likes none",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("She likes none",[pronoun]),_110056).


test('?- test_lex_info("She likes him",[pronoun])',[true(compound(_110056)),nondet]):-call(test_lex_info("She likes him",[pronoun]),_110056).


test('?- test_lex_info("She likes herself",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("She likes herself",[pronoun]),_110058).


test('?- test_lex_info("She likes himself",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("She likes himself",[pronoun]),_110058).


test('?- test_lex_info("It is us that paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("It is us that paints",[pronoun]),_110058).


test('?- test_lex_info("It is them that paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("It is them that paints",[pronoun]),_110058).


test('?- test_lex_info("It is he that paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("It is he that paints",[pronoun]),_110058).


test('?- test_lex_info("It is she that paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("It is she that paints",[pronoun]),_110058).


test('?- test_lex_info("It is her that paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("It is her that paints",[pronoun]),_110058).


test('?- test_lex_info("It is him that paints",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("It is him that paints",[pronoun]),_110058).


test('?- test_lex_info("We are us that paint",[pronoun])',[true(compound(_110058)),nondet]):-call(test_lex_info("We are us that paint",[pronoun]),_110058).


test('?- test_lex_info("We are all of us that paint",[pronoun])',[true(compound(_110060)),nondet]):-call(test_lex_info("We are all of us that paint",[pronoun]),_110060).


test('?- test_lex_info("It is everybody that paints",[pronoun])',[true(compound(_110060)),nondet]):-call(test_lex_info("It is everybody that paints",[pronoun]),_110060).


test('?- test_lex_info("Every man that paints likes monet.",[bratko])',[true(compound(_110062)),nondet]):-call(test_lex_info("Every man that paints likes monet.",[bratko]),_110062).


test('?- test_lex_info("A woman that admires John paints.",[bratko])',[true(compound(_110062)),nondet]):-call(test_lex_info("A woman that admires John paints.",[bratko]),_110062).


test('?- test_lex_info("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_110068)),nondet]):-call(test_lex_info("Every woman that likes a man that admires monet paints.",[bratko]),_110068).


test('?- test_lex_info("John likes Annie.",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("John likes Annie.",[bratko]),_110058).


test('?- test_lex_info("Annie likes a man that admires monet.",[bratko])',[true(compound(_110062)),nondet]):-call(test_lex_info("Annie likes a man that admires monet.",[bratko]),_110062).


test('?- test_lex_info("Bertrand Russell wrote principia.",[bratko])',[true(compound(_110062)),nondet]):-call(test_lex_info("Bertrand Russell wrote principia.",[bratko]),_110062).


test('?- test_lex_info("An author wrote principia.",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("An author wrote principia.",[bratko]),_110060).


test('?- test_lex_info("Iraq is a country.",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("Iraq is a country.",[bratko]),_110058).


test('?- test_lex_info("A happy author wrote principia.",[bratko])',[true(compound(_110062)),nondet]):-call(test_lex_info("A happy author wrote principia.",[bratko]),_110062).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_110058).


test('?- test_lex_info("Bertrand is an author.",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("Bertrand is an author.",[bratko]),_110058).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_110058).


test('?- test_lex_info("Every author is a programmer.",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("Every author is a programmer.",[bratko]),_110060).


test('?- test_lex_info("Is Bertrand an programmer?",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("Is Bertrand an programmer?",[bratko]),_110060).


test('?- test_lex_info("What is a author?",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("What is a author?",[bratko]),_110058).


test('?- test_lex_info("What did Bertrand write?",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("What did Bertrand write?",[bratko]),_110060).


test('?- test_lex_info("What is a book?",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("What is a book?",[bratko]),_110058).


test('?- test_lex_info("Principia is a book.",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("Principia is a book.",[bratko]),_110058).


test('?- test_lex_info("Bertrand is Bertrand.",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("Bertrand is Bertrand.",[bratko]),_110058).


test('?- test_lex_info("Shrdlu halts.",[bratko])',[true(compound(_110056)),nondet]):-call(test_lex_info("Shrdlu halts.",[bratko]),_110056).


test('?- test_lex_info("Every student wrote a program.",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("Every student wrote a program.",[bratko]),_110060).


test('?- test_lex_info("Terry writes a program.",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("Terry writes a program.",[bratko]),_110060).


test('?- test_lex_info("Terry writes a program that halts.",[bratko])',[true(compound(_110062)),nondet]):-call(test_lex_info("Terry writes a program that halts.",[bratko]),_110062).


test('?- test_lex_info("An author of every book wrote a program.",[bratko])',[true(compound(_110064)),nondet]):-call(test_lex_info("An author of every book wrote a program.",[bratko]),_110064).


test('?- test_lex_info("A man hapilly maried paints.",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("A man hapilly maried paints.",[bratko]),_110060).


test('?- test_lex_info("A hapilly maried man paints.",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("A hapilly maried man paints.",[bratko]),_110060).


test('?- test_lex_info("A man who knows paints.",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("A man who knows paints.",[bratko]),_110060).


test('?- test_lex_info("A man gives something.",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("A man gives something.",[bratko]),_110058).


test('?- test_lex_info("A man gives his word.",[bratko])',[true(compound(_110058)),nondet]):-call(test_lex_info("A man gives his word.",[bratko]),_110058).


test('?- test_lex_info("A man of his word paints.",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("A man of his word paints.",[bratko]),_110060).


test('?- test_lex_info("A man paints.",[bratko])',[true(compound(_110056)),nondet]):-call(test_lex_info("A man paints.",[bratko]),_110056).


test('?- test_lex_info("A man that paints paints.",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("A man that paints paints.",[bratko]),_110060).


test('?- test_lex_info("A man walks.",[bratko])',[true(compound(_110056)),nondet]):-call(test_lex_info("A man walks.",[bratko]),_110056).


test('?- test_lex_info("A man that walks paints.",[bratko])',[true(compound(_110060)),nondet]):-call(test_lex_info("A man that walks paints.",[bratko]),_110060).


test('?- test_lex_info("It halts.",[bratko])',[true(compound(_110056)),nondet]):-call(test_lex_info("It halts.",[bratko]),_110056).


test('?- test_lex_info("A man of his word that walks paints.",[bratko])',[true(compound(_110062)),nondet]):-call(test_lex_info("A man of his word that walks paints.",[bratko]),_110062).


test('?- test_lex_info("The cost of what the product is changes.",[bratko])',[true(compound(_110064)),nondet]):-call(test_lex_info("The cost of what the product is changes.",[bratko]),_110064).


test('?- test_lex_info("We need a virtual machine server.",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("We need a virtual machine server.",[aindy]),_110062).


test('?- test_lex_info("The virtual machine server should have several VMs.",[aindy])',[true(compound(_110066)),nondet]):-call(test_lex_info("The virtual machine server should have several VMs.",[aindy]),_110066).


test('?- test_lex_info("One VM should be the POSI VM.",[aindy])',[true(compound(_110060)),nondet]):-call(test_lex_info("One VM should be the POSI VM.",[aindy]),_110060).


test('?- test_lex_info("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("One VM should be the FRDCSA.org VM.",[aindy]),_110062).


test('?- test_lex_info("One VM should be the mail server.",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("One VM should be the mail server.",[aindy]),_110062).


test('?- test_lex_info("One computer should be the backup server.",[aindy])',[true(compound(_110064)),nondet]):-call(test_lex_info("One computer should be the backup server.",[aindy]),_110064).


test('?- test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_110080)),nondet]):-call(test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_110080).


test('?- test_lex_info("I need a fast computer for work.",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("I need a fast computer for work.",[aindy]),_110062).


test('?- test_lex_info("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_110072)),nondet]):-call(test_lex_info("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_110072).


test('?- test_lex_info("I need a dedicated computer for network security research.",[aindy])',[true(compound(_110068)),nondet]):-call(test_lex_info("I need a dedicated computer for network security research.",[aindy]),_110068).


test('?- test_lex_info("I need a machine to run Tails on.",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("I need a machine to run Tails on.",[aindy]),_110062).


test('?- test_lex_info("I need a machine off the network for airgap security.",[aindy])',[true(compound(_110066)),nondet]):-call(test_lex_info("I need a machine off the network for airgap security.",[aindy]),_110066).


test('?- test_lex_info("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_110072)),nondet]):-call(test_lex_info("One VM should be the game server for running game development projects.",[aindy]),_110072).


test('?- test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_110066)),nondet]):-call(test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_110066).


test('?- test_lex_info("I could read about how to build a private watson.",[aindy])',[true(compound(_110066)),nondet]):-call(test_lex_info("I could read about how to build a private watson.",[aindy]),_110066).


test('?- test_lex_info("Need backups.",[aindy])',[true(compound(_110056)),nondet]):-call(test_lex_info("Need backups.",[aindy]),_110056).


test('?- test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_110070)),nondet]):-call(test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy]),_110070).


test('?- test_lex_info("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_110068)),nondet]):-call(test_lex_info("Set up schedules for updating the software on all machines.",[aindy]),_110068).


test('?- test_lex_info("Read books on server room layout.",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("Read books on server room layout.",[aindy]),_110062).


test('?- test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_110070)),nondet]):-call(test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_110070).


test('?- test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_110072)),nondet]):-call(test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_110072).


test('?- test_lex_info("I want a gaming computer.  Do I?",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("I want a gaming computer.  Do I?",[aindy]),_110062).


test('?- test_lex_info("I want a windows 7 computer for work.",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("I want a windows 7 computer for work.",[aindy]),_110062).


test('?- test_lex_info("I want a fast linux computer for work.",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("I want a fast linux computer for work.",[aindy]),_110062).


test('?- test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_110082)),nondet]):-call(test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_110082).


test('?- test_lex_info("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_110068)),nondet]):-call(test_lex_info("I could install a fresh operating system on justin for work.",[aindy]),_110068).


test('?- test_lex_info("I probably want a separate git computer.",[aindy])',[true(compound(_110064)),nondet]):-call(test_lex_info("I probably want a separate git computer.",[aindy]),_110064).


test('?- test_lex_info("I need to start buying servers.",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("I need to start buying servers.",[aindy]),_110062).


test('?- test_lex_info("I want a rackmount case for servers.",[aindy])',[true(compound(_110062)),nondet]):-call(test_lex_info("I want a rackmount case for servers.",[aindy]),_110062).


test('?- test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_110068)),nondet]):-call(test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)]),_110068).


test('?- test_lex_info("2 oceans border each african country.",[chat80(tell)])',[true(compound(_110066)),nondet]):-call(test_lex_info("2 oceans border each african country.",[chat80(tell)]),_110066).


test('?- test_lex_info("There are 10 large cars.",[quants])',[true(compound(_110060)),nondet]):-call(test_lex_info("There are 10 large cars.",[quants]),_110060).


test('?- test_lex_info("There are 10 oceans.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("There are 10 oceans.",[quants]),_110058).


test('?- test_lex_info("There are 10 women.",[quants])',[true(compound(_110058)),nondet]):-call(test_lex_info("There are 10 women.",[quants]),_110058).


test('?- test_lex_info("An ocean borders an African country.",[chat80(tell)])',[true(compound(_110066)),nondet]):-call(test_lex_info("An ocean borders an African country.",[chat80(tell)]),_110066).


test('?- test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_110074)),nondet]):-call(test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell]),_110074).


test('?- test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_110076)),nondet]):-call(test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_110076).


test('?- test_lex_info("Bertrand wrote a book.",[bratko(book)])',[true(compound(_110062)),nondet]):-call(test_lex_info("Bertrand wrote a book.",[bratko(book)]),_110062).


test('?- test_lex_info("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_110064)),nondet]):-call(test_lex_info("Bertrand wrote nothing.",[bratko(book)]),_110064).


test('?- test_lex_info("Bertrand wrote.",[bratko(book)])',[true(compound(_110062)),nondet]):-call(test_lex_info("Bertrand wrote.",[bratko(book)]),_110062).


test('?- test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_110066)),nondet]):-call(test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)]),_110066).


test('?- test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_110064)),nondet]):-call(test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)]),_110064).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_110066)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_110066).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_110068)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_110068).


test('?- test_lex_info("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_110066)),nondet]):-call(test_lex_info("What did alfred write to Bertrand?",[bratko(book)]),_110066).


test('?- test_lex_info("Alfred wrote a letter.",[bratko(book)])',[true(compound(_110062)),nondet]):-call(test_lex_info("Alfred wrote a letter.",[bratko(book)]),_110062).


test('?- test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_110066)),nondet]):-call(test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)]),_110066).


test('?- test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_110066)),nondet]):-call(test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)]),_110066).


test('?- test_lex_info("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_110064)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand.",[bratko(book)]),_110064).


test('?- test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_110066)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)]),_110066).


test('?- test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_110066)),nondet]):-call(test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)]),_110066).


test('?- test_lex_info("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_110066)),nondet]):-call(test_lex_info("Who did alfred write a letter to?",[bratko(book)]),_110066).


test('?- test_lex_info("Alfred gave it.",[bratko(book)])',[true(compound(_110062)),nondet]):-call(test_lex_info("Alfred gave it.",[bratko(book)]),_110062).


test('?- test_lex_info("Alfred gave a book.",[bratko(book)])',[true(compound(_110062)),nondet]):-call(test_lex_info("Alfred gave a book.",[bratko(book)]),_110062).


test('?- test_lex_info("a pride of lions paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a pride of lions paint",[of]),_110058).


test('?- test_lex_info("a flock of birds paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a flock of birds paint",[of]),_110058).


test('?- test_lex_info("a litter of pups paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a litter of pups paint",[of]),_110058).


test('?- test_lex_info("a prickle of porcupines paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a prickle of porcupines paint",[of]),_110060).


test('?- test_lex_info("a litter of cubs paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a litter of cubs paint",[of]),_110058).


test('?- test_lex_info("a pack of dogs paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a pack of dogs paint",[of]),_110058).


test('?- test_lex_info("a colony of beavers paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a colony of beavers paint",[of]),_110060).


test('?- test_lex_info("a gaggle of geese paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a gaggle of geese paint",[of]),_110060).


test('?- test_lex_info("a family of otters paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a family of otters paint",[of]),_110060).


test('?- test_lex_info("a huddle of walruses paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a huddle of walruses paint",[of]),_110060).


test('?- test_lex_info("a herd of deer paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a herd of deer paint",[of]),_110058).


test('?- test_lex_info("a culture of bacteria paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a culture of bacteria paint",[of]),_110060).


test('?- test_lex_info("a swarm of bees paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a swarm of bees paint",[of]),_110058).


test('?- test_lex_info("a bed of clams paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a bed of clams paint",[of]),_110058).


test('?- test_lex_info("a school of cod paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a school of cod paint",[of]),_110058).


test('?- test_lex_info("a herd of dinosaurs paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a herd of dinosaurs paint",[of]),_110060).


test('?- test_lex_info("a mess of iguanas paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a mess of iguanas paint",[of]),_110060).


test('?- test_lex_info("a mob of wombats paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a mob of wombats paint",[of]),_110058).


test('?- test_lex_info("a pod of pelicans paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a pod of pelicans paint",[of]),_110060).


test('?- test_lex_info("a troop of boy scouts paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a troop of boy scouts paint",[of]),_110060).


test('?- test_lex_info("a team of athletes paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a team of athletes paint",[of]),_110060).


test('?- test_lex_info("a panel of experts paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a panel of experts paint",[of]),_110060).


test('?- test_lex_info("a crew of sailors paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a crew of sailors paint",[of]),_110060).


test('?- test_lex_info("a band of robbers paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a band of robbers paint",[of]),_110060).


test('?- test_lex_info("a troupe of performers paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a troupe of performers paint",[of]),_110060).


test('?- test_lex_info("a crowd of onlookers paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a crowd of onlookers paint",[of]),_110060).


test('?- test_lex_info("a curse of painters paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("a curse of painters paint",[of]),_110060).


test('?- test_lex_info("a fleet of cars paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a fleet of cars paint",[of]),_110058).


test('?- test_lex_info("a pair of shoes paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a pair of shoes paint",[of]),_110058).


test('?- test_lex_info("a fleet of ships paint",[of])',[true(compound(_110058)),nondet]):-call(test_lex_info("a fleet of ships paint",[of]),_110058).


test('?- test_lex_info("an anthology of stories paint",[of])',[true(compound(_110060)),nondet]):-call(test_lex_info("an anthology of stories paint",[of]),_110060).


test('?- test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_187034)),nondet]):-call(test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_187034).


test('?- test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_187004)),nondet]):-call(test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_187004).


test('?- test_lex_info("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_187142)),nondet]):-call(test_lex_info("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_187142).


test('?- test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_186986)),nondet]):-call(test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_186986).


test('?- test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_187034)),nondet]):-call(test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_187034).


test('?- test_lex_info("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_187130)),nondet]):-call(test_lex_info("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_187130).


test('?- test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_187088)),nondet]):-call(test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_187088).


test('?- test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_187280)),nondet]):-call(test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_187280).


test('?- test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_187052)),nondet]):-call(test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest]),_187052).


test('?- test_lex_info("Logged on player character",[descriptionTest])',[true(compound(_186860)),nondet]):-call(test_lex_info("Logged on player character",[descriptionTest]),_186860).


test('?- test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_187118)),nondet]):-call(test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_187118).


test('?- test_lex_info("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_187064)),nondet]):-call(test_lex_info("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_187064).


test('?- test_lex_info("Wesley is her son",[descriptionTest])',[true(compound(_186806)),nondet]):-call(test_lex_info("Wesley is her son",[descriptionTest]),_186806).


test('?- test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_187454)),nondet]):-call(test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_187454).


test('?- test_lex_info("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_186884)),nondet]):-call(test_lex_info("Counselor Deanna Troi is here",[descriptionTest]),_186884).


test('?- test_lex_info("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_186980)),nondet]):-call(test_lex_info("Counselor Troi is the ship's main counselor",[descriptionTest]),_186980).


test('?- test_lex_info("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_187136)),nondet]):-call(test_lex_info("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_187136).


test('?- test_lex_info("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_187010)),nondet]):-call(test_lex_info("Commander William Riker is here, staring at you",[descriptionTest]),_187010).


test('?- test_lex_info("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_187016)),nondet]):-call(test_lex_info("Commander Riker is the Enterprise's first officer",[descriptionTest]),_187016).


test('?- test_lex_info("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_186986)),nondet]):-call(test_lex_info("He's in charge of keeping the crew in line",[descriptionTest]),_186986).


test('?- test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_187052)),nondet]):-call(test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_187052).


test('?- test_lex_info("Captain Picard is a very important man",[descriptionTest])',[true(compound(_186950)),nondet]):-call(test_lex_info("Captain Picard is a very important man",[descriptionTest]),_186950).


test('?- test_lex_info("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_187052)),nondet]):-call(test_lex_info("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_187052).


test('?- test_lex_info("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_186896)),nondet]):-call(test_lex_info("He's very smart, and very wise",[descriptionTest]),_186896).


test('?- test_lex_info("Don\'t mess with him!",[descriptionTest])',[true(compound(_186824)),nondet]):-call(test_lex_info("Don't mess with him!",[descriptionTest]),_186824).


test('?- test_lex_info("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_186902)),nondet]):-call(test_lex_info("Guinan is here, tending the bar",[descriptionTest]),_186902).


test('?- test_lex_info("Guinan is a strange being",[descriptionTest])',[true(compound(_186860)),nondet]):-call(test_lex_info("Guinan is a strange being",[descriptionTest]),_186860).


test('?- test_lex_info("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_187568)),nondet]):-call(test_lex_info("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_187568).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_187070)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_187070).


test('?- test_lex_info("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_187070)),nondet]):-call(test_lex_info("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_187070).


test('?- test_lex_info("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_187370)),nondet]):-call(test_lex_info("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_187370).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_187064)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_187064).


test('?- test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_187088)),nondet]):-call(test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_187088).


test('?- test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_187358)),nondet]):-call(test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_187358).


test('?- test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_187280)),nondet]):-call(test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_187280).


test('?- test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_187070)),nondet]):-call(test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_187070).


test('?- test_lex_info("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_186950)),nondet]):-call(test_lex_info("Livingston is Captain Picard's pet fish",[descriptionTest]),_186950).


test('?- test_lex_info("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_187202)),nondet]):-call(test_lex_info("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_187202).


test('?- test_lex_info("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_187052)),nondet]):-call(test_lex_info("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_187052).


test('?- test_lex_info("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_186920)),nondet]):-call(test_lex_info("Spot is Data's orange coloured cat",[descriptionTest]),_186920).


test('?- test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_187442)),nondet]):-call(test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_187442).


test('?- test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_187064)),nondet]):-call(test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest]),_187064).


test('?- test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_187046)),nondet]):-call(test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_187046).


test('?- test_lex_info("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_187388)),nondet]):-call(test_lex_info("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_187388).


test('?- test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_187034)),nondet]):-call(test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_187034).


test('?- test_lex_info("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_186902)),nondet]):-call(test_lex_info("Alexander Rozhenko is Worf's son",[descriptionTest]),_186902).


test('?- test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_187184)),nondet]):-call(test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_187184).


test('?- test_lex_info("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_187100)),nondet]):-call(test_lex_info("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_187100).


test('?- test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_187046)),nondet]):-call(test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest]),_187046).


test('?- test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_187448)),nondet]):-call(test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_187448).


test('?- test_lex_info("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_186926)),nondet]):-call(test_lex_info("A large phaser rifle is lying here",[descriptionTest]),_186926).


test('?- test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_187520)),nondet]):-call(test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_187520).


test('?- test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_187124)),nondet]):-call(test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_187124).


test('?- test_lex_info("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187472)),nondet]):-call(test_lex_info("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187472).


test('?- test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_187124)),nondet]):-call(test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_187124).


test('?- test_lex_info("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187496)),nondet]):-call(test_lex_info("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187496).


test('?- test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_187100)),nondet]):-call(test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_187100).


test('?- test_lex_info("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187472)),nondet]):-call(test_lex_info("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187472).


test('?- test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_187022)),nondet]):-call(test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest]),_187022).


test('?- test_lex_info("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_187562)),nondet]):-call(test_lex_info("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_187562).


test('?- test_lex_info("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_186992)),nondet]):-call(test_lex_info("A Starfleet communication badge is lying here",[descriptionTest]),_186992).


test('?- test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_188030)),nondet]):-call(test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_188030).


test('?- test_lex_info("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_186986)),nondet]):-call(test_lex_info("Worf's silver chain sash has been left here",[descriptionTest]),_186986).


test('?- test_lex_info("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_187598)),nondet]):-call(test_lex_info("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_187598).


test('?- test_lex_info("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_186878)),nondet]):-call(test_lex_info("Geordi's VISOR is lying here",[descriptionTest]),_186878).


test('?- test_lex_info("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_188270)),nondet]):-call(test_lex_info("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_188270).


test('?- test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_187046)),nondet]):-call(test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_187046).


test('?- test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_187832)),nondet]):-call(test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_187832).


test('?- test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_186980)),nondet]):-call(test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest]),_186980).


test('?- test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_187634)),nondet]):-call(test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_187634).


test('?- test_lex_info("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_186992)),nondet]):-call(test_lex_info("Captain Picard's wooden flute is sitting here",[descriptionTest]),_186992).


test('?- test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_187604)),nondet]):-call(test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_187604).


test('?- test_lex_info("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_187004)),nondet]):-call(test_lex_info("Commander Riker's trombone has been placed here",[descriptionTest]),_187004).


test('?- test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_187436)),nondet]):-call(test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_187436).


test('?- test_lex_info("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_186932)),nondet]):-call(test_lex_info("A small cup of tea is sitting here",[descriptionTest]),_186932).


test('?- test_lex_info("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_186950)),nondet]):-call(test_lex_info("A bottle of synthehol is standing here",[descriptionTest]),_186950).


test('?- test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_186962)),nondet]):-call(test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest]),_186962).


test('?- test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_186986)),nondet]):-call(test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_186986).


test('?- test_lex_info("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_186998)),nondet]):-call(test_lex_info("A small glass of prune juice is sitting here",[descriptionTest]),_186998).


test('?- test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_186968)),nondet]):-call(test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest]),_186968).


test('?- test_lex_info("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_187040)),nondet]):-call(test_lex_info("You find yourself in the middle of main engineering",[descriptionTest]),_187040).


test('?- test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_187160)),nondet]):-call(test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_187160).


test('?- test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_187460)),nondet]):-call(test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_187460).


test('?- test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_187268)),nondet]):-call(test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_187268).


test('?- test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_187196)),nondet]):-call(test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_187196).


test('?- test_lex_info("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_187376)),nondet]):-call(test_lex_info("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_187376).


test('?- test_lex_info("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_186968)),nondet]):-call(test_lex_info("You're in the middle of Geordi's quarters",[descriptionTest]),_186968).


test('?- test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_187166)),nondet]):-call(test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_187166).


test('?- test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_187490)),nondet]):-call(test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_187490).


test('?- test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_187100)),nondet]):-call(test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest]),_187100).


test('?- test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_187070)),nondet]):-call(test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_187070).


test('?- test_lex_info("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_186956)),nondet]):-call(test_lex_info("You're in the middle of Data's quarters",[descriptionTest]),_186956).


test('?- test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_188018)),nondet]):-call(test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_188018).


test('?- test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_187232)),nondet]):-call(test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_187232).


test('?- test_lex_info("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_187256)),nondet]):-call(test_lex_info("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_187256).


test('?- test_lex_info("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_186884)),nondet]):-call(test_lex_info("You're in the dimly lit Brig",[descriptionTest]),_186884).


test('?- test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_187274)),nondet]):-call(test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_187274).


test('?- test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_187352)),nondet]):-call(test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_187352).


test('?- test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_187646)),nondet]):-call(test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_187646).


test('?- test_lex_info(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_193874)),nondet]):-call(test_lex_info('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_193874).


test('?- test_lex_info("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_187358)),nondet]):-call(test_lex_info("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_187358).


test('?- test_lex_info("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_186962)),nondet]):-call(test_lex_info("You're in the Enterprise transporter room",[descriptionTest]),_186962).


test('?- test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_187448)),nondet]):-call(test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_187448).


test('?- test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_187418)),nondet]):-call(test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_187418).


test('?- test_lex_info("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_186956)),nondet]):-call(test_lex_info("You find yourself in a transporter beam",[descriptionTest]),_186956).


test('?- test_lex_info("All you can see is blue flashing light",[descriptionTest])',[true(compound(_186956)),nondet]):-call(test_lex_info("All you can see is blue flashing light",[descriptionTest]),_186956).


test('?- test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_187112)),nondet]):-call(test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest]),_187112).


test('?- test_lex_info("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_187232)),nondet]):-call(test_lex_info("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_187232).


test('?- test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_187160)),nondet]):-call(test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest]),_187160).


test('?- test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_187538)),nondet]):-call(test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_187538).


test('?- test_lex_info("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_187292)),nondet]):-call(test_lex_info("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_187292).


test('?- test_lex_info("You\'re in the turbolift",[descriptionTest])',[true(compound(_186842)),nondet]):-call(test_lex_info("You're in the turbolift",[descriptionTest]),_186842).


test('?- test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_187220)),nondet]):-call(test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_187220).


test('?- test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_187112)),nondet]):-call(test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest]),_187112).


test('?- test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_187100)),nondet]):-call(test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest]),_187100).


test('?- test_lex_info("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_186854)),nondet]):-call(test_lex_info("You're now on Holodeck 2",[descriptionTest]),_186854).


test('?- test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_187538)),nondet]):-call(test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_187538).


test('?- test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_187286)),nondet]):-call(test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_187286).


test('?- test_lex_info("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_186980)),nondet]):-call(test_lex_info("Right now, this holodeck is not functioning",[descriptionTest]),_186980).


test('?- test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_187088)),nondet]):-call(test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_187088).


test('?- test_lex_info("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_187010)),nondet]):-call(test_lex_info("You're in the main cargo bay of the Enterprise",[descriptionTest]),_187010).


test('?- test_lex_info("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_187220)),nondet]):-call(test_lex_info("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_187220).


test('?- test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_187538)),nondet]):-call(test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_187538).


test('?- test_lex_info("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_186914)),nondet]):-call(test_lex_info("You've arrived in Riker's quarters",[descriptionTest]),_186914).


test('?- test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_187490)),nondet]):-call(test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_187490).


test('?- test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_187424)),nondet]):-call(test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_187424).


test('?- test_lex_info("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_187028)),nondet]):-call(test_lex_info("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_187028).


test('?- test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_187664)),nondet]):-call(test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_187664).


test('?- test_lex_info("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_187460)),nondet]):-call(test_lex_info("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_187460).


test('?- test_lex_info("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_186932)),nondet]):-call(test_lex_info("You emerge into a dark narrow alley",[descriptionTest]),_186932).


test('?- test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_187076)),nondet]):-call(test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest]),_187076).


test('?- test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_187340)),nondet]):-call(test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_187340).


test('?- test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_187376)),nondet]):-call(test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_187376).


test('?- test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_187112)),nondet]):-call(test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_187112).


test('?- test_lex_info("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_187016)),nondet]):-call(test_lex_info("The archway leading out of the holodeck is west",[descriptionTest]),_187016).


test('?- test_lex_info("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_186920)),nondet]):-call(test_lex_info("You're in Doctor Crusher's quarters",[descriptionTest]),_186920).


test('?- test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_187316)),nondet]):-call(test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_187316).


test('?- test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_187406)),nondet]):-call(test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_187406).


test('?- test_lex_info("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_187148)),nondet]):-call(test_lex_info("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_187148).


test('?- test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_187772)),nondet]):-call(test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_187772).


test('?- test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_187244)),nondet]):-call(test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_187244).


test('?- test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_187640)),nondet]):-call(test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_187640).


test('?- test_lex_info("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_187112)),nondet]):-call(test_lex_info("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_187112).


test('?- test_lex_info("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_187040)),nondet]):-call(test_lex_info("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_187040).


test('?- test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_187934)),nondet]):-call(test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_187934).


test('?- test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_187112)),nondet]):-call(test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_187112).


test('?- test_lex_info("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_187022)),nondet]):-call(test_lex_info("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_187022).


test('?- test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_187214)),nondet]):-call(test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_187214).


test('?- test_lex_info("A large grey door leads into space",[descriptionTest])',[true(compound(_186926)),nondet]):-call(test_lex_info("A large grey door leads into space",[descriptionTest]),_186926).


test('?- test_lex_info("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_187112)),nondet]):-call(test_lex_info("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_187112).


test('?- test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_187184)),nondet]):-call(test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest]),_187184).


test('?- test_lex_info("You feel very cold",[descriptionTest])',[true(compound(_186812)),nondet]):-call(test_lex_info("You feel very cold",[descriptionTest]),_186812).


test('?- test_lex_info("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_187082)),nondet]):-call(test_lex_info("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_187082).


test('?- test_lex_info("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_186968)),nondet]):-call(test_lex_info("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_186968).


test('?- test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_187580)),nondet]):-call(test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_187580).


test('?- test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_187304)),nondet]):-call(test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_187304).


test('?- test_lex_info("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_186854)),nondet]):-call(test_lex_info("You're in Worf's quarters",[descriptionTest]),_186854).


test('?- test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_187298)),nondet]):-call(test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_187298).


test('?- test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_187712)),nondet]):-call(test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_187712).


test('?- test_lex_info("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_186920)),nondet]):-call(test_lex_info("You emerge into the Enterprise gym",[descriptionTest]),_186920).


test('?- test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_187022)),nondet]):-call(test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest]),_187022).


test('?- test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_187430)),nondet]):-call(test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_187430).


test('?- test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_187394)),nondet]):-call(test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_187394).


test('?- test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_187082)),nondet]):-call(test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_187082).


test('?- test_lex_info("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_187148)),nondet]):-call(test_lex_info("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_187148).


test('?- test_lex_info("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_187238)),nondet]):-call(test_lex_info("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_187238).


test('?- test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_187532)),nondet]):-call(test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_187532).


test('?- test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_187550)),nondet]):-call(test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_187550).


test('?- test_lex_info("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_187004)),nondet]):-call(test_lex_info("Two large windows offer a great view of space",[descriptionTest]),_187004).


test('?- test_lex_info("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_187256)),nondet]):-call(test_lex_info("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_187256).


test('?- test_lex_info("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_186932)),nondet]):-call(test_lex_info("You're in the Enterprise science lab",[descriptionTest]),_186932).


test('?- test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_187322)),nondet]):-call(test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_187322).


test('?- test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_187820)),nondet]):-call(test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_187820).


test('?- test_lex_info("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_187076)),nondet]):-call(test_lex_info("A complex looking computer console is facing this machine",[descriptionTest]),_187076).


test('?- test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_187232)),nondet]):-call(test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_187232).


test('?- test_lex_info("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_186992)),nondet]):-call(test_lex_info("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_186992).


test('?- test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_187226)),nondet]):-call(test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_187226).


test('?- test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_187598)),nondet]):-call(test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_187598).


test('?- test_lex_info("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_187400)),nondet]):-call(test_lex_info("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_187400).


test('?- test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_187796)),nondet]):-call(test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_187796).


test('?- test_lex_info("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_186998)),nondet]):-call(test_lex_info("You're standing in Captain Picard's ready room",[descriptionTest]),_186998).


test('?- test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_187436)),nondet]):-call(test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_187436).


test('?- test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_187340)),nondet]):-call(test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_187340).


test('?- test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_187538)),nondet]):-call(test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_187538).


test('?- test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_187118)),nondet]):-call(test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest]),_187118).


test('?- test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_187226)),nondet]):-call(test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_187226).


test('?- test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_187538)),nondet]):-call(test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_187538).


test('?- test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_187346)),nondet]):-call(test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_187346).


test('?- test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_187142)),nondet]):-call(test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_187142).


test('?- test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_187490)),nondet]):-call(test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_187490).


test('?- test_lex_info("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_187088)),nondet]):-call(test_lex_info("This is where the ship's pilot and information officer sit",[descriptionTest]),_187088).


test('?- test_lex_info("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_187010)),nondet]):-call(test_lex_info("You're in the conference room of the Enterprise",[descriptionTest]),_187010).


test('?- test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_187556)),nondet]):-call(test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_187556).


test('?- test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_187178)),nondet]):-call(test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_187178).


test('?- test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_187274)),nondet]):-call(test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_187274).


test('?- test_lex_info("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_187106)),nondet]):-call(test_lex_info("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_187106).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_110068)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_110068).


test('?- test_lex_info("no two owners eat pizza",[sanity])',[true(compound(_110060)),nondet]):-call(test_lex_info("no two owners eat pizza",[sanity]),_110060).


test('?- test_lex_info("no three owners eat pizza",[sanity])',[true(compound(_110060)),nondet]):-call(test_lex_info("no three owners eat pizza",[sanity]),_110060).


test('?- test_lex_info("no three owners eat the same pizza",[sanity])',[true(compound(_110062)),nondet]):-call(test_lex_info("no three owners eat the same pizza",[sanity]),_110062).


test('?- test_lex_info("no three owners eat the same kind of pizza",[sanity])',[true(compound(_110064)),nondet]):-call(test_lex_info("no three owners eat the same kind of pizza",[sanity]),_110064).


test('?- test_lex_info("no owners eat the same pizza",[sanity])',[true(compound(_110060)),nondet]):-call(test_lex_info("no owners eat the same pizza",[sanity]),_110060).


test('?- test_lex_info("no owners eat the same kind of pizza",[sanity])',[true(compound(_110062)),nondet]):-call(test_lex_info("no owners eat the same kind of pizza",[sanity]),_110062).


test('?- test_lex_info("there are 5 houses",[sanity])',[true(compound(_110058)),nondet]):-call(test_lex_info("there are 5 houses",[sanity]),_110058).


test('?- test_lex_info("there are not 5 houses",[sanity])',[true(compound(_110058)),nondet]):-call(test_lex_info("there are not 5 houses",[sanity]),_110058).


test('?- test_lex_info("there are not zero houses",[sanity])',[true(compound(_110060)),nondet]):-call(test_lex_info("there are not zero houses",[sanity]),_110060).


test('?- test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_110068)),nondet]):-call(test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug]),_110068).


test('?- test_lex_info(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_110062)),nondet]):-call(test_lex_info(noun_phrase("at most the 5 owners"),[sanity]),_110062).


test('?- test_lex_info(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_110062)),nondet]):-call(test_lex_info(noun_phrase("at most 5 owners"),[sanity]),_110062).


test('?- test_lex_info(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_110062)),nondet]):-call(test_lex_info(noun_phrase("less than 3 owners"),[sanity]),_110062).


test('?- test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_110064)),nondet]):-call(test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity]),_110064).


test('?- test_lex_info(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_110068)),nondet]):-call(test_lex_info(noun_phrase("no three owners"),[sanity,no_working]),_110068).


test('?- test_lex_info("terry writes a non-program.",[tell])',[true(compound(_110060)),nondet]):-call(test_lex_info("terry writes a non-program.",[tell]),_110060).


test('?- test_lex_info("every nonhuman programmer writes a program.",[tell])',[true(compound(_110064)),nondet]):-call(test_lex_info("every nonhuman programmer writes a program.",[tell]),_110064).


test('?- test_lex_info("every human programmer writes a not a program.",[tell])',[true(compound(_110064)),nondet]):-call(test_lex_info("every human programmer writes a not a program.",[tell]),_110064).


test('?- test_lex_info("every human programmer happily writes a not a program.",[tell])',[true(compound(_110066)),nondet]):-call(test_lex_info("every human programmer happily writes a not a program.",[tell]),_110066).


:- end_tests(test_lex_info).



:- begin_tests(chat80).



test('?- chat80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_110108)),nondet]):-call(chat80("His friends are liked by hers.",[bad_juju,sanity]),_110108).


test('?- chat80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_110110)),nondet]):-call(chat80("Her friends are not liked by his.",[bad_juju,sanity]),_110110).


test('?- chat80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_110110)),nondet]):-call(chat80("Do their friends like each other?",[bad_juju,feature]),_110110).


test('?- chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_110052),sanity])',[true(compound(_110114)),nondet]):-call(chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_110052),sanity]),_110114).


test('?- chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_110050),sanity])',[true(compound(_110112)),nondet]):-call(chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_110050),sanity]),_110112).


test('?- chat80("There are 5 houses with five different colors.",[riddle(_110054),sanity])',[true(compound(_110116)),nondet]):-call(chat80("There are 5 houses with five different colors.",[riddle(_110054),sanity]),_110116).


test('?- chat80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_110106)),nondet]):-call(chat80("There are 5 houses",[riddle_prep,sanity]),_110106).


test('?- chat80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_110110)),nondet]):-call(chat80("Each house has a different color",[riddle_prep,sanity]),_110110).


test('?- chat80("In each house lives a person with a different nationality.",[riddle(_110058),sanity])',[true(compound(_110120)),nondet]):-call(chat80("In each house lives a person with a different nationality.",[riddle(_110058),sanity]),_110120).


test('?- chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_110132)),nondet]):-call(chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_110132).


test('?- chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_110120)),nondet]):-call(chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_110120).


test('?- chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_110118)),nondet]):-call(chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_110118).


test('?- chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_110122)),nondet]):-call(chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_110122).


test('?- chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_110126)),nondet]):-call(chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_110126).


test('?- chat80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_110118)),nondet]):-call(chat80("No owners have the same pet.",[riddle(1),sanity,regression]),_110118).


test('?- chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_110122)),nondet]):-call(chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_110122).


test('?- chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_110116)),nondet]):-call(chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_110116).


test('?- chat80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_110120)),nondet]):-call(chat80("No two owners have the same pet.",[riddle(1),sanity,regression]),_110120).


test('?- chat80("The brit lives in the red house.",[riddle(_110052),sanity])',[true(compound(_110114)),nondet]):-call(chat80("The brit lives in the red house.",[riddle(_110052),sanity]),_110114).


test('?- chat80("The swede keeps dogs as pets.",[riddle(_110050),sanity])',[true(compound(_110112)),nondet]):-call(chat80("The swede keeps dogs as pets.",[riddle(_110050),sanity]),_110112).


test('?- chat80("A dane drinks tea.",[riddle(_110048),sanity])',[true(compound(_110110)),nondet]):-call(chat80("A dane drinks tea.",[riddle(_110048),sanity]),_110110).


test('?- chat80("The green house is on the left of the white house.",[riddle(_110056),sanity])',[true(compound(_110118)),nondet]):-call(chat80("The green house is on the left of the white house.",[riddle(_110056),sanity]),_110118).


test('?- chat80("The green house\'s owner drinks coffee.",[riddle(_110052),sanity])',[true(compound(_110114)),nondet]):-call(chat80("The green house's owner drinks coffee.",[riddle(_110052),sanity]),_110114).


test('?- chat80("The person who smokes Pall Mall rears birds.",[riddle(_110054),sanity,regression])',[true(compound(_110122)),nondet]):-call(chat80("The person who smokes Pall Mall rears birds.",[riddle(_110054),sanity,regression]),_110122).


test('?- chat80("The owner of the yellow house smokes Dunhill.",[riddle(_110054),sanity])',[true(compound(_110116)),nondet]):-call(chat80("The owner of the yellow house smokes Dunhill.",[riddle(_110054),sanity]),_110116).


test('?- chat80("The man living in the center house drinks milk.",[riddle(_110056),sanity])',[true(compound(_110118)),nondet]):-call(chat80("The man living in the center house drinks milk.",[riddle(_110056),sanity]),_110118).


test('?- chat80("The Norwegian lives in the first house .",[riddle(_110054),sanity])',[true(compound(_110116)),nondet]):-call(chat80("The Norwegian lives in the first house .",[riddle(_110054),sanity]),_110116).


test('?- chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_110060),sanity])',[true(compound(_110122)),nondet]):-call(chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_110060),sanity]),_110122).


test('?- chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_110060),sanity])',[true(compound(_110122)),nondet]):-call(chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_110060),sanity]),_110122).


test('?- chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_110054),sanity])',[true(compound(_110116)),nondet]):-call(chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_110054),sanity]),_110116).


test('?- chat80("The German smokes Prince.",[riddle(_110050),sanity])',[true(compound(_110112)),nondet]):-call(chat80("The German smokes Prince.",[riddle(_110050),sanity]),_110112).


test('?- chat80("The Norwegian lives next to the blue house.",[riddle(_110054),sanity])',[true(compound(_110116)),nondet]):-call(chat80("The Norwegian lives next to the blue house.",[riddle(_110054),sanity]),_110116).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_110058),sanity])',[true(compound(_110120)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_110058),sanity]),_110120).


test('?- chat80("Who owns the fish?",[riddle(_110048),sanity])',[true(compound(_110110)),nondet]):-call(chat80("Who owns the fish?",[riddle(_110048),sanity]),_110110).


test('?- chat80("One woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("One woman paints.",[quants]),_110100).


test('?- chat80("No woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("No woman paints.",[quants]),_110100).


test('?- chat80("Some woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Some woman paints.",[quants]),_110100).


test('?- chat80("Every woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Every woman paints.",[quants]),_110100).


test('?- chat80("Each woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Each woman paints.",[quants]),_110100).


test('?- chat80("Any woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Any woman paints.",[quants]),_110100).


test('?- chat80("The woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("The woman paints.",[quants]),_110100).


test('?- chat80("The not woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("The not woman paints.",[quants]),_110100).


test('?- chat80("Not a woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Not a woman paints.",[quants]),_110100).


test('?- chat80("Not one woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Not one woman paints.",[quants]),_110100).


test('?- chat80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_110100)),nondet]):-call(chat80("Not no woman paints.",[quants_neg_postcond]),_110100).


test('?- chat80("Not some woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Not some woman paints.",[quants]),_110100).


test('?- chat80("Not every woman paints.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("Not every woman paints.",[quants]),_110102).


test('?- chat80("Not each woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Not each woman paints.",[quants]),_110100).


test('?- chat80("Not any woman paints.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Not any woman paints.",[quants]),_110100).


test('?- chat80("The women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("The women paint.",[quants]),_110100).


test('?- chat80("Women paint.",[quants])',[true(compound(_110098)),nondet]):-call(chat80("Women paint.",[quants]),_110098).


test('?- chat80("Some women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Some women paint.",[quants]),_110100).


test('?- chat80("No women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("No women paint.",[quants]),_110100).


test('?- chat80("All women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("All women paint.",[quants]),_110100).


test('?- chat80("Any women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Any women paint.",[quants]),_110100).


test('?- chat80("Not women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Not women paint.",[quants]),_110100).


test('?- chat80("Not no women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Not no women paint.",[quants]),_110100).


test('?- chat80("Not all women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Not all women paint.",[quants]),_110100).


test('?- chat80("Not any women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Not any women paint.",[quants]),_110100).


test('?- chat80("The three women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("The three women paint.",[quants]),_110100).


test('?- chat80("Three women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Three women paint.",[quants]),_110100).


test('?- chat80("Some three women paint.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("Some three women paint.",[quants]),_110102).


test('?- chat80("No three women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("No three women paint.",[quants]),_110100).


test('?- chat80("Every three women paint.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("Every three women paint.",[quants]),_110102).


test('?- chat80("All three women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("All three women paint.",[quants]),_110100).


test('?- chat80("Any three women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Any three women paint.",[quants]),_110100).


test('?- chat80("Not three women paint.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("Not three women paint.",[quants]),_110100).


test('?- chat80("Not some three women paint.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("Not some three women paint.",[quants]),_110102).


test('?- chat80("Not no three women paint.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("Not no three women paint.",[quants]),_110102).


test('?- chat80("Not all three women paint.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("Not all three women paint.",[quants]),_110102).


test('?- chat80("Not every three women paint.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("Not every three women paint.",[quants]),_110102).


test('?- chat80("Not any three women paint.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("Not any three women paint.",[quants]),_110102).


test('?- chat80("Not three of the women paint.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("Not three of the women paint.",[quants]),_110102).


test('?- chat80("Not some of the three women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("Not some of the three women paint.",[quants]),_110104).


test('?- chat80("Not no three of the women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("Not no three of the women paint.",[quants]),_110104).


test('?- chat80("Not all three of the women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("Not all three of the women paint.",[quants]),_110104).


test('?- chat80("Not every three of the women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("Not every three of the women paint.",[quants]),_110104).


test('?- chat80("Not any three of the women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("Not any three of the women paint.",[quants]),_110104).


test('?- chat80("Not three of the four women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("Not three of the four women paint.",[quants]),_110104).


test('?- chat80("Not none of three out of the four women paint.",[quants])',[true(compound(_110106)),nondet]):-call(chat80("Not none of three out of the four women paint.",[quants]),_110106).


test('?- chat80("Not all three of the four women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("Not all three of the four women paint.",[quants]),_110104).


test('?- chat80("Not any three of the four women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("Not any three of the four women paint.",[quants]),_110104).


test('?- chat80("Three of the four women paint.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("Three of the four women paint.",[quants]),_110102).


test('?- chat80("Three out of the four women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("Three out of the four women paint.",[quants]),_110104).


test('?- chat80("All three of the four women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("All three of the four women paint.",[quants]),_110104).


test('?- chat80("Any three of the four women paint.",[quants])',[true(compound(_110104)),nondet]):-call(chat80("Any three of the four women paint.",[quants]),_110104).


test('?- chat80("I paint",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("I paint",[pronoun]),_110098).


test('?- chat80("you paint",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("you paint",[pronoun]),_110098).


test('?- chat80("We paint",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("We paint",[pronoun]),_110098).


test('?- chat80("None paint",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("None paint",[pronoun]),_110098).


test('?- chat80("They paint",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("They paint",[pronoun]),_110098).


test('?- chat80("Some paint",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("Some paint",[pronoun]),_110098).


test('?- chat80("It paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("It paints",[pronoun]),_110098).


test('?- chat80("he paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("he paints",[pronoun]),_110098).


test('?- chat80("She paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("She paints",[pronoun]),_110098).


test('?- chat80("Someone paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("Someone paints",[pronoun]),_110098).


test('?- chat80("Anybody paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("Anybody paints",[pronoun]),_110098).


test('?- chat80("Anyone paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("Anyone paints",[pronoun]),_110098).


test('?- chat80("Anything paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Anything paints",[pronoun]),_110100).


test('?- chat80("Everybody paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Everybody paints",[pronoun]),_110100).


test('?- chat80("Everyone paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Everyone paints",[pronoun]),_110100).


test('?- chat80("Everything paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Everything paints",[pronoun]),_110100).


test('?- chat80("Nobody paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("Nobody paints",[pronoun]),_110098).


test('?- chat80("No one paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("No one paints",[pronoun]),_110098).


test('?- chat80("Nothing paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("Nothing paints",[pronoun]),_110098).


test('?- chat80("One paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("One paints",[pronoun]),_110098).


test('?- chat80("Somebody paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Somebody paints",[pronoun]),_110100).


test('?- chat80("Something paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Something paints",[pronoun]),_110100).


test('?- chat80("Not anybody paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Not anybody paints",[pronoun]),_110100).


test('?- chat80("Not anyone paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Not anyone paints",[pronoun]),_110100).


test('?- chat80("Not anything paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Not anything paints",[pronoun]),_110100).


test('?- chat80("Not everybody paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Not everybody paints",[pronoun]),_110100).


test('?- chat80("Not everyone paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Not everyone paints",[pronoun]),_110100).


test('?- chat80("Not everything paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Not everything paints",[pronoun]),_110100).


test('?- chat80("Not nothing paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Not nothing paints",[pronoun]),_110100).


test('?- chat80("Not one paints",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("Not one paints",[pronoun]),_110098).


test('?- chat80("Not somebody paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Not somebody paints",[pronoun]),_110100).


test('?- chat80("Not something paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("Not something paints",[pronoun]),_110100).


test('?- chat80("She likes i",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("She likes i",[pronoun]),_110098).


test('?- chat80("She likes me",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("She likes me",[pronoun]),_110098).


test('?- chat80("She likes you",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("She likes you",[pronoun]),_110098).


test('?- chat80("She likes it",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("She likes it",[pronoun]),_110098).


test('?- chat80("She likes us",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("She likes us",[pronoun]),_110098).


test('?- chat80("She likes them",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("She likes them",[pronoun]),_110098).


test('?- chat80("She likes no one",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("She likes no one",[pronoun]),_110100).


test('?- chat80("She likes none",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("She likes none",[pronoun]),_110098).


test('?- chat80("She likes him",[pronoun])',[true(compound(_110098)),nondet]):-call(chat80("She likes him",[pronoun]),_110098).


test('?- chat80("She likes herself",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("She likes herself",[pronoun]),_110100).


test('?- chat80("She likes himself",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("She likes himself",[pronoun]),_110100).


test('?- chat80("It is us that paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("It is us that paints",[pronoun]),_110100).


test('?- chat80("It is them that paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("It is them that paints",[pronoun]),_110100).


test('?- chat80("It is he that paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("It is he that paints",[pronoun]),_110100).


test('?- chat80("It is she that paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("It is she that paints",[pronoun]),_110100).


test('?- chat80("It is her that paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("It is her that paints",[pronoun]),_110100).


test('?- chat80("It is him that paints",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("It is him that paints",[pronoun]),_110100).


test('?- chat80("We are us that paint",[pronoun])',[true(compound(_110100)),nondet]):-call(chat80("We are us that paint",[pronoun]),_110100).


test('?- chat80("We are all of us that paint",[pronoun])',[true(compound(_110102)),nondet]):-call(chat80("We are all of us that paint",[pronoun]),_110102).


test('?- chat80("It is everybody that paints",[pronoun])',[true(compound(_110102)),nondet]):-call(chat80("It is everybody that paints",[pronoun]),_110102).


test('?- chat80("Every man that paints likes monet.",[bratko])',[true(compound(_110104)),nondet]):-call(chat80("Every man that paints likes monet.",[bratko]),_110104).


test('?- chat80("A woman that admires John paints.",[bratko])',[true(compound(_110104)),nondet]):-call(chat80("A woman that admires John paints.",[bratko]),_110104).


test('?- chat80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_110110)),nondet]):-call(chat80("Every woman that likes a man that admires monet paints.",[bratko]),_110110).


test('?- chat80("John likes Annie.",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("John likes Annie.",[bratko]),_110100).


test('?- chat80("Annie likes a man that admires monet.",[bratko])',[true(compound(_110104)),nondet]):-call(chat80("Annie likes a man that admires monet.",[bratko]),_110104).


test('?- chat80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_110104)),nondet]):-call(chat80("Bertrand Russell wrote principia.",[bratko]),_110104).


test('?- chat80("An author wrote principia.",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("An author wrote principia.",[bratko]),_110102).


test('?- chat80("Iraq is a country.",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("Iraq is a country.",[bratko]),_110100).


test('?- chat80("A happy author wrote principia.",[bratko])',[true(compound(_110104)),nondet]):-call(chat80("A happy author wrote principia.",[bratko]),_110104).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_110100).


test('?- chat80("Bertrand is an author.",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("Bertrand is an author.",[bratko]),_110100).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_110100).


test('?- chat80("Every author is a programmer.",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("Every author is a programmer.",[bratko]),_110102).


test('?- chat80("Is Bertrand an programmer?",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("Is Bertrand an programmer?",[bratko]),_110102).


test('?- chat80("What is a author?",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("What is a author?",[bratko]),_110100).


test('?- chat80("What did Bertrand write?",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("What did Bertrand write?",[bratko]),_110102).


test('?- chat80("What is a book?",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("What is a book?",[bratko]),_110100).


test('?- chat80("Principia is a book.",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("Principia is a book.",[bratko]),_110100).


test('?- chat80("Bertrand is Bertrand.",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("Bertrand is Bertrand.",[bratko]),_110100).


test('?- chat80("Shrdlu halts.",[bratko])',[true(compound(_110098)),nondet]):-call(chat80("Shrdlu halts.",[bratko]),_110098).


test('?- chat80("Every student wrote a program.",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("Every student wrote a program.",[bratko]),_110102).


test('?- chat80("Terry writes a program.",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("Terry writes a program.",[bratko]),_110102).


test('?- chat80("Terry writes a program that halts.",[bratko])',[true(compound(_110104)),nondet]):-call(chat80("Terry writes a program that halts.",[bratko]),_110104).


test('?- chat80("An author of every book wrote a program.",[bratko])',[true(compound(_110106)),nondet]):-call(chat80("An author of every book wrote a program.",[bratko]),_110106).


test('?- chat80("A man hapilly maried paints.",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("A man hapilly maried paints.",[bratko]),_110102).


test('?- chat80("A hapilly maried man paints.",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("A hapilly maried man paints.",[bratko]),_110102).


test('?- chat80("A man who knows paints.",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("A man who knows paints.",[bratko]),_110102).


test('?- chat80("A man gives something.",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("A man gives something.",[bratko]),_110100).


test('?- chat80("A man gives his word.",[bratko])',[true(compound(_110100)),nondet]):-call(chat80("A man gives his word.",[bratko]),_110100).


test('?- chat80("A man of his word paints.",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("A man of his word paints.",[bratko]),_110102).


test('?- chat80("A man paints.",[bratko])',[true(compound(_110098)),nondet]):-call(chat80("A man paints.",[bratko]),_110098).


test('?- chat80("A man that paints paints.",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("A man that paints paints.",[bratko]),_110102).


test('?- chat80("A man walks.",[bratko])',[true(compound(_110098)),nondet]):-call(chat80("A man walks.",[bratko]),_110098).


test('?- chat80("A man that walks paints.",[bratko])',[true(compound(_110102)),nondet]):-call(chat80("A man that walks paints.",[bratko]),_110102).


test('?- chat80("It halts.",[bratko])',[true(compound(_110098)),nondet]):-call(chat80("It halts.",[bratko]),_110098).


test('?- chat80("A man of his word that walks paints.",[bratko])',[true(compound(_110104)),nondet]):-call(chat80("A man of his word that walks paints.",[bratko]),_110104).


test('?- chat80("The cost of what the product is changes.",[bratko])',[true(compound(_110106)),nondet]):-call(chat80("The cost of what the product is changes.",[bratko]),_110106).


test('?- chat80("We need a virtual machine server.",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("We need a virtual machine server.",[aindy]),_110104).


test('?- chat80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_110108)),nondet]):-call(chat80("The virtual machine server should have several VMs.",[aindy]),_110108).


test('?- chat80("One VM should be the POSI VM.",[aindy])',[true(compound(_110102)),nondet]):-call(chat80("One VM should be the POSI VM.",[aindy]),_110102).


test('?- chat80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("One VM should be the FRDCSA.org VM.",[aindy]),_110104).


test('?- chat80("One VM should be the mail server.",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("One VM should be the mail server.",[aindy]),_110104).


test('?- chat80("One computer should be the backup server.",[aindy])',[true(compound(_110106)),nondet]):-call(chat80("One computer should be the backup server.",[aindy]),_110106).


test('?- chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_110122)),nondet]):-call(chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_110122).


test('?- chat80("I need a fast computer for work.",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("I need a fast computer for work.",[aindy]),_110104).


test('?- chat80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_110114)),nondet]):-call(chat80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_110114).


test('?- chat80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_110110)),nondet]):-call(chat80("I need a dedicated computer for network security research.",[aindy]),_110110).


test('?- chat80("I need a machine to run Tails on.",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("I need a machine to run Tails on.",[aindy]),_110104).


test('?- chat80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_110108)),nondet]):-call(chat80("I need a machine off the network for airgap security.",[aindy]),_110108).


test('?- chat80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_110114)),nondet]):-call(chat80("One VM should be the game server for running game development projects.",[aindy]),_110114).


test('?- chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_110108)),nondet]):-call(chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_110108).


test('?- chat80("I could read about how to build a private watson.",[aindy])',[true(compound(_110108)),nondet]):-call(chat80("I could read about how to build a private watson.",[aindy]),_110108).


test('?- chat80("Need backups.",[aindy])',[true(compound(_110098)),nondet]):-call(chat80("Need backups.",[aindy]),_110098).


test('?- chat80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_110112)),nondet]):-call(chat80("Practice setting up backups of a machine to a different machine.",[aindy]),_110112).


test('?- chat80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_110110)),nondet]):-call(chat80("Set up schedules for updating the software on all machines.",[aindy]),_110110).


test('?- chat80("Read books on server room layout.",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("Read books on server room layout.",[aindy]),_110104).


test('?- chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_110112)),nondet]):-call(chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_110112).


test('?- chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_110114)),nondet]):-call(chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_110114).


test('?- chat80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("I want a gaming computer.  Do I?",[aindy]),_110104).


test('?- chat80("I want a windows 7 computer for work.",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("I want a windows 7 computer for work.",[aindy]),_110104).


test('?- chat80("I want a fast linux computer for work.",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("I want a fast linux computer for work.",[aindy]),_110104).


test('?- chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_110124)),nondet]):-call(chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_110124).


test('?- chat80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_110110)),nondet]):-call(chat80("I could install a fresh operating system on justin for work.",[aindy]),_110110).


test('?- chat80("I probably want a separate git computer.",[aindy])',[true(compound(_110106)),nondet]):-call(chat80("I probably want a separate git computer.",[aindy]),_110106).


test('?- chat80("I need to start buying servers.",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("I need to start buying servers.",[aindy]),_110104).


test('?- chat80("I want a rackmount case for servers.",[aindy])',[true(compound(_110104)),nondet]):-call(chat80("I want a rackmount case for servers.",[aindy]),_110104).


test('?- chat80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_110110)),nondet]):-call(chat80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_110110).


test('?- chat80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_110108)),nondet]):-call(chat80("2 oceans border each african country.",[chat80(tell)]),_110108).


test('?- chat80("There are 10 large cars.",[quants])',[true(compound(_110102)),nondet]):-call(chat80("There are 10 large cars.",[quants]),_110102).


test('?- chat80("There are 10 oceans.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("There are 10 oceans.",[quants]),_110100).


test('?- chat80("There are 10 women.",[quants])',[true(compound(_110100)),nondet]):-call(chat80("There are 10 women.",[quants]),_110100).


test('?- chat80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_110108)),nondet]):-call(chat80("An ocean borders an African country.",[chat80(tell)]),_110108).


test('?- chat80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_110116)),nondet]):-call(chat80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_110116).


test('?- chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_110118)),nondet]):-call(chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_110118).


test('?- chat80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_110104)),nondet]):-call(chat80("Bertrand wrote a book.",[bratko(book)]),_110104).


test('?- chat80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_110106)),nondet]):-call(chat80("Bertrand wrote nothing.",[bratko(book)]),_110106).


test('?- chat80("Bertrand wrote.",[bratko(book)])',[true(compound(_110104)),nondet]):-call(chat80("Bertrand wrote.",[bratko(book)]),_110104).


test('?- chat80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_110108)),nondet]):-call(chat80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_110108).


test('?- chat80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_110106)),nondet]):-call(chat80("Bertrand wrote about Gottlob.",[bratko(book)]),_110106).


test('?- chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_110108)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_110108).


test('?- chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_110110)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_110110).


test('?- chat80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_110108)),nondet]):-call(chat80("What did alfred write to Bertrand?",[bratko(book)]),_110108).


test('?- chat80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_110104)),nondet]):-call(chat80("Alfred wrote a letter.",[bratko(book)]),_110104).


test('?- chat80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_110108)),nondet]):-call(chat80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_110108).


test('?- chat80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_110108)),nondet]):-call(chat80("Alfred wrote something to Bertrand.",[bratko(book)]),_110108).


test('?- chat80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_110106)),nondet]):-call(chat80("Alfred wrote to Bertrand.",[bratko(book)]),_110106).


test('?- chat80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_110108)),nondet]):-call(chat80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_110108).


test('?- chat80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_110108)),nondet]):-call(chat80("Alfred wrote Bertrand a letter.",[bratko(book)]),_110108).


test('?- chat80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_110108)),nondet]):-call(chat80("Who did alfred write a letter to?",[bratko(book)]),_110108).


test('?- chat80("Alfred gave it.",[bratko(book)])',[true(compound(_110104)),nondet]):-call(chat80("Alfred gave it.",[bratko(book)]),_110104).


test('?- chat80("Alfred gave a book.",[bratko(book)])',[true(compound(_110104)),nondet]):-call(chat80("Alfred gave a book.",[bratko(book)]),_110104).


test('?- chat80("a pride of lions paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a pride of lions paint",[of]),_110100).


test('?- chat80("a flock of birds paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a flock of birds paint",[of]),_110100).


test('?- chat80("a litter of pups paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a litter of pups paint",[of]),_110100).


test('?- chat80("a prickle of porcupines paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a prickle of porcupines paint",[of]),_110102).


test('?- chat80("a litter of cubs paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a litter of cubs paint",[of]),_110100).


test('?- chat80("a pack of dogs paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a pack of dogs paint",[of]),_110100).


test('?- chat80("a colony of beavers paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a colony of beavers paint",[of]),_110102).


test('?- chat80("a gaggle of geese paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a gaggle of geese paint",[of]),_110102).


test('?- chat80("a family of otters paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a family of otters paint",[of]),_110102).


test('?- chat80("a huddle of walruses paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a huddle of walruses paint",[of]),_110102).


test('?- chat80("a herd of deer paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a herd of deer paint",[of]),_110100).


test('?- chat80("a culture of bacteria paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a culture of bacteria paint",[of]),_110102).


test('?- chat80("a swarm of bees paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a swarm of bees paint",[of]),_110100).


test('?- chat80("a bed of clams paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a bed of clams paint",[of]),_110100).


test('?- chat80("a school of cod paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a school of cod paint",[of]),_110100).


test('?- chat80("a herd of dinosaurs paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a herd of dinosaurs paint",[of]),_110102).


test('?- chat80("a mess of iguanas paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a mess of iguanas paint",[of]),_110102).


test('?- chat80("a mob of wombats paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a mob of wombats paint",[of]),_110100).


test('?- chat80("a pod of pelicans paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a pod of pelicans paint",[of]),_110102).


test('?- chat80("a troop of boy scouts paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a troop of boy scouts paint",[of]),_110102).


test('?- chat80("a team of athletes paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a team of athletes paint",[of]),_110102).


test('?- chat80("a panel of experts paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a panel of experts paint",[of]),_110102).


test('?- chat80("a crew of sailors paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a crew of sailors paint",[of]),_110102).


test('?- chat80("a band of robbers paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a band of robbers paint",[of]),_110102).


test('?- chat80("a troupe of performers paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a troupe of performers paint",[of]),_110102).


test('?- chat80("a crowd of onlookers paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a crowd of onlookers paint",[of]),_110102).


test('?- chat80("a curse of painters paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("a curse of painters paint",[of]),_110102).


test('?- chat80("a fleet of cars paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a fleet of cars paint",[of]),_110100).


test('?- chat80("a pair of shoes paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a pair of shoes paint",[of]),_110100).


test('?- chat80("a fleet of ships paint",[of])',[true(compound(_110100)),nondet]):-call(chat80("a fleet of ships paint",[of]),_110100).


test('?- chat80("an anthology of stories paint",[of])',[true(compound(_110102)),nondet]):-call(chat80("an anthology of stories paint",[of]),_110102).


test('?- chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_187076)),nondet]):-call(chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_187076).


test('?- chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_187046)),nondet]):-call(chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_187046).


test('?- chat80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_187184)),nondet]):-call(chat80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_187184).


test('?- chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_187028)),nondet]):-call(chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_187028).


test('?- chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_187076)),nondet]):-call(chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_187076).


test('?- chat80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_187172)),nondet]):-call(chat80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_187172).


test('?- chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_187130)),nondet]):-call(chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_187130).


test('?- chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_187322)),nondet]):-call(chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_187322).


test('?- chat80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_187094)),nondet]):-call(chat80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_187094).


test('?- chat80("Logged on player character",[descriptionTest])',[true(compound(_186902)),nondet]):-call(chat80("Logged on player character",[descriptionTest]),_186902).


test('?- chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_187160)),nondet]):-call(chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_187160).


test('?- chat80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_187106)),nondet]):-call(chat80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_187106).


test('?- chat80("Wesley is her son",[descriptionTest])',[true(compound(_186848)),nondet]):-call(chat80("Wesley is her son",[descriptionTest]),_186848).


test('?- chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_187496)),nondet]):-call(chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_187496).


test('?- chat80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_186926)),nondet]):-call(chat80("Counselor Deanna Troi is here",[descriptionTest]),_186926).


test('?- chat80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_187022)),nondet]):-call(chat80("Counselor Troi is the ship's main counselor",[descriptionTest]),_187022).


test('?- chat80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_187178)),nondet]):-call(chat80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_187178).


test('?- chat80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_187052)),nondet]):-call(chat80("Commander William Riker is here, staring at you",[descriptionTest]),_187052).


test('?- chat80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_187058)),nondet]):-call(chat80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_187058).


test('?- chat80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_187028)),nondet]):-call(chat80("He's in charge of keeping the crew in line",[descriptionTest]),_187028).


test('?- chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_187094)),nondet]):-call(chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_187094).


test('?- chat80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_186992)),nondet]):-call(chat80("Captain Picard is a very important man",[descriptionTest]),_186992).


test('?- chat80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_187094)),nondet]):-call(chat80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_187094).


test('?- chat80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_186938)),nondet]):-call(chat80("He's very smart, and very wise",[descriptionTest]),_186938).


test('?- chat80("Don\'t mess with him!",[descriptionTest])',[true(compound(_186866)),nondet]):-call(chat80("Don't mess with him!",[descriptionTest]),_186866).


test('?- chat80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_186944)),nondet]):-call(chat80("Guinan is here, tending the bar",[descriptionTest]),_186944).


test('?- chat80("Guinan is a strange being",[descriptionTest])',[true(compound(_186902)),nondet]):-call(chat80("Guinan is a strange being",[descriptionTest]),_186902).


test('?- chat80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_187610)),nondet]):-call(chat80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_187610).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_187112)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_187112).


test('?- chat80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_187112)),nondet]):-call(chat80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_187112).


test('?- chat80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_187412)),nondet]):-call(chat80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_187412).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_187106)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_187106).


test('?- chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_187130)),nondet]):-call(chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_187130).


test('?- chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_187400)),nondet]):-call(chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_187400).


test('?- chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_187322)),nondet]):-call(chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_187322).


test('?- chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_187112)),nondet]):-call(chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_187112).


test('?- chat80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_186992)),nondet]):-call(chat80("Livingston is Captain Picard's pet fish",[descriptionTest]),_186992).


test('?- chat80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_187244)),nondet]):-call(chat80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_187244).


test('?- chat80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_187094)),nondet]):-call(chat80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_187094).


test('?- chat80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_186962)),nondet]):-call(chat80("Spot is Data's orange coloured cat",[descriptionTest]),_186962).


test('?- chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_187484)),nondet]):-call(chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_187484).


test('?- chat80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_187106)),nondet]):-call(chat80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_187106).


test('?- chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_187088)),nondet]):-call(chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_187088).


test('?- chat80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_187430)),nondet]):-call(chat80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_187430).


test('?- chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_187076)),nondet]):-call(chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_187076).


test('?- chat80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_186944)),nondet]):-call(chat80("Alexander Rozhenko is Worf's son",[descriptionTest]),_186944).


test('?- chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_187226)),nondet]):-call(chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_187226).


test('?- chat80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_187142)),nondet]):-call(chat80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_187142).


test('?- chat80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_187088)),nondet]):-call(chat80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_187088).


test('?- chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_187490)),nondet]):-call(chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_187490).


test('?- chat80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_186968)),nondet]):-call(chat80("A large phaser rifle is lying here",[descriptionTest]),_186968).


test('?- chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_187562)),nondet]):-call(chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_187562).


test('?- chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_187166)),nondet]):-call(chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_187166).


test('?- chat80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187514)),nondet]):-call(chat80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187514).


test('?- chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_187166)),nondet]):-call(chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_187166).


test('?- chat80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187538)),nondet]):-call(chat80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187538).


test('?- chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_187142)),nondet]):-call(chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_187142).


test('?- chat80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187514)),nondet]):-call(chat80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187514).


test('?- chat80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_187064)),nondet]):-call(chat80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_187064).


test('?- chat80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_187604)),nondet]):-call(chat80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_187604).


test('?- chat80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_187034)),nondet]):-call(chat80("A Starfleet communication badge is lying here",[descriptionTest]),_187034).


test('?- chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_188072)),nondet]):-call(chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_188072).


test('?- chat80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_187028)),nondet]):-call(chat80("Worf's silver chain sash has been left here",[descriptionTest]),_187028).


test('?- chat80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_187640)),nondet]):-call(chat80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_187640).


test('?- chat80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_186920)),nondet]):-call(chat80("Geordi's VISOR is lying here",[descriptionTest]),_186920).


test('?- chat80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_188312)),nondet]):-call(chat80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_188312).


test('?- chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_187088)),nondet]):-call(chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_187088).


test('?- chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_187874)),nondet]):-call(chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_187874).


test('?- chat80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_187022)),nondet]):-call(chat80("A shard of dilithium crystal is lying here",[descriptionTest]),_187022).


test('?- chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_187676)),nondet]):-call(chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_187676).


test('?- chat80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_187034)),nondet]):-call(chat80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_187034).


test('?- chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_187646)),nondet]):-call(chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_187646).


test('?- chat80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_187046)),nondet]):-call(chat80("Commander Riker's trombone has been placed here",[descriptionTest]),_187046).


test('?- chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_187478)),nondet]):-call(chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_187478).


test('?- chat80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_186974)),nondet]):-call(chat80("A small cup of tea is sitting here",[descriptionTest]),_186974).


test('?- chat80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_186992)),nondet]):-call(chat80("A bottle of synthehol is standing here",[descriptionTest]),_186992).


test('?- chat80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_187004)),nondet]):-call(chat80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_187004).


test('?- chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_187028)),nondet]):-call(chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_187028).


test('?- chat80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_187040)),nondet]):-call(chat80("A small glass of prune juice is sitting here",[descriptionTest]),_187040).


test('?- chat80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_187010)),nondet]):-call(chat80("A bottle of Vulcan beer is standing here",[descriptionTest]),_187010).


test('?- chat80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_187082)),nondet]):-call(chat80("You find yourself in the middle of main engineering",[descriptionTest]),_187082).


test('?- chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_187202)),nondet]):-call(chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_187202).


test('?- chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_187502)),nondet]):-call(chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_187502).


test('?- chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_187310)),nondet]):-call(chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_187310).


test('?- chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_187238)),nondet]):-call(chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_187238).


test('?- chat80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_187418)),nondet]):-call(chat80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_187418).


test('?- chat80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_187010)),nondet]):-call(chat80("You're in the middle of Geordi's quarters",[descriptionTest]),_187010).


test('?- chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_187208)),nondet]):-call(chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_187208).


test('?- chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_187532)),nondet]):-call(chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_187532).


test('?- chat80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_187142)),nondet]):-call(chat80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_187142).


test('?- chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_187112)),nondet]):-call(chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_187112).


test('?- chat80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_186998)),nondet]):-call(chat80("You're in the middle of Data's quarters",[descriptionTest]),_186998).


test('?- chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_188060)),nondet]):-call(chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_188060).


test('?- chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_187274)),nondet]):-call(chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_187274).


test('?- chat80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_187298)),nondet]):-call(chat80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_187298).


test('?- chat80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_186926)),nondet]):-call(chat80("You're in the dimly lit Brig",[descriptionTest]),_186926).


test('?- chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_187316)),nondet]):-call(chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_187316).


test('?- chat80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_187394)),nondet]):-call(chat80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_187394).


test('?- chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_187688)),nondet]):-call(chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_187688).


test('?- chat80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_193916)),nondet]):-call(chat80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_193916).


test('?- chat80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_187400)),nondet]):-call(chat80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_187400).


test('?- chat80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_187004)),nondet]):-call(chat80("You're in the Enterprise transporter room",[descriptionTest]),_187004).


test('?- chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_187490)),nondet]):-call(chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_187490).


test('?- chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_187460)),nondet]):-call(chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_187460).


test('?- chat80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_186998)),nondet]):-call(chat80("You find yourself in a transporter beam",[descriptionTest]),_186998).


test('?- chat80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_186998)),nondet]):-call(chat80("All you can see is blue flashing light",[descriptionTest]),_186998).


test('?- chat80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_187154)),nondet]):-call(chat80("It feels as though your body is racing around at high speeds",[descriptionTest]),_187154).


test('?- chat80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_187274)),nondet]):-call(chat80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_187274).


test('?- chat80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_187202)),nondet]):-call(chat80("You step through the doors and find yourself in a large school room",[descriptionTest]),_187202).


test('?- chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_187580)),nondet]):-call(chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_187580).


test('?- chat80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_187334)),nondet]):-call(chat80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_187334).


test('?- chat80("You\'re in the turbolift",[descriptionTest])',[true(compound(_186884)),nondet]):-call(chat80("You're in the turbolift",[descriptionTest]),_186884).


test('?- chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_187262)),nondet]):-call(chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_187262).


test('?- chat80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_187154)),nondet]):-call(chat80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_187154).


test('?- chat80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_187142)),nondet]):-call(chat80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_187142).


test('?- chat80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_186896)),nondet]):-call(chat80("You're now on Holodeck 2",[descriptionTest]),_186896).


test('?- chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_187580)),nondet]):-call(chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_187580).


test('?- chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_187328)),nondet]):-call(chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_187328).


test('?- chat80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_187022)),nondet]):-call(chat80("Right now, this holodeck is not functioning",[descriptionTest]),_187022).


test('?- chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_187130)),nondet]):-call(chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_187130).


test('?- chat80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_187052)),nondet]):-call(chat80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_187052).


test('?- chat80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_187262)),nondet]):-call(chat80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_187262).


test('?- chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_187580)),nondet]):-call(chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_187580).


test('?- chat80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_186956)),nondet]):-call(chat80("You've arrived in Riker's quarters",[descriptionTest]),_186956).


test('?- chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_187532)),nondet]):-call(chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_187532).


test('?- chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_187466)),nondet]):-call(chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_187466).


test('?- chat80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_187070)),nondet]):-call(chat80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_187070).


test('?- chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_187706)),nondet]):-call(chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_187706).


test('?- chat80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_187502)),nondet]):-call(chat80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_187502).


test('?- chat80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_186974)),nondet]):-call(chat80("You emerge into a dark narrow alley",[descriptionTest]),_186974).


test('?- chat80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_187118)),nondet]):-call(chat80("Tall dark brick buildings block your way north and south",[descriptionTest]),_187118).


test('?- chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_187382)),nondet]):-call(chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_187382).


test('?- chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_187418)),nondet]):-call(chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_187418).


test('?- chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_187154)),nondet]):-call(chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_187154).


test('?- chat80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_187058)),nondet]):-call(chat80("The archway leading out of the holodeck is west",[descriptionTest]),_187058).


test('?- chat80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_186962)),nondet]):-call(chat80("You're in Doctor Crusher's quarters",[descriptionTest]),_186962).


test('?- chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_187358)),nondet]):-call(chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_187358).


test('?- chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_187448)),nondet]):-call(chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_187448).


test('?- chat80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_187190)),nondet]):-call(chat80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_187190).


test('?- chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_187814)),nondet]):-call(chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_187814).


test('?- chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_187286)),nondet]):-call(chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_187286).


test('?- chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_187682)),nondet]):-call(chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_187682).


test('?- chat80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_187154)),nondet]):-call(chat80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_187154).


test('?- chat80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_187082)),nondet]):-call(chat80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_187082).


test('?- chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_187976)),nondet]):-call(chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_187976).


test('?- chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_187154)),nondet]):-call(chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_187154).


test('?- chat80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_187064)),nondet]):-call(chat80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_187064).


test('?- chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_187256)),nondet]):-call(chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_187256).


test('?- chat80("A large grey door leads into space",[descriptionTest])',[true(compound(_186968)),nondet]):-call(chat80("A large grey door leads into space",[descriptionTest]),_186968).


test('?- chat80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_187154)),nondet]):-call(chat80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_187154).


test('?- chat80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_187226)),nondet]):-call(chat80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_187226).


test('?- chat80("You feel very cold",[descriptionTest])',[true(compound(_186854)),nondet]):-call(chat80("You feel very cold",[descriptionTest]),_186854).


test('?- chat80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_187124)),nondet]):-call(chat80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_187124).


test('?- chat80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_187010)),nondet]):-call(chat80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_187010).


test('?- chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_187622)),nondet]):-call(chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_187622).


test('?- chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_187346)),nondet]):-call(chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_187346).


test('?- chat80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_186896)),nondet]):-call(chat80("You're in Worf's quarters",[descriptionTest]),_186896).


test('?- chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_187340)),nondet]):-call(chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_187340).


test('?- chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_187754)),nondet]):-call(chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_187754).


test('?- chat80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_186962)),nondet]):-call(chat80("You emerge into the Enterprise gym",[descriptionTest]),_186962).


test('?- chat80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_187064)),nondet]):-call(chat80("The room is quite large, with a soft grey floor",[descriptionTest]),_187064).


test('?- chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_187472)),nondet]):-call(chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_187472).


test('?- chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_187436)),nondet]):-call(chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_187436).


test('?- chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_187124)),nondet]):-call(chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_187124).


test('?- chat80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_187190)),nondet]):-call(chat80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_187190).


test('?- chat80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_187280)),nondet]):-call(chat80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_187280).


test('?- chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_187574)),nondet]):-call(chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_187574).


test('?- chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_187592)),nondet]):-call(chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_187592).


test('?- chat80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_187046)),nondet]):-call(chat80("Two large windows offer a great view of space",[descriptionTest]),_187046).


test('?- chat80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_187298)),nondet]):-call(chat80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_187298).


test('?- chat80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_186974)),nondet]):-call(chat80("You're in the Enterprise science lab",[descriptionTest]),_186974).


test('?- chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_187364)),nondet]):-call(chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_187364).


test('?- chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_187862)),nondet]):-call(chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_187862).


test('?- chat80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_187118)),nondet]):-call(chat80("A complex looking computer console is facing this machine",[descriptionTest]),_187118).


test('?- chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_187274)),nondet]):-call(chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_187274).


test('?- chat80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_187034)),nondet]):-call(chat80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_187034).


test('?- chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_187268)),nondet]):-call(chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_187268).


test('?- chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_187640)),nondet]):-call(chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_187640).


test('?- chat80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_187442)),nondet]):-call(chat80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_187442).


test('?- chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_187838)),nondet]):-call(chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_187838).


test('?- chat80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_187040)),nondet]):-call(chat80("You're standing in Captain Picard's ready room",[descriptionTest]),_187040).


test('?- chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_187478)),nondet]):-call(chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_187478).


test('?- chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_187382)),nondet]):-call(chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_187382).


test('?- chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_187580)),nondet]):-call(chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_187580).


test('?- chat80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_187160)),nondet]):-call(chat80("This is where the Captain makes all of his important decisions",[descriptionTest]),_187160).


test('?- chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_187268)),nondet]):-call(chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_187268).


test('?- chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_187580)),nondet]):-call(chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_187580).


test('?- chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_187388)),nondet]):-call(chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_187388).


test('?- chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_187184)),nondet]):-call(chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_187184).


test('?- chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_187532)),nondet]):-call(chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_187532).


test('?- chat80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_187130)),nondet]):-call(chat80("This is where the ship's pilot and information officer sit",[descriptionTest]),_187130).


test('?- chat80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_187052)),nondet]):-call(chat80("You're in the conference room of the Enterprise",[descriptionTest]),_187052).


test('?- chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_187598)),nondet]):-call(chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_187598).


test('?- chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_187220)),nondet]):-call(chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_187220).


test('?- chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_187316)),nondet]):-call(chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_187316).


test('?- chat80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_187148)),nondet]):-call(chat80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_187148).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_110110)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_110110).


test('?- chat80("no two owners eat pizza",[sanity])',[true(compound(_110102)),nondet]):-call(chat80("no two owners eat pizza",[sanity]),_110102).


test('?- chat80("no three owners eat pizza",[sanity])',[true(compound(_110102)),nondet]):-call(chat80("no three owners eat pizza",[sanity]),_110102).


test('?- chat80("no three owners eat the same pizza",[sanity])',[true(compound(_110104)),nondet]):-call(chat80("no three owners eat the same pizza",[sanity]),_110104).


test('?- chat80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_110106)),nondet]):-call(chat80("no three owners eat the same kind of pizza",[sanity]),_110106).


test('?- chat80("no owners eat the same pizza",[sanity])',[true(compound(_110102)),nondet]):-call(chat80("no owners eat the same pizza",[sanity]),_110102).


test('?- chat80("no owners eat the same kind of pizza",[sanity])',[true(compound(_110104)),nondet]):-call(chat80("no owners eat the same kind of pizza",[sanity]),_110104).


test('?- chat80("there are 5 houses",[sanity])',[true(compound(_110100)),nondet]):-call(chat80("there are 5 houses",[sanity]),_110100).


test('?- chat80("there are not 5 houses",[sanity])',[true(compound(_110100)),nondet]):-call(chat80("there are not 5 houses",[sanity]),_110100).


test('?- chat80("there are not zero houses",[sanity])',[true(compound(_110102)),nondet]):-call(chat80("there are not zero houses",[sanity]),_110102).


test('?- chat80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_110110)),nondet]):-call(chat80(noun_phrase("less than 2 owners"),[sanity,bug]),_110110).


test('?- chat80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_110104)),nondet]):-call(chat80(noun_phrase("at most the 5 owners"),[sanity]),_110104).


test('?- chat80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_110104)),nondet]):-call(chat80(noun_phrase("at most 5 owners"),[sanity]),_110104).


test('?- chat80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_110104)),nondet]):-call(chat80(noun_phrase("less than 3 owners"),[sanity]),_110104).


test('?- chat80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_110106)),nondet]):-call(chat80(noun_phrase("at most 50 percent of owners"),[sanity]),_110106).


test('?- chat80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_110110)),nondet]):-call(chat80(noun_phrase("no three owners"),[sanity,no_working]),_110110).


test('?- chat80("terry writes a non-program.",[tell])',[true(compound(_110102)),nondet]):-call(chat80("terry writes a non-program.",[tell]),_110102).


test('?- chat80("every nonhuman programmer writes a program.",[tell])',[true(compound(_110106)),nondet]):-call(chat80("every nonhuman programmer writes a program.",[tell]),_110106).


test('?- chat80("every human programmer writes a not a program.",[tell])',[true(compound(_110106)),nondet]):-call(chat80("every human programmer writes a not a program.",[tell]),_110106).


test('?- chat80("every human programmer happily writes a not a program.",[tell])',[true(compound(_110108)),nondet]):-call(chat80("every human programmer happily writes a not a program.",[tell]),_110108).


:- end_tests(chat80).



:- begin_tests(curt80).



test('?- curt80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_110150)),nondet]):-call(curt80("His friends are liked by hers.",[bad_juju,sanity]),_110150).


test('?- curt80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_110152)),nondet]):-call(curt80("Her friends are not liked by his.",[bad_juju,sanity]),_110152).


test('?- curt80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_110152)),nondet]):-call(curt80("Do their friends like each other?",[bad_juju,feature]),_110152).


test('?- curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_110094),sanity])',[true(compound(_110156)),nondet]):-call(curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_110094),sanity]),_110156).


test('?- curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_110092),sanity])',[true(compound(_110154)),nondet]):-call(curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_110092),sanity]),_110154).


test('?- curt80("There are 5 houses with five different colors.",[riddle(_110096),sanity])',[true(compound(_110158)),nondet]):-call(curt80("There are 5 houses with five different colors.",[riddle(_110096),sanity]),_110158).


test('?- curt80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_110148)),nondet]):-call(curt80("There are 5 houses",[riddle_prep,sanity]),_110148).


test('?- curt80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_110152)),nondet]):-call(curt80("Each house has a different color",[riddle_prep,sanity]),_110152).


test('?- curt80("In each house lives a person with a different nationality.",[riddle(_110100),sanity])',[true(compound(_110162)),nondet]):-call(curt80("In each house lives a person with a different nationality.",[riddle(_110100),sanity]),_110162).


test('?- curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_110174)),nondet]):-call(curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_110174).


test('?- curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_110162)),nondet]):-call(curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_110162).


test('?- curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_110160)),nondet]):-call(curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_110160).


test('?- curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_110164)),nondet]):-call(curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_110164).


test('?- curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_110168)),nondet]):-call(curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_110168).


test('?- curt80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_110160)),nondet]):-call(curt80("No owners have the same pet.",[riddle(1),sanity,regression]),_110160).


test('?- curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_110164)),nondet]):-call(curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_110164).


test('?- curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_110158)),nondet]):-call(curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_110158).


test('?- curt80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_110162)),nondet]):-call(curt80("No two owners have the same pet.",[riddle(1),sanity,regression]),_110162).


test('?- curt80("The brit lives in the red house.",[riddle(_110094),sanity])',[true(compound(_110156)),nondet]):-call(curt80("The brit lives in the red house.",[riddle(_110094),sanity]),_110156).


test('?- curt80("The swede keeps dogs as pets.",[riddle(_110092),sanity])',[true(compound(_110154)),nondet]):-call(curt80("The swede keeps dogs as pets.",[riddle(_110092),sanity]),_110154).


test('?- curt80("A dane drinks tea.",[riddle(_110090),sanity])',[true(compound(_110152)),nondet]):-call(curt80("A dane drinks tea.",[riddle(_110090),sanity]),_110152).


test('?- curt80("The green house is on the left of the white house.",[riddle(_110098),sanity])',[true(compound(_110160)),nondet]):-call(curt80("The green house is on the left of the white house.",[riddle(_110098),sanity]),_110160).


test('?- curt80("The green house\'s owner drinks coffee.",[riddle(_110094),sanity])',[true(compound(_110156)),nondet]):-call(curt80("The green house's owner drinks coffee.",[riddle(_110094),sanity]),_110156).


test('?- curt80("The person who smokes Pall Mall rears birds.",[riddle(_110096),sanity,regression])',[true(compound(_110164)),nondet]):-call(curt80("The person who smokes Pall Mall rears birds.",[riddle(_110096),sanity,regression]),_110164).


test('?- curt80("The owner of the yellow house smokes Dunhill.",[riddle(_110096),sanity])',[true(compound(_110158)),nondet]):-call(curt80("The owner of the yellow house smokes Dunhill.",[riddle(_110096),sanity]),_110158).


test('?- curt80("The man living in the center house drinks milk.",[riddle(_110098),sanity])',[true(compound(_110160)),nondet]):-call(curt80("The man living in the center house drinks milk.",[riddle(_110098),sanity]),_110160).


test('?- curt80("The Norwegian lives in the first house .",[riddle(_110096),sanity])',[true(compound(_110158)),nondet]):-call(curt80("The Norwegian lives in the first house .",[riddle(_110096),sanity]),_110158).


test('?- curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_110102),sanity])',[true(compound(_110164)),nondet]):-call(curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_110102),sanity]),_110164).


test('?- curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_110102),sanity])',[true(compound(_110164)),nondet]):-call(curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_110102),sanity]),_110164).


test('?- curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_110096),sanity])',[true(compound(_110158)),nondet]):-call(curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_110096),sanity]),_110158).


test('?- curt80("The German smokes Prince.",[riddle(_110092),sanity])',[true(compound(_110154)),nondet]):-call(curt80("The German smokes Prince.",[riddle(_110092),sanity]),_110154).


test('?- curt80("The Norwegian lives next to the blue house.",[riddle(_110096),sanity])',[true(compound(_110158)),nondet]):-call(curt80("The Norwegian lives next to the blue house.",[riddle(_110096),sanity]),_110158).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_110100),sanity])',[true(compound(_110162)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_110100),sanity]),_110162).


test('?- curt80("Who owns the fish?",[riddle(_110090),sanity])',[true(compound(_110152)),nondet]):-call(curt80("Who owns the fish?",[riddle(_110090),sanity]),_110152).


test('?- curt80("One woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("One woman paints.",[quants]),_110142).


test('?- curt80("No woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("No woman paints.",[quants]),_110142).


test('?- curt80("Some woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Some woman paints.",[quants]),_110142).


test('?- curt80("Every woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Every woman paints.",[quants]),_110142).


test('?- curt80("Each woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Each woman paints.",[quants]),_110142).


test('?- curt80("Any woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Any woman paints.",[quants]),_110142).


test('?- curt80("The woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("The woman paints.",[quants]),_110142).


test('?- curt80("The not woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("The not woman paints.",[quants]),_110142).


test('?- curt80("Not a woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Not a woman paints.",[quants]),_110142).


test('?- curt80("Not one woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Not one woman paints.",[quants]),_110142).


test('?- curt80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_110142)),nondet]):-call(curt80("Not no woman paints.",[quants_neg_postcond]),_110142).


test('?- curt80("Not some woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Not some woman paints.",[quants]),_110142).


test('?- curt80("Not every woman paints.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("Not every woman paints.",[quants]),_110144).


test('?- curt80("Not each woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Not each woman paints.",[quants]),_110142).


test('?- curt80("Not any woman paints.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Not any woman paints.",[quants]),_110142).


test('?- curt80("The women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("The women paint.",[quants]),_110142).


test('?- curt80("Women paint.",[quants])',[true(compound(_110140)),nondet]):-call(curt80("Women paint.",[quants]),_110140).


test('?- curt80("Some women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Some women paint.",[quants]),_110142).


test('?- curt80("No women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("No women paint.",[quants]),_110142).


test('?- curt80("All women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("All women paint.",[quants]),_110142).


test('?- curt80("Any women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Any women paint.",[quants]),_110142).


test('?- curt80("Not women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Not women paint.",[quants]),_110142).


test('?- curt80("Not no women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Not no women paint.",[quants]),_110142).


test('?- curt80("Not all women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Not all women paint.",[quants]),_110142).


test('?- curt80("Not any women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Not any women paint.",[quants]),_110142).


test('?- curt80("The three women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("The three women paint.",[quants]),_110142).


test('?- curt80("Three women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Three women paint.",[quants]),_110142).


test('?- curt80("Some three women paint.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("Some three women paint.",[quants]),_110144).


test('?- curt80("No three women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("No three women paint.",[quants]),_110142).


test('?- curt80("Every three women paint.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("Every three women paint.",[quants]),_110144).


test('?- curt80("All three women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("All three women paint.",[quants]),_110142).


test('?- curt80("Any three women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Any three women paint.",[quants]),_110142).


test('?- curt80("Not three women paint.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("Not three women paint.",[quants]),_110142).


test('?- curt80("Not some three women paint.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("Not some three women paint.",[quants]),_110144).


test('?- curt80("Not no three women paint.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("Not no three women paint.",[quants]),_110144).


test('?- curt80("Not all three women paint.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("Not all three women paint.",[quants]),_110144).


test('?- curt80("Not every three women paint.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("Not every three women paint.",[quants]),_110144).


test('?- curt80("Not any three women paint.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("Not any three women paint.",[quants]),_110144).


test('?- curt80("Not three of the women paint.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("Not three of the women paint.",[quants]),_110144).


test('?- curt80("Not some of the three women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("Not some of the three women paint.",[quants]),_110146).


test('?- curt80("Not no three of the women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("Not no three of the women paint.",[quants]),_110146).


test('?- curt80("Not all three of the women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("Not all three of the women paint.",[quants]),_110146).


test('?- curt80("Not every three of the women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("Not every three of the women paint.",[quants]),_110146).


test('?- curt80("Not any three of the women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("Not any three of the women paint.",[quants]),_110146).


test('?- curt80("Not three of the four women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("Not three of the four women paint.",[quants]),_110146).


test('?- curt80("Not none of three out of the four women paint.",[quants])',[true(compound(_110148)),nondet]):-call(curt80("Not none of three out of the four women paint.",[quants]),_110148).


test('?- curt80("Not all three of the four women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("Not all three of the four women paint.",[quants]),_110146).


test('?- curt80("Not any three of the four women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("Not any three of the four women paint.",[quants]),_110146).


test('?- curt80("Three of the four women paint.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("Three of the four women paint.",[quants]),_110144).


test('?- curt80("Three out of the four women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("Three out of the four women paint.",[quants]),_110146).


test('?- curt80("All three of the four women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("All three of the four women paint.",[quants]),_110146).


test('?- curt80("Any three of the four women paint.",[quants])',[true(compound(_110146)),nondet]):-call(curt80("Any three of the four women paint.",[quants]),_110146).


test('?- curt80("I paint",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("I paint",[pronoun]),_110140).


test('?- curt80("you paint",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("you paint",[pronoun]),_110140).


test('?- curt80("We paint",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("We paint",[pronoun]),_110140).


test('?- curt80("None paint",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("None paint",[pronoun]),_110140).


test('?- curt80("They paint",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("They paint",[pronoun]),_110140).


test('?- curt80("Some paint",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("Some paint",[pronoun]),_110140).


test('?- curt80("It paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("It paints",[pronoun]),_110140).


test('?- curt80("he paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("he paints",[pronoun]),_110140).


test('?- curt80("She paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("She paints",[pronoun]),_110140).


test('?- curt80("Someone paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("Someone paints",[pronoun]),_110140).


test('?- curt80("Anybody paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("Anybody paints",[pronoun]),_110140).


test('?- curt80("Anyone paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("Anyone paints",[pronoun]),_110140).


test('?- curt80("Anything paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Anything paints",[pronoun]),_110142).


test('?- curt80("Everybody paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Everybody paints",[pronoun]),_110142).


test('?- curt80("Everyone paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Everyone paints",[pronoun]),_110142).


test('?- curt80("Everything paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Everything paints",[pronoun]),_110142).


test('?- curt80("Nobody paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("Nobody paints",[pronoun]),_110140).


test('?- curt80("No one paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("No one paints",[pronoun]),_110140).


test('?- curt80("Nothing paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("Nothing paints",[pronoun]),_110140).


test('?- curt80("One paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("One paints",[pronoun]),_110140).


test('?- curt80("Somebody paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Somebody paints",[pronoun]),_110142).


test('?- curt80("Something paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Something paints",[pronoun]),_110142).


test('?- curt80("Not anybody paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Not anybody paints",[pronoun]),_110142).


test('?- curt80("Not anyone paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Not anyone paints",[pronoun]),_110142).


test('?- curt80("Not anything paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Not anything paints",[pronoun]),_110142).


test('?- curt80("Not everybody paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Not everybody paints",[pronoun]),_110142).


test('?- curt80("Not everyone paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Not everyone paints",[pronoun]),_110142).


test('?- curt80("Not everything paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Not everything paints",[pronoun]),_110142).


test('?- curt80("Not nothing paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Not nothing paints",[pronoun]),_110142).


test('?- curt80("Not one paints",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("Not one paints",[pronoun]),_110140).


test('?- curt80("Not somebody paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Not somebody paints",[pronoun]),_110142).


test('?- curt80("Not something paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("Not something paints",[pronoun]),_110142).


test('?- curt80("She likes i",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("She likes i",[pronoun]),_110140).


test('?- curt80("She likes me",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("She likes me",[pronoun]),_110140).


test('?- curt80("She likes you",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("She likes you",[pronoun]),_110140).


test('?- curt80("She likes it",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("She likes it",[pronoun]),_110140).


test('?- curt80("She likes us",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("She likes us",[pronoun]),_110140).


test('?- curt80("She likes them",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("She likes them",[pronoun]),_110140).


test('?- curt80("She likes no one",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("She likes no one",[pronoun]),_110142).


test('?- curt80("She likes none",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("She likes none",[pronoun]),_110140).


test('?- curt80("She likes him",[pronoun])',[true(compound(_110140)),nondet]):-call(curt80("She likes him",[pronoun]),_110140).


test('?- curt80("She likes herself",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("She likes herself",[pronoun]),_110142).


test('?- curt80("She likes himself",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("She likes himself",[pronoun]),_110142).


test('?- curt80("It is us that paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("It is us that paints",[pronoun]),_110142).


test('?- curt80("It is them that paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("It is them that paints",[pronoun]),_110142).


test('?- curt80("It is he that paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("It is he that paints",[pronoun]),_110142).


test('?- curt80("It is she that paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("It is she that paints",[pronoun]),_110142).


test('?- curt80("It is her that paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("It is her that paints",[pronoun]),_110142).


test('?- curt80("It is him that paints",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("It is him that paints",[pronoun]),_110142).


test('?- curt80("We are us that paint",[pronoun])',[true(compound(_110142)),nondet]):-call(curt80("We are us that paint",[pronoun]),_110142).


test('?- curt80("We are all of us that paint",[pronoun])',[true(compound(_110144)),nondet]):-call(curt80("We are all of us that paint",[pronoun]),_110144).


test('?- curt80("It is everybody that paints",[pronoun])',[true(compound(_110144)),nondet]):-call(curt80("It is everybody that paints",[pronoun]),_110144).


test('?- curt80("Every man that paints likes monet.",[bratko])',[true(compound(_110146)),nondet]):-call(curt80("Every man that paints likes monet.",[bratko]),_110146).


test('?- curt80("A woman that admires John paints.",[bratko])',[true(compound(_110146)),nondet]):-call(curt80("A woman that admires John paints.",[bratko]),_110146).


test('?- curt80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_110152)),nondet]):-call(curt80("Every woman that likes a man that admires monet paints.",[bratko]),_110152).


test('?- curt80("John likes Annie.",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("John likes Annie.",[bratko]),_110142).


test('?- curt80("Annie likes a man that admires monet.",[bratko])',[true(compound(_110146)),nondet]):-call(curt80("Annie likes a man that admires monet.",[bratko]),_110146).


test('?- curt80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_110146)),nondet]):-call(curt80("Bertrand Russell wrote principia.",[bratko]),_110146).


test('?- curt80("An author wrote principia.",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("An author wrote principia.",[bratko]),_110144).


test('?- curt80("Iraq is a country.",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("Iraq is a country.",[bratko]),_110142).


test('?- curt80("A happy author wrote principia.",[bratko])',[true(compound(_110146)),nondet]):-call(curt80("A happy author wrote principia.",[bratko]),_110146).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_110142).


test('?- curt80("Bertrand is an author.",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("Bertrand is an author.",[bratko]),_110142).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_110142).


test('?- curt80("Every author is a programmer.",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("Every author is a programmer.",[bratko]),_110144).


test('?- curt80("Is Bertrand an programmer?",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("Is Bertrand an programmer?",[bratko]),_110144).


test('?- curt80("What is a author?",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("What is a author?",[bratko]),_110142).


test('?- curt80("What did Bertrand write?",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("What did Bertrand write?",[bratko]),_110144).


test('?- curt80("What is a book?",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("What is a book?",[bratko]),_110142).


test('?- curt80("Principia is a book.",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("Principia is a book.",[bratko]),_110142).


test('?- curt80("Bertrand is Bertrand.",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("Bertrand is Bertrand.",[bratko]),_110142).


test('?- curt80("Shrdlu halts.",[bratko])',[true(compound(_110140)),nondet]):-call(curt80("Shrdlu halts.",[bratko]),_110140).


test('?- curt80("Every student wrote a program.",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("Every student wrote a program.",[bratko]),_110144).


test('?- curt80("Terry writes a program.",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("Terry writes a program.",[bratko]),_110144).


test('?- curt80("Terry writes a program that halts.",[bratko])',[true(compound(_110146)),nondet]):-call(curt80("Terry writes a program that halts.",[bratko]),_110146).


test('?- curt80("An author of every book wrote a program.",[bratko])',[true(compound(_110148)),nondet]):-call(curt80("An author of every book wrote a program.",[bratko]),_110148).


test('?- curt80("A man hapilly maried paints.",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("A man hapilly maried paints.",[bratko]),_110144).


test('?- curt80("A hapilly maried man paints.",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("A hapilly maried man paints.",[bratko]),_110144).


test('?- curt80("A man who knows paints.",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("A man who knows paints.",[bratko]),_110144).


test('?- curt80("A man gives something.",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("A man gives something.",[bratko]),_110142).


test('?- curt80("A man gives his word.",[bratko])',[true(compound(_110142)),nondet]):-call(curt80("A man gives his word.",[bratko]),_110142).


test('?- curt80("A man of his word paints.",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("A man of his word paints.",[bratko]),_110144).


test('?- curt80("A man paints.",[bratko])',[true(compound(_110140)),nondet]):-call(curt80("A man paints.",[bratko]),_110140).


test('?- curt80("A man that paints paints.",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("A man that paints paints.",[bratko]),_110144).


test('?- curt80("A man walks.",[bratko])',[true(compound(_110140)),nondet]):-call(curt80("A man walks.",[bratko]),_110140).


test('?- curt80("A man that walks paints.",[bratko])',[true(compound(_110144)),nondet]):-call(curt80("A man that walks paints.",[bratko]),_110144).


test('?- curt80("It halts.",[bratko])',[true(compound(_110140)),nondet]):-call(curt80("It halts.",[bratko]),_110140).


test('?- curt80("A man of his word that walks paints.",[bratko])',[true(compound(_110146)),nondet]):-call(curt80("A man of his word that walks paints.",[bratko]),_110146).


test('?- curt80("The cost of what the product is changes.",[bratko])',[true(compound(_110148)),nondet]):-call(curt80("The cost of what the product is changes.",[bratko]),_110148).


test('?- curt80("We need a virtual machine server.",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("We need a virtual machine server.",[aindy]),_110146).


test('?- curt80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_110150)),nondet]):-call(curt80("The virtual machine server should have several VMs.",[aindy]),_110150).


test('?- curt80("One VM should be the POSI VM.",[aindy])',[true(compound(_110144)),nondet]):-call(curt80("One VM should be the POSI VM.",[aindy]),_110144).


test('?- curt80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("One VM should be the FRDCSA.org VM.",[aindy]),_110146).


test('?- curt80("One VM should be the mail server.",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("One VM should be the mail server.",[aindy]),_110146).


test('?- curt80("One computer should be the backup server.",[aindy])',[true(compound(_110148)),nondet]):-call(curt80("One computer should be the backup server.",[aindy]),_110148).


test('?- curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_110164)),nondet]):-call(curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_110164).


test('?- curt80("I need a fast computer for work.",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("I need a fast computer for work.",[aindy]),_110146).


test('?- curt80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_110156)),nondet]):-call(curt80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_110156).


test('?- curt80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_110152)),nondet]):-call(curt80("I need a dedicated computer for network security research.",[aindy]),_110152).


test('?- curt80("I need a machine to run Tails on.",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("I need a machine to run Tails on.",[aindy]),_110146).


test('?- curt80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_110150)),nondet]):-call(curt80("I need a machine off the network for airgap security.",[aindy]),_110150).


test('?- curt80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_110156)),nondet]):-call(curt80("One VM should be the game server for running game development projects.",[aindy]),_110156).


test('?- curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_110150)),nondet]):-call(curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_110150).


test('?- curt80("I could read about how to build a private watson.",[aindy])',[true(compound(_110150)),nondet]):-call(curt80("I could read about how to build a private watson.",[aindy]),_110150).


test('?- curt80("Need backups.",[aindy])',[true(compound(_110140)),nondet]):-call(curt80("Need backups.",[aindy]),_110140).


test('?- curt80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_110154)),nondet]):-call(curt80("Practice setting up backups of a machine to a different machine.",[aindy]),_110154).


test('?- curt80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_110152)),nondet]):-call(curt80("Set up schedules for updating the software on all machines.",[aindy]),_110152).


test('?- curt80("Read books on server room layout.",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("Read books on server room layout.",[aindy]),_110146).


test('?- curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_110154)),nondet]):-call(curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_110154).


test('?- curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_110156)),nondet]):-call(curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_110156).


test('?- curt80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("I want a gaming computer.  Do I?",[aindy]),_110146).


test('?- curt80("I want a windows 7 computer for work.",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("I want a windows 7 computer for work.",[aindy]),_110146).


test('?- curt80("I want a fast linux computer for work.",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("I want a fast linux computer for work.",[aindy]),_110146).


test('?- curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_110166)),nondet]):-call(curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_110166).


test('?- curt80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_110152)),nondet]):-call(curt80("I could install a fresh operating system on justin for work.",[aindy]),_110152).


test('?- curt80("I probably want a separate git computer.",[aindy])',[true(compound(_110148)),nondet]):-call(curt80("I probably want a separate git computer.",[aindy]),_110148).


test('?- curt80("I need to start buying servers.",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("I need to start buying servers.",[aindy]),_110146).


test('?- curt80("I want a rackmount case for servers.",[aindy])',[true(compound(_110146)),nondet]):-call(curt80("I want a rackmount case for servers.",[aindy]),_110146).


test('?- curt80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_110152)),nondet]):-call(curt80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_110152).


test('?- curt80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_110150)),nondet]):-call(curt80("2 oceans border each african country.",[chat80(tell)]),_110150).


test('?- curt80("There are 10 large cars.",[quants])',[true(compound(_110144)),nondet]):-call(curt80("There are 10 large cars.",[quants]),_110144).


test('?- curt80("There are 10 oceans.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("There are 10 oceans.",[quants]),_110142).


test('?- curt80("There are 10 women.",[quants])',[true(compound(_110142)),nondet]):-call(curt80("There are 10 women.",[quants]),_110142).


test('?- curt80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_110150)),nondet]):-call(curt80("An ocean borders an African country.",[chat80(tell)]),_110150).


test('?- curt80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_110158)),nondet]):-call(curt80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_110158).


test('?- curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_110160)),nondet]):-call(curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_110160).


test('?- curt80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_110146)),nondet]):-call(curt80("Bertrand wrote a book.",[bratko(book)]),_110146).


test('?- curt80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_110148)),nondet]):-call(curt80("Bertrand wrote nothing.",[bratko(book)]),_110148).


test('?- curt80("Bertrand wrote.",[bratko(book)])',[true(compound(_110146)),nondet]):-call(curt80("Bertrand wrote.",[bratko(book)]),_110146).


test('?- curt80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_110150)),nondet]):-call(curt80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_110150).


test('?- curt80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_110148)),nondet]):-call(curt80("Bertrand wrote about Gottlob.",[bratko(book)]),_110148).


test('?- curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_110150)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_110150).


test('?- curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_110152)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_110152).


test('?- curt80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_110150)),nondet]):-call(curt80("What did alfred write to Bertrand?",[bratko(book)]),_110150).


test('?- curt80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_110146)),nondet]):-call(curt80("Alfred wrote a letter.",[bratko(book)]),_110146).


test('?- curt80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_110150)),nondet]):-call(curt80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_110150).


test('?- curt80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_110150)),nondet]):-call(curt80("Alfred wrote something to Bertrand.",[bratko(book)]),_110150).


test('?- curt80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_110148)),nondet]):-call(curt80("Alfred wrote to Bertrand.",[bratko(book)]),_110148).


test('?- curt80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_110150)),nondet]):-call(curt80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_110150).


test('?- curt80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_110150)),nondet]):-call(curt80("Alfred wrote Bertrand a letter.",[bratko(book)]),_110150).


test('?- curt80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_110150)),nondet]):-call(curt80("Who did alfred write a letter to?",[bratko(book)]),_110150).


test('?- curt80("Alfred gave it.",[bratko(book)])',[true(compound(_110146)),nondet]):-call(curt80("Alfred gave it.",[bratko(book)]),_110146).


test('?- curt80("Alfred gave a book.",[bratko(book)])',[true(compound(_110146)),nondet]):-call(curt80("Alfred gave a book.",[bratko(book)]),_110146).


test('?- curt80("a pride of lions paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a pride of lions paint",[of]),_110142).


test('?- curt80("a flock of birds paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a flock of birds paint",[of]),_110142).


test('?- curt80("a litter of pups paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a litter of pups paint",[of]),_110142).


test('?- curt80("a prickle of porcupines paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a prickle of porcupines paint",[of]),_110144).


test('?- curt80("a litter of cubs paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a litter of cubs paint",[of]),_110142).


test('?- curt80("a pack of dogs paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a pack of dogs paint",[of]),_110142).


test('?- curt80("a colony of beavers paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a colony of beavers paint",[of]),_110144).


test('?- curt80("a gaggle of geese paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a gaggle of geese paint",[of]),_110144).


test('?- curt80("a family of otters paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a family of otters paint",[of]),_110144).


test('?- curt80("a huddle of walruses paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a huddle of walruses paint",[of]),_110144).


test('?- curt80("a herd of deer paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a herd of deer paint",[of]),_110142).


test('?- curt80("a culture of bacteria paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a culture of bacteria paint",[of]),_110144).


test('?- curt80("a swarm of bees paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a swarm of bees paint",[of]),_110142).


test('?- curt80("a bed of clams paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a bed of clams paint",[of]),_110142).


test('?- curt80("a school of cod paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a school of cod paint",[of]),_110142).


test('?- curt80("a herd of dinosaurs paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a herd of dinosaurs paint",[of]),_110144).


test('?- curt80("a mess of iguanas paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a mess of iguanas paint",[of]),_110144).


test('?- curt80("a mob of wombats paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a mob of wombats paint",[of]),_110142).


test('?- curt80("a pod of pelicans paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a pod of pelicans paint",[of]),_110144).


test('?- curt80("a troop of boy scouts paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a troop of boy scouts paint",[of]),_110144).


test('?- curt80("a team of athletes paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a team of athletes paint",[of]),_110144).


test('?- curt80("a panel of experts paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a panel of experts paint",[of]),_110144).


test('?- curt80("a crew of sailors paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a crew of sailors paint",[of]),_110144).


test('?- curt80("a band of robbers paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a band of robbers paint",[of]),_110144).


test('?- curt80("a troupe of performers paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a troupe of performers paint",[of]),_110144).


test('?- curt80("a crowd of onlookers paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a crowd of onlookers paint",[of]),_110144).


test('?- curt80("a curse of painters paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("a curse of painters paint",[of]),_110144).


test('?- curt80("a fleet of cars paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a fleet of cars paint",[of]),_110142).


test('?- curt80("a pair of shoes paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a pair of shoes paint",[of]),_110142).


test('?- curt80("a fleet of ships paint",[of])',[true(compound(_110142)),nondet]):-call(curt80("a fleet of ships paint",[of]),_110142).


test('?- curt80("an anthology of stories paint",[of])',[true(compound(_110144)),nondet]):-call(curt80("an anthology of stories paint",[of]),_110144).


test('?- curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_187118)),nondet]):-call(curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_187118).


test('?- curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_187088)),nondet]):-call(curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_187088).


test('?- curt80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_187226)),nondet]):-call(curt80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_187226).


test('?- curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_187070)),nondet]):-call(curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_187070).


test('?- curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_187118)),nondet]):-call(curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_187118).


test('?- curt80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_187214)),nondet]):-call(curt80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_187214).


test('?- curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_187172)),nondet]):-call(curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_187172).


test('?- curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_187364)),nondet]):-call(curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_187364).


test('?- curt80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_187136)),nondet]):-call(curt80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_187136).


test('?- curt80("Logged on player character",[descriptionTest])',[true(compound(_186944)),nondet]):-call(curt80("Logged on player character",[descriptionTest]),_186944).


test('?- curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_187202)),nondet]):-call(curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_187202).


test('?- curt80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_187148)),nondet]):-call(curt80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_187148).


test('?- curt80("Wesley is her son",[descriptionTest])',[true(compound(_186890)),nondet]):-call(curt80("Wesley is her son",[descriptionTest]),_186890).


test('?- curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_187538)),nondet]):-call(curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_187538).


test('?- curt80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_186968)),nondet]):-call(curt80("Counselor Deanna Troi is here",[descriptionTest]),_186968).


test('?- curt80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_187064)),nondet]):-call(curt80("Counselor Troi is the ship's main counselor",[descriptionTest]),_187064).


test('?- curt80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_187220)),nondet]):-call(curt80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_187220).


test('?- curt80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_187094)),nondet]):-call(curt80("Commander William Riker is here, staring at you",[descriptionTest]),_187094).


test('?- curt80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_187100)),nondet]):-call(curt80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_187100).


test('?- curt80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_187070)),nondet]):-call(curt80("He's in charge of keeping the crew in line",[descriptionTest]),_187070).


test('?- curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_187136)),nondet]):-call(curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_187136).


test('?- curt80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_187034)),nondet]):-call(curt80("Captain Picard is a very important man",[descriptionTest]),_187034).


test('?- curt80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_187136)),nondet]):-call(curt80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_187136).


test('?- curt80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_186980)),nondet]):-call(curt80("He's very smart, and very wise",[descriptionTest]),_186980).


test('?- curt80("Don\'t mess with him!",[descriptionTest])',[true(compound(_186908)),nondet]):-call(curt80("Don't mess with him!",[descriptionTest]),_186908).


test('?- curt80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_186986)),nondet]):-call(curt80("Guinan is here, tending the bar",[descriptionTest]),_186986).


test('?- curt80("Guinan is a strange being",[descriptionTest])',[true(compound(_186944)),nondet]):-call(curt80("Guinan is a strange being",[descriptionTest]),_186944).


test('?- curt80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_187652)),nondet]):-call(curt80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_187652).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_187154)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_187154).


test('?- curt80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_187154)),nondet]):-call(curt80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_187154).


test('?- curt80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_187454)),nondet]):-call(curt80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_187454).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_187148)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_187148).


test('?- curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_187172)),nondet]):-call(curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_187172).


test('?- curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_187442)),nondet]):-call(curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_187442).


test('?- curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_187364)),nondet]):-call(curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_187364).


test('?- curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_187154)),nondet]):-call(curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_187154).


test('?- curt80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_187034)),nondet]):-call(curt80("Livingston is Captain Picard's pet fish",[descriptionTest]),_187034).


test('?- curt80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_187286)),nondet]):-call(curt80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_187286).


test('?- curt80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_187136)),nondet]):-call(curt80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_187136).


test('?- curt80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_187004)),nondet]):-call(curt80("Spot is Data's orange coloured cat",[descriptionTest]),_187004).


test('?- curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_187526)),nondet]):-call(curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_187526).


test('?- curt80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_187148)),nondet]):-call(curt80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_187148).


test('?- curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_187130)),nondet]):-call(curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_187130).


test('?- curt80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_187472)),nondet]):-call(curt80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_187472).


test('?- curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_187118)),nondet]):-call(curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_187118).


test('?- curt80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_186986)),nondet]):-call(curt80("Alexander Rozhenko is Worf's son",[descriptionTest]),_186986).


test('?- curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_187268)),nondet]):-call(curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_187268).


test('?- curt80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_187184)),nondet]):-call(curt80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_187184).


test('?- curt80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_187130)),nondet]):-call(curt80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_187130).


test('?- curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_187532)),nondet]):-call(curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_187532).


test('?- curt80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_187010)),nondet]):-call(curt80("A large phaser rifle is lying here",[descriptionTest]),_187010).


test('?- curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_187604)),nondet]):-call(curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_187604).


test('?- curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_187208)),nondet]):-call(curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_187208).


test('?- curt80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187556)),nondet]):-call(curt80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187556).


test('?- curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_187208)),nondet]):-call(curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_187208).


test('?- curt80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187580)),nondet]):-call(curt80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187580).


test('?- curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_187184)),nondet]):-call(curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_187184).


test('?- curt80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187556)),nondet]):-call(curt80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187556).


test('?- curt80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_187106)),nondet]):-call(curt80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_187106).


test('?- curt80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_187646)),nondet]):-call(curt80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_187646).


test('?- curt80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_187076)),nondet]):-call(curt80("A Starfleet communication badge is lying here",[descriptionTest]),_187076).


test('?- curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_188114)),nondet]):-call(curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_188114).


test('?- curt80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_187070)),nondet]):-call(curt80("Worf's silver chain sash has been left here",[descriptionTest]),_187070).


test('?- curt80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_187682)),nondet]):-call(curt80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_187682).


test('?- curt80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_186962)),nondet]):-call(curt80("Geordi's VISOR is lying here",[descriptionTest]),_186962).


test('?- curt80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_188354)),nondet]):-call(curt80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_188354).


test('?- curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_187130)),nondet]):-call(curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_187130).


test('?- curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_187916)),nondet]):-call(curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_187916).


test('?- curt80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_187064)),nondet]):-call(curt80("A shard of dilithium crystal is lying here",[descriptionTest]),_187064).


test('?- curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_187718)),nondet]):-call(curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_187718).


test('?- curt80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_187076)),nondet]):-call(curt80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_187076).


test('?- curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_187688)),nondet]):-call(curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_187688).


test('?- curt80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_187088)),nondet]):-call(curt80("Commander Riker's trombone has been placed here",[descriptionTest]),_187088).


test('?- curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_187520)),nondet]):-call(curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_187520).


test('?- curt80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_187016)),nondet]):-call(curt80("A small cup of tea is sitting here",[descriptionTest]),_187016).


test('?- curt80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_187034)),nondet]):-call(curt80("A bottle of synthehol is standing here",[descriptionTest]),_187034).


test('?- curt80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_187046)),nondet]):-call(curt80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_187046).


test('?- curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_187070)),nondet]):-call(curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_187070).


test('?- curt80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_187082)),nondet]):-call(curt80("A small glass of prune juice is sitting here",[descriptionTest]),_187082).


test('?- curt80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_187052)),nondet]):-call(curt80("A bottle of Vulcan beer is standing here",[descriptionTest]),_187052).


test('?- curt80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_187124)),nondet]):-call(curt80("You find yourself in the middle of main engineering",[descriptionTest]),_187124).


test('?- curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_187244)),nondet]):-call(curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_187244).


test('?- curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_187544)),nondet]):-call(curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_187544).


test('?- curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_187352)),nondet]):-call(curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_187352).


test('?- curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_187280)),nondet]):-call(curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_187280).


test('?- curt80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_187460)),nondet]):-call(curt80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_187460).


test('?- curt80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_187052)),nondet]):-call(curt80("You're in the middle of Geordi's quarters",[descriptionTest]),_187052).


test('?- curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_187250)),nondet]):-call(curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_187250).


test('?- curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_187574)),nondet]):-call(curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_187574).


test('?- curt80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_187184)),nondet]):-call(curt80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_187184).


test('?- curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_187154)),nondet]):-call(curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_187154).


test('?- curt80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_187040)),nondet]):-call(curt80("You're in the middle of Data's quarters",[descriptionTest]),_187040).


test('?- curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_188102)),nondet]):-call(curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_188102).


test('?- curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_187316)),nondet]):-call(curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_187316).


test('?- curt80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_187340)),nondet]):-call(curt80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_187340).


test('?- curt80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_186968)),nondet]):-call(curt80("You're in the dimly lit Brig",[descriptionTest]),_186968).


test('?- curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_187358)),nondet]):-call(curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_187358).


test('?- curt80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_187436)),nondet]):-call(curt80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_187436).


test('?- curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_187730)),nondet]):-call(curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_187730).


test('?- curt80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_193958)),nondet]):-call(curt80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_193958).


test('?- curt80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_187442)),nondet]):-call(curt80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_187442).


test('?- curt80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_187046)),nondet]):-call(curt80("You're in the Enterprise transporter room",[descriptionTest]),_187046).


test('?- curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_187532)),nondet]):-call(curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_187532).


test('?- curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_187502)),nondet]):-call(curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_187502).


test('?- curt80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_187040)),nondet]):-call(curt80("You find yourself in a transporter beam",[descriptionTest]),_187040).


test('?- curt80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_187040)),nondet]):-call(curt80("All you can see is blue flashing light",[descriptionTest]),_187040).


test('?- curt80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_187196)),nondet]):-call(curt80("It feels as though your body is racing around at high speeds",[descriptionTest]),_187196).


test('?- curt80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_187316)),nondet]):-call(curt80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_187316).


test('?- curt80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_187244)),nondet]):-call(curt80("You step through the doors and find yourself in a large school room",[descriptionTest]),_187244).


test('?- curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_187622)),nondet]):-call(curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_187622).


test('?- curt80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_187376)),nondet]):-call(curt80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_187376).


test('?- curt80("You\'re in the turbolift",[descriptionTest])',[true(compound(_186926)),nondet]):-call(curt80("You're in the turbolift",[descriptionTest]),_186926).


test('?- curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_187304)),nondet]):-call(curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_187304).


test('?- curt80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_187196)),nondet]):-call(curt80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_187196).


test('?- curt80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_187184)),nondet]):-call(curt80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_187184).


test('?- curt80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_186938)),nondet]):-call(curt80("You're now on Holodeck 2",[descriptionTest]),_186938).


test('?- curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_187622)),nondet]):-call(curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_187622).


test('?- curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_187370)),nondet]):-call(curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_187370).


test('?- curt80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_187064)),nondet]):-call(curt80("Right now, this holodeck is not functioning",[descriptionTest]),_187064).


test('?- curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_187172)),nondet]):-call(curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_187172).


test('?- curt80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_187094)),nondet]):-call(curt80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_187094).


test('?- curt80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_187304)),nondet]):-call(curt80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_187304).


test('?- curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_187622)),nondet]):-call(curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_187622).


test('?- curt80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_186998)),nondet]):-call(curt80("You've arrived in Riker's quarters",[descriptionTest]),_186998).


test('?- curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_187574)),nondet]):-call(curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_187574).


test('?- curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_187508)),nondet]):-call(curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_187508).


test('?- curt80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_187112)),nondet]):-call(curt80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_187112).


test('?- curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_187748)),nondet]):-call(curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_187748).


test('?- curt80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_187544)),nondet]):-call(curt80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_187544).


test('?- curt80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_187016)),nondet]):-call(curt80("You emerge into a dark narrow alley",[descriptionTest]),_187016).


test('?- curt80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_187160)),nondet]):-call(curt80("Tall dark brick buildings block your way north and south",[descriptionTest]),_187160).


test('?- curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_187424)),nondet]):-call(curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_187424).


test('?- curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_187460)),nondet]):-call(curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_187460).


test('?- curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_187196)),nondet]):-call(curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_187196).


test('?- curt80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_187100)),nondet]):-call(curt80("The archway leading out of the holodeck is west",[descriptionTest]),_187100).


test('?- curt80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_187004)),nondet]):-call(curt80("You're in Doctor Crusher's quarters",[descriptionTest]),_187004).


test('?- curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_187400)),nondet]):-call(curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_187400).


test('?- curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_187490)),nondet]):-call(curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_187490).


test('?- curt80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_187232)),nondet]):-call(curt80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_187232).


test('?- curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_187856)),nondet]):-call(curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_187856).


test('?- curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_187328)),nondet]):-call(curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_187328).


test('?- curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_187724)),nondet]):-call(curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_187724).


test('?- curt80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_187196)),nondet]):-call(curt80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_187196).


test('?- curt80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_187124)),nondet]):-call(curt80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_187124).


test('?- curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_188018)),nondet]):-call(curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_188018).


test('?- curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_187196)),nondet]):-call(curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_187196).


test('?- curt80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_187106)),nondet]):-call(curt80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_187106).


test('?- curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_187298)),nondet]):-call(curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_187298).


test('?- curt80("A large grey door leads into space",[descriptionTest])',[true(compound(_187010)),nondet]):-call(curt80("A large grey door leads into space",[descriptionTest]),_187010).


test('?- curt80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_187196)),nondet]):-call(curt80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_187196).


test('?- curt80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_187268)),nondet]):-call(curt80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_187268).


test('?- curt80("You feel very cold",[descriptionTest])',[true(compound(_186896)),nondet]):-call(curt80("You feel very cold",[descriptionTest]),_186896).


test('?- curt80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_187166)),nondet]):-call(curt80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_187166).


test('?- curt80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_187052)),nondet]):-call(curt80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_187052).


test('?- curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_187664)),nondet]):-call(curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_187664).


test('?- curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_187388)),nondet]):-call(curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_187388).


test('?- curt80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_186938)),nondet]):-call(curt80("You're in Worf's quarters",[descriptionTest]),_186938).


test('?- curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_187382)),nondet]):-call(curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_187382).


test('?- curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_187796)),nondet]):-call(curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_187796).


test('?- curt80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_187004)),nondet]):-call(curt80("You emerge into the Enterprise gym",[descriptionTest]),_187004).


test('?- curt80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_187106)),nondet]):-call(curt80("The room is quite large, with a soft grey floor",[descriptionTest]),_187106).


test('?- curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_187514)),nondet]):-call(curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_187514).


test('?- curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_187478)),nondet]):-call(curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_187478).


test('?- curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_187166)),nondet]):-call(curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_187166).


test('?- curt80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_187232)),nondet]):-call(curt80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_187232).


test('?- curt80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_187322)),nondet]):-call(curt80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_187322).


test('?- curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_187616)),nondet]):-call(curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_187616).


test('?- curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_187634)),nondet]):-call(curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_187634).


test('?- curt80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_187088)),nondet]):-call(curt80("Two large windows offer a great view of space",[descriptionTest]),_187088).


test('?- curt80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_187340)),nondet]):-call(curt80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_187340).


test('?- curt80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_187016)),nondet]):-call(curt80("You're in the Enterprise science lab",[descriptionTest]),_187016).


test('?- curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_187406)),nondet]):-call(curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_187406).


test('?- curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_187904)),nondet]):-call(curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_187904).


test('?- curt80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_187160)),nondet]):-call(curt80("A complex looking computer console is facing this machine",[descriptionTest]),_187160).


test('?- curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_187316)),nondet]):-call(curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_187316).


test('?- curt80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_187076)),nondet]):-call(curt80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_187076).


test('?- curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_187310)),nondet]):-call(curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_187310).


test('?- curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_187682)),nondet]):-call(curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_187682).


test('?- curt80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_187484)),nondet]):-call(curt80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_187484).


test('?- curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_187880)),nondet]):-call(curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_187880).


test('?- curt80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_187082)),nondet]):-call(curt80("You're standing in Captain Picard's ready room",[descriptionTest]),_187082).


test('?- curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_187520)),nondet]):-call(curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_187520).


test('?- curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_187424)),nondet]):-call(curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_187424).


test('?- curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_187622)),nondet]):-call(curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_187622).


test('?- curt80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_187202)),nondet]):-call(curt80("This is where the Captain makes all of his important decisions",[descriptionTest]),_187202).


test('?- curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_187310)),nondet]):-call(curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_187310).


test('?- curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_187622)),nondet]):-call(curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_187622).


test('?- curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_187430)),nondet]):-call(curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_187430).


test('?- curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_187226)),nondet]):-call(curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_187226).


test('?- curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_187574)),nondet]):-call(curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_187574).


test('?- curt80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_187172)),nondet]):-call(curt80("This is where the ship's pilot and information officer sit",[descriptionTest]),_187172).


test('?- curt80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_187094)),nondet]):-call(curt80("You're in the conference room of the Enterprise",[descriptionTest]),_187094).


test('?- curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_187640)),nondet]):-call(curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_187640).


test('?- curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_187262)),nondet]):-call(curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_187262).


test('?- curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_187358)),nondet]):-call(curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_187358).


test('?- curt80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_187190)),nondet]):-call(curt80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_187190).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_110152)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_110152).


test('?- curt80("no two owners eat pizza",[sanity])',[true(compound(_110144)),nondet]):-call(curt80("no two owners eat pizza",[sanity]),_110144).


test('?- curt80("no three owners eat pizza",[sanity])',[true(compound(_110144)),nondet]):-call(curt80("no three owners eat pizza",[sanity]),_110144).


test('?- curt80("no three owners eat the same pizza",[sanity])',[true(compound(_110146)),nondet]):-call(curt80("no three owners eat the same pizza",[sanity]),_110146).


test('?- curt80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_110148)),nondet]):-call(curt80("no three owners eat the same kind of pizza",[sanity]),_110148).


test('?- curt80("no owners eat the same pizza",[sanity])',[true(compound(_110144)),nondet]):-call(curt80("no owners eat the same pizza",[sanity]),_110144).


test('?- curt80("no owners eat the same kind of pizza",[sanity])',[true(compound(_110146)),nondet]):-call(curt80("no owners eat the same kind of pizza",[sanity]),_110146).


test('?- curt80("there are 5 houses",[sanity])',[true(compound(_110142)),nondet]):-call(curt80("there are 5 houses",[sanity]),_110142).


test('?- curt80("there are not 5 houses",[sanity])',[true(compound(_110142)),nondet]):-call(curt80("there are not 5 houses",[sanity]),_110142).


test('?- curt80("there are not zero houses",[sanity])',[true(compound(_110144)),nondet]):-call(curt80("there are not zero houses",[sanity]),_110144).


test('?- curt80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_110152)),nondet]):-call(curt80(noun_phrase("less than 2 owners"),[sanity,bug]),_110152).


test('?- curt80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_110146)),nondet]):-call(curt80(noun_phrase("at most the 5 owners"),[sanity]),_110146).


test('?- curt80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_110146)),nondet]):-call(curt80(noun_phrase("at most 5 owners"),[sanity]),_110146).


test('?- curt80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_110146)),nondet]):-call(curt80(noun_phrase("less than 3 owners"),[sanity]),_110146).


test('?- curt80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_110148)),nondet]):-call(curt80(noun_phrase("at most 50 percent of owners"),[sanity]),_110148).


test('?- curt80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_110152)),nondet]):-call(curt80(noun_phrase("no three owners"),[sanity,no_working]),_110152).


test('?- curt80("terry writes a non-program.",[tell])',[true(compound(_110144)),nondet]):-call(curt80("terry writes a non-program.",[tell]),_110144).


test('?- curt80("every nonhuman programmer writes a program.",[tell])',[true(compound(_110148)),nondet]):-call(curt80("every nonhuman programmer writes a program.",[tell]),_110148).


test('?- curt80("every human programmer writes a not a program.",[tell])',[true(compound(_110148)),nondet]):-call(curt80("every human programmer writes a not a program.",[tell]),_110148).


test('?- curt80("every human programmer happily writes a not a program.",[tell])',[true(compound(_110150)),nondet]):-call(curt80("every human programmer happily writes a not a program.",[tell]),_110150).


:- end_tests(curt80).



:- begin_tests(e2c).



test('?- e2c("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_110192)),nondet]):-call(e2c("His friends are liked by hers.",[bad_juju,sanity]),_110192).


test('?- e2c("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_110194)),nondet]):-call(e2c("Her friends are not liked by his.",[bad_juju,sanity]),_110194).


test('?- e2c("Do their friends like each other?",[bad_juju,feature])',[true(compound(_110194)),nondet]):-call(e2c("Do their friends like each other?",[bad_juju,feature]),_110194).


test('?- e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_110136),sanity])',[true(compound(_110198)),nondet]):-call(e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_110136),sanity]),_110198).


test('?- e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_110134),sanity])',[true(compound(_110196)),nondet]):-call(e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_110134),sanity]),_110196).


test('?- e2c("There are 5 houses with five different colors.",[riddle(_110138),sanity])',[true(compound(_110200)),nondet]):-call(e2c("There are 5 houses with five different colors.",[riddle(_110138),sanity]),_110200).


test('?- e2c("There are 5 houses",[riddle_prep,sanity])',[true(compound(_110190)),nondet]):-call(e2c("There are 5 houses",[riddle_prep,sanity]),_110190).


test('?- e2c("Each house has a different color",[riddle_prep,sanity])',[true(compound(_110194)),nondet]):-call(e2c("Each house has a different color",[riddle_prep,sanity]),_110194).


test('?- e2c("In each house lives a person with a different nationality.",[riddle(_110142),sanity])',[true(compound(_110204)),nondet]):-call(e2c("In each house lives a person with a different nationality.",[riddle(_110142),sanity]),_110204).


test('?- e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_110216)),nondet]):-call(e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_110216).


test('?- e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_110204)),nondet]):-call(e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_110204).


test('?- e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_110202)),nondet]):-call(e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_110202).


test('?- e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_110206)),nondet]):-call(e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_110206).


test('?- e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_110210)),nondet]):-call(e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_110210).


test('?- e2c("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_110202)),nondet]):-call(e2c("No owners have the same pet.",[riddle(1),sanity,regression]),_110202).


test('?- e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_110206)),nondet]):-call(e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_110206).


test('?- e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_110200)),nondet]):-call(e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_110200).


test('?- e2c("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_110204)),nondet]):-call(e2c("No two owners have the same pet.",[riddle(1),sanity,regression]),_110204).


test('?- e2c("The brit lives in the red house.",[riddle(_110136),sanity])',[true(compound(_110198)),nondet]):-call(e2c("The brit lives in the red house.",[riddle(_110136),sanity]),_110198).


test('?- e2c("The swede keeps dogs as pets.",[riddle(_110134),sanity])',[true(compound(_110196)),nondet]):-call(e2c("The swede keeps dogs as pets.",[riddle(_110134),sanity]),_110196).


test('?- e2c("A dane drinks tea.",[riddle(_110132),sanity])',[true(compound(_110194)),nondet]):-call(e2c("A dane drinks tea.",[riddle(_110132),sanity]),_110194).


test('?- e2c("The green house is on the left of the white house.",[riddle(_110140),sanity])',[true(compound(_110202)),nondet]):-call(e2c("The green house is on the left of the white house.",[riddle(_110140),sanity]),_110202).


test('?- e2c("The green house\'s owner drinks coffee.",[riddle(_110136),sanity])',[true(compound(_110198)),nondet]):-call(e2c("The green house's owner drinks coffee.",[riddle(_110136),sanity]),_110198).


test('?- e2c("The person who smokes Pall Mall rears birds.",[riddle(_110138),sanity,regression])',[true(compound(_110206)),nondet]):-call(e2c("The person who smokes Pall Mall rears birds.",[riddle(_110138),sanity,regression]),_110206).


test('?- e2c("The owner of the yellow house smokes Dunhill.",[riddle(_110138),sanity])',[true(compound(_110200)),nondet]):-call(e2c("The owner of the yellow house smokes Dunhill.",[riddle(_110138),sanity]),_110200).


test('?- e2c("The man living in the center house drinks milk.",[riddle(_110140),sanity])',[true(compound(_110202)),nondet]):-call(e2c("The man living in the center house drinks milk.",[riddle(_110140),sanity]),_110202).


test('?- e2c("The Norwegian lives in the first house .",[riddle(_110138),sanity])',[true(compound(_110200)),nondet]):-call(e2c("The Norwegian lives in the first house .",[riddle(_110138),sanity]),_110200).


test('?- e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_110144),sanity])',[true(compound(_110206)),nondet]):-call(e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_110144),sanity]),_110206).


test('?- e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_110144),sanity])',[true(compound(_110206)),nondet]):-call(e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_110144),sanity]),_110206).


test('?- e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_110138),sanity])',[true(compound(_110200)),nondet]):-call(e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_110138),sanity]),_110200).


test('?- e2c("The German smokes Prince.",[riddle(_110134),sanity])',[true(compound(_110196)),nondet]):-call(e2c("The German smokes Prince.",[riddle(_110134),sanity]),_110196).


test('?- e2c("The Norwegian lives next to the blue house.",[riddle(_110138),sanity])',[true(compound(_110200)),nondet]):-call(e2c("The Norwegian lives next to the blue house.",[riddle(_110138),sanity]),_110200).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_110142),sanity])',[true(compound(_110204)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_110142),sanity]),_110204).


test('?- e2c("Who owns the fish?",[riddle(_110132),sanity])',[true(compound(_110194)),nondet]):-call(e2c("Who owns the fish?",[riddle(_110132),sanity]),_110194).


test('?- e2c("One woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("One woman paints.",[quants]),_110184).


test('?- e2c("No woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("No woman paints.",[quants]),_110184).


test('?- e2c("Some woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Some woman paints.",[quants]),_110184).


test('?- e2c("Every woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Every woman paints.",[quants]),_110184).


test('?- e2c("Each woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Each woman paints.",[quants]),_110184).


test('?- e2c("Any woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Any woman paints.",[quants]),_110184).


test('?- e2c("The woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("The woman paints.",[quants]),_110184).


test('?- e2c("The not woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("The not woman paints.",[quants]),_110184).


test('?- e2c("Not a woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Not a woman paints.",[quants]),_110184).


test('?- e2c("Not one woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Not one woman paints.",[quants]),_110184).


test('?- e2c("Not no woman paints.",[quants_neg_postcond])',[true(compound(_110184)),nondet]):-call(e2c("Not no woman paints.",[quants_neg_postcond]),_110184).


test('?- e2c("Not some woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Not some woman paints.",[quants]),_110184).


test('?- e2c("Not every woman paints.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("Not every woman paints.",[quants]),_110186).


test('?- e2c("Not each woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Not each woman paints.",[quants]),_110184).


test('?- e2c("Not any woman paints.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Not any woman paints.",[quants]),_110184).


test('?- e2c("The women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("The women paint.",[quants]),_110184).


test('?- e2c("Women paint.",[quants])',[true(compound(_110182)),nondet]):-call(e2c("Women paint.",[quants]),_110182).


test('?- e2c("Some women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Some women paint.",[quants]),_110184).


test('?- e2c("No women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("No women paint.",[quants]),_110184).


test('?- e2c("All women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("All women paint.",[quants]),_110184).


test('?- e2c("Any women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Any women paint.",[quants]),_110184).


test('?- e2c("Not women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Not women paint.",[quants]),_110184).


test('?- e2c("Not no women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Not no women paint.",[quants]),_110184).


test('?- e2c("Not all women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Not all women paint.",[quants]),_110184).


test('?- e2c("Not any women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Not any women paint.",[quants]),_110184).


test('?- e2c("The three women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("The three women paint.",[quants]),_110184).


test('?- e2c("Three women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Three women paint.",[quants]),_110184).


test('?- e2c("Some three women paint.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("Some three women paint.",[quants]),_110186).


test('?- e2c("No three women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("No three women paint.",[quants]),_110184).


test('?- e2c("Every three women paint.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("Every three women paint.",[quants]),_110186).


test('?- e2c("All three women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("All three women paint.",[quants]),_110184).


test('?- e2c("Any three women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Any three women paint.",[quants]),_110184).


test('?- e2c("Not three women paint.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("Not three women paint.",[quants]),_110184).


test('?- e2c("Not some three women paint.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("Not some three women paint.",[quants]),_110186).


test('?- e2c("Not no three women paint.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("Not no three women paint.",[quants]),_110186).


test('?- e2c("Not all three women paint.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("Not all three women paint.",[quants]),_110186).


test('?- e2c("Not every three women paint.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("Not every three women paint.",[quants]),_110186).


test('?- e2c("Not any three women paint.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("Not any three women paint.",[quants]),_110186).


test('?- e2c("Not three of the women paint.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("Not three of the women paint.",[quants]),_110186).


test('?- e2c("Not some of the three women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("Not some of the three women paint.",[quants]),_110188).


test('?- e2c("Not no three of the women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("Not no three of the women paint.",[quants]),_110188).


test('?- e2c("Not all three of the women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("Not all three of the women paint.",[quants]),_110188).


test('?- e2c("Not every three of the women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("Not every three of the women paint.",[quants]),_110188).


test('?- e2c("Not any three of the women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("Not any three of the women paint.",[quants]),_110188).


test('?- e2c("Not three of the four women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("Not three of the four women paint.",[quants]),_110188).


test('?- e2c("Not none of three out of the four women paint.",[quants])',[true(compound(_110190)),nondet]):-call(e2c("Not none of three out of the four women paint.",[quants]),_110190).


test('?- e2c("Not all three of the four women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("Not all three of the four women paint.",[quants]),_110188).


test('?- e2c("Not any three of the four women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("Not any three of the four women paint.",[quants]),_110188).


test('?- e2c("Three of the four women paint.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("Three of the four women paint.",[quants]),_110186).


test('?- e2c("Three out of the four women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("Three out of the four women paint.",[quants]),_110188).


test('?- e2c("All three of the four women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("All three of the four women paint.",[quants]),_110188).


test('?- e2c("Any three of the four women paint.",[quants])',[true(compound(_110188)),nondet]):-call(e2c("Any three of the four women paint.",[quants]),_110188).


test('?- e2c("I paint",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("I paint",[pronoun]),_110182).


test('?- e2c("you paint",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("you paint",[pronoun]),_110182).


test('?- e2c("We paint",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("We paint",[pronoun]),_110182).


test('?- e2c("None paint",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("None paint",[pronoun]),_110182).


test('?- e2c("They paint",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("They paint",[pronoun]),_110182).


test('?- e2c("Some paint",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("Some paint",[pronoun]),_110182).


test('?- e2c("It paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("It paints",[pronoun]),_110182).


test('?- e2c("he paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("he paints",[pronoun]),_110182).


test('?- e2c("She paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("She paints",[pronoun]),_110182).


test('?- e2c("Someone paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("Someone paints",[pronoun]),_110182).


test('?- e2c("Anybody paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("Anybody paints",[pronoun]),_110182).


test('?- e2c("Anyone paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("Anyone paints",[pronoun]),_110182).


test('?- e2c("Anything paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Anything paints",[pronoun]),_110184).


test('?- e2c("Everybody paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Everybody paints",[pronoun]),_110184).


test('?- e2c("Everyone paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Everyone paints",[pronoun]),_110184).


test('?- e2c("Everything paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Everything paints",[pronoun]),_110184).


test('?- e2c("Nobody paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("Nobody paints",[pronoun]),_110182).


test('?- e2c("No one paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("No one paints",[pronoun]),_110182).


test('?- e2c("Nothing paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("Nothing paints",[pronoun]),_110182).


test('?- e2c("One paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("One paints",[pronoun]),_110182).


test('?- e2c("Somebody paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Somebody paints",[pronoun]),_110184).


test('?- e2c("Something paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Something paints",[pronoun]),_110184).


test('?- e2c("Not anybody paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Not anybody paints",[pronoun]),_110184).


test('?- e2c("Not anyone paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Not anyone paints",[pronoun]),_110184).


test('?- e2c("Not anything paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Not anything paints",[pronoun]),_110184).


test('?- e2c("Not everybody paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Not everybody paints",[pronoun]),_110184).


test('?- e2c("Not everyone paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Not everyone paints",[pronoun]),_110184).


test('?- e2c("Not everything paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Not everything paints",[pronoun]),_110184).


test('?- e2c("Not nothing paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Not nothing paints",[pronoun]),_110184).


test('?- e2c("Not one paints",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("Not one paints",[pronoun]),_110182).


test('?- e2c("Not somebody paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Not somebody paints",[pronoun]),_110184).


test('?- e2c("Not something paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("Not something paints",[pronoun]),_110184).


test('?- e2c("She likes i",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("She likes i",[pronoun]),_110182).


test('?- e2c("She likes me",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("She likes me",[pronoun]),_110182).


test('?- e2c("She likes you",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("She likes you",[pronoun]),_110182).


test('?- e2c("She likes it",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("She likes it",[pronoun]),_110182).


test('?- e2c("She likes us",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("She likes us",[pronoun]),_110182).


test('?- e2c("She likes them",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("She likes them",[pronoun]),_110182).


test('?- e2c("She likes no one",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("She likes no one",[pronoun]),_110184).


test('?- e2c("She likes none",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("She likes none",[pronoun]),_110182).


test('?- e2c("She likes him",[pronoun])',[true(compound(_110182)),nondet]):-call(e2c("She likes him",[pronoun]),_110182).


test('?- e2c("She likes herself",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("She likes herself",[pronoun]),_110184).


test('?- e2c("She likes himself",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("She likes himself",[pronoun]),_110184).


test('?- e2c("It is us that paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("It is us that paints",[pronoun]),_110184).


test('?- e2c("It is them that paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("It is them that paints",[pronoun]),_110184).


test('?- e2c("It is he that paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("It is he that paints",[pronoun]),_110184).


test('?- e2c("It is she that paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("It is she that paints",[pronoun]),_110184).


test('?- e2c("It is her that paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("It is her that paints",[pronoun]),_110184).


test('?- e2c("It is him that paints",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("It is him that paints",[pronoun]),_110184).


test('?- e2c("We are us that paint",[pronoun])',[true(compound(_110184)),nondet]):-call(e2c("We are us that paint",[pronoun]),_110184).


test('?- e2c("We are all of us that paint",[pronoun])',[true(compound(_110186)),nondet]):-call(e2c("We are all of us that paint",[pronoun]),_110186).


test('?- e2c("It is everybody that paints",[pronoun])',[true(compound(_110186)),nondet]):-call(e2c("It is everybody that paints",[pronoun]),_110186).


test('?- e2c("Every man that paints likes monet.",[bratko])',[true(compound(_110188)),nondet]):-call(e2c("Every man that paints likes monet.",[bratko]),_110188).


test('?- e2c("A woman that admires John paints.",[bratko])',[true(compound(_110188)),nondet]):-call(e2c("A woman that admires John paints.",[bratko]),_110188).


test('?- e2c("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_110194)),nondet]):-call(e2c("Every woman that likes a man that admires monet paints.",[bratko]),_110194).


test('?- e2c("John likes Annie.",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("John likes Annie.",[bratko]),_110184).


test('?- e2c("Annie likes a man that admires monet.",[bratko])',[true(compound(_110188)),nondet]):-call(e2c("Annie likes a man that admires monet.",[bratko]),_110188).


test('?- e2c("Bertrand Russell wrote principia.",[bratko])',[true(compound(_110188)),nondet]):-call(e2c("Bertrand Russell wrote principia.",[bratko]),_110188).


test('?- e2c("An author wrote principia.",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("An author wrote principia.",[bratko]),_110186).


test('?- e2c("Iraq is a country.",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("Iraq is a country.",[bratko]),_110184).


test('?- e2c("A happy author wrote principia.",[bratko])',[true(compound(_110188)),nondet]):-call(e2c("A happy author wrote principia.",[bratko]),_110188).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_110184).


test('?- e2c("Bertrand is an author.",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("Bertrand is an author.",[bratko]),_110184).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_110184).


test('?- e2c("Every author is a programmer.",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("Every author is a programmer.",[bratko]),_110186).


test('?- e2c("Is Bertrand an programmer?",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("Is Bertrand an programmer?",[bratko]),_110186).


test('?- e2c("What is a author?",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("What is a author?",[bratko]),_110184).


test('?- e2c("What did Bertrand write?",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("What did Bertrand write?",[bratko]),_110186).


test('?- e2c("What is a book?",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("What is a book?",[bratko]),_110184).


test('?- e2c("Principia is a book.",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("Principia is a book.",[bratko]),_110184).


test('?- e2c("Bertrand is Bertrand.",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("Bertrand is Bertrand.",[bratko]),_110184).


test('?- e2c("Shrdlu halts.",[bratko])',[true(compound(_110182)),nondet]):-call(e2c("Shrdlu halts.",[bratko]),_110182).


test('?- e2c("Every student wrote a program.",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("Every student wrote a program.",[bratko]),_110186).


test('?- e2c("Terry writes a program.",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("Terry writes a program.",[bratko]),_110186).


test('?- e2c("Terry writes a program that halts.",[bratko])',[true(compound(_110188)),nondet]):-call(e2c("Terry writes a program that halts.",[bratko]),_110188).


test('?- e2c("An author of every book wrote a program.",[bratko])',[true(compound(_110190)),nondet]):-call(e2c("An author of every book wrote a program.",[bratko]),_110190).


test('?- e2c("A man hapilly maried paints.",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("A man hapilly maried paints.",[bratko]),_110186).


test('?- e2c("A hapilly maried man paints.",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("A hapilly maried man paints.",[bratko]),_110186).


test('?- e2c("A man who knows paints.",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("A man who knows paints.",[bratko]),_110186).


test('?- e2c("A man gives something.",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("A man gives something.",[bratko]),_110184).


test('?- e2c("A man gives his word.",[bratko])',[true(compound(_110184)),nondet]):-call(e2c("A man gives his word.",[bratko]),_110184).


test('?- e2c("A man of his word paints.",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("A man of his word paints.",[bratko]),_110186).


test('?- e2c("A man paints.",[bratko])',[true(compound(_110182)),nondet]):-call(e2c("A man paints.",[bratko]),_110182).


test('?- e2c("A man that paints paints.",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("A man that paints paints.",[bratko]),_110186).


test('?- e2c("A man walks.",[bratko])',[true(compound(_110182)),nondet]):-call(e2c("A man walks.",[bratko]),_110182).


test('?- e2c("A man that walks paints.",[bratko])',[true(compound(_110186)),nondet]):-call(e2c("A man that walks paints.",[bratko]),_110186).


test('?- e2c("It halts.",[bratko])',[true(compound(_110182)),nondet]):-call(e2c("It halts.",[bratko]),_110182).


test('?- e2c("A man of his word that walks paints.",[bratko])',[true(compound(_110188)),nondet]):-call(e2c("A man of his word that walks paints.",[bratko]),_110188).


test('?- e2c("The cost of what the product is changes.",[bratko])',[true(compound(_110190)),nondet]):-call(e2c("The cost of what the product is changes.",[bratko]),_110190).


test('?- e2c("We need a virtual machine server.",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("We need a virtual machine server.",[aindy]),_110188).


test('?- e2c("The virtual machine server should have several VMs.",[aindy])',[true(compound(_110192)),nondet]):-call(e2c("The virtual machine server should have several VMs.",[aindy]),_110192).


test('?- e2c("One VM should be the POSI VM.",[aindy])',[true(compound(_110186)),nondet]):-call(e2c("One VM should be the POSI VM.",[aindy]),_110186).


test('?- e2c("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("One VM should be the FRDCSA.org VM.",[aindy]),_110188).


test('?- e2c("One VM should be the mail server.",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("One VM should be the mail server.",[aindy]),_110188).


test('?- e2c("One computer should be the backup server.",[aindy])',[true(compound(_110190)),nondet]):-call(e2c("One computer should be the backup server.",[aindy]),_110190).


test('?- e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_110206)),nondet]):-call(e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_110206).


test('?- e2c("I need a fast computer for work.",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("I need a fast computer for work.",[aindy]),_110188).


test('?- e2c("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_110198)),nondet]):-call(e2c("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_110198).


test('?- e2c("I need a dedicated computer for network security research.",[aindy])',[true(compound(_110194)),nondet]):-call(e2c("I need a dedicated computer for network security research.",[aindy]),_110194).


test('?- e2c("I need a machine to run Tails on.",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("I need a machine to run Tails on.",[aindy]),_110188).


test('?- e2c("I need a machine off the network for airgap security.",[aindy])',[true(compound(_110192)),nondet]):-call(e2c("I need a machine off the network for airgap security.",[aindy]),_110192).


test('?- e2c("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_110198)),nondet]):-call(e2c("One VM should be the game server for running game development projects.",[aindy]),_110198).


test('?- e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_110192)),nondet]):-call(e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_110192).


test('?- e2c("I could read about how to build a private watson.",[aindy])',[true(compound(_110192)),nondet]):-call(e2c("I could read about how to build a private watson.",[aindy]),_110192).


test('?- e2c("Need backups.",[aindy])',[true(compound(_110182)),nondet]):-call(e2c("Need backups.",[aindy]),_110182).


test('?- e2c("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_110196)),nondet]):-call(e2c("Practice setting up backups of a machine to a different machine.",[aindy]),_110196).


test('?- e2c("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_110194)),nondet]):-call(e2c("Set up schedules for updating the software on all machines.",[aindy]),_110194).


test('?- e2c("Read books on server room layout.",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("Read books on server room layout.",[aindy]),_110188).


test('?- e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_110196)),nondet]):-call(e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_110196).


test('?- e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_110198)),nondet]):-call(e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_110198).


test('?- e2c("I want a gaming computer.  Do I?",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("I want a gaming computer.  Do I?",[aindy]),_110188).


test('?- e2c("I want a windows 7 computer for work.",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("I want a windows 7 computer for work.",[aindy]),_110188).


test('?- e2c("I want a fast linux computer for work.",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("I want a fast linux computer for work.",[aindy]),_110188).


test('?- e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_110208)),nondet]):-call(e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_110208).


test('?- e2c("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_110194)),nondet]):-call(e2c("I could install a fresh operating system on justin for work.",[aindy]),_110194).


test('?- e2c("I probably want a separate git computer.",[aindy])',[true(compound(_110190)),nondet]):-call(e2c("I probably want a separate git computer.",[aindy]),_110190).


test('?- e2c("I need to start buying servers.",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("I need to start buying servers.",[aindy]),_110188).


test('?- e2c("I want a rackmount case for servers.",[aindy])',[true(compound(_110188)),nondet]):-call(e2c("I want a rackmount case for servers.",[aindy]),_110188).


test('?- e2c("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_110194)),nondet]):-call(e2c("Each african country is bordered by 2 oceans.",[chat80(tell)]),_110194).


test('?- e2c("2 oceans border each african country.",[chat80(tell)])',[true(compound(_110192)),nondet]):-call(e2c("2 oceans border each african country.",[chat80(tell)]),_110192).


test('?- e2c("There are 10 large cars.",[quants])',[true(compound(_110186)),nondet]):-call(e2c("There are 10 large cars.",[quants]),_110186).


test('?- e2c("There are 10 oceans.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("There are 10 oceans.",[quants]),_110184).


test('?- e2c("There are 10 women.",[quants])',[true(compound(_110184)),nondet]):-call(e2c("There are 10 women.",[quants]),_110184).


test('?- e2c("An ocean borders an African country.",[chat80(tell)])',[true(compound(_110192)),nondet]):-call(e2c("An ocean borders an African country.",[chat80(tell)]),_110192).


test('?- e2c("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_110200)),nondet]):-call(e2c("What is the ocean that borders african countries and that borders asian countries?",[tell]),_110200).


test('?- e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_110202)),nondet]):-call(e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_110202).


test('?- e2c("Bertrand wrote a book.",[bratko(book)])',[true(compound(_110188)),nondet]):-call(e2c("Bertrand wrote a book.",[bratko(book)]),_110188).


test('?- e2c("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_110190)),nondet]):-call(e2c("Bertrand wrote nothing.",[bratko(book)]),_110190).


test('?- e2c("Bertrand wrote.",[bratko(book)])',[true(compound(_110188)),nondet]):-call(e2c("Bertrand wrote.",[bratko(book)]),_110188).


test('?- e2c("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_110192)),nondet]):-call(e2c("Bertrand wrote a book about Gottlob.",[bratko(book)]),_110192).


test('?- e2c("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_110190)),nondet]):-call(e2c("Bertrand wrote about Gottlob.",[bratko(book)]),_110190).


test('?- e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_110192)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_110192).


test('?- e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_110194)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_110194).


test('?- e2c("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_110192)),nondet]):-call(e2c("What did alfred write to Bertrand?",[bratko(book)]),_110192).


test('?- e2c("Alfred wrote a letter.",[bratko(book)])',[true(compound(_110188)),nondet]):-call(e2c("Alfred wrote a letter.",[bratko(book)]),_110188).


test('?- e2c("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_110192)),nondet]):-call(e2c("Alfred wrote a letter to Bertrand.",[bratko(book)]),_110192).


test('?- e2c("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_110192)),nondet]):-call(e2c("Alfred wrote something to Bertrand.",[bratko(book)]),_110192).


test('?- e2c("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_110190)),nondet]):-call(e2c("Alfred wrote to Bertrand.",[bratko(book)]),_110190).


test('?- e2c("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_110192)),nondet]):-call(e2c("Alfred wrote to Bertrand a letter.",[bratko(book)]),_110192).


test('?- e2c("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_110192)),nondet]):-call(e2c("Alfred wrote Bertrand a letter.",[bratko(book)]),_110192).


test('?- e2c("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_110192)),nondet]):-call(e2c("Who did alfred write a letter to?",[bratko(book)]),_110192).


test('?- e2c("Alfred gave it.",[bratko(book)])',[true(compound(_110188)),nondet]):-call(e2c("Alfred gave it.",[bratko(book)]),_110188).


test('?- e2c("Alfred gave a book.",[bratko(book)])',[true(compound(_110188)),nondet]):-call(e2c("Alfred gave a book.",[bratko(book)]),_110188).


test('?- e2c("a pride of lions paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a pride of lions paint",[of]),_110184).


test('?- e2c("a flock of birds paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a flock of birds paint",[of]),_110184).


test('?- e2c("a litter of pups paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a litter of pups paint",[of]),_110184).


test('?- e2c("a prickle of porcupines paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a prickle of porcupines paint",[of]),_110186).


test('?- e2c("a litter of cubs paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a litter of cubs paint",[of]),_110184).


test('?- e2c("a pack of dogs paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a pack of dogs paint",[of]),_110184).


test('?- e2c("a colony of beavers paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a colony of beavers paint",[of]),_110186).


test('?- e2c("a gaggle of geese paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a gaggle of geese paint",[of]),_110186).


test('?- e2c("a family of otters paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a family of otters paint",[of]),_110186).


test('?- e2c("a huddle of walruses paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a huddle of walruses paint",[of]),_110186).


test('?- e2c("a herd of deer paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a herd of deer paint",[of]),_110184).


test('?- e2c("a culture of bacteria paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a culture of bacteria paint",[of]),_110186).


test('?- e2c("a swarm of bees paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a swarm of bees paint",[of]),_110184).


test('?- e2c("a bed of clams paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a bed of clams paint",[of]),_110184).


test('?- e2c("a school of cod paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a school of cod paint",[of]),_110184).


test('?- e2c("a herd of dinosaurs paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a herd of dinosaurs paint",[of]),_110186).


test('?- e2c("a mess of iguanas paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a mess of iguanas paint",[of]),_110186).


test('?- e2c("a mob of wombats paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a mob of wombats paint",[of]),_110184).


test('?- e2c("a pod of pelicans paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a pod of pelicans paint",[of]),_110186).


test('?- e2c("a troop of boy scouts paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a troop of boy scouts paint",[of]),_110186).


test('?- e2c("a team of athletes paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a team of athletes paint",[of]),_110186).


test('?- e2c("a panel of experts paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a panel of experts paint",[of]),_110186).


test('?- e2c("a crew of sailors paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a crew of sailors paint",[of]),_110186).


test('?- e2c("a band of robbers paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a band of robbers paint",[of]),_110186).


test('?- e2c("a troupe of performers paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a troupe of performers paint",[of]),_110186).


test('?- e2c("a crowd of onlookers paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a crowd of onlookers paint",[of]),_110186).


test('?- e2c("a curse of painters paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("a curse of painters paint",[of]),_110186).


test('?- e2c("a fleet of cars paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a fleet of cars paint",[of]),_110184).


test('?- e2c("a pair of shoes paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a pair of shoes paint",[of]),_110184).


test('?- e2c("a fleet of ships paint",[of])',[true(compound(_110184)),nondet]):-call(e2c("a fleet of ships paint",[of]),_110184).


test('?- e2c("an anthology of stories paint",[of])',[true(compound(_110186)),nondet]):-call(e2c("an anthology of stories paint",[of]),_110186).


test('?- e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_187160)),nondet]):-call(e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_187160).


test('?- e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_187130)),nondet]):-call(e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_187130).


test('?- e2c("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_187268)),nondet]):-call(e2c("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_187268).


test('?- e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_187112)),nondet]):-call(e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_187112).


test('?- e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_187160)),nondet]):-call(e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_187160).


test('?- e2c("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_187256)),nondet]):-call(e2c("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_187256).


test('?- e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_187214)),nondet]):-call(e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_187214).


test('?- e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_187406)),nondet]):-call(e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_187406).


test('?- e2c("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_187178)),nondet]):-call(e2c("He stowed super-human strength, and is extremely tough",[descriptionTest]),_187178).


test('?- e2c("Logged on player character",[descriptionTest])',[true(compound(_186986)),nondet]):-call(e2c("Logged on player character",[descriptionTest]),_186986).


test('?- e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_187244)),nondet]):-call(e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_187244).


test('?- e2c("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_187190)),nondet]):-call(e2c("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_187190).


test('?- e2c("Wesley is her son",[descriptionTest])',[true(compound(_186932)),nondet]):-call(e2c("Wesley is her son",[descriptionTest]),_186932).


test('?- e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_187580)),nondet]):-call(e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_187580).


test('?- e2c("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_187010)),nondet]):-call(e2c("Counselor Deanna Troi is here",[descriptionTest]),_187010).


test('?- e2c("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_187106)),nondet]):-call(e2c("Counselor Troi is the ship's main counselor",[descriptionTest]),_187106).


test('?- e2c("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_187262)),nondet]):-call(e2c("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_187262).


test('?- e2c("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_187136)),nondet]):-call(e2c("Commander William Riker is here, staring at you",[descriptionTest]),_187136).


test('?- e2c("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_187142)),nondet]):-call(e2c("Commander Riker is the Enterprise's first officer",[descriptionTest]),_187142).


test('?- e2c("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_187112)),nondet]):-call(e2c("He's in charge of keeping the crew in line",[descriptionTest]),_187112).


test('?- e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_187178)),nondet]):-call(e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_187178).


test('?- e2c("Captain Picard is a very important man",[descriptionTest])',[true(compound(_187076)),nondet]):-call(e2c("Captain Picard is a very important man",[descriptionTest]),_187076).


test('?- e2c("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_187178)),nondet]):-call(e2c("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_187178).


test('?- e2c("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_187022)),nondet]):-call(e2c("He's very smart, and very wise",[descriptionTest]),_187022).


test('?- e2c("Don\'t mess with him!",[descriptionTest])',[true(compound(_186950)),nondet]):-call(e2c("Don't mess with him!",[descriptionTest]),_186950).


test('?- e2c("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_187028)),nondet]):-call(e2c("Guinan is here, tending the bar",[descriptionTest]),_187028).


test('?- e2c("Guinan is a strange being",[descriptionTest])',[true(compound(_186986)),nondet]):-call(e2c("Guinan is a strange being",[descriptionTest]),_186986).


test('?- e2c("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_187694)),nondet]):-call(e2c("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_187694).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_187196)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_187196).


test('?- e2c("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_187196)),nondet]):-call(e2c("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_187196).


test('?- e2c("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_187496)),nondet]):-call(e2c("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_187496).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_187190)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_187190).


test('?- e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_187214)),nondet]):-call(e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_187214).


test('?- e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_187484)),nondet]):-call(e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_187484).


test('?- e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_187406)),nondet]):-call(e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_187406).


test('?- e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_187196)),nondet]):-call(e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_187196).


test('?- e2c("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_187076)),nondet]):-call(e2c("Livingston is Captain Picard's pet fish",[descriptionTest]),_187076).


test('?- e2c("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_187328)),nondet]):-call(e2c("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_187328).


test('?- e2c("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_187178)),nondet]):-call(e2c("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_187178).


test('?- e2c("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_187046)),nondet]):-call(e2c("Spot is Data's orange coloured cat",[descriptionTest]),_187046).


test('?- e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_187568)),nondet]):-call(e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_187568).


test('?- e2c("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_187190)),nondet]):-call(e2c("A nervous looking ensign is standing here, watching you",[descriptionTest]),_187190).


test('?- e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_187172)),nondet]):-call(e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_187172).


test('?- e2c("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_187514)),nondet]):-call(e2c("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_187514).


test('?- e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_187160)),nondet]):-call(e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_187160).


test('?- e2c("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_187028)),nondet]):-call(e2c("Alexander Rozhenko is Worf's son",[descriptionTest]),_187028).


test('?- e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_187310)),nondet]):-call(e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_187310).


test('?- e2c("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_187226)),nondet]):-call(e2c("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_187226).


test('?- e2c("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_187172)),nondet]):-call(e2c("A standard issue Starfleet phaser has been left here",[descriptionTest]),_187172).


test('?- e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_187574)),nondet]):-call(e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_187574).


test('?- e2c("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_187052)),nondet]):-call(e2c("A large phaser rifle is lying here",[descriptionTest]),_187052).


test('?- e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_187646)),nondet]):-call(e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_187646).


test('?- e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_187250)),nondet]):-call(e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_187250).


test('?- e2c("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187598)),nondet]):-call(e2c("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187598).


test('?- e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_187250)),nondet]):-call(e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_187250).


test('?- e2c("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187622)),nondet]):-call(e2c("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187622).


test('?- e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_187226)),nondet]):-call(e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_187226).


test('?- e2c("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_187598)),nondet]):-call(e2c("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_187598).


test('?- e2c("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_187148)),nondet]):-call(e2c("A pair of Starfleet black boots are sitting here",[descriptionTest]),_187148).


test('?- e2c("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_187688)),nondet]):-call(e2c("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_187688).


test('?- e2c("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_187118)),nondet]):-call(e2c("A Starfleet communication badge is lying here",[descriptionTest]),_187118).


test('?- e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_188156)),nondet]):-call(e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_188156).


test('?- e2c("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_187112)),nondet]):-call(e2c("Worf's silver chain sash has been left here",[descriptionTest]),_187112).


test('?- e2c("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_187724)),nondet]):-call(e2c("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_187724).


test('?- e2c("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_187004)),nondet]):-call(e2c("Geordi's VISOR is lying here",[descriptionTest]),_187004).


test('?- e2c("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_188396)),nondet]):-call(e2c("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_188396).


test('?- e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_187172)),nondet]):-call(e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_187172).


test('?- e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_187958)),nondet]):-call(e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_187958).


test('?- e2c("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_187106)),nondet]):-call(e2c("A shard of dilithium crystal is lying here",[descriptionTest]),_187106).


test('?- e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_187760)),nondet]):-call(e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_187760).


test('?- e2c("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_187118)),nondet]):-call(e2c("Captain Picard's wooden flute is sitting here",[descriptionTest]),_187118).


test('?- e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_187730)),nondet]):-call(e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_187730).


test('?- e2c("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_187130)),nondet]):-call(e2c("Commander Riker's trombone has been placed here",[descriptionTest]),_187130).


test('?- e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_187562)),nondet]):-call(e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_187562).


test('?- e2c("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_187058)),nondet]):-call(e2c("A small cup of tea is sitting here",[descriptionTest]),_187058).


test('?- e2c("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_187076)),nondet]):-call(e2c("A bottle of synthehol is standing here",[descriptionTest]),_187076).


test('?- e2c("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_187088)),nondet]):-call(e2c("A bottle of Ferengi ale is sitting here",[descriptionTest]),_187088).


test('?- e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_187112)),nondet]):-call(e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_187112).


test('?- e2c("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_187124)),nondet]):-call(e2c("A small glass of prune juice is sitting here",[descriptionTest]),_187124).


test('?- e2c("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_187094)),nondet]):-call(e2c("A bottle of Vulcan beer is standing here",[descriptionTest]),_187094).


test('?- e2c("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_187166)),nondet]):-call(e2c("You find yourself in the middle of main engineering",[descriptionTest]),_187166).


test('?- e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_187286)),nondet]):-call(e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_187286).


test('?- e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_187586)),nondet]):-call(e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_187586).


test('?- e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_187394)),nondet]):-call(e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_187394).


test('?- e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_187322)),nondet]):-call(e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_187322).


test('?- e2c("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_187502)),nondet]):-call(e2c("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_187502).


test('?- e2c("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_187094)),nondet]):-call(e2c("You're in the middle of Geordi's quarters",[descriptionTest]),_187094).


test('?- e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_187292)),nondet]):-call(e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_187292).


test('?- e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_187616)),nondet]):-call(e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_187616).


test('?- e2c("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_187226)),nondet]):-call(e2c("A neatly made bed has been placed against the northern wall",[descriptionTest]),_187226).


test('?- e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_187196)),nondet]):-call(e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_187196).


test('?- e2c("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_187082)),nondet]):-call(e2c("You're in the middle of Data's quarters",[descriptionTest]),_187082).


test('?- e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_188144)),nondet]):-call(e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_188144).


test('?- e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_187358)),nondet]):-call(e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_187358).


test('?- e2c("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_187382)),nondet]):-call(e2c("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_187382).


test('?- e2c("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_187010)),nondet]):-call(e2c("You're in the dimly lit Brig",[descriptionTest]),_187010).


test('?- e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_187400)),nondet]):-call(e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_187400).


test('?- e2c("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_187478)),nondet]):-call(e2c("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_187478).


test('?- e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_187772)),nondet]):-call(e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_187772).


test('?- e2c(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_194000)),nondet]):-call(e2c('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_194000).


test('?- e2c("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_187484)),nondet]):-call(e2c("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_187484).


test('?- e2c("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_187088)),nondet]):-call(e2c("You're in the Enterprise transporter room",[descriptionTest]),_187088).


test('?- e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_187574)),nondet]):-call(e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_187574).


test('?- e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_187544)),nondet]):-call(e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_187544).


test('?- e2c("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_187082)),nondet]):-call(e2c("You find yourself in a transporter beam",[descriptionTest]),_187082).


test('?- e2c("All you can see is blue flashing light",[descriptionTest])',[true(compound(_187082)),nondet]):-call(e2c("All you can see is blue flashing light",[descriptionTest]),_187082).


test('?- e2c("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_187238)),nondet]):-call(e2c("It feels as though your body is racing around at high speeds",[descriptionTest]),_187238).


test('?- e2c("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_187358)),nondet]):-call(e2c("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_187358).


test('?- e2c("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_187286)),nondet]):-call(e2c("You step through the doors and find yourself in a large school room",[descriptionTest]),_187286).


test('?- e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_187664)),nondet]):-call(e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_187664).


test('?- e2c("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_187418)),nondet]):-call(e2c("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_187418).


test('?- e2c("You\'re in the turbolift",[descriptionTest])',[true(compound(_186968)),nondet]):-call(e2c("You're in the turbolift",[descriptionTest]),_186968).


test('?- e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_187346)),nondet]):-call(e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_187346).


test('?- e2c("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_187238)),nondet]):-call(e2c("Several vertical rows of lights make this place very well lit",[descriptionTest]),_187238).


test('?- e2c("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_187226)),nondet]):-call(e2c("From here, you can access the other decks on the Enterprise",[descriptionTest]),_187226).


test('?- e2c("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_186980)),nondet]):-call(e2c("You're now on Holodeck 2",[descriptionTest]),_186980).


test('?- e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_187664)),nondet]):-call(e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_187664).


test('?- e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_187412)),nondet]):-call(e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_187412).


test('?- e2c("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_187106)),nondet]):-call(e2c("Right now, this holodeck is not functioning",[descriptionTest]),_187106).


test('?- e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_187214)),nondet]):-call(e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_187214).


test('?- e2c("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_187136)),nondet]):-call(e2c("You're in the main cargo bay of the Enterprise",[descriptionTest]),_187136).


test('?- e2c("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_187346)),nondet]):-call(e2c("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_187346).


test('?- e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_187664)),nondet]):-call(e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_187664).


test('?- e2c("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_187040)),nondet]):-call(e2c("You've arrived in Riker's quarters",[descriptionTest]),_187040).


test('?- e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_187616)),nondet]):-call(e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_187616).


test('?- e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_187550)),nondet]):-call(e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_187550).


test('?- e2c("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_187154)),nondet]):-call(e2c("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_187154).


test('?- e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_187790)),nondet]):-call(e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_187790).


test('?- e2c("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_187586)),nondet]):-call(e2c("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_187586).


test('?- e2c("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_187058)),nondet]):-call(e2c("You emerge into a dark narrow alley",[descriptionTest]),_187058).


test('?- e2c("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_187202)),nondet]):-call(e2c("Tall dark brick buildings block your way north and south",[descriptionTest]),_187202).


test('?- e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_187466)),nondet]):-call(e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_187466).


test('?- e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_187502)),nondet]):-call(e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_187502).


test('?- e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_187238)),nondet]):-call(e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_187238).


test('?- e2c("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_187142)),nondet]):-call(e2c("The archway leading out of the holodeck is west",[descriptionTest]),_187142).


test('?- e2c("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_187046)),nondet]):-call(e2c("You're in Doctor Crusher's quarters",[descriptionTest]),_187046).


test('?- e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_187442)),nondet]):-call(e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_187442).


test('?- e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_187532)),nondet]):-call(e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_187532).


test('?- e2c("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_187274)),nondet]):-call(e2c("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_187274).


test('?- e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_187898)),nondet]):-call(e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_187898).


test('?- e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_187370)),nondet]):-call(e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_187370).


test('?- e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_187766)),nondet]):-call(e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_187766).


test('?- e2c("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_187238)),nondet]):-call(e2c("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_187238).


test('?- e2c("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_187166)),nondet]):-call(e2c("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_187166).


test('?- e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_188060)),nondet]):-call(e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_188060).


test('?- e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_187238)),nondet]):-call(e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_187238).


test('?- e2c("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_187148)),nondet]):-call(e2c("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_187148).


test('?- e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_187340)),nondet]):-call(e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_187340).


test('?- e2c("A large grey door leads into space",[descriptionTest])',[true(compound(_187052)),nondet]):-call(e2c("A large grey door leads into space",[descriptionTest]),_187052).


test('?- e2c("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_187238)),nondet]):-call(e2c("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_187238).


test('?- e2c("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_187310)),nondet]):-call(e2c("You can see stars in every direction, which provide the only light here",[descriptionTest]),_187310).


test('?- e2c("You feel very cold",[descriptionTest])',[true(compound(_186938)),nondet]):-call(e2c("You feel very cold",[descriptionTest]),_186938).


test('?- e2c("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_187208)),nondet]):-call(e2c("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_187208).


test('?- e2c("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_187094)),nondet]):-call(e2c("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_187094).


test('?- e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_187706)),nondet]):-call(e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_187706).


test('?- e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_187430)),nondet]):-call(e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_187430).


test('?- e2c("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_186980)),nondet]):-call(e2c("You're in Worf's quarters",[descriptionTest]),_186980).


test('?- e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_187424)),nondet]):-call(e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_187424).


test('?- e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_187838)),nondet]):-call(e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_187838).


test('?- e2c("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_187046)),nondet]):-call(e2c("You emerge into the Enterprise gym",[descriptionTest]),_187046).


test('?- e2c("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_187148)),nondet]):-call(e2c("The room is quite large, with a soft grey floor",[descriptionTest]),_187148).


test('?- e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_187556)),nondet]):-call(e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_187556).


test('?- e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_187520)),nondet]):-call(e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_187520).


test('?- e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_187208)),nondet]):-call(e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_187208).


test('?- e2c("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_187274)),nondet]):-call(e2c("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_187274).


test('?- e2c("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_187364)),nondet]):-call(e2c("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_187364).


test('?- e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_187658)),nondet]):-call(e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_187658).


test('?- e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_187676)),nondet]):-call(e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_187676).


test('?- e2c("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_187130)),nondet]):-call(e2c("Two large windows offer a great view of space",[descriptionTest]),_187130).


test('?- e2c("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_187382)),nondet]):-call(e2c("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_187382).


test('?- e2c("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_187058)),nondet]):-call(e2c("You're in the Enterprise science lab",[descriptionTest]),_187058).


test('?- e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_187448)),nondet]):-call(e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_187448).


test('?- e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_187946)),nondet]):-call(e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_187946).


test('?- e2c("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_187202)),nondet]):-call(e2c("A complex looking computer console is facing this machine",[descriptionTest]),_187202).


test('?- e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_187358)),nondet]):-call(e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_187358).


test('?- e2c("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_187118)),nondet]):-call(e2c("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_187118).


test('?- e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_187352)),nondet]):-call(e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_187352).


test('?- e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_187724)),nondet]):-call(e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_187724).


test('?- e2c("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_187526)),nondet]):-call(e2c("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_187526).


test('?- e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_187922)),nondet]):-call(e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_187922).


test('?- e2c("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_187124)),nondet]):-call(e2c("You're standing in Captain Picard's ready room",[descriptionTest]),_187124).


test('?- e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_187562)),nondet]):-call(e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_187562).


test('?- e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_187466)),nondet]):-call(e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_187466).


test('?- e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_187664)),nondet]):-call(e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_187664).


test('?- e2c("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_187244)),nondet]):-call(e2c("This is where the Captain makes all of his important decisions",[descriptionTest]),_187244).


test('?- e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_187352)),nondet]):-call(e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_187352).


test('?- e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_187664)),nondet]):-call(e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_187664).


test('?- e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_187472)),nondet]):-call(e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_187472).


test('?- e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_187268)),nondet]):-call(e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_187268).


test('?- e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_187616)),nondet]):-call(e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_187616).


test('?- e2c("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_187214)),nondet]):-call(e2c("This is where the ship's pilot and information officer sit",[descriptionTest]),_187214).


test('?- e2c("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_187136)),nondet]):-call(e2c("You're in the conference room of the Enterprise",[descriptionTest]),_187136).


test('?- e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_187682)),nondet]):-call(e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_187682).


test('?- e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_187304)),nondet]):-call(e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_187304).


test('?- e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_187400)),nondet]):-call(e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_187400).


test('?- e2c("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_187232)),nondet]):-call(e2c("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_187232).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_110194)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_110194).


test('?- e2c("no two owners eat pizza",[sanity])',[true(compound(_110186)),nondet]):-call(e2c("no two owners eat pizza",[sanity]),_110186).


test('?- e2c("no three owners eat pizza",[sanity])',[true(compound(_110186)),nondet]):-call(e2c("no three owners eat pizza",[sanity]),_110186).


test('?- e2c("no three owners eat the same pizza",[sanity])',[true(compound(_110188)),nondet]):-call(e2c("no three owners eat the same pizza",[sanity]),_110188).


test('?- e2c("no three owners eat the same kind of pizza",[sanity])',[true(compound(_110190)),nondet]):-call(e2c("no three owners eat the same kind of pizza",[sanity]),_110190).


test('?- e2c("no owners eat the same pizza",[sanity])',[true(compound(_110186)),nondet]):-call(e2c("no owners eat the same pizza",[sanity]),_110186).


test('?- e2c("no owners eat the same kind of pizza",[sanity])',[true(compound(_110188)),nondet]):-call(e2c("no owners eat the same kind of pizza",[sanity]),_110188).


test('?- e2c("there are 5 houses",[sanity])',[true(compound(_110184)),nondet]):-call(e2c("there are 5 houses",[sanity]),_110184).


test('?- e2c("there are not 5 houses",[sanity])',[true(compound(_110184)),nondet]):-call(e2c("there are not 5 houses",[sanity]),_110184).


test('?- e2c("there are not zero houses",[sanity])',[true(compound(_110186)),nondet]):-call(e2c("there are not zero houses",[sanity]),_110186).


test('?- e2c(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_110194)),nondet]):-call(e2c(noun_phrase("less than 2 owners"),[sanity,bug]),_110194).


test('?- e2c(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_110188)),nondet]):-call(e2c(noun_phrase("at most the 5 owners"),[sanity]),_110188).


test('?- e2c(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_110188)),nondet]):-call(e2c(noun_phrase("at most 5 owners"),[sanity]),_110188).


test('?- e2c(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_110188)),nondet]):-call(e2c(noun_phrase("less than 3 owners"),[sanity]),_110188).


test('?- e2c(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_110190)),nondet]):-call(e2c(noun_phrase("at most 50 percent of owners"),[sanity]),_110190).


test('?- e2c(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_110194)),nondet]):-call(e2c(noun_phrase("no three owners"),[sanity,no_working]),_110194).


test('?- e2c("terry writes a non-program.",[tell])',[true(compound(_110186)),nondet]):-call(e2c("terry writes a non-program.",[tell]),_110186).


test('?- e2c("every nonhuman programmer writes a program.",[tell])',[true(compound(_110190)),nondet]):-call(e2c("every nonhuman programmer writes a program.",[tell]),_110190).


test('?- e2c("every human programmer writes a not a program.",[tell])',[true(compound(_110190)),nondet]):-call(e2c("every human programmer writes a not a program.",[tell]),_110190).


test('?- e2c("every human programmer happily writes a not a program.",[tell])',[true(compound(_110192)),nondet]):-call(e2c("every human programmer happily writes a not a program.",[tell]),_110192).


:- end_tests(e2c).

