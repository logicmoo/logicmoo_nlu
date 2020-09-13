

:- begin_tests(test_lex_info).



test('?- test_lex_info("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_120870)),nondet]):-call(test_lex_info("His friends are liked by hers.",[bad_juju,sanity]),_120870).


test('?- test_lex_info("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_120872)),nondet]):-call(test_lex_info("Her friends are not liked by his.",[bad_juju,sanity]),_120872).


test('?- test_lex_info("Do their friends like each other?",[bad_juju,feature])',[true(compound(_120872)),nondet]):-call(test_lex_info("Do their friends like each other?",[bad_juju,feature]),_120872).


test('?- test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_120814),sanity])',[true(compound(_120876)),nondet]):-call(test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_120814),sanity]),_120876).


test('?- test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_120812),sanity])',[true(compound(_120874)),nondet]):-call(test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_120812),sanity]),_120874).


test('?- test_lex_info("There are 5 houses with five different colors.",[riddle(_120816),sanity])',[true(compound(_120878)),nondet]):-call(test_lex_info("There are 5 houses with five different colors.",[riddle(_120816),sanity]),_120878).


test('?- test_lex_info("There are 5 houses",[riddle_prep,sanity])',[true(compound(_120868)),nondet]):-call(test_lex_info("There are 5 houses",[riddle_prep,sanity]),_120868).


test('?- test_lex_info("Each house has a different color",[riddle_prep,sanity])',[true(compound(_120872)),nondet]):-call(test_lex_info("Each house has a different color",[riddle_prep,sanity]),_120872).


test('?- test_lex_info("In each house lives a person with a different nationality.",[riddle(_120820),sanity])',[true(compound(_120882)),nondet]):-call(test_lex_info("In each house lives a person with a different nationality.",[riddle(_120820),sanity]),_120882).


test('?- test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_120894)),nondet]):-call(test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_120894).


test('?- test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_120882)),nondet]):-call(test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_120882).


test('?- test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_120880)),nondet]):-call(test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_120880).


test('?- test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_120884)),nondet]):-call(test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_120884).


test('?- test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_120888)),nondet]):-call(test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_120888).


test('?- test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_120880)),nondet]):-call(test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression]),_120880).


test('?- test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_120884)),nondet]):-call(test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_120884).


test('?- test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_120878)),nondet]):-call(test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_120878).


test('?- test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_120882)),nondet]):-call(test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression]),_120882).


test('?- test_lex_info("The brit lives in the red house.",[riddle(_120814),sanity])',[true(compound(_120876)),nondet]):-call(test_lex_info("The brit lives in the red house.",[riddle(_120814),sanity]),_120876).


test('?- test_lex_info("The swede keeps dogs as pets.",[riddle(_120812),sanity])',[true(compound(_120874)),nondet]):-call(test_lex_info("The swede keeps dogs as pets.",[riddle(_120812),sanity]),_120874).


test('?- test_lex_info("A dane drinks tea.",[riddle(_120810),sanity])',[true(compound(_120872)),nondet]):-call(test_lex_info("A dane drinks tea.",[riddle(_120810),sanity]),_120872).


test('?- test_lex_info("The green house is on the left of the white house.",[riddle(_120818),sanity])',[true(compound(_120880)),nondet]):-call(test_lex_info("The green house is on the left of the white house.",[riddle(_120818),sanity]),_120880).


test('?- test_lex_info("The green house\'s owner drinks coffee.",[riddle(_120814),sanity])',[true(compound(_120876)),nondet]):-call(test_lex_info("The green house's owner drinks coffee.",[riddle(_120814),sanity]),_120876).


test('?- test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_120816),sanity,regression])',[true(compound(_120884)),nondet]):-call(test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_120816),sanity,regression]),_120884).


test('?- test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_120816),sanity])',[true(compound(_120878)),nondet]):-call(test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_120816),sanity]),_120878).


test('?- test_lex_info("The man living in the center house drinks milk.",[riddle(_120818),sanity])',[true(compound(_120880)),nondet]):-call(test_lex_info("The man living in the center house drinks milk.",[riddle(_120818),sanity]),_120880).


test('?- test_lex_info("The Norwegian lives in the first house .",[riddle(_120816),sanity])',[true(compound(_120878)),nondet]):-call(test_lex_info("The Norwegian lives in the first house .",[riddle(_120816),sanity]),_120878).


test('?- test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_120822),sanity])',[true(compound(_120884)),nondet]):-call(test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_120822),sanity]),_120884).


test('?- test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_120822),sanity])',[true(compound(_120884)),nondet]):-call(test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_120822),sanity]),_120884).


test('?- test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_120816),sanity])',[true(compound(_120878)),nondet]):-call(test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_120816),sanity]),_120878).


test('?- test_lex_info("The German smokes Prince.",[riddle(_120812),sanity])',[true(compound(_120874)),nondet]):-call(test_lex_info("The German smokes Prince.",[riddle(_120812),sanity]),_120874).


test('?- test_lex_info("The Norwegian lives next to the blue house.",[riddle(_120816),sanity])',[true(compound(_120878)),nondet]):-call(test_lex_info("The Norwegian lives next to the blue house.",[riddle(_120816),sanity]),_120878).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_120820),sanity])',[true(compound(_120882)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_120820),sanity]),_120882).


test('?- test_lex_info("Who owns the fish?",[riddle(_120810),sanity])',[true(compound(_120872)),nondet]):-call(test_lex_info("Who owns the fish?",[riddle(_120810),sanity]),_120872).


