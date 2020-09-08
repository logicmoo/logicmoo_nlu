

:- begin_tests(test_lex_info).



test('?- test_lex_info("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_111714)),nondet]):-call(test_lex_info("His friends are liked by hers.",[bad_juju,sanity]),_111714).


test('?- test_lex_info("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_111716)),nondet]):-call(test_lex_info("Her friends are not liked by his.",[bad_juju,sanity]),_111716).


test('?- test_lex_info("Do their friends like each other?",[bad_juju,feature])',[true(compound(_111716)),nondet]):-call(test_lex_info("Do their friends like each other?",[bad_juju,feature]),_111716).


test('?- test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_111658),sanity])',[true(compound(_111720)),nondet]):-call(test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_111658),sanity]),_111720).


test('?- test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_111656),sanity])',[true(compound(_111718)),nondet]):-call(test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_111656),sanity]),_111718).


test('?- test_lex_info("There are 5 houses with five different colors.",[riddle(_111660),sanity])',[true(compound(_111722)),nondet]):-call(test_lex_info("There are 5 houses with five different colors.",[riddle(_111660),sanity]),_111722).


test('?- test_lex_info("There are 5 houses",[riddle_prep,sanity])',[true(compound(_111712)),nondet]):-call(test_lex_info("There are 5 houses",[riddle_prep,sanity]),_111712).


test('?- test_lex_info("Each house has a different color",[riddle_prep,sanity])',[true(compound(_111716)),nondet]):-call(test_lex_info("Each house has a different color",[riddle_prep,sanity]),_111716).


test('?- test_lex_info("In each house lives a person with a different nationality.",[riddle(_111664),sanity])',[true(compound(_111726)),nondet]):-call(test_lex_info("In each house lives a person with a different nationality.",[riddle(_111664),sanity]),_111726).


test('?- test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_111738)),nondet]):-call(test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_111738).


test('?- test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_111726)),nondet]):-call(test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_111726).


test('?- test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_111724)),nondet]):-call(test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_111724).


test('?- test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_111728)),nondet]):-call(test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_111728).


test('?- test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_111732)),nondet]):-call(test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_111732).


test('?- test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_111724)),nondet]):-call(test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression]),_111724).


test('?- test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_111728)),nondet]):-call(test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_111728).


test('?- test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_111722)),nondet]):-call(test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_111722).


test('?- test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_111726)),nondet]):-call(test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression]),_111726).


test('?- test_lex_info("The brit lives in the red house.",[riddle(_111658),sanity])',[true(compound(_111720)),nondet]):-call(test_lex_info("The brit lives in the red house.",[riddle(_111658),sanity]),_111720).


test('?- test_lex_info("The swede keeps dogs as pets.",[riddle(_111656),sanity])',[true(compound(_111718)),nondet]):-call(test_lex_info("The swede keeps dogs as pets.",[riddle(_111656),sanity]),_111718).


test('?- test_lex_info("A dane drinks tea.",[riddle(_111654),sanity])',[true(compound(_111716)),nondet]):-call(test_lex_info("A dane drinks tea.",[riddle(_111654),sanity]),_111716).


test('?- test_lex_info("The green house is on the left of the white house.",[riddle(_111662),sanity])',[true(compound(_111724)),nondet]):-call(test_lex_info("The green house is on the left of the white house.",[riddle(_111662),sanity]),_111724).


test('?- test_lex_info("The green house\'s owner drinks coffee.",[riddle(_111658),sanity])',[true(compound(_111720)),nondet]):-call(test_lex_info("The green house's owner drinks coffee.",[riddle(_111658),sanity]),_111720).


test('?- test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_111660),sanity,regression])',[true(compound(_111728)),nondet]):-call(test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_111660),sanity,regression]),_111728).


test('?- test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_111660),sanity])',[true(compound(_111722)),nondet]):-call(test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_111660),sanity]),_111722).


test('?- test_lex_info("The man living in the center house drinks milk.",[riddle(_111662),sanity])',[true(compound(_111724)),nondet]):-call(test_lex_info("The man living in the center house drinks milk.",[riddle(_111662),sanity]),_111724).


test('?- test_lex_info("The Norwegian lives in the first house .",[riddle(_111660),sanity])',[true(compound(_111722)),nondet]):-call(test_lex_info("The Norwegian lives in the first house .",[riddle(_111660),sanity]),_111722).


test('?- test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_111666),sanity])',[true(compound(_111728)),nondet]):-call(test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_111666),sanity]),_111728).


test('?- test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_111666),sanity])',[true(compound(_111728)),nondet]):-call(test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_111666),sanity]),_111728).


test('?- test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_111660),sanity])',[true(compound(_111722)),nondet]):-call(test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_111660),sanity]),_111722).


test('?- test_lex_info("The German smokes Prince.",[riddle(_111656),sanity])',[true(compound(_111718)),nondet]):-call(test_lex_info("The German smokes Prince.",[riddle(_111656),sanity]),_111718).


test('?- test_lex_info("The Norwegian lives next to the blue house.",[riddle(_111660),sanity])',[true(compound(_111722)),nondet]):-call(test_lex_info("The Norwegian lives next to the blue house.",[riddle(_111660),sanity]),_111722).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_111664),sanity])',[true(compound(_111726)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_111664),sanity]),_111726).


test('?- test_lex_info("Who owns the fish?",[riddle(_111654),sanity])',[true(compound(_111716)),nondet]):-call(test_lex_info("Who owns the fish?",[riddle(_111654),sanity]),_111716).