test('?- test_lex_info("One woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("One woman paints.",[quants]),_120862).


test('?- test_lex_info("No woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("No woman paints.",[quants]),_120862).


test('?- test_lex_info("Some woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Some woman paints.",[quants]),_120862).


test('?- test_lex_info("Every woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Every woman paints.",[quants]),_120862).


test('?- test_lex_info("Each woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Each woman paints.",[quants]),_120862).


test('?- test_lex_info("Any woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Any woman paints.",[quants]),_120862).


test('?- test_lex_info("The woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("The woman paints.",[quants]),_120862).


test('?- test_lex_info("The not woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("The not woman paints.",[quants]),_120862).


test('?- test_lex_info("Not a woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not a woman paints.",[quants]),_120862).


test('?- test_lex_info("Not one woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not one woman paints.",[quants]),_120862).


test('?- test_lex_info("Not no woman paints.",[quants_neg_postcond])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not no woman paints.",[quants_neg_postcond]),_120862).


test('?- test_lex_info("Not some woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not some woman paints.",[quants]),_120862).


test('?- test_lex_info("Not every woman paints.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("Not every woman paints.",[quants]),_120864).


test('?- test_lex_info("Not each woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not each woman paints.",[quants]),_120862).


test('?- test_lex_info("Not any woman paints.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not any woman paints.",[quants]),_120862).


test('?- test_lex_info("The women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("The women paint.",[quants]),_120862).


test('?- test_lex_info("Women paint.",[quants])',[true(compound(_120860)),nondet]):-call(test_lex_info("Women paint.",[quants]),_120860).


test('?- test_lex_info("Some women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Some women paint.",[quants]),_120862).


test('?- test_lex_info("No women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("No women paint.",[quants]),_120862).


test('?- test_lex_info("All women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("All women paint.",[quants]),_120862).


test('?- test_lex_info("Any women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Any women paint.",[quants]),_120862).


test('?- test_lex_info("Not women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not women paint.",[quants]),_120862).


test('?- test_lex_info("Not no women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not no women paint.",[quants]),_120862).


test('?- test_lex_info("Not all women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not all women paint.",[quants]),_120862).


test('?- test_lex_info("Not any women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not any women paint.",[quants]),_120862).


test('?- test_lex_info("The three women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("The three women paint.",[quants]),_120862).


test('?- test_lex_info("Three women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Three women paint.",[quants]),_120862).


test('?- test_lex_info("Some three women paint.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("Some three women paint.",[quants]),_120864).


test('?- test_lex_info("No three women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("No three women paint.",[quants]),_120862).


test('?- test_lex_info("Every three women paint.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("Every three women paint.",[quants]),_120864).


test('?- test_lex_info("All three women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("All three women paint.",[quants]),_120862).


test('?- test_lex_info("Any three women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Any three women paint.",[quants]),_120862).


test('?- test_lex_info("Not three women paint.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not three women paint.",[quants]),_120862).


test('?- test_lex_info("Not some three women paint.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("Not some three women paint.",[quants]),_120864).


test('?- test_lex_info("Not no three women paint.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("Not no three women paint.",[quants]),_120864).


test('?- test_lex_info("Not all three women paint.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("Not all three women paint.",[quants]),_120864).


test('?- test_lex_info("Not every three women paint.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("Not every three women paint.",[quants]),_120864).


test('?- test_lex_info("Not any three women paint.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("Not any three women paint.",[quants]),_120864).


test('?- test_lex_info("Not three of the women paint.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("Not three of the women paint.",[quants]),_120864).


test('?- test_lex_info("Not some of the three women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("Not some of the three women paint.",[quants]),_120866).


test('?- test_lex_info("Not no three of the women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("Not no three of the women paint.",[quants]),_120866).


test('?- test_lex_info("Not all three of the women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("Not all three of the women paint.",[quants]),_120866).


test('?- test_lex_info("Not every three of the women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("Not every three of the women paint.",[quants]),_120866).


test('?- test_lex_info("Not any three of the women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("Not any three of the women paint.",[quants]),_120866).


test('?- test_lex_info("Not three of the four women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("Not three of the four women paint.",[quants]),_120866).


test('?- test_lex_info("Not none of three out of the four women paint.",[quants])',[true(compound(_120868)),nondet]):-call(test_lex_info("Not none of three out of the four women paint.",[quants]),_120868).


test('?- test_lex_info("Not all three of the four women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("Not all three of the four women paint.",[quants]),_120866).


test('?- test_lex_info("Not any three of the four women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("Not any three of the four women paint.",[quants]),_120866).


test('?- test_lex_info("Three of the four women paint.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("Three of the four women paint.",[quants]),_120864).


test('?- test_lex_info("Three out of the four women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("Three out of the four women paint.",[quants]),_120866).


test('?- test_lex_info("All three of the four women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("All three of the four women paint.",[quants]),_120866).


test('?- test_lex_info("Any three of the four women paint.",[quants])',[true(compound(_120866)),nondet]):-call(test_lex_info("Any three of the four women paint.",[quants]),_120866).


test('?- test_lex_info("I paint",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("I paint",[pronoun]),_120860).


test('?- test_lex_info("you paint",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("you paint",[pronoun]),_120860).


test('?- test_lex_info("We paint",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("We paint",[pronoun]),_120860).


test('?- test_lex_info("None paint",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("None paint",[pronoun]),_120860).


test('?- test_lex_info("They paint",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("They paint",[pronoun]),_120860).


test('?- test_lex_info("Some paint",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("Some paint",[pronoun]),_120860).


test('?- test_lex_info("It paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("It paints",[pronoun]),_120860).


test('?- test_lex_info("he paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("he paints",[pronoun]),_120860).


test('?- test_lex_info("She paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("She paints",[pronoun]),_120860).


test('?- test_lex_info("Someone paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("Someone paints",[pronoun]),_120860).


test('?- test_lex_info("Anybody paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("Anybody paints",[pronoun]),_120860).


test('?- test_lex_info("Anyone paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("Anyone paints",[pronoun]),_120860).


test('?- test_lex_info("Anything paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Anything paints",[pronoun]),_120862).


test('?- test_lex_info("Everybody paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Everybody paints",[pronoun]),_120862).


test('?- test_lex_info("Everyone paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Everyone paints",[pronoun]),_120862).


test('?- test_lex_info("Everything paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Everything paints",[pronoun]),_120862).


test('?- test_lex_info("Nobody paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("Nobody paints",[pronoun]),_120860).


test('?- test_lex_info("No one paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("No one paints",[pronoun]),_120860).


test('?- test_lex_info("Nothing paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("Nothing paints",[pronoun]),_120860).


test('?- test_lex_info("One paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("One paints",[pronoun]),_120860).


test('?- test_lex_info("Somebody paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Somebody paints",[pronoun]),_120862).


test('?- test_lex_info("Something paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Something paints",[pronoun]),_120862).


test('?- test_lex_info("Not anybody paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not anybody paints",[pronoun]),_120862).


test('?- test_lex_info("Not anyone paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not anyone paints",[pronoun]),_120862).


test('?- test_lex_info("Not anything paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not anything paints",[pronoun]),_120862).


test('?- test_lex_info("Not everybody paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not everybody paints",[pronoun]),_120862).


test('?- test_lex_info("Not everyone paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not everyone paints",[pronoun]),_120862).


test('?- test_lex_info("Not everything paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not everything paints",[pronoun]),_120862).


test('?- test_lex_info("Not nothing paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not nothing paints",[pronoun]),_120862).


test('?- test_lex_info("Not one paints",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("Not one paints",[pronoun]),_120860).


test('?- test_lex_info("Not somebody paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not somebody paints",[pronoun]),_120862).


test('?- test_lex_info("Not something paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("Not something paints",[pronoun]),_120862).


test('?- test_lex_info("She likes i",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("She likes i",[pronoun]),_120860).


test('?- test_lex_info("She likes me",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("She likes me",[pronoun]),_120860).


test('?- test_lex_info("She likes you",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("She likes you",[pronoun]),_120860).


test('?- test_lex_info("She likes it",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("She likes it",[pronoun]),_120860).


test('?- test_lex_info("She likes us",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("She likes us",[pronoun]),_120860).


test('?- test_lex_info("She likes them",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("She likes them",[pronoun]),_120860).


test('?- test_lex_info("She likes no one",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("She likes no one",[pronoun]),_120862).


test('?- test_lex_info("She likes none",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("She likes none",[pronoun]),_120860).


test('?- test_lex_info("She likes him",[pronoun])',[true(compound(_120860)),nondet]):-call(test_lex_info("She likes him",[pronoun]),_120860).


test('?- test_lex_info("She likes herself",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("She likes herself",[pronoun]),_120862).


test('?- test_lex_info("She likes himself",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("She likes himself",[pronoun]),_120862).


test('?- test_lex_info("It is us that paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("It is us that paints",[pronoun]),_120862).


test('?- test_lex_info("It is them that paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("It is them that paints",[pronoun]),_120862).


test('?- test_lex_info("It is he that paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("It is he that paints",[pronoun]),_120862).


test('?- test_lex_info("It is she that paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("It is she that paints",[pronoun]),_120862).


test('?- test_lex_info("It is her that paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("It is her that paints",[pronoun]),_120862).


test('?- test_lex_info("It is him that paints",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("It is him that paints",[pronoun]),_120862).


test('?- test_lex_info("We are us that paint",[pronoun])',[true(compound(_120862)),nondet]):-call(test_lex_info("We are us that paint",[pronoun]),_120862).


test('?- test_lex_info("We are all of us that paint",[pronoun])',[true(compound(_120864)),nondet]):-call(test_lex_info("We are all of us that paint",[pronoun]),_120864).


test('?- test_lex_info("It is everybody that paints",[pronoun])',[true(compound(_120864)),nondet]):-call(test_lex_info("It is everybody that paints",[pronoun]),_120864).


test('?- test_lex_info("Every man that paints likes monet.",[bratko])',[true(compound(_120866)),nondet]):-call(test_lex_info("Every man that paints likes monet.",[bratko]),_120866).


test('?- test_lex_info("A woman that admires John paints.",[bratko])',[true(compound(_120866)),nondet]):-call(test_lex_info("A woman that admires John paints.",[bratko]),_120866).


test('?- test_lex_info("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_120872)),nondet]):-call(test_lex_info("Every woman that likes a man that admires monet paints.",[bratko]),_120872).


test('?- test_lex_info("John likes Annie.",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("John likes Annie.",[bratko]),_120862).


test('?- test_lex_info("Annie likes a man that admires monet.",[bratko])',[true(compound(_120866)),nondet]):-call(test_lex_info("Annie likes a man that admires monet.",[bratko]),_120866).


test('?- test_lex_info("Bertrand Russell wrote principia.",[bratko])',[true(compound(_120866)),nondet]):-call(test_lex_info("Bertrand Russell wrote principia.",[bratko]),_120866).


test('?- test_lex_info("An author wrote principia.",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("An author wrote principia.",[bratko]),_120864).


test('?- test_lex_info("Iraq is a country.",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("Iraq is a country.",[bratko]),_120862).


test('?- test_lex_info("A happy author wrote principia.",[bratko])',[true(compound(_120866)),nondet]):-call(test_lex_info("A happy author wrote principia.",[bratko]),_120866).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_120862).


test('?- test_lex_info("Bertrand is an author.",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("Bertrand is an author.",[bratko]),_120862).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_120862).


test('?- test_lex_info("Every author is a programmer.",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("Every author is a programmer.",[bratko]),_120864).


test('?- test_lex_info("Is Bertrand an programmer?",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("Is Bertrand an programmer?",[bratko]),_120864).


test('?- test_lex_info("What is a author?",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("What is a author?",[bratko]),_120862).


test('?- test_lex_info("What did Bertrand write?",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("What did Bertrand write?",[bratko]),_120864).


test('?- test_lex_info("What is a book?",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("What is a book?",[bratko]),_120862).


test('?- test_lex_info("Principia is a book.",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("Principia is a book.",[bratko]),_120862).


test('?- test_lex_info("Bertrand is Bertrand.",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("Bertrand is Bertrand.",[bratko]),_120862).


test('?- test_lex_info("Shrdlu halts.",[bratko])',[true(compound(_120860)),nondet]):-call(test_lex_info("Shrdlu halts.",[bratko]),_120860).


test('?- test_lex_info("Every student wrote a program.",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("Every student wrote a program.",[bratko]),_120864).


test('?- test_lex_info("Terry writes a program.",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("Terry writes a program.",[bratko]),_120864).


test('?- test_lex_info("Terry writes a program that halts.",[bratko])',[true(compound(_120866)),nondet]):-call(test_lex_info("Terry writes a program that halts.",[bratko]),_120866).


test('?- test_lex_info("An author of every book wrote a program.",[bratko])',[true(compound(_120868)),nondet]):-call(test_lex_info("An author of every book wrote a program.",[bratko]),_120868).


test('?- test_lex_info("A man hapilly maried paints.",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("A man hapilly maried paints.",[bratko]),_120864).


test('?- test_lex_info("A hapilly maried man paints.",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("A hapilly maried man paints.",[bratko]),_120864).


test('?- test_lex_info("A man who knows paints.",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("A man who knows paints.",[bratko]),_120864).


test('?- test_lex_info("A man gives something.",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("A man gives something.",[bratko]),_120862).


test('?- test_lex_info("A man gives his word.",[bratko])',[true(compound(_120862)),nondet]):-call(test_lex_info("A man gives his word.",[bratko]),_120862).


test('?- test_lex_info("A man of his word paints.",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("A man of his word paints.",[bratko]),_120864).


test('?- test_lex_info("A man paints.",[bratko])',[true(compound(_120860)),nondet]):-call(test_lex_info("A man paints.",[bratko]),_120860).


test('?- test_lex_info("A man that paints paints.",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("A man that paints paints.",[bratko]),_120864).


test('?- test_lex_info("A man walks.",[bratko])',[true(compound(_120860)),nondet]):-call(test_lex_info("A man walks.",[bratko]),_120860).


test('?- test_lex_info("A man that walks paints.",[bratko])',[true(compound(_120864)),nondet]):-call(test_lex_info("A man that walks paints.",[bratko]),_120864).


test('?- test_lex_info("It halts.",[bratko])',[true(compound(_120860)),nondet]):-call(test_lex_info("It halts.",[bratko]),_120860).


test('?- test_lex_info("A man of his word that walks paints.",[bratko])',[true(compound(_120866)),nondet]):-call(test_lex_info("A man of his word that walks paints.",[bratko]),_120866).


test('?- test_lex_info("The cost of what the product is changes.",[bratko])',[true(compound(_120868)),nondet]):-call(test_lex_info("The cost of what the product is changes.",[bratko]),_120868).


test('?- test_lex_info("We need a virtual machine server.",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("We need a virtual machine server.",[aindy]),_120866).


test('?- test_lex_info("The virtual machine server should have several VMs.",[aindy])',[true(compound(_120870)),nondet]):-call(test_lex_info("The virtual machine server should have several VMs.",[aindy]),_120870).


test('?- test_lex_info("One VM should be the POSI VM.",[aindy])',[true(compound(_120864)),nondet]):-call(test_lex_info("One VM should be the POSI VM.",[aindy]),_120864).


test('?- test_lex_info("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("One VM should be the FRDCSA.org VM.",[aindy]),_120866).


test('?- test_lex_info("One VM should be the mail server.",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("One VM should be the mail server.",[aindy]),_120866).


test('?- test_lex_info("One computer should be the backup server.",[aindy])',[true(compound(_120868)),nondet]):-call(test_lex_info("One computer should be the backup server.",[aindy]),_120868).


test('?- test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_120884)),nondet]):-call(test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_120884).


test('?- test_lex_info("I need a fast computer for work.",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("I need a fast computer for work.",[aindy]),_120866).


test('?- test_lex_info("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_120876)),nondet]):-call(test_lex_info("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_120876).


test('?- test_lex_info("I need a dedicated computer for network security research.",[aindy])',[true(compound(_120872)),nondet]):-call(test_lex_info("I need a dedicated computer for network security research.",[aindy]),_120872).


test('?- test_lex_info("I need a machine to run Tails on.",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("I need a machine to run Tails on.",[aindy]),_120866).


test('?- test_lex_info("I need a machine off the network for airgap security.",[aindy])',[true(compound(_120870)),nondet]):-call(test_lex_info("I need a machine off the network for airgap security.",[aindy]),_120870).


test('?- test_lex_info("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_120876)),nondet]):-call(test_lex_info("One VM should be the game server for running game development projects.",[aindy]),_120876).


test('?- test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_120870)),nondet]):-call(test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_120870).


test('?- test_lex_info("I could read about how to build a private watson.",[aindy])',[true(compound(_120870)),nondet]):-call(test_lex_info("I could read about how to build a private watson.",[aindy]),_120870).


test('?- test_lex_info("Need backups.",[aindy])',[true(compound(_120860)),nondet]):-call(test_lex_info("Need backups.",[aindy]),_120860).


test('?- test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_120874)),nondet]):-call(test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy]),_120874).


test('?- test_lex_info("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_120872)),nondet]):-call(test_lex_info("Set up schedules for updating the software on all machines.",[aindy]),_120872).


test('?- test_lex_info("Read books on server room layout.",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("Read books on server room layout.",[aindy]),_120866).


test('?- test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_120874)),nondet]):-call(test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_120874).


test('?- test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_120876)),nondet]):-call(test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_120876).


test('?- test_lex_info("I want a gaming computer.  Do I?",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("I want a gaming computer.  Do I?",[aindy]),_120866).


test('?- test_lex_info("I want a windows 7 computer for work.",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("I want a windows 7 computer for work.",[aindy]),_120866).


test('?- test_lex_info("I want a fast linux computer for work.",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("I want a fast linux computer for work.",[aindy]),_120866).


test('?- test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_120886)),nondet]):-call(test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_120886).


test('?- test_lex_info("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_120872)),nondet]):-call(test_lex_info("I could install a fresh operating system on justin for work.",[aindy]),_120872).


test('?- test_lex_info("I probably want a separate git computer.",[aindy])',[true(compound(_120868)),nondet]):-call(test_lex_info("I probably want a separate git computer.",[aindy]),_120868).


test('?- test_lex_info("I need to start buying servers.",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("I need to start buying servers.",[aindy]),_120866).


test('?- test_lex_info("I want a rackmount case for servers.",[aindy])',[true(compound(_120866)),nondet]):-call(test_lex_info("I want a rackmount case for servers.",[aindy]),_120866).


test('?- test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_120872)),nondet]):-call(test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)]),_120872).


test('?- test_lex_info("2 oceans border each african country.",[chat80(tell)])',[true(compound(_120870)),nondet]):-call(test_lex_info("2 oceans border each african country.",[chat80(tell)]),_120870).


test('?- test_lex_info("There are 10 large cars.",[quants])',[true(compound(_120864)),nondet]):-call(test_lex_info("There are 10 large cars.",[quants]),_120864).


test('?- test_lex_info("There are 10 oceans.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("There are 10 oceans.",[quants]),_120862).


test('?- test_lex_info("There are 10 women.",[quants])',[true(compound(_120862)),nondet]):-call(test_lex_info("There are 10 women.",[quants]),_120862).


test('?- test_lex_info("An ocean borders an African country.",[chat80(tell)])',[true(compound(_120870)),nondet]):-call(test_lex_info("An ocean borders an African country.",[chat80(tell)]),_120870).


test('?- test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_120878)),nondet]):-call(test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell]),_120878).


test('?- test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_120880)),nondet]):-call(test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_120880).


test('?- test_lex_info("Bertrand wrote a book.",[bratko(book)])',[true(compound(_120866)),nondet]):-call(test_lex_info("Bertrand wrote a book.",[bratko(book)]),_120866).


test('?- test_lex_info("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_120868)),nondet]):-call(test_lex_info("Bertrand wrote nothing.",[bratko(book)]),_120868).


test('?- test_lex_info("Bertrand wrote.",[bratko(book)])',[true(compound(_120866)),nondet]):-call(test_lex_info("Bertrand wrote.",[bratko(book)]),_120866).


test('?- test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_120870)),nondet]):-call(test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)]),_120870).


test('?- test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_120868)),nondet]):-call(test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)]),_120868).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_120870)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_120870).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_120872)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_120872).


test('?- test_lex_info("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_120870)),nondet]):-call(test_lex_info("What did alfred write to Bertrand?",[bratko(book)]),_120870).


test('?- test_lex_info("Alfred wrote a letter.",[bratko(book)])',[true(compound(_120866)),nondet]):-call(test_lex_info("Alfred wrote a letter.",[bratko(book)]),_120866).


test('?- test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_120870)),nondet]):-call(test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)]),_120870).


test('?- test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_120870)),nondet]):-call(test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)]),_120870).


test('?- test_lex_info("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_120868)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand.",[bratko(book)]),_120868).


test('?- test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_120870)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)]),_120870).


test('?- test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_120870)),nondet]):-call(test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)]),_120870).


test('?- test_lex_info("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_120870)),nondet]):-call(test_lex_info("Who did alfred write a letter to?",[bratko(book)]),_120870).


test('?- test_lex_info("Alfred gave it.",[bratko(book)])',[true(compound(_120866)),nondet]):-call(test_lex_info("Alfred gave it.",[bratko(book)]),_120866).


test('?- test_lex_info("Alfred gave a book.",[bratko(book)])',[true(compound(_120866)),nondet]):-call(test_lex_info("Alfred gave a book.",[bratko(book)]),_120866).


test('?- test_lex_info("a pride of lions paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a pride of lions paint",[of]),_120862).


test('?- test_lex_info("a flock of birds paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a flock of birds paint",[of]),_120862).


test('?- test_lex_info("a litter of pups paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a litter of pups paint",[of]),_120862).


test('?- test_lex_info("a prickle of porcupines paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a prickle of porcupines paint",[of]),_120864).


test('?- test_lex_info("a litter of cubs paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a litter of cubs paint",[of]),_120862).


test('?- test_lex_info("a pack of dogs paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a pack of dogs paint",[of]),_120862).


test('?- test_lex_info("a colony of beavers paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a colony of beavers paint",[of]),_120864).


test('?- test_lex_info("a gaggle of geese paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a gaggle of geese paint",[of]),_120864).


test('?- test_lex_info("a family of otters paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a family of otters paint",[of]),_120864).


test('?- test_lex_info("a huddle of walruses paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a huddle of walruses paint",[of]),_120864).


test('?- test_lex_info("a herd of deer paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a herd of deer paint",[of]),_120862).


test('?- test_lex_info("a culture of bacteria paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a culture of bacteria paint",[of]),_120864).


test('?- test_lex_info("a swarm of bees paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a swarm of bees paint",[of]),_120862).


test('?- test_lex_info("a bed of clams paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a bed of clams paint",[of]),_120862).


test('?- test_lex_info("a school of cod paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a school of cod paint",[of]),_120862).


test('?- test_lex_info("a herd of dinosaurs paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a herd of dinosaurs paint",[of]),_120864).


test('?- test_lex_info("a mess of iguanas paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a mess of iguanas paint",[of]),_120864).


test('?- test_lex_info("a mob of wombats paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a mob of wombats paint",[of]),_120862).


test('?- test_lex_info("a pod of pelicans paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a pod of pelicans paint",[of]),_120864).


test('?- test_lex_info("a troop of boy scouts paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a troop of boy scouts paint",[of]),_120864).


test('?- test_lex_info("a team of athletes paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a team of athletes paint",[of]),_120864).


test('?- test_lex_info("a panel of experts paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a panel of experts paint",[of]),_120864).


test('?- test_lex_info("a crew of sailors paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a crew of sailors paint",[of]),_120864).


test('?- test_lex_info("a band of robbers paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a band of robbers paint",[of]),_120864).


test('?- test_lex_info("a troupe of performers paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a troupe of performers paint",[of]),_120864).


test('?- test_lex_info("a crowd of onlookers paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a crowd of onlookers paint",[of]),_120864).


test('?- test_lex_info("a curse of painters paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("a curse of painters paint",[of]),_120864).


test('?- test_lex_info("a fleet of cars paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a fleet of cars paint",[of]),_120862).


test('?- test_lex_info("a pair of shoes paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a pair of shoes paint",[of]),_120862).


test('?- test_lex_info("a fleet of ships paint",[of])',[true(compound(_120862)),nondet]):-call(test_lex_info("a fleet of ships paint",[of]),_120862).


test('?- test_lex_info("an anthology of stories paint",[of])',[true(compound(_120864)),nondet]):-call(test_lex_info("an anthology of stories paint",[of]),_120864).


test('?- test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_197838)),nondet]):-call(test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_197838).


test('?- test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_197808)),nondet]):-call(test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_197808).


test('?- test_lex_info("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_197946)),nondet]):-call(test_lex_info("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_197946).


test('?- test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_197790)),nondet]):-call(test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_197790).


test('?- test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_197838)),nondet]):-call(test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_197838).


test('?- test_lex_info("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_197934)),nondet]):-call(test_lex_info("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_197934).


test('?- test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_197892)),nondet]):-call(test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_197892).


test('?- test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_198084)),nondet]):-call(test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_198084).


test('?- test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_197856)),nondet]):-call(test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest]),_197856).


test('?- test_lex_info("Logged on player character",[descriptionTest])',[true(compound(_197664)),nondet]):-call(test_lex_info("Logged on player character",[descriptionTest]),_197664).


test('?- test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_197922)),nondet]):-call(test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_197922).


test('?- test_lex_info("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_197868)),nondet]):-call(test_lex_info("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_197868).


test('?- test_lex_info("Wesley is her son",[descriptionTest])',[true(compound(_197610)),nondet]):-call(test_lex_info("Wesley is her son",[descriptionTest]),_197610).


test('?- test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_198258)),nondet]):-call(test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_198258).


test('?- test_lex_info("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_197688)),nondet]):-call(test_lex_info("Counselor Deanna Troi is here",[descriptionTest]),_197688).


test('?- test_lex_info("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_197784)),nondet]):-call(test_lex_info("Counselor Troi is the ship's main counselor",[descriptionTest]),_197784).


test('?- test_lex_info("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_197940)),nondet]):-call(test_lex_info("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_197940).


test('?- test_lex_info("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_197814)),nondet]):-call(test_lex_info("Commander William Riker is here, staring at you",[descriptionTest]),_197814).


test('?- test_lex_info("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_197820)),nondet]):-call(test_lex_info("Commander Riker is the Enterprise's first officer",[descriptionTest]),_197820).


test('?- test_lex_info("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_197790)),nondet]):-call(test_lex_info("He's in charge of keeping the crew in line",[descriptionTest]),_197790).


test('?- test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_197856)),nondet]):-call(test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_197856).


test('?- test_lex_info("Captain Picard is a very important man",[descriptionTest])',[true(compound(_197754)),nondet]):-call(test_lex_info("Captain Picard is a very important man",[descriptionTest]),_197754).


test('?- test_lex_info("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_197856)),nondet]):-call(test_lex_info("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_197856).


test('?- test_lex_info("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_197700)),nondet]):-call(test_lex_info("He's very smart, and very wise",[descriptionTest]),_197700).


test('?- test_lex_info("Don\'t mess with him!",[descriptionTest])',[true(compound(_197628)),nondet]):-call(test_lex_info("Don't mess with him!",[descriptionTest]),_197628).


test('?- test_lex_info("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_197706)),nondet]):-call(test_lex_info("Guinan is here, tending the bar",[descriptionTest]),_197706).


test('?- test_lex_info("Guinan is a strange being",[descriptionTest])',[true(compound(_197664)),nondet]):-call(test_lex_info("Guinan is a strange being",[descriptionTest]),_197664).


test('?- test_lex_info("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_198372)),nondet]):-call(test_lex_info("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_198372).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_197874)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_197874).


test('?- test_lex_info("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_197874)),nondet]):-call(test_lex_info("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_197874).


test('?- test_lex_info("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_198174)),nondet]):-call(test_lex_info("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_198174).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_197868)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_197868).


test('?- test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_197892)),nondet]):-call(test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_197892).


test('?- test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_198162)),nondet]):-call(test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_198162).


test('?- test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_198084)),nondet]):-call(test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_198084).


test('?- test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_197874)),nondet]):-call(test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_197874).


test('?- test_lex_info("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_197754)),nondet]):-call(test_lex_info("Livingston is Captain Picard's pet fish",[descriptionTest]),_197754).


test('?- test_lex_info("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_198006)),nondet]):-call(test_lex_info("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_198006).


test('?- test_lex_info("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_197856)),nondet]):-call(test_lex_info("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_197856).


test('?- test_lex_info("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_197724)),nondet]):-call(test_lex_info("Spot is Data's orange coloured cat",[descriptionTest]),_197724).


test('?- test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_198246)),nondet]):-call(test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_198246).


test('?- test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_197868)),nondet]):-call(test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest]),_197868).


test('?- test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_197850)),nondet]):-call(test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_197850).


test('?- test_lex_info("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_198192)),nondet]):-call(test_lex_info("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_198192).


test('?- test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_197838)),nondet]):-call(test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_197838).


test('?- test_lex_info("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_197706)),nondet]):-call(test_lex_info("Alexander Rozhenko is Worf's son",[descriptionTest]),_197706).


test('?- test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_197988)),nondet]):-call(test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_197988).


test('?- test_lex_info("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_197904)),nondet]):-call(test_lex_info("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_197904).


test('?- test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_197850)),nondet]):-call(test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest]),_197850).


test('?- test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_198252)),nondet]):-call(test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_198252).


test('?- test_lex_info("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_197730)),nondet]):-call(test_lex_info("A large phaser rifle is lying here",[descriptionTest]),_197730).


test('?- test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_198324)),nondet]):-call(test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_198324).


test('?- test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_197928)),nondet]):-call(test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_197928).


test('?- test_lex_info("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198276)),nondet]):-call(test_lex_info("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198276).


test('?- test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_197928)),nondet]):-call(test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_197928).


test('?- test_lex_info("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198300)),nondet]):-call(test_lex_info("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198300).


test('?- test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_197904)),nondet]):-call(test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_197904).


test('?- test_lex_info("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198276)),nondet]):-call(test_lex_info("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198276).


test('?- test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_197826)),nondet]):-call(test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest]),_197826).


test('?- test_lex_info("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_198366)),nondet]):-call(test_lex_info("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_198366).


test('?- test_lex_info("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_197796)),nondet]):-call(test_lex_info("A Starfleet communication badge is lying here",[descriptionTest]),_197796).


test('?- test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_198834)),nondet]):-call(test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_198834).


test('?- test_lex_info("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_197790)),nondet]):-call(test_lex_info("Worf's silver chain sash has been left here",[descriptionTest]),_197790).


test('?- test_lex_info("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_198402)),nondet]):-call(test_lex_info("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_198402).


test('?- test_lex_info("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_197682)),nondet]):-call(test_lex_info("Geordi's VISOR is lying here",[descriptionTest]),_197682).


test('?- test_lex_info("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_199074)),nondet]):-call(test_lex_info("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_199074).


test('?- test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_197850)),nondet]):-call(test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_197850).


test('?- test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_198636)),nondet]):-call(test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_198636).


test('?- test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_197784)),nondet]):-call(test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest]),_197784).


test('?- test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_198438)),nondet]):-call(test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_198438).


test('?- test_lex_info("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_197796)),nondet]):-call(test_lex_info("Captain Picard's wooden flute is sitting here",[descriptionTest]),_197796).


test('?- test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_198408)),nondet]):-call(test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_198408).


test('?- test_lex_info("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_197808)),nondet]):-call(test_lex_info("Commander Riker's trombone has been placed here",[descriptionTest]),_197808).


test('?- test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_198240)),nondet]):-call(test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_198240).


test('?- test_lex_info("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_197736)),nondet]):-call(test_lex_info("A small cup of tea is sitting here",[descriptionTest]),_197736).


test('?- test_lex_info("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_197754)),nondet]):-call(test_lex_info("A bottle of synthehol is standing here",[descriptionTest]),_197754).


test('?- test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_197766)),nondet]):-call(test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest]),_197766).


test('?- test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_197790)),nondet]):-call(test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_197790).


test('?- test_lex_info("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_197802)),nondet]):-call(test_lex_info("A small glass of prune juice is sitting here",[descriptionTest]),_197802).


test('?- test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_197772)),nondet]):-call(test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest]),_197772).


test('?- test_lex_info("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_197844)),nondet]):-call(test_lex_info("You find yourself in the middle of main engineering",[descriptionTest]),_197844).


test('?- test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_197964)),nondet]):-call(test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_197964).


test('?- test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_198264)),nondet]):-call(test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_198264).


test('?- test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_198072)),nondet]):-call(test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_198072).


test('?- test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_198000)),nondet]):-call(test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_198000).


test('?- test_lex_info("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_198180)),nondet]):-call(test_lex_info("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_198180).


test('?- test_lex_info("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_197772)),nondet]):-call(test_lex_info("You're in the middle of Geordi's quarters",[descriptionTest]),_197772).


test('?- test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_197970)),nondet]):-call(test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_197970).


test('?- test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_198294)),nondet]):-call(test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_198294).


test('?- test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_197904)),nondet]):-call(test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest]),_197904).


test('?- test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_197874)),nondet]):-call(test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_197874).


test('?- test_lex_info("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_197760)),nondet]):-call(test_lex_info("You're in the middle of Data's quarters",[descriptionTest]),_197760).


test('?- test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_198822)),nondet]):-call(test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_198822).


test('?- test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_198036)),nondet]):-call(test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_198036).


test('?- test_lex_info("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_198060)),nondet]):-call(test_lex_info("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_198060).


test('?- test_lex_info("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_197688)),nondet]):-call(test_lex_info("You're in the dimly lit Brig",[descriptionTest]),_197688).


test('?- test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_198078)),nondet]):-call(test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_198078).


test('?- test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_198156)),nondet]):-call(test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_198156).


test('?- test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_198450)),nondet]):-call(test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_198450).


test('?- test_lex_info(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_204678)),nondet]):-call(test_lex_info('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_204678).


test('?- test_lex_info("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_198162)),nondet]):-call(test_lex_info("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_198162).


test('?- test_lex_info("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_197766)),nondet]):-call(test_lex_info("You're in the Enterprise transporter room",[descriptionTest]),_197766).


test('?- test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_198252)),nondet]):-call(test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_198252).


test('?- test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_198222)),nondet]):-call(test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_198222).


test('?- test_lex_info("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_197760)),nondet]):-call(test_lex_info("You find yourself in a transporter beam",[descriptionTest]),_197760).


test('?- test_lex_info("All you can see is blue flashing light",[descriptionTest])',[true(compound(_197760)),nondet]):-call(test_lex_info("All you can see is blue flashing light",[descriptionTest]),_197760).


test('?- test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_197916)),nondet]):-call(test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest]),_197916).


test('?- test_lex_info("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_198036)),nondet]):-call(test_lex_info("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_198036).


test('?- test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_197964)),nondet]):-call(test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest]),_197964).


test('?- test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_198342)),nondet]):-call(test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_198342).


test('?- test_lex_info("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_198096)),nondet]):-call(test_lex_info("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_198096).


test('?- test_lex_info("You\'re in the turbolift",[descriptionTest])',[true(compound(_197646)),nondet]):-call(test_lex_info("You're in the turbolift",[descriptionTest]),_197646).


test('?- test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_198024)),nondet]):-call(test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_198024).


test('?- test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_197916)),nondet]):-call(test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest]),_197916).


test('?- test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_197904)),nondet]):-call(test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest]),_197904).


test('?- test_lex_info("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_197658)),nondet]):-call(test_lex_info("You're now on Holodeck 2",[descriptionTest]),_197658).


test('?- test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_198342)),nondet]):-call(test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_198342).


test('?- test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_198090)),nondet]):-call(test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_198090).


test('?- test_lex_info("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_197784)),nondet]):-call(test_lex_info("Right now, this holodeck is not functioning",[descriptionTest]),_197784).


test('?- test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_197892)),nondet]):-call(test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_197892).


test('?- test_lex_info("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_197814)),nondet]):-call(test_lex_info("You're in the main cargo bay of the Enterprise",[descriptionTest]),_197814).


test('?- test_lex_info("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_198024)),nondet]):-call(test_lex_info("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_198024).


test('?- test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_198342)),nondet]):-call(test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_198342).


test('?- test_lex_info("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_197718)),nondet]):-call(test_lex_info("You've arrived in Riker's quarters",[descriptionTest]),_197718).


test('?- test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_198294)),nondet]):-call(test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_198294).


test('?- test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_198228)),nondet]):-call(test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_198228).


test('?- test_lex_info("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_197832)),nondet]):-call(test_lex_info("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_197832).


test('?- test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_198468)),nondet]):-call(test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_198468).


test('?- test_lex_info("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_198264)),nondet]):-call(test_lex_info("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_198264).


test('?- test_lex_info("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_197736)),nondet]):-call(test_lex_info("You emerge into a dark narrow alley",[descriptionTest]),_197736).


test('?- test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_197880)),nondet]):-call(test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest]),_197880).


test('?- test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_198144)),nondet]):-call(test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_198144).


test('?- test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_198180)),nondet]):-call(test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_198180).


test('?- test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_197916)),nondet]):-call(test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_197916).


test('?- test_lex_info("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_197820)),nondet]):-call(test_lex_info("The archway leading out of the holodeck is west",[descriptionTest]),_197820).


test('?- test_lex_info("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_197724)),nondet]):-call(test_lex_info("You're in Doctor Crusher's quarters",[descriptionTest]),_197724).


test('?- test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_198120)),nondet]):-call(test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_198120).


test('?- test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_198210)),nondet]):-call(test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_198210).


test('?- test_lex_info("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_197952)),nondet]):-call(test_lex_info("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_197952).


test('?- test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_198576)),nondet]):-call(test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_198576).


test('?- test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_198048)),nondet]):-call(test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_198048).


test('?- test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_198444)),nondet]):-call(test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_198444).


test('?- test_lex_info("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_197916)),nondet]):-call(test_lex_info("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_197916).


test('?- test_lex_info("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_197844)),nondet]):-call(test_lex_info("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_197844).


test('?- test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_198738)),nondet]):-call(test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_198738).


test('?- test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_197916)),nondet]):-call(test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_197916).


test('?- test_lex_info("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_197826)),nondet]):-call(test_lex_info("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_197826).


test('?- test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_198018)),nondet]):-call(test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_198018).


test('?- test_lex_info("A large grey door leads into space",[descriptionTest])',[true(compound(_197730)),nondet]):-call(test_lex_info("A large grey door leads into space",[descriptionTest]),_197730).


test('?- test_lex_info("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_197916)),nondet]):-call(test_lex_info("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_197916).


test('?- test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_197988)),nondet]):-call(test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest]),_197988).


test('?- test_lex_info("You feel very cold",[descriptionTest])',[true(compound(_197616)),nondet]):-call(test_lex_info("You feel very cold",[descriptionTest]),_197616).


test('?- test_lex_info("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_197886)),nondet]):-call(test_lex_info("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_197886).


test('?- test_lex_info("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_197772)),nondet]):-call(test_lex_info("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_197772).


test('?- test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_198384)),nondet]):-call(test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_198384).


test('?- test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_198108)),nondet]):-call(test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_198108).


test('?- test_lex_info("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_197658)),nondet]):-call(test_lex_info("You're in Worf's quarters",[descriptionTest]),_197658).


test('?- test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_198102)),nondet]):-call(test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_198102).


test('?- test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_198516)),nondet]):-call(test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_198516).


test('?- test_lex_info("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_197724)),nondet]):-call(test_lex_info("You emerge into the Enterprise gym",[descriptionTest]),_197724).


test('?- test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_197826)),nondet]):-call(test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest]),_197826).


test('?- test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_198234)),nondet]):-call(test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_198234).


test('?- test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_198198)),nondet]):-call(test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_198198).


test('?- test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_197886)),nondet]):-call(test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_197886).


test('?- test_lex_info("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_197952)),nondet]):-call(test_lex_info("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_197952).


test('?- test_lex_info("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_198042)),nondet]):-call(test_lex_info("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_198042).


test('?- test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_198336)),nondet]):-call(test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_198336).


test('?- test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_198354)),nondet]):-call(test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_198354).


test('?- test_lex_info("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_197808)),nondet]):-call(test_lex_info("Two large windows offer a great view of space",[descriptionTest]),_197808).


test('?- test_lex_info("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_198060)),nondet]):-call(test_lex_info("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_198060).


test('?- test_lex_info("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_197736)),nondet]):-call(test_lex_info("You're in the Enterprise science lab",[descriptionTest]),_197736).


test('?- test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_198126)),nondet]):-call(test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_198126).


test('?- test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_198624)),nondet]):-call(test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_198624).


test('?- test_lex_info("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_197880)),nondet]):-call(test_lex_info("A complex looking computer console is facing this machine",[descriptionTest]),_197880).


test('?- test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_198036)),nondet]):-call(test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_198036).


test('?- test_lex_info("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_197796)),nondet]):-call(test_lex_info("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_197796).


test('?- test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_198030)),nondet]):-call(test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_198030).


test('?- test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_198402)),nondet]):-call(test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_198402).


test('?- test_lex_info("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_198204)),nondet]):-call(test_lex_info("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_198204).


test('?- test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_198600)),nondet]):-call(test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_198600).


test('?- test_lex_info("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_197802)),nondet]):-call(test_lex_info("You're standing in Captain Picard's ready room",[descriptionTest]),_197802).


test('?- test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_198240)),nondet]):-call(test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_198240).


test('?- test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_198144)),nondet]):-call(test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_198144).


test('?- test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_198342)),nondet]):-call(test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_198342).


test('?- test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_197922)),nondet]):-call(test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest]),_197922).


test('?- test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_198030)),nondet]):-call(test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_198030).


test('?- test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_198342)),nondet]):-call(test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_198342).


test('?- test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_198150)),nondet]):-call(test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_198150).


test('?- test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_197946)),nondet]):-call(test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_197946).


test('?- test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_198294)),nondet]):-call(test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_198294).


test('?- test_lex_info("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_197892)),nondet]):-call(test_lex_info("This is where the ship's pilot and information officer sit",[descriptionTest]),_197892).


test('?- test_lex_info("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_197814)),nondet]):-call(test_lex_info("You're in the conference room of the Enterprise",[descriptionTest]),_197814).


test('?- test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_198360)),nondet]):-call(test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_198360).


test('?- test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_197982)),nondet]):-call(test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_197982).


test('?- test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_198078)),nondet]):-call(test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_198078).


test('?- test_lex_info("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_197910)),nondet]):-call(test_lex_info("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_197910).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_120872)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_120872).


test('?- test_lex_info("no two owners eat pizza",[sanity])',[true(compound(_120864)),nondet]):-call(test_lex_info("no two owners eat pizza",[sanity]),_120864).


test('?- test_lex_info("no three owners eat pizza",[sanity])',[true(compound(_120864)),nondet]):-call(test_lex_info("no three owners eat pizza",[sanity]),_120864).


test('?- test_lex_info("no three owners eat the same pizza",[sanity])',[true(compound(_120866)),nondet]):-call(test_lex_info("no three owners eat the same pizza",[sanity]),_120866).


test('?- test_lex_info("no three owners eat the same kind of pizza",[sanity])',[true(compound(_120868)),nondet]):-call(test_lex_info("no three owners eat the same kind of pizza",[sanity]),_120868).


test('?- test_lex_info("no owners eat the same pizza",[sanity])',[true(compound(_120864)),nondet]):-call(test_lex_info("no owners eat the same pizza",[sanity]),_120864).


test('?- test_lex_info("no owners eat the same kind of pizza",[sanity])',[true(compound(_120866)),nondet]):-call(test_lex_info("no owners eat the same kind of pizza",[sanity]),_120866).


test('?- test_lex_info("there are 5 houses",[sanity])',[true(compound(_120862)),nondet]):-call(test_lex_info("there are 5 houses",[sanity]),_120862).


test('?- test_lex_info("there are not 5 houses",[sanity])',[true(compound(_120862)),nondet]):-call(test_lex_info("there are not 5 houses",[sanity]),_120862).


test('?- test_lex_info("there are not zero houses",[sanity])',[true(compound(_120864)),nondet]):-call(test_lex_info("there are not zero houses",[sanity]),_120864).


test('?- test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_120872)),nondet]):-call(test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug]),_120872).


test('?- test_lex_info(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_120866)),nondet]):-call(test_lex_info(noun_phrase("at most the 5 owners"),[sanity]),_120866).


test('?- test_lex_info(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_120866)),nondet]):-call(test_lex_info(noun_phrase("at most 5 owners"),[sanity]),_120866).


test('?- test_lex_info(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_120866)),nondet]):-call(test_lex_info(noun_phrase("less than 3 owners"),[sanity]),_120866).


test('?- test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_120868)),nondet]):-call(test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity]),_120868).


test('?- test_lex_info(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_120872)),nondet]):-call(test_lex_info(noun_phrase("no three owners"),[sanity,no_working]),_120872).


test('?- test_lex_info("terry writes a non-program.",[tell])',[true(compound(_120864)),nondet]):-call(test_lex_info("terry writes a non-program.",[tell]),_120864).


test('?- test_lex_info("every nonhuman programmer writes a program.",[tell])',[true(compound(_120868)),nondet]):-call(test_lex_info("every nonhuman programmer writes a program.",[tell]),_120868).


test('?- test_lex_info("every human programmer writes a not a program.",[tell])',[true(compound(_120868)),nondet]):-call(test_lex_info("every human programmer writes a not a program.",[tell]),_120868).


test('?- test_lex_info("every human programmer happily writes a not a program.",[tell])',[true(compound(_120870)),nondet]):-call(test_lex_info("every human programmer happily writes a not a program.",[tell]),_120870).


:- end_tests(test_lex_info).



:- begin_tests(chat80).



test('?- chat80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_120912)),nondet]):-call(chat80("His friends are liked by hers.",[bad_juju,sanity]),_120912).


test('?- chat80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_120914)),nondet]):-call(chat80("Her friends are not liked by his.",[bad_juju,sanity]),_120914).


test('?- chat80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_120914)),nondet]):-call(chat80("Do their friends like each other?",[bad_juju,feature]),_120914).


test('?- chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_120856),sanity])',[true(compound(_120918)),nondet]):-call(chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_120856),sanity]),_120918).


test('?- chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_120854),sanity])',[true(compound(_120916)),nondet]):-call(chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_120854),sanity]),_120916).


test('?- chat80("There are 5 houses with five different colors.",[riddle(_120858),sanity])',[true(compound(_120920)),nondet]):-call(chat80("There are 5 houses with five different colors.",[riddle(_120858),sanity]),_120920).


test('?- chat80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_120910)),nondet]):-call(chat80("There are 5 houses",[riddle_prep,sanity]),_120910).


test('?- chat80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_120914)),nondet]):-call(chat80("Each house has a different color",[riddle_prep,sanity]),_120914).


test('?- chat80("In each house lives a person with a different nationality.",[riddle(_120862),sanity])',[true(compound(_120924)),nondet]):-call(chat80("In each house lives a person with a different nationality.",[riddle(_120862),sanity]),_120924).


test('?- chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_120936)),nondet]):-call(chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_120936).


test('?- chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_120924)),nondet]):-call(chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_120924).


test('?- chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_120922)),nondet]):-call(chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_120922).


test('?- chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_120926)),nondet]):-call(chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_120926).


test('?- chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_120930)),nondet]):-call(chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_120930).


test('?- chat80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_120922)),nondet]):-call(chat80("No owners have the same pet.",[riddle(1),sanity,regression]),_120922).


test('?- chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_120926)),nondet]):-call(chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_120926).


test('?- chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_120920)),nondet]):-call(chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_120920).


test('?- chat80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_120924)),nondet]):-call(chat80("No two owners have the same pet.",[riddle(1),sanity,regression]),_120924).


test('?- chat80("The brit lives in the red house.",[riddle(_120856),sanity])',[true(compound(_120918)),nondet]):-call(chat80("The brit lives in the red house.",[riddle(_120856),sanity]),_120918).


test('?- chat80("The swede keeps dogs as pets.",[riddle(_120854),sanity])',[true(compound(_120916)),nondet]):-call(chat80("The swede keeps dogs as pets.",[riddle(_120854),sanity]),_120916).


test('?- chat80("A dane drinks tea.",[riddle(_120852),sanity])',[true(compound(_120914)),nondet]):-call(chat80("A dane drinks tea.",[riddle(_120852),sanity]),_120914).


test('?- chat80("The green house is on the left of the white house.",[riddle(_120860),sanity])',[true(compound(_120922)),nondet]):-call(chat80("The green house is on the left of the white house.",[riddle(_120860),sanity]),_120922).


test('?- chat80("The green house\'s owner drinks coffee.",[riddle(_120856),sanity])',[true(compound(_120918)),nondet]):-call(chat80("The green house's owner drinks coffee.",[riddle(_120856),sanity]),_120918).


test('?- chat80("The person who smokes Pall Mall rears birds.",[riddle(_120858),sanity,regression])',[true(compound(_120926)),nondet]):-call(chat80("The person who smokes Pall Mall rears birds.",[riddle(_120858),sanity,regression]),_120926).


test('?- chat80("The owner of the yellow house smokes Dunhill.",[riddle(_120858),sanity])',[true(compound(_120920)),nondet]):-call(chat80("The owner of the yellow house smokes Dunhill.",[riddle(_120858),sanity]),_120920).


test('?- chat80("The man living in the center house drinks milk.",[riddle(_120860),sanity])',[true(compound(_120922)),nondet]):-call(chat80("The man living in the center house drinks milk.",[riddle(_120860),sanity]),_120922).


test('?- chat80("The Norwegian lives in the first house .",[riddle(_120858),sanity])',[true(compound(_120920)),nondet]):-call(chat80("The Norwegian lives in the first house .",[riddle(_120858),sanity]),_120920).


test('?- chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_120864),sanity])',[true(compound(_120926)),nondet]):-call(chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_120864),sanity]),_120926).


test('?- chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_120864),sanity])',[true(compound(_120926)),nondet]):-call(chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_120864),sanity]),_120926).


test('?- chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_120858),sanity])',[true(compound(_120920)),nondet]):-call(chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_120858),sanity]),_120920).


test('?- chat80("The German smokes Prince.",[riddle(_120854),sanity])',[true(compound(_120916)),nondet]):-call(chat80("The German smokes Prince.",[riddle(_120854),sanity]),_120916).


test('?- chat80("The Norwegian lives next to the blue house.",[riddle(_120858),sanity])',[true(compound(_120920)),nondet]):-call(chat80("The Norwegian lives next to the blue house.",[riddle(_120858),sanity]),_120920).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_120862),sanity])',[true(compound(_120924)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_120862),sanity]),_120924).


test('?- chat80("Who owns the fish?",[riddle(_120852),sanity])',[true(compound(_120914)),nondet]):-call(chat80("Who owns the fish?",[riddle(_120852),sanity]),_120914).


test('?- chat80("One woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("One woman paints.",[quants]),_120904).


test('?- chat80("No woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("No woman paints.",[quants]),_120904).


test('?- chat80("Some woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Some woman paints.",[quants]),_120904).


test('?- chat80("Every woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Every woman paints.",[quants]),_120904).


test('?- chat80("Each woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Each woman paints.",[quants]),_120904).


test('?- chat80("Any woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Any woman paints.",[quants]),_120904).


test('?- chat80("The woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("The woman paints.",[quants]),_120904).


test('?- chat80("The not woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("The not woman paints.",[quants]),_120904).


test('?- chat80("Not a woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Not a woman paints.",[quants]),_120904).


test('?- chat80("Not one woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Not one woman paints.",[quants]),_120904).


test('?- chat80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_120904)),nondet]):-call(chat80("Not no woman paints.",[quants_neg_postcond]),_120904).


test('?- chat80("Not some woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Not some woman paints.",[quants]),_120904).


test('?- chat80("Not every woman paints.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("Not every woman paints.",[quants]),_120906).


test('?- chat80("Not each woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Not each woman paints.",[quants]),_120904).


test('?- chat80("Not any woman paints.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Not any woman paints.",[quants]),_120904).


test('?- chat80("The women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("The women paint.",[quants]),_120904).


test('?- chat80("Women paint.",[quants])',[true(compound(_120902)),nondet]):-call(chat80("Women paint.",[quants]),_120902).


test('?- chat80("Some women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Some women paint.",[quants]),_120904).


test('?- chat80("No women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("No women paint.",[quants]),_120904).


test('?- chat80("All women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("All women paint.",[quants]),_120904).


test('?- chat80("Any women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Any women paint.",[quants]),_120904).


test('?- chat80("Not women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Not women paint.",[quants]),_120904).


test('?- chat80("Not no women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Not no women paint.",[quants]),_120904).


test('?- chat80("Not all women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Not all women paint.",[quants]),_120904).


test('?- chat80("Not any women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Not any women paint.",[quants]),_120904).


test('?- chat80("The three women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("The three women paint.",[quants]),_120904).


test('?- chat80("Three women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Three women paint.",[quants]),_120904).


test('?- chat80("Some three women paint.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("Some three women paint.",[quants]),_120906).


test('?- chat80("No three women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("No three women paint.",[quants]),_120904).


test('?- chat80("Every three women paint.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("Every three women paint.",[quants]),_120906).


test('?- chat80("All three women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("All three women paint.",[quants]),_120904).


test('?- chat80("Any three women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Any three women paint.",[quants]),_120904).


test('?- chat80("Not three women paint.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("Not three women paint.",[quants]),_120904).


test('?- chat80("Not some three women paint.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("Not some three women paint.",[quants]),_120906).


test('?- chat80("Not no three women paint.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("Not no three women paint.",[quants]),_120906).


test('?- chat80("Not all three women paint.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("Not all three women paint.",[quants]),_120906).


test('?- chat80("Not every three women paint.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("Not every three women paint.",[quants]),_120906).


test('?- chat80("Not any three women paint.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("Not any three women paint.",[quants]),_120906).


test('?- chat80("Not three of the women paint.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("Not three of the women paint.",[quants]),_120906).


test('?- chat80("Not some of the three women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("Not some of the three women paint.",[quants]),_120908).


test('?- chat80("Not no three of the women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("Not no three of the women paint.",[quants]),_120908).


test('?- chat80("Not all three of the women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("Not all three of the women paint.",[quants]),_120908).


test('?- chat80("Not every three of the women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("Not every three of the women paint.",[quants]),_120908).


test('?- chat80("Not any three of the women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("Not any three of the women paint.",[quants]),_120908).


test('?- chat80("Not three of the four women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("Not three of the four women paint.",[quants]),_120908).


test('?- chat80("Not none of three out of the four women paint.",[quants])',[true(compound(_120910)),nondet]):-call(chat80("Not none of three out of the four women paint.",[quants]),_120910).


test('?- chat80("Not all three of the four women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("Not all three of the four women paint.",[quants]),_120908).


test('?- chat80("Not any three of the four women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("Not any three of the four women paint.",[quants]),_120908).


test('?- chat80("Three of the four women paint.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("Three of the four women paint.",[quants]),_120906).


test('?- chat80("Three out of the four women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("Three out of the four women paint.",[quants]),_120908).


test('?- chat80("All three of the four women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("All three of the four women paint.",[quants]),_120908).


test('?- chat80("Any three of the four women paint.",[quants])',[true(compound(_120908)),nondet]):-call(chat80("Any three of the four women paint.",[quants]),_120908).


test('?- chat80("I paint",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("I paint",[pronoun]),_120902).


test('?- chat80("you paint",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("you paint",[pronoun]),_120902).


test('?- chat80("We paint",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("We paint",[pronoun]),_120902).


test('?- chat80("None paint",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("None paint",[pronoun]),_120902).


test('?- chat80("They paint",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("They paint",[pronoun]),_120902).


test('?- chat80("Some paint",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("Some paint",[pronoun]),_120902).


test('?- chat80("It paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("It paints",[pronoun]),_120902).


test('?- chat80("he paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("he paints",[pronoun]),_120902).


test('?- chat80("She paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("She paints",[pronoun]),_120902).


test('?- chat80("Someone paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("Someone paints",[pronoun]),_120902).


test('?- chat80("Anybody paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("Anybody paints",[pronoun]),_120902).


test('?- chat80("Anyone paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("Anyone paints",[pronoun]),_120902).


test('?- chat80("Anything paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Anything paints",[pronoun]),_120904).


test('?- chat80("Everybody paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Everybody paints",[pronoun]),_120904).


test('?- chat80("Everyone paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Everyone paints",[pronoun]),_120904).


test('?- chat80("Everything paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Everything paints",[pronoun]),_120904).


test('?- chat80("Nobody paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("Nobody paints",[pronoun]),_120902).


test('?- chat80("No one paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("No one paints",[pronoun]),_120902).


test('?- chat80("Nothing paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("Nothing paints",[pronoun]),_120902).


test('?- chat80("One paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("One paints",[pronoun]),_120902).


test('?- chat80("Somebody paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Somebody paints",[pronoun]),_120904).


test('?- chat80("Something paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Something paints",[pronoun]),_120904).


test('?- chat80("Not anybody paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Not anybody paints",[pronoun]),_120904).


test('?- chat80("Not anyone paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Not anyone paints",[pronoun]),_120904).


test('?- chat80("Not anything paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Not anything paints",[pronoun]),_120904).


test('?- chat80("Not everybody paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Not everybody paints",[pronoun]),_120904).


test('?- chat80("Not everyone paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Not everyone paints",[pronoun]),_120904).


test('?- chat80("Not everything paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Not everything paints",[pronoun]),_120904).


test('?- chat80("Not nothing paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Not nothing paints",[pronoun]),_120904).


test('?- chat80("Not one paints",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("Not one paints",[pronoun]),_120902).


test('?- chat80("Not somebody paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Not somebody paints",[pronoun]),_120904).


test('?- chat80("Not something paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("Not something paints",[pronoun]),_120904).


test('?- chat80("She likes i",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("She likes i",[pronoun]),_120902).


test('?- chat80("She likes me",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("She likes me",[pronoun]),_120902).


test('?- chat80("She likes you",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("She likes you",[pronoun]),_120902).


test('?- chat80("She likes it",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("She likes it",[pronoun]),_120902).


test('?- chat80("She likes us",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("She likes us",[pronoun]),_120902).


test('?- chat80("She likes them",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("She likes them",[pronoun]),_120902).


test('?- chat80("She likes no one",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("She likes no one",[pronoun]),_120904).


test('?- chat80("She likes none",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("She likes none",[pronoun]),_120902).


test('?- chat80("She likes him",[pronoun])',[true(compound(_120902)),nondet]):-call(chat80("She likes him",[pronoun]),_120902).


test('?- chat80("She likes herself",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("She likes herself",[pronoun]),_120904).


test('?- chat80("She likes himself",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("She likes himself",[pronoun]),_120904).


test('?- chat80("It is us that paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("It is us that paints",[pronoun]),_120904).


test('?- chat80("It is them that paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("It is them that paints",[pronoun]),_120904).


test('?- chat80("It is he that paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("It is he that paints",[pronoun]),_120904).


test('?- chat80("It is she that paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("It is she that paints",[pronoun]),_120904).


test('?- chat80("It is her that paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("It is her that paints",[pronoun]),_120904).


test('?- chat80("It is him that paints",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("It is him that paints",[pronoun]),_120904).


test('?- chat80("We are us that paint",[pronoun])',[true(compound(_120904)),nondet]):-call(chat80("We are us that paint",[pronoun]),_120904).


test('?- chat80("We are all of us that paint",[pronoun])',[true(compound(_120906)),nondet]):-call(chat80("We are all of us that paint",[pronoun]),_120906).


test('?- chat80("It is everybody that paints",[pronoun])',[true(compound(_120906)),nondet]):-call(chat80("It is everybody that paints",[pronoun]),_120906).


test('?- chat80("Every man that paints likes monet.",[bratko])',[true(compound(_120908)),nondet]):-call(chat80("Every man that paints likes monet.",[bratko]),_120908).


test('?- chat80("A woman that admires John paints.",[bratko])',[true(compound(_120908)),nondet]):-call(chat80("A woman that admires John paints.",[bratko]),_120908).


test('?- chat80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_120914)),nondet]):-call(chat80("Every woman that likes a man that admires monet paints.",[bratko]),_120914).


test('?- chat80("John likes Annie.",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("John likes Annie.",[bratko]),_120904).


test('?- chat80("Annie likes a man that admires monet.",[bratko])',[true(compound(_120908)),nondet]):-call(chat80("Annie likes a man that admires monet.",[bratko]),_120908).


test('?- chat80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_120908)),nondet]):-call(chat80("Bertrand Russell wrote principia.",[bratko]),_120908).


test('?- chat80("An author wrote principia.",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("An author wrote principia.",[bratko]),_120906).


test('?- chat80("Iraq is a country.",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("Iraq is a country.",[bratko]),_120904).


test('?- chat80("A happy author wrote principia.",[bratko])',[true(compound(_120908)),nondet]):-call(chat80("A happy author wrote principia.",[bratko]),_120908).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_120904).


test('?- chat80("Bertrand is an author.",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("Bertrand is an author.",[bratko]),_120904).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_120904).


test('?- chat80("Every author is a programmer.",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("Every author is a programmer.",[bratko]),_120906).


test('?- chat80("Is Bertrand an programmer?",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("Is Bertrand an programmer?",[bratko]),_120906).


test('?- chat80("What is a author?",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("What is a author?",[bratko]),_120904).


test('?- chat80("What did Bertrand write?",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("What did Bertrand write?",[bratko]),_120906).


test('?- chat80("What is a book?",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("What is a book?",[bratko]),_120904).


test('?- chat80("Principia is a book.",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("Principia is a book.",[bratko]),_120904).


test('?- chat80("Bertrand is Bertrand.",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("Bertrand is Bertrand.",[bratko]),_120904).


test('?- chat80("Shrdlu halts.",[bratko])',[true(compound(_120902)),nondet]):-call(chat80("Shrdlu halts.",[bratko]),_120902).


test('?- chat80("Every student wrote a program.",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("Every student wrote a program.",[bratko]),_120906).


test('?- chat80("Terry writes a program.",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("Terry writes a program.",[bratko]),_120906).


test('?- chat80("Terry writes a program that halts.",[bratko])',[true(compound(_120908)),nondet]):-call(chat80("Terry writes a program that halts.",[bratko]),_120908).


test('?- chat80("An author of every book wrote a program.",[bratko])',[true(compound(_120910)),nondet]):-call(chat80("An author of every book wrote a program.",[bratko]),_120910).


test('?- chat80("A man hapilly maried paints.",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("A man hapilly maried paints.",[bratko]),_120906).


test('?- chat80("A hapilly maried man paints.",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("A hapilly maried man paints.",[bratko]),_120906).


test('?- chat80("A man who knows paints.",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("A man who knows paints.",[bratko]),_120906).


test('?- chat80("A man gives something.",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("A man gives something.",[bratko]),_120904).


test('?- chat80("A man gives his word.",[bratko])',[true(compound(_120904)),nondet]):-call(chat80("A man gives his word.",[bratko]),_120904).


test('?- chat80("A man of his word paints.",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("A man of his word paints.",[bratko]),_120906).


test('?- chat80("A man paints.",[bratko])',[true(compound(_120902)),nondet]):-call(chat80("A man paints.",[bratko]),_120902).


test('?- chat80("A man that paints paints.",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("A man that paints paints.",[bratko]),_120906).


test('?- chat80("A man walks.",[bratko])',[true(compound(_120902)),nondet]):-call(chat80("A man walks.",[bratko]),_120902).


test('?- chat80("A man that walks paints.",[bratko])',[true(compound(_120906)),nondet]):-call(chat80("A man that walks paints.",[bratko]),_120906).


test('?- chat80("It halts.",[bratko])',[true(compound(_120902)),nondet]):-call(chat80("It halts.",[bratko]),_120902).


test('?- chat80("A man of his word that walks paints.",[bratko])',[true(compound(_120908)),nondet]):-call(chat80("A man of his word that walks paints.",[bratko]),_120908).


test('?- chat80("The cost of what the product is changes.",[bratko])',[true(compound(_120910)),nondet]):-call(chat80("The cost of what the product is changes.",[bratko]),_120910).


test('?- chat80("We need a virtual machine server.",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("We need a virtual machine server.",[aindy]),_120908).


test('?- chat80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_120912)),nondet]):-call(chat80("The virtual machine server should have several VMs.",[aindy]),_120912).


test('?- chat80("One VM should be the POSI VM.",[aindy])',[true(compound(_120906)),nondet]):-call(chat80("One VM should be the POSI VM.",[aindy]),_120906).


test('?- chat80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("One VM should be the FRDCSA.org VM.",[aindy]),_120908).


test('?- chat80("One VM should be the mail server.",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("One VM should be the mail server.",[aindy]),_120908).


test('?- chat80("One computer should be the backup server.",[aindy])',[true(compound(_120910)),nondet]):-call(chat80("One computer should be the backup server.",[aindy]),_120910).


test('?- chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_120926)),nondet]):-call(chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_120926).


test('?- chat80("I need a fast computer for work.",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("I need a fast computer for work.",[aindy]),_120908).


test('?- chat80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_120918)),nondet]):-call(chat80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_120918).


test('?- chat80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_120914)),nondet]):-call(chat80("I need a dedicated computer for network security research.",[aindy]),_120914).


test('?- chat80("I need a machine to run Tails on.",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("I need a machine to run Tails on.",[aindy]),_120908).


test('?- chat80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_120912)),nondet]):-call(chat80("I need a machine off the network for airgap security.",[aindy]),_120912).


test('?- chat80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_120918)),nondet]):-call(chat80("One VM should be the game server for running game development projects.",[aindy]),_120918).


test('?- chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_120912)),nondet]):-call(chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_120912).


test('?- chat80("I could read about how to build a private watson.",[aindy])',[true(compound(_120912)),nondet]):-call(chat80("I could read about how to build a private watson.",[aindy]),_120912).


test('?- chat80("Need backups.",[aindy])',[true(compound(_120902)),nondet]):-call(chat80("Need backups.",[aindy]),_120902).


test('?- chat80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_120916)),nondet]):-call(chat80("Practice setting up backups of a machine to a different machine.",[aindy]),_120916).


test('?- chat80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_120914)),nondet]):-call(chat80("Set up schedules for updating the software on all machines.",[aindy]),_120914).


test('?- chat80("Read books on server room layout.",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("Read books on server room layout.",[aindy]),_120908).


test('?- chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_120916)),nondet]):-call(chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_120916).


test('?- chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_120918)),nondet]):-call(chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_120918).


test('?- chat80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("I want a gaming computer.  Do I?",[aindy]),_120908).


test('?- chat80("I want a windows 7 computer for work.",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("I want a windows 7 computer for work.",[aindy]),_120908).


test('?- chat80("I want a fast linux computer for work.",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("I want a fast linux computer for work.",[aindy]),_120908).


test('?- chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_120928)),nondet]):-call(chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_120928).


test('?- chat80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_120914)),nondet]):-call(chat80("I could install a fresh operating system on justin for work.",[aindy]),_120914).


test('?- chat80("I probably want a separate git computer.",[aindy])',[true(compound(_120910)),nondet]):-call(chat80("I probably want a separate git computer.",[aindy]),_120910).


test('?- chat80("I need to start buying servers.",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("I need to start buying servers.",[aindy]),_120908).


test('?- chat80("I want a rackmount case for servers.",[aindy])',[true(compound(_120908)),nondet]):-call(chat80("I want a rackmount case for servers.",[aindy]),_120908).


test('?- chat80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_120914)),nondet]):-call(chat80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_120914).


test('?- chat80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_120912)),nondet]):-call(chat80("2 oceans border each african country.",[chat80(tell)]),_120912).


test('?- chat80("There are 10 large cars.",[quants])',[true(compound(_120906)),nondet]):-call(chat80("There are 10 large cars.",[quants]),_120906).


test('?- chat80("There are 10 oceans.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("There are 10 oceans.",[quants]),_120904).


test('?- chat80("There are 10 women.",[quants])',[true(compound(_120904)),nondet]):-call(chat80("There are 10 women.",[quants]),_120904).


test('?- chat80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_120912)),nondet]):-call(chat80("An ocean borders an African country.",[chat80(tell)]),_120912).


test('?- chat80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_120920)),nondet]):-call(chat80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_120920).


test('?- chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_120922)),nondet]):-call(chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_120922).


test('?- chat80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_120908)),nondet]):-call(chat80("Bertrand wrote a book.",[bratko(book)]),_120908).


test('?- chat80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_120910)),nondet]):-call(chat80("Bertrand wrote nothing.",[bratko(book)]),_120910).


test('?- chat80("Bertrand wrote.",[bratko(book)])',[true(compound(_120908)),nondet]):-call(chat80("Bertrand wrote.",[bratko(book)]),_120908).


test('?- chat80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_120912)),nondet]):-call(chat80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_120912).


test('?- chat80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_120910)),nondet]):-call(chat80("Bertrand wrote about Gottlob.",[bratko(book)]),_120910).


test('?- chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_120912)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_120912).


test('?- chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_120914)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_120914).


test('?- chat80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_120912)),nondet]):-call(chat80("What did alfred write to Bertrand?",[bratko(book)]),_120912).


test('?- chat80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_120908)),nondet]):-call(chat80("Alfred wrote a letter.",[bratko(book)]),_120908).


test('?- chat80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_120912)),nondet]):-call(chat80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_120912).


test('?- chat80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_120912)),nondet]):-call(chat80("Alfred wrote something to Bertrand.",[bratko(book)]),_120912).


test('?- chat80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_120910)),nondet]):-call(chat80("Alfred wrote to Bertrand.",[bratko(book)]),_120910).


test('?- chat80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_120912)),nondet]):-call(chat80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_120912).


test('?- chat80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_120912)),nondet]):-call(chat80("Alfred wrote Bertrand a letter.",[bratko(book)]),_120912).


test('?- chat80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_120912)),nondet]):-call(chat80("Who did alfred write a letter to?",[bratko(book)]),_120912).


test('?- chat80("Alfred gave it.",[bratko(book)])',[true(compound(_120908)),nondet]):-call(chat80("Alfred gave it.",[bratko(book)]),_120908).


test('?- chat80("Alfred gave a book.",[bratko(book)])',[true(compound(_120908)),nondet]):-call(chat80("Alfred gave a book.",[bratko(book)]),_120908).


test('?- chat80("a pride of lions paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a pride of lions paint",[of]),_120904).


test('?- chat80("a flock of birds paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a flock of birds paint",[of]),_120904).


test('?- chat80("a litter of pups paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a litter of pups paint",[of]),_120904).


test('?- chat80("a prickle of porcupines paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a prickle of porcupines paint",[of]),_120906).


test('?- chat80("a litter of cubs paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a litter of cubs paint",[of]),_120904).


test('?- chat80("a pack of dogs paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a pack of dogs paint",[of]),_120904).


test('?- chat80("a colony of beavers paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a colony of beavers paint",[of]),_120906).


test('?- chat80("a gaggle of geese paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a gaggle of geese paint",[of]),_120906).


test('?- chat80("a family of otters paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a family of otters paint",[of]),_120906).


test('?- chat80("a huddle of walruses paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a huddle of walruses paint",[of]),_120906).


test('?- chat80("a herd of deer paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a herd of deer paint",[of]),_120904).


test('?- chat80("a culture of bacteria paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a culture of bacteria paint",[of]),_120906).


test('?- chat80("a swarm of bees paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a swarm of bees paint",[of]),_120904).


test('?- chat80("a bed of clams paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a bed of clams paint",[of]),_120904).


test('?- chat80("a school of cod paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a school of cod paint",[of]),_120904).


test('?- chat80("a herd of dinosaurs paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a herd of dinosaurs paint",[of]),_120906).


test('?- chat80("a mess of iguanas paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a mess of iguanas paint",[of]),_120906).


test('?- chat80("a mob of wombats paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a mob of wombats paint",[of]),_120904).


test('?- chat80("a pod of pelicans paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a pod of pelicans paint",[of]),_120906).


test('?- chat80("a troop of boy scouts paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a troop of boy scouts paint",[of]),_120906).


test('?- chat80("a team of athletes paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a team of athletes paint",[of]),_120906).


test('?- chat80("a panel of experts paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a panel of experts paint",[of]),_120906).


test('?- chat80("a crew of sailors paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a crew of sailors paint",[of]),_120906).


test('?- chat80("a band of robbers paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a band of robbers paint",[of]),_120906).


test('?- chat80("a troupe of performers paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a troupe of performers paint",[of]),_120906).


test('?- chat80("a crowd of onlookers paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a crowd of onlookers paint",[of]),_120906).


test('?- chat80("a curse of painters paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("a curse of painters paint",[of]),_120906).


test('?- chat80("a fleet of cars paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a fleet of cars paint",[of]),_120904).


test('?- chat80("a pair of shoes paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a pair of shoes paint",[of]),_120904).


test('?- chat80("a fleet of ships paint",[of])',[true(compound(_120904)),nondet]):-call(chat80("a fleet of ships paint",[of]),_120904).


test('?- chat80("an anthology of stories paint",[of])',[true(compound(_120906)),nondet]):-call(chat80("an anthology of stories paint",[of]),_120906).


test('?- chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_197880)),nondet]):-call(chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_197880).


test('?- chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_197850)),nondet]):-call(chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_197850).


test('?- chat80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_197988)),nondet]):-call(chat80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_197988).


test('?- chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_197832)),nondet]):-call(chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_197832).


test('?- chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_197880)),nondet]):-call(chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_197880).


test('?- chat80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_197976)),nondet]):-call(chat80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_197976).


test('?- chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_197934)),nondet]):-call(chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_197934).


test('?- chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_198126)),nondet]):-call(chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_198126).


test('?- chat80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_197898)),nondet]):-call(chat80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_197898).


test('?- chat80("Logged on player character",[descriptionTest])',[true(compound(_197706)),nondet]):-call(chat80("Logged on player character",[descriptionTest]),_197706).


test('?- chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_197964)),nondet]):-call(chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_197964).


test('?- chat80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_197910)),nondet]):-call(chat80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_197910).


test('?- chat80("Wesley is her son",[descriptionTest])',[true(compound(_197652)),nondet]):-call(chat80("Wesley is her son",[descriptionTest]),_197652).


test('?- chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_198300)),nondet]):-call(chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_198300).


test('?- chat80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_197730)),nondet]):-call(chat80("Counselor Deanna Troi is here",[descriptionTest]),_197730).


test('?- chat80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_197826)),nondet]):-call(chat80("Counselor Troi is the ship's main counselor",[descriptionTest]),_197826).


test('?- chat80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_197982)),nondet]):-call(chat80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_197982).


test('?- chat80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_197856)),nondet]):-call(chat80("Commander William Riker is here, staring at you",[descriptionTest]),_197856).


test('?- chat80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_197862)),nondet]):-call(chat80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_197862).


test('?- chat80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_197832)),nondet]):-call(chat80("He's in charge of keeping the crew in line",[descriptionTest]),_197832).


test('?- chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_197898)),nondet]):-call(chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_197898).


test('?- chat80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_197796)),nondet]):-call(chat80("Captain Picard is a very important man",[descriptionTest]),_197796).


test('?- chat80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_197898)),nondet]):-call(chat80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_197898).


test('?- chat80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_197742)),nondet]):-call(chat80("He's very smart, and very wise",[descriptionTest]),_197742).


test('?- chat80("Don\'t mess with him!",[descriptionTest])',[true(compound(_197670)),nondet]):-call(chat80("Don't mess with him!",[descriptionTest]),_197670).


test('?- chat80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_197748)),nondet]):-call(chat80("Guinan is here, tending the bar",[descriptionTest]),_197748).


test('?- chat80("Guinan is a strange being",[descriptionTest])',[true(compound(_197706)),nondet]):-call(chat80("Guinan is a strange being",[descriptionTest]),_197706).


test('?- chat80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_198414)),nondet]):-call(chat80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_198414).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_197916)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_197916).


test('?- chat80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_197916)),nondet]):-call(chat80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_197916).


test('?- chat80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_198216)),nondet]):-call(chat80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_198216).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_197910)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_197910).


test('?- chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_197934)),nondet]):-call(chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_197934).


test('?- chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_198204)),nondet]):-call(chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_198204).


test('?- chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_198126)),nondet]):-call(chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_198126).


test('?- chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_197916)),nondet]):-call(chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_197916).


test('?- chat80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_197796)),nondet]):-call(chat80("Livingston is Captain Picard's pet fish",[descriptionTest]),_197796).


test('?- chat80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_198048)),nondet]):-call(chat80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_198048).


test('?- chat80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_197898)),nondet]):-call(chat80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_197898).


test('?- chat80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_197766)),nondet]):-call(chat80("Spot is Data's orange coloured cat",[descriptionTest]),_197766).


test('?- chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_198288)),nondet]):-call(chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_198288).


test('?- chat80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_197910)),nondet]):-call(chat80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_197910).


test('?- chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_197892)),nondet]):-call(chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_197892).


test('?- chat80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_198234)),nondet]):-call(chat80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_198234).


test('?- chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_197880)),nondet]):-call(chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_197880).


test('?- chat80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_197748)),nondet]):-call(chat80("Alexander Rozhenko is Worf's son",[descriptionTest]),_197748).


test('?- chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_198030)),nondet]):-call(chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_198030).


test('?- chat80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_197946)),nondet]):-call(chat80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_197946).


test('?- chat80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_197892)),nondet]):-call(chat80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_197892).


test('?- chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_198294)),nondet]):-call(chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_198294).


test('?- chat80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_197772)),nondet]):-call(chat80("A large phaser rifle is lying here",[descriptionTest]),_197772).


test('?- chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_198366)),nondet]):-call(chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_198366).


test('?- chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_197970)),nondet]):-call(chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_197970).


test('?- chat80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198318)),nondet]):-call(chat80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198318).


test('?- chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_197970)),nondet]):-call(chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_197970).


test('?- chat80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198342)),nondet]):-call(chat80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198342).


test('?- chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_197946)),nondet]):-call(chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_197946).


test('?- chat80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198318)),nondet]):-call(chat80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198318).


test('?- chat80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_197868)),nondet]):-call(chat80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_197868).


test('?- chat80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_198408)),nondet]):-call(chat80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_198408).


test('?- chat80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_197838)),nondet]):-call(chat80("A Starfleet communication badge is lying here",[descriptionTest]),_197838).


test('?- chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_198876)),nondet]):-call(chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_198876).


test('?- chat80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_197832)),nondet]):-call(chat80("Worf's silver chain sash has been left here",[descriptionTest]),_197832).


test('?- chat80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_198444)),nondet]):-call(chat80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_198444).


test('?- chat80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_197724)),nondet]):-call(chat80("Geordi's VISOR is lying here",[descriptionTest]),_197724).


test('?- chat80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_199116)),nondet]):-call(chat80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_199116).


test('?- chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_197892)),nondet]):-call(chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_197892).


test('?- chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_198678)),nondet]):-call(chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_198678).


test('?- chat80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_197826)),nondet]):-call(chat80("A shard of dilithium crystal is lying here",[descriptionTest]),_197826).


test('?- chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_198480)),nondet]):-call(chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_198480).


test('?- chat80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_197838)),nondet]):-call(chat80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_197838).


test('?- chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_198450)),nondet]):-call(chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_198450).


test('?- chat80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_197850)),nondet]):-call(chat80("Commander Riker's trombone has been placed here",[descriptionTest]),_197850).


test('?- chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_198282)),nondet]):-call(chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_198282).


test('?- chat80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_197778)),nondet]):-call(chat80("A small cup of tea is sitting here",[descriptionTest]),_197778).


test('?- chat80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_197796)),nondet]):-call(chat80("A bottle of synthehol is standing here",[descriptionTest]),_197796).


test('?- chat80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_197808)),nondet]):-call(chat80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_197808).


test('?- chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_197832)),nondet]):-call(chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_197832).


test('?- chat80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_197844)),nondet]):-call(chat80("A small glass of prune juice is sitting here",[descriptionTest]),_197844).


test('?- chat80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_197814)),nondet]):-call(chat80("A bottle of Vulcan beer is standing here",[descriptionTest]),_197814).


test('?- chat80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_197886)),nondet]):-call(chat80("You find yourself in the middle of main engineering",[descriptionTest]),_197886).


test('?- chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_198006)),nondet]):-call(chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_198006).


test('?- chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_198306)),nondet]):-call(chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_198306).


test('?- chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_198114)),nondet]):-call(chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_198114).


test('?- chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_198042)),nondet]):-call(chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_198042).


test('?- chat80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_198222)),nondet]):-call(chat80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_198222).


test('?- chat80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_197814)),nondet]):-call(chat80("You're in the middle of Geordi's quarters",[descriptionTest]),_197814).


test('?- chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_198012)),nondet]):-call(chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_198012).


test('?- chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_198336)),nondet]):-call(chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_198336).


test('?- chat80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_197946)),nondet]):-call(chat80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_197946).


test('?- chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_197916)),nondet]):-call(chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_197916).


test('?- chat80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_197802)),nondet]):-call(chat80("You're in the middle of Data's quarters",[descriptionTest]),_197802).


test('?- chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_198864)),nondet]):-call(chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_198864).


test('?- chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_198078)),nondet]):-call(chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_198078).


test('?- chat80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_198102)),nondet]):-call(chat80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_198102).


test('?- chat80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_197730)),nondet]):-call(chat80("You're in the dimly lit Brig",[descriptionTest]),_197730).


test('?- chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_198120)),nondet]):-call(chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_198120).


test('?- chat80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_198198)),nondet]):-call(chat80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_198198).


test('?- chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_198492)),nondet]):-call(chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_198492).


test('?- chat80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_204720)),nondet]):-call(chat80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_204720).


test('?- chat80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_198204)),nondet]):-call(chat80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_198204).


test('?- chat80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_197808)),nondet]):-call(chat80("You're in the Enterprise transporter room",[descriptionTest]),_197808).


test('?- chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_198294)),nondet]):-call(chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_198294).


test('?- chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_198264)),nondet]):-call(chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_198264).


test('?- chat80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_197802)),nondet]):-call(chat80("You find yourself in a transporter beam",[descriptionTest]),_197802).


test('?- chat80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_197802)),nondet]):-call(chat80("All you can see is blue flashing light",[descriptionTest]),_197802).


test('?- chat80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_197958)),nondet]):-call(chat80("It feels as though your body is racing around at high speeds",[descriptionTest]),_197958).


test('?- chat80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_198078)),nondet]):-call(chat80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_198078).


test('?- chat80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_198006)),nondet]):-call(chat80("You step through the doors and find yourself in a large school room",[descriptionTest]),_198006).


test('?- chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_198384)),nondet]):-call(chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_198384).


test('?- chat80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_198138)),nondet]):-call(chat80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_198138).


test('?- chat80("You\'re in the turbolift",[descriptionTest])',[true(compound(_197688)),nondet]):-call(chat80("You're in the turbolift",[descriptionTest]),_197688).


test('?- chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_198066)),nondet]):-call(chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_198066).


test('?- chat80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_197958)),nondet]):-call(chat80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_197958).


test('?- chat80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_197946)),nondet]):-call(chat80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_197946).


test('?- chat80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_197700)),nondet]):-call(chat80("You're now on Holodeck 2",[descriptionTest]),_197700).


test('?- chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_198384)),nondet]):-call(chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_198384).


test('?- chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_198132)),nondet]):-call(chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_198132).


test('?- chat80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_197826)),nondet]):-call(chat80("Right now, this holodeck is not functioning",[descriptionTest]),_197826).


test('?- chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_197934)),nondet]):-call(chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_197934).


test('?- chat80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_197856)),nondet]):-call(chat80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_197856).


test('?- chat80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_198066)),nondet]):-call(chat80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_198066).


test('?- chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_198384)),nondet]):-call(chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_198384).


test('?- chat80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_197760)),nondet]):-call(chat80("You've arrived in Riker's quarters",[descriptionTest]),_197760).


test('?- chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_198336)),nondet]):-call(chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_198336).


test('?- chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_198270)),nondet]):-call(chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_198270).


test('?- chat80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_197874)),nondet]):-call(chat80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_197874).


test('?- chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_198510)),nondet]):-call(chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_198510).


test('?- chat80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_198306)),nondet]):-call(chat80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_198306).


test('?- chat80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_197778)),nondet]):-call(chat80("You emerge into a dark narrow alley",[descriptionTest]),_197778).


test('?- chat80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_197922)),nondet]):-call(chat80("Tall dark brick buildings block your way north and south",[descriptionTest]),_197922).


test('?- chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_198186)),nondet]):-call(chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_198186).


test('?- chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_198222)),nondet]):-call(chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_198222).


test('?- chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_197958)),nondet]):-call(chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_197958).


test('?- chat80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_197862)),nondet]):-call(chat80("The archway leading out of the holodeck is west",[descriptionTest]),_197862).


test('?- chat80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_197766)),nondet]):-call(chat80("You're in Doctor Crusher's quarters",[descriptionTest]),_197766).


test('?- chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_198162)),nondet]):-call(chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_198162).


test('?- chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_198252)),nondet]):-call(chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_198252).


test('?- chat80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_197994)),nondet]):-call(chat80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_197994).


test('?- chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_198618)),nondet]):-call(chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_198618).


test('?- chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_198090)),nondet]):-call(chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_198090).


test('?- chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_198486)),nondet]):-call(chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_198486).


test('?- chat80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_197958)),nondet]):-call(chat80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_197958).


test('?- chat80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_197886)),nondet]):-call(chat80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_197886).


test('?- chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_198780)),nondet]):-call(chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_198780).


test('?- chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_197958)),nondet]):-call(chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_197958).


test('?- chat80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_197868)),nondet]):-call(chat80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_197868).


test('?- chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_198060)),nondet]):-call(chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_198060).


test('?- chat80("A large grey door leads into space",[descriptionTest])',[true(compound(_197772)),nondet]):-call(chat80("A large grey door leads into space",[descriptionTest]),_197772).


test('?- chat80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_197958)),nondet]):-call(chat80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_197958).


test('?- chat80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_198030)),nondet]):-call(chat80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_198030).


test('?- chat80("You feel very cold",[descriptionTest])',[true(compound(_197658)),nondet]):-call(chat80("You feel very cold",[descriptionTest]),_197658).


test('?- chat80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_197928)),nondet]):-call(chat80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_197928).


test('?- chat80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_197814)),nondet]):-call(chat80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_197814).


test('?- chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_198426)),nondet]):-call(chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_198426).


test('?- chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_198150)),nondet]):-call(chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_198150).


test('?- chat80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_197700)),nondet]):-call(chat80("You're in Worf's quarters",[descriptionTest]),_197700).


test('?- chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_198144)),nondet]):-call(chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_198144).


test('?- chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_198558)),nondet]):-call(chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_198558).


test('?- chat80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_197766)),nondet]):-call(chat80("You emerge into the Enterprise gym",[descriptionTest]),_197766).


test('?- chat80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_197868)),nondet]):-call(chat80("The room is quite large, with a soft grey floor",[descriptionTest]),_197868).


test('?- chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_198276)),nondet]):-call(chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_198276).


test('?- chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_198240)),nondet]):-call(chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_198240).


test('?- chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_197928)),nondet]):-call(chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_197928).


test('?- chat80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_197994)),nondet]):-call(chat80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_197994).


test('?- chat80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_198084)),nondet]):-call(chat80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_198084).


test('?- chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_198378)),nondet]):-call(chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_198378).


test('?- chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_198396)),nondet]):-call(chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_198396).


test('?- chat80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_197850)),nondet]):-call(chat80("Two large windows offer a great view of space",[descriptionTest]),_197850).


test('?- chat80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_198102)),nondet]):-call(chat80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_198102).


test('?- chat80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_197778)),nondet]):-call(chat80("You're in the Enterprise science lab",[descriptionTest]),_197778).


test('?- chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_198168)),nondet]):-call(chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_198168).


test('?- chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_198666)),nondet]):-call(chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_198666).


test('?- chat80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_197922)),nondet]):-call(chat80("A complex looking computer console is facing this machine",[descriptionTest]),_197922).


test('?- chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_198078)),nondet]):-call(chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_198078).


test('?- chat80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_197838)),nondet]):-call(chat80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_197838).


test('?- chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_198072)),nondet]):-call(chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_198072).


test('?- chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_198444)),nondet]):-call(chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_198444).


test('?- chat80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_198246)),nondet]):-call(chat80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_198246).


test('?- chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_198642)),nondet]):-call(chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_198642).


test('?- chat80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_197844)),nondet]):-call(chat80("You're standing in Captain Picard's ready room",[descriptionTest]),_197844).


test('?- chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_198282)),nondet]):-call(chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_198282).


test('?- chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_198186)),nondet]):-call(chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_198186).


test('?- chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_198384)),nondet]):-call(chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_198384).


test('?- chat80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_197964)),nondet]):-call(chat80("This is where the Captain makes all of his important decisions",[descriptionTest]),_197964).


test('?- chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_198072)),nondet]):-call(chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_198072).


test('?- chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_198384)),nondet]):-call(chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_198384).


test('?- chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_198192)),nondet]):-call(chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_198192).


test('?- chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_197988)),nondet]):-call(chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_197988).


test('?- chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_198336)),nondet]):-call(chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_198336).


test('?- chat80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_197934)),nondet]):-call(chat80("This is where the ship's pilot and information officer sit",[descriptionTest]),_197934).


test('?- chat80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_197856)),nondet]):-call(chat80("You're in the conference room of the Enterprise",[descriptionTest]),_197856).


test('?- chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_198402)),nondet]):-call(chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_198402).


test('?- chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_198024)),nondet]):-call(chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_198024).


test('?- chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_198120)),nondet]):-call(chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_198120).


test('?- chat80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_197952)),nondet]):-call(chat80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_197952).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_120914)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_120914).


test('?- chat80("no two owners eat pizza",[sanity])',[true(compound(_120906)),nondet]):-call(chat80("no two owners eat pizza",[sanity]),_120906).


test('?- chat80("no three owners eat pizza",[sanity])',[true(compound(_120906)),nondet]):-call(chat80("no three owners eat pizza",[sanity]),_120906).


test('?- chat80("no three owners eat the same pizza",[sanity])',[true(compound(_120908)),nondet]):-call(chat80("no three owners eat the same pizza",[sanity]),_120908).


test('?- chat80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_120910)),nondet]):-call(chat80("no three owners eat the same kind of pizza",[sanity]),_120910).


test('?- chat80("no owners eat the same pizza",[sanity])',[true(compound(_120906)),nondet]):-call(chat80("no owners eat the same pizza",[sanity]),_120906).


test('?- chat80("no owners eat the same kind of pizza",[sanity])',[true(compound(_120908)),nondet]):-call(chat80("no owners eat the same kind of pizza",[sanity]),_120908).


test('?- chat80("there are 5 houses",[sanity])',[true(compound(_120904)),nondet]):-call(chat80("there are 5 houses",[sanity]),_120904).


test('?- chat80("there are not 5 houses",[sanity])',[true(compound(_120904)),nondet]):-call(chat80("there are not 5 houses",[sanity]),_120904).


test('?- chat80("there are not zero houses",[sanity])',[true(compound(_120906)),nondet]):-call(chat80("there are not zero houses",[sanity]),_120906).


test('?- chat80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_120914)),nondet]):-call(chat80(noun_phrase("less than 2 owners"),[sanity,bug]),_120914).


test('?- chat80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_120908)),nondet]):-call(chat80(noun_phrase("at most the 5 owners"),[sanity]),_120908).


test('?- chat80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_120908)),nondet]):-call(chat80(noun_phrase("at most 5 owners"),[sanity]),_120908).


test('?- chat80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_120908)),nondet]):-call(chat80(noun_phrase("less than 3 owners"),[sanity]),_120908).


test('?- chat80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_120910)),nondet]):-call(chat80(noun_phrase("at most 50 percent of owners"),[sanity]),_120910).


test('?- chat80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_120914)),nondet]):-call(chat80(noun_phrase("no three owners"),[sanity,no_working]),_120914).


test('?- chat80("terry writes a non-program.",[tell])',[true(compound(_120906)),nondet]):-call(chat80("terry writes a non-program.",[tell]),_120906).


test('?- chat80("every nonhuman programmer writes a program.",[tell])',[true(compound(_120910)),nondet]):-call(chat80("every nonhuman programmer writes a program.",[tell]),_120910).


test('?- chat80("every human programmer writes a not a program.",[tell])',[true(compound(_120910)),nondet]):-call(chat80("every human programmer writes a not a program.",[tell]),_120910).


test('?- chat80("every human programmer happily writes a not a program.",[tell])',[true(compound(_120912)),nondet]):-call(chat80("every human programmer happily writes a not a program.",[tell]),_120912).


:- end_tests(chat80).



:- begin_tests(curt80).



test('?- curt80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_120954)),nondet]):-call(curt80("His friends are liked by hers.",[bad_juju,sanity]),_120954).


test('?- curt80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_120956)),nondet]):-call(curt80("Her friends are not liked by his.",[bad_juju,sanity]),_120956).


test('?- curt80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_120956)),nondet]):-call(curt80("Do their friends like each other?",[bad_juju,feature]),_120956).


test('?- curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_120898),sanity])',[true(compound(_120960)),nondet]):-call(curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_120898),sanity]),_120960).


test('?- curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_120896),sanity])',[true(compound(_120958)),nondet]):-call(curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_120896),sanity]),_120958).


test('?- curt80("There are 5 houses with five different colors.",[riddle(_120900),sanity])',[true(compound(_120962)),nondet]):-call(curt80("There are 5 houses with five different colors.",[riddle(_120900),sanity]),_120962).


test('?- curt80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_120952)),nondet]):-call(curt80("There are 5 houses",[riddle_prep,sanity]),_120952).


test('?- curt80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_120956)),nondet]):-call(curt80("Each house has a different color",[riddle_prep,sanity]),_120956).


test('?- curt80("In each house lives a person with a different nationality.",[riddle(_120904),sanity])',[true(compound(_120966)),nondet]):-call(curt80("In each house lives a person with a different nationality.",[riddle(_120904),sanity]),_120966).


test('?- curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_120978)),nondet]):-call(curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_120978).


test('?- curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_120966)),nondet]):-call(curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_120966).


test('?- curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_120964)),nondet]):-call(curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_120964).


test('?- curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_120968)),nondet]):-call(curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_120968).


test('?- curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_120972)),nondet]):-call(curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_120972).


test('?- curt80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_120964)),nondet]):-call(curt80("No owners have the same pet.",[riddle(1),sanity,regression]),_120964).


test('?- curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_120968)),nondet]):-call(curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_120968).


test('?- curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_120962)),nondet]):-call(curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_120962).


test('?- curt80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_120966)),nondet]):-call(curt80("No two owners have the same pet.",[riddle(1),sanity,regression]),_120966).


test('?- curt80("The brit lives in the red house.",[riddle(_120898),sanity])',[true(compound(_120960)),nondet]):-call(curt80("The brit lives in the red house.",[riddle(_120898),sanity]),_120960).


test('?- curt80("The swede keeps dogs as pets.",[riddle(_120896),sanity])',[true(compound(_120958)),nondet]):-call(curt80("The swede keeps dogs as pets.",[riddle(_120896),sanity]),_120958).


test('?- curt80("A dane drinks tea.",[riddle(_120894),sanity])',[true(compound(_120956)),nondet]):-call(curt80("A dane drinks tea.",[riddle(_120894),sanity]),_120956).


test('?- curt80("The green house is on the left of the white house.",[riddle(_120902),sanity])',[true(compound(_120964)),nondet]):-call(curt80("The green house is on the left of the white house.",[riddle(_120902),sanity]),_120964).


test('?- curt80("The green house\'s owner drinks coffee.",[riddle(_120898),sanity])',[true(compound(_120960)),nondet]):-call(curt80("The green house's owner drinks coffee.",[riddle(_120898),sanity]),_120960).


test('?- curt80("The person who smokes Pall Mall rears birds.",[riddle(_120900),sanity,regression])',[true(compound(_120968)),nondet]):-call(curt80("The person who smokes Pall Mall rears birds.",[riddle(_120900),sanity,regression]),_120968).


test('?- curt80("The owner of the yellow house smokes Dunhill.",[riddle(_120900),sanity])',[true(compound(_120962)),nondet]):-call(curt80("The owner of the yellow house smokes Dunhill.",[riddle(_120900),sanity]),_120962).


test('?- curt80("The man living in the center house drinks milk.",[riddle(_120902),sanity])',[true(compound(_120964)),nondet]):-call(curt80("The man living in the center house drinks milk.",[riddle(_120902),sanity]),_120964).


test('?- curt80("The Norwegian lives in the first house .",[riddle(_120900),sanity])',[true(compound(_120962)),nondet]):-call(curt80("The Norwegian lives in the first house .",[riddle(_120900),sanity]),_120962).


test('?- curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_120906),sanity])',[true(compound(_120968)),nondet]):-call(curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_120906),sanity]),_120968).


test('?- curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_120906),sanity])',[true(compound(_120968)),nondet]):-call(curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_120906),sanity]),_120968).


test('?- curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_120900),sanity])',[true(compound(_120962)),nondet]):-call(curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_120900),sanity]),_120962).


test('?- curt80("The German smokes Prince.",[riddle(_120896),sanity])',[true(compound(_120958)),nondet]):-call(curt80("The German smokes Prince.",[riddle(_120896),sanity]),_120958).


test('?- curt80("The Norwegian lives next to the blue house.",[riddle(_120900),sanity])',[true(compound(_120962)),nondet]):-call(curt80("The Norwegian lives next to the blue house.",[riddle(_120900),sanity]),_120962).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_120904),sanity])',[true(compound(_120966)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_120904),sanity]),_120966).


test('?- curt80("Who owns the fish?",[riddle(_120894),sanity])',[true(compound(_120956)),nondet]):-call(curt80("Who owns the fish?",[riddle(_120894),sanity]),_120956).


test('?- curt80("One woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("One woman paints.",[quants]),_120946).


test('?- curt80("No woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("No woman paints.",[quants]),_120946).


test('?- curt80("Some woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Some woman paints.",[quants]),_120946).


test('?- curt80("Every woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Every woman paints.",[quants]),_120946).


test('?- curt80("Each woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Each woman paints.",[quants]),_120946).


test('?- curt80("Any woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Any woman paints.",[quants]),_120946).


test('?- curt80("The woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("The woman paints.",[quants]),_120946).


test('?- curt80("The not woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("The not woman paints.",[quants]),_120946).


test('?- curt80("Not a woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Not a woman paints.",[quants]),_120946).


test('?- curt80("Not one woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Not one woman paints.",[quants]),_120946).


test('?- curt80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_120946)),nondet]):-call(curt80("Not no woman paints.",[quants_neg_postcond]),_120946).


test('?- curt80("Not some woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Not some woman paints.",[quants]),_120946).


test('?- curt80("Not every woman paints.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("Not every woman paints.",[quants]),_120948).


test('?- curt80("Not each woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Not each woman paints.",[quants]),_120946).


test('?- curt80("Not any woman paints.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Not any woman paints.",[quants]),_120946).


test('?- curt80("The women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("The women paint.",[quants]),_120946).


test('?- curt80("Women paint.",[quants])',[true(compound(_120944)),nondet]):-call(curt80("Women paint.",[quants]),_120944).


test('?- curt80("Some women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Some women paint.",[quants]),_120946).


test('?- curt80("No women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("No women paint.",[quants]),_120946).


test('?- curt80("All women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("All women paint.",[quants]),_120946).


test('?- curt80("Any women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Any women paint.",[quants]),_120946).


test('?- curt80("Not women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Not women paint.",[quants]),_120946).


test('?- curt80("Not no women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Not no women paint.",[quants]),_120946).


test('?- curt80("Not all women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Not all women paint.",[quants]),_120946).


test('?- curt80("Not any women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Not any women paint.",[quants]),_120946).


test('?- curt80("The three women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("The three women paint.",[quants]),_120946).


test('?- curt80("Three women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Three women paint.",[quants]),_120946).


test('?- curt80("Some three women paint.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("Some three women paint.",[quants]),_120948).


test('?- curt80("No three women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("No three women paint.",[quants]),_120946).


test('?- curt80("Every three women paint.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("Every three women paint.",[quants]),_120948).


test('?- curt80("All three women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("All three women paint.",[quants]),_120946).


test('?- curt80("Any three women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Any three women paint.",[quants]),_120946).


test('?- curt80("Not three women paint.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("Not three women paint.",[quants]),_120946).


test('?- curt80("Not some three women paint.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("Not some three women paint.",[quants]),_120948).


test('?- curt80("Not no three women paint.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("Not no three women paint.",[quants]),_120948).


test('?- curt80("Not all three women paint.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("Not all three women paint.",[quants]),_120948).


test('?- curt80("Not every three women paint.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("Not every three women paint.",[quants]),_120948).


test('?- curt80("Not any three women paint.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("Not any three women paint.",[quants]),_120948).


test('?- curt80("Not three of the women paint.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("Not three of the women paint.",[quants]),_120948).


test('?- curt80("Not some of the three women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("Not some of the three women paint.",[quants]),_120950).


test('?- curt80("Not no three of the women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("Not no three of the women paint.",[quants]),_120950).


test('?- curt80("Not all three of the women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("Not all three of the women paint.",[quants]),_120950).


test('?- curt80("Not every three of the women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("Not every three of the women paint.",[quants]),_120950).


test('?- curt80("Not any three of the women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("Not any three of the women paint.",[quants]),_120950).


test('?- curt80("Not three of the four women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("Not three of the four women paint.",[quants]),_120950).


test('?- curt80("Not none of three out of the four women paint.",[quants])',[true(compound(_120952)),nondet]):-call(curt80("Not none of three out of the four women paint.",[quants]),_120952).


test('?- curt80("Not all three of the four women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("Not all three of the four women paint.",[quants]),_120950).


test('?- curt80("Not any three of the four women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("Not any three of the four women paint.",[quants]),_120950).


test('?- curt80("Three of the four women paint.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("Three of the four women paint.",[quants]),_120948).


test('?- curt80("Three out of the four women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("Three out of the four women paint.",[quants]),_120950).


test('?- curt80("All three of the four women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("All three of the four women paint.",[quants]),_120950).


test('?- curt80("Any three of the four women paint.",[quants])',[true(compound(_120950)),nondet]):-call(curt80("Any three of the four women paint.",[quants]),_120950).


test('?- curt80("I paint",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("I paint",[pronoun]),_120944).


test('?- curt80("you paint",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("you paint",[pronoun]),_120944).


test('?- curt80("We paint",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("We paint",[pronoun]),_120944).


test('?- curt80("None paint",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("None paint",[pronoun]),_120944).


test('?- curt80("They paint",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("They paint",[pronoun]),_120944).


test('?- curt80("Some paint",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("Some paint",[pronoun]),_120944).


test('?- curt80("It paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("It paints",[pronoun]),_120944).


test('?- curt80("he paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("he paints",[pronoun]),_120944).


test('?- curt80("She paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("She paints",[pronoun]),_120944).


test('?- curt80("Someone paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("Someone paints",[pronoun]),_120944).


test('?- curt80("Anybody paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("Anybody paints",[pronoun]),_120944).


test('?- curt80("Anyone paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("Anyone paints",[pronoun]),_120944).


test('?- curt80("Anything paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Anything paints",[pronoun]),_120946).


test('?- curt80("Everybody paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Everybody paints",[pronoun]),_120946).


test('?- curt80("Everyone paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Everyone paints",[pronoun]),_120946).


test('?- curt80("Everything paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Everything paints",[pronoun]),_120946).


test('?- curt80("Nobody paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("Nobody paints",[pronoun]),_120944).


test('?- curt80("No one paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("No one paints",[pronoun]),_120944).


test('?- curt80("Nothing paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("Nothing paints",[pronoun]),_120944).


test('?- curt80("One paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("One paints",[pronoun]),_120944).


test('?- curt80("Somebody paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Somebody paints",[pronoun]),_120946).


test('?- curt80("Something paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Something paints",[pronoun]),_120946).


test('?- curt80("Not anybody paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Not anybody paints",[pronoun]),_120946).


test('?- curt80("Not anyone paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Not anyone paints",[pronoun]),_120946).


test('?- curt80("Not anything paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Not anything paints",[pronoun]),_120946).


test('?- curt80("Not everybody paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Not everybody paints",[pronoun]),_120946).


test('?- curt80("Not everyone paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Not everyone paints",[pronoun]),_120946).


test('?- curt80("Not everything paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Not everything paints",[pronoun]),_120946).


test('?- curt80("Not nothing paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Not nothing paints",[pronoun]),_120946).


test('?- curt80("Not one paints",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("Not one paints",[pronoun]),_120944).


test('?- curt80("Not somebody paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Not somebody paints",[pronoun]),_120946).


test('?- curt80("Not something paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("Not something paints",[pronoun]),_120946).


test('?- curt80("She likes i",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("She likes i",[pronoun]),_120944).


test('?- curt80("She likes me",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("She likes me",[pronoun]),_120944).


test('?- curt80("She likes you",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("She likes you",[pronoun]),_120944).


test('?- curt80("She likes it",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("She likes it",[pronoun]),_120944).


test('?- curt80("She likes us",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("She likes us",[pronoun]),_120944).


test('?- curt80("She likes them",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("She likes them",[pronoun]),_120944).


test('?- curt80("She likes no one",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("She likes no one",[pronoun]),_120946).


test('?- curt80("She likes none",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("She likes none",[pronoun]),_120944).


test('?- curt80("She likes him",[pronoun])',[true(compound(_120944)),nondet]):-call(curt80("She likes him",[pronoun]),_120944).


test('?- curt80("She likes herself",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("She likes herself",[pronoun]),_120946).


test('?- curt80("She likes himself",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("She likes himself",[pronoun]),_120946).


test('?- curt80("It is us that paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("It is us that paints",[pronoun]),_120946).


test('?- curt80("It is them that paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("It is them that paints",[pronoun]),_120946).


test('?- curt80("It is he that paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("It is he that paints",[pronoun]),_120946).


test('?- curt80("It is she that paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("It is she that paints",[pronoun]),_120946).


test('?- curt80("It is her that paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("It is her that paints",[pronoun]),_120946).


test('?- curt80("It is him that paints",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("It is him that paints",[pronoun]),_120946).


test('?- curt80("We are us that paint",[pronoun])',[true(compound(_120946)),nondet]):-call(curt80("We are us that paint",[pronoun]),_120946).


test('?- curt80("We are all of us that paint",[pronoun])',[true(compound(_120948)),nondet]):-call(curt80("We are all of us that paint",[pronoun]),_120948).


test('?- curt80("It is everybody that paints",[pronoun])',[true(compound(_120948)),nondet]):-call(curt80("It is everybody that paints",[pronoun]),_120948).


test('?- curt80("Every man that paints likes monet.",[bratko])',[true(compound(_120950)),nondet]):-call(curt80("Every man that paints likes monet.",[bratko]),_120950).


test('?- curt80("A woman that admires John paints.",[bratko])',[true(compound(_120950)),nondet]):-call(curt80("A woman that admires John paints.",[bratko]),_120950).


test('?- curt80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_120956)),nondet]):-call(curt80("Every woman that likes a man that admires monet paints.",[bratko]),_120956).


test('?- curt80("John likes Annie.",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("John likes Annie.",[bratko]),_120946).


test('?- curt80("Annie likes a man that admires monet.",[bratko])',[true(compound(_120950)),nondet]):-call(curt80("Annie likes a man that admires monet.",[bratko]),_120950).


test('?- curt80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_120950)),nondet]):-call(curt80("Bertrand Russell wrote principia.",[bratko]),_120950).


test('?- curt80("An author wrote principia.",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("An author wrote principia.",[bratko]),_120948).


test('?- curt80("Iraq is a country.",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("Iraq is a country.",[bratko]),_120946).


test('?- curt80("A happy author wrote principia.",[bratko])',[true(compound(_120950)),nondet]):-call(curt80("A happy author wrote principia.",[bratko]),_120950).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_120946).


test('?- curt80("Bertrand is an author.",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("Bertrand is an author.",[bratko]),_120946).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_120946).


test('?- curt80("Every author is a programmer.",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("Every author is a programmer.",[bratko]),_120948).


test('?- curt80("Is Bertrand an programmer?",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("Is Bertrand an programmer?",[bratko]),_120948).


test('?- curt80("What is a author?",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("What is a author?",[bratko]),_120946).


test('?- curt80("What did Bertrand write?",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("What did Bertrand write?",[bratko]),_120948).


test('?- curt80("What is a book?",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("What is a book?",[bratko]),_120946).


test('?- curt80("Principia is a book.",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("Principia is a book.",[bratko]),_120946).


test('?- curt80("Bertrand is Bertrand.",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("Bertrand is Bertrand.",[bratko]),_120946).


test('?- curt80("Shrdlu halts.",[bratko])',[true(compound(_120944)),nondet]):-call(curt80("Shrdlu halts.",[bratko]),_120944).


test('?- curt80("Every student wrote a program.",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("Every student wrote a program.",[bratko]),_120948).


test('?- curt80("Terry writes a program.",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("Terry writes a program.",[bratko]),_120948).


test('?- curt80("Terry writes a program that halts.",[bratko])',[true(compound(_120950)),nondet]):-call(curt80("Terry writes a program that halts.",[bratko]),_120950).


test('?- curt80("An author of every book wrote a program.",[bratko])',[true(compound(_120952)),nondet]):-call(curt80("An author of every book wrote a program.",[bratko]),_120952).


test('?- curt80("A man hapilly maried paints.",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("A man hapilly maried paints.",[bratko]),_120948).


test('?- curt80("A hapilly maried man paints.",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("A hapilly maried man paints.",[bratko]),_120948).


test('?- curt80("A man who knows paints.",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("A man who knows paints.",[bratko]),_120948).


test('?- curt80("A man gives something.",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("A man gives something.",[bratko]),_120946).


test('?- curt80("A man gives his word.",[bratko])',[true(compound(_120946)),nondet]):-call(curt80("A man gives his word.",[bratko]),_120946).


test('?- curt80("A man of his word paints.",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("A man of his word paints.",[bratko]),_120948).


test('?- curt80("A man paints.",[bratko])',[true(compound(_120944)),nondet]):-call(curt80("A man paints.",[bratko]),_120944).


test('?- curt80("A man that paints paints.",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("A man that paints paints.",[bratko]),_120948).


test('?- curt80("A man walks.",[bratko])',[true(compound(_120944)),nondet]):-call(curt80("A man walks.",[bratko]),_120944).


test('?- curt80("A man that walks paints.",[bratko])',[true(compound(_120948)),nondet]):-call(curt80("A man that walks paints.",[bratko]),_120948).


test('?- curt80("It halts.",[bratko])',[true(compound(_120944)),nondet]):-call(curt80("It halts.",[bratko]),_120944).


test('?- curt80("A man of his word that walks paints.",[bratko])',[true(compound(_120950)),nondet]):-call(curt80("A man of his word that walks paints.",[bratko]),_120950).


test('?- curt80("The cost of what the product is changes.",[bratko])',[true(compound(_120952)),nondet]):-call(curt80("The cost of what the product is changes.",[bratko]),_120952).


test('?- curt80("We need a virtual machine server.",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("We need a virtual machine server.",[aindy]),_120950).


test('?- curt80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_120954)),nondet]):-call(curt80("The virtual machine server should have several VMs.",[aindy]),_120954).


test('?- curt80("One VM should be the POSI VM.",[aindy])',[true(compound(_120948)),nondet]):-call(curt80("One VM should be the POSI VM.",[aindy]),_120948).


test('?- curt80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("One VM should be the FRDCSA.org VM.",[aindy]),_120950).


test('?- curt80("One VM should be the mail server.",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("One VM should be the mail server.",[aindy]),_120950).


test('?- curt80("One computer should be the backup server.",[aindy])',[true(compound(_120952)),nondet]):-call(curt80("One computer should be the backup server.",[aindy]),_120952).


test('?- curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_120968)),nondet]):-call(curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_120968).


test('?- curt80("I need a fast computer for work.",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("I need a fast computer for work.",[aindy]),_120950).


test('?- curt80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_120960)),nondet]):-call(curt80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_120960).


test('?- curt80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_120956)),nondet]):-call(curt80("I need a dedicated computer for network security research.",[aindy]),_120956).


test('?- curt80("I need a machine to run Tails on.",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("I need a machine to run Tails on.",[aindy]),_120950).


test('?- curt80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_120954)),nondet]):-call(curt80("I need a machine off the network for airgap security.",[aindy]),_120954).


test('?- curt80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_120960)),nondet]):-call(curt80("One VM should be the game server for running game development projects.",[aindy]),_120960).


test('?- curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_120954)),nondet]):-call(curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_120954).


test('?- curt80("I could read about how to build a private watson.",[aindy])',[true(compound(_120954)),nondet]):-call(curt80("I could read about how to build a private watson.",[aindy]),_120954).


test('?- curt80("Need backups.",[aindy])',[true(compound(_120944)),nondet]):-call(curt80("Need backups.",[aindy]),_120944).


test('?- curt80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_120958)),nondet]):-call(curt80("Practice setting up backups of a machine to a different machine.",[aindy]),_120958).


test('?- curt80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_120956)),nondet]):-call(curt80("Set up schedules for updating the software on all machines.",[aindy]),_120956).


test('?- curt80("Read books on server room layout.",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("Read books on server room layout.",[aindy]),_120950).


test('?- curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_120958)),nondet]):-call(curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_120958).


test('?- curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_120960)),nondet]):-call(curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_120960).


test('?- curt80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("I want a gaming computer.  Do I?",[aindy]),_120950).


test('?- curt80("I want a windows 7 computer for work.",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("I want a windows 7 computer for work.",[aindy]),_120950).


test('?- curt80("I want a fast linux computer for work.",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("I want a fast linux computer for work.",[aindy]),_120950).


test('?- curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_120970)),nondet]):-call(curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_120970).


test('?- curt80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_120956)),nondet]):-call(curt80("I could install a fresh operating system on justin for work.",[aindy]),_120956).


test('?- curt80("I probably want a separate git computer.",[aindy])',[true(compound(_120952)),nondet]):-call(curt80("I probably want a separate git computer.",[aindy]),_120952).


test('?- curt80("I need to start buying servers.",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("I need to start buying servers.",[aindy]),_120950).


test('?- curt80("I want a rackmount case for servers.",[aindy])',[true(compound(_120950)),nondet]):-call(curt80("I want a rackmount case for servers.",[aindy]),_120950).


test('?- curt80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_120956)),nondet]):-call(curt80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_120956).


test('?- curt80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_120954)),nondet]):-call(curt80("2 oceans border each african country.",[chat80(tell)]),_120954).


test('?- curt80("There are 10 large cars.",[quants])',[true(compound(_120948)),nondet]):-call(curt80("There are 10 large cars.",[quants]),_120948).


test('?- curt80("There are 10 oceans.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("There are 10 oceans.",[quants]),_120946).


test('?- curt80("There are 10 women.",[quants])',[true(compound(_120946)),nondet]):-call(curt80("There are 10 women.",[quants]),_120946).


test('?- curt80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_120954)),nondet]):-call(curt80("An ocean borders an African country.",[chat80(tell)]),_120954).


test('?- curt80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_120962)),nondet]):-call(curt80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_120962).


test('?- curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_120964)),nondet]):-call(curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_120964).


test('?- curt80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_120950)),nondet]):-call(curt80("Bertrand wrote a book.",[bratko(book)]),_120950).


test('?- curt80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_120952)),nondet]):-call(curt80("Bertrand wrote nothing.",[bratko(book)]),_120952).


test('?- curt80("Bertrand wrote.",[bratko(book)])',[true(compound(_120950)),nondet]):-call(curt80("Bertrand wrote.",[bratko(book)]),_120950).


test('?- curt80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_120954)),nondet]):-call(curt80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_120954).


test('?- curt80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_120952)),nondet]):-call(curt80("Bertrand wrote about Gottlob.",[bratko(book)]),_120952).


test('?- curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_120954)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_120954).


test('?- curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_120956)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_120956).


test('?- curt80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_120954)),nondet]):-call(curt80("What did alfred write to Bertrand?",[bratko(book)]),_120954).


test('?- curt80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_120950)),nondet]):-call(curt80("Alfred wrote a letter.",[bratko(book)]),_120950).


test('?- curt80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_120954)),nondet]):-call(curt80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_120954).


test('?- curt80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_120954)),nondet]):-call(curt80("Alfred wrote something to Bertrand.",[bratko(book)]),_120954).


test('?- curt80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_120952)),nondet]):-call(curt80("Alfred wrote to Bertrand.",[bratko(book)]),_120952).


test('?- curt80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_120954)),nondet]):-call(curt80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_120954).


test('?- curt80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_120954)),nondet]):-call(curt80("Alfred wrote Bertrand a letter.",[bratko(book)]),_120954).


test('?- curt80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_120954)),nondet]):-call(curt80("Who did alfred write a letter to?",[bratko(book)]),_120954).


test('?- curt80("Alfred gave it.",[bratko(book)])',[true(compound(_120950)),nondet]):-call(curt80("Alfred gave it.",[bratko(book)]),_120950).


test('?- curt80("Alfred gave a book.",[bratko(book)])',[true(compound(_120950)),nondet]):-call(curt80("Alfred gave a book.",[bratko(book)]),_120950).


test('?- curt80("a pride of lions paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a pride of lions paint",[of]),_120946).


test('?- curt80("a flock of birds paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a flock of birds paint",[of]),_120946).


test('?- curt80("a litter of pups paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a litter of pups paint",[of]),_120946).


test('?- curt80("a prickle of porcupines paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a prickle of porcupines paint",[of]),_120948).


test('?- curt80("a litter of cubs paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a litter of cubs paint",[of]),_120946).


test('?- curt80("a pack of dogs paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a pack of dogs paint",[of]),_120946).


test('?- curt80("a colony of beavers paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a colony of beavers paint",[of]),_120948).


test('?- curt80("a gaggle of geese paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a gaggle of geese paint",[of]),_120948).


test('?- curt80("a family of otters paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a family of otters paint",[of]),_120948).


test('?- curt80("a huddle of walruses paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a huddle of walruses paint",[of]),_120948).


test('?- curt80("a herd of deer paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a herd of deer paint",[of]),_120946).


test('?- curt80("a culture of bacteria paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a culture of bacteria paint",[of]),_120948).


test('?- curt80("a swarm of bees paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a swarm of bees paint",[of]),_120946).


test('?- curt80("a bed of clams paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a bed of clams paint",[of]),_120946).


test('?- curt80("a school of cod paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a school of cod paint",[of]),_120946).


test('?- curt80("a herd of dinosaurs paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a herd of dinosaurs paint",[of]),_120948).


test('?- curt80("a mess of iguanas paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a mess of iguanas paint",[of]),_120948).


test('?- curt80("a mob of wombats paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a mob of wombats paint",[of]),_120946).


test('?- curt80("a pod of pelicans paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a pod of pelicans paint",[of]),_120948).


test('?- curt80("a troop of boy scouts paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a troop of boy scouts paint",[of]),_120948).


test('?- curt80("a team of athletes paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a team of athletes paint",[of]),_120948).


test('?- curt80("a panel of experts paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a panel of experts paint",[of]),_120948).


test('?- curt80("a crew of sailors paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a crew of sailors paint",[of]),_120948).


test('?- curt80("a band of robbers paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a band of robbers paint",[of]),_120948).


test('?- curt80("a troupe of performers paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a troupe of performers paint",[of]),_120948).


test('?- curt80("a crowd of onlookers paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a crowd of onlookers paint",[of]),_120948).


test('?- curt80("a curse of painters paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("a curse of painters paint",[of]),_120948).


test('?- curt80("a fleet of cars paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a fleet of cars paint",[of]),_120946).


test('?- curt80("a pair of shoes paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a pair of shoes paint",[of]),_120946).


test('?- curt80("a fleet of ships paint",[of])',[true(compound(_120946)),nondet]):-call(curt80("a fleet of ships paint",[of]),_120946).


test('?- curt80("an anthology of stories paint",[of])',[true(compound(_120948)),nondet]):-call(curt80("an anthology of stories paint",[of]),_120948).


test('?- curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_197922)),nondet]):-call(curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_197922).


test('?- curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_197892)),nondet]):-call(curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_197892).


test('?- curt80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_198030)),nondet]):-call(curt80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_198030).


test('?- curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_197874)),nondet]):-call(curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_197874).


test('?- curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_197922)),nondet]):-call(curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_197922).


test('?- curt80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_198018)),nondet]):-call(curt80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_198018).


test('?- curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_197976)),nondet]):-call(curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_197976).


test('?- curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_198168)),nondet]):-call(curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_198168).


test('?- curt80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_197940)),nondet]):-call(curt80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_197940).


test('?- curt80("Logged on player character",[descriptionTest])',[true(compound(_197748)),nondet]):-call(curt80("Logged on player character",[descriptionTest]),_197748).


test('?- curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_198006)),nondet]):-call(curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_198006).


test('?- curt80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_197952)),nondet]):-call(curt80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_197952).


test('?- curt80("Wesley is her son",[descriptionTest])',[true(compound(_197694)),nondet]):-call(curt80("Wesley is her son",[descriptionTest]),_197694).


test('?- curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_198342)),nondet]):-call(curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_198342).


test('?- curt80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_197772)),nondet]):-call(curt80("Counselor Deanna Troi is here",[descriptionTest]),_197772).


test('?- curt80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_197868)),nondet]):-call(curt80("Counselor Troi is the ship's main counselor",[descriptionTest]),_197868).


test('?- curt80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_198024)),nondet]):-call(curt80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_198024).


test('?- curt80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_197898)),nondet]):-call(curt80("Commander William Riker is here, staring at you",[descriptionTest]),_197898).


test('?- curt80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_197904)),nondet]):-call(curt80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_197904).


test('?- curt80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_197874)),nondet]):-call(curt80("He's in charge of keeping the crew in line",[descriptionTest]),_197874).


test('?- curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_197940)),nondet]):-call(curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_197940).


test('?- curt80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_197838)),nondet]):-call(curt80("Captain Picard is a very important man",[descriptionTest]),_197838).


test('?- curt80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_197940)),nondet]):-call(curt80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_197940).


test('?- curt80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_197784)),nondet]):-call(curt80("He's very smart, and very wise",[descriptionTest]),_197784).


test('?- curt80("Don\'t mess with him!",[descriptionTest])',[true(compound(_197712)),nondet]):-call(curt80("Don't mess with him!",[descriptionTest]),_197712).


test('?- curt80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_197790)),nondet]):-call(curt80("Guinan is here, tending the bar",[descriptionTest]),_197790).


test('?- curt80("Guinan is a strange being",[descriptionTest])',[true(compound(_197748)),nondet]):-call(curt80("Guinan is a strange being",[descriptionTest]),_197748).


test('?- curt80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_198456)),nondet]):-call(curt80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_198456).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_197958)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_197958).


test('?- curt80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_197958)),nondet]):-call(curt80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_197958).


test('?- curt80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_198258)),nondet]):-call(curt80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_198258).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_197952)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_197952).


test('?- curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_197976)),nondet]):-call(curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_197976).


test('?- curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_198246)),nondet]):-call(curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_198246).


test('?- curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_198168)),nondet]):-call(curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_198168).


test('?- curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_197958)),nondet]):-call(curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_197958).


test('?- curt80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_197838)),nondet]):-call(curt80("Livingston is Captain Picard's pet fish",[descriptionTest]),_197838).


test('?- curt80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_198090)),nondet]):-call(curt80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_198090).


test('?- curt80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_197940)),nondet]):-call(curt80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_197940).


test('?- curt80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_197808)),nondet]):-call(curt80("Spot is Data's orange coloured cat",[descriptionTest]),_197808).


test('?- curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_198330)),nondet]):-call(curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_198330).


test('?- curt80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_197952)),nondet]):-call(curt80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_197952).


test('?- curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_197934)),nondet]):-call(curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_197934).


test('?- curt80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_198276)),nondet]):-call(curt80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_198276).


test('?- curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_197922)),nondet]):-call(curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_197922).


test('?- curt80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_197790)),nondet]):-call(curt80("Alexander Rozhenko is Worf's son",[descriptionTest]),_197790).


test('?- curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_198072)),nondet]):-call(curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_198072).


test('?- curt80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_197988)),nondet]):-call(curt80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_197988).


test('?- curt80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_197934)),nondet]):-call(curt80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_197934).


test('?- curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_198336)),nondet]):-call(curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_198336).


test('?- curt80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_197814)),nondet]):-call(curt80("A large phaser rifle is lying here",[descriptionTest]),_197814).


test('?- curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_198408)),nondet]):-call(curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_198408).


test('?- curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_198012)),nondet]):-call(curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_198012).


test('?- curt80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198360)),nondet]):-call(curt80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198360).


test('?- curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_198012)),nondet]):-call(curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_198012).


test('?- curt80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198384)),nondet]):-call(curt80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198384).


test('?- curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_197988)),nondet]):-call(curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_197988).


test('?- curt80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198360)),nondet]):-call(curt80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198360).


test('?- curt80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_197910)),nondet]):-call(curt80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_197910).


test('?- curt80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_198450)),nondet]):-call(curt80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_198450).


test('?- curt80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_197880)),nondet]):-call(curt80("A Starfleet communication badge is lying here",[descriptionTest]),_197880).


test('?- curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_198918)),nondet]):-call(curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_198918).


test('?- curt80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_197874)),nondet]):-call(curt80("Worf's silver chain sash has been left here",[descriptionTest]),_197874).


test('?- curt80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_198486)),nondet]):-call(curt80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_198486).


test('?- curt80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_197766)),nondet]):-call(curt80("Geordi's VISOR is lying here",[descriptionTest]),_197766).


test('?- curt80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_199158)),nondet]):-call(curt80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_199158).


test('?- curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_197934)),nondet]):-call(curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_197934).


test('?- curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_198720)),nondet]):-call(curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_198720).


test('?- curt80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_197868)),nondet]):-call(curt80("A shard of dilithium crystal is lying here",[descriptionTest]),_197868).


test('?- curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_198522)),nondet]):-call(curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_198522).


test('?- curt80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_197880)),nondet]):-call(curt80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_197880).


test('?- curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_198492)),nondet]):-call(curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_198492).


test('?- curt80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_197892)),nondet]):-call(curt80("Commander Riker's trombone has been placed here",[descriptionTest]),_197892).


test('?- curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_198324)),nondet]):-call(curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_198324).


test('?- curt80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_197820)),nondet]):-call(curt80("A small cup of tea is sitting here",[descriptionTest]),_197820).


test('?- curt80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_197838)),nondet]):-call(curt80("A bottle of synthehol is standing here",[descriptionTest]),_197838).


test('?- curt80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_197850)),nondet]):-call(curt80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_197850).


test('?- curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_197874)),nondet]):-call(curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_197874).


test('?- curt80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_197886)),nondet]):-call(curt80("A small glass of prune juice is sitting here",[descriptionTest]),_197886).


test('?- curt80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_197856)),nondet]):-call(curt80("A bottle of Vulcan beer is standing here",[descriptionTest]),_197856).


test('?- curt80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_197928)),nondet]):-call(curt80("You find yourself in the middle of main engineering",[descriptionTest]),_197928).


test('?- curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_198048)),nondet]):-call(curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_198048).


test('?- curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_198348)),nondet]):-call(curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_198348).


test('?- curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_198156)),nondet]):-call(curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_198156).


test('?- curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_198084)),nondet]):-call(curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_198084).


test('?- curt80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_198264)),nondet]):-call(curt80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_198264).


test('?- curt80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_197856)),nondet]):-call(curt80("You're in the middle of Geordi's quarters",[descriptionTest]),_197856).


test('?- curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_198054)),nondet]):-call(curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_198054).


test('?- curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_198378)),nondet]):-call(curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_198378).


test('?- curt80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_197988)),nondet]):-call(curt80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_197988).


test('?- curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_197958)),nondet]):-call(curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_197958).


test('?- curt80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_197844)),nondet]):-call(curt80("You're in the middle of Data's quarters",[descriptionTest]),_197844).


test('?- curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_198906)),nondet]):-call(curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_198906).


test('?- curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_198120)),nondet]):-call(curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_198120).


test('?- curt80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_198144)),nondet]):-call(curt80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_198144).


test('?- curt80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_197772)),nondet]):-call(curt80("You're in the dimly lit Brig",[descriptionTest]),_197772).


test('?- curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_198162)),nondet]):-call(curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_198162).


test('?- curt80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_198240)),nondet]):-call(curt80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_198240).


test('?- curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_198534)),nondet]):-call(curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_198534).


test('?- curt80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_204762)),nondet]):-call(curt80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_204762).


test('?- curt80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_198246)),nondet]):-call(curt80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_198246).


test('?- curt80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_197850)),nondet]):-call(curt80("You're in the Enterprise transporter room",[descriptionTest]),_197850).


test('?- curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_198336)),nondet]):-call(curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_198336).


test('?- curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_198306)),nondet]):-call(curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_198306).


test('?- curt80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_197844)),nondet]):-call(curt80("You find yourself in a transporter beam",[descriptionTest]),_197844).


test('?- curt80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_197844)),nondet]):-call(curt80("All you can see is blue flashing light",[descriptionTest]),_197844).


test('?- curt80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_198000)),nondet]):-call(curt80("It feels as though your body is racing around at high speeds",[descriptionTest]),_198000).


test('?- curt80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_198120)),nondet]):-call(curt80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_198120).


test('?- curt80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_198048)),nondet]):-call(curt80("You step through the doors and find yourself in a large school room",[descriptionTest]),_198048).


test('?- curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_198426)),nondet]):-call(curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_198426).


test('?- curt80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_198180)),nondet]):-call(curt80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_198180).


test('?- curt80("You\'re in the turbolift",[descriptionTest])',[true(compound(_197730)),nondet]):-call(curt80("You're in the turbolift",[descriptionTest]),_197730).


test('?- curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_198108)),nondet]):-call(curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_198108).


test('?- curt80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_198000)),nondet]):-call(curt80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_198000).


test('?- curt80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_197988)),nondet]):-call(curt80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_197988).


test('?- curt80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_197742)),nondet]):-call(curt80("You're now on Holodeck 2",[descriptionTest]),_197742).


test('?- curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_198426)),nondet]):-call(curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_198426).


test('?- curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_198174)),nondet]):-call(curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_198174).


test('?- curt80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_197868)),nondet]):-call(curt80("Right now, this holodeck is not functioning",[descriptionTest]),_197868).


test('?- curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_197976)),nondet]):-call(curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_197976).


test('?- curt80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_197898)),nondet]):-call(curt80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_197898).


test('?- curt80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_198108)),nondet]):-call(curt80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_198108).


test('?- curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_198426)),nondet]):-call(curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_198426).


test('?- curt80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_197802)),nondet]):-call(curt80("You've arrived in Riker's quarters",[descriptionTest]),_197802).


test('?- curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_198378)),nondet]):-call(curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_198378).


test('?- curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_198312)),nondet]):-call(curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_198312).


test('?- curt80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_197916)),nondet]):-call(curt80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_197916).


test('?- curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_198552)),nondet]):-call(curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_198552).


test('?- curt80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_198348)),nondet]):-call(curt80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_198348).


test('?- curt80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_197820)),nondet]):-call(curt80("You emerge into a dark narrow alley",[descriptionTest]),_197820).


test('?- curt80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_197964)),nondet]):-call(curt80("Tall dark brick buildings block your way north and south",[descriptionTest]),_197964).


test('?- curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_198228)),nondet]):-call(curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_198228).


test('?- curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_198264)),nondet]):-call(curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_198264).


test('?- curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_198000)),nondet]):-call(curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_198000).


test('?- curt80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_197904)),nondet]):-call(curt80("The archway leading out of the holodeck is west",[descriptionTest]),_197904).


test('?- curt80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_197808)),nondet]):-call(curt80("You're in Doctor Crusher's quarters",[descriptionTest]),_197808).


test('?- curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_198204)),nondet]):-call(curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_198204).


test('?- curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_198294)),nondet]):-call(curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_198294).


test('?- curt80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_198036)),nondet]):-call(curt80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_198036).


test('?- curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_198660)),nondet]):-call(curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_198660).


test('?- curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_198132)),nondet]):-call(curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_198132).


test('?- curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_198528)),nondet]):-call(curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_198528).


test('?- curt80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_198000)),nondet]):-call(curt80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_198000).


test('?- curt80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_197928)),nondet]):-call(curt80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_197928).


test('?- curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_198822)),nondet]):-call(curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_198822).


test('?- curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_198000)),nondet]):-call(curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_198000).


test('?- curt80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_197910)),nondet]):-call(curt80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_197910).


test('?- curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_198102)),nondet]):-call(curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_198102).


test('?- curt80("A large grey door leads into space",[descriptionTest])',[true(compound(_197814)),nondet]):-call(curt80("A large grey door leads into space",[descriptionTest]),_197814).


test('?- curt80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_198000)),nondet]):-call(curt80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_198000).


test('?- curt80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_198072)),nondet]):-call(curt80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_198072).


test('?- curt80("You feel very cold",[descriptionTest])',[true(compound(_197700)),nondet]):-call(curt80("You feel very cold",[descriptionTest]),_197700).


test('?- curt80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_197970)),nondet]):-call(curt80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_197970).


test('?- curt80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_197856)),nondet]):-call(curt80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_197856).


test('?- curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_198468)),nondet]):-call(curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_198468).


test('?- curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_198192)),nondet]):-call(curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_198192).


test('?- curt80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_197742)),nondet]):-call(curt80("You're in Worf's quarters",[descriptionTest]),_197742).


test('?- curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_198186)),nondet]):-call(curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_198186).


test('?- curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_198600)),nondet]):-call(curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_198600).


test('?- curt80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_197808)),nondet]):-call(curt80("You emerge into the Enterprise gym",[descriptionTest]),_197808).


test('?- curt80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_197910)),nondet]):-call(curt80("The room is quite large, with a soft grey floor",[descriptionTest]),_197910).


test('?- curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_198318)),nondet]):-call(curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_198318).


test('?- curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_198282)),nondet]):-call(curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_198282).


test('?- curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_197970)),nondet]):-call(curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_197970).


test('?- curt80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_198036)),nondet]):-call(curt80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_198036).


test('?- curt80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_198126)),nondet]):-call(curt80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_198126).


test('?- curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_198420)),nondet]):-call(curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_198420).


test('?- curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_198438)),nondet]):-call(curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_198438).


test('?- curt80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_197892)),nondet]):-call(curt80("Two large windows offer a great view of space",[descriptionTest]),_197892).


test('?- curt80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_198144)),nondet]):-call(curt80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_198144).


test('?- curt80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_197820)),nondet]):-call(curt80("You're in the Enterprise science lab",[descriptionTest]),_197820).


test('?- curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_198210)),nondet]):-call(curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_198210).


test('?- curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_198708)),nondet]):-call(curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_198708).


test('?- curt80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_197964)),nondet]):-call(curt80("A complex looking computer console is facing this machine",[descriptionTest]),_197964).


test('?- curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_198120)),nondet]):-call(curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_198120).


test('?- curt80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_197880)),nondet]):-call(curt80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_197880).


test('?- curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_198114)),nondet]):-call(curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_198114).


test('?- curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_198486)),nondet]):-call(curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_198486).


test('?- curt80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_198288)),nondet]):-call(curt80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_198288).


test('?- curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_198684)),nondet]):-call(curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_198684).


test('?- curt80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_197886)),nondet]):-call(curt80("You're standing in Captain Picard's ready room",[descriptionTest]),_197886).


test('?- curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_198324)),nondet]):-call(curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_198324).


test('?- curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_198228)),nondet]):-call(curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_198228).


test('?- curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_198426)),nondet]):-call(curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_198426).


test('?- curt80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_198006)),nondet]):-call(curt80("This is where the Captain makes all of his important decisions",[descriptionTest]),_198006).


test('?- curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_198114)),nondet]):-call(curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_198114).


test('?- curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_198426)),nondet]):-call(curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_198426).


test('?- curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_198234)),nondet]):-call(curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_198234).


test('?- curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_198030)),nondet]):-call(curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_198030).


test('?- curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_198378)),nondet]):-call(curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_198378).


test('?- curt80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_197976)),nondet]):-call(curt80("This is where the ship's pilot and information officer sit",[descriptionTest]),_197976).


test('?- curt80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_197898)),nondet]):-call(curt80("You're in the conference room of the Enterprise",[descriptionTest]),_197898).


test('?- curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_198444)),nondet]):-call(curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_198444).


test('?- curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_198066)),nondet]):-call(curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_198066).


test('?- curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_198162)),nondet]):-call(curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_198162).


test('?- curt80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_197994)),nondet]):-call(curt80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_197994).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_120956)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_120956).


test('?- curt80("no two owners eat pizza",[sanity])',[true(compound(_120948)),nondet]):-call(curt80("no two owners eat pizza",[sanity]),_120948).


test('?- curt80("no three owners eat pizza",[sanity])',[true(compound(_120948)),nondet]):-call(curt80("no three owners eat pizza",[sanity]),_120948).


test('?- curt80("no three owners eat the same pizza",[sanity])',[true(compound(_120950)),nondet]):-call(curt80("no three owners eat the same pizza",[sanity]),_120950).


test('?- curt80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_120952)),nondet]):-call(curt80("no three owners eat the same kind of pizza",[sanity]),_120952).


test('?- curt80("no owners eat the same pizza",[sanity])',[true(compound(_120948)),nondet]):-call(curt80("no owners eat the same pizza",[sanity]),_120948).


test('?- curt80("no owners eat the same kind of pizza",[sanity])',[true(compound(_120950)),nondet]):-call(curt80("no owners eat the same kind of pizza",[sanity]),_120950).


test('?- curt80("there are 5 houses",[sanity])',[true(compound(_120946)),nondet]):-call(curt80("there are 5 houses",[sanity]),_120946).


test('?- curt80("there are not 5 houses",[sanity])',[true(compound(_120946)),nondet]):-call(curt80("there are not 5 houses",[sanity]),_120946).


test('?- curt80("there are not zero houses",[sanity])',[true(compound(_120948)),nondet]):-call(curt80("there are not zero houses",[sanity]),_120948).


test('?- curt80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_120956)),nondet]):-call(curt80(noun_phrase("less than 2 owners"),[sanity,bug]),_120956).


test('?- curt80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_120950)),nondet]):-call(curt80(noun_phrase("at most the 5 owners"),[sanity]),_120950).


test('?- curt80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_120950)),nondet]):-call(curt80(noun_phrase("at most 5 owners"),[sanity]),_120950).


test('?- curt80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_120950)),nondet]):-call(curt80(noun_phrase("less than 3 owners"),[sanity]),_120950).


test('?- curt80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_120952)),nondet]):-call(curt80(noun_phrase("at most 50 percent of owners"),[sanity]),_120952).


test('?- curt80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_120956)),nondet]):-call(curt80(noun_phrase("no three owners"),[sanity,no_working]),_120956).


test('?- curt80("terry writes a non-program.",[tell])',[true(compound(_120948)),nondet]):-call(curt80("terry writes a non-program.",[tell]),_120948).


test('?- curt80("every nonhuman programmer writes a program.",[tell])',[true(compound(_120952)),nondet]):-call(curt80("every nonhuman programmer writes a program.",[tell]),_120952).


test('?- curt80("every human programmer writes a not a program.",[tell])',[true(compound(_120952)),nondet]):-call(curt80("every human programmer writes a not a program.",[tell]),_120952).


test('?- curt80("every human programmer happily writes a not a program.",[tell])',[true(compound(_120954)),nondet]):-call(curt80("every human programmer happily writes a not a program.",[tell]),_120954).


:- end_tests(curt80).



:- begin_tests(e2c).



test('?- e2c("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_120996)),nondet]):-call(e2c("His friends are liked by hers.",[bad_juju,sanity]),_120996).


test('?- e2c("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_120998)),nondet]):-call(e2c("Her friends are not liked by his.",[bad_juju,sanity]),_120998).


test('?- e2c("Do their friends like each other?",[bad_juju,feature])',[true(compound(_120998)),nondet]):-call(e2c("Do their friends like each other?",[bad_juju,feature]),_120998).


test('?- e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_120940),sanity])',[true(compound(_121002)),nondet]):-call(e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_120940),sanity]),_121002).


test('?- e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_120938),sanity])',[true(compound(_121000)),nondet]):-call(e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_120938),sanity]),_121000).


test('?- e2c("There are 5 houses with five different colors.",[riddle(_120942),sanity])',[true(compound(_121004)),nondet]):-call(e2c("There are 5 houses with five different colors.",[riddle(_120942),sanity]),_121004).


test('?- e2c("There are 5 houses",[riddle_prep,sanity])',[true(compound(_120994)),nondet]):-call(e2c("There are 5 houses",[riddle_prep,sanity]),_120994).


test('?- e2c("Each house has a different color",[riddle_prep,sanity])',[true(compound(_120998)),nondet]):-call(e2c("Each house has a different color",[riddle_prep,sanity]),_120998).


test('?- e2c("In each house lives a person with a different nationality.",[riddle(_120946),sanity])',[true(compound(_121008)),nondet]):-call(e2c("In each house lives a person with a different nationality.",[riddle(_120946),sanity]),_121008).


test('?- e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_121020)),nondet]):-call(e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_121020).


test('?- e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_121008)),nondet]):-call(e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_121008).


test('?- e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_121006)),nondet]):-call(e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_121006).


test('?- e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_121010)),nondet]):-call(e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_121010).


test('?- e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_121014)),nondet]):-call(e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_121014).


test('?- e2c("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_121006)),nondet]):-call(e2c("No owners have the same pet.",[riddle(1),sanity,regression]),_121006).


test('?- e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_121010)),nondet]):-call(e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_121010).


test('?- e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_121004)),nondet]):-call(e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_121004).


test('?- e2c("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_121008)),nondet]):-call(e2c("No two owners have the same pet.",[riddle(1),sanity,regression]),_121008).


test('?- e2c("The brit lives in the red house.",[riddle(_120940),sanity])',[true(compound(_121002)),nondet]):-call(e2c("The brit lives in the red house.",[riddle(_120940),sanity]),_121002).


test('?- e2c("The swede keeps dogs as pets.",[riddle(_120938),sanity])',[true(compound(_121000)),nondet]):-call(e2c("The swede keeps dogs as pets.",[riddle(_120938),sanity]),_121000).


test('?- e2c("A dane drinks tea.",[riddle(_120936),sanity])',[true(compound(_120998)),nondet]):-call(e2c("A dane drinks tea.",[riddle(_120936),sanity]),_120998).


test('?- e2c("The green house is on the left of the white house.",[riddle(_120944),sanity])',[true(compound(_121006)),nondet]):-call(e2c("The green house is on the left of the white house.",[riddle(_120944),sanity]),_121006).


test('?- e2c("The green house\'s owner drinks coffee.",[riddle(_120940),sanity])',[true(compound(_121002)),nondet]):-call(e2c("The green house's owner drinks coffee.",[riddle(_120940),sanity]),_121002).


test('?- e2c("The person who smokes Pall Mall rears birds.",[riddle(_120942),sanity,regression])',[true(compound(_121010)),nondet]):-call(e2c("The person who smokes Pall Mall rears birds.",[riddle(_120942),sanity,regression]),_121010).


test('?- e2c("The owner of the yellow house smokes Dunhill.",[riddle(_120942),sanity])',[true(compound(_121004)),nondet]):-call(e2c("The owner of the yellow house smokes Dunhill.",[riddle(_120942),sanity]),_121004).


test('?- e2c("The man living in the center house drinks milk.",[riddle(_120944),sanity])',[true(compound(_121006)),nondet]):-call(e2c("The man living in the center house drinks milk.",[riddle(_120944),sanity]),_121006).


test('?- e2c("The Norwegian lives in the first house .",[riddle(_120942),sanity])',[true(compound(_121004)),nondet]):-call(e2c("The Norwegian lives in the first house .",[riddle(_120942),sanity]),_121004).


test('?- e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_120948),sanity])',[true(compound(_121010)),nondet]):-call(e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_120948),sanity]),_121010).


test('?- e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_120948),sanity])',[true(compound(_121010)),nondet]):-call(e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_120948),sanity]),_121010).


test('?- e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_120942),sanity])',[true(compound(_121004)),nondet]):-call(e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_120942),sanity]),_121004).


test('?- e2c("The German smokes Prince.",[riddle(_120938),sanity])',[true(compound(_121000)),nondet]):-call(e2c("The German smokes Prince.",[riddle(_120938),sanity]),_121000).


test('?- e2c("The Norwegian lives next to the blue house.",[riddle(_120942),sanity])',[true(compound(_121004)),nondet]):-call(e2c("The Norwegian lives next to the blue house.",[riddle(_120942),sanity]),_121004).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_120946),sanity])',[true(compound(_121008)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_120946),sanity]),_121008).


test('?- e2c("Who owns the fish?",[riddle(_120936),sanity])',[true(compound(_120998)),nondet]):-call(e2c("Who owns the fish?",[riddle(_120936),sanity]),_120998).


test('?- e2c("One woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("One woman paints.",[quants]),_120988).


test('?- e2c("No woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("No woman paints.",[quants]),_120988).


test('?- e2c("Some woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Some woman paints.",[quants]),_120988).


test('?- e2c("Every woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Every woman paints.",[quants]),_120988).


test('?- e2c("Each woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Each woman paints.",[quants]),_120988).


test('?- e2c("Any woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Any woman paints.",[quants]),_120988).


test('?- e2c("The woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("The woman paints.",[quants]),_120988).


test('?- e2c("The not woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("The not woman paints.",[quants]),_120988).


test('?- e2c("Not a woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Not a woman paints.",[quants]),_120988).


test('?- e2c("Not one woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Not one woman paints.",[quants]),_120988).


test('?- e2c("Not no woman paints.",[quants_neg_postcond])',[true(compound(_120988)),nondet]):-call(e2c("Not no woman paints.",[quants_neg_postcond]),_120988).


test('?- e2c("Not some woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Not some woman paints.",[quants]),_120988).


test('?- e2c("Not every woman paints.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("Not every woman paints.",[quants]),_120990).


test('?- e2c("Not each woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Not each woman paints.",[quants]),_120988).


test('?- e2c("Not any woman paints.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Not any woman paints.",[quants]),_120988).


test('?- e2c("The women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("The women paint.",[quants]),_120988).


test('?- e2c("Women paint.",[quants])',[true(compound(_120986)),nondet]):-call(e2c("Women paint.",[quants]),_120986).


test('?- e2c("Some women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Some women paint.",[quants]),_120988).


test('?- e2c("No women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("No women paint.",[quants]),_120988).


test('?- e2c("All women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("All women paint.",[quants]),_120988).


test('?- e2c("Any women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Any women paint.",[quants]),_120988).


test('?- e2c("Not women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Not women paint.",[quants]),_120988).


test('?- e2c("Not no women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Not no women paint.",[quants]),_120988).


test('?- e2c("Not all women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Not all women paint.",[quants]),_120988).


test('?- e2c("Not any women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Not any women paint.",[quants]),_120988).


test('?- e2c("The three women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("The three women paint.",[quants]),_120988).


test('?- e2c("Three women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Three women paint.",[quants]),_120988).


test('?- e2c("Some three women paint.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("Some three women paint.",[quants]),_120990).


test('?- e2c("No three women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("No three women paint.",[quants]),_120988).


test('?- e2c("Every three women paint.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("Every three women paint.",[quants]),_120990).


test('?- e2c("All three women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("All three women paint.",[quants]),_120988).


test('?- e2c("Any three women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Any three women paint.",[quants]),_120988).


test('?- e2c("Not three women paint.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("Not three women paint.",[quants]),_120988).


test('?- e2c("Not some three women paint.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("Not some three women paint.",[quants]),_120990).


test('?- e2c("Not no three women paint.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("Not no three women paint.",[quants]),_120990).


test('?- e2c("Not all three women paint.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("Not all three women paint.",[quants]),_120990).


test('?- e2c("Not every three women paint.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("Not every three women paint.",[quants]),_120990).


test('?- e2c("Not any three women paint.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("Not any three women paint.",[quants]),_120990).


test('?- e2c("Not three of the women paint.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("Not three of the women paint.",[quants]),_120990).


test('?- e2c("Not some of the three women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("Not some of the three women paint.",[quants]),_120992).


test('?- e2c("Not no three of the women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("Not no three of the women paint.",[quants]),_120992).


test('?- e2c("Not all three of the women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("Not all three of the women paint.",[quants]),_120992).


test('?- e2c("Not every three of the women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("Not every three of the women paint.",[quants]),_120992).


test('?- e2c("Not any three of the women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("Not any three of the women paint.",[quants]),_120992).


test('?- e2c("Not three of the four women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("Not three of the four women paint.",[quants]),_120992).


test('?- e2c("Not none of three out of the four women paint.",[quants])',[true(compound(_120994)),nondet]):-call(e2c("Not none of three out of the four women paint.",[quants]),_120994).


test('?- e2c("Not all three of the four women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("Not all three of the four women paint.",[quants]),_120992).


test('?- e2c("Not any three of the four women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("Not any three of the four women paint.",[quants]),_120992).


test('?- e2c("Three of the four women paint.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("Three of the four women paint.",[quants]),_120990).


test('?- e2c("Three out of the four women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("Three out of the four women paint.",[quants]),_120992).


test('?- e2c("All three of the four women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("All three of the four women paint.",[quants]),_120992).


test('?- e2c("Any three of the four women paint.",[quants])',[true(compound(_120992)),nondet]):-call(e2c("Any three of the four women paint.",[quants]),_120992).


test('?- e2c("I paint",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("I paint",[pronoun]),_120986).


test('?- e2c("you paint",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("you paint",[pronoun]),_120986).


test('?- e2c("We paint",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("We paint",[pronoun]),_120986).


test('?- e2c("None paint",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("None paint",[pronoun]),_120986).


test('?- e2c("They paint",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("They paint",[pronoun]),_120986).


test('?- e2c("Some paint",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("Some paint",[pronoun]),_120986).


test('?- e2c("It paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("It paints",[pronoun]),_120986).


test('?- e2c("he paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("he paints",[pronoun]),_120986).


test('?- e2c("She paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("She paints",[pronoun]),_120986).


test('?- e2c("Someone paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("Someone paints",[pronoun]),_120986).


test('?- e2c("Anybody paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("Anybody paints",[pronoun]),_120986).


test('?- e2c("Anyone paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("Anyone paints",[pronoun]),_120986).


test('?- e2c("Anything paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Anything paints",[pronoun]),_120988).


test('?- e2c("Everybody paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Everybody paints",[pronoun]),_120988).


test('?- e2c("Everyone paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Everyone paints",[pronoun]),_120988).


test('?- e2c("Everything paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Everything paints",[pronoun]),_120988).


test('?- e2c("Nobody paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("Nobody paints",[pronoun]),_120986).


test('?- e2c("No one paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("No one paints",[pronoun]),_120986).


test('?- e2c("Nothing paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("Nothing paints",[pronoun]),_120986).


test('?- e2c("One paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("One paints",[pronoun]),_120986).


test('?- e2c("Somebody paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Somebody paints",[pronoun]),_120988).


test('?- e2c("Something paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Something paints",[pronoun]),_120988).


test('?- e2c("Not anybody paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Not anybody paints",[pronoun]),_120988).


test('?- e2c("Not anyone paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Not anyone paints",[pronoun]),_120988).


test('?- e2c("Not anything paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Not anything paints",[pronoun]),_120988).


test('?- e2c("Not everybody paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Not everybody paints",[pronoun]),_120988).


test('?- e2c("Not everyone paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Not everyone paints",[pronoun]),_120988).


test('?- e2c("Not everything paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Not everything paints",[pronoun]),_120988).


test('?- e2c("Not nothing paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Not nothing paints",[pronoun]),_120988).


test('?- e2c("Not one paints",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("Not one paints",[pronoun]),_120986).


test('?- e2c("Not somebody paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Not somebody paints",[pronoun]),_120988).


test('?- e2c("Not something paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("Not something paints",[pronoun]),_120988).


test('?- e2c("She likes i",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("She likes i",[pronoun]),_120986).


test('?- e2c("She likes me",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("She likes me",[pronoun]),_120986).


test('?- e2c("She likes you",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("She likes you",[pronoun]),_120986).


test('?- e2c("She likes it",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("She likes it",[pronoun]),_120986).


test('?- e2c("She likes us",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("She likes us",[pronoun]),_120986).


test('?- e2c("She likes them",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("She likes them",[pronoun]),_120986).


test('?- e2c("She likes no one",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("She likes no one",[pronoun]),_120988).


test('?- e2c("She likes none",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("She likes none",[pronoun]),_120986).


test('?- e2c("She likes him",[pronoun])',[true(compound(_120986)),nondet]):-call(e2c("She likes him",[pronoun]),_120986).


test('?- e2c("She likes herself",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("She likes herself",[pronoun]),_120988).


test('?- e2c("She likes himself",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("She likes himself",[pronoun]),_120988).


test('?- e2c("It is us that paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("It is us that paints",[pronoun]),_120988).


test('?- e2c("It is them that paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("It is them that paints",[pronoun]),_120988).


test('?- e2c("It is he that paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("It is he that paints",[pronoun]),_120988).


test('?- e2c("It is she that paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("It is she that paints",[pronoun]),_120988).


test('?- e2c("It is her that paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("It is her that paints",[pronoun]),_120988).


test('?- e2c("It is him that paints",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("It is him that paints",[pronoun]),_120988).


test('?- e2c("We are us that paint",[pronoun])',[true(compound(_120988)),nondet]):-call(e2c("We are us that paint",[pronoun]),_120988).


test('?- e2c("We are all of us that paint",[pronoun])',[true(compound(_120990)),nondet]):-call(e2c("We are all of us that paint",[pronoun]),_120990).


test('?- e2c("It is everybody that paints",[pronoun])',[true(compound(_120990)),nondet]):-call(e2c("It is everybody that paints",[pronoun]),_120990).


test('?- e2c("Every man that paints likes monet.",[bratko])',[true(compound(_120992)),nondet]):-call(e2c("Every man that paints likes monet.",[bratko]),_120992).


test('?- e2c("A woman that admires John paints.",[bratko])',[true(compound(_120992)),nondet]):-call(e2c("A woman that admires John paints.",[bratko]),_120992).


test('?- e2c("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_120998)),nondet]):-call(e2c("Every woman that likes a man that admires monet paints.",[bratko]),_120998).


test('?- e2c("John likes Annie.",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("John likes Annie.",[bratko]),_120988).


test('?- e2c("Annie likes a man that admires monet.",[bratko])',[true(compound(_120992)),nondet]):-call(e2c("Annie likes a man that admires monet.",[bratko]),_120992).


test('?- e2c("Bertrand Russell wrote principia.",[bratko])',[true(compound(_120992)),nondet]):-call(e2c("Bertrand Russell wrote principia.",[bratko]),_120992).


test('?- e2c("An author wrote principia.",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("An author wrote principia.",[bratko]),_120990).


test('?- e2c("Iraq is a country.",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("Iraq is a country.",[bratko]),_120988).


test('?- e2c("A happy author wrote principia.",[bratko])',[true(compound(_120992)),nondet]):-call(e2c("A happy author wrote principia.",[bratko]),_120992).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_120988).


test('?- e2c("Bertrand is an author.",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("Bertrand is an author.",[bratko]),_120988).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_120988).


test('?- e2c("Every author is a programmer.",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("Every author is a programmer.",[bratko]),_120990).


test('?- e2c("Is Bertrand an programmer?",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("Is Bertrand an programmer?",[bratko]),_120990).


test('?- e2c("What is a author?",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("What is a author?",[bratko]),_120988).


test('?- e2c("What did Bertrand write?",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("What did Bertrand write?",[bratko]),_120990).


test('?- e2c("What is a book?",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("What is a book?",[bratko]),_120988).


test('?- e2c("Principia is a book.",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("Principia is a book.",[bratko]),_120988).


test('?- e2c("Bertrand is Bertrand.",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("Bertrand is Bertrand.",[bratko]),_120988).


test('?- e2c("Shrdlu halts.",[bratko])',[true(compound(_120986)),nondet]):-call(e2c("Shrdlu halts.",[bratko]),_120986).


test('?- e2c("Every student wrote a program.",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("Every student wrote a program.",[bratko]),_120990).


test('?- e2c("Terry writes a program.",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("Terry writes a program.",[bratko]),_120990).


test('?- e2c("Terry writes a program that halts.",[bratko])',[true(compound(_120992)),nondet]):-call(e2c("Terry writes a program that halts.",[bratko]),_120992).


test('?- e2c("An author of every book wrote a program.",[bratko])',[true(compound(_120994)),nondet]):-call(e2c("An author of every book wrote a program.",[bratko]),_120994).


test('?- e2c("A man hapilly maried paints.",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("A man hapilly maried paints.",[bratko]),_120990).


test('?- e2c("A hapilly maried man paints.",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("A hapilly maried man paints.",[bratko]),_120990).


test('?- e2c("A man who knows paints.",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("A man who knows paints.",[bratko]),_120990).


test('?- e2c("A man gives something.",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("A man gives something.",[bratko]),_120988).


test('?- e2c("A man gives his word.",[bratko])',[true(compound(_120988)),nondet]):-call(e2c("A man gives his word.",[bratko]),_120988).


test('?- e2c("A man of his word paints.",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("A man of his word paints.",[bratko]),_120990).


test('?- e2c("A man paints.",[bratko])',[true(compound(_120986)),nondet]):-call(e2c("A man paints.",[bratko]),_120986).


test('?- e2c("A man that paints paints.",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("A man that paints paints.",[bratko]),_120990).


test('?- e2c("A man walks.",[bratko])',[true(compound(_120986)),nondet]):-call(e2c("A man walks.",[bratko]),_120986).


test('?- e2c("A man that walks paints.",[bratko])',[true(compound(_120990)),nondet]):-call(e2c("A man that walks paints.",[bratko]),_120990).


test('?- e2c("It halts.",[bratko])',[true(compound(_120986)),nondet]):-call(e2c("It halts.",[bratko]),_120986).


test('?- e2c("A man of his word that walks paints.",[bratko])',[true(compound(_120992)),nondet]):-call(e2c("A man of his word that walks paints.",[bratko]),_120992).


test('?- e2c("The cost of what the product is changes.",[bratko])',[true(compound(_120994)),nondet]):-call(e2c("The cost of what the product is changes.",[bratko]),_120994).


test('?- e2c("We need a virtual machine server.",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("We need a virtual machine server.",[aindy]),_120992).


test('?- e2c("The virtual machine server should have several VMs.",[aindy])',[true(compound(_120996)),nondet]):-call(e2c("The virtual machine server should have several VMs.",[aindy]),_120996).


test('?- e2c("One VM should be the POSI VM.",[aindy])',[true(compound(_120990)),nondet]):-call(e2c("One VM should be the POSI VM.",[aindy]),_120990).


test('?- e2c("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("One VM should be the FRDCSA.org VM.",[aindy]),_120992).


test('?- e2c("One VM should be the mail server.",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("One VM should be the mail server.",[aindy]),_120992).


test('?- e2c("One computer should be the backup server.",[aindy])',[true(compound(_120994)),nondet]):-call(e2c("One computer should be the backup server.",[aindy]),_120994).


test('?- e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_121010)),nondet]):-call(e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_121010).


test('?- e2c("I need a fast computer for work.",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("I need a fast computer for work.",[aindy]),_120992).


test('?- e2c("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_121002)),nondet]):-call(e2c("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_121002).


test('?- e2c("I need a dedicated computer for network security research.",[aindy])',[true(compound(_120998)),nondet]):-call(e2c("I need a dedicated computer for network security research.",[aindy]),_120998).


test('?- e2c("I need a machine to run Tails on.",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("I need a machine to run Tails on.",[aindy]),_120992).


test('?- e2c("I need a machine off the network for airgap security.",[aindy])',[true(compound(_120996)),nondet]):-call(e2c("I need a machine off the network for airgap security.",[aindy]),_120996).


test('?- e2c("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_121002)),nondet]):-call(e2c("One VM should be the game server for running game development projects.",[aindy]),_121002).


test('?- e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_120996)),nondet]):-call(e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_120996).


test('?- e2c("I could read about how to build a private watson.",[aindy])',[true(compound(_120996)),nondet]):-call(e2c("I could read about how to build a private watson.",[aindy]),_120996).


test('?- e2c("Need backups.",[aindy])',[true(compound(_120986)),nondet]):-call(e2c("Need backups.",[aindy]),_120986).


test('?- e2c("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_121000)),nondet]):-call(e2c("Practice setting up backups of a machine to a different machine.",[aindy]),_121000).


test('?- e2c("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_120998)),nondet]):-call(e2c("Set up schedules for updating the software on all machines.",[aindy]),_120998).


test('?- e2c("Read books on server room layout.",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("Read books on server room layout.",[aindy]),_120992).


test('?- e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_121000)),nondet]):-call(e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_121000).


test('?- e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_121002)),nondet]):-call(e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_121002).


test('?- e2c("I want a gaming computer.  Do I?",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("I want a gaming computer.  Do I?",[aindy]),_120992).


test('?- e2c("I want a windows 7 computer for work.",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("I want a windows 7 computer for work.",[aindy]),_120992).


test('?- e2c("I want a fast linux computer for work.",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("I want a fast linux computer for work.",[aindy]),_120992).


test('?- e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_121012)),nondet]):-call(e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_121012).


test('?- e2c("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_120998)),nondet]):-call(e2c("I could install a fresh operating system on justin for work.",[aindy]),_120998).


test('?- e2c("I probably want a separate git computer.",[aindy])',[true(compound(_120994)),nondet]):-call(e2c("I probably want a separate git computer.",[aindy]),_120994).


test('?- e2c("I need to start buying servers.",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("I need to start buying servers.",[aindy]),_120992).


test('?- e2c("I want a rackmount case for servers.",[aindy])',[true(compound(_120992)),nondet]):-call(e2c("I want a rackmount case for servers.",[aindy]),_120992).


test('?- e2c("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_120998)),nondet]):-call(e2c("Each african country is bordered by 2 oceans.",[chat80(tell)]),_120998).


test('?- e2c("2 oceans border each african country.",[chat80(tell)])',[true(compound(_120996)),nondet]):-call(e2c("2 oceans border each african country.",[chat80(tell)]),_120996).


test('?- e2c("There are 10 large cars.",[quants])',[true(compound(_120990)),nondet]):-call(e2c("There are 10 large cars.",[quants]),_120990).


test('?- e2c("There are 10 oceans.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("There are 10 oceans.",[quants]),_120988).


test('?- e2c("There are 10 women.",[quants])',[true(compound(_120988)),nondet]):-call(e2c("There are 10 women.",[quants]),_120988).


test('?- e2c("An ocean borders an African country.",[chat80(tell)])',[true(compound(_120996)),nondet]):-call(e2c("An ocean borders an African country.",[chat80(tell)]),_120996).


test('?- e2c("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_121004)),nondet]):-call(e2c("What is the ocean that borders african countries and that borders asian countries?",[tell]),_121004).


test('?- e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_121006)),nondet]):-call(e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_121006).


test('?- e2c("Bertrand wrote a book.",[bratko(book)])',[true(compound(_120992)),nondet]):-call(e2c("Bertrand wrote a book.",[bratko(book)]),_120992).


test('?- e2c("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_120994)),nondet]):-call(e2c("Bertrand wrote nothing.",[bratko(book)]),_120994).


test('?- e2c("Bertrand wrote.",[bratko(book)])',[true(compound(_120992)),nondet]):-call(e2c("Bertrand wrote.",[bratko(book)]),_120992).


test('?- e2c("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_120996)),nondet]):-call(e2c("Bertrand wrote a book about Gottlob.",[bratko(book)]),_120996).


test('?- e2c("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_120994)),nondet]):-call(e2c("Bertrand wrote about Gottlob.",[bratko(book)]),_120994).


test('?- e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_120996)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_120996).


test('?- e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_120998)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_120998).


test('?- e2c("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_120996)),nondet]):-call(e2c("What did alfred write to Bertrand?",[bratko(book)]),_120996).


test('?- e2c("Alfred wrote a letter.",[bratko(book)])',[true(compound(_120992)),nondet]):-call(e2c("Alfred wrote a letter.",[bratko(book)]),_120992).


test('?- e2c("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_120996)),nondet]):-call(e2c("Alfred wrote a letter to Bertrand.",[bratko(book)]),_120996).


test('?- e2c("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_120996)),nondet]):-call(e2c("Alfred wrote something to Bertrand.",[bratko(book)]),_120996).


test('?- e2c("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_120994)),nondet]):-call(e2c("Alfred wrote to Bertrand.",[bratko(book)]),_120994).


test('?- e2c("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_120996)),nondet]):-call(e2c("Alfred wrote to Bertrand a letter.",[bratko(book)]),_120996).


test('?- e2c("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_120996)),nondet]):-call(e2c("Alfred wrote Bertrand a letter.",[bratko(book)]),_120996).


test('?- e2c("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_120996)),nondet]):-call(e2c("Who did alfred write a letter to?",[bratko(book)]),_120996).


test('?- e2c("Alfred gave it.",[bratko(book)])',[true(compound(_120992)),nondet]):-call(e2c("Alfred gave it.",[bratko(book)]),_120992).


test('?- e2c("Alfred gave a book.",[bratko(book)])',[true(compound(_120992)),nondet]):-call(e2c("Alfred gave a book.",[bratko(book)]),_120992).


test('?- e2c("a pride of lions paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a pride of lions paint",[of]),_120988).


test('?- e2c("a flock of birds paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a flock of birds paint",[of]),_120988).


test('?- e2c("a litter of pups paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a litter of pups paint",[of]),_120988).


test('?- e2c("a prickle of porcupines paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a prickle of porcupines paint",[of]),_120990).


test('?- e2c("a litter of cubs paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a litter of cubs paint",[of]),_120988).


test('?- e2c("a pack of dogs paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a pack of dogs paint",[of]),_120988).


test('?- e2c("a colony of beavers paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a colony of beavers paint",[of]),_120990).


test('?- e2c("a gaggle of geese paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a gaggle of geese paint",[of]),_120990).


test('?- e2c("a family of otters paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a family of otters paint",[of]),_120990).


test('?- e2c("a huddle of walruses paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a huddle of walruses paint",[of]),_120990).


test('?- e2c("a herd of deer paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a herd of deer paint",[of]),_120988).


test('?- e2c("a culture of bacteria paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a culture of bacteria paint",[of]),_120990).


test('?- e2c("a swarm of bees paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a swarm of bees paint",[of]),_120988).


test('?- e2c("a bed of clams paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a bed of clams paint",[of]),_120988).


test('?- e2c("a school of cod paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a school of cod paint",[of]),_120988).


test('?- e2c("a herd of dinosaurs paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a herd of dinosaurs paint",[of]),_120990).


test('?- e2c("a mess of iguanas paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a mess of iguanas paint",[of]),_120990).


test('?- e2c("a mob of wombats paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a mob of wombats paint",[of]),_120988).


test('?- e2c("a pod of pelicans paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a pod of pelicans paint",[of]),_120990).


test('?- e2c("a troop of boy scouts paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a troop of boy scouts paint",[of]),_120990).


test('?- e2c("a team of athletes paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a team of athletes paint",[of]),_120990).


test('?- e2c("a panel of experts paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a panel of experts paint",[of]),_120990).


test('?- e2c("a crew of sailors paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a crew of sailors paint",[of]),_120990).


test('?- e2c("a band of robbers paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a band of robbers paint",[of]),_120990).


test('?- e2c("a troupe of performers paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a troupe of performers paint",[of]),_120990).


test('?- e2c("a crowd of onlookers paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a crowd of onlookers paint",[of]),_120990).


test('?- e2c("a curse of painters paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("a curse of painters paint",[of]),_120990).


test('?- e2c("a fleet of cars paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a fleet of cars paint",[of]),_120988).


test('?- e2c("a pair of shoes paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a pair of shoes paint",[of]),_120988).


test('?- e2c("a fleet of ships paint",[of])',[true(compound(_120988)),nondet]):-call(e2c("a fleet of ships paint",[of]),_120988).


test('?- e2c("an anthology of stories paint",[of])',[true(compound(_120990)),nondet]):-call(e2c("an anthology of stories paint",[of]),_120990).


test('?- e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_197964)),nondet]):-call(e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_197964).


test('?- e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_197934)),nondet]):-call(e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_197934).


test('?- e2c("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_198072)),nondet]):-call(e2c("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_198072).


test('?- e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_197916)),nondet]):-call(e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_197916).


test('?- e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_197964)),nondet]):-call(e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_197964).


test('?- e2c("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_198060)),nondet]):-call(e2c("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_198060).


test('?- e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_198018)),nondet]):-call(e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_198018).


test('?- e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_198210)),nondet]):-call(e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_198210).


test('?- e2c("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_197982)),nondet]):-call(e2c("He stowed super-human strength, and is extremely tough",[descriptionTest]),_197982).


test('?- e2c("Logged on player character",[descriptionTest])',[true(compound(_197790)),nondet]):-call(e2c("Logged on player character",[descriptionTest]),_197790).


test('?- e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_198048)),nondet]):-call(e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_198048).


test('?- e2c("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_197994)),nondet]):-call(e2c("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_197994).


test('?- e2c("Wesley is her son",[descriptionTest])',[true(compound(_197736)),nondet]):-call(e2c("Wesley is her son",[descriptionTest]),_197736).


test('?- e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_198384)),nondet]):-call(e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_198384).


test('?- e2c("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_197814)),nondet]):-call(e2c("Counselor Deanna Troi is here",[descriptionTest]),_197814).


test('?- e2c("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_197910)),nondet]):-call(e2c("Counselor Troi is the ship's main counselor",[descriptionTest]),_197910).


test('?- e2c("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_198066)),nondet]):-call(e2c("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_198066).


test('?- e2c("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_197940)),nondet]):-call(e2c("Commander William Riker is here, staring at you",[descriptionTest]),_197940).


test('?- e2c("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_197946)),nondet]):-call(e2c("Commander Riker is the Enterprise's first officer",[descriptionTest]),_197946).


test('?- e2c("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_197916)),nondet]):-call(e2c("He's in charge of keeping the crew in line",[descriptionTest]),_197916).


test('?- e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_197982)),nondet]):-call(e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_197982).


test('?- e2c("Captain Picard is a very important man",[descriptionTest])',[true(compound(_197880)),nondet]):-call(e2c("Captain Picard is a very important man",[descriptionTest]),_197880).


test('?- e2c("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_197982)),nondet]):-call(e2c("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_197982).


test('?- e2c("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_197826)),nondet]):-call(e2c("He's very smart, and very wise",[descriptionTest]),_197826).


test('?- e2c("Don\'t mess with him!",[descriptionTest])',[true(compound(_197754)),nondet]):-call(e2c("Don't mess with him!",[descriptionTest]),_197754).


test('?- e2c("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_197832)),nondet]):-call(e2c("Guinan is here, tending the bar",[descriptionTest]),_197832).


test('?- e2c("Guinan is a strange being",[descriptionTest])',[true(compound(_197790)),nondet]):-call(e2c("Guinan is a strange being",[descriptionTest]),_197790).


test('?- e2c("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_198498)),nondet]):-call(e2c("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_198498).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_198000)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_198000).


test('?- e2c("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_198000)),nondet]):-call(e2c("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_198000).


test('?- e2c("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_198300)),nondet]):-call(e2c("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_198300).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_197994)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_197994).


test('?- e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_198018)),nondet]):-call(e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_198018).


test('?- e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_198288)),nondet]):-call(e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_198288).


test('?- e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_198210)),nondet]):-call(e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_198210).


test('?- e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_198000)),nondet]):-call(e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_198000).


test('?- e2c("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_197880)),nondet]):-call(e2c("Livingston is Captain Picard's pet fish",[descriptionTest]),_197880).


test('?- e2c("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_198132)),nondet]):-call(e2c("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_198132).


test('?- e2c("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_197982)),nondet]):-call(e2c("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_197982).


test('?- e2c("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_197850)),nondet]):-call(e2c("Spot is Data's orange coloured cat",[descriptionTest]),_197850).


test('?- e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_198372)),nondet]):-call(e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_198372).


test('?- e2c("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_197994)),nondet]):-call(e2c("A nervous looking ensign is standing here, watching you",[descriptionTest]),_197994).


test('?- e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_197976)),nondet]):-call(e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_197976).


test('?- e2c("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_198318)),nondet]):-call(e2c("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_198318).


test('?- e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_197964)),nondet]):-call(e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_197964).


test('?- e2c("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_197832)),nondet]):-call(e2c("Alexander Rozhenko is Worf's son",[descriptionTest]),_197832).


test('?- e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_198114)),nondet]):-call(e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_198114).


test('?- e2c("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_198030)),nondet]):-call(e2c("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_198030).


test('?- e2c("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_197976)),nondet]):-call(e2c("A standard issue Starfleet phaser has been left here",[descriptionTest]),_197976).


test('?- e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_198378)),nondet]):-call(e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_198378).


test('?- e2c("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_197856)),nondet]):-call(e2c("A large phaser rifle is lying here",[descriptionTest]),_197856).


test('?- e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_198450)),nondet]):-call(e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_198450).


test('?- e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_198054)),nondet]):-call(e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_198054).


test('?- e2c("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198402)),nondet]):-call(e2c("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198402).


test('?- e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_198054)),nondet]):-call(e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_198054).


test('?- e2c("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198426)),nondet]):-call(e2c("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198426).


test('?- e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_198030)),nondet]):-call(e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_198030).


test('?- e2c("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_198402)),nondet]):-call(e2c("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_198402).


test('?- e2c("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_197952)),nondet]):-call(e2c("A pair of Starfleet black boots are sitting here",[descriptionTest]),_197952).


test('?- e2c("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_198492)),nondet]):-call(e2c("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_198492).


test('?- e2c("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_197922)),nondet]):-call(e2c("A Starfleet communication badge is lying here",[descriptionTest]),_197922).


test('?- e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_198960)),nondet]):-call(e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_198960).


test('?- e2c("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_197916)),nondet]):-call(e2c("Worf's silver chain sash has been left here",[descriptionTest]),_197916).


test('?- e2c("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_198528)),nondet]):-call(e2c("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_198528).


test('?- e2c("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_197808)),nondet]):-call(e2c("Geordi's VISOR is lying here",[descriptionTest]),_197808).


test('?- e2c("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_199200)),nondet]):-call(e2c("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_199200).


test('?- e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_197976)),nondet]):-call(e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_197976).


test('?- e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_198762)),nondet]):-call(e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_198762).


test('?- e2c("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_197910)),nondet]):-call(e2c("A shard of dilithium crystal is lying here",[descriptionTest]),_197910).


test('?- e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_198564)),nondet]):-call(e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_198564).


test('?- e2c("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_197922)),nondet]):-call(e2c("Captain Picard's wooden flute is sitting here",[descriptionTest]),_197922).


test('?- e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_198534)),nondet]):-call(e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_198534).


test('?- e2c("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_197934)),nondet]):-call(e2c("Commander Riker's trombone has been placed here",[descriptionTest]),_197934).


test('?- e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_198366)),nondet]):-call(e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_198366).


test('?- e2c("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_197862)),nondet]):-call(e2c("A small cup of tea is sitting here",[descriptionTest]),_197862).


test('?- e2c("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_197880)),nondet]):-call(e2c("A bottle of synthehol is standing here",[descriptionTest]),_197880).


test('?- e2c("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_197892)),nondet]):-call(e2c("A bottle of Ferengi ale is sitting here",[descriptionTest]),_197892).


test('?- e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_197916)),nondet]):-call(e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_197916).


test('?- e2c("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_197928)),nondet]):-call(e2c("A small glass of prune juice is sitting here",[descriptionTest]),_197928).


test('?- e2c("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_197898)),nondet]):-call(e2c("A bottle of Vulcan beer is standing here",[descriptionTest]),_197898).


test('?- e2c("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_197970)),nondet]):-call(e2c("You find yourself in the middle of main engineering",[descriptionTest]),_197970).


test('?- e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_198090)),nondet]):-call(e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_198090).


test('?- e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_198390)),nondet]):-call(e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_198390).


test('?- e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_198198)),nondet]):-call(e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_198198).


test('?- e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_198126)),nondet]):-call(e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_198126).


test('?- e2c("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_198306)),nondet]):-call(e2c("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_198306).


test('?- e2c("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_197898)),nondet]):-call(e2c("You're in the middle of Geordi's quarters",[descriptionTest]),_197898).


test('?- e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_198096)),nondet]):-call(e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_198096).


test('?- e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_198420)),nondet]):-call(e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_198420).


test('?- e2c("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_198030)),nondet]):-call(e2c("A neatly made bed has been placed against the northern wall",[descriptionTest]),_198030).


test('?- e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_198000)),nondet]):-call(e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_198000).


test('?- e2c("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_197886)),nondet]):-call(e2c("You're in the middle of Data's quarters",[descriptionTest]),_197886).


test('?- e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_198948)),nondet]):-call(e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_198948).


test('?- e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_198162)),nondet]):-call(e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_198162).


test('?- e2c("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_198186)),nondet]):-call(e2c("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_198186).


test('?- e2c("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_197814)),nondet]):-call(e2c("You're in the dimly lit Brig",[descriptionTest]),_197814).


test('?- e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_198204)),nondet]):-call(e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_198204).


test('?- e2c("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_198282)),nondet]):-call(e2c("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_198282).


test('?- e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_198576)),nondet]):-call(e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_198576).


test('?- e2c(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_204804)),nondet]):-call(e2c('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_204804).


test('?- e2c("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_198288)),nondet]):-call(e2c("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_198288).


test('?- e2c("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_197892)),nondet]):-call(e2c("You're in the Enterprise transporter room",[descriptionTest]),_197892).


test('?- e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_198378)),nondet]):-call(e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_198378).


test('?- e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_198348)),nondet]):-call(e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_198348).


test('?- e2c("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_197886)),nondet]):-call(e2c("You find yourself in a transporter beam",[descriptionTest]),_197886).


test('?- e2c("All you can see is blue flashing light",[descriptionTest])',[true(compound(_197886)),nondet]):-call(e2c("All you can see is blue flashing light",[descriptionTest]),_197886).


test('?- e2c("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_198042)),nondet]):-call(e2c("It feels as though your body is racing around at high speeds",[descriptionTest]),_198042).


test('?- e2c("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_198162)),nondet]):-call(e2c("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_198162).


test('?- e2c("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_198090)),nondet]):-call(e2c("You step through the doors and find yourself in a large school room",[descriptionTest]),_198090).


test('?- e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_198468)),nondet]):-call(e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_198468).


test('?- e2c("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_198222)),nondet]):-call(e2c("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_198222).


test('?- e2c("You\'re in the turbolift",[descriptionTest])',[true(compound(_197772)),nondet]):-call(e2c("You're in the turbolift",[descriptionTest]),_197772).


test('?- e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_198150)),nondet]):-call(e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_198150).


test('?- e2c("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_198042)),nondet]):-call(e2c("Several vertical rows of lights make this place very well lit",[descriptionTest]),_198042).


test('?- e2c("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_198030)),nondet]):-call(e2c("From here, you can access the other decks on the Enterprise",[descriptionTest]),_198030).


test('?- e2c("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_197784)),nondet]):-call(e2c("You're now on Holodeck 2",[descriptionTest]),_197784).


test('?- e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_198468)),nondet]):-call(e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_198468).


test('?- e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_198216)),nondet]):-call(e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_198216).


test('?- e2c("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_197910)),nondet]):-call(e2c("Right now, this holodeck is not functioning",[descriptionTest]),_197910).


test('?- e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_198018)),nondet]):-call(e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_198018).


test('?- e2c("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_197940)),nondet]):-call(e2c("You're in the main cargo bay of the Enterprise",[descriptionTest]),_197940).


test('?- e2c("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_198150)),nondet]):-call(e2c("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_198150).


test('?- e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_198468)),nondet]):-call(e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_198468).


test('?- e2c("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_197844)),nondet]):-call(e2c("You've arrived in Riker's quarters",[descriptionTest]),_197844).


test('?- e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_198420)),nondet]):-call(e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_198420).


test('?- e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_198354)),nondet]):-call(e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_198354).


test('?- e2c("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_197958)),nondet]):-call(e2c("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_197958).


test('?- e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_198594)),nondet]):-call(e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_198594).


test('?- e2c("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_198390)),nondet]):-call(e2c("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_198390).


test('?- e2c("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_197862)),nondet]):-call(e2c("You emerge into a dark narrow alley",[descriptionTest]),_197862).


test('?- e2c("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_198006)),nondet]):-call(e2c("Tall dark brick buildings block your way north and south",[descriptionTest]),_198006).


test('?- e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_198270)),nondet]):-call(e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_198270).


test('?- e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_198306)),nondet]):-call(e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_198306).


test('?- e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_198042)),nondet]):-call(e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_198042).


test('?- e2c("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_197946)),nondet]):-call(e2c("The archway leading out of the holodeck is west",[descriptionTest]),_197946).


test('?- e2c("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_197850)),nondet]):-call(e2c("You're in Doctor Crusher's quarters",[descriptionTest]),_197850).


test('?- e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_198246)),nondet]):-call(e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_198246).


test('?- e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_198336)),nondet]):-call(e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_198336).


test('?- e2c("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_198078)),nondet]):-call(e2c("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_198078).


test('?- e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_198702)),nondet]):-call(e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_198702).


test('?- e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_198174)),nondet]):-call(e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_198174).


test('?- e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_198570)),nondet]):-call(e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_198570).


test('?- e2c("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_198042)),nondet]):-call(e2c("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_198042).


test('?- e2c("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_197970)),nondet]):-call(e2c("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_197970).


test('?- e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_198864)),nondet]):-call(e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_198864).


test('?- e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_198042)),nondet]):-call(e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_198042).


test('?- e2c("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_197952)),nondet]):-call(e2c("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_197952).


test('?- e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_198144)),nondet]):-call(e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_198144).


test('?- e2c("A large grey door leads into space",[descriptionTest])',[true(compound(_197856)),nondet]):-call(e2c("A large grey door leads into space",[descriptionTest]),_197856).


test('?- e2c("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_198042)),nondet]):-call(e2c("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_198042).


test('?- e2c("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_198114)),nondet]):-call(e2c("You can see stars in every direction, which provide the only light here",[descriptionTest]),_198114).


test('?- e2c("You feel very cold",[descriptionTest])',[true(compound(_197742)),nondet]):-call(e2c("You feel very cold",[descriptionTest]),_197742).


test('?- e2c("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_198012)),nondet]):-call(e2c("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_198012).


test('?- e2c("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_197898)),nondet]):-call(e2c("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_197898).


test('?- e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_198510)),nondet]):-call(e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_198510).


test('?- e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_198234)),nondet]):-call(e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_198234).


test('?- e2c("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_197784)),nondet]):-call(e2c("You're in Worf's quarters",[descriptionTest]),_197784).


test('?- e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_198228)),nondet]):-call(e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_198228).


test('?- e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_198642)),nondet]):-call(e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_198642).


test('?- e2c("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_197850)),nondet]):-call(e2c("You emerge into the Enterprise gym",[descriptionTest]),_197850).


test('?- e2c("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_197952)),nondet]):-call(e2c("The room is quite large, with a soft grey floor",[descriptionTest]),_197952).


test('?- e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_198360)),nondet]):-call(e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_198360).


test('?- e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_198324)),nondet]):-call(e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_198324).


test('?- e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_198012)),nondet]):-call(e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_198012).


test('?- e2c("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_198078)),nondet]):-call(e2c("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_198078).


test('?- e2c("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_198168)),nondet]):-call(e2c("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_198168).


test('?- e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_198462)),nondet]):-call(e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_198462).


test('?- e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_198480)),nondet]):-call(e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_198480).


test('?- e2c("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_197934)),nondet]):-call(e2c("Two large windows offer a great view of space",[descriptionTest]),_197934).


test('?- e2c("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_198186)),nondet]):-call(e2c("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_198186).


test('?- e2c("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_197862)),nondet]):-call(e2c("You're in the Enterprise science lab",[descriptionTest]),_197862).


test('?- e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_198252)),nondet]):-call(e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_198252).


test('?- e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_198750)),nondet]):-call(e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_198750).


test('?- e2c("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_198006)),nondet]):-call(e2c("A complex looking computer console is facing this machine",[descriptionTest]),_198006).


test('?- e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_198162)),nondet]):-call(e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_198162).


test('?- e2c("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_197922)),nondet]):-call(e2c("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_197922).


test('?- e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_198156)),nondet]):-call(e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_198156).


test('?- e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_198528)),nondet]):-call(e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_198528).


test('?- e2c("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_198330)),nondet]):-call(e2c("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_198330).


test('?- e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_198726)),nondet]):-call(e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_198726).


test('?- e2c("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_197928)),nondet]):-call(e2c("You're standing in Captain Picard's ready room",[descriptionTest]),_197928).


test('?- e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_198366)),nondet]):-call(e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_198366).


test('?- e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_198270)),nondet]):-call(e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_198270).


test('?- e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_198468)),nondet]):-call(e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_198468).


test('?- e2c("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_198048)),nondet]):-call(e2c("This is where the Captain makes all of his important decisions",[descriptionTest]),_198048).


test('?- e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_198156)),nondet]):-call(e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_198156).


test('?- e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_198468)),nondet]):-call(e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_198468).


test('?- e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_198276)),nondet]):-call(e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_198276).


test('?- e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_198072)),nondet]):-call(e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_198072).


test('?- e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_198420)),nondet]):-call(e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_198420).


test('?- e2c("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_198018)),nondet]):-call(e2c("This is where the ship's pilot and information officer sit",[descriptionTest]),_198018).


test('?- e2c("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_197940)),nondet]):-call(e2c("You're in the conference room of the Enterprise",[descriptionTest]),_197940).


test('?- e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_198486)),nondet]):-call(e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_198486).


test('?- e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_198108)),nondet]):-call(e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_198108).


test('?- e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_198204)),nondet]):-call(e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_198204).


test('?- e2c("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_198036)),nondet]):-call(e2c("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_198036).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_120998)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_120998).


test('?- e2c("no two owners eat pizza",[sanity])',[true(compound(_120990)),nondet]):-call(e2c("no two owners eat pizza",[sanity]),_120990).


test('?- e2c("no three owners eat pizza",[sanity])',[true(compound(_120990)),nondet]):-call(e2c("no three owners eat pizza",[sanity]),_120990).


test('?- e2c("no three owners eat the same pizza",[sanity])',[true(compound(_120992)),nondet]):-call(e2c("no three owners eat the same pizza",[sanity]),_120992).


test('?- e2c("no three owners eat the same kind of pizza",[sanity])',[true(compound(_120994)),nondet]):-call(e2c("no three owners eat the same kind of pizza",[sanity]),_120994).


test('?- e2c("no owners eat the same pizza",[sanity])',[true(compound(_120990)),nondet]):-call(e2c("no owners eat the same pizza",[sanity]),_120990).


test('?- e2c("no owners eat the same kind of pizza",[sanity])',[true(compound(_120992)),nondet]):-call(e2c("no owners eat the same kind of pizza",[sanity]),_120992).


test('?- e2c("there are 5 houses",[sanity])',[true(compound(_120988)),nondet]):-call(e2c("there are 5 houses",[sanity]),_120988).


test('?- e2c("there are not 5 houses",[sanity])',[true(compound(_120988)),nondet]):-call(e2c("there are not 5 houses",[sanity]),_120988).


test('?- e2c("there are not zero houses",[sanity])',[true(compound(_120990)),nondet]):-call(e2c("there are not zero houses",[sanity]),_120990).


test('?- e2c(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_120998)),nondet]):-call(e2c(noun_phrase("less than 2 owners"),[sanity,bug]),_120998).


test('?- e2c(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_120992)),nondet]):-call(e2c(noun_phrase("at most the 5 owners"),[sanity]),_120992).


test('?- e2c(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_120992)),nondet]):-call(e2c(noun_phrase("at most 5 owners"),[sanity]),_120992).


test('?- e2c(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_120992)),nondet]):-call(e2c(noun_phrase("less than 3 owners"),[sanity]),_120992).


test('?- e2c(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_120994)),nondet]):-call(e2c(noun_phrase("at most 50 percent of owners"),[sanity]),_120994).


test('?- e2c(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_120998)),nondet]):-call(e2c(noun_phrase("no three owners"),[sanity,no_working]),_120998).


test('?- e2c("terry writes a non-program.",[tell])',[true(compound(_120990)),nondet]):-call(e2c("terry writes a non-program.",[tell]),_120990).


test('?- e2c("every nonhuman programmer writes a program.",[tell])',[true(compound(_120994)),nondet]):-call(e2c("every nonhuman programmer writes a program.",[tell]),_120994).


test('?- e2c("every human programmer writes a not a program.",[tell])',[true(compound(_120994)),nondet]):-call(e2c("every human programmer writes a not a program.",[tell]),_120994).


test('?- e2c("every human programmer happily writes a not a program.",[tell])',[true(compound(_120996)),nondet]):-call(e2c("every human programmer happily writes a not a program.",[tell]),_120996).


:- end_tests(e2c).