test('?- test_lex_info("One woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("One woman paints.",[quants]),_111706).


test('?- test_lex_info("No woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("No woman paints.",[quants]),_111706).


test('?- test_lex_info("Some woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Some woman paints.",[quants]),_111706).


test('?- test_lex_info("Every woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Every woman paints.",[quants]),_111706).


test('?- test_lex_info("Each woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Each woman paints.",[quants]),_111706).


test('?- test_lex_info("Any woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Any woman paints.",[quants]),_111706).


test('?- test_lex_info("The woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("The woman paints.",[quants]),_111706).


test('?- test_lex_info("The not woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("The not woman paints.",[quants]),_111706).


test('?- test_lex_info("Not a woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not a woman paints.",[quants]),_111706).


test('?- test_lex_info("Not one woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not one woman paints.",[quants]),_111706).


test('?- test_lex_info("Not no woman paints.",[quants_neg_postcond])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not no woman paints.",[quants_neg_postcond]),_111706).


test('?- test_lex_info("Not some woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not some woman paints.",[quants]),_111706).


test('?- test_lex_info("Not every woman paints.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("Not every woman paints.",[quants]),_111708).


test('?- test_lex_info("Not each woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not each woman paints.",[quants]),_111706).


test('?- test_lex_info("Not any woman paints.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not any woman paints.",[quants]),_111706).


test('?- test_lex_info("The women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("The women paint.",[quants]),_111706).


test('?- test_lex_info("Women paint.",[quants])',[true(compound(_111704)),nondet]):-call(test_lex_info("Women paint.",[quants]),_111704).


test('?- test_lex_info("Some women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Some women paint.",[quants]),_111706).


test('?- test_lex_info("No women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("No women paint.",[quants]),_111706).


test('?- test_lex_info("All women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("All women paint.",[quants]),_111706).


test('?- test_lex_info("Any women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Any women paint.",[quants]),_111706).


test('?- test_lex_info("Not women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not women paint.",[quants]),_111706).


test('?- test_lex_info("Not no women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not no women paint.",[quants]),_111706).


test('?- test_lex_info("Not all women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not all women paint.",[quants]),_111706).


test('?- test_lex_info("Not any women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not any women paint.",[quants]),_111706).


test('?- test_lex_info("The three women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("The three women paint.",[quants]),_111706).


test('?- test_lex_info("Three women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Three women paint.",[quants]),_111706).


test('?- test_lex_info("Some three women paint.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("Some three women paint.",[quants]),_111708).


test('?- test_lex_info("No three women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("No three women paint.",[quants]),_111706).


test('?- test_lex_info("Every three women paint.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("Every three women paint.",[quants]),_111708).


test('?- test_lex_info("All three women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("All three women paint.",[quants]),_111706).


test('?- test_lex_info("Any three women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Any three women paint.",[quants]),_111706).


test('?- test_lex_info("Not three women paint.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not three women paint.",[quants]),_111706).


test('?- test_lex_info("Not some three women paint.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("Not some three women paint.",[quants]),_111708).


test('?- test_lex_info("Not no three women paint.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("Not no three women paint.",[quants]),_111708).


test('?- test_lex_info("Not all three women paint.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("Not all three women paint.",[quants]),_111708).


test('?- test_lex_info("Not every three women paint.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("Not every three women paint.",[quants]),_111708).


test('?- test_lex_info("Not any three women paint.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("Not any three women paint.",[quants]),_111708).


test('?- test_lex_info("Not three of the women paint.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("Not three of the women paint.",[quants]),_111708).


test('?- test_lex_info("Not some of the three women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("Not some of the three women paint.",[quants]),_111710).


test('?- test_lex_info("Not no three of the women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("Not no three of the women paint.",[quants]),_111710).


test('?- test_lex_info("Not all three of the women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("Not all three of the women paint.",[quants]),_111710).


test('?- test_lex_info("Not every three of the women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("Not every three of the women paint.",[quants]),_111710).


test('?- test_lex_info("Not any three of the women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("Not any three of the women paint.",[quants]),_111710).


test('?- test_lex_info("Not three of the four women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("Not three of the four women paint.",[quants]),_111710).


test('?- test_lex_info("Not none of three out of the four women paint.",[quants])',[true(compound(_111712)),nondet]):-call(test_lex_info("Not none of three out of the four women paint.",[quants]),_111712).


test('?- test_lex_info("Not all three of the four women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("Not all three of the four women paint.",[quants]),_111710).


test('?- test_lex_info("Not any three of the four women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("Not any three of the four women paint.",[quants]),_111710).


test('?- test_lex_info("Three of the four women paint.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("Three of the four women paint.",[quants]),_111708).


test('?- test_lex_info("Three out of the four women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("Three out of the four women paint.",[quants]),_111710).


test('?- test_lex_info("All three of the four women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("All three of the four women paint.",[quants]),_111710).


test('?- test_lex_info("Any three of the four women paint.",[quants])',[true(compound(_111710)),nondet]):-call(test_lex_info("Any three of the four women paint.",[quants]),_111710).


test('?- test_lex_info("I paint",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("I paint",[pronoun]),_111704).


test('?- test_lex_info("you paint",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("you paint",[pronoun]),_111704).


test('?- test_lex_info("We paint",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("We paint",[pronoun]),_111704).


test('?- test_lex_info("None paint",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("None paint",[pronoun]),_111704).


test('?- test_lex_info("They paint",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("They paint",[pronoun]),_111704).


test('?- test_lex_info("Some paint",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("Some paint",[pronoun]),_111704).


test('?- test_lex_info("It paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("It paints",[pronoun]),_111704).


test('?- test_lex_info("he paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("he paints",[pronoun]),_111704).


test('?- test_lex_info("She paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("She paints",[pronoun]),_111704).


test('?- test_lex_info("Someone paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("Someone paints",[pronoun]),_111704).


test('?- test_lex_info("Anybody paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("Anybody paints",[pronoun]),_111704).


test('?- test_lex_info("Anyone paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("Anyone paints",[pronoun]),_111704).


test('?- test_lex_info("Anything paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Anything paints",[pronoun]),_111706).


test('?- test_lex_info("Everybody paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Everybody paints",[pronoun]),_111706).


test('?- test_lex_info("Everyone paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Everyone paints",[pronoun]),_111706).


test('?- test_lex_info("Everything paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Everything paints",[pronoun]),_111706).


test('?- test_lex_info("Nobody paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("Nobody paints",[pronoun]),_111704).


test('?- test_lex_info("No one paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("No one paints",[pronoun]),_111704).


test('?- test_lex_info("Nothing paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("Nothing paints",[pronoun]),_111704).


test('?- test_lex_info("One paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("One paints",[pronoun]),_111704).


test('?- test_lex_info("Somebody paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Somebody paints",[pronoun]),_111706).


test('?- test_lex_info("Something paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Something paints",[pronoun]),_111706).


test('?- test_lex_info("Not anybody paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not anybody paints",[pronoun]),_111706).


test('?- test_lex_info("Not anyone paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not anyone paints",[pronoun]),_111706).


test('?- test_lex_info("Not anything paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not anything paints",[pronoun]),_111706).


test('?- test_lex_info("Not everybody paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not everybody paints",[pronoun]),_111706).


test('?- test_lex_info("Not everyone paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not everyone paints",[pronoun]),_111706).


test('?- test_lex_info("Not everything paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not everything paints",[pronoun]),_111706).


test('?- test_lex_info("Not nothing paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not nothing paints",[pronoun]),_111706).


test('?- test_lex_info("Not one paints",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("Not one paints",[pronoun]),_111704).


test('?- test_lex_info("Not somebody paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not somebody paints",[pronoun]),_111706).


test('?- test_lex_info("Not something paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("Not something paints",[pronoun]),_111706).


test('?- test_lex_info("She likes i",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("She likes i",[pronoun]),_111704).


test('?- test_lex_info("She likes me",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("She likes me",[pronoun]),_111704).


test('?- test_lex_info("She likes you",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("She likes you",[pronoun]),_111704).


test('?- test_lex_info("She likes it",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("She likes it",[pronoun]),_111704).


test('?- test_lex_info("She likes us",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("She likes us",[pronoun]),_111704).


test('?- test_lex_info("She likes them",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("She likes them",[pronoun]),_111704).


test('?- test_lex_info("She likes no one",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("She likes no one",[pronoun]),_111706).


test('?- test_lex_info("She likes none",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("She likes none",[pronoun]),_111704).


test('?- test_lex_info("She likes him",[pronoun])',[true(compound(_111704)),nondet]):-call(test_lex_info("She likes him",[pronoun]),_111704).


test('?- test_lex_info("She likes herself",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("She likes herself",[pronoun]),_111706).


test('?- test_lex_info("She likes himself",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("She likes himself",[pronoun]),_111706).


test('?- test_lex_info("It is us that paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("It is us that paints",[pronoun]),_111706).


test('?- test_lex_info("It is them that paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("It is them that paints",[pronoun]),_111706).


test('?- test_lex_info("It is he that paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("It is he that paints",[pronoun]),_111706).


test('?- test_lex_info("It is she that paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("It is she that paints",[pronoun]),_111706).


test('?- test_lex_info("It is her that paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("It is her that paints",[pronoun]),_111706).


test('?- test_lex_info("It is him that paints",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("It is him that paints",[pronoun]),_111706).


test('?- test_lex_info("We are us that paint",[pronoun])',[true(compound(_111706)),nondet]):-call(test_lex_info("We are us that paint",[pronoun]),_111706).


test('?- test_lex_info("We are all of us that paint",[pronoun])',[true(compound(_111708)),nondet]):-call(test_lex_info("We are all of us that paint",[pronoun]),_111708).


test('?- test_lex_info("It is everybody that paints",[pronoun])',[true(compound(_111708)),nondet]):-call(test_lex_info("It is everybody that paints",[pronoun]),_111708).


test('?- test_lex_info("Every man that paints likes monet.",[bratko])',[true(compound(_111710)),nondet]):-call(test_lex_info("Every man that paints likes monet.",[bratko]),_111710).


test('?- test_lex_info("A woman that admires John paints.",[bratko])',[true(compound(_111710)),nondet]):-call(test_lex_info("A woman that admires John paints.",[bratko]),_111710).


test('?- test_lex_info("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_111716)),nondet]):-call(test_lex_info("Every woman that likes a man that admires monet paints.",[bratko]),_111716).


test('?- test_lex_info("John likes Annie.",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("John likes Annie.",[bratko]),_111706).


test('?- test_lex_info("Annie likes a man that admires monet.",[bratko])',[true(compound(_111710)),nondet]):-call(test_lex_info("Annie likes a man that admires monet.",[bratko]),_111710).


test('?- test_lex_info("Bertrand Russell wrote principia.",[bratko])',[true(compound(_111710)),nondet]):-call(test_lex_info("Bertrand Russell wrote principia.",[bratko]),_111710).


test('?- test_lex_info("An author wrote principia.",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("An author wrote principia.",[bratko]),_111708).


test('?- test_lex_info("Iraq is a country.",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("Iraq is a country.",[bratko]),_111706).


test('?- test_lex_info("A happy author wrote principia.",[bratko])',[true(compound(_111710)),nondet]):-call(test_lex_info("A happy author wrote principia.",[bratko]),_111710).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_111706).


test('?- test_lex_info("Bertrand is an author.",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("Bertrand is an author.",[bratko]),_111706).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_111706).


test('?- test_lex_info("Every author is a programmer.",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("Every author is a programmer.",[bratko]),_111708).


test('?- test_lex_info("Is Bertrand an programmer?",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("Is Bertrand an programmer?",[bratko]),_111708).


test('?- test_lex_info("What is a author?",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("What is a author?",[bratko]),_111706).


test('?- test_lex_info("What did Bertrand write?",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("What did Bertrand write?",[bratko]),_111708).


test('?- test_lex_info("What is a book?",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("What is a book?",[bratko]),_111706).


test('?- test_lex_info("Principia is a book.",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("Principia is a book.",[bratko]),_111706).


test('?- test_lex_info("Bertrand is Bertrand.",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("Bertrand is Bertrand.",[bratko]),_111706).


test('?- test_lex_info("Shrdlu halts.",[bratko])',[true(compound(_111704)),nondet]):-call(test_lex_info("Shrdlu halts.",[bratko]),_111704).


test('?- test_lex_info("Every student wrote a program.",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("Every student wrote a program.",[bratko]),_111708).


test('?- test_lex_info("Terry writes a program.",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("Terry writes a program.",[bratko]),_111708).


test('?- test_lex_info("Terry writes a program that halts.",[bratko])',[true(compound(_111710)),nondet]):-call(test_lex_info("Terry writes a program that halts.",[bratko]),_111710).


test('?- test_lex_info("An author of every book wrote a program.",[bratko])',[true(compound(_111712)),nondet]):-call(test_lex_info("An author of every book wrote a program.",[bratko]),_111712).


test('?- test_lex_info("A man hapilly maried paints.",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("A man hapilly maried paints.",[bratko]),_111708).


test('?- test_lex_info("A hapilly maried man paints.",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("A hapilly maried man paints.",[bratko]),_111708).


test('?- test_lex_info("A man who knows paints.",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("A man who knows paints.",[bratko]),_111708).


test('?- test_lex_info("A man gives something.",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("A man gives something.",[bratko]),_111706).


test('?- test_lex_info("A man gives his word.",[bratko])',[true(compound(_111706)),nondet]):-call(test_lex_info("A man gives his word.",[bratko]),_111706).


test('?- test_lex_info("A man of his word paints.",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("A man of his word paints.",[bratko]),_111708).


test('?- test_lex_info("A man paints.",[bratko])',[true(compound(_111704)),nondet]):-call(test_lex_info("A man paints.",[bratko]),_111704).


test('?- test_lex_info("A man that paints paints.",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("A man that paints paints.",[bratko]),_111708).


test('?- test_lex_info("A man walks.",[bratko])',[true(compound(_111704)),nondet]):-call(test_lex_info("A man walks.",[bratko]),_111704).


test('?- test_lex_info("A man that walks paints.",[bratko])',[true(compound(_111708)),nondet]):-call(test_lex_info("A man that walks paints.",[bratko]),_111708).


test('?- test_lex_info("It halts.",[bratko])',[true(compound(_111704)),nondet]):-call(test_lex_info("It halts.",[bratko]),_111704).


test('?- test_lex_info("A man of his word that walks paints.",[bratko])',[true(compound(_111710)),nondet]):-call(test_lex_info("A man of his word that walks paints.",[bratko]),_111710).


test('?- test_lex_info("The cost of what the product is changes.",[bratko])',[true(compound(_111712)),nondet]):-call(test_lex_info("The cost of what the product is changes.",[bratko]),_111712).


test('?- test_lex_info("We need a virtual machine server.",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("We need a virtual machine server.",[aindy]),_111710).


test('?- test_lex_info("The virtual machine server should have several VMs.",[aindy])',[true(compound(_111714)),nondet]):-call(test_lex_info("The virtual machine server should have several VMs.",[aindy]),_111714).


test('?- test_lex_info("One VM should be the POSI VM.",[aindy])',[true(compound(_111708)),nondet]):-call(test_lex_info("One VM should be the POSI VM.",[aindy]),_111708).


test('?- test_lex_info("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("One VM should be the FRDCSA.org VM.",[aindy]),_111710).


test('?- test_lex_info("One VM should be the mail server.",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("One VM should be the mail server.",[aindy]),_111710).


test('?- test_lex_info("One computer should be the backup server.",[aindy])',[true(compound(_111712)),nondet]):-call(test_lex_info("One computer should be the backup server.",[aindy]),_111712).


test('?- test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_111728)),nondet]):-call(test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_111728).


test('?- test_lex_info("I need a fast computer for work.",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("I need a fast computer for work.",[aindy]),_111710).


test('?- test_lex_info("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_111720)),nondet]):-call(test_lex_info("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_111720).


test('?- test_lex_info("I need a dedicated computer for network security research.",[aindy])',[true(compound(_111716)),nondet]):-call(test_lex_info("I need a dedicated computer for network security research.",[aindy]),_111716).


test('?- test_lex_info("I need a machine to run Tails on.",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("I need a machine to run Tails on.",[aindy]),_111710).


test('?- test_lex_info("I need a machine off the network for airgap security.",[aindy])',[true(compound(_111714)),nondet]):-call(test_lex_info("I need a machine off the network for airgap security.",[aindy]),_111714).


test('?- test_lex_info("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_111720)),nondet]):-call(test_lex_info("One VM should be the game server for running game development projects.",[aindy]),_111720).


test('?- test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_111714)),nondet]):-call(test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_111714).


test('?- test_lex_info("I could read about how to build a private watson.",[aindy])',[true(compound(_111714)),nondet]):-call(test_lex_info("I could read about how to build a private watson.",[aindy]),_111714).


test('?- test_lex_info("Need backups.",[aindy])',[true(compound(_111704)),nondet]):-call(test_lex_info("Need backups.",[aindy]),_111704).


test('?- test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_111718)),nondet]):-call(test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy]),_111718).


test('?- test_lex_info("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_111716)),nondet]):-call(test_lex_info("Set up schedules for updating the software on all machines.",[aindy]),_111716).


test('?- test_lex_info("Read books on server room layout.",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("Read books on server room layout.",[aindy]),_111710).


test('?- test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_111718)),nondet]):-call(test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_111718).


test('?- test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_111720)),nondet]):-call(test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_111720).


test('?- test_lex_info("I want a gaming computer.  Do I?",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("I want a gaming computer.  Do I?",[aindy]),_111710).


test('?- test_lex_info("I want a windows 7 computer for work.",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("I want a windows 7 computer for work.",[aindy]),_111710).


test('?- test_lex_info("I want a fast linux computer for work.",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("I want a fast linux computer for work.",[aindy]),_111710).


test('?- test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_111730)),nondet]):-call(test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_111730).


test('?- test_lex_info("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_111716)),nondet]):-call(test_lex_info("I could install a fresh operating system on justin for work.",[aindy]),_111716).


test('?- test_lex_info("I probably want a separate git computer.",[aindy])',[true(compound(_111712)),nondet]):-call(test_lex_info("I probably want a separate git computer.",[aindy]),_111712).


test('?- test_lex_info("I need to start buying servers.",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("I need to start buying servers.",[aindy]),_111710).


test('?- test_lex_info("I want a rackmount case for servers.",[aindy])',[true(compound(_111710)),nondet]):-call(test_lex_info("I want a rackmount case for servers.",[aindy]),_111710).


test('?- test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_111716)),nondet]):-call(test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)]),_111716).


test('?- test_lex_info("2 oceans border each african country.",[chat80(tell)])',[true(compound(_111714)),nondet]):-call(test_lex_info("2 oceans border each african country.",[chat80(tell)]),_111714).


test('?- test_lex_info("There are 10 large cars.",[quants])',[true(compound(_111708)),nondet]):-call(test_lex_info("There are 10 large cars.",[quants]),_111708).


test('?- test_lex_info("There are 10 oceans.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("There are 10 oceans.",[quants]),_111706).


test('?- test_lex_info("There are 10 women.",[quants])',[true(compound(_111706)),nondet]):-call(test_lex_info("There are 10 women.",[quants]),_111706).


test('?- test_lex_info("An ocean borders an African country.",[chat80(tell)])',[true(compound(_111714)),nondet]):-call(test_lex_info("An ocean borders an African country.",[chat80(tell)]),_111714).


test('?- test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_111722)),nondet]):-call(test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell]),_111722).


test('?- test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_111724)),nondet]):-call(test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_111724).


test('?- test_lex_info("Bertrand wrote a book.",[bratko(book)])',[true(compound(_111710)),nondet]):-call(test_lex_info("Bertrand wrote a book.",[bratko(book)]),_111710).


test('?- test_lex_info("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_111712)),nondet]):-call(test_lex_info("Bertrand wrote nothing.",[bratko(book)]),_111712).


test('?- test_lex_info("Bertrand wrote.",[bratko(book)])',[true(compound(_111710)),nondet]):-call(test_lex_info("Bertrand wrote.",[bratko(book)]),_111710).


test('?- test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_111714)),nondet]):-call(test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)]),_111714).


test('?- test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_111712)),nondet]):-call(test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)]),_111712).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_111714)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_111714).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_111716)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_111716).


test('?- test_lex_info("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_111714)),nondet]):-call(test_lex_info("What did alfred write to Bertrand?",[bratko(book)]),_111714).


test('?- test_lex_info("Alfred wrote a letter.",[bratko(book)])',[true(compound(_111710)),nondet]):-call(test_lex_info("Alfred wrote a letter.",[bratko(book)]),_111710).


test('?- test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_111714)),nondet]):-call(test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)]),_111714).


test('?- test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_111714)),nondet]):-call(test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)]),_111714).


test('?- test_lex_info("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_111712)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand.",[bratko(book)]),_111712).


test('?- test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_111714)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)]),_111714).


test('?- test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_111714)),nondet]):-call(test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)]),_111714).


test('?- test_lex_info("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_111714)),nondet]):-call(test_lex_info("Who did alfred write a letter to?",[bratko(book)]),_111714).


test('?- test_lex_info("Alfred gave it.",[bratko(book)])',[true(compound(_111710)),nondet]):-call(test_lex_info("Alfred gave it.",[bratko(book)]),_111710).


test('?- test_lex_info("Alfred gave a book.",[bratko(book)])',[true(compound(_111710)),nondet]):-call(test_lex_info("Alfred gave a book.",[bratko(book)]),_111710).


test('?- test_lex_info("a pride of lions paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a pride of lions paint",[of]),_111706).


test('?- test_lex_info("a flock of birds paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a flock of birds paint",[of]),_111706).


test('?- test_lex_info("a litter of pups paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a litter of pups paint",[of]),_111706).


test('?- test_lex_info("a prickle of porcupines paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a prickle of porcupines paint",[of]),_111708).


test('?- test_lex_info("a litter of cubs paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a litter of cubs paint",[of]),_111706).


test('?- test_lex_info("a pack of dogs paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a pack of dogs paint",[of]),_111706).


test('?- test_lex_info("a colony of beavers paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a colony of beavers paint",[of]),_111708).


test('?- test_lex_info("a gaggle of geese paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a gaggle of geese paint",[of]),_111708).


test('?- test_lex_info("a family of otters paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a family of otters paint",[of]),_111708).


test('?- test_lex_info("a huddle of walruses paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a huddle of walruses paint",[of]),_111708).


test('?- test_lex_info("a herd of deer paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a herd of deer paint",[of]),_111706).


test('?- test_lex_info("a culture of bacteria paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a culture of bacteria paint",[of]),_111708).


test('?- test_lex_info("a swarm of bees paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a swarm of bees paint",[of]),_111706).


test('?- test_lex_info("a bed of clams paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a bed of clams paint",[of]),_111706).


test('?- test_lex_info("a school of cod paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a school of cod paint",[of]),_111706).


test('?- test_lex_info("a herd of dinosaurs paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a herd of dinosaurs paint",[of]),_111708).


test('?- test_lex_info("a mess of iguanas paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a mess of iguanas paint",[of]),_111708).


test('?- test_lex_info("a mob of wombats paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a mob of wombats paint",[of]),_111706).


test('?- test_lex_info("a pod of pelicans paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a pod of pelicans paint",[of]),_111708).


test('?- test_lex_info("a troop of boy scouts paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a troop of boy scouts paint",[of]),_111708).


test('?- test_lex_info("a team of athletes paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a team of athletes paint",[of]),_111708).


test('?- test_lex_info("a panel of experts paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a panel of experts paint",[of]),_111708).


test('?- test_lex_info("a crew of sailors paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a crew of sailors paint",[of]),_111708).


test('?- test_lex_info("a band of robbers paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a band of robbers paint",[of]),_111708).


test('?- test_lex_info("a troupe of performers paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a troupe of performers paint",[of]),_111708).


test('?- test_lex_info("a crowd of onlookers paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a crowd of onlookers paint",[of]),_111708).


test('?- test_lex_info("a curse of painters paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("a curse of painters paint",[of]),_111708).


test('?- test_lex_info("a fleet of cars paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a fleet of cars paint",[of]),_111706).


test('?- test_lex_info("a pair of shoes paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a pair of shoes paint",[of]),_111706).


test('?- test_lex_info("a fleet of ships paint",[of])',[true(compound(_111706)),nondet]):-call(test_lex_info("a fleet of ships paint",[of]),_111706).


test('?- test_lex_info("an anthology of stories paint",[of])',[true(compound(_111708)),nondet]):-call(test_lex_info("an anthology of stories paint",[of]),_111708).


test('?- test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_188682)),nondet]):-call(test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_188682).


test('?- test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_188652)),nondet]):-call(test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_188652).


test('?- test_lex_info("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_188790)),nondet]):-call(test_lex_info("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_188790).


test('?- test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_188634)),nondet]):-call(test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_188634).


test('?- test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_188682)),nondet]):-call(test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_188682).


test('?- test_lex_info("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_188778)),nondet]):-call(test_lex_info("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_188778).


test('?- test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_188736)),nondet]):-call(test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_188736).


test('?- test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_188928)),nondet]):-call(test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_188928).


test('?- test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_188700)),nondet]):-call(test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest]),_188700).


test('?- test_lex_info("Logged on player character",[descriptionTest])',[true(compound(_188508)),nondet]):-call(test_lex_info("Logged on player character",[descriptionTest]),_188508).


test('?- test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_188766)),nondet]):-call(test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_188766).


test('?- test_lex_info("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_188712)),nondet]):-call(test_lex_info("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_188712).


test('?- test_lex_info("Wesley is her son",[descriptionTest])',[true(compound(_188454)),nondet]):-call(test_lex_info("Wesley is her son",[descriptionTest]),_188454).


test('?- test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_189102)),nondet]):-call(test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_189102).


test('?- test_lex_info("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_188532)),nondet]):-call(test_lex_info("Counselor Deanna Troi is here",[descriptionTest]),_188532).


test('?- test_lex_info("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_188628)),nondet]):-call(test_lex_info("Counselor Troi is the ship's main counselor",[descriptionTest]),_188628).


test('?- test_lex_info("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_188784)),nondet]):-call(test_lex_info("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_188784).


test('?- test_lex_info("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_188658)),nondet]):-call(test_lex_info("Commander William Riker is here, staring at you",[descriptionTest]),_188658).


test('?- test_lex_info("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_188664)),nondet]):-call(test_lex_info("Commander Riker is the Enterprise's first officer",[descriptionTest]),_188664).


test('?- test_lex_info("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_188634)),nondet]):-call(test_lex_info("He's in charge of keeping the crew in line",[descriptionTest]),_188634).


test('?- test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_188700)),nondet]):-call(test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_188700).


test('?- test_lex_info("Captain Picard is a very important man",[descriptionTest])',[true(compound(_188598)),nondet]):-call(test_lex_info("Captain Picard is a very important man",[descriptionTest]),_188598).


test('?- test_lex_info("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_188700)),nondet]):-call(test_lex_info("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_188700).


test('?- test_lex_info("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_188544)),nondet]):-call(test_lex_info("He's very smart, and very wise",[descriptionTest]),_188544).


test('?- test_lex_info("Don\'t mess with him!",[descriptionTest])',[true(compound(_188472)),nondet]):-call(test_lex_info("Don't mess with him!",[descriptionTest]),_188472).


test('?- test_lex_info("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_188550)),nondet]):-call(test_lex_info("Guinan is here, tending the bar",[descriptionTest]),_188550).


test('?- test_lex_info("Guinan is a strange being",[descriptionTest])',[true(compound(_188508)),nondet]):-call(test_lex_info("Guinan is a strange being",[descriptionTest]),_188508).


test('?- test_lex_info("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_189216)),nondet]):-call(test_lex_info("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_189216).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_188718)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_188718).


test('?- test_lex_info("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_188718)),nondet]):-call(test_lex_info("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_188718).


test('?- test_lex_info("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_189018)),nondet]):-call(test_lex_info("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_189018).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_188712)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_188712).


test('?- test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_188736)),nondet]):-call(test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_188736).


test('?- test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_189006)),nondet]):-call(test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_189006).


test('?- test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_188928)),nondet]):-call(test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_188928).


test('?- test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_188718)),nondet]):-call(test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_188718).


test('?- test_lex_info("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_188598)),nondet]):-call(test_lex_info("Livingston is Captain Picard's pet fish",[descriptionTest]),_188598).


test('?- test_lex_info("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_188850)),nondet]):-call(test_lex_info("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_188850).


test('?- test_lex_info("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_188700)),nondet]):-call(test_lex_info("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_188700).


test('?- test_lex_info("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_188568)),nondet]):-call(test_lex_info("Spot is Data's orange coloured cat",[descriptionTest]),_188568).


test('?- test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_189090)),nondet]):-call(test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_189090).


test('?- test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_188712)),nondet]):-call(test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest]),_188712).


test('?- test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_188694)),nondet]):-call(test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_188694).


test('?- test_lex_info("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_189036)),nondet]):-call(test_lex_info("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_189036).


test('?- test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_188682)),nondet]):-call(test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_188682).


test('?- test_lex_info("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_188550)),nondet]):-call(test_lex_info("Alexander Rozhenko is Worf's son",[descriptionTest]),_188550).


test('?- test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_188832)),nondet]):-call(test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_188832).


test('?- test_lex_info("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_188748)),nondet]):-call(test_lex_info("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_188748).


test('?- test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_188694)),nondet]):-call(test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest]),_188694).


test('?- test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_189096)),nondet]):-call(test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_189096).


test('?- test_lex_info("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_188574)),nondet]):-call(test_lex_info("A large phaser rifle is lying here",[descriptionTest]),_188574).


test('?- test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_189168)),nondet]):-call(test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_189168).


test('?- test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_188772)),nondet]):-call(test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_188772).


test('?- test_lex_info("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189120)),nondet]):-call(test_lex_info("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189120).


test('?- test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_188772)),nondet]):-call(test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_188772).


test('?- test_lex_info("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189144)),nondet]):-call(test_lex_info("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189144).


test('?- test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_188748)),nondet]):-call(test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_188748).


test('?- test_lex_info("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189120)),nondet]):-call(test_lex_info("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189120).


test('?- test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_188670)),nondet]):-call(test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest]),_188670).


test('?- test_lex_info("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_189210)),nondet]):-call(test_lex_info("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_189210).


test('?- test_lex_info("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_188640)),nondet]):-call(test_lex_info("A Starfleet communication badge is lying here",[descriptionTest]),_188640).


test('?- test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_189678)),nondet]):-call(test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_189678).


test('?- test_lex_info("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_188634)),nondet]):-call(test_lex_info("Worf's silver chain sash has been left here",[descriptionTest]),_188634).


test('?- test_lex_info("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_189246)),nondet]):-call(test_lex_info("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_189246).


test('?- test_lex_info("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_188526)),nondet]):-call(test_lex_info("Geordi's VISOR is lying here",[descriptionTest]),_188526).


test('?- test_lex_info("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_189918)),nondet]):-call(test_lex_info("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_189918).


test('?- test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_188694)),nondet]):-call(test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_188694).


test('?- test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_189480)),nondet]):-call(test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_189480).


test('?- test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_188628)),nondet]):-call(test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest]),_188628).


test('?- test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_189282)),nondet]):-call(test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_189282).


test('?- test_lex_info("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_188640)),nondet]):-call(test_lex_info("Captain Picard's wooden flute is sitting here",[descriptionTest]),_188640).


test('?- test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_189252)),nondet]):-call(test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_189252).


test('?- test_lex_info("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_188652)),nondet]):-call(test_lex_info("Commander Riker's trombone has been placed here",[descriptionTest]),_188652).


test('?- test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_189084)),nondet]):-call(test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_189084).


test('?- test_lex_info("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_188580)),nondet]):-call(test_lex_info("A small cup of tea is sitting here",[descriptionTest]),_188580).


test('?- test_lex_info("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_188598)),nondet]):-call(test_lex_info("A bottle of synthehol is standing here",[descriptionTest]),_188598).


test('?- test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_188610)),nondet]):-call(test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest]),_188610).


test('?- test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_188634)),nondet]):-call(test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_188634).


test('?- test_lex_info("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_188646)),nondet]):-call(test_lex_info("A small glass of prune juice is sitting here",[descriptionTest]),_188646).


test('?- test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_188616)),nondet]):-call(test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest]),_188616).


test('?- test_lex_info("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_188688)),nondet]):-call(test_lex_info("You find yourself in the middle of main engineering",[descriptionTest]),_188688).


test('?- test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_188808)),nondet]):-call(test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_188808).


test('?- test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_189108)),nondet]):-call(test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_189108).


test('?- test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_188916)),nondet]):-call(test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_188916).


test('?- test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_188844)),nondet]):-call(test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_188844).


test('?- test_lex_info("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_189024)),nondet]):-call(test_lex_info("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_189024).


test('?- test_lex_info("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_188616)),nondet]):-call(test_lex_info("You're in the middle of Geordi's quarters",[descriptionTest]),_188616).


test('?- test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_188814)),nondet]):-call(test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_188814).


test('?- test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_189138)),nondet]):-call(test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_189138).


test('?- test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_188748)),nondet]):-call(test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest]),_188748).


test('?- test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_188718)),nondet]):-call(test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_188718).


test('?- test_lex_info("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_188604)),nondet]):-call(test_lex_info("You're in the middle of Data's quarters",[descriptionTest]),_188604).


test('?- test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_189666)),nondet]):-call(test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_189666).


test('?- test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_188880)),nondet]):-call(test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_188880).


test('?- test_lex_info("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_188904)),nondet]):-call(test_lex_info("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_188904).


test('?- test_lex_info("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_188532)),nondet]):-call(test_lex_info("You're in the dimly lit Brig",[descriptionTest]),_188532).


test('?- test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_188922)),nondet]):-call(test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_188922).


test('?- test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_189000)),nondet]):-call(test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_189000).


test('?- test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_189294)),nondet]):-call(test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_189294).


test('?- test_lex_info(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_195522)),nondet]):-call(test_lex_info('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_195522).


test('?- test_lex_info("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_189006)),nondet]):-call(test_lex_info("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_189006).


test('?- test_lex_info("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_188610)),nondet]):-call(test_lex_info("You're in the Enterprise transporter room",[descriptionTest]),_188610).


test('?- test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_189096)),nondet]):-call(test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_189096).


test('?- test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_189066)),nondet]):-call(test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_189066).


test('?- test_lex_info("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_188604)),nondet]):-call(test_lex_info("You find yourself in a transporter beam",[descriptionTest]),_188604).


test('?- test_lex_info("All you can see is blue flashing light",[descriptionTest])',[true(compound(_188604)),nondet]):-call(test_lex_info("All you can see is blue flashing light",[descriptionTest]),_188604).


test('?- test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_188760)),nondet]):-call(test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest]),_188760).


test('?- test_lex_info("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_188880)),nondet]):-call(test_lex_info("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_188880).


test('?- test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_188808)),nondet]):-call(test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest]),_188808).


test('?- test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_189186)),nondet]):-call(test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_189186).


test('?- test_lex_info("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_188940)),nondet]):-call(test_lex_info("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_188940).


test('?- test_lex_info("You\'re in the turbolift",[descriptionTest])',[true(compound(_188490)),nondet]):-call(test_lex_info("You're in the turbolift",[descriptionTest]),_188490).


test('?- test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_188868)),nondet]):-call(test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_188868).


test('?- test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_188760)),nondet]):-call(test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest]),_188760).


test('?- test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_188748)),nondet]):-call(test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest]),_188748).


test('?- test_lex_info("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_188502)),nondet]):-call(test_lex_info("You're now on Holodeck 2",[descriptionTest]),_188502).


test('?- test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_189186)),nondet]):-call(test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_189186).


test('?- test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_188934)),nondet]):-call(test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_188934).


test('?- test_lex_info("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_188628)),nondet]):-call(test_lex_info("Right now, this holodeck is not functioning",[descriptionTest]),_188628).


test('?- test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_188736)),nondet]):-call(test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_188736).


test('?- test_lex_info("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_188658)),nondet]):-call(test_lex_info("You're in the main cargo bay of the Enterprise",[descriptionTest]),_188658).


test('?- test_lex_info("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_188868)),nondet]):-call(test_lex_info("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_188868).


test('?- test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_189186)),nondet]):-call(test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_189186).


test('?- test_lex_info("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_188562)),nondet]):-call(test_lex_info("You've arrived in Riker's quarters",[descriptionTest]),_188562).


test('?- test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_189138)),nondet]):-call(test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_189138).


test('?- test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_189072)),nondet]):-call(test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_189072).


test('?- test_lex_info("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_188676)),nondet]):-call(test_lex_info("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_188676).


test('?- test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_189312)),nondet]):-call(test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_189312).


test('?- test_lex_info("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_189108)),nondet]):-call(test_lex_info("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_189108).


test('?- test_lex_info("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_188580)),nondet]):-call(test_lex_info("You emerge into a dark narrow alley",[descriptionTest]),_188580).


test('?- test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_188724)),nondet]):-call(test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest]),_188724).


test('?- test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_188988)),nondet]):-call(test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_188988).


test('?- test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_189024)),nondet]):-call(test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_189024).


test('?- test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_188760)),nondet]):-call(test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_188760).


test('?- test_lex_info("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_188664)),nondet]):-call(test_lex_info("The archway leading out of the holodeck is west",[descriptionTest]),_188664).


test('?- test_lex_info("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_188568)),nondet]):-call(test_lex_info("You're in Doctor Crusher's quarters",[descriptionTest]),_188568).


test('?- test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_188964)),nondet]):-call(test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_188964).


test('?- test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_189054)),nondet]):-call(test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_189054).


test('?- test_lex_info("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_188796)),nondet]):-call(test_lex_info("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_188796).


test('?- test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_189420)),nondet]):-call(test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_189420).


test('?- test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_188892)),nondet]):-call(test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_188892).


test('?- test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_189288)),nondet]):-call(test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_189288).


test('?- test_lex_info("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_188760)),nondet]):-call(test_lex_info("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_188760).


test('?- test_lex_info("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_188688)),nondet]):-call(test_lex_info("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_188688).


test('?- test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_189582)),nondet]):-call(test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_189582).


test('?- test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_188760)),nondet]):-call(test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_188760).


test('?- test_lex_info("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_188670)),nondet]):-call(test_lex_info("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_188670).


test('?- test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_188862)),nondet]):-call(test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_188862).


test('?- test_lex_info("A large grey door leads into space",[descriptionTest])',[true(compound(_188574)),nondet]):-call(test_lex_info("A large grey door leads into space",[descriptionTest]),_188574).


test('?- test_lex_info("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_188760)),nondet]):-call(test_lex_info("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_188760).


test('?- test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_188832)),nondet]):-call(test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest]),_188832).


test('?- test_lex_info("You feel very cold",[descriptionTest])',[true(compound(_188460)),nondet]):-call(test_lex_info("You feel very cold",[descriptionTest]),_188460).


test('?- test_lex_info("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_188730)),nondet]):-call(test_lex_info("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_188730).


test('?- test_lex_info("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_188616)),nondet]):-call(test_lex_info("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_188616).


test('?- test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_189228)),nondet]):-call(test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_189228).


test('?- test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_188952)),nondet]):-call(test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_188952).


test('?- test_lex_info("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_188502)),nondet]):-call(test_lex_info("You're in Worf's quarters",[descriptionTest]),_188502).


test('?- test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_188946)),nondet]):-call(test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_188946).


test('?- test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_189360)),nondet]):-call(test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_189360).


test('?- test_lex_info("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_188568)),nondet]):-call(test_lex_info("You emerge into the Enterprise gym",[descriptionTest]),_188568).


test('?- test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_188670)),nondet]):-call(test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest]),_188670).


test('?- test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_189078)),nondet]):-call(test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_189078).


test('?- test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_189042)),nondet]):-call(test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_189042).


test('?- test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_188730)),nondet]):-call(test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_188730).


test('?- test_lex_info("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_188796)),nondet]):-call(test_lex_info("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_188796).


test('?- test_lex_info("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_188886)),nondet]):-call(test_lex_info("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_188886).


test('?- test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_189180)),nondet]):-call(test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_189180).


test('?- test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_189198)),nondet]):-call(test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_189198).


test('?- test_lex_info("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_188652)),nondet]):-call(test_lex_info("Two large windows offer a great view of space",[descriptionTest]),_188652).


test('?- test_lex_info("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_188904)),nondet]):-call(test_lex_info("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_188904).


test('?- test_lex_info("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_188580)),nondet]):-call(test_lex_info("You're in the Enterprise science lab",[descriptionTest]),_188580).


test('?- test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_188970)),nondet]):-call(test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_188970).


test('?- test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_189468)),nondet]):-call(test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_189468).


test('?- test_lex_info("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_188724)),nondet]):-call(test_lex_info("A complex looking computer console is facing this machine",[descriptionTest]),_188724).


test('?- test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_188880)),nondet]):-call(test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_188880).


test('?- test_lex_info("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_188640)),nondet]):-call(test_lex_info("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_188640).


test('?- test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_188874)),nondet]):-call(test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_188874).


test('?- test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_189246)),nondet]):-call(test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_189246).


test('?- test_lex_info("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_189048)),nondet]):-call(test_lex_info("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_189048).


test('?- test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_189444)),nondet]):-call(test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_189444).


test('?- test_lex_info("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_188646)),nondet]):-call(test_lex_info("You're standing in Captain Picard's ready room",[descriptionTest]),_188646).


test('?- test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_189084)),nondet]):-call(test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_189084).


test('?- test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_188988)),nondet]):-call(test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_188988).


test('?- test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_189186)),nondet]):-call(test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_189186).


test('?- test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_188766)),nondet]):-call(test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest]),_188766).


test('?- test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_188874)),nondet]):-call(test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_188874).


test('?- test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_189186)),nondet]):-call(test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_189186).


test('?- test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_188994)),nondet]):-call(test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_188994).


test('?- test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_188790)),nondet]):-call(test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_188790).


test('?- test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_189138)),nondet]):-call(test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_189138).


test('?- test_lex_info("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_188736)),nondet]):-call(test_lex_info("This is where the ship's pilot and information officer sit",[descriptionTest]),_188736).


test('?- test_lex_info("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_188658)),nondet]):-call(test_lex_info("You're in the conference room of the Enterprise",[descriptionTest]),_188658).


test('?- test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_189204)),nondet]):-call(test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_189204).


test('?- test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_188826)),nondet]):-call(test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_188826).


test('?- test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_188922)),nondet]):-call(test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_188922).


test('?- test_lex_info("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_188754)),nondet]):-call(test_lex_info("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_188754).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_111716)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_111716).


test('?- test_lex_info("no two owners eat pizza",[sanity])',[true(compound(_111708)),nondet]):-call(test_lex_info("no two owners eat pizza",[sanity]),_111708).


test('?- test_lex_info("no three owners eat pizza",[sanity])',[true(compound(_111708)),nondet]):-call(test_lex_info("no three owners eat pizza",[sanity]),_111708).


test('?- test_lex_info("no three owners eat the same pizza",[sanity])',[true(compound(_111710)),nondet]):-call(test_lex_info("no three owners eat the same pizza",[sanity]),_111710).


test('?- test_lex_info("no three owners eat the same kind of pizza",[sanity])',[true(compound(_111712)),nondet]):-call(test_lex_info("no three owners eat the same kind of pizza",[sanity]),_111712).


test('?- test_lex_info("no owners eat the same pizza",[sanity])',[true(compound(_111708)),nondet]):-call(test_lex_info("no owners eat the same pizza",[sanity]),_111708).


test('?- test_lex_info("no owners eat the same kind of pizza",[sanity])',[true(compound(_111710)),nondet]):-call(test_lex_info("no owners eat the same kind of pizza",[sanity]),_111710).


test('?- test_lex_info("there are 5 houses",[sanity])',[true(compound(_111706)),nondet]):-call(test_lex_info("there are 5 houses",[sanity]),_111706).


test('?- test_lex_info("there are not 5 houses",[sanity])',[true(compound(_111706)),nondet]):-call(test_lex_info("there are not 5 houses",[sanity]),_111706).


test('?- test_lex_info("there are not zero houses",[sanity])',[true(compound(_111708)),nondet]):-call(test_lex_info("there are not zero houses",[sanity]),_111708).


test('?- test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_111716)),nondet]):-call(test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug]),_111716).


test('?- test_lex_info(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_111710)),nondet]):-call(test_lex_info(noun_phrase("at most the 5 owners"),[sanity]),_111710).


test('?- test_lex_info(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_111710)),nondet]):-call(test_lex_info(noun_phrase("at most 5 owners"),[sanity]),_111710).


test('?- test_lex_info(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_111710)),nondet]):-call(test_lex_info(noun_phrase("less than 3 owners"),[sanity]),_111710).


test('?- test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_111712)),nondet]):-call(test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity]),_111712).


test('?- test_lex_info(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_111716)),nondet]):-call(test_lex_info(noun_phrase("no three owners"),[sanity,no_working]),_111716).


test('?- test_lex_info("terry writes a non-program.",[tell])',[true(compound(_111708)),nondet]):-call(test_lex_info("terry writes a non-program.",[tell]),_111708).


test('?- test_lex_info("every nonhuman programmer writes a program.",[tell])',[true(compound(_111712)),nondet]):-call(test_lex_info("every nonhuman programmer writes a program.",[tell]),_111712).


test('?- test_lex_info("every human programmer writes a not a program.",[tell])',[true(compound(_111712)),nondet]):-call(test_lex_info("every human programmer writes a not a program.",[tell]),_111712).


test('?- test_lex_info("every human programmer happily writes a not a program.",[tell])',[true(compound(_111714)),nondet]):-call(test_lex_info("every human programmer happily writes a not a program.",[tell]),_111714).


:- end_tests(test_lex_info).



:- begin_tests(chat80).



test('?- chat80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_111756)),nondet]):-call(chat80("His friends are liked by hers.",[bad_juju,sanity]),_111756).


test('?- chat80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_111758)),nondet]):-call(chat80("Her friends are not liked by his.",[bad_juju,sanity]),_111758).


test('?- chat80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_111758)),nondet]):-call(chat80("Do their friends like each other?",[bad_juju,feature]),_111758).


test('?- chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_111700),sanity])',[true(compound(_111762)),nondet]):-call(chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_111700),sanity]),_111762).


test('?- chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_111698),sanity])',[true(compound(_111760)),nondet]):-call(chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_111698),sanity]),_111760).


test('?- chat80("There are 5 houses with five different colors.",[riddle(_111702),sanity])',[true(compound(_111764)),nondet]):-call(chat80("There are 5 houses with five different colors.",[riddle(_111702),sanity]),_111764).


test('?- chat80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_111754)),nondet]):-call(chat80("There are 5 houses",[riddle_prep,sanity]),_111754).


test('?- chat80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_111758)),nondet]):-call(chat80("Each house has a different color",[riddle_prep,sanity]),_111758).


test('?- chat80("In each house lives a person with a different nationality.",[riddle(_111706),sanity])',[true(compound(_111768)),nondet]):-call(chat80("In each house lives a person with a different nationality.",[riddle(_111706),sanity]),_111768).


test('?- chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_111780)),nondet]):-call(chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_111780).


test('?- chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_111768)),nondet]):-call(chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_111768).


test('?- chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_111766)),nondet]):-call(chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_111766).


test('?- chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_111770)),nondet]):-call(chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_111770).


test('?- chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_111774)),nondet]):-call(chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_111774).


test('?- chat80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_111766)),nondet]):-call(chat80("No owners have the same pet.",[riddle(1),sanity,regression]),_111766).


test('?- chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_111770)),nondet]):-call(chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_111770).


test('?- chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_111764)),nondet]):-call(chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_111764).


test('?- chat80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_111768)),nondet]):-call(chat80("No two owners have the same pet.",[riddle(1),sanity,regression]),_111768).


test('?- chat80("The brit lives in the red house.",[riddle(_111700),sanity])',[true(compound(_111762)),nondet]):-call(chat80("The brit lives in the red house.",[riddle(_111700),sanity]),_111762).


test('?- chat80("The swede keeps dogs as pets.",[riddle(_111698),sanity])',[true(compound(_111760)),nondet]):-call(chat80("The swede keeps dogs as pets.",[riddle(_111698),sanity]),_111760).


test('?- chat80("A dane drinks tea.",[riddle(_111696),sanity])',[true(compound(_111758)),nondet]):-call(chat80("A dane drinks tea.",[riddle(_111696),sanity]),_111758).


test('?- chat80("The green house is on the left of the white house.",[riddle(_111704),sanity])',[true(compound(_111766)),nondet]):-call(chat80("The green house is on the left of the white house.",[riddle(_111704),sanity]),_111766).


test('?- chat80("The green house\'s owner drinks coffee.",[riddle(_111700),sanity])',[true(compound(_111762)),nondet]):-call(chat80("The green house's owner drinks coffee.",[riddle(_111700),sanity]),_111762).


test('?- chat80("The person who smokes Pall Mall rears birds.",[riddle(_111702),sanity,regression])',[true(compound(_111770)),nondet]):-call(chat80("The person who smokes Pall Mall rears birds.",[riddle(_111702),sanity,regression]),_111770).


test('?- chat80("The owner of the yellow house smokes Dunhill.",[riddle(_111702),sanity])',[true(compound(_111764)),nondet]):-call(chat80("The owner of the yellow house smokes Dunhill.",[riddle(_111702),sanity]),_111764).


test('?- chat80("The man living in the center house drinks milk.",[riddle(_111704),sanity])',[true(compound(_111766)),nondet]):-call(chat80("The man living in the center house drinks milk.",[riddle(_111704),sanity]),_111766).


test('?- chat80("The Norwegian lives in the first house .",[riddle(_111702),sanity])',[true(compound(_111764)),nondet]):-call(chat80("The Norwegian lives in the first house .",[riddle(_111702),sanity]),_111764).


test('?- chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_111708),sanity])',[true(compound(_111770)),nondet]):-call(chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_111708),sanity]),_111770).


test('?- chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_111708),sanity])',[true(compound(_111770)),nondet]):-call(chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_111708),sanity]),_111770).


test('?- chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_111702),sanity])',[true(compound(_111764)),nondet]):-call(chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_111702),sanity]),_111764).


test('?- chat80("The German smokes Prince.",[riddle(_111698),sanity])',[true(compound(_111760)),nondet]):-call(chat80("The German smokes Prince.",[riddle(_111698),sanity]),_111760).


test('?- chat80("The Norwegian lives next to the blue house.",[riddle(_111702),sanity])',[true(compound(_111764)),nondet]):-call(chat80("The Norwegian lives next to the blue house.",[riddle(_111702),sanity]),_111764).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_111706),sanity])',[true(compound(_111768)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_111706),sanity]),_111768).


test('?- chat80("Who owns the fish?",[riddle(_111696),sanity])',[true(compound(_111758)),nondet]):-call(chat80("Who owns the fish?",[riddle(_111696),sanity]),_111758).


test('?- chat80("One woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("One woman paints.",[quants]),_111748).


test('?- chat80("No woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("No woman paints.",[quants]),_111748).


test('?- chat80("Some woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Some woman paints.",[quants]),_111748).


test('?- chat80("Every woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Every woman paints.",[quants]),_111748).


test('?- chat80("Each woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Each woman paints.",[quants]),_111748).


test('?- chat80("Any woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Any woman paints.",[quants]),_111748).


test('?- chat80("The woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("The woman paints.",[quants]),_111748).


test('?- chat80("The not woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("The not woman paints.",[quants]),_111748).


test('?- chat80("Not a woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Not a woman paints.",[quants]),_111748).


test('?- chat80("Not one woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Not one woman paints.",[quants]),_111748).


test('?- chat80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_111748)),nondet]):-call(chat80("Not no woman paints.",[quants_neg_postcond]),_111748).


test('?- chat80("Not some woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Not some woman paints.",[quants]),_111748).


test('?- chat80("Not every woman paints.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("Not every woman paints.",[quants]),_111750).


test('?- chat80("Not each woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Not each woman paints.",[quants]),_111748).


test('?- chat80("Not any woman paints.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Not any woman paints.",[quants]),_111748).


test('?- chat80("The women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("The women paint.",[quants]),_111748).


test('?- chat80("Women paint.",[quants])',[true(compound(_111746)),nondet]):-call(chat80("Women paint.",[quants]),_111746).


test('?- chat80("Some women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Some women paint.",[quants]),_111748).


test('?- chat80("No women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("No women paint.",[quants]),_111748).


test('?- chat80("All women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("All women paint.",[quants]),_111748).


test('?- chat80("Any women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Any women paint.",[quants]),_111748).


test('?- chat80("Not women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Not women paint.",[quants]),_111748).


test('?- chat80("Not no women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Not no women paint.",[quants]),_111748).


test('?- chat80("Not all women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Not all women paint.",[quants]),_111748).


test('?- chat80("Not any women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Not any women paint.",[quants]),_111748).


test('?- chat80("The three women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("The three women paint.",[quants]),_111748).


test('?- chat80("Three women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Three women paint.",[quants]),_111748).


test('?- chat80("Some three women paint.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("Some three women paint.",[quants]),_111750).


test('?- chat80("No three women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("No three women paint.",[quants]),_111748).


test('?- chat80("Every three women paint.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("Every three women paint.",[quants]),_111750).


test('?- chat80("All three women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("All three women paint.",[quants]),_111748).


test('?- chat80("Any three women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Any three women paint.",[quants]),_111748).


test('?- chat80("Not three women paint.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("Not three women paint.",[quants]),_111748).


test('?- chat80("Not some three women paint.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("Not some three women paint.",[quants]),_111750).


test('?- chat80("Not no three women paint.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("Not no three women paint.",[quants]),_111750).


test('?- chat80("Not all three women paint.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("Not all three women paint.",[quants]),_111750).


test('?- chat80("Not every three women paint.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("Not every three women paint.",[quants]),_111750).


test('?- chat80("Not any three women paint.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("Not any three women paint.",[quants]),_111750).


test('?- chat80("Not three of the women paint.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("Not three of the women paint.",[quants]),_111750).


test('?- chat80("Not some of the three women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("Not some of the three women paint.",[quants]),_111752).


test('?- chat80("Not no three of the women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("Not no three of the women paint.",[quants]),_111752).


test('?- chat80("Not all three of the women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("Not all three of the women paint.",[quants]),_111752).


test('?- chat80("Not every three of the women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("Not every three of the women paint.",[quants]),_111752).


test('?- chat80("Not any three of the women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("Not any three of the women paint.",[quants]),_111752).


test('?- chat80("Not three of the four women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("Not three of the four women paint.",[quants]),_111752).


test('?- chat80("Not none of three out of the four women paint.",[quants])',[true(compound(_111754)),nondet]):-call(chat80("Not none of three out of the four women paint.",[quants]),_111754).


test('?- chat80("Not all three of the four women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("Not all three of the four women paint.",[quants]),_111752).


test('?- chat80("Not any three of the four women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("Not any three of the four women paint.",[quants]),_111752).


test('?- chat80("Three of the four women paint.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("Three of the four women paint.",[quants]),_111750).


test('?- chat80("Three out of the four women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("Three out of the four women paint.",[quants]),_111752).


test('?- chat80("All three of the four women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("All three of the four women paint.",[quants]),_111752).


test('?- chat80("Any three of the four women paint.",[quants])',[true(compound(_111752)),nondet]):-call(chat80("Any three of the four women paint.",[quants]),_111752).


test('?- chat80("I paint",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("I paint",[pronoun]),_111746).


test('?- chat80("you paint",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("you paint",[pronoun]),_111746).


test('?- chat80("We paint",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("We paint",[pronoun]),_111746).


test('?- chat80("None paint",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("None paint",[pronoun]),_111746).


test('?- chat80("They paint",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("They paint",[pronoun]),_111746).


test('?- chat80("Some paint",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("Some paint",[pronoun]),_111746).


test('?- chat80("It paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("It paints",[pronoun]),_111746).


test('?- chat80("he paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("he paints",[pronoun]),_111746).


test('?- chat80("She paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("She paints",[pronoun]),_111746).


test('?- chat80("Someone paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("Someone paints",[pronoun]),_111746).


test('?- chat80("Anybody paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("Anybody paints",[pronoun]),_111746).


test('?- chat80("Anyone paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("Anyone paints",[pronoun]),_111746).


test('?- chat80("Anything paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Anything paints",[pronoun]),_111748).


test('?- chat80("Everybody paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Everybody paints",[pronoun]),_111748).


test('?- chat80("Everyone paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Everyone paints",[pronoun]),_111748).


test('?- chat80("Everything paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Everything paints",[pronoun]),_111748).


test('?- chat80("Nobody paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("Nobody paints",[pronoun]),_111746).


test('?- chat80("No one paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("No one paints",[pronoun]),_111746).


test('?- chat80("Nothing paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("Nothing paints",[pronoun]),_111746).


test('?- chat80("One paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("One paints",[pronoun]),_111746).


test('?- chat80("Somebody paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Somebody paints",[pronoun]),_111748).


test('?- chat80("Something paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Something paints",[pronoun]),_111748).


test('?- chat80("Not anybody paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Not anybody paints",[pronoun]),_111748).


test('?- chat80("Not anyone paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Not anyone paints",[pronoun]),_111748).


test('?- chat80("Not anything paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Not anything paints",[pronoun]),_111748).


test('?- chat80("Not everybody paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Not everybody paints",[pronoun]),_111748).


test('?- chat80("Not everyone paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Not everyone paints",[pronoun]),_111748).


test('?- chat80("Not everything paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Not everything paints",[pronoun]),_111748).


test('?- chat80("Not nothing paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Not nothing paints",[pronoun]),_111748).


test('?- chat80("Not one paints",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("Not one paints",[pronoun]),_111746).


test('?- chat80("Not somebody paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Not somebody paints",[pronoun]),_111748).


test('?- chat80("Not something paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("Not something paints",[pronoun]),_111748).


test('?- chat80("She likes i",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("She likes i",[pronoun]),_111746).


test('?- chat80("She likes me",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("She likes me",[pronoun]),_111746).


test('?- chat80("She likes you",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("She likes you",[pronoun]),_111746).


test('?- chat80("She likes it",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("She likes it",[pronoun]),_111746).


test('?- chat80("She likes us",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("She likes us",[pronoun]),_111746).


test('?- chat80("She likes them",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("She likes them",[pronoun]),_111746).


test('?- chat80("She likes no one",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("She likes no one",[pronoun]),_111748).


test('?- chat80("She likes none",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("She likes none",[pronoun]),_111746).


test('?- chat80("She likes him",[pronoun])',[true(compound(_111746)),nondet]):-call(chat80("She likes him",[pronoun]),_111746).


test('?- chat80("She likes herself",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("She likes herself",[pronoun]),_111748).


test('?- chat80("She likes himself",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("She likes himself",[pronoun]),_111748).


test('?- chat80("It is us that paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("It is us that paints",[pronoun]),_111748).


test('?- chat80("It is them that paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("It is them that paints",[pronoun]),_111748).


test('?- chat80("It is he that paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("It is he that paints",[pronoun]),_111748).


test('?- chat80("It is she that paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("It is she that paints",[pronoun]),_111748).


test('?- chat80("It is her that paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("It is her that paints",[pronoun]),_111748).


test('?- chat80("It is him that paints",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("It is him that paints",[pronoun]),_111748).


test('?- chat80("We are us that paint",[pronoun])',[true(compound(_111748)),nondet]):-call(chat80("We are us that paint",[pronoun]),_111748).


test('?- chat80("We are all of us that paint",[pronoun])',[true(compound(_111750)),nondet]):-call(chat80("We are all of us that paint",[pronoun]),_111750).


test('?- chat80("It is everybody that paints",[pronoun])',[true(compound(_111750)),nondet]):-call(chat80("It is everybody that paints",[pronoun]),_111750).


test('?- chat80("Every man that paints likes monet.",[bratko])',[true(compound(_111752)),nondet]):-call(chat80("Every man that paints likes monet.",[bratko]),_111752).


test('?- chat80("A woman that admires John paints.",[bratko])',[true(compound(_111752)),nondet]):-call(chat80("A woman that admires John paints.",[bratko]),_111752).


test('?- chat80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_111758)),nondet]):-call(chat80("Every woman that likes a man that admires monet paints.",[bratko]),_111758).


test('?- chat80("John likes Annie.",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("John likes Annie.",[bratko]),_111748).


test('?- chat80("Annie likes a man that admires monet.",[bratko])',[true(compound(_111752)),nondet]):-call(chat80("Annie likes a man that admires monet.",[bratko]),_111752).


test('?- chat80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_111752)),nondet]):-call(chat80("Bertrand Russell wrote principia.",[bratko]),_111752).


test('?- chat80("An author wrote principia.",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("An author wrote principia.",[bratko]),_111750).


test('?- chat80("Iraq is a country.",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("Iraq is a country.",[bratko]),_111748).


test('?- chat80("A happy author wrote principia.",[bratko])',[true(compound(_111752)),nondet]):-call(chat80("A happy author wrote principia.",[bratko]),_111752).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_111748).


test('?- chat80("Bertrand is an author.",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("Bertrand is an author.",[bratko]),_111748).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_111748).


test('?- chat80("Every author is a programmer.",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("Every author is a programmer.",[bratko]),_111750).


test('?- chat80("Is Bertrand an programmer?",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("Is Bertrand an programmer?",[bratko]),_111750).


test('?- chat80("What is a author?",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("What is a author?",[bratko]),_111748).


test('?- chat80("What did Bertrand write?",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("What did Bertrand write?",[bratko]),_111750).


test('?- chat80("What is a book?",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("What is a book?",[bratko]),_111748).


test('?- chat80("Principia is a book.",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("Principia is a book.",[bratko]),_111748).


test('?- chat80("Bertrand is Bertrand.",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("Bertrand is Bertrand.",[bratko]),_111748).


test('?- chat80("Shrdlu halts.",[bratko])',[true(compound(_111746)),nondet]):-call(chat80("Shrdlu halts.",[bratko]),_111746).


test('?- chat80("Every student wrote a program.",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("Every student wrote a program.",[bratko]),_111750).


test('?- chat80("Terry writes a program.",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("Terry writes a program.",[bratko]),_111750).


test('?- chat80("Terry writes a program that halts.",[bratko])',[true(compound(_111752)),nondet]):-call(chat80("Terry writes a program that halts.",[bratko]),_111752).


test('?- chat80("An author of every book wrote a program.",[bratko])',[true(compound(_111754)),nondet]):-call(chat80("An author of every book wrote a program.",[bratko]),_111754).


test('?- chat80("A man hapilly maried paints.",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("A man hapilly maried paints.",[bratko]),_111750).


test('?- chat80("A hapilly maried man paints.",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("A hapilly maried man paints.",[bratko]),_111750).


test('?- chat80("A man who knows paints.",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("A man who knows paints.",[bratko]),_111750).


test('?- chat80("A man gives something.",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("A man gives something.",[bratko]),_111748).


test('?- chat80("A man gives his word.",[bratko])',[true(compound(_111748)),nondet]):-call(chat80("A man gives his word.",[bratko]),_111748).


test('?- chat80("A man of his word paints.",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("A man of his word paints.",[bratko]),_111750).


test('?- chat80("A man paints.",[bratko])',[true(compound(_111746)),nondet]):-call(chat80("A man paints.",[bratko]),_111746).


test('?- chat80("A man that paints paints.",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("A man that paints paints.",[bratko]),_111750).


test('?- chat80("A man walks.",[bratko])',[true(compound(_111746)),nondet]):-call(chat80("A man walks.",[bratko]),_111746).


test('?- chat80("A man that walks paints.",[bratko])',[true(compound(_111750)),nondet]):-call(chat80("A man that walks paints.",[bratko]),_111750).


test('?- chat80("It halts.",[bratko])',[true(compound(_111746)),nondet]):-call(chat80("It halts.",[bratko]),_111746).


test('?- chat80("A man of his word that walks paints.",[bratko])',[true(compound(_111752)),nondet]):-call(chat80("A man of his word that walks paints.",[bratko]),_111752).


test('?- chat80("The cost of what the product is changes.",[bratko])',[true(compound(_111754)),nondet]):-call(chat80("The cost of what the product is changes.",[bratko]),_111754).


test('?- chat80("We need a virtual machine server.",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("We need a virtual machine server.",[aindy]),_111752).


test('?- chat80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_111756)),nondet]):-call(chat80("The virtual machine server should have several VMs.",[aindy]),_111756).


test('?- chat80("One VM should be the POSI VM.",[aindy])',[true(compound(_111750)),nondet]):-call(chat80("One VM should be the POSI VM.",[aindy]),_111750).


test('?- chat80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("One VM should be the FRDCSA.org VM.",[aindy]),_111752).


test('?- chat80("One VM should be the mail server.",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("One VM should be the mail server.",[aindy]),_111752).


test('?- chat80("One computer should be the backup server.",[aindy])',[true(compound(_111754)),nondet]):-call(chat80("One computer should be the backup server.",[aindy]),_111754).


test('?- chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_111770)),nondet]):-call(chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_111770).


test('?- chat80("I need a fast computer for work.",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("I need a fast computer for work.",[aindy]),_111752).


test('?- chat80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_111762)),nondet]):-call(chat80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_111762).


test('?- chat80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_111758)),nondet]):-call(chat80("I need a dedicated computer for network security research.",[aindy]),_111758).


test('?- chat80("I need a machine to run Tails on.",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("I need a machine to run Tails on.",[aindy]),_111752).


test('?- chat80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_111756)),nondet]):-call(chat80("I need a machine off the network for airgap security.",[aindy]),_111756).


test('?- chat80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_111762)),nondet]):-call(chat80("One VM should be the game server for running game development projects.",[aindy]),_111762).


test('?- chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_111756)),nondet]):-call(chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_111756).


test('?- chat80("I could read about how to build a private watson.",[aindy])',[true(compound(_111756)),nondet]):-call(chat80("I could read about how to build a private watson.",[aindy]),_111756).


test('?- chat80("Need backups.",[aindy])',[true(compound(_111746)),nondet]):-call(chat80("Need backups.",[aindy]),_111746).


test('?- chat80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_111760)),nondet]):-call(chat80("Practice setting up backups of a machine to a different machine.",[aindy]),_111760).


test('?- chat80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_111758)),nondet]):-call(chat80("Set up schedules for updating the software on all machines.",[aindy]),_111758).


test('?- chat80("Read books on server room layout.",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("Read books on server room layout.",[aindy]),_111752).


test('?- chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_111760)),nondet]):-call(chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_111760).


test('?- chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_111762)),nondet]):-call(chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_111762).


test('?- chat80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("I want a gaming computer.  Do I?",[aindy]),_111752).


test('?- chat80("I want a windows 7 computer for work.",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("I want a windows 7 computer for work.",[aindy]),_111752).


test('?- chat80("I want a fast linux computer for work.",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("I want a fast linux computer for work.",[aindy]),_111752).


test('?- chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_111772)),nondet]):-call(chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_111772).


test('?- chat80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_111758)),nondet]):-call(chat80("I could install a fresh operating system on justin for work.",[aindy]),_111758).


test('?- chat80("I probably want a separate git computer.",[aindy])',[true(compound(_111754)),nondet]):-call(chat80("I probably want a separate git computer.",[aindy]),_111754).


test('?- chat80("I need to start buying servers.",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("I need to start buying servers.",[aindy]),_111752).


test('?- chat80("I want a rackmount case for servers.",[aindy])',[true(compound(_111752)),nondet]):-call(chat80("I want a rackmount case for servers.",[aindy]),_111752).


test('?- chat80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_111758)),nondet]):-call(chat80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_111758).


test('?- chat80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_111756)),nondet]):-call(chat80("2 oceans border each african country.",[chat80(tell)]),_111756).


test('?- chat80("There are 10 large cars.",[quants])',[true(compound(_111750)),nondet]):-call(chat80("There are 10 large cars.",[quants]),_111750).


test('?- chat80("There are 10 oceans.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("There are 10 oceans.",[quants]),_111748).


test('?- chat80("There are 10 women.",[quants])',[true(compound(_111748)),nondet]):-call(chat80("There are 10 women.",[quants]),_111748).


test('?- chat80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_111756)),nondet]):-call(chat80("An ocean borders an African country.",[chat80(tell)]),_111756).


test('?- chat80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_111764)),nondet]):-call(chat80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_111764).


test('?- chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_111766)),nondet]):-call(chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_111766).


test('?- chat80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_111752)),nondet]):-call(chat80("Bertrand wrote a book.",[bratko(book)]),_111752).


test('?- chat80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_111754)),nondet]):-call(chat80("Bertrand wrote nothing.",[bratko(book)]),_111754).


test('?- chat80("Bertrand wrote.",[bratko(book)])',[true(compound(_111752)),nondet]):-call(chat80("Bertrand wrote.",[bratko(book)]),_111752).


test('?- chat80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_111756)),nondet]):-call(chat80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_111756).


test('?- chat80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_111754)),nondet]):-call(chat80("Bertrand wrote about Gottlob.",[bratko(book)]),_111754).


test('?- chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_111756)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_111756).


test('?- chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_111758)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_111758).


test('?- chat80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_111756)),nondet]):-call(chat80("What did alfred write to Bertrand?",[bratko(book)]),_111756).


test('?- chat80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_111752)),nondet]):-call(chat80("Alfred wrote a letter.",[bratko(book)]),_111752).


test('?- chat80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_111756)),nondet]):-call(chat80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_111756).


test('?- chat80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_111756)),nondet]):-call(chat80("Alfred wrote something to Bertrand.",[bratko(book)]),_111756).


test('?- chat80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_111754)),nondet]):-call(chat80("Alfred wrote to Bertrand.",[bratko(book)]),_111754).


test('?- chat80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_111756)),nondet]):-call(chat80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_111756).


test('?- chat80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_111756)),nondet]):-call(chat80("Alfred wrote Bertrand a letter.",[bratko(book)]),_111756).


test('?- chat80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_111756)),nondet]):-call(chat80("Who did alfred write a letter to?",[bratko(book)]),_111756).


test('?- chat80("Alfred gave it.",[bratko(book)])',[true(compound(_111752)),nondet]):-call(chat80("Alfred gave it.",[bratko(book)]),_111752).


test('?- chat80("Alfred gave a book.",[bratko(book)])',[true(compound(_111752)),nondet]):-call(chat80("Alfred gave a book.",[bratko(book)]),_111752).


test('?- chat80("a pride of lions paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a pride of lions paint",[of]),_111748).


test('?- chat80("a flock of birds paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a flock of birds paint",[of]),_111748).


test('?- chat80("a litter of pups paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a litter of pups paint",[of]),_111748).


test('?- chat80("a prickle of porcupines paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a prickle of porcupines paint",[of]),_111750).


test('?- chat80("a litter of cubs paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a litter of cubs paint",[of]),_111748).


test('?- chat80("a pack of dogs paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a pack of dogs paint",[of]),_111748).


test('?- chat80("a colony of beavers paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a colony of beavers paint",[of]),_111750).


test('?- chat80("a gaggle of geese paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a gaggle of geese paint",[of]),_111750).


test('?- chat80("a family of otters paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a family of otters paint",[of]),_111750).


test('?- chat80("a huddle of walruses paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a huddle of walruses paint",[of]),_111750).


test('?- chat80("a herd of deer paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a herd of deer paint",[of]),_111748).


test('?- chat80("a culture of bacteria paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a culture of bacteria paint",[of]),_111750).


test('?- chat80("a swarm of bees paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a swarm of bees paint",[of]),_111748).


test('?- chat80("a bed of clams paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a bed of clams paint",[of]),_111748).


test('?- chat80("a school of cod paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a school of cod paint",[of]),_111748).


test('?- chat80("a herd of dinosaurs paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a herd of dinosaurs paint",[of]),_111750).


test('?- chat80("a mess of iguanas paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a mess of iguanas paint",[of]),_111750).


test('?- chat80("a mob of wombats paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a mob of wombats paint",[of]),_111748).


test('?- chat80("a pod of pelicans paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a pod of pelicans paint",[of]),_111750).


test('?- chat80("a troop of boy scouts paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a troop of boy scouts paint",[of]),_111750).


test('?- chat80("a team of athletes paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a team of athletes paint",[of]),_111750).


test('?- chat80("a panel of experts paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a panel of experts paint",[of]),_111750).


test('?- chat80("a crew of sailors paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a crew of sailors paint",[of]),_111750).


test('?- chat80("a band of robbers paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a band of robbers paint",[of]),_111750).


test('?- chat80("a troupe of performers paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a troupe of performers paint",[of]),_111750).


test('?- chat80("a crowd of onlookers paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a crowd of onlookers paint",[of]),_111750).


test('?- chat80("a curse of painters paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("a curse of painters paint",[of]),_111750).


test('?- chat80("a fleet of cars paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a fleet of cars paint",[of]),_111748).


test('?- chat80("a pair of shoes paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a pair of shoes paint",[of]),_111748).


test('?- chat80("a fleet of ships paint",[of])',[true(compound(_111748)),nondet]):-call(chat80("a fleet of ships paint",[of]),_111748).


test('?- chat80("an anthology of stories paint",[of])',[true(compound(_111750)),nondet]):-call(chat80("an anthology of stories paint",[of]),_111750).


test('?- chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_188724)),nondet]):-call(chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_188724).


test('?- chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_188694)),nondet]):-call(chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_188694).


test('?- chat80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_188832)),nondet]):-call(chat80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_188832).


test('?- chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_188676)),nondet]):-call(chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_188676).


test('?- chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_188724)),nondet]):-call(chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_188724).


test('?- chat80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_188820)),nondet]):-call(chat80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_188820).


test('?- chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_188778)),nondet]):-call(chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_188778).


test('?- chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_188970)),nondet]):-call(chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_188970).


test('?- chat80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_188742)),nondet]):-call(chat80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_188742).


test('?- chat80("Logged on player character",[descriptionTest])',[true(compound(_188550)),nondet]):-call(chat80("Logged on player character",[descriptionTest]),_188550).


test('?- chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_188808)),nondet]):-call(chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_188808).


test('?- chat80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_188754)),nondet]):-call(chat80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_188754).


test('?- chat80("Wesley is her son",[descriptionTest])',[true(compound(_188496)),nondet]):-call(chat80("Wesley is her son",[descriptionTest]),_188496).


test('?- chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_189144)),nondet]):-call(chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_189144).


test('?- chat80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_188574)),nondet]):-call(chat80("Counselor Deanna Troi is here",[descriptionTest]),_188574).


test('?- chat80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_188670)),nondet]):-call(chat80("Counselor Troi is the ship's main counselor",[descriptionTest]),_188670).


test('?- chat80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_188826)),nondet]):-call(chat80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_188826).


test('?- chat80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_188700)),nondet]):-call(chat80("Commander William Riker is here, staring at you",[descriptionTest]),_188700).


test('?- chat80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_188706)),nondet]):-call(chat80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_188706).


test('?- chat80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_188676)),nondet]):-call(chat80("He's in charge of keeping the crew in line",[descriptionTest]),_188676).


test('?- chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_188742)),nondet]):-call(chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_188742).


test('?- chat80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_188640)),nondet]):-call(chat80("Captain Picard is a very important man",[descriptionTest]),_188640).


test('?- chat80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_188742)),nondet]):-call(chat80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_188742).


test('?- chat80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_188586)),nondet]):-call(chat80("He's very smart, and very wise",[descriptionTest]),_188586).


test('?- chat80("Don\'t mess with him!",[descriptionTest])',[true(compound(_188514)),nondet]):-call(chat80("Don't mess with him!",[descriptionTest]),_188514).


test('?- chat80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_188592)),nondet]):-call(chat80("Guinan is here, tending the bar",[descriptionTest]),_188592).


test('?- chat80("Guinan is a strange being",[descriptionTest])',[true(compound(_188550)),nondet]):-call(chat80("Guinan is a strange being",[descriptionTest]),_188550).


test('?- chat80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_189258)),nondet]):-call(chat80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_189258).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_188760)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_188760).


test('?- chat80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_188760)),nondet]):-call(chat80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_188760).


test('?- chat80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_189060)),nondet]):-call(chat80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_189060).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_188754)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_188754).


test('?- chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_188778)),nondet]):-call(chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_188778).


test('?- chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_189048)),nondet]):-call(chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_189048).


test('?- chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_188970)),nondet]):-call(chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_188970).


test('?- chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_188760)),nondet]):-call(chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_188760).


test('?- chat80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_188640)),nondet]):-call(chat80("Livingston is Captain Picard's pet fish",[descriptionTest]),_188640).


test('?- chat80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_188892)),nondet]):-call(chat80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_188892).


test('?- chat80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_188742)),nondet]):-call(chat80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_188742).


test('?- chat80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_188610)),nondet]):-call(chat80("Spot is Data's orange coloured cat",[descriptionTest]),_188610).


test('?- chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_189132)),nondet]):-call(chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_189132).


test('?- chat80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_188754)),nondet]):-call(chat80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_188754).


test('?- chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_188736)),nondet]):-call(chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_188736).


test('?- chat80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_189078)),nondet]):-call(chat80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_189078).


test('?- chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_188724)),nondet]):-call(chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_188724).


test('?- chat80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_188592)),nondet]):-call(chat80("Alexander Rozhenko is Worf's son",[descriptionTest]),_188592).


test('?- chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_188874)),nondet]):-call(chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_188874).


test('?- chat80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_188790)),nondet]):-call(chat80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_188790).


test('?- chat80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_188736)),nondet]):-call(chat80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_188736).


test('?- chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_189138)),nondet]):-call(chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_189138).


test('?- chat80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_188616)),nondet]):-call(chat80("A large phaser rifle is lying here",[descriptionTest]),_188616).


test('?- chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_189210)),nondet]):-call(chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_189210).


test('?- chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_188814)),nondet]):-call(chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_188814).


test('?- chat80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189162)),nondet]):-call(chat80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189162).


test('?- chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_188814)),nondet]):-call(chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_188814).


test('?- chat80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189186)),nondet]):-call(chat80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189186).


test('?- chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_188790)),nondet]):-call(chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_188790).


test('?- chat80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189162)),nondet]):-call(chat80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189162).


test('?- chat80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_188712)),nondet]):-call(chat80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_188712).


test('?- chat80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_189252)),nondet]):-call(chat80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_189252).


test('?- chat80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_188682)),nondet]):-call(chat80("A Starfleet communication badge is lying here",[descriptionTest]),_188682).


test('?- chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_189720)),nondet]):-call(chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_189720).


test('?- chat80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_188676)),nondet]):-call(chat80("Worf's silver chain sash has been left here",[descriptionTest]),_188676).


test('?- chat80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_189288)),nondet]):-call(chat80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_189288).


test('?- chat80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_188568)),nondet]):-call(chat80("Geordi's VISOR is lying here",[descriptionTest]),_188568).


test('?- chat80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_189960)),nondet]):-call(chat80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_189960).


test('?- chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_188736)),nondet]):-call(chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_188736).


test('?- chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_189522)),nondet]):-call(chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_189522).


test('?- chat80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_188670)),nondet]):-call(chat80("A shard of dilithium crystal is lying here",[descriptionTest]),_188670).


test('?- chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_189324)),nondet]):-call(chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_189324).


test('?- chat80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_188682)),nondet]):-call(chat80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_188682).


test('?- chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_189294)),nondet]):-call(chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_189294).


test('?- chat80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_188694)),nondet]):-call(chat80("Commander Riker's trombone has been placed here",[descriptionTest]),_188694).


test('?- chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_189126)),nondet]):-call(chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_189126).


test('?- chat80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_188622)),nondet]):-call(chat80("A small cup of tea is sitting here",[descriptionTest]),_188622).


test('?- chat80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_188640)),nondet]):-call(chat80("A bottle of synthehol is standing here",[descriptionTest]),_188640).


test('?- chat80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_188652)),nondet]):-call(chat80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_188652).


test('?- chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_188676)),nondet]):-call(chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_188676).


test('?- chat80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_188688)),nondet]):-call(chat80("A small glass of prune juice is sitting here",[descriptionTest]),_188688).


test('?- chat80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_188658)),nondet]):-call(chat80("A bottle of Vulcan beer is standing here",[descriptionTest]),_188658).


test('?- chat80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_188730)),nondet]):-call(chat80("You find yourself in the middle of main engineering",[descriptionTest]),_188730).


test('?- chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_188850)),nondet]):-call(chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_188850).


test('?- chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_189150)),nondet]):-call(chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_189150).


test('?- chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_188958)),nondet]):-call(chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_188958).


test('?- chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_188886)),nondet]):-call(chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_188886).


test('?- chat80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_189066)),nondet]):-call(chat80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_189066).


test('?- chat80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_188658)),nondet]):-call(chat80("You're in the middle of Geordi's quarters",[descriptionTest]),_188658).


test('?- chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_188856)),nondet]):-call(chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_188856).


test('?- chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_189180)),nondet]):-call(chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_189180).


test('?- chat80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_188790)),nondet]):-call(chat80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_188790).


test('?- chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_188760)),nondet]):-call(chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_188760).


test('?- chat80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_188646)),nondet]):-call(chat80("You're in the middle of Data's quarters",[descriptionTest]),_188646).


test('?- chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_189708)),nondet]):-call(chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_189708).


test('?- chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_188922)),nondet]):-call(chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_188922).


test('?- chat80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_188946)),nondet]):-call(chat80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_188946).


test('?- chat80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_188574)),nondet]):-call(chat80("You're in the dimly lit Brig",[descriptionTest]),_188574).


test('?- chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_188964)),nondet]):-call(chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_188964).


test('?- chat80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_189042)),nondet]):-call(chat80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_189042).


test('?- chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_189336)),nondet]):-call(chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_189336).


test('?- chat80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_195564)),nondet]):-call(chat80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_195564).


test('?- chat80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_189048)),nondet]):-call(chat80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_189048).


test('?- chat80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_188652)),nondet]):-call(chat80("You're in the Enterprise transporter room",[descriptionTest]),_188652).


test('?- chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_189138)),nondet]):-call(chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_189138).


test('?- chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_189108)),nondet]):-call(chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_189108).


test('?- chat80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_188646)),nondet]):-call(chat80("You find yourself in a transporter beam",[descriptionTest]),_188646).


test('?- chat80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_188646)),nondet]):-call(chat80("All you can see is blue flashing light",[descriptionTest]),_188646).


test('?- chat80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_188802)),nondet]):-call(chat80("It feels as though your body is racing around at high speeds",[descriptionTest]),_188802).


test('?- chat80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_188922)),nondet]):-call(chat80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_188922).


test('?- chat80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_188850)),nondet]):-call(chat80("You step through the doors and find yourself in a large school room",[descriptionTest]),_188850).


test('?- chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_189228)),nondet]):-call(chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_189228).


test('?- chat80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_188982)),nondet]):-call(chat80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_188982).


test('?- chat80("You\'re in the turbolift",[descriptionTest])',[true(compound(_188532)),nondet]):-call(chat80("You're in the turbolift",[descriptionTest]),_188532).


test('?- chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_188910)),nondet]):-call(chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_188910).


test('?- chat80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_188802)),nondet]):-call(chat80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_188802).


test('?- chat80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_188790)),nondet]):-call(chat80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_188790).


test('?- chat80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_188544)),nondet]):-call(chat80("You're now on Holodeck 2",[descriptionTest]),_188544).


test('?- chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_189228)),nondet]):-call(chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_189228).


test('?- chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_188976)),nondet]):-call(chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_188976).


test('?- chat80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_188670)),nondet]):-call(chat80("Right now, this holodeck is not functioning",[descriptionTest]),_188670).


test('?- chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_188778)),nondet]):-call(chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_188778).


test('?- chat80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_188700)),nondet]):-call(chat80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_188700).


test('?- chat80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_188910)),nondet]):-call(chat80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_188910).


test('?- chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_189228)),nondet]):-call(chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_189228).


test('?- chat80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_188604)),nondet]):-call(chat80("You've arrived in Riker's quarters",[descriptionTest]),_188604).


test('?- chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_189180)),nondet]):-call(chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_189180).


test('?- chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_189114)),nondet]):-call(chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_189114).


test('?- chat80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_188718)),nondet]):-call(chat80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_188718).


test('?- chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_189354)),nondet]):-call(chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_189354).


test('?- chat80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_189150)),nondet]):-call(chat80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_189150).


test('?- chat80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_188622)),nondet]):-call(chat80("You emerge into a dark narrow alley",[descriptionTest]),_188622).


test('?- chat80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_188766)),nondet]):-call(chat80("Tall dark brick buildings block your way north and south",[descriptionTest]),_188766).


test('?- chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_189030)),nondet]):-call(chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_189030).


test('?- chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_189066)),nondet]):-call(chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_189066).


test('?- chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_188802)),nondet]):-call(chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_188802).


test('?- chat80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_188706)),nondet]):-call(chat80("The archway leading out of the holodeck is west",[descriptionTest]),_188706).


test('?- chat80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_188610)),nondet]):-call(chat80("You're in Doctor Crusher's quarters",[descriptionTest]),_188610).


test('?- chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_189006)),nondet]):-call(chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_189006).


test('?- chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_189096)),nondet]):-call(chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_189096).


test('?- chat80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_188838)),nondet]):-call(chat80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_188838).


test('?- chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_189462)),nondet]):-call(chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_189462).


test('?- chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_188934)),nondet]):-call(chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_188934).


test('?- chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_189330)),nondet]):-call(chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_189330).


test('?- chat80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_188802)),nondet]):-call(chat80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_188802).


test('?- chat80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_188730)),nondet]):-call(chat80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_188730).


test('?- chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_189624)),nondet]):-call(chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_189624).


test('?- chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_188802)),nondet]):-call(chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_188802).


test('?- chat80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_188712)),nondet]):-call(chat80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_188712).


test('?- chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_188904)),nondet]):-call(chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_188904).


test('?- chat80("A large grey door leads into space",[descriptionTest])',[true(compound(_188616)),nondet]):-call(chat80("A large grey door leads into space",[descriptionTest]),_188616).


test('?- chat80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_188802)),nondet]):-call(chat80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_188802).


test('?- chat80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_188874)),nondet]):-call(chat80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_188874).


test('?- chat80("You feel very cold",[descriptionTest])',[true(compound(_188502)),nondet]):-call(chat80("You feel very cold",[descriptionTest]),_188502).


test('?- chat80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_188772)),nondet]):-call(chat80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_188772).


test('?- chat80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_188658)),nondet]):-call(chat80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_188658).


test('?- chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_189270)),nondet]):-call(chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_189270).


test('?- chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_188994)),nondet]):-call(chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_188994).


test('?- chat80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_188544)),nondet]):-call(chat80("You're in Worf's quarters",[descriptionTest]),_188544).


test('?- chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_188988)),nondet]):-call(chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_188988).


test('?- chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_189402)),nondet]):-call(chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_189402).


test('?- chat80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_188610)),nondet]):-call(chat80("You emerge into the Enterprise gym",[descriptionTest]),_188610).


test('?- chat80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_188712)),nondet]):-call(chat80("The room is quite large, with a soft grey floor",[descriptionTest]),_188712).


test('?- chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_189120)),nondet]):-call(chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_189120).


test('?- chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_189084)),nondet]):-call(chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_189084).


test('?- chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_188772)),nondet]):-call(chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_188772).


test('?- chat80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_188838)),nondet]):-call(chat80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_188838).


test('?- chat80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_188928)),nondet]):-call(chat80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_188928).


test('?- chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_189222)),nondet]):-call(chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_189222).


test('?- chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_189240)),nondet]):-call(chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_189240).


test('?- chat80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_188694)),nondet]):-call(chat80("Two large windows offer a great view of space",[descriptionTest]),_188694).


test('?- chat80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_188946)),nondet]):-call(chat80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_188946).


test('?- chat80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_188622)),nondet]):-call(chat80("You're in the Enterprise science lab",[descriptionTest]),_188622).


test('?- chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_189012)),nondet]):-call(chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_189012).


test('?- chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_189510)),nondet]):-call(chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_189510).


test('?- chat80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_188766)),nondet]):-call(chat80("A complex looking computer console is facing this machine",[descriptionTest]),_188766).


test('?- chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_188922)),nondet]):-call(chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_188922).


test('?- chat80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_188682)),nondet]):-call(chat80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_188682).


test('?- chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_188916)),nondet]):-call(chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_188916).


test('?- chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_189288)),nondet]):-call(chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_189288).


test('?- chat80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_189090)),nondet]):-call(chat80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_189090).


test('?- chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_189486)),nondet]):-call(chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_189486).


test('?- chat80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_188688)),nondet]):-call(chat80("You're standing in Captain Picard's ready room",[descriptionTest]),_188688).


test('?- chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_189126)),nondet]):-call(chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_189126).


test('?- chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_189030)),nondet]):-call(chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_189030).


test('?- chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_189228)),nondet]):-call(chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_189228).


test('?- chat80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_188808)),nondet]):-call(chat80("This is where the Captain makes all of his important decisions",[descriptionTest]),_188808).


test('?- chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_188916)),nondet]):-call(chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_188916).


test('?- chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_189228)),nondet]):-call(chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_189228).


test('?- chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_189036)),nondet]):-call(chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_189036).


test('?- chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_188832)),nondet]):-call(chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_188832).


test('?- chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_189180)),nondet]):-call(chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_189180).


test('?- chat80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_188778)),nondet]):-call(chat80("This is where the ship's pilot and information officer sit",[descriptionTest]),_188778).


test('?- chat80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_188700)),nondet]):-call(chat80("You're in the conference room of the Enterprise",[descriptionTest]),_188700).


test('?- chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_189246)),nondet]):-call(chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_189246).


test('?- chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_188868)),nondet]):-call(chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_188868).


test('?- chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_188964)),nondet]):-call(chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_188964).


test('?- chat80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_188796)),nondet]):-call(chat80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_188796).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_111758)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_111758).


test('?- chat80("no two owners eat pizza",[sanity])',[true(compound(_111750)),nondet]):-call(chat80("no two owners eat pizza",[sanity]),_111750).


test('?- chat80("no three owners eat pizza",[sanity])',[true(compound(_111750)),nondet]):-call(chat80("no three owners eat pizza",[sanity]),_111750).


test('?- chat80("no three owners eat the same pizza",[sanity])',[true(compound(_111752)),nondet]):-call(chat80("no three owners eat the same pizza",[sanity]),_111752).


test('?- chat80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_111754)),nondet]):-call(chat80("no three owners eat the same kind of pizza",[sanity]),_111754).


test('?- chat80("no owners eat the same pizza",[sanity])',[true(compound(_111750)),nondet]):-call(chat80("no owners eat the same pizza",[sanity]),_111750).


test('?- chat80("no owners eat the same kind of pizza",[sanity])',[true(compound(_111752)),nondet]):-call(chat80("no owners eat the same kind of pizza",[sanity]),_111752).


test('?- chat80("there are 5 houses",[sanity])',[true(compound(_111748)),nondet]):-call(chat80("there are 5 houses",[sanity]),_111748).


test('?- chat80("there are not 5 houses",[sanity])',[true(compound(_111748)),nondet]):-call(chat80("there are not 5 houses",[sanity]),_111748).


test('?- chat80("there are not zero houses",[sanity])',[true(compound(_111750)),nondet]):-call(chat80("there are not zero houses",[sanity]),_111750).


test('?- chat80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_111758)),nondet]):-call(chat80(noun_phrase("less than 2 owners"),[sanity,bug]),_111758).


test('?- chat80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_111752)),nondet]):-call(chat80(noun_phrase("at most the 5 owners"),[sanity]),_111752).


test('?- chat80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_111752)),nondet]):-call(chat80(noun_phrase("at most 5 owners"),[sanity]),_111752).


test('?- chat80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_111752)),nondet]):-call(chat80(noun_phrase("less than 3 owners"),[sanity]),_111752).


test('?- chat80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_111754)),nondet]):-call(chat80(noun_phrase("at most 50 percent of owners"),[sanity]),_111754).


test('?- chat80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_111758)),nondet]):-call(chat80(noun_phrase("no three owners"),[sanity,no_working]),_111758).


test('?- chat80("terry writes a non-program.",[tell])',[true(compound(_111750)),nondet]):-call(chat80("terry writes a non-program.",[tell]),_111750).


test('?- chat80("every nonhuman programmer writes a program.",[tell])',[true(compound(_111754)),nondet]):-call(chat80("every nonhuman programmer writes a program.",[tell]),_111754).


test('?- chat80("every human programmer writes a not a program.",[tell])',[true(compound(_111754)),nondet]):-call(chat80("every human programmer writes a not a program.",[tell]),_111754).


test('?- chat80("every human programmer happily writes a not a program.",[tell])',[true(compound(_111756)),nondet]):-call(chat80("every human programmer happily writes a not a program.",[tell]),_111756).


:- end_tests(chat80).



:- begin_tests(curt80).



test('?- curt80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_111798)),nondet]):-call(curt80("His friends are liked by hers.",[bad_juju,sanity]),_111798).


test('?- curt80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_111800)),nondet]):-call(curt80("Her friends are not liked by his.",[bad_juju,sanity]),_111800).


test('?- curt80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_111800)),nondet]):-call(curt80("Do their friends like each other?",[bad_juju,feature]),_111800).


test('?- curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_111742),sanity])',[true(compound(_111804)),nondet]):-call(curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_111742),sanity]),_111804).


test('?- curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_111740),sanity])',[true(compound(_111802)),nondet]):-call(curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_111740),sanity]),_111802).


test('?- curt80("There are 5 houses with five different colors.",[riddle(_111744),sanity])',[true(compound(_111806)),nondet]):-call(curt80("There are 5 houses with five different colors.",[riddle(_111744),sanity]),_111806).


test('?- curt80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_111796)),nondet]):-call(curt80("There are 5 houses",[riddle_prep,sanity]),_111796).


test('?- curt80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_111800)),nondet]):-call(curt80("Each house has a different color",[riddle_prep,sanity]),_111800).


test('?- curt80("In each house lives a person with a different nationality.",[riddle(_111748),sanity])',[true(compound(_111810)),nondet]):-call(curt80("In each house lives a person with a different nationality.",[riddle(_111748),sanity]),_111810).


test('?- curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_111822)),nondet]):-call(curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_111822).


test('?- curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_111810)),nondet]):-call(curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_111810).


test('?- curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_111808)),nondet]):-call(curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_111808).


test('?- curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_111812)),nondet]):-call(curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_111812).


test('?- curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_111816)),nondet]):-call(curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_111816).


test('?- curt80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_111808)),nondet]):-call(curt80("No owners have the same pet.",[riddle(1),sanity,regression]),_111808).


test('?- curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_111812)),nondet]):-call(curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_111812).


test('?- curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_111806)),nondet]):-call(curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_111806).


test('?- curt80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_111810)),nondet]):-call(curt80("No two owners have the same pet.",[riddle(1),sanity,regression]),_111810).


test('?- curt80("The brit lives in the red house.",[riddle(_111742),sanity])',[true(compound(_111804)),nondet]):-call(curt80("The brit lives in the red house.",[riddle(_111742),sanity]),_111804).


test('?- curt80("The swede keeps dogs as pets.",[riddle(_111740),sanity])',[true(compound(_111802)),nondet]):-call(curt80("The swede keeps dogs as pets.",[riddle(_111740),sanity]),_111802).


test('?- curt80("A dane drinks tea.",[riddle(_111738),sanity])',[true(compound(_111800)),nondet]):-call(curt80("A dane drinks tea.",[riddle(_111738),sanity]),_111800).


test('?- curt80("The green house is on the left of the white house.",[riddle(_111746),sanity])',[true(compound(_111808)),nondet]):-call(curt80("The green house is on the left of the white house.",[riddle(_111746),sanity]),_111808).


test('?- curt80("The green house\'s owner drinks coffee.",[riddle(_111742),sanity])',[true(compound(_111804)),nondet]):-call(curt80("The green house's owner drinks coffee.",[riddle(_111742),sanity]),_111804).


test('?- curt80("The person who smokes Pall Mall rears birds.",[riddle(_111744),sanity,regression])',[true(compound(_111812)),nondet]):-call(curt80("The person who smokes Pall Mall rears birds.",[riddle(_111744),sanity,regression]),_111812).


test('?- curt80("The owner of the yellow house smokes Dunhill.",[riddle(_111744),sanity])',[true(compound(_111806)),nondet]):-call(curt80("The owner of the yellow house smokes Dunhill.",[riddle(_111744),sanity]),_111806).


test('?- curt80("The man living in the center house drinks milk.",[riddle(_111746),sanity])',[true(compound(_111808)),nondet]):-call(curt80("The man living in the center house drinks milk.",[riddle(_111746),sanity]),_111808).


test('?- curt80("The Norwegian lives in the first house .",[riddle(_111744),sanity])',[true(compound(_111806)),nondet]):-call(curt80("The Norwegian lives in the first house .",[riddle(_111744),sanity]),_111806).


test('?- curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_111750),sanity])',[true(compound(_111812)),nondet]):-call(curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_111750),sanity]),_111812).


test('?- curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_111750),sanity])',[true(compound(_111812)),nondet]):-call(curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_111750),sanity]),_111812).


test('?- curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_111744),sanity])',[true(compound(_111806)),nondet]):-call(curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_111744),sanity]),_111806).


test('?- curt80("The German smokes Prince.",[riddle(_111740),sanity])',[true(compound(_111802)),nondet]):-call(curt80("The German smokes Prince.",[riddle(_111740),sanity]),_111802).


test('?- curt80("The Norwegian lives next to the blue house.",[riddle(_111744),sanity])',[true(compound(_111806)),nondet]):-call(curt80("The Norwegian lives next to the blue house.",[riddle(_111744),sanity]),_111806).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_111748),sanity])',[true(compound(_111810)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_111748),sanity]),_111810).


test('?- curt80("Who owns the fish?",[riddle(_111738),sanity])',[true(compound(_111800)),nondet]):-call(curt80("Who owns the fish?",[riddle(_111738),sanity]),_111800).


test('?- curt80("One woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("One woman paints.",[quants]),_111790).


test('?- curt80("No woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("No woman paints.",[quants]),_111790).


test('?- curt80("Some woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Some woman paints.",[quants]),_111790).


test('?- curt80("Every woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Every woman paints.",[quants]),_111790).


test('?- curt80("Each woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Each woman paints.",[quants]),_111790).


test('?- curt80("Any woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Any woman paints.",[quants]),_111790).


test('?- curt80("The woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("The woman paints.",[quants]),_111790).


test('?- curt80("The not woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("The not woman paints.",[quants]),_111790).


test('?- curt80("Not a woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Not a woman paints.",[quants]),_111790).


test('?- curt80("Not one woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Not one woman paints.",[quants]),_111790).


test('?- curt80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_111790)),nondet]):-call(curt80("Not no woman paints.",[quants_neg_postcond]),_111790).


test('?- curt80("Not some woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Not some woman paints.",[quants]),_111790).


test('?- curt80("Not every woman paints.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("Not every woman paints.",[quants]),_111792).


test('?- curt80("Not each woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Not each woman paints.",[quants]),_111790).


test('?- curt80("Not any woman paints.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Not any woman paints.",[quants]),_111790).


test('?- curt80("The women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("The women paint.",[quants]),_111790).


test('?- curt80("Women paint.",[quants])',[true(compound(_111788)),nondet]):-call(curt80("Women paint.",[quants]),_111788).


test('?- curt80("Some women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Some women paint.",[quants]),_111790).


test('?- curt80("No women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("No women paint.",[quants]),_111790).


test('?- curt80("All women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("All women paint.",[quants]),_111790).


test('?- curt80("Any women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Any women paint.",[quants]),_111790).


test('?- curt80("Not women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Not women paint.",[quants]),_111790).


test('?- curt80("Not no women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Not no women paint.",[quants]),_111790).


test('?- curt80("Not all women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Not all women paint.",[quants]),_111790).


test('?- curt80("Not any women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Not any women paint.",[quants]),_111790).


test('?- curt80("The three women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("The three women paint.",[quants]),_111790).


test('?- curt80("Three women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Three women paint.",[quants]),_111790).


test('?- curt80("Some three women paint.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("Some three women paint.",[quants]),_111792).


test('?- curt80("No three women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("No three women paint.",[quants]),_111790).


test('?- curt80("Every three women paint.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("Every three women paint.",[quants]),_111792).


test('?- curt80("All three women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("All three women paint.",[quants]),_111790).


test('?- curt80("Any three women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Any three women paint.",[quants]),_111790).


test('?- curt80("Not three women paint.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("Not three women paint.",[quants]),_111790).


test('?- curt80("Not some three women paint.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("Not some three women paint.",[quants]),_111792).


test('?- curt80("Not no three women paint.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("Not no three women paint.",[quants]),_111792).


test('?- curt80("Not all three women paint.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("Not all three women paint.",[quants]),_111792).


test('?- curt80("Not every three women paint.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("Not every three women paint.",[quants]),_111792).


test('?- curt80("Not any three women paint.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("Not any three women paint.",[quants]),_111792).


test('?- curt80("Not three of the women paint.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("Not three of the women paint.",[quants]),_111792).


test('?- curt80("Not some of the three women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("Not some of the three women paint.",[quants]),_111794).


test('?- curt80("Not no three of the women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("Not no three of the women paint.",[quants]),_111794).


test('?- curt80("Not all three of the women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("Not all three of the women paint.",[quants]),_111794).


test('?- curt80("Not every three of the women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("Not every three of the women paint.",[quants]),_111794).


test('?- curt80("Not any three of the women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("Not any three of the women paint.",[quants]),_111794).


test('?- curt80("Not three of the four women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("Not three of the four women paint.",[quants]),_111794).


test('?- curt80("Not none of three out of the four women paint.",[quants])',[true(compound(_111796)),nondet]):-call(curt80("Not none of three out of the four women paint.",[quants]),_111796).


test('?- curt80("Not all three of the four women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("Not all three of the four women paint.",[quants]),_111794).


test('?- curt80("Not any three of the four women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("Not any three of the four women paint.",[quants]),_111794).


test('?- curt80("Three of the four women paint.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("Three of the four women paint.",[quants]),_111792).


test('?- curt80("Three out of the four women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("Three out of the four women paint.",[quants]),_111794).


test('?- curt80("All three of the four women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("All three of the four women paint.",[quants]),_111794).


test('?- curt80("Any three of the four women paint.",[quants])',[true(compound(_111794)),nondet]):-call(curt80("Any three of the four women paint.",[quants]),_111794).


test('?- curt80("I paint",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("I paint",[pronoun]),_111788).


test('?- curt80("you paint",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("you paint",[pronoun]),_111788).


test('?- curt80("We paint",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("We paint",[pronoun]),_111788).


test('?- curt80("None paint",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("None paint",[pronoun]),_111788).


test('?- curt80("They paint",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("They paint",[pronoun]),_111788).


test('?- curt80("Some paint",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("Some paint",[pronoun]),_111788).


test('?- curt80("It paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("It paints",[pronoun]),_111788).


test('?- curt80("he paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("he paints",[pronoun]),_111788).


test('?- curt80("She paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("She paints",[pronoun]),_111788).


test('?- curt80("Someone paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("Someone paints",[pronoun]),_111788).


test('?- curt80("Anybody paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("Anybody paints",[pronoun]),_111788).


test('?- curt80("Anyone paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("Anyone paints",[pronoun]),_111788).


test('?- curt80("Anything paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Anything paints",[pronoun]),_111790).


test('?- curt80("Everybody paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Everybody paints",[pronoun]),_111790).


test('?- curt80("Everyone paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Everyone paints",[pronoun]),_111790).


test('?- curt80("Everything paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Everything paints",[pronoun]),_111790).


test('?- curt80("Nobody paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("Nobody paints",[pronoun]),_111788).


test('?- curt80("No one paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("No one paints",[pronoun]),_111788).


test('?- curt80("Nothing paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("Nothing paints",[pronoun]),_111788).


test('?- curt80("One paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("One paints",[pronoun]),_111788).


test('?- curt80("Somebody paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Somebody paints",[pronoun]),_111790).


test('?- curt80("Something paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Something paints",[pronoun]),_111790).


test('?- curt80("Not anybody paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Not anybody paints",[pronoun]),_111790).


test('?- curt80("Not anyone paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Not anyone paints",[pronoun]),_111790).


test('?- curt80("Not anything paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Not anything paints",[pronoun]),_111790).


test('?- curt80("Not everybody paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Not everybody paints",[pronoun]),_111790).


test('?- curt80("Not everyone paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Not everyone paints",[pronoun]),_111790).


test('?- curt80("Not everything paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Not everything paints",[pronoun]),_111790).


test('?- curt80("Not nothing paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Not nothing paints",[pronoun]),_111790).


test('?- curt80("Not one paints",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("Not one paints",[pronoun]),_111788).


test('?- curt80("Not somebody paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Not somebody paints",[pronoun]),_111790).


test('?- curt80("Not something paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("Not something paints",[pronoun]),_111790).


test('?- curt80("She likes i",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("She likes i",[pronoun]),_111788).


test('?- curt80("She likes me",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("She likes me",[pronoun]),_111788).


test('?- curt80("She likes you",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("She likes you",[pronoun]),_111788).


test('?- curt80("She likes it",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("She likes it",[pronoun]),_111788).


test('?- curt80("She likes us",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("She likes us",[pronoun]),_111788).


test('?- curt80("She likes them",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("She likes them",[pronoun]),_111788).


test('?- curt80("She likes no one",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("She likes no one",[pronoun]),_111790).


test('?- curt80("She likes none",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("She likes none",[pronoun]),_111788).


test('?- curt80("She likes him",[pronoun])',[true(compound(_111788)),nondet]):-call(curt80("She likes him",[pronoun]),_111788).


test('?- curt80("She likes herself",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("She likes herself",[pronoun]),_111790).


test('?- curt80("She likes himself",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("She likes himself",[pronoun]),_111790).


test('?- curt80("It is us that paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("It is us that paints",[pronoun]),_111790).


test('?- curt80("It is them that paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("It is them that paints",[pronoun]),_111790).


test('?- curt80("It is he that paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("It is he that paints",[pronoun]),_111790).


test('?- curt80("It is she that paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("It is she that paints",[pronoun]),_111790).


test('?- curt80("It is her that paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("It is her that paints",[pronoun]),_111790).


test('?- curt80("It is him that paints",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("It is him that paints",[pronoun]),_111790).


test('?- curt80("We are us that paint",[pronoun])',[true(compound(_111790)),nondet]):-call(curt80("We are us that paint",[pronoun]),_111790).


test('?- curt80("We are all of us that paint",[pronoun])',[true(compound(_111792)),nondet]):-call(curt80("We are all of us that paint",[pronoun]),_111792).


test('?- curt80("It is everybody that paints",[pronoun])',[true(compound(_111792)),nondet]):-call(curt80("It is everybody that paints",[pronoun]),_111792).


test('?- curt80("Every man that paints likes monet.",[bratko])',[true(compound(_111794)),nondet]):-call(curt80("Every man that paints likes monet.",[bratko]),_111794).


test('?- curt80("A woman that admires John paints.",[bratko])',[true(compound(_111794)),nondet]):-call(curt80("A woman that admires John paints.",[bratko]),_111794).


test('?- curt80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_111800)),nondet]):-call(curt80("Every woman that likes a man that admires monet paints.",[bratko]),_111800).


test('?- curt80("John likes Annie.",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("John likes Annie.",[bratko]),_111790).


test('?- curt80("Annie likes a man that admires monet.",[bratko])',[true(compound(_111794)),nondet]):-call(curt80("Annie likes a man that admires monet.",[bratko]),_111794).


test('?- curt80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_111794)),nondet]):-call(curt80("Bertrand Russell wrote principia.",[bratko]),_111794).


test('?- curt80("An author wrote principia.",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("An author wrote principia.",[bratko]),_111792).


test('?- curt80("Iraq is a country.",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("Iraq is a country.",[bratko]),_111790).


test('?- curt80("A happy author wrote principia.",[bratko])',[true(compound(_111794)),nondet]):-call(curt80("A happy author wrote principia.",[bratko]),_111794).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_111790).


test('?- curt80("Bertrand is an author.",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("Bertrand is an author.",[bratko]),_111790).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_111790).


test('?- curt80("Every author is a programmer.",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("Every author is a programmer.",[bratko]),_111792).


test('?- curt80("Is Bertrand an programmer?",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("Is Bertrand an programmer?",[bratko]),_111792).


test('?- curt80("What is a author?",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("What is a author?",[bratko]),_111790).


test('?- curt80("What did Bertrand write?",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("What did Bertrand write?",[bratko]),_111792).


test('?- curt80("What is a book?",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("What is a book?",[bratko]),_111790).


test('?- curt80("Principia is a book.",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("Principia is a book.",[bratko]),_111790).


test('?- curt80("Bertrand is Bertrand.",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("Bertrand is Bertrand.",[bratko]),_111790).


test('?- curt80("Shrdlu halts.",[bratko])',[true(compound(_111788)),nondet]):-call(curt80("Shrdlu halts.",[bratko]),_111788).


test('?- curt80("Every student wrote a program.",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("Every student wrote a program.",[bratko]),_111792).


test('?- curt80("Terry writes a program.",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("Terry writes a program.",[bratko]),_111792).


test('?- curt80("Terry writes a program that halts.",[bratko])',[true(compound(_111794)),nondet]):-call(curt80("Terry writes a program that halts.",[bratko]),_111794).


test('?- curt80("An author of every book wrote a program.",[bratko])',[true(compound(_111796)),nondet]):-call(curt80("An author of every book wrote a program.",[bratko]),_111796).


test('?- curt80("A man hapilly maried paints.",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("A man hapilly maried paints.",[bratko]),_111792).


test('?- curt80("A hapilly maried man paints.",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("A hapilly maried man paints.",[bratko]),_111792).


test('?- curt80("A man who knows paints.",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("A man who knows paints.",[bratko]),_111792).


test('?- curt80("A man gives something.",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("A man gives something.",[bratko]),_111790).


test('?- curt80("A man gives his word.",[bratko])',[true(compound(_111790)),nondet]):-call(curt80("A man gives his word.",[bratko]),_111790).


test('?- curt80("A man of his word paints.",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("A man of his word paints.",[bratko]),_111792).


test('?- curt80("A man paints.",[bratko])',[true(compound(_111788)),nondet]):-call(curt80("A man paints.",[bratko]),_111788).


test('?- curt80("A man that paints paints.",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("A man that paints paints.",[bratko]),_111792).


test('?- curt80("A man walks.",[bratko])',[true(compound(_111788)),nondet]):-call(curt80("A man walks.",[bratko]),_111788).


test('?- curt80("A man that walks paints.",[bratko])',[true(compound(_111792)),nondet]):-call(curt80("A man that walks paints.",[bratko]),_111792).


test('?- curt80("It halts.",[bratko])',[true(compound(_111788)),nondet]):-call(curt80("It halts.",[bratko]),_111788).


test('?- curt80("A man of his word that walks paints.",[bratko])',[true(compound(_111794)),nondet]):-call(curt80("A man of his word that walks paints.",[bratko]),_111794).


test('?- curt80("The cost of what the product is changes.",[bratko])',[true(compound(_111796)),nondet]):-call(curt80("The cost of what the product is changes.",[bratko]),_111796).


test('?- curt80("We need a virtual machine server.",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("We need a virtual machine server.",[aindy]),_111794).


test('?- curt80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_111798)),nondet]):-call(curt80("The virtual machine server should have several VMs.",[aindy]),_111798).


test('?- curt80("One VM should be the POSI VM.",[aindy])',[true(compound(_111792)),nondet]):-call(curt80("One VM should be the POSI VM.",[aindy]),_111792).


test('?- curt80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("One VM should be the FRDCSA.org VM.",[aindy]),_111794).


test('?- curt80("One VM should be the mail server.",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("One VM should be the mail server.",[aindy]),_111794).


test('?- curt80("One computer should be the backup server.",[aindy])',[true(compound(_111796)),nondet]):-call(curt80("One computer should be the backup server.",[aindy]),_111796).


test('?- curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_111812)),nondet]):-call(curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_111812).


test('?- curt80("I need a fast computer for work.",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("I need a fast computer for work.",[aindy]),_111794).


test('?- curt80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_111804)),nondet]):-call(curt80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_111804).


test('?- curt80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_111800)),nondet]):-call(curt80("I need a dedicated computer for network security research.",[aindy]),_111800).


test('?- curt80("I need a machine to run Tails on.",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("I need a machine to run Tails on.",[aindy]),_111794).


test('?- curt80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_111798)),nondet]):-call(curt80("I need a machine off the network for airgap security.",[aindy]),_111798).


test('?- curt80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_111804)),nondet]):-call(curt80("One VM should be the game server for running game development projects.",[aindy]),_111804).


test('?- curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_111798)),nondet]):-call(curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_111798).


test('?- curt80("I could read about how to build a private watson.",[aindy])',[true(compound(_111798)),nondet]):-call(curt80("I could read about how to build a private watson.",[aindy]),_111798).


test('?- curt80("Need backups.",[aindy])',[true(compound(_111788)),nondet]):-call(curt80("Need backups.",[aindy]),_111788).


test('?- curt80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_111802)),nondet]):-call(curt80("Practice setting up backups of a machine to a different machine.",[aindy]),_111802).


test('?- curt80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_111800)),nondet]):-call(curt80("Set up schedules for updating the software on all machines.",[aindy]),_111800).


test('?- curt80("Read books on server room layout.",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("Read books on server room layout.",[aindy]),_111794).


test('?- curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_111802)),nondet]):-call(curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_111802).


test('?- curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_111804)),nondet]):-call(curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_111804).


test('?- curt80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("I want a gaming computer.  Do I?",[aindy]),_111794).


test('?- curt80("I want a windows 7 computer for work.",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("I want a windows 7 computer for work.",[aindy]),_111794).


test('?- curt80("I want a fast linux computer for work.",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("I want a fast linux computer for work.",[aindy]),_111794).


test('?- curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_111814)),nondet]):-call(curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_111814).


test('?- curt80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_111800)),nondet]):-call(curt80("I could install a fresh operating system on justin for work.",[aindy]),_111800).


test('?- curt80("I probably want a separate git computer.",[aindy])',[true(compound(_111796)),nondet]):-call(curt80("I probably want a separate git computer.",[aindy]),_111796).


test('?- curt80("I need to start buying servers.",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("I need to start buying servers.",[aindy]),_111794).


test('?- curt80("I want a rackmount case for servers.",[aindy])',[true(compound(_111794)),nondet]):-call(curt80("I want a rackmount case for servers.",[aindy]),_111794).


test('?- curt80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_111800)),nondet]):-call(curt80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_111800).


test('?- curt80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_111798)),nondet]):-call(curt80("2 oceans border each african country.",[chat80(tell)]),_111798).


test('?- curt80("There are 10 large cars.",[quants])',[true(compound(_111792)),nondet]):-call(curt80("There are 10 large cars.",[quants]),_111792).


test('?- curt80("There are 10 oceans.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("There are 10 oceans.",[quants]),_111790).


test('?- curt80("There are 10 women.",[quants])',[true(compound(_111790)),nondet]):-call(curt80("There are 10 women.",[quants]),_111790).


test('?- curt80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_111798)),nondet]):-call(curt80("An ocean borders an African country.",[chat80(tell)]),_111798).


test('?- curt80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_111806)),nondet]):-call(curt80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_111806).


test('?- curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_111808)),nondet]):-call(curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_111808).


test('?- curt80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_111794)),nondet]):-call(curt80("Bertrand wrote a book.",[bratko(book)]),_111794).


test('?- curt80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_111796)),nondet]):-call(curt80("Bertrand wrote nothing.",[bratko(book)]),_111796).


test('?- curt80("Bertrand wrote.",[bratko(book)])',[true(compound(_111794)),nondet]):-call(curt80("Bertrand wrote.",[bratko(book)]),_111794).


test('?- curt80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_111798)),nondet]):-call(curt80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_111798).


test('?- curt80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_111796)),nondet]):-call(curt80("Bertrand wrote about Gottlob.",[bratko(book)]),_111796).


test('?- curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_111798)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_111798).


test('?- curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_111800)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_111800).


test('?- curt80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_111798)),nondet]):-call(curt80("What did alfred write to Bertrand?",[bratko(book)]),_111798).


test('?- curt80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_111794)),nondet]):-call(curt80("Alfred wrote a letter.",[bratko(book)]),_111794).


test('?- curt80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_111798)),nondet]):-call(curt80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_111798).


test('?- curt80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_111798)),nondet]):-call(curt80("Alfred wrote something to Bertrand.",[bratko(book)]),_111798).


test('?- curt80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_111796)),nondet]):-call(curt80("Alfred wrote to Bertrand.",[bratko(book)]),_111796).


test('?- curt80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_111798)),nondet]):-call(curt80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_111798).


test('?- curt80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_111798)),nondet]):-call(curt80("Alfred wrote Bertrand a letter.",[bratko(book)]),_111798).


test('?- curt80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_111798)),nondet]):-call(curt80("Who did alfred write a letter to?",[bratko(book)]),_111798).


test('?- curt80("Alfred gave it.",[bratko(book)])',[true(compound(_111794)),nondet]):-call(curt80("Alfred gave it.",[bratko(book)]),_111794).


test('?- curt80("Alfred gave a book.",[bratko(book)])',[true(compound(_111794)),nondet]):-call(curt80("Alfred gave a book.",[bratko(book)]),_111794).


test('?- curt80("a pride of lions paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a pride of lions paint",[of]),_111790).


test('?- curt80("a flock of birds paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a flock of birds paint",[of]),_111790).


test('?- curt80("a litter of pups paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a litter of pups paint",[of]),_111790).


test('?- curt80("a prickle of porcupines paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a prickle of porcupines paint",[of]),_111792).


test('?- curt80("a litter of cubs paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a litter of cubs paint",[of]),_111790).


test('?- curt80("a pack of dogs paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a pack of dogs paint",[of]),_111790).


test('?- curt80("a colony of beavers paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a colony of beavers paint",[of]),_111792).


test('?- curt80("a gaggle of geese paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a gaggle of geese paint",[of]),_111792).


test('?- curt80("a family of otters paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a family of otters paint",[of]),_111792).


test('?- curt80("a huddle of walruses paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a huddle of walruses paint",[of]),_111792).


test('?- curt80("a herd of deer paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a herd of deer paint",[of]),_111790).


test('?- curt80("a culture of bacteria paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a culture of bacteria paint",[of]),_111792).


test('?- curt80("a swarm of bees paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a swarm of bees paint",[of]),_111790).


test('?- curt80("a bed of clams paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a bed of clams paint",[of]),_111790).


test('?- curt80("a school of cod paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a school of cod paint",[of]),_111790).


test('?- curt80("a herd of dinosaurs paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a herd of dinosaurs paint",[of]),_111792).


test('?- curt80("a mess of iguanas paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a mess of iguanas paint",[of]),_111792).


test('?- curt80("a mob of wombats paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a mob of wombats paint",[of]),_111790).


test('?- curt80("a pod of pelicans paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a pod of pelicans paint",[of]),_111792).


test('?- curt80("a troop of boy scouts paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a troop of boy scouts paint",[of]),_111792).


test('?- curt80("a team of athletes paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a team of athletes paint",[of]),_111792).


test('?- curt80("a panel of experts paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a panel of experts paint",[of]),_111792).


test('?- curt80("a crew of sailors paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a crew of sailors paint",[of]),_111792).


test('?- curt80("a band of robbers paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a band of robbers paint",[of]),_111792).


test('?- curt80("a troupe of performers paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a troupe of performers paint",[of]),_111792).


test('?- curt80("a crowd of onlookers paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a crowd of onlookers paint",[of]),_111792).


test('?- curt80("a curse of painters paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("a curse of painters paint",[of]),_111792).


test('?- curt80("a fleet of cars paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a fleet of cars paint",[of]),_111790).


test('?- curt80("a pair of shoes paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a pair of shoes paint",[of]),_111790).


test('?- curt80("a fleet of ships paint",[of])',[true(compound(_111790)),nondet]):-call(curt80("a fleet of ships paint",[of]),_111790).


test('?- curt80("an anthology of stories paint",[of])',[true(compound(_111792)),nondet]):-call(curt80("an anthology of stories paint",[of]),_111792).


test('?- curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_188766)),nondet]):-call(curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_188766).


test('?- curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_188736)),nondet]):-call(curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_188736).


test('?- curt80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_188874)),nondet]):-call(curt80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_188874).


test('?- curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_188718)),nondet]):-call(curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_188718).


test('?- curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_188766)),nondet]):-call(curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_188766).


test('?- curt80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_188862)),nondet]):-call(curt80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_188862).


test('?- curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_188820)),nondet]):-call(curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_188820).


test('?- curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_189012)),nondet]):-call(curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_189012).


test('?- curt80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_188784)),nondet]):-call(curt80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_188784).


test('?- curt80("Logged on player character",[descriptionTest])',[true(compound(_188592)),nondet]):-call(curt80("Logged on player character",[descriptionTest]),_188592).


test('?- curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_188850)),nondet]):-call(curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_188850).


test('?- curt80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_188796)),nondet]):-call(curt80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_188796).


test('?- curt80("Wesley is her son",[descriptionTest])',[true(compound(_188538)),nondet]):-call(curt80("Wesley is her son",[descriptionTest]),_188538).


test('?- curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_189186)),nondet]):-call(curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_189186).


test('?- curt80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_188616)),nondet]):-call(curt80("Counselor Deanna Troi is here",[descriptionTest]),_188616).


test('?- curt80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_188712)),nondet]):-call(curt80("Counselor Troi is the ship's main counselor",[descriptionTest]),_188712).


test('?- curt80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_188868)),nondet]):-call(curt80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_188868).


test('?- curt80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_188742)),nondet]):-call(curt80("Commander William Riker is here, staring at you",[descriptionTest]),_188742).


test('?- curt80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_188748)),nondet]):-call(curt80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_188748).


test('?- curt80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_188718)),nondet]):-call(curt80("He's in charge of keeping the crew in line",[descriptionTest]),_188718).


test('?- curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_188784)),nondet]):-call(curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_188784).


test('?- curt80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_188682)),nondet]):-call(curt80("Captain Picard is a very important man",[descriptionTest]),_188682).


test('?- curt80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_188784)),nondet]):-call(curt80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_188784).


test('?- curt80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_188628)),nondet]):-call(curt80("He's very smart, and very wise",[descriptionTest]),_188628).


test('?- curt80("Don\'t mess with him!",[descriptionTest])',[true(compound(_188556)),nondet]):-call(curt80("Don't mess with him!",[descriptionTest]),_188556).


test('?- curt80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_188634)),nondet]):-call(curt80("Guinan is here, tending the bar",[descriptionTest]),_188634).


test('?- curt80("Guinan is a strange being",[descriptionTest])',[true(compound(_188592)),nondet]):-call(curt80("Guinan is a strange being",[descriptionTest]),_188592).


test('?- curt80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_189300)),nondet]):-call(curt80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_189300).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_188802)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_188802).


test('?- curt80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_188802)),nondet]):-call(curt80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_188802).


test('?- curt80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_189102)),nondet]):-call(curt80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_189102).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_188796)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_188796).


test('?- curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_188820)),nondet]):-call(curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_188820).


test('?- curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_189090)),nondet]):-call(curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_189090).


test('?- curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_189012)),nondet]):-call(curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_189012).


test('?- curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_188802)),nondet]):-call(curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_188802).


test('?- curt80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_188682)),nondet]):-call(curt80("Livingston is Captain Picard's pet fish",[descriptionTest]),_188682).


test('?- curt80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_188934)),nondet]):-call(curt80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_188934).


test('?- curt80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_188784)),nondet]):-call(curt80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_188784).


test('?- curt80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_188652)),nondet]):-call(curt80("Spot is Data's orange coloured cat",[descriptionTest]),_188652).


test('?- curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_189174)),nondet]):-call(curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_189174).


test('?- curt80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_188796)),nondet]):-call(curt80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_188796).


test('?- curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_188778)),nondet]):-call(curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_188778).


test('?- curt80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_189120)),nondet]):-call(curt80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_189120).


test('?- curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_188766)),nondet]):-call(curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_188766).


test('?- curt80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_188634)),nondet]):-call(curt80("Alexander Rozhenko is Worf's son",[descriptionTest]),_188634).


test('?- curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_188916)),nondet]):-call(curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_188916).


test('?- curt80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_188832)),nondet]):-call(curt80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_188832).


test('?- curt80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_188778)),nondet]):-call(curt80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_188778).


test('?- curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_189180)),nondet]):-call(curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_189180).


test('?- curt80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_188658)),nondet]):-call(curt80("A large phaser rifle is lying here",[descriptionTest]),_188658).


test('?- curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_189252)),nondet]):-call(curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_189252).


test('?- curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_188856)),nondet]):-call(curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_188856).


test('?- curt80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189204)),nondet]):-call(curt80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189204).


test('?- curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_188856)),nondet]):-call(curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_188856).


test('?- curt80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189228)),nondet]):-call(curt80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189228).


test('?- curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_188832)),nondet]):-call(curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_188832).


test('?- curt80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189204)),nondet]):-call(curt80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189204).


test('?- curt80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_188754)),nondet]):-call(curt80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_188754).


test('?- curt80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_189294)),nondet]):-call(curt80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_189294).


test('?- curt80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_188724)),nondet]):-call(curt80("A Starfleet communication badge is lying here",[descriptionTest]),_188724).


test('?- curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_189762)),nondet]):-call(curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_189762).


test('?- curt80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_188718)),nondet]):-call(curt80("Worf's silver chain sash has been left here",[descriptionTest]),_188718).


test('?- curt80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_189330)),nondet]):-call(curt80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_189330).


test('?- curt80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_188610)),nondet]):-call(curt80("Geordi's VISOR is lying here",[descriptionTest]),_188610).


test('?- curt80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_190002)),nondet]):-call(curt80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_190002).


test('?- curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_188778)),nondet]):-call(curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_188778).


test('?- curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_189564)),nondet]):-call(curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_189564).


test('?- curt80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_188712)),nondet]):-call(curt80("A shard of dilithium crystal is lying here",[descriptionTest]),_188712).


test('?- curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_189366)),nondet]):-call(curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_189366).


test('?- curt80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_188724)),nondet]):-call(curt80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_188724).


test('?- curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_189336)),nondet]):-call(curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_189336).


test('?- curt80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_188736)),nondet]):-call(curt80("Commander Riker's trombone has been placed here",[descriptionTest]),_188736).


test('?- curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_189168)),nondet]):-call(curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_189168).


test('?- curt80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_188664)),nondet]):-call(curt80("A small cup of tea is sitting here",[descriptionTest]),_188664).


test('?- curt80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_188682)),nondet]):-call(curt80("A bottle of synthehol is standing here",[descriptionTest]),_188682).


test('?- curt80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_188694)),nondet]):-call(curt80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_188694).


test('?- curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_188718)),nondet]):-call(curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_188718).


test('?- curt80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_188730)),nondet]):-call(curt80("A small glass of prune juice is sitting here",[descriptionTest]),_188730).


test('?- curt80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_188700)),nondet]):-call(curt80("A bottle of Vulcan beer is standing here",[descriptionTest]),_188700).


test('?- curt80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_188772)),nondet]):-call(curt80("You find yourself in the middle of main engineering",[descriptionTest]),_188772).


test('?- curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_188892)),nondet]):-call(curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_188892).


test('?- curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_189192)),nondet]):-call(curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_189192).


test('?- curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_189000)),nondet]):-call(curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_189000).


test('?- curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_188928)),nondet]):-call(curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_188928).


test('?- curt80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_189108)),nondet]):-call(curt80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_189108).


test('?- curt80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_188700)),nondet]):-call(curt80("You're in the middle of Geordi's quarters",[descriptionTest]),_188700).


test('?- curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_188898)),nondet]):-call(curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_188898).


test('?- curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_189222)),nondet]):-call(curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_189222).


test('?- curt80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_188832)),nondet]):-call(curt80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_188832).


test('?- curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_188802)),nondet]):-call(curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_188802).


test('?- curt80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_188688)),nondet]):-call(curt80("You're in the middle of Data's quarters",[descriptionTest]),_188688).


test('?- curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_189750)),nondet]):-call(curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_189750).


test('?- curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_188964)),nondet]):-call(curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_188964).


test('?- curt80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_188988)),nondet]):-call(curt80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_188988).


test('?- curt80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_188616)),nondet]):-call(curt80("You're in the dimly lit Brig",[descriptionTest]),_188616).


test('?- curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_189006)),nondet]):-call(curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_189006).


test('?- curt80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_189084)),nondet]):-call(curt80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_189084).


test('?- curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_189378)),nondet]):-call(curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_189378).


test('?- curt80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_195606)),nondet]):-call(curt80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_195606).


test('?- curt80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_189090)),nondet]):-call(curt80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_189090).


test('?- curt80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_188694)),nondet]):-call(curt80("You're in the Enterprise transporter room",[descriptionTest]),_188694).


test('?- curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_189180)),nondet]):-call(curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_189180).


test('?- curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_189150)),nondet]):-call(curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_189150).


test('?- curt80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_188688)),nondet]):-call(curt80("You find yourself in a transporter beam",[descriptionTest]),_188688).


test('?- curt80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_188688)),nondet]):-call(curt80("All you can see is blue flashing light",[descriptionTest]),_188688).


test('?- curt80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_188844)),nondet]):-call(curt80("It feels as though your body is racing around at high speeds",[descriptionTest]),_188844).


test('?- curt80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_188964)),nondet]):-call(curt80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_188964).


test('?- curt80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_188892)),nondet]):-call(curt80("You step through the doors and find yourself in a large school room",[descriptionTest]),_188892).


test('?- curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_189270)),nondet]):-call(curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_189270).


test('?- curt80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_189024)),nondet]):-call(curt80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_189024).


test('?- curt80("You\'re in the turbolift",[descriptionTest])',[true(compound(_188574)),nondet]):-call(curt80("You're in the turbolift",[descriptionTest]),_188574).


test('?- curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_188952)),nondet]):-call(curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_188952).


test('?- curt80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_188844)),nondet]):-call(curt80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_188844).


test('?- curt80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_188832)),nondet]):-call(curt80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_188832).


test('?- curt80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_188586)),nondet]):-call(curt80("You're now on Holodeck 2",[descriptionTest]),_188586).


test('?- curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_189270)),nondet]):-call(curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_189270).


test('?- curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_189018)),nondet]):-call(curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_189018).


test('?- curt80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_188712)),nondet]):-call(curt80("Right now, this holodeck is not functioning",[descriptionTest]),_188712).


test('?- curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_188820)),nondet]):-call(curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_188820).


test('?- curt80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_188742)),nondet]):-call(curt80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_188742).


test('?- curt80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_188952)),nondet]):-call(curt80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_188952).


test('?- curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_189270)),nondet]):-call(curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_189270).


test('?- curt80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_188646)),nondet]):-call(curt80("You've arrived in Riker's quarters",[descriptionTest]),_188646).


test('?- curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_189222)),nondet]):-call(curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_189222).


test('?- curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_189156)),nondet]):-call(curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_189156).


test('?- curt80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_188760)),nondet]):-call(curt80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_188760).


test('?- curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_189396)),nondet]):-call(curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_189396).


test('?- curt80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_189192)),nondet]):-call(curt80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_189192).


test('?- curt80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_188664)),nondet]):-call(curt80("You emerge into a dark narrow alley",[descriptionTest]),_188664).


test('?- curt80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_188808)),nondet]):-call(curt80("Tall dark brick buildings block your way north and south",[descriptionTest]),_188808).


test('?- curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_189072)),nondet]):-call(curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_189072).


test('?- curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_189108)),nondet]):-call(curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_189108).


test('?- curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_188844)),nondet]):-call(curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_188844).


test('?- curt80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_188748)),nondet]):-call(curt80("The archway leading out of the holodeck is west",[descriptionTest]),_188748).


test('?- curt80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_188652)),nondet]):-call(curt80("You're in Doctor Crusher's quarters",[descriptionTest]),_188652).


test('?- curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_189048)),nondet]):-call(curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_189048).


test('?- curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_189138)),nondet]):-call(curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_189138).


test('?- curt80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_188880)),nondet]):-call(curt80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_188880).


test('?- curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_189504)),nondet]):-call(curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_189504).


test('?- curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_188976)),nondet]):-call(curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_188976).


test('?- curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_189372)),nondet]):-call(curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_189372).


test('?- curt80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_188844)),nondet]):-call(curt80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_188844).


test('?- curt80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_188772)),nondet]):-call(curt80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_188772).


test('?- curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_189666)),nondet]):-call(curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_189666).


test('?- curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_188844)),nondet]):-call(curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_188844).


test('?- curt80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_188754)),nondet]):-call(curt80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_188754).


test('?- curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_188946)),nondet]):-call(curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_188946).


test('?- curt80("A large grey door leads into space",[descriptionTest])',[true(compound(_188658)),nondet]):-call(curt80("A large grey door leads into space",[descriptionTest]),_188658).


test('?- curt80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_188844)),nondet]):-call(curt80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_188844).


test('?- curt80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_188916)),nondet]):-call(curt80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_188916).


test('?- curt80("You feel very cold",[descriptionTest])',[true(compound(_188544)),nondet]):-call(curt80("You feel very cold",[descriptionTest]),_188544).


test('?- curt80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_188814)),nondet]):-call(curt80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_188814).


test('?- curt80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_188700)),nondet]):-call(curt80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_188700).


test('?- curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_189312)),nondet]):-call(curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_189312).


test('?- curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_189036)),nondet]):-call(curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_189036).


test('?- curt80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_188586)),nondet]):-call(curt80("You're in Worf's quarters",[descriptionTest]),_188586).


test('?- curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_189030)),nondet]):-call(curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_189030).


test('?- curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_189444)),nondet]):-call(curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_189444).


test('?- curt80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_188652)),nondet]):-call(curt80("You emerge into the Enterprise gym",[descriptionTest]),_188652).


test('?- curt80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_188754)),nondet]):-call(curt80("The room is quite large, with a soft grey floor",[descriptionTest]),_188754).


test('?- curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_189162)),nondet]):-call(curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_189162).


test('?- curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_189126)),nondet]):-call(curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_189126).


test('?- curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_188814)),nondet]):-call(curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_188814).


test('?- curt80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_188880)),nondet]):-call(curt80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_188880).


test('?- curt80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_188970)),nondet]):-call(curt80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_188970).


test('?- curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_189264)),nondet]):-call(curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_189264).


test('?- curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_189282)),nondet]):-call(curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_189282).


test('?- curt80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_188736)),nondet]):-call(curt80("Two large windows offer a great view of space",[descriptionTest]),_188736).


test('?- curt80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_188988)),nondet]):-call(curt80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_188988).


test('?- curt80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_188664)),nondet]):-call(curt80("You're in the Enterprise science lab",[descriptionTest]),_188664).


test('?- curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_189054)),nondet]):-call(curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_189054).


test('?- curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_189552)),nondet]):-call(curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_189552).


test('?- curt80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_188808)),nondet]):-call(curt80("A complex looking computer console is facing this machine",[descriptionTest]),_188808).


test('?- curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_188964)),nondet]):-call(curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_188964).


test('?- curt80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_188724)),nondet]):-call(curt80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_188724).


test('?- curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_188958)),nondet]):-call(curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_188958).


test('?- curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_189330)),nondet]):-call(curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_189330).


test('?- curt80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_189132)),nondet]):-call(curt80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_189132).


test('?- curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_189528)),nondet]):-call(curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_189528).


test('?- curt80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_188730)),nondet]):-call(curt80("You're standing in Captain Picard's ready room",[descriptionTest]),_188730).


test('?- curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_189168)),nondet]):-call(curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_189168).


test('?- curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_189072)),nondet]):-call(curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_189072).


test('?- curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_189270)),nondet]):-call(curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_189270).


test('?- curt80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_188850)),nondet]):-call(curt80("This is where the Captain makes all of his important decisions",[descriptionTest]),_188850).


test('?- curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_188958)),nondet]):-call(curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_188958).


test('?- curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_189270)),nondet]):-call(curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_189270).


test('?- curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_189078)),nondet]):-call(curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_189078).


test('?- curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_188874)),nondet]):-call(curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_188874).


test('?- curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_189222)),nondet]):-call(curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_189222).


test('?- curt80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_188820)),nondet]):-call(curt80("This is where the ship's pilot and information officer sit",[descriptionTest]),_188820).


test('?- curt80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_188742)),nondet]):-call(curt80("You're in the conference room of the Enterprise",[descriptionTest]),_188742).


test('?- curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_189288)),nondet]):-call(curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_189288).


test('?- curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_188910)),nondet]):-call(curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_188910).


test('?- curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_189006)),nondet]):-call(curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_189006).


test('?- curt80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_188838)),nondet]):-call(curt80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_188838).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_111800)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_111800).


test('?- curt80("no two owners eat pizza",[sanity])',[true(compound(_111792)),nondet]):-call(curt80("no two owners eat pizza",[sanity]),_111792).


test('?- curt80("no three owners eat pizza",[sanity])',[true(compound(_111792)),nondet]):-call(curt80("no three owners eat pizza",[sanity]),_111792).


test('?- curt80("no three owners eat the same pizza",[sanity])',[true(compound(_111794)),nondet]):-call(curt80("no three owners eat the same pizza",[sanity]),_111794).


test('?- curt80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_111796)),nondet]):-call(curt80("no three owners eat the same kind of pizza",[sanity]),_111796).


test('?- curt80("no owners eat the same pizza",[sanity])',[true(compound(_111792)),nondet]):-call(curt80("no owners eat the same pizza",[sanity]),_111792).


test('?- curt80("no owners eat the same kind of pizza",[sanity])',[true(compound(_111794)),nondet]):-call(curt80("no owners eat the same kind of pizza",[sanity]),_111794).


test('?- curt80("there are 5 houses",[sanity])',[true(compound(_111790)),nondet]):-call(curt80("there are 5 houses",[sanity]),_111790).


test('?- curt80("there are not 5 houses",[sanity])',[true(compound(_111790)),nondet]):-call(curt80("there are not 5 houses",[sanity]),_111790).


test('?- curt80("there are not zero houses",[sanity])',[true(compound(_111792)),nondet]):-call(curt80("there are not zero houses",[sanity]),_111792).


test('?- curt80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_111800)),nondet]):-call(curt80(noun_phrase("less than 2 owners"),[sanity,bug]),_111800).


test('?- curt80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_111794)),nondet]):-call(curt80(noun_phrase("at most the 5 owners"),[sanity]),_111794).


test('?- curt80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_111794)),nondet]):-call(curt80(noun_phrase("at most 5 owners"),[sanity]),_111794).


test('?- curt80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_111794)),nondet]):-call(curt80(noun_phrase("less than 3 owners"),[sanity]),_111794).


test('?- curt80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_111796)),nondet]):-call(curt80(noun_phrase("at most 50 percent of owners"),[sanity]),_111796).


test('?- curt80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_111800)),nondet]):-call(curt80(noun_phrase("no three owners"),[sanity,no_working]),_111800).


test('?- curt80("terry writes a non-program.",[tell])',[true(compound(_111792)),nondet]):-call(curt80("terry writes a non-program.",[tell]),_111792).


test('?- curt80("every nonhuman programmer writes a program.",[tell])',[true(compound(_111796)),nondet]):-call(curt80("every nonhuman programmer writes a program.",[tell]),_111796).


test('?- curt80("every human programmer writes a not a program.",[tell])',[true(compound(_111796)),nondet]):-call(curt80("every human programmer writes a not a program.",[tell]),_111796).


test('?- curt80("every human programmer happily writes a not a program.",[tell])',[true(compound(_111798)),nondet]):-call(curt80("every human programmer happily writes a not a program.",[tell]),_111798).


:- end_tests(curt80).



:- begin_tests(e2c).



test('?- e2c("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_111840)),nondet]):-call(e2c("His friends are liked by hers.",[bad_juju,sanity]),_111840).


test('?- e2c("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_111842)),nondet]):-call(e2c("Her friends are not liked by his.",[bad_juju,sanity]),_111842).


test('?- e2c("Do their friends like each other?",[bad_juju,feature])',[true(compound(_111842)),nondet]):-call(e2c("Do their friends like each other?",[bad_juju,feature]),_111842).


test('?- e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_111784),sanity])',[true(compound(_111846)),nondet]):-call(e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_111784),sanity]),_111846).


test('?- e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_111782),sanity])',[true(compound(_111844)),nondet]):-call(e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_111782),sanity]),_111844).


test('?- e2c("There are 5 houses with five different colors.",[riddle(_111786),sanity])',[true(compound(_111848)),nondet]):-call(e2c("There are 5 houses with five different colors.",[riddle(_111786),sanity]),_111848).


test('?- e2c("There are 5 houses",[riddle_prep,sanity])',[true(compound(_111838)),nondet]):-call(e2c("There are 5 houses",[riddle_prep,sanity]),_111838).


test('?- e2c("Each house has a different color",[riddle_prep,sanity])',[true(compound(_111842)),nondet]):-call(e2c("Each house has a different color",[riddle_prep,sanity]),_111842).


test('?- e2c("In each house lives a person with a different nationality.",[riddle(_111790),sanity])',[true(compound(_111852)),nondet]):-call(e2c("In each house lives a person with a different nationality.",[riddle(_111790),sanity]),_111852).


test('?- e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_111864)),nondet]):-call(e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_111864).


test('?- e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_111852)),nondet]):-call(e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_111852).


test('?- e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_111850)),nondet]):-call(e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_111850).


test('?- e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_111854)),nondet]):-call(e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_111854).


test('?- e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_111858)),nondet]):-call(e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_111858).


test('?- e2c("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_111850)),nondet]):-call(e2c("No owners have the same pet.",[riddle(1),sanity,regression]),_111850).


test('?- e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_111854)),nondet]):-call(e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_111854).


test('?- e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_111848)),nondet]):-call(e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_111848).


test('?- e2c("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_111852)),nondet]):-call(e2c("No two owners have the same pet.",[riddle(1),sanity,regression]),_111852).


test('?- e2c("The brit lives in the red house.",[riddle(_111784),sanity])',[true(compound(_111846)),nondet]):-call(e2c("The brit lives in the red house.",[riddle(_111784),sanity]),_111846).


test('?- e2c("The swede keeps dogs as pets.",[riddle(_111782),sanity])',[true(compound(_111844)),nondet]):-call(e2c("The swede keeps dogs as pets.",[riddle(_111782),sanity]),_111844).


test('?- e2c("A dane drinks tea.",[riddle(_111780),sanity])',[true(compound(_111842)),nondet]):-call(e2c("A dane drinks tea.",[riddle(_111780),sanity]),_111842).


test('?- e2c("The green house is on the left of the white house.",[riddle(_111788),sanity])',[true(compound(_111850)),nondet]):-call(e2c("The green house is on the left of the white house.",[riddle(_111788),sanity]),_111850).


test('?- e2c("The green house\'s owner drinks coffee.",[riddle(_111784),sanity])',[true(compound(_111846)),nondet]):-call(e2c("The green house's owner drinks coffee.",[riddle(_111784),sanity]),_111846).


test('?- e2c("The person who smokes Pall Mall rears birds.",[riddle(_111786),sanity,regression])',[true(compound(_111854)),nondet]):-call(e2c("The person who smokes Pall Mall rears birds.",[riddle(_111786),sanity,regression]),_111854).


test('?- e2c("The owner of the yellow house smokes Dunhill.",[riddle(_111786),sanity])',[true(compound(_111848)),nondet]):-call(e2c("The owner of the yellow house smokes Dunhill.",[riddle(_111786),sanity]),_111848).


test('?- e2c("The man living in the center house drinks milk.",[riddle(_111788),sanity])',[true(compound(_111850)),nondet]):-call(e2c("The man living in the center house drinks milk.",[riddle(_111788),sanity]),_111850).


test('?- e2c("The Norwegian lives in the first house .",[riddle(_111786),sanity])',[true(compound(_111848)),nondet]):-call(e2c("The Norwegian lives in the first house .",[riddle(_111786),sanity]),_111848).


test('?- e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_111792),sanity])',[true(compound(_111854)),nondet]):-call(e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_111792),sanity]),_111854).


test('?- e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_111792),sanity])',[true(compound(_111854)),nondet]):-call(e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_111792),sanity]),_111854).


test('?- e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_111786),sanity])',[true(compound(_111848)),nondet]):-call(e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_111786),sanity]),_111848).


test('?- e2c("The German smokes Prince.",[riddle(_111782),sanity])',[true(compound(_111844)),nondet]):-call(e2c("The German smokes Prince.",[riddle(_111782),sanity]),_111844).


test('?- e2c("The Norwegian lives next to the blue house.",[riddle(_111786),sanity])',[true(compound(_111848)),nondet]):-call(e2c("The Norwegian lives next to the blue house.",[riddle(_111786),sanity]),_111848).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_111790),sanity])',[true(compound(_111852)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_111790),sanity]),_111852).


test('?- e2c("Who owns the fish?",[riddle(_111780),sanity])',[true(compound(_111842)),nondet]):-call(e2c("Who owns the fish?",[riddle(_111780),sanity]),_111842).


test('?- e2c("One woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("One woman paints.",[quants]),_111832).


test('?- e2c("No woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("No woman paints.",[quants]),_111832).


test('?- e2c("Some woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Some woman paints.",[quants]),_111832).


test('?- e2c("Every woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Every woman paints.",[quants]),_111832).


test('?- e2c("Each woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Each woman paints.",[quants]),_111832).


test('?- e2c("Any woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Any woman paints.",[quants]),_111832).


test('?- e2c("The woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("The woman paints.",[quants]),_111832).


test('?- e2c("The not woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("The not woman paints.",[quants]),_111832).


test('?- e2c("Not a woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Not a woman paints.",[quants]),_111832).


test('?- e2c("Not one woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Not one woman paints.",[quants]),_111832).


test('?- e2c("Not no woman paints.",[quants_neg_postcond])',[true(compound(_111832)),nondet]):-call(e2c("Not no woman paints.",[quants_neg_postcond]),_111832).


test('?- e2c("Not some woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Not some woman paints.",[quants]),_111832).


test('?- e2c("Not every woman paints.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("Not every woman paints.",[quants]),_111834).


test('?- e2c("Not each woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Not each woman paints.",[quants]),_111832).


test('?- e2c("Not any woman paints.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Not any woman paints.",[quants]),_111832).


test('?- e2c("The women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("The women paint.",[quants]),_111832).


test('?- e2c("Women paint.",[quants])',[true(compound(_111830)),nondet]):-call(e2c("Women paint.",[quants]),_111830).


test('?- e2c("Some women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Some women paint.",[quants]),_111832).


test('?- e2c("No women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("No women paint.",[quants]),_111832).


test('?- e2c("All women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("All women paint.",[quants]),_111832).


test('?- e2c("Any women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Any women paint.",[quants]),_111832).


test('?- e2c("Not women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Not women paint.",[quants]),_111832).


test('?- e2c("Not no women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Not no women paint.",[quants]),_111832).


test('?- e2c("Not all women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Not all women paint.",[quants]),_111832).


test('?- e2c("Not any women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Not any women paint.",[quants]),_111832).


test('?- e2c("The three women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("The three women paint.",[quants]),_111832).


test('?- e2c("Three women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Three women paint.",[quants]),_111832).


test('?- e2c("Some three women paint.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("Some three women paint.",[quants]),_111834).


test('?- e2c("No three women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("No three women paint.",[quants]),_111832).


test('?- e2c("Every three women paint.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("Every three women paint.",[quants]),_111834).


test('?- e2c("All three women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("All three women paint.",[quants]),_111832).


test('?- e2c("Any three women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Any three women paint.",[quants]),_111832).


test('?- e2c("Not three women paint.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("Not three women paint.",[quants]),_111832).


test('?- e2c("Not some three women paint.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("Not some three women paint.",[quants]),_111834).


test('?- e2c("Not no three women paint.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("Not no three women paint.",[quants]),_111834).


test('?- e2c("Not all three women paint.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("Not all three women paint.",[quants]),_111834).


test('?- e2c("Not every three women paint.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("Not every three women paint.",[quants]),_111834).


test('?- e2c("Not any three women paint.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("Not any three women paint.",[quants]),_111834).


test('?- e2c("Not three of the women paint.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("Not three of the women paint.",[quants]),_111834).


test('?- e2c("Not some of the three women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("Not some of the three women paint.",[quants]),_111836).


test('?- e2c("Not no three of the women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("Not no three of the women paint.",[quants]),_111836).


test('?- e2c("Not all three of the women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("Not all three of the women paint.",[quants]),_111836).


test('?- e2c("Not every three of the women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("Not every three of the women paint.",[quants]),_111836).


test('?- e2c("Not any three of the women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("Not any three of the women paint.",[quants]),_111836).


test('?- e2c("Not three of the four women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("Not three of the four women paint.",[quants]),_111836).


test('?- e2c("Not none of three out of the four women paint.",[quants])',[true(compound(_111838)),nondet]):-call(e2c("Not none of three out of the four women paint.",[quants]),_111838).


test('?- e2c("Not all three of the four women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("Not all three of the four women paint.",[quants]),_111836).


test('?- e2c("Not any three of the four women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("Not any three of the four women paint.",[quants]),_111836).


test('?- e2c("Three of the four women paint.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("Three of the four women paint.",[quants]),_111834).


test('?- e2c("Three out of the four women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("Three out of the four women paint.",[quants]),_111836).


test('?- e2c("All three of the four women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("All three of the four women paint.",[quants]),_111836).


test('?- e2c("Any three of the four women paint.",[quants])',[true(compound(_111836)),nondet]):-call(e2c("Any three of the four women paint.",[quants]),_111836).


test('?- e2c("I paint",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("I paint",[pronoun]),_111830).


test('?- e2c("you paint",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("you paint",[pronoun]),_111830).


test('?- e2c("We paint",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("We paint",[pronoun]),_111830).


test('?- e2c("None paint",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("None paint",[pronoun]),_111830).


test('?- e2c("They paint",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("They paint",[pronoun]),_111830).


test('?- e2c("Some paint",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("Some paint",[pronoun]),_111830).


test('?- e2c("It paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("It paints",[pronoun]),_111830).


test('?- e2c("he paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("he paints",[pronoun]),_111830).


test('?- e2c("She paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("She paints",[pronoun]),_111830).


test('?- e2c("Someone paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("Someone paints",[pronoun]),_111830).


test('?- e2c("Anybody paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("Anybody paints",[pronoun]),_111830).


test('?- e2c("Anyone paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("Anyone paints",[pronoun]),_111830).


test('?- e2c("Anything paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Anything paints",[pronoun]),_111832).


test('?- e2c("Everybody paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Everybody paints",[pronoun]),_111832).


test('?- e2c("Everyone paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Everyone paints",[pronoun]),_111832).


test('?- e2c("Everything paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Everything paints",[pronoun]),_111832).


test('?- e2c("Nobody paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("Nobody paints",[pronoun]),_111830).


test('?- e2c("No one paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("No one paints",[pronoun]),_111830).


test('?- e2c("Nothing paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("Nothing paints",[pronoun]),_111830).


test('?- e2c("One paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("One paints",[pronoun]),_111830).


test('?- e2c("Somebody paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Somebody paints",[pronoun]),_111832).


test('?- e2c("Something paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Something paints",[pronoun]),_111832).


test('?- e2c("Not anybody paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Not anybody paints",[pronoun]),_111832).


test('?- e2c("Not anyone paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Not anyone paints",[pronoun]),_111832).


test('?- e2c("Not anything paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Not anything paints",[pronoun]),_111832).


test('?- e2c("Not everybody paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Not everybody paints",[pronoun]),_111832).


test('?- e2c("Not everyone paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Not everyone paints",[pronoun]),_111832).


test('?- e2c("Not everything paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Not everything paints",[pronoun]),_111832).


test('?- e2c("Not nothing paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Not nothing paints",[pronoun]),_111832).


test('?- e2c("Not one paints",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("Not one paints",[pronoun]),_111830).


test('?- e2c("Not somebody paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Not somebody paints",[pronoun]),_111832).


test('?- e2c("Not something paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("Not something paints",[pronoun]),_111832).


test('?- e2c("She likes i",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("She likes i",[pronoun]),_111830).


test('?- e2c("She likes me",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("She likes me",[pronoun]),_111830).


test('?- e2c("She likes you",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("She likes you",[pronoun]),_111830).


test('?- e2c("She likes it",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("She likes it",[pronoun]),_111830).


test('?- e2c("She likes us",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("She likes us",[pronoun]),_111830).


test('?- e2c("She likes them",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("She likes them",[pronoun]),_111830).


test('?- e2c("She likes no one",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("She likes no one",[pronoun]),_111832).


test('?- e2c("She likes none",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("She likes none",[pronoun]),_111830).


test('?- e2c("She likes him",[pronoun])',[true(compound(_111830)),nondet]):-call(e2c("She likes him",[pronoun]),_111830).


test('?- e2c("She likes herself",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("She likes herself",[pronoun]),_111832).


test('?- e2c("She likes himself",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("She likes himself",[pronoun]),_111832).


test('?- e2c("It is us that paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("It is us that paints",[pronoun]),_111832).


test('?- e2c("It is them that paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("It is them that paints",[pronoun]),_111832).


test('?- e2c("It is he that paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("It is he that paints",[pronoun]),_111832).


test('?- e2c("It is she that paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("It is she that paints",[pronoun]),_111832).


test('?- e2c("It is her that paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("It is her that paints",[pronoun]),_111832).


test('?- e2c("It is him that paints",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("It is him that paints",[pronoun]),_111832).


test('?- e2c("We are us that paint",[pronoun])',[true(compound(_111832)),nondet]):-call(e2c("We are us that paint",[pronoun]),_111832).


test('?- e2c("We are all of us that paint",[pronoun])',[true(compound(_111834)),nondet]):-call(e2c("We are all of us that paint",[pronoun]),_111834).


test('?- e2c("It is everybody that paints",[pronoun])',[true(compound(_111834)),nondet]):-call(e2c("It is everybody that paints",[pronoun]),_111834).


test('?- e2c("Every man that paints likes monet.",[bratko])',[true(compound(_111836)),nondet]):-call(e2c("Every man that paints likes monet.",[bratko]),_111836).


test('?- e2c("A woman that admires John paints.",[bratko])',[true(compound(_111836)),nondet]):-call(e2c("A woman that admires John paints.",[bratko]),_111836).


test('?- e2c("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_111842)),nondet]):-call(e2c("Every woman that likes a man that admires monet paints.",[bratko]),_111842).


test('?- e2c("John likes Annie.",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("John likes Annie.",[bratko]),_111832).


test('?- e2c("Annie likes a man that admires monet.",[bratko])',[true(compound(_111836)),nondet]):-call(e2c("Annie likes a man that admires monet.",[bratko]),_111836).


test('?- e2c("Bertrand Russell wrote principia.",[bratko])',[true(compound(_111836)),nondet]):-call(e2c("Bertrand Russell wrote principia.",[bratko]),_111836).


test('?- e2c("An author wrote principia.",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("An author wrote principia.",[bratko]),_111834).


test('?- e2c("Iraq is a country.",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("Iraq is a country.",[bratko]),_111832).


test('?- e2c("A happy author wrote principia.",[bratko])',[true(compound(_111836)),nondet]):-call(e2c("A happy author wrote principia.",[bratko]),_111836).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_111832).


test('?- e2c("Bertrand is an author.",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("Bertrand is an author.",[bratko]),_111832).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_111832).


test('?- e2c("Every author is a programmer.",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("Every author is a programmer.",[bratko]),_111834).


test('?- e2c("Is Bertrand an programmer?",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("Is Bertrand an programmer?",[bratko]),_111834).


test('?- e2c("What is a author?",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("What is a author?",[bratko]),_111832).


test('?- e2c("What did Bertrand write?",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("What did Bertrand write?",[bratko]),_111834).


test('?- e2c("What is a book?",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("What is a book?",[bratko]),_111832).


test('?- e2c("Principia is a book.",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("Principia is a book.",[bratko]),_111832).


test('?- e2c("Bertrand is Bertrand.",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("Bertrand is Bertrand.",[bratko]),_111832).


test('?- e2c("Shrdlu halts.",[bratko])',[true(compound(_111830)),nondet]):-call(e2c("Shrdlu halts.",[bratko]),_111830).


test('?- e2c("Every student wrote a program.",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("Every student wrote a program.",[bratko]),_111834).


test('?- e2c("Terry writes a program.",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("Terry writes a program.",[bratko]),_111834).


test('?- e2c("Terry writes a program that halts.",[bratko])',[true(compound(_111836)),nondet]):-call(e2c("Terry writes a program that halts.",[bratko]),_111836).


test('?- e2c("An author of every book wrote a program.",[bratko])',[true(compound(_111838)),nondet]):-call(e2c("An author of every book wrote a program.",[bratko]),_111838).


test('?- e2c("A man hapilly maried paints.",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("A man hapilly maried paints.",[bratko]),_111834).


test('?- e2c("A hapilly maried man paints.",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("A hapilly maried man paints.",[bratko]),_111834).


test('?- e2c("A man who knows paints.",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("A man who knows paints.",[bratko]),_111834).


test('?- e2c("A man gives something.",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("A man gives something.",[bratko]),_111832).


test('?- e2c("A man gives his word.",[bratko])',[true(compound(_111832)),nondet]):-call(e2c("A man gives his word.",[bratko]),_111832).


test('?- e2c("A man of his word paints.",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("A man of his word paints.",[bratko]),_111834).


test('?- e2c("A man paints.",[bratko])',[true(compound(_111830)),nondet]):-call(e2c("A man paints.",[bratko]),_111830).


test('?- e2c("A man that paints paints.",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("A man that paints paints.",[bratko]),_111834).


test('?- e2c("A man walks.",[bratko])',[true(compound(_111830)),nondet]):-call(e2c("A man walks.",[bratko]),_111830).


test('?- e2c("A man that walks paints.",[bratko])',[true(compound(_111834)),nondet]):-call(e2c("A man that walks paints.",[bratko]),_111834).


test('?- e2c("It halts.",[bratko])',[true(compound(_111830)),nondet]):-call(e2c("It halts.",[bratko]),_111830).


test('?- e2c("A man of his word that walks paints.",[bratko])',[true(compound(_111836)),nondet]):-call(e2c("A man of his word that walks paints.",[bratko]),_111836).


test('?- e2c("The cost of what the product is changes.",[bratko])',[true(compound(_111838)),nondet]):-call(e2c("The cost of what the product is changes.",[bratko]),_111838).


test('?- e2c("We need a virtual machine server.",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("We need a virtual machine server.",[aindy]),_111836).


test('?- e2c("The virtual machine server should have several VMs.",[aindy])',[true(compound(_111840)),nondet]):-call(e2c("The virtual machine server should have several VMs.",[aindy]),_111840).


test('?- e2c("One VM should be the POSI VM.",[aindy])',[true(compound(_111834)),nondet]):-call(e2c("One VM should be the POSI VM.",[aindy]),_111834).


test('?- e2c("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("One VM should be the FRDCSA.org VM.",[aindy]),_111836).


test('?- e2c("One VM should be the mail server.",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("One VM should be the mail server.",[aindy]),_111836).


test('?- e2c("One computer should be the backup server.",[aindy])',[true(compound(_111838)),nondet]):-call(e2c("One computer should be the backup server.",[aindy]),_111838).


test('?- e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_111854)),nondet]):-call(e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_111854).


test('?- e2c("I need a fast computer for work.",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("I need a fast computer for work.",[aindy]),_111836).


test('?- e2c("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_111846)),nondet]):-call(e2c("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_111846).


test('?- e2c("I need a dedicated computer for network security research.",[aindy])',[true(compound(_111842)),nondet]):-call(e2c("I need a dedicated computer for network security research.",[aindy]),_111842).


test('?- e2c("I need a machine to run Tails on.",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("I need a machine to run Tails on.",[aindy]),_111836).


test('?- e2c("I need a machine off the network for airgap security.",[aindy])',[true(compound(_111840)),nondet]):-call(e2c("I need a machine off the network for airgap security.",[aindy]),_111840).


test('?- e2c("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_111846)),nondet]):-call(e2c("One VM should be the game server for running game development projects.",[aindy]),_111846).


test('?- e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_111840)),nondet]):-call(e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_111840).


test('?- e2c("I could read about how to build a private watson.",[aindy])',[true(compound(_111840)),nondet]):-call(e2c("I could read about how to build a private watson.",[aindy]),_111840).


test('?- e2c("Need backups.",[aindy])',[true(compound(_111830)),nondet]):-call(e2c("Need backups.",[aindy]),_111830).


test('?- e2c("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_111844)),nondet]):-call(e2c("Practice setting up backups of a machine to a different machine.",[aindy]),_111844).


test('?- e2c("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_111842)),nondet]):-call(e2c("Set up schedules for updating the software on all machines.",[aindy]),_111842).


test('?- e2c("Read books on server room layout.",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("Read books on server room layout.",[aindy]),_111836).


test('?- e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_111844)),nondet]):-call(e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_111844).


test('?- e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_111846)),nondet]):-call(e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_111846).


test('?- e2c("I want a gaming computer.  Do I?",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("I want a gaming computer.  Do I?",[aindy]),_111836).


test('?- e2c("I want a windows 7 computer for work.",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("I want a windows 7 computer for work.",[aindy]),_111836).


test('?- e2c("I want a fast linux computer for work.",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("I want a fast linux computer for work.",[aindy]),_111836).


test('?- e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_111856)),nondet]):-call(e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_111856).


test('?- e2c("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_111842)),nondet]):-call(e2c("I could install a fresh operating system on justin for work.",[aindy]),_111842).


test('?- e2c("I probably want a separate git computer.",[aindy])',[true(compound(_111838)),nondet]):-call(e2c("I probably want a separate git computer.",[aindy]),_111838).


test('?- e2c("I need to start buying servers.",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("I need to start buying servers.",[aindy]),_111836).


test('?- e2c("I want a rackmount case for servers.",[aindy])',[true(compound(_111836)),nondet]):-call(e2c("I want a rackmount case for servers.",[aindy]),_111836).


test('?- e2c("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_111842)),nondet]):-call(e2c("Each african country is bordered by 2 oceans.",[chat80(tell)]),_111842).


test('?- e2c("2 oceans border each african country.",[chat80(tell)])',[true(compound(_111840)),nondet]):-call(e2c("2 oceans border each african country.",[chat80(tell)]),_111840).


test('?- e2c("There are 10 large cars.",[quants])',[true(compound(_111834)),nondet]):-call(e2c("There are 10 large cars.",[quants]),_111834).


test('?- e2c("There are 10 oceans.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("There are 10 oceans.",[quants]),_111832).


test('?- e2c("There are 10 women.",[quants])',[true(compound(_111832)),nondet]):-call(e2c("There are 10 women.",[quants]),_111832).


test('?- e2c("An ocean borders an African country.",[chat80(tell)])',[true(compound(_111840)),nondet]):-call(e2c("An ocean borders an African country.",[chat80(tell)]),_111840).


test('?- e2c("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_111848)),nondet]):-call(e2c("What is the ocean that borders african countries and that borders asian countries?",[tell]),_111848).


test('?- e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_111850)),nondet]):-call(e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_111850).


test('?- e2c("Bertrand wrote a book.",[bratko(book)])',[true(compound(_111836)),nondet]):-call(e2c("Bertrand wrote a book.",[bratko(book)]),_111836).


test('?- e2c("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_111838)),nondet]):-call(e2c("Bertrand wrote nothing.",[bratko(book)]),_111838).


test('?- e2c("Bertrand wrote.",[bratko(book)])',[true(compound(_111836)),nondet]):-call(e2c("Bertrand wrote.",[bratko(book)]),_111836).


test('?- e2c("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_111840)),nondet]):-call(e2c("Bertrand wrote a book about Gottlob.",[bratko(book)]),_111840).


test('?- e2c("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_111838)),nondet]):-call(e2c("Bertrand wrote about Gottlob.",[bratko(book)]),_111838).


test('?- e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_111840)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_111840).


test('?- e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_111842)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_111842).


test('?- e2c("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_111840)),nondet]):-call(e2c("What did alfred write to Bertrand?",[bratko(book)]),_111840).


test('?- e2c("Alfred wrote a letter.",[bratko(book)])',[true(compound(_111836)),nondet]):-call(e2c("Alfred wrote a letter.",[bratko(book)]),_111836).


test('?- e2c("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_111840)),nondet]):-call(e2c("Alfred wrote a letter to Bertrand.",[bratko(book)]),_111840).


test('?- e2c("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_111840)),nondet]):-call(e2c("Alfred wrote something to Bertrand.",[bratko(book)]),_111840).


test('?- e2c("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_111838)),nondet]):-call(e2c("Alfred wrote to Bertrand.",[bratko(book)]),_111838).


test('?- e2c("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_111840)),nondet]):-call(e2c("Alfred wrote to Bertrand a letter.",[bratko(book)]),_111840).


test('?- e2c("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_111840)),nondet]):-call(e2c("Alfred wrote Bertrand a letter.",[bratko(book)]),_111840).


test('?- e2c("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_111840)),nondet]):-call(e2c("Who did alfred write a letter to?",[bratko(book)]),_111840).


test('?- e2c("Alfred gave it.",[bratko(book)])',[true(compound(_111836)),nondet]):-call(e2c("Alfred gave it.",[bratko(book)]),_111836).


test('?- e2c("Alfred gave a book.",[bratko(book)])',[true(compound(_111836)),nondet]):-call(e2c("Alfred gave a book.",[bratko(book)]),_111836).


test('?- e2c("a pride of lions paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a pride of lions paint",[of]),_111832).


test('?- e2c("a flock of birds paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a flock of birds paint",[of]),_111832).


test('?- e2c("a litter of pups paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a litter of pups paint",[of]),_111832).


test('?- e2c("a prickle of porcupines paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a prickle of porcupines paint",[of]),_111834).


test('?- e2c("a litter of cubs paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a litter of cubs paint",[of]),_111832).


test('?- e2c("a pack of dogs paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a pack of dogs paint",[of]),_111832).


test('?- e2c("a colony of beavers paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a colony of beavers paint",[of]),_111834).


test('?- e2c("a gaggle of geese paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a gaggle of geese paint",[of]),_111834).


test('?- e2c("a family of otters paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a family of otters paint",[of]),_111834).


test('?- e2c("a huddle of walruses paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a huddle of walruses paint",[of]),_111834).


test('?- e2c("a herd of deer paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a herd of deer paint",[of]),_111832).


test('?- e2c("a culture of bacteria paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a culture of bacteria paint",[of]),_111834).


test('?- e2c("a swarm of bees paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a swarm of bees paint",[of]),_111832).


test('?- e2c("a bed of clams paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a bed of clams paint",[of]),_111832).


test('?- e2c("a school of cod paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a school of cod paint",[of]),_111832).


test('?- e2c("a herd of dinosaurs paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a herd of dinosaurs paint",[of]),_111834).


test('?- e2c("a mess of iguanas paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a mess of iguanas paint",[of]),_111834).


test('?- e2c("a mob of wombats paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a mob of wombats paint",[of]),_111832).


test('?- e2c("a pod of pelicans paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a pod of pelicans paint",[of]),_111834).


test('?- e2c("a troop of boy scouts paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a troop of boy scouts paint",[of]),_111834).


test('?- e2c("a team of athletes paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a team of athletes paint",[of]),_111834).


test('?- e2c("a panel of experts paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a panel of experts paint",[of]),_111834).


test('?- e2c("a crew of sailors paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a crew of sailors paint",[of]),_111834).


test('?- e2c("a band of robbers paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a band of robbers paint",[of]),_111834).


test('?- e2c("a troupe of performers paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a troupe of performers paint",[of]),_111834).


test('?- e2c("a crowd of onlookers paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a crowd of onlookers paint",[of]),_111834).


test('?- e2c("a curse of painters paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("a curse of painters paint",[of]),_111834).


test('?- e2c("a fleet of cars paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a fleet of cars paint",[of]),_111832).


test('?- e2c("a pair of shoes paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a pair of shoes paint",[of]),_111832).


test('?- e2c("a fleet of ships paint",[of])',[true(compound(_111832)),nondet]):-call(e2c("a fleet of ships paint",[of]),_111832).


test('?- e2c("an anthology of stories paint",[of])',[true(compound(_111834)),nondet]):-call(e2c("an anthology of stories paint",[of]),_111834).


test('?- e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_188808)),nondet]):-call(e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_188808).


test('?- e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_188778)),nondet]):-call(e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_188778).


test('?- e2c("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_188916)),nondet]):-call(e2c("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_188916).


test('?- e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_188760)),nondet]):-call(e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_188760).


test('?- e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_188808)),nondet]):-call(e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_188808).


test('?- e2c("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_188904)),nondet]):-call(e2c("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_188904).


test('?- e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_188862)),nondet]):-call(e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_188862).


test('?- e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_189054)),nondet]):-call(e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_189054).


test('?- e2c("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_188826)),nondet]):-call(e2c("He stowed super-human strength, and is extremely tough",[descriptionTest]),_188826).


test('?- e2c("Logged on player character",[descriptionTest])',[true(compound(_188634)),nondet]):-call(e2c("Logged on player character",[descriptionTest]),_188634).


test('?- e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_188892)),nondet]):-call(e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_188892).


test('?- e2c("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_188838)),nondet]):-call(e2c("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_188838).


test('?- e2c("Wesley is her son",[descriptionTest])',[true(compound(_188580)),nondet]):-call(e2c("Wesley is her son",[descriptionTest]),_188580).


test('?- e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_189228)),nondet]):-call(e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_189228).


test('?- e2c("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_188658)),nondet]):-call(e2c("Counselor Deanna Troi is here",[descriptionTest]),_188658).


test('?- e2c("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_188754)),nondet]):-call(e2c("Counselor Troi is the ship's main counselor",[descriptionTest]),_188754).


test('?- e2c("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_188910)),nondet]):-call(e2c("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_188910).


test('?- e2c("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_188784)),nondet]):-call(e2c("Commander William Riker is here, staring at you",[descriptionTest]),_188784).


test('?- e2c("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_188790)),nondet]):-call(e2c("Commander Riker is the Enterprise's first officer",[descriptionTest]),_188790).


test('?- e2c("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_188760)),nondet]):-call(e2c("He's in charge of keeping the crew in line",[descriptionTest]),_188760).


test('?- e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_188826)),nondet]):-call(e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_188826).


test('?- e2c("Captain Picard is a very important man",[descriptionTest])',[true(compound(_188724)),nondet]):-call(e2c("Captain Picard is a very important man",[descriptionTest]),_188724).


test('?- e2c("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_188826)),nondet]):-call(e2c("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_188826).


test('?- e2c("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_188670)),nondet]):-call(e2c("He's very smart, and very wise",[descriptionTest]),_188670).


test('?- e2c("Don\'t mess with him!",[descriptionTest])',[true(compound(_188598)),nondet]):-call(e2c("Don't mess with him!",[descriptionTest]),_188598).


test('?- e2c("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_188676)),nondet]):-call(e2c("Guinan is here, tending the bar",[descriptionTest]),_188676).


test('?- e2c("Guinan is a strange being",[descriptionTest])',[true(compound(_188634)),nondet]):-call(e2c("Guinan is a strange being",[descriptionTest]),_188634).


test('?- e2c("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_189342)),nondet]):-call(e2c("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_189342).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_188844)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_188844).


test('?- e2c("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_188844)),nondet]):-call(e2c("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_188844).


test('?- e2c("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_189144)),nondet]):-call(e2c("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_189144).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_188838)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_188838).


test('?- e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_188862)),nondet]):-call(e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_188862).


test('?- e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_189132)),nondet]):-call(e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_189132).


test('?- e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_189054)),nondet]):-call(e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_189054).


test('?- e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_188844)),nondet]):-call(e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_188844).


test('?- e2c("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_188724)),nondet]):-call(e2c("Livingston is Captain Picard's pet fish",[descriptionTest]),_188724).


test('?- e2c("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_188976)),nondet]):-call(e2c("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_188976).


test('?- e2c("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_188826)),nondet]):-call(e2c("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_188826).


test('?- e2c("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_188694)),nondet]):-call(e2c("Spot is Data's orange coloured cat",[descriptionTest]),_188694).


test('?- e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_189216)),nondet]):-call(e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_189216).


test('?- e2c("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_188838)),nondet]):-call(e2c("A nervous looking ensign is standing here, watching you",[descriptionTest]),_188838).


test('?- e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_188820)),nondet]):-call(e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_188820).


test('?- e2c("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_189162)),nondet]):-call(e2c("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_189162).


test('?- e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_188808)),nondet]):-call(e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_188808).


test('?- e2c("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_188676)),nondet]):-call(e2c("Alexander Rozhenko is Worf's son",[descriptionTest]),_188676).


test('?- e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_188958)),nondet]):-call(e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_188958).


test('?- e2c("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_188874)),nondet]):-call(e2c("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_188874).


test('?- e2c("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_188820)),nondet]):-call(e2c("A standard issue Starfleet phaser has been left here",[descriptionTest]),_188820).


test('?- e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_189222)),nondet]):-call(e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_189222).


test('?- e2c("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_188700)),nondet]):-call(e2c("A large phaser rifle is lying here",[descriptionTest]),_188700).


test('?- e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_189294)),nondet]):-call(e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_189294).


test('?- e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_188898)),nondet]):-call(e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_188898).


test('?- e2c("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189246)),nondet]):-call(e2c("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189246).


test('?- e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_188898)),nondet]):-call(e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_188898).


test('?- e2c("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189270)),nondet]):-call(e2c("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189270).


test('?- e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_188874)),nondet]):-call(e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_188874).


test('?- e2c("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_189246)),nondet]):-call(e2c("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_189246).


test('?- e2c("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_188796)),nondet]):-call(e2c("A pair of Starfleet black boots are sitting here",[descriptionTest]),_188796).


test('?- e2c("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_189336)),nondet]):-call(e2c("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_189336).


test('?- e2c("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_188766)),nondet]):-call(e2c("A Starfleet communication badge is lying here",[descriptionTest]),_188766).


test('?- e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_189804)),nondet]):-call(e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_189804).


test('?- e2c("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_188760)),nondet]):-call(e2c("Worf's silver chain sash has been left here",[descriptionTest]),_188760).


test('?- e2c("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_189372)),nondet]):-call(e2c("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_189372).


test('?- e2c("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_188652)),nondet]):-call(e2c("Geordi's VISOR is lying here",[descriptionTest]),_188652).


test('?- e2c("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_190044)),nondet]):-call(e2c("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_190044).


test('?- e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_188820)),nondet]):-call(e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_188820).


test('?- e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_189606)),nondet]):-call(e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_189606).


test('?- e2c("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_188754)),nondet]):-call(e2c("A shard of dilithium crystal is lying here",[descriptionTest]),_188754).


test('?- e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_189408)),nondet]):-call(e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_189408).


test('?- e2c("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_188766)),nondet]):-call(e2c("Captain Picard's wooden flute is sitting here",[descriptionTest]),_188766).


test('?- e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_189378)),nondet]):-call(e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_189378).


test('?- e2c("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_188778)),nondet]):-call(e2c("Commander Riker's trombone has been placed here",[descriptionTest]),_188778).


test('?- e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_189210)),nondet]):-call(e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_189210).


test('?- e2c("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_188706)),nondet]):-call(e2c("A small cup of tea is sitting here",[descriptionTest]),_188706).


test('?- e2c("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_188724)),nondet]):-call(e2c("A bottle of synthehol is standing here",[descriptionTest]),_188724).


test('?- e2c("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_188736)),nondet]):-call(e2c("A bottle of Ferengi ale is sitting here",[descriptionTest]),_188736).


test('?- e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_188760)),nondet]):-call(e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_188760).


test('?- e2c("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_188772)),nondet]):-call(e2c("A small glass of prune juice is sitting here",[descriptionTest]),_188772).


test('?- e2c("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_188742)),nondet]):-call(e2c("A bottle of Vulcan beer is standing here",[descriptionTest]),_188742).


test('?- e2c("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_188814)),nondet]):-call(e2c("You find yourself in the middle of main engineering",[descriptionTest]),_188814).


test('?- e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_188934)),nondet]):-call(e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_188934).


test('?- e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_189234)),nondet]):-call(e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_189234).


test('?- e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_189042)),nondet]):-call(e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_189042).


test('?- e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_188970)),nondet]):-call(e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_188970).


test('?- e2c("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_189150)),nondet]):-call(e2c("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_189150).


test('?- e2c("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_188742)),nondet]):-call(e2c("You're in the middle of Geordi's quarters",[descriptionTest]),_188742).


test('?- e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_188940)),nondet]):-call(e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_188940).


test('?- e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_189264)),nondet]):-call(e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_189264).


test('?- e2c("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_188874)),nondet]):-call(e2c("A neatly made bed has been placed against the northern wall",[descriptionTest]),_188874).


test('?- e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_188844)),nondet]):-call(e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_188844).


test('?- e2c("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_188730)),nondet]):-call(e2c("You're in the middle of Data's quarters",[descriptionTest]),_188730).


test('?- e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_189792)),nondet]):-call(e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_189792).


test('?- e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_189006)),nondet]):-call(e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_189006).


test('?- e2c("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_189030)),nondet]):-call(e2c("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_189030).


test('?- e2c("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_188658)),nondet]):-call(e2c("You're in the dimly lit Brig",[descriptionTest]),_188658).


test('?- e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_189048)),nondet]):-call(e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_189048).


test('?- e2c("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_189126)),nondet]):-call(e2c("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_189126).


test('?- e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_189420)),nondet]):-call(e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_189420).


test('?- e2c(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_195648)),nondet]):-call(e2c('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_195648).


test('?- e2c("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_189132)),nondet]):-call(e2c("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_189132).


test('?- e2c("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_188736)),nondet]):-call(e2c("You're in the Enterprise transporter room",[descriptionTest]),_188736).


test('?- e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_189222)),nondet]):-call(e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_189222).


test('?- e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_189192)),nondet]):-call(e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_189192).


test('?- e2c("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_188730)),nondet]):-call(e2c("You find yourself in a transporter beam",[descriptionTest]),_188730).


test('?- e2c("All you can see is blue flashing light",[descriptionTest])',[true(compound(_188730)),nondet]):-call(e2c("All you can see is blue flashing light",[descriptionTest]),_188730).


test('?- e2c("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_188886)),nondet]):-call(e2c("It feels as though your body is racing around at high speeds",[descriptionTest]),_188886).


test('?- e2c("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_189006)),nondet]):-call(e2c("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_189006).


test('?- e2c("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_188934)),nondet]):-call(e2c("You step through the doors and find yourself in a large school room",[descriptionTest]),_188934).


test('?- e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_189312)),nondet]):-call(e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_189312).


test('?- e2c("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_189066)),nondet]):-call(e2c("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_189066).


test('?- e2c("You\'re in the turbolift",[descriptionTest])',[true(compound(_188616)),nondet]):-call(e2c("You're in the turbolift",[descriptionTest]),_188616).


test('?- e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_188994)),nondet]):-call(e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_188994).


test('?- e2c("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_188886)),nondet]):-call(e2c("Several vertical rows of lights make this place very well lit",[descriptionTest]),_188886).


test('?- e2c("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_188874)),nondet]):-call(e2c("From here, you can access the other decks on the Enterprise",[descriptionTest]),_188874).


test('?- e2c("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_188628)),nondet]):-call(e2c("You're now on Holodeck 2",[descriptionTest]),_188628).


test('?- e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_189312)),nondet]):-call(e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_189312).


test('?- e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_189060)),nondet]):-call(e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_189060).


test('?- e2c("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_188754)),nondet]):-call(e2c("Right now, this holodeck is not functioning",[descriptionTest]),_188754).


test('?- e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_188862)),nondet]):-call(e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_188862).


test('?- e2c("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_188784)),nondet]):-call(e2c("You're in the main cargo bay of the Enterprise",[descriptionTest]),_188784).


test('?- e2c("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_188994)),nondet]):-call(e2c("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_188994).


test('?- e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_189312)),nondet]):-call(e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_189312).


test('?- e2c("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_188688)),nondet]):-call(e2c("You've arrived in Riker's quarters",[descriptionTest]),_188688).


test('?- e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_189264)),nondet]):-call(e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_189264).


test('?- e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_189198)),nondet]):-call(e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_189198).


test('?- e2c("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_188802)),nondet]):-call(e2c("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_188802).


test('?- e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_189438)),nondet]):-call(e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_189438).


test('?- e2c("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_189234)),nondet]):-call(e2c("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_189234).


test('?- e2c("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_188706)),nondet]):-call(e2c("You emerge into a dark narrow alley",[descriptionTest]),_188706).


test('?- e2c("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_188850)),nondet]):-call(e2c("Tall dark brick buildings block your way north and south",[descriptionTest]),_188850).


test('?- e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_189114)),nondet]):-call(e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_189114).


test('?- e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_189150)),nondet]):-call(e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_189150).


test('?- e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_188886)),nondet]):-call(e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_188886).


test('?- e2c("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_188790)),nondet]):-call(e2c("The archway leading out of the holodeck is west",[descriptionTest]),_188790).


test('?- e2c("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_188694)),nondet]):-call(e2c("You're in Doctor Crusher's quarters",[descriptionTest]),_188694).


test('?- e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_189090)),nondet]):-call(e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_189090).


test('?- e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_189180)),nondet]):-call(e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_189180).


test('?- e2c("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_188922)),nondet]):-call(e2c("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_188922).


test('?- e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_189546)),nondet]):-call(e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_189546).


test('?- e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_189018)),nondet]):-call(e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_189018).


test('?- e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_189414)),nondet]):-call(e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_189414).


test('?- e2c("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_188886)),nondet]):-call(e2c("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_188886).


test('?- e2c("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_188814)),nondet]):-call(e2c("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_188814).


test('?- e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_189708)),nondet]):-call(e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_189708).


test('?- e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_188886)),nondet]):-call(e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_188886).


test('?- e2c("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_188796)),nondet]):-call(e2c("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_188796).


test('?- e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_188988)),nondet]):-call(e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_188988).


test('?- e2c("A large grey door leads into space",[descriptionTest])',[true(compound(_188700)),nondet]):-call(e2c("A large grey door leads into space",[descriptionTest]),_188700).


test('?- e2c("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_188886)),nondet]):-call(e2c("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_188886).


test('?- e2c("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_188958)),nondet]):-call(e2c("You can see stars in every direction, which provide the only light here",[descriptionTest]),_188958).


test('?- e2c("You feel very cold",[descriptionTest])',[true(compound(_188586)),nondet]):-call(e2c("You feel very cold",[descriptionTest]),_188586).


test('?- e2c("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_188856)),nondet]):-call(e2c("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_188856).


test('?- e2c("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_188742)),nondet]):-call(e2c("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_188742).


test('?- e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_189354)),nondet]):-call(e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_189354).


test('?- e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_189078)),nondet]):-call(e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_189078).


test('?- e2c("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_188628)),nondet]):-call(e2c("You're in Worf's quarters",[descriptionTest]),_188628).


test('?- e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_189072)),nondet]):-call(e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_189072).


test('?- e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_189486)),nondet]):-call(e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_189486).


test('?- e2c("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_188694)),nondet]):-call(e2c("You emerge into the Enterprise gym",[descriptionTest]),_188694).


test('?- e2c("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_188796)),nondet]):-call(e2c("The room is quite large, with a soft grey floor",[descriptionTest]),_188796).


test('?- e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_189204)),nondet]):-call(e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_189204).


test('?- e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_189168)),nondet]):-call(e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_189168).


test('?- e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_188856)),nondet]):-call(e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_188856).


test('?- e2c("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_188922)),nondet]):-call(e2c("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_188922).


test('?- e2c("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_189012)),nondet]):-call(e2c("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_189012).


test('?- e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_189306)),nondet]):-call(e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_189306).


test('?- e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_189324)),nondet]):-call(e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_189324).


test('?- e2c("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_188778)),nondet]):-call(e2c("Two large windows offer a great view of space",[descriptionTest]),_188778).


test('?- e2c("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_189030)),nondet]):-call(e2c("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_189030).


test('?- e2c("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_188706)),nondet]):-call(e2c("You're in the Enterprise science lab",[descriptionTest]),_188706).


test('?- e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_189096)),nondet]):-call(e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_189096).


test('?- e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_189594)),nondet]):-call(e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_189594).


test('?- e2c("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_188850)),nondet]):-call(e2c("A complex looking computer console is facing this machine",[descriptionTest]),_188850).


test('?- e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_189006)),nondet]):-call(e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_189006).


test('?- e2c("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_188766)),nondet]):-call(e2c("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_188766).


test('?- e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_189000)),nondet]):-call(e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_189000).


test('?- e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_189372)),nondet]):-call(e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_189372).


test('?- e2c("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_189174)),nondet]):-call(e2c("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_189174).


test('?- e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_189570)),nondet]):-call(e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_189570).


test('?- e2c("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_188772)),nondet]):-call(e2c("You're standing in Captain Picard's ready room",[descriptionTest]),_188772).


test('?- e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_189210)),nondet]):-call(e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_189210).


test('?- e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_189114)),nondet]):-call(e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_189114).


test('?- e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_189312)),nondet]):-call(e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_189312).


test('?- e2c("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_188892)),nondet]):-call(e2c("This is where the Captain makes all of his important decisions",[descriptionTest]),_188892).


test('?- e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_189000)),nondet]):-call(e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_189000).


test('?- e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_189312)),nondet]):-call(e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_189312).


test('?- e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_189120)),nondet]):-call(e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_189120).


test('?- e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_188916)),nondet]):-call(e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_188916).


test('?- e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_189264)),nondet]):-call(e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_189264).


test('?- e2c("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_188862)),nondet]):-call(e2c("This is where the ship's pilot and information officer sit",[descriptionTest]),_188862).


test('?- e2c("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_188784)),nondet]):-call(e2c("You're in the conference room of the Enterprise",[descriptionTest]),_188784).


test('?- e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_189330)),nondet]):-call(e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_189330).


test('?- e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_188952)),nondet]):-call(e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_188952).


test('?- e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_189048)),nondet]):-call(e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_189048).


test('?- e2c("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_188880)),nondet]):-call(e2c("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_188880).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_111842)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_111842).


test('?- e2c("no two owners eat pizza",[sanity])',[true(compound(_111834)),nondet]):-call(e2c("no two owners eat pizza",[sanity]),_111834).


test('?- e2c("no three owners eat pizza",[sanity])',[true(compound(_111834)),nondet]):-call(e2c("no three owners eat pizza",[sanity]),_111834).


test('?- e2c("no three owners eat the same pizza",[sanity])',[true(compound(_111836)),nondet]):-call(e2c("no three owners eat the same pizza",[sanity]),_111836).


test('?- e2c("no three owners eat the same kind of pizza",[sanity])',[true(compound(_111838)),nondet]):-call(e2c("no three owners eat the same kind of pizza",[sanity]),_111838).


test('?- e2c("no owners eat the same pizza",[sanity])',[true(compound(_111834)),nondet]):-call(e2c("no owners eat the same pizza",[sanity]),_111834).


test('?- e2c("no owners eat the same kind of pizza",[sanity])',[true(compound(_111836)),nondet]):-call(e2c("no owners eat the same kind of pizza",[sanity]),_111836).


test('?- e2c("there are 5 houses",[sanity])',[true(compound(_111832)),nondet]):-call(e2c("there are 5 houses",[sanity]),_111832).


test('?- e2c("there are not 5 houses",[sanity])',[true(compound(_111832)),nondet]):-call(e2c("there are not 5 houses",[sanity]),_111832).


test('?- e2c("there are not zero houses",[sanity])',[true(compound(_111834)),nondet]):-call(e2c("there are not zero houses",[sanity]),_111834).


test('?- e2c(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_111842)),nondet]):-call(e2c(noun_phrase("less than 2 owners"),[sanity,bug]),_111842).


test('?- e2c(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_111836)),nondet]):-call(e2c(noun_phrase("at most the 5 owners"),[sanity]),_111836).


test('?- e2c(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_111836)),nondet]):-call(e2c(noun_phrase("at most 5 owners"),[sanity]),_111836).


test('?- e2c(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_111836)),nondet]):-call(e2c(noun_phrase("less than 3 owners"),[sanity]),_111836).


test('?- e2c(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_111838)),nondet]):-call(e2c(noun_phrase("at most 50 percent of owners"),[sanity]),_111838).


test('?- e2c(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_111842)),nondet]):-call(e2c(noun_phrase("no three owners"),[sanity,no_working]),_111842).


test('?- e2c("terry writes a non-program.",[tell])',[true(compound(_111834)),nondet]):-call(e2c("terry writes a non-program.",[tell]),_111834).


test('?- e2c("every nonhuman programmer writes a program.",[tell])',[true(compound(_111838)),nondet]):-call(e2c("every nonhuman programmer writes a program.",[tell]),_111838).


test('?- e2c("every human programmer writes a not a program.",[tell])',[true(compound(_111838)),nondet]):-call(e2c("every human programmer writes a not a program.",[tell]),_111838).


test('?- e2c("every human programmer happily writes a not a program.",[tell])',[true(compound(_111840)),nondet]):-call(e2c("every human programmer happily writes a not a program.",[tell]),_111840).


:- end_tests(e2c).

