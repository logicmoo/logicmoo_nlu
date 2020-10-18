

:- begin_tests(test_lex_info).



test('?- test_lex_info("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_177034)),nondet]):-call(test_lex_info("His friends are liked by hers.",[bad_juju,sanity]),_177034).


test('?- test_lex_info("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_177036)),nondet]):-call(test_lex_info("Her friends are not liked by his.",[bad_juju,sanity]),_177036).


test('?- test_lex_info("Do their friends like each other?",[bad_juju,feature])',[true(compound(_177036)),nondet]):-call(test_lex_info("Do their friends like each other?",[bad_juju,feature]),_177036).


test('?- test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_176978),sanity])',[true(compound(_177040)),nondet]):-call(test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_176978),sanity]),_177040).


test('?- test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_176976),sanity])',[true(compound(_177038)),nondet]):-call(test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_176976),sanity]),_177038).


test('?- test_lex_info("There are 5 houses with five different colors.",[riddle(_176980),sanity])',[true(compound(_177042)),nondet]):-call(test_lex_info("There are 5 houses with five different colors.",[riddle(_176980),sanity]),_177042).


test('?- test_lex_info("There are 5 houses",[riddle_prep,sanity])',[true(compound(_177032)),nondet]):-call(test_lex_info("There are 5 houses",[riddle_prep,sanity]),_177032).


test('?- test_lex_info("Each house has a different color",[riddle_prep,sanity])',[true(compound(_177036)),nondet]):-call(test_lex_info("Each house has a different color",[riddle_prep,sanity]),_177036).


test('?- test_lex_info("In each house lives a person with a different nationality.",[riddle(_176984),sanity])',[true(compound(_177046)),nondet]):-call(test_lex_info("In each house lives a person with a different nationality.",[riddle(_176984),sanity]),_177046).


test('?- test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_177058)),nondet]):-call(test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_177058).


test('?- test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_177046)),nondet]):-call(test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_177046).


test('?- test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_177044)),nondet]):-call(test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_177044).


test('?- test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_177048)),nondet]):-call(test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_177048).


test('?- test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_177052)),nondet]):-call(test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_177052).


test('?- test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_177044)),nondet]):-call(test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression]),_177044).


test('?- test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_177048)),nondet]):-call(test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_177048).


test('?- test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_177042)),nondet]):-call(test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_177042).


test('?- test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_177046)),nondet]):-call(test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression]),_177046).


test('?- test_lex_info("The brit lives in the red house.",[riddle(_176978),sanity])',[true(compound(_177040)),nondet]):-call(test_lex_info("The brit lives in the red house.",[riddle(_176978),sanity]),_177040).


test('?- test_lex_info("The swede keeps dogs as pets.",[riddle(_176976),sanity])',[true(compound(_177038)),nondet]):-call(test_lex_info("The swede keeps dogs as pets.",[riddle(_176976),sanity]),_177038).


test('?- test_lex_info("A dane drinks tea.",[riddle(_176974),sanity])',[true(compound(_177036)),nondet]):-call(test_lex_info("A dane drinks tea.",[riddle(_176974),sanity]),_177036).


test('?- test_lex_info("The green house is on the left of the white house.",[riddle(_176982),sanity])',[true(compound(_177044)),nondet]):-call(test_lex_info("The green house is on the left of the white house.",[riddle(_176982),sanity]),_177044).


test('?- test_lex_info("The green house\'s owner drinks coffee.",[riddle(_176978),sanity])',[true(compound(_177040)),nondet]):-call(test_lex_info("The green house's owner drinks coffee.",[riddle(_176978),sanity]),_177040).


test('?- test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_176980),sanity,regression])',[true(compound(_177048)),nondet]):-call(test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_176980),sanity,regression]),_177048).


test('?- test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_176980),sanity])',[true(compound(_177042)),nondet]):-call(test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_176980),sanity]),_177042).


test('?- test_lex_info("The man living in the center house drinks milk.",[riddle(_176982),sanity])',[true(compound(_177044)),nondet]):-call(test_lex_info("The man living in the center house drinks milk.",[riddle(_176982),sanity]),_177044).


test('?- test_lex_info("The Norwegian lives in the first house .",[riddle(_176980),sanity])',[true(compound(_177042)),nondet]):-call(test_lex_info("The Norwegian lives in the first house .",[riddle(_176980),sanity]),_177042).


test('?- test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_176986),sanity])',[true(compound(_177048)),nondet]):-call(test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_176986),sanity]),_177048).


test('?- test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_176986),sanity])',[true(compound(_177048)),nondet]):-call(test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_176986),sanity]),_177048).


test('?- test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_176980),sanity])',[true(compound(_177042)),nondet]):-call(test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_176980),sanity]),_177042).


test('?- test_lex_info("The German smokes Prince.",[riddle(_176976),sanity])',[true(compound(_177038)),nondet]):-call(test_lex_info("The German smokes Prince.",[riddle(_176976),sanity]),_177038).


test('?- test_lex_info("The Norwegian lives next to the blue house.",[riddle(_176980),sanity])',[true(compound(_177042)),nondet]):-call(test_lex_info("The Norwegian lives next to the blue house.",[riddle(_176980),sanity]),_177042).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_176984),sanity])',[true(compound(_177046)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_176984),sanity]),_177046).


test('?- test_lex_info("Who owns the fish?",[riddle(_176974),sanity])',[true(compound(_177036)),nondet]):-call(test_lex_info("Who owns the fish?",[riddle(_176974),sanity]),_177036).


test('?- test_lex_info("One woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("One woman paints.",[quants]),_177026).


test('?- test_lex_info("No woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("No woman paints.",[quants]),_177026).


test('?- test_lex_info("Some woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Some woman paints.",[quants]),_177026).


test('?- test_lex_info("Every woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Every woman paints.",[quants]),_177026).


test('?- test_lex_info("Each woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Each woman paints.",[quants]),_177026).


test('?- test_lex_info("Any woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Any woman paints.",[quants]),_177026).


test('?- test_lex_info("The woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("The woman paints.",[quants]),_177026).


test('?- test_lex_info("The not woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("The not woman paints.",[quants]),_177026).


test('?- test_lex_info("Not a woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not a woman paints.",[quants]),_177026).


test('?- test_lex_info("Not one woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not one woman paints.",[quants]),_177026).


test('?- test_lex_info("Not no woman paints.",[quants_neg_postcond])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not no woman paints.",[quants_neg_postcond]),_177026).


test('?- test_lex_info("Not some woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not some woman paints.",[quants]),_177026).


test('?- test_lex_info("Not every woman paints.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("Not every woman paints.",[quants]),_177028).


test('?- test_lex_info("Not each woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not each woman paints.",[quants]),_177026).


test('?- test_lex_info("Not any woman paints.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not any woman paints.",[quants]),_177026).


test('?- test_lex_info("The women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("The women paint.",[quants]),_177026).


test('?- test_lex_info("Women paint.",[quants])',[true(compound(_177024)),nondet]):-call(test_lex_info("Women paint.",[quants]),_177024).


test('?- test_lex_info("Some women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Some women paint.",[quants]),_177026).


test('?- test_lex_info("No women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("No women paint.",[quants]),_177026).


test('?- test_lex_info("All women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("All women paint.",[quants]),_177026).


test('?- test_lex_info("Any women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Any women paint.",[quants]),_177026).


test('?- test_lex_info("Not women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not women paint.",[quants]),_177026).


test('?- test_lex_info("Not no women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not no women paint.",[quants]),_177026).


test('?- test_lex_info("Not all women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not all women paint.",[quants]),_177026).


test('?- test_lex_info("Not any women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not any women paint.",[quants]),_177026).


test('?- test_lex_info("The three women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("The three women paint.",[quants]),_177026).


test('?- test_lex_info("Three women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Three women paint.",[quants]),_177026).


test('?- test_lex_info("Some three women paint.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("Some three women paint.",[quants]),_177028).


test('?- test_lex_info("No three women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("No three women paint.",[quants]),_177026).


test('?- test_lex_info("Every three women paint.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("Every three women paint.",[quants]),_177028).


test('?- test_lex_info("All three women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("All three women paint.",[quants]),_177026).


test('?- test_lex_info("Any three women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Any three women paint.",[quants]),_177026).


test('?- test_lex_info("Not three women paint.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not three women paint.",[quants]),_177026).


test('?- test_lex_info("Not some three women paint.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("Not some three women paint.",[quants]),_177028).


test('?- test_lex_info("Not no three women paint.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("Not no three women paint.",[quants]),_177028).


test('?- test_lex_info("Not all three women paint.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("Not all three women paint.",[quants]),_177028).


test('?- test_lex_info("Not every three women paint.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("Not every three women paint.",[quants]),_177028).


test('?- test_lex_info("Not any three women paint.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("Not any three women paint.",[quants]),_177028).


test('?- test_lex_info("Not three of the women paint.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("Not three of the women paint.",[quants]),_177028).


test('?- test_lex_info("Not some of the three women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("Not some of the three women paint.",[quants]),_177030).


test('?- test_lex_info("Not no three of the women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("Not no three of the women paint.",[quants]),_177030).


test('?- test_lex_info("Not all three of the women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("Not all three of the women paint.",[quants]),_177030).


test('?- test_lex_info("Not every three of the women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("Not every three of the women paint.",[quants]),_177030).


test('?- test_lex_info("Not any three of the women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("Not any three of the women paint.",[quants]),_177030).


test('?- test_lex_info("Not three of the four women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("Not three of the four women paint.",[quants]),_177030).


test('?- test_lex_info("Not none of three out of the four women paint.",[quants])',[true(compound(_177032)),nondet]):-call(test_lex_info("Not none of three out of the four women paint.",[quants]),_177032).


test('?- test_lex_info("Not all three of the four women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("Not all three of the four women paint.",[quants]),_177030).


test('?- test_lex_info("Not any three of the four women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("Not any three of the four women paint.",[quants]),_177030).


test('?- test_lex_info("Three of the four women paint.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("Three of the four women paint.",[quants]),_177028).


test('?- test_lex_info("Three out of the four women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("Three out of the four women paint.",[quants]),_177030).


test('?- test_lex_info("All three of the four women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("All three of the four women paint.",[quants]),_177030).


test('?- test_lex_info("Any three of the four women paint.",[quants])',[true(compound(_177030)),nondet]):-call(test_lex_info("Any three of the four women paint.",[quants]),_177030).


test('?- test_lex_info("I paint",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("I paint",[pronoun]),_177024).


test('?- test_lex_info("you paint",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("you paint",[pronoun]),_177024).


test('?- test_lex_info("We paint",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("We paint",[pronoun]),_177024).


test('?- test_lex_info("None paint",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("None paint",[pronoun]),_177024).


test('?- test_lex_info("They paint",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("They paint",[pronoun]),_177024).


test('?- test_lex_info("Some paint",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("Some paint",[pronoun]),_177024).


test('?- test_lex_info("It paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("It paints",[pronoun]),_177024).


test('?- test_lex_info("he paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("he paints",[pronoun]),_177024).


test('?- test_lex_info("She paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("She paints",[pronoun]),_177024).


test('?- test_lex_info("Someone paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("Someone paints",[pronoun]),_177024).


test('?- test_lex_info("Anybody paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("Anybody paints",[pronoun]),_177024).


test('?- test_lex_info("Anyone paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("Anyone paints",[pronoun]),_177024).


test('?- test_lex_info("Anything paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Anything paints",[pronoun]),_177026).


test('?- test_lex_info("Everybody paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Everybody paints",[pronoun]),_177026).


test('?- test_lex_info("Everyone paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Everyone paints",[pronoun]),_177026).


test('?- test_lex_info("Everything paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Everything paints",[pronoun]),_177026).


test('?- test_lex_info("Nobody paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("Nobody paints",[pronoun]),_177024).


test('?- test_lex_info("No one paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("No one paints",[pronoun]),_177024).


test('?- test_lex_info("Nothing paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("Nothing paints",[pronoun]),_177024).


test('?- test_lex_info("One paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("One paints",[pronoun]),_177024).


test('?- test_lex_info("Somebody paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Somebody paints",[pronoun]),_177026).


test('?- test_lex_info("Something paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Something paints",[pronoun]),_177026).


test('?- test_lex_info("Not anybody paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not anybody paints",[pronoun]),_177026).


test('?- test_lex_info("Not anyone paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not anyone paints",[pronoun]),_177026).


test('?- test_lex_info("Not anything paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not anything paints",[pronoun]),_177026).


test('?- test_lex_info("Not everybody paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not everybody paints",[pronoun]),_177026).


test('?- test_lex_info("Not everyone paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not everyone paints",[pronoun]),_177026).


test('?- test_lex_info("Not everything paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not everything paints",[pronoun]),_177026).


test('?- test_lex_info("Not nothing paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not nothing paints",[pronoun]),_177026).


test('?- test_lex_info("Not one paints",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("Not one paints",[pronoun]),_177024).


test('?- test_lex_info("Not somebody paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not somebody paints",[pronoun]),_177026).


test('?- test_lex_info("Not something paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("Not something paints",[pronoun]),_177026).


test('?- test_lex_info("She likes i",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("She likes i",[pronoun]),_177024).


test('?- test_lex_info("She likes me",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("She likes me",[pronoun]),_177024).


test('?- test_lex_info("She likes you",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("She likes you",[pronoun]),_177024).


test('?- test_lex_info("She likes it",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("She likes it",[pronoun]),_177024).


test('?- test_lex_info("She likes us",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("She likes us",[pronoun]),_177024).


test('?- test_lex_info("She likes them",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("She likes them",[pronoun]),_177024).


test('?- test_lex_info("She likes no one",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("She likes no one",[pronoun]),_177026).


test('?- test_lex_info("She likes none",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("She likes none",[pronoun]),_177024).


test('?- test_lex_info("She likes him",[pronoun])',[true(compound(_177024)),nondet]):-call(test_lex_info("She likes him",[pronoun]),_177024).


test('?- test_lex_info("She likes herself",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("She likes herself",[pronoun]),_177026).


test('?- test_lex_info("She likes himself",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("She likes himself",[pronoun]),_177026).


test('?- test_lex_info("It is us that paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("It is us that paints",[pronoun]),_177026).


test('?- test_lex_info("It is them that paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("It is them that paints",[pronoun]),_177026).


test('?- test_lex_info("It is he that paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("It is he that paints",[pronoun]),_177026).


test('?- test_lex_info("It is she that paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("It is she that paints",[pronoun]),_177026).


test('?- test_lex_info("It is her that paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("It is her that paints",[pronoun]),_177026).


test('?- test_lex_info("It is him that paints",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("It is him that paints",[pronoun]),_177026).


test('?- test_lex_info("We are us that paint",[pronoun])',[true(compound(_177026)),nondet]):-call(test_lex_info("We are us that paint",[pronoun]),_177026).


test('?- test_lex_info("We are all of us that paint",[pronoun])',[true(compound(_177028)),nondet]):-call(test_lex_info("We are all of us that paint",[pronoun]),_177028).


test('?- test_lex_info("It is everybody that paints",[pronoun])',[true(compound(_177028)),nondet]):-call(test_lex_info("It is everybody that paints",[pronoun]),_177028).


test('?- test_lex_info("Every man that paints likes monet.",[bratko])',[true(compound(_177030)),nondet]):-call(test_lex_info("Every man that paints likes monet.",[bratko]),_177030).


test('?- test_lex_info("A woman that admires John paints.",[bratko])',[true(compound(_177030)),nondet]):-call(test_lex_info("A woman that admires John paints.",[bratko]),_177030).


test('?- test_lex_info("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_177036)),nondet]):-call(test_lex_info("Every woman that likes a man that admires monet paints.",[bratko]),_177036).


test('?- test_lex_info("John likes Annie.",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("John likes Annie.",[bratko]),_177026).


test('?- test_lex_info("Annie likes a man that admires monet.",[bratko])',[true(compound(_177030)),nondet]):-call(test_lex_info("Annie likes a man that admires monet.",[bratko]),_177030).


test('?- test_lex_info("Bertrand Russell wrote principia.",[bratko])',[true(compound(_177030)),nondet]):-call(test_lex_info("Bertrand Russell wrote principia.",[bratko]),_177030).


test('?- test_lex_info("An author wrote principia.",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("An author wrote principia.",[bratko]),_177028).


test('?- test_lex_info("Iraq is a country.",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("Iraq is a country.",[bratko]),_177026).


test('?- test_lex_info("A happy author wrote principia.",[bratko])',[true(compound(_177030)),nondet]):-call(test_lex_info("A happy author wrote principia.",[bratko]),_177030).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_177026).


test('?- test_lex_info("Bertrand is an author.",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("Bertrand is an author.",[bratko]),_177026).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_177026).


test('?- test_lex_info("Every author is a programmer.",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("Every author is a programmer.",[bratko]),_177028).


test('?- test_lex_info("Is Bertrand an programmer?",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("Is Bertrand an programmer?",[bratko]),_177028).


test('?- test_lex_info("What is a author?",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("What is a author?",[bratko]),_177026).


test('?- test_lex_info("What did Bertrand write?",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("What did Bertrand write?",[bratko]),_177028).


test('?- test_lex_info("What is a book?",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("What is a book?",[bratko]),_177026).


test('?- test_lex_info("Principia is a book.",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("Principia is a book.",[bratko]),_177026).


test('?- test_lex_info("Bertrand is Bertrand.",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("Bertrand is Bertrand.",[bratko]),_177026).


test('?- test_lex_info("Shrdlu halts.",[bratko])',[true(compound(_177024)),nondet]):-call(test_lex_info("Shrdlu halts.",[bratko]),_177024).


test('?- test_lex_info("Every student wrote a program.",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("Every student wrote a program.",[bratko]),_177028).


test('?- test_lex_info("Terry writes a program.",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("Terry writes a program.",[bratko]),_177028).


test('?- test_lex_info("Terry writes a program that halts.",[bratko])',[true(compound(_177030)),nondet]):-call(test_lex_info("Terry writes a program that halts.",[bratko]),_177030).


test('?- test_lex_info("An author of every book wrote a program.",[bratko])',[true(compound(_177032)),nondet]):-call(test_lex_info("An author of every book wrote a program.",[bratko]),_177032).


test('?- test_lex_info("A man hapilly maried paints.",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("A man hapilly maried paints.",[bratko]),_177028).


test('?- test_lex_info("A hapilly maried man paints.",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("A hapilly maried man paints.",[bratko]),_177028).


test('?- test_lex_info("A man who knows paints.",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("A man who knows paints.",[bratko]),_177028).


test('?- test_lex_info("A man gives something.",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("A man gives something.",[bratko]),_177026).


test('?- test_lex_info("A man gives his word.",[bratko])',[true(compound(_177026)),nondet]):-call(test_lex_info("A man gives his word.",[bratko]),_177026).


test('?- test_lex_info("A man of his word paints.",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("A man of his word paints.",[bratko]),_177028).


test('?- test_lex_info("A man paints.",[bratko])',[true(compound(_177024)),nondet]):-call(test_lex_info("A man paints.",[bratko]),_177024).


test('?- test_lex_info("A man that paints paints.",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("A man that paints paints.",[bratko]),_177028).


test('?- test_lex_info("A man walks.",[bratko])',[true(compound(_177024)),nondet]):-call(test_lex_info("A man walks.",[bratko]),_177024).


test('?- test_lex_info("A man that walks paints.",[bratko])',[true(compound(_177028)),nondet]):-call(test_lex_info("A man that walks paints.",[bratko]),_177028).


test('?- test_lex_info("It halts.",[bratko])',[true(compound(_177024)),nondet]):-call(test_lex_info("It halts.",[bratko]),_177024).


test('?- test_lex_info("A man of his word that walks paints.",[bratko])',[true(compound(_177030)),nondet]):-call(test_lex_info("A man of his word that walks paints.",[bratko]),_177030).


test('?- test_lex_info("The cost of what the product is changes.",[bratko])',[true(compound(_177032)),nondet]):-call(test_lex_info("The cost of what the product is changes.",[bratko]),_177032).


test('?- test_lex_info("We need a virtual machine server.",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("We need a virtual machine server.",[aindy]),_177030).


test('?- test_lex_info("The virtual machine server should have several VMs.",[aindy])',[true(compound(_177034)),nondet]):-call(test_lex_info("The virtual machine server should have several VMs.",[aindy]),_177034).


test('?- test_lex_info("One VM should be the POSI VM.",[aindy])',[true(compound(_177028)),nondet]):-call(test_lex_info("One VM should be the POSI VM.",[aindy]),_177028).


test('?- test_lex_info("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("One VM should be the FRDCSA.org VM.",[aindy]),_177030).


test('?- test_lex_info("One VM should be the mail server.",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("One VM should be the mail server.",[aindy]),_177030).


test('?- test_lex_info("One computer should be the backup server.",[aindy])',[true(compound(_177032)),nondet]):-call(test_lex_info("One computer should be the backup server.",[aindy]),_177032).


test('?- test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_177048)),nondet]):-call(test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_177048).


test('?- test_lex_info("I need a fast computer for work.",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("I need a fast computer for work.",[aindy]),_177030).


test('?- test_lex_info("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_177040)),nondet]):-call(test_lex_info("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_177040).


test('?- test_lex_info("I need a dedicated computer for network security research.",[aindy])',[true(compound(_177036)),nondet]):-call(test_lex_info("I need a dedicated computer for network security research.",[aindy]),_177036).


test('?- test_lex_info("I need a machine to run Tails on.",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("I need a machine to run Tails on.",[aindy]),_177030).


test('?- test_lex_info("I need a machine off the network for airgap security.",[aindy])',[true(compound(_177034)),nondet]):-call(test_lex_info("I need a machine off the network for airgap security.",[aindy]),_177034).


test('?- test_lex_info("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_177040)),nondet]):-call(test_lex_info("One VM should be the game server for running game development projects.",[aindy]),_177040).


test('?- test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_177034)),nondet]):-call(test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_177034).


test('?- test_lex_info("I could read about how to build a private watson.",[aindy])',[true(compound(_177034)),nondet]):-call(test_lex_info("I could read about how to build a private watson.",[aindy]),_177034).


test('?- test_lex_info("Need backups.",[aindy])',[true(compound(_177024)),nondet]):-call(test_lex_info("Need backups.",[aindy]),_177024).


test('?- test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_177038)),nondet]):-call(test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy]),_177038).


test('?- test_lex_info("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_177036)),nondet]):-call(test_lex_info("Set up schedules for updating the software on all machines.",[aindy]),_177036).


test('?- test_lex_info("Read books on server room layout.",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("Read books on server room layout.",[aindy]),_177030).


test('?- test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_177038)),nondet]):-call(test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_177038).


test('?- test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_177040)),nondet]):-call(test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_177040).


test('?- test_lex_info("I want a gaming computer.  Do I?",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("I want a gaming computer.  Do I?",[aindy]),_177030).


test('?- test_lex_info("I want a windows 7 computer for work.",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("I want a windows 7 computer for work.",[aindy]),_177030).


test('?- test_lex_info("I want a fast linux computer for work.",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("I want a fast linux computer for work.",[aindy]),_177030).


test('?- test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_177050)),nondet]):-call(test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_177050).


test('?- test_lex_info("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_177036)),nondet]):-call(test_lex_info("I could install a fresh operating system on justin for work.",[aindy]),_177036).


test('?- test_lex_info("I probably want a separate git computer.",[aindy])',[true(compound(_177032)),nondet]):-call(test_lex_info("I probably want a separate git computer.",[aindy]),_177032).


test('?- test_lex_info("I need to start buying servers.",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("I need to start buying servers.",[aindy]),_177030).


test('?- test_lex_info("I want a rackmount case for servers.",[aindy])',[true(compound(_177030)),nondet]):-call(test_lex_info("I want a rackmount case for servers.",[aindy]),_177030).


test('?- test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_177036)),nondet]):-call(test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)]),_177036).


test('?- test_lex_info("2 oceans border each african country.",[chat80(tell)])',[true(compound(_177034)),nondet]):-call(test_lex_info("2 oceans border each african country.",[chat80(tell)]),_177034).


test('?- test_lex_info("There are 10 large cars.",[quants])',[true(compound(_177028)),nondet]):-call(test_lex_info("There are 10 large cars.",[quants]),_177028).


test('?- test_lex_info("There are 10 oceans.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("There are 10 oceans.",[quants]),_177026).


test('?- test_lex_info("There are 10 women.",[quants])',[true(compound(_177026)),nondet]):-call(test_lex_info("There are 10 women.",[quants]),_177026).


test('?- test_lex_info("An ocean borders an African country.",[chat80(tell)])',[true(compound(_177034)),nondet]):-call(test_lex_info("An ocean borders an African country.",[chat80(tell)]),_177034).


test('?- test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_177042)),nondet]):-call(test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell]),_177042).


test('?- test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_177044)),nondet]):-call(test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_177044).


test('?- test_lex_info("Bertrand wrote a book.",[bratko(book)])',[true(compound(_177030)),nondet]):-call(test_lex_info("Bertrand wrote a book.",[bratko(book)]),_177030).


test('?- test_lex_info("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_177032)),nondet]):-call(test_lex_info("Bertrand wrote nothing.",[bratko(book)]),_177032).


test('?- test_lex_info("Bertrand wrote.",[bratko(book)])',[true(compound(_177030)),nondet]):-call(test_lex_info("Bertrand wrote.",[bratko(book)]),_177030).


test('?- test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_177034)),nondet]):-call(test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)]),_177034).


test('?- test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_177032)),nondet]):-call(test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)]),_177032).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_177034)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_177034).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_177036)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_177036).


test('?- test_lex_info("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_177034)),nondet]):-call(test_lex_info("What did alfred write to Bertrand?",[bratko(book)]),_177034).


test('?- test_lex_info("Alfred wrote a letter.",[bratko(book)])',[true(compound(_177030)),nondet]):-call(test_lex_info("Alfred wrote a letter.",[bratko(book)]),_177030).


test('?- test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_177034)),nondet]):-call(test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)]),_177034).


test('?- test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_177034)),nondet]):-call(test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)]),_177034).


test('?- test_lex_info("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_177032)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand.",[bratko(book)]),_177032).


test('?- test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_177034)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)]),_177034).


test('?- test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_177034)),nondet]):-call(test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)]),_177034).


test('?- test_lex_info("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_177034)),nondet]):-call(test_lex_info("Who did alfred write a letter to?",[bratko(book)]),_177034).


test('?- test_lex_info("Alfred gave it.",[bratko(book)])',[true(compound(_177030)),nondet]):-call(test_lex_info("Alfred gave it.",[bratko(book)]),_177030).


test('?- test_lex_info("Alfred gave a book.",[bratko(book)])',[true(compound(_177030)),nondet]):-call(test_lex_info("Alfred gave a book.",[bratko(book)]),_177030).


test('?- test_lex_info("a pride of lions paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a pride of lions paint",[of]),_177026).


test('?- test_lex_info("a flock of birds paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a flock of birds paint",[of]),_177026).


test('?- test_lex_info("a litter of pups paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a litter of pups paint",[of]),_177026).


test('?- test_lex_info("a prickle of porcupines paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a prickle of porcupines paint",[of]),_177028).


test('?- test_lex_info("a litter of cubs paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a litter of cubs paint",[of]),_177026).


test('?- test_lex_info("a pack of dogs paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a pack of dogs paint",[of]),_177026).


test('?- test_lex_info("a colony of beavers paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a colony of beavers paint",[of]),_177028).


test('?- test_lex_info("a gaggle of geese paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a gaggle of geese paint",[of]),_177028).


test('?- test_lex_info("a family of otters paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a family of otters paint",[of]),_177028).


test('?- test_lex_info("a huddle of walruses paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a huddle of walruses paint",[of]),_177028).


test('?- test_lex_info("a herd of deer paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a herd of deer paint",[of]),_177026).


test('?- test_lex_info("a culture of bacteria paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a culture of bacteria paint",[of]),_177028).


test('?- test_lex_info("a swarm of bees paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a swarm of bees paint",[of]),_177026).


test('?- test_lex_info("a bed of clams paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a bed of clams paint",[of]),_177026).


test('?- test_lex_info("a school of cod paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a school of cod paint",[of]),_177026).


test('?- test_lex_info("a herd of dinosaurs paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a herd of dinosaurs paint",[of]),_177028).


test('?- test_lex_info("a mess of iguanas paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a mess of iguanas paint",[of]),_177028).


test('?- test_lex_info("a mob of wombats paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a mob of wombats paint",[of]),_177026).


test('?- test_lex_info("a pod of pelicans paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a pod of pelicans paint",[of]),_177028).


test('?- test_lex_info("a troop of boy scouts paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a troop of boy scouts paint",[of]),_177028).


test('?- test_lex_info("a team of athletes paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a team of athletes paint",[of]),_177028).


test('?- test_lex_info("a panel of experts paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a panel of experts paint",[of]),_177028).


test('?- test_lex_info("a crew of sailors paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a crew of sailors paint",[of]),_177028).


test('?- test_lex_info("a band of robbers paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a band of robbers paint",[of]),_177028).


test('?- test_lex_info("a troupe of performers paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a troupe of performers paint",[of]),_177028).


test('?- test_lex_info("a crowd of onlookers paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a crowd of onlookers paint",[of]),_177028).


test('?- test_lex_info("a curse of painters paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("a curse of painters paint",[of]),_177028).


test('?- test_lex_info("a fleet of cars paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a fleet of cars paint",[of]),_177026).


test('?- test_lex_info("a pair of shoes paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a pair of shoes paint",[of]),_177026).


test('?- test_lex_info("a fleet of ships paint",[of])',[true(compound(_177026)),nondet]):-call(test_lex_info("a fleet of ships paint",[of]),_177026).


test('?- test_lex_info("an anthology of stories paint",[of])',[true(compound(_177028)),nondet]):-call(test_lex_info("an anthology of stories paint",[of]),_177028).


test('?- test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_260384)),nondet]):-call(test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_260384).


test('?- test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_260354)),nondet]):-call(test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_260354).


test('?- test_lex_info("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_260492)),nondet]):-call(test_lex_info("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_260492).


test('?- test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_260336)),nondet]):-call(test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_260336).


test('?- test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_260384)),nondet]):-call(test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_260384).


test('?- test_lex_info("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_260480)),nondet]):-call(test_lex_info("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_260480).


test('?- test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_260438)),nondet]):-call(test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_260438).


test('?- test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_260630)),nondet]):-call(test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_260630).


test('?- test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_260402)),nondet]):-call(test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest]),_260402).


test('?- test_lex_info("Logged on player character",[descriptionTest])',[true(compound(_260210)),nondet]):-call(test_lex_info("Logged on player character",[descriptionTest]),_260210).


test('?- test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_260468)),nondet]):-call(test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_260468).


test('?- test_lex_info("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_260414)),nondet]):-call(test_lex_info("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_260414).


test('?- test_lex_info("Wesley is her son",[descriptionTest])',[true(compound(_260156)),nondet]):-call(test_lex_info("Wesley is her son",[descriptionTest]),_260156).


test('?- test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_260804)),nondet]):-call(test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_260804).


test('?- test_lex_info("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_260234)),nondet]):-call(test_lex_info("Counselor Deanna Troi is here",[descriptionTest]),_260234).


test('?- test_lex_info("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_260330)),nondet]):-call(test_lex_info("Counselor Troi is the ship's main counselor",[descriptionTest]),_260330).


test('?- test_lex_info("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_260486)),nondet]):-call(test_lex_info("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_260486).


test('?- test_lex_info("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_260360)),nondet]):-call(test_lex_info("Commander William Riker is here, staring at you",[descriptionTest]),_260360).


test('?- test_lex_info("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_260366)),nondet]):-call(test_lex_info("Commander Riker is the Enterprise's first officer",[descriptionTest]),_260366).


test('?- test_lex_info("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_260336)),nondet]):-call(test_lex_info("He's in charge of keeping the crew in line",[descriptionTest]),_260336).


test('?- test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_260402)),nondet]):-call(test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_260402).


test('?- test_lex_info("Captain Picard is a very important man",[descriptionTest])',[true(compound(_260300)),nondet]):-call(test_lex_info("Captain Picard is a very important man",[descriptionTest]),_260300).


test('?- test_lex_info("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_260402)),nondet]):-call(test_lex_info("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_260402).


test('?- test_lex_info("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_260246)),nondet]):-call(test_lex_info("He's very smart, and very wise",[descriptionTest]),_260246).


test('?- test_lex_info("Don\'t mess with him!",[descriptionTest])',[true(compound(_260174)),nondet]):-call(test_lex_info("Don't mess with him!",[descriptionTest]),_260174).


test('?- test_lex_info("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_260252)),nondet]):-call(test_lex_info("Guinan is here, tending the bar",[descriptionTest]),_260252).


test('?- test_lex_info("Guinan is a strange being",[descriptionTest])',[true(compound(_260210)),nondet]):-call(test_lex_info("Guinan is a strange being",[descriptionTest]),_260210).


test('?- test_lex_info("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_260918)),nondet]):-call(test_lex_info("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_260918).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_260420)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_260420).


test('?- test_lex_info("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_260420)),nondet]):-call(test_lex_info("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_260420).


test('?- test_lex_info("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_260720)),nondet]):-call(test_lex_info("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_260720).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_260414)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_260414).


test('?- test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_260438)),nondet]):-call(test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_260438).


test('?- test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_260708)),nondet]):-call(test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_260708).


test('?- test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_260630)),nondet]):-call(test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_260630).


test('?- test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_260420)),nondet]):-call(test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_260420).


test('?- test_lex_info("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_260300)),nondet]):-call(test_lex_info("Livingston is Captain Picard's pet fish",[descriptionTest]),_260300).


test('?- test_lex_info("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_260552)),nondet]):-call(test_lex_info("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_260552).


test('?- test_lex_info("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_260402)),nondet]):-call(test_lex_info("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_260402).


test('?- test_lex_info("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_260270)),nondet]):-call(test_lex_info("Spot is Data's orange coloured cat",[descriptionTest]),_260270).


test('?- test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_260792)),nondet]):-call(test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_260792).


test('?- test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_260414)),nondet]):-call(test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest]),_260414).


test('?- test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_260396)),nondet]):-call(test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_260396).


test('?- test_lex_info("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_260738)),nondet]):-call(test_lex_info("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_260738).


test('?- test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_260384)),nondet]):-call(test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_260384).


test('?- test_lex_info("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_260252)),nondet]):-call(test_lex_info("Alexander Rozhenko is Worf's son",[descriptionTest]),_260252).


test('?- test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_260534)),nondet]):-call(test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_260534).


test('?- test_lex_info("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_260450)),nondet]):-call(test_lex_info("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_260450).


test('?- test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_260396)),nondet]):-call(test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest]),_260396).


test('?- test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_260798)),nondet]):-call(test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_260798).


test('?- test_lex_info("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_260276)),nondet]):-call(test_lex_info("A large phaser rifle is lying here",[descriptionTest]),_260276).


test('?- test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_260870)),nondet]):-call(test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_260870).


test('?- test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_260474)),nondet]):-call(test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_260474).


test('?- test_lex_info("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260822)),nondet]):-call(test_lex_info("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260822).


test('?- test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_260474)),nondet]):-call(test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_260474).


test('?- test_lex_info("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260846)),nondet]):-call(test_lex_info("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260846).


test('?- test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_260450)),nondet]):-call(test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_260450).


test('?- test_lex_info("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260822)),nondet]):-call(test_lex_info("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260822).


test('?- test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_260372)),nondet]):-call(test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest]),_260372).


test('?- test_lex_info("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_260912)),nondet]):-call(test_lex_info("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_260912).


test('?- test_lex_info("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_260342)),nondet]):-call(test_lex_info("A Starfleet communication badge is lying here",[descriptionTest]),_260342).


test('?- test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_261380)),nondet]):-call(test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_261380).


test('?- test_lex_info("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_260336)),nondet]):-call(test_lex_info("Worf's silver chain sash has been left here",[descriptionTest]),_260336).


test('?- test_lex_info("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_260948)),nondet]):-call(test_lex_info("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_260948).


test('?- test_lex_info("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_260228)),nondet]):-call(test_lex_info("Geordi's VISOR is lying here",[descriptionTest]),_260228).


test('?- test_lex_info("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_261620)),nondet]):-call(test_lex_info("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_261620).


test('?- test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_260396)),nondet]):-call(test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_260396).


test('?- test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_261182)),nondet]):-call(test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_261182).


test('?- test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_260330)),nondet]):-call(test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest]),_260330).


test('?- test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_260984)),nondet]):-call(test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_260984).


test('?- test_lex_info("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_260342)),nondet]):-call(test_lex_info("Captain Picard's wooden flute is sitting here",[descriptionTest]),_260342).


test('?- test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_260954)),nondet]):-call(test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_260954).


test('?- test_lex_info("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_260354)),nondet]):-call(test_lex_info("Commander Riker's trombone has been placed here",[descriptionTest]),_260354).


test('?- test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_260786)),nondet]):-call(test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_260786).


test('?- test_lex_info("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_260282)),nondet]):-call(test_lex_info("A small cup of tea is sitting here",[descriptionTest]),_260282).


test('?- test_lex_info("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_260300)),nondet]):-call(test_lex_info("A bottle of synthehol is standing here",[descriptionTest]),_260300).


test('?- test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_260312)),nondet]):-call(test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest]),_260312).


test('?- test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_260336)),nondet]):-call(test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_260336).


test('?- test_lex_info("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_260348)),nondet]):-call(test_lex_info("A small glass of prune juice is sitting here",[descriptionTest]),_260348).


test('?- test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_260318)),nondet]):-call(test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest]),_260318).


test('?- test_lex_info("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_260390)),nondet]):-call(test_lex_info("You find yourself in the middle of main engineering",[descriptionTest]),_260390).


test('?- test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_260510)),nondet]):-call(test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_260510).


test('?- test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_260810)),nondet]):-call(test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_260810).


test('?- test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_260618)),nondet]):-call(test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_260618).


test('?- test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_260546)),nondet]):-call(test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_260546).


test('?- test_lex_info("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_260726)),nondet]):-call(test_lex_info("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_260726).


test('?- test_lex_info("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_260318)),nondet]):-call(test_lex_info("You're in the middle of Geordi's quarters",[descriptionTest]),_260318).


test('?- test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_260516)),nondet]):-call(test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_260516).


test('?- test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_260840)),nondet]):-call(test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_260840).


test('?- test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_260450)),nondet]):-call(test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest]),_260450).


test('?- test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_260420)),nondet]):-call(test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_260420).


test('?- test_lex_info("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_260306)),nondet]):-call(test_lex_info("You're in the middle of Data's quarters",[descriptionTest]),_260306).


test('?- test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_261368)),nondet]):-call(test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_261368).


test('?- test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_260582)),nondet]):-call(test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_260582).


test('?- test_lex_info("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_260606)),nondet]):-call(test_lex_info("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_260606).


test('?- test_lex_info("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_260234)),nondet]):-call(test_lex_info("You're in the dimly lit Brig",[descriptionTest]),_260234).


test('?- test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_260624)),nondet]):-call(test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_260624).


test('?- test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_260702)),nondet]):-call(test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_260702).


test('?- test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_260996)),nondet]):-call(test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_260996).


test('?- test_lex_info(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_267224)),nondet]):-call(test_lex_info('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_267224).


test('?- test_lex_info("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_260708)),nondet]):-call(test_lex_info("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_260708).


test('?- test_lex_info("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_260312)),nondet]):-call(test_lex_info("You're in the Enterprise transporter room",[descriptionTest]),_260312).


test('?- test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_260798)),nondet]):-call(test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_260798).


test('?- test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_260768)),nondet]):-call(test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_260768).


test('?- test_lex_info("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_260306)),nondet]):-call(test_lex_info("You find yourself in a transporter beam",[descriptionTest]),_260306).


test('?- test_lex_info("All you can see is blue flashing light",[descriptionTest])',[true(compound(_260306)),nondet]):-call(test_lex_info("All you can see is blue flashing light",[descriptionTest]),_260306).


test('?- test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_260462)),nondet]):-call(test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest]),_260462).


test('?- test_lex_info("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_260582)),nondet]):-call(test_lex_info("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_260582).


test('?- test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_260510)),nondet]):-call(test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest]),_260510).


test('?- test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_260888)),nondet]):-call(test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_260888).


test('?- test_lex_info("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_260642)),nondet]):-call(test_lex_info("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_260642).


test('?- test_lex_info("You\'re in the turbolift",[descriptionTest])',[true(compound(_260192)),nondet]):-call(test_lex_info("You're in the turbolift",[descriptionTest]),_260192).


test('?- test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_260570)),nondet]):-call(test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_260570).


test('?- test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_260462)),nondet]):-call(test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest]),_260462).


test('?- test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_260450)),nondet]):-call(test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest]),_260450).


test('?- test_lex_info("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_260204)),nondet]):-call(test_lex_info("You're now on Holodeck 2",[descriptionTest]),_260204).


test('?- test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_260888)),nondet]):-call(test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_260888).


test('?- test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_260636)),nondet]):-call(test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_260636).


test('?- test_lex_info("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_260330)),nondet]):-call(test_lex_info("Right now, this holodeck is not functioning",[descriptionTest]),_260330).


test('?- test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_260438)),nondet]):-call(test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_260438).


test('?- test_lex_info("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_260360)),nondet]):-call(test_lex_info("You're in the main cargo bay of the Enterprise",[descriptionTest]),_260360).


test('?- test_lex_info("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_260570)),nondet]):-call(test_lex_info("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_260570).


test('?- test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_260888)),nondet]):-call(test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_260888).


test('?- test_lex_info("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_260264)),nondet]):-call(test_lex_info("You've arrived in Riker's quarters",[descriptionTest]),_260264).


test('?- test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_260840)),nondet]):-call(test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_260840).


test('?- test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_260774)),nondet]):-call(test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_260774).


test('?- test_lex_info("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_260378)),nondet]):-call(test_lex_info("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_260378).


test('?- test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_261014)),nondet]):-call(test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_261014).


test('?- test_lex_info("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_260810)),nondet]):-call(test_lex_info("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_260810).


test('?- test_lex_info("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_260282)),nondet]):-call(test_lex_info("You emerge into a dark narrow alley",[descriptionTest]),_260282).


test('?- test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_260426)),nondet]):-call(test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest]),_260426).


test('?- test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_260690)),nondet]):-call(test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_260690).


test('?- test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_260726)),nondet]):-call(test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_260726).


test('?- test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_260462)),nondet]):-call(test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_260462).


test('?- test_lex_info("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_260366)),nondet]):-call(test_lex_info("The archway leading out of the holodeck is west",[descriptionTest]),_260366).


test('?- test_lex_info("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_260270)),nondet]):-call(test_lex_info("You're in Doctor Crusher's quarters",[descriptionTest]),_260270).


test('?- test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_260666)),nondet]):-call(test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_260666).


test('?- test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_260756)),nondet]):-call(test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_260756).


test('?- test_lex_info("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_260498)),nondet]):-call(test_lex_info("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_260498).


test('?- test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_261122)),nondet]):-call(test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_261122).


test('?- test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_260594)),nondet]):-call(test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_260594).


test('?- test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_260990)),nondet]):-call(test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_260990).


test('?- test_lex_info("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_260462)),nondet]):-call(test_lex_info("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_260462).


test('?- test_lex_info("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_260390)),nondet]):-call(test_lex_info("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_260390).


test('?- test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_261284)),nondet]):-call(test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_261284).


test('?- test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_260462)),nondet]):-call(test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_260462).


test('?- test_lex_info("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_260372)),nondet]):-call(test_lex_info("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_260372).


test('?- test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_260564)),nondet]):-call(test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_260564).


test('?- test_lex_info("A large grey door leads into space",[descriptionTest])',[true(compound(_260276)),nondet]):-call(test_lex_info("A large grey door leads into space",[descriptionTest]),_260276).


test('?- test_lex_info("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_260462)),nondet]):-call(test_lex_info("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_260462).


test('?- test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_260534)),nondet]):-call(test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest]),_260534).


test('?- test_lex_info("You feel very cold",[descriptionTest])',[true(compound(_260162)),nondet]):-call(test_lex_info("You feel very cold",[descriptionTest]),_260162).


test('?- test_lex_info("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_260432)),nondet]):-call(test_lex_info("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_260432).


test('?- test_lex_info("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_260318)),nondet]):-call(test_lex_info("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_260318).


test('?- test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_260930)),nondet]):-call(test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_260930).


test('?- test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_260654)),nondet]):-call(test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_260654).


test('?- test_lex_info("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_260204)),nondet]):-call(test_lex_info("You're in Worf's quarters",[descriptionTest]),_260204).


test('?- test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_260648)),nondet]):-call(test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_260648).


test('?- test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_261062)),nondet]):-call(test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_261062).


test('?- test_lex_info("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_260270)),nondet]):-call(test_lex_info("You emerge into the Enterprise gym",[descriptionTest]),_260270).


test('?- test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_260372)),nondet]):-call(test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest]),_260372).


test('?- test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_260780)),nondet]):-call(test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_260780).


test('?- test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_260744)),nondet]):-call(test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_260744).


test('?- test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_260432)),nondet]):-call(test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_260432).


test('?- test_lex_info("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_260498)),nondet]):-call(test_lex_info("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_260498).


test('?- test_lex_info("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_260588)),nondet]):-call(test_lex_info("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_260588).


test('?- test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_260882)),nondet]):-call(test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_260882).


test('?- test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_260900)),nondet]):-call(test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_260900).


test('?- test_lex_info("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_260354)),nondet]):-call(test_lex_info("Two large windows offer a great view of space",[descriptionTest]),_260354).


test('?- test_lex_info("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_260606)),nondet]):-call(test_lex_info("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_260606).


test('?- test_lex_info("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_260282)),nondet]):-call(test_lex_info("You're in the Enterprise science lab",[descriptionTest]),_260282).


test('?- test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_260672)),nondet]):-call(test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_260672).


test('?- test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_261170)),nondet]):-call(test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_261170).


test('?- test_lex_info("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_260426)),nondet]):-call(test_lex_info("A complex looking computer console is facing this machine",[descriptionTest]),_260426).


test('?- test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_260582)),nondet]):-call(test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_260582).


test('?- test_lex_info("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_260342)),nondet]):-call(test_lex_info("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_260342).


test('?- test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_260576)),nondet]):-call(test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_260576).


test('?- test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_260948)),nondet]):-call(test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_260948).


test('?- test_lex_info("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_260750)),nondet]):-call(test_lex_info("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_260750).


test('?- test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_261146)),nondet]):-call(test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_261146).


test('?- test_lex_info("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_260348)),nondet]):-call(test_lex_info("You're standing in Captain Picard's ready room",[descriptionTest]),_260348).


test('?- test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_260786)),nondet]):-call(test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_260786).


test('?- test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_260690)),nondet]):-call(test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_260690).


test('?- test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_260888)),nondet]):-call(test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_260888).


test('?- test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_260468)),nondet]):-call(test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest]),_260468).


test('?- test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_260576)),nondet]):-call(test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_260576).


test('?- test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_260888)),nondet]):-call(test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_260888).


test('?- test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_260696)),nondet]):-call(test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_260696).


test('?- test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_260492)),nondet]):-call(test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_260492).


test('?- test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_260840)),nondet]):-call(test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_260840).


test('?- test_lex_info("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_260438)),nondet]):-call(test_lex_info("This is where the ship's pilot and information officer sit",[descriptionTest]),_260438).


test('?- test_lex_info("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_260360)),nondet]):-call(test_lex_info("You're in the conference room of the Enterprise",[descriptionTest]),_260360).


test('?- test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_260906)),nondet]):-call(test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_260906).


test('?- test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_260528)),nondet]):-call(test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_260528).


test('?- test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_260624)),nondet]):-call(test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_260624).


test('?- test_lex_info("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_260456)),nondet]):-call(test_lex_info("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_260456).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_177036)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_177036).


test('?- test_lex_info("no two owners eat pizza",[sanity])',[true(compound(_177028)),nondet]):-call(test_lex_info("no two owners eat pizza",[sanity]),_177028).


test('?- test_lex_info("no three owners eat pizza",[sanity])',[true(compound(_177028)),nondet]):-call(test_lex_info("no three owners eat pizza",[sanity]),_177028).


test('?- test_lex_info("no three owners eat the same pizza",[sanity])',[true(compound(_177030)),nondet]):-call(test_lex_info("no three owners eat the same pizza",[sanity]),_177030).


test('?- test_lex_info("no three owners eat the same kind of pizza",[sanity])',[true(compound(_177032)),nondet]):-call(test_lex_info("no three owners eat the same kind of pizza",[sanity]),_177032).


test('?- test_lex_info("no owners eat the same pizza",[sanity])',[true(compound(_177028)),nondet]):-call(test_lex_info("no owners eat the same pizza",[sanity]),_177028).


test('?- test_lex_info("no owners eat the same kind of pizza",[sanity])',[true(compound(_177030)),nondet]):-call(test_lex_info("no owners eat the same kind of pizza",[sanity]),_177030).


test('?- test_lex_info("there are 5 houses",[sanity])',[true(compound(_177026)),nondet]):-call(test_lex_info("there are 5 houses",[sanity]),_177026).


test('?- test_lex_info("there are not 5 houses",[sanity])',[true(compound(_177026)),nondet]):-call(test_lex_info("there are not 5 houses",[sanity]),_177026).


test('?- test_lex_info("there are not zero houses",[sanity])',[true(compound(_177028)),nondet]):-call(test_lex_info("there are not zero houses",[sanity]),_177028).


test('?- test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_177036)),nondet]):-call(test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug]),_177036).


test('?- test_lex_info(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_177030)),nondet]):-call(test_lex_info(noun_phrase("at most the 5 owners"),[sanity]),_177030).


test('?- test_lex_info(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_177030)),nondet]):-call(test_lex_info(noun_phrase("at most 5 owners"),[sanity]),_177030).


test('?- test_lex_info(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_177030)),nondet]):-call(test_lex_info(noun_phrase("less than 3 owners"),[sanity]),_177030).


test('?- test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_177032)),nondet]):-call(test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity]),_177032).


test('?- test_lex_info(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_177036)),nondet]):-call(test_lex_info(noun_phrase("no three owners"),[sanity,no_working]),_177036).


test('?- test_lex_info("terry writes a non-program.",[tell])',[true(compound(_177028)),nondet]):-call(test_lex_info("terry writes a non-program.",[tell]),_177028).


test('?- test_lex_info("every nonhuman programmer writes a program.",[tell])',[true(compound(_177032)),nondet]):-call(test_lex_info("every nonhuman programmer writes a program.",[tell]),_177032).


test('?- test_lex_info("every human programmer writes a not a program.",[tell])',[true(compound(_177032)),nondet]):-call(test_lex_info("every human programmer writes a not a program.",[tell]),_177032).


test('?- test_lex_info("every human programmer happily writes a not a program.",[tell])',[true(compound(_177034)),nondet]):-call(test_lex_info("every human programmer happily writes a not a program.",[tell]),_177034).


:- end_tests(test_lex_info).



:- begin_tests(chat80).



test('?- chat80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_177078)),nondet]):-call(chat80("His friends are liked by hers.",[bad_juju,sanity]),_177078).


test('?- chat80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_177080)),nondet]):-call(chat80("Her friends are not liked by his.",[bad_juju,sanity]),_177080).


test('?- chat80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_177080)),nondet]):-call(chat80("Do their friends like each other?",[bad_juju,feature]),_177080).


test('?- chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_177022),sanity])',[true(compound(_177084)),nondet]):-call(chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_177022),sanity]),_177084).


test('?- chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_177020),sanity])',[true(compound(_177082)),nondet]):-call(chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_177020),sanity]),_177082).


test('?- chat80("There are 5 houses with five different colors.",[riddle(_177024),sanity])',[true(compound(_177086)),nondet]):-call(chat80("There are 5 houses with five different colors.",[riddle(_177024),sanity]),_177086).


test('?- chat80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_177076)),nondet]):-call(chat80("There are 5 houses",[riddle_prep,sanity]),_177076).


test('?- chat80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_177080)),nondet]):-call(chat80("Each house has a different color",[riddle_prep,sanity]),_177080).


test('?- chat80("In each house lives a person with a different nationality.",[riddle(_177028),sanity])',[true(compound(_177090)),nondet]):-call(chat80("In each house lives a person with a different nationality.",[riddle(_177028),sanity]),_177090).


test('?- chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_177102)),nondet]):-call(chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_177102).


test('?- chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_177090)),nondet]):-call(chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_177090).


test('?- chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_177088)),nondet]):-call(chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_177088).


test('?- chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_177092)),nondet]):-call(chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_177092).


test('?- chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_177096)),nondet]):-call(chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_177096).


test('?- chat80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_177088)),nondet]):-call(chat80("No owners have the same pet.",[riddle(1),sanity,regression]),_177088).


test('?- chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_177092)),nondet]):-call(chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_177092).


test('?- chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_177086)),nondet]):-call(chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_177086).


test('?- chat80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_177090)),nondet]):-call(chat80("No two owners have the same pet.",[riddle(1),sanity,regression]),_177090).


test('?- chat80("The brit lives in the red house.",[riddle(_177022),sanity])',[true(compound(_177084)),nondet]):-call(chat80("The brit lives in the red house.",[riddle(_177022),sanity]),_177084).


test('?- chat80("The swede keeps dogs as pets.",[riddle(_177020),sanity])',[true(compound(_177082)),nondet]):-call(chat80("The swede keeps dogs as pets.",[riddle(_177020),sanity]),_177082).


test('?- chat80("A dane drinks tea.",[riddle(_177018),sanity])',[true(compound(_177080)),nondet]):-call(chat80("A dane drinks tea.",[riddle(_177018),sanity]),_177080).


test('?- chat80("The green house is on the left of the white house.",[riddle(_177026),sanity])',[true(compound(_177088)),nondet]):-call(chat80("The green house is on the left of the white house.",[riddle(_177026),sanity]),_177088).


test('?- chat80("The green house\'s owner drinks coffee.",[riddle(_177022),sanity])',[true(compound(_177084)),nondet]):-call(chat80("The green house's owner drinks coffee.",[riddle(_177022),sanity]),_177084).


test('?- chat80("The person who smokes Pall Mall rears birds.",[riddle(_177024),sanity,regression])',[true(compound(_177092)),nondet]):-call(chat80("The person who smokes Pall Mall rears birds.",[riddle(_177024),sanity,regression]),_177092).


test('?- chat80("The owner of the yellow house smokes Dunhill.",[riddle(_177024),sanity])',[true(compound(_177086)),nondet]):-call(chat80("The owner of the yellow house smokes Dunhill.",[riddle(_177024),sanity]),_177086).


test('?- chat80("The man living in the center house drinks milk.",[riddle(_177026),sanity])',[true(compound(_177088)),nondet]):-call(chat80("The man living in the center house drinks milk.",[riddle(_177026),sanity]),_177088).


test('?- chat80("The Norwegian lives in the first house .",[riddle(_177024),sanity])',[true(compound(_177086)),nondet]):-call(chat80("The Norwegian lives in the first house .",[riddle(_177024),sanity]),_177086).


test('?- chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_177030),sanity])',[true(compound(_177092)),nondet]):-call(chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_177030),sanity]),_177092).


test('?- chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_177030),sanity])',[true(compound(_177092)),nondet]):-call(chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_177030),sanity]),_177092).


test('?- chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_177024),sanity])',[true(compound(_177086)),nondet]):-call(chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_177024),sanity]),_177086).


test('?- chat80("The German smokes Prince.",[riddle(_177020),sanity])',[true(compound(_177082)),nondet]):-call(chat80("The German smokes Prince.",[riddle(_177020),sanity]),_177082).


test('?- chat80("The Norwegian lives next to the blue house.",[riddle(_177024),sanity])',[true(compound(_177086)),nondet]):-call(chat80("The Norwegian lives next to the blue house.",[riddle(_177024),sanity]),_177086).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_177028),sanity])',[true(compound(_177090)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_177028),sanity]),_177090).


test('?- chat80("Who owns the fish?",[riddle(_177018),sanity])',[true(compound(_177080)),nondet]):-call(chat80("Who owns the fish?",[riddle(_177018),sanity]),_177080).


test('?- chat80("One woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("One woman paints.",[quants]),_177070).


test('?- chat80("No woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("No woman paints.",[quants]),_177070).


test('?- chat80("Some woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Some woman paints.",[quants]),_177070).


test('?- chat80("Every woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Every woman paints.",[quants]),_177070).


test('?- chat80("Each woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Each woman paints.",[quants]),_177070).


test('?- chat80("Any woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Any woman paints.",[quants]),_177070).


test('?- chat80("The woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("The woman paints.",[quants]),_177070).


test('?- chat80("The not woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("The not woman paints.",[quants]),_177070).


test('?- chat80("Not a woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Not a woman paints.",[quants]),_177070).


test('?- chat80("Not one woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Not one woman paints.",[quants]),_177070).


test('?- chat80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_177070)),nondet]):-call(chat80("Not no woman paints.",[quants_neg_postcond]),_177070).


test('?- chat80("Not some woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Not some woman paints.",[quants]),_177070).


test('?- chat80("Not every woman paints.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("Not every woman paints.",[quants]),_177072).


test('?- chat80("Not each woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Not each woman paints.",[quants]),_177070).


test('?- chat80("Not any woman paints.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Not any woman paints.",[quants]),_177070).


test('?- chat80("The women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("The women paint.",[quants]),_177070).


test('?- chat80("Women paint.",[quants])',[true(compound(_177068)),nondet]):-call(chat80("Women paint.",[quants]),_177068).


test('?- chat80("Some women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Some women paint.",[quants]),_177070).


test('?- chat80("No women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("No women paint.",[quants]),_177070).


test('?- chat80("All women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("All women paint.",[quants]),_177070).


test('?- chat80("Any women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Any women paint.",[quants]),_177070).


test('?- chat80("Not women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Not women paint.",[quants]),_177070).


test('?- chat80("Not no women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Not no women paint.",[quants]),_177070).


test('?- chat80("Not all women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Not all women paint.",[quants]),_177070).


test('?- chat80("Not any women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Not any women paint.",[quants]),_177070).


test('?- chat80("The three women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("The three women paint.",[quants]),_177070).


test('?- chat80("Three women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Three women paint.",[quants]),_177070).


test('?- chat80("Some three women paint.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("Some three women paint.",[quants]),_177072).


test('?- chat80("No three women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("No three women paint.",[quants]),_177070).


test('?- chat80("Every three women paint.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("Every three women paint.",[quants]),_177072).


test('?- chat80("All three women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("All three women paint.",[quants]),_177070).


test('?- chat80("Any three women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Any three women paint.",[quants]),_177070).


test('?- chat80("Not three women paint.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("Not three women paint.",[quants]),_177070).


test('?- chat80("Not some three women paint.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("Not some three women paint.",[quants]),_177072).


test('?- chat80("Not no three women paint.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("Not no three women paint.",[quants]),_177072).


test('?- chat80("Not all three women paint.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("Not all three women paint.",[quants]),_177072).


test('?- chat80("Not every three women paint.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("Not every three women paint.",[quants]),_177072).


test('?- chat80("Not any three women paint.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("Not any three women paint.",[quants]),_177072).


test('?- chat80("Not three of the women paint.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("Not three of the women paint.",[quants]),_177072).


test('?- chat80("Not some of the three women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("Not some of the three women paint.",[quants]),_177074).


test('?- chat80("Not no three of the women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("Not no three of the women paint.",[quants]),_177074).


test('?- chat80("Not all three of the women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("Not all three of the women paint.",[quants]),_177074).


test('?- chat80("Not every three of the women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("Not every three of the women paint.",[quants]),_177074).


test('?- chat80("Not any three of the women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("Not any three of the women paint.",[quants]),_177074).


test('?- chat80("Not three of the four women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("Not three of the four women paint.",[quants]),_177074).


test('?- chat80("Not none of three out of the four women paint.",[quants])',[true(compound(_177076)),nondet]):-call(chat80("Not none of three out of the four women paint.",[quants]),_177076).


test('?- chat80("Not all three of the four women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("Not all three of the four women paint.",[quants]),_177074).


test('?- chat80("Not any three of the four women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("Not any three of the four women paint.",[quants]),_177074).


test('?- chat80("Three of the four women paint.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("Three of the four women paint.",[quants]),_177072).


test('?- chat80("Three out of the four women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("Three out of the four women paint.",[quants]),_177074).


test('?- chat80("All three of the four women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("All three of the four women paint.",[quants]),_177074).


test('?- chat80("Any three of the four women paint.",[quants])',[true(compound(_177074)),nondet]):-call(chat80("Any three of the four women paint.",[quants]),_177074).


test('?- chat80("I paint",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("I paint",[pronoun]),_177068).


test('?- chat80("you paint",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("you paint",[pronoun]),_177068).


test('?- chat80("We paint",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("We paint",[pronoun]),_177068).


test('?- chat80("None paint",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("None paint",[pronoun]),_177068).


test('?- chat80("They paint",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("They paint",[pronoun]),_177068).


test('?- chat80("Some paint",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("Some paint",[pronoun]),_177068).


test('?- chat80("It paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("It paints",[pronoun]),_177068).


test('?- chat80("he paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("he paints",[pronoun]),_177068).


test('?- chat80("She paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("She paints",[pronoun]),_177068).


test('?- chat80("Someone paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("Someone paints",[pronoun]),_177068).


test('?- chat80("Anybody paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("Anybody paints",[pronoun]),_177068).


test('?- chat80("Anyone paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("Anyone paints",[pronoun]),_177068).


test('?- chat80("Anything paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Anything paints",[pronoun]),_177070).


test('?- chat80("Everybody paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Everybody paints",[pronoun]),_177070).


test('?- chat80("Everyone paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Everyone paints",[pronoun]),_177070).


test('?- chat80("Everything paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Everything paints",[pronoun]),_177070).


test('?- chat80("Nobody paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("Nobody paints",[pronoun]),_177068).


test('?- chat80("No one paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("No one paints",[pronoun]),_177068).


test('?- chat80("Nothing paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("Nothing paints",[pronoun]),_177068).


test('?- chat80("One paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("One paints",[pronoun]),_177068).


test('?- chat80("Somebody paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Somebody paints",[pronoun]),_177070).


test('?- chat80("Something paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Something paints",[pronoun]),_177070).


test('?- chat80("Not anybody paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Not anybody paints",[pronoun]),_177070).


test('?- chat80("Not anyone paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Not anyone paints",[pronoun]),_177070).


test('?- chat80("Not anything paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Not anything paints",[pronoun]),_177070).


test('?- chat80("Not everybody paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Not everybody paints",[pronoun]),_177070).


test('?- chat80("Not everyone paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Not everyone paints",[pronoun]),_177070).


test('?- chat80("Not everything paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Not everything paints",[pronoun]),_177070).


test('?- chat80("Not nothing paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Not nothing paints",[pronoun]),_177070).


test('?- chat80("Not one paints",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("Not one paints",[pronoun]),_177068).


test('?- chat80("Not somebody paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Not somebody paints",[pronoun]),_177070).


test('?- chat80("Not something paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("Not something paints",[pronoun]),_177070).


test('?- chat80("She likes i",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("She likes i",[pronoun]),_177068).


test('?- chat80("She likes me",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("She likes me",[pronoun]),_177068).


test('?- chat80("She likes you",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("She likes you",[pronoun]),_177068).


test('?- chat80("She likes it",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("She likes it",[pronoun]),_177068).


test('?- chat80("She likes us",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("She likes us",[pronoun]),_177068).


test('?- chat80("She likes them",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("She likes them",[pronoun]),_177068).


test('?- chat80("She likes no one",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("She likes no one",[pronoun]),_177070).


test('?- chat80("She likes none",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("She likes none",[pronoun]),_177068).


test('?- chat80("She likes him",[pronoun])',[true(compound(_177068)),nondet]):-call(chat80("She likes him",[pronoun]),_177068).


test('?- chat80("She likes herself",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("She likes herself",[pronoun]),_177070).


test('?- chat80("She likes himself",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("She likes himself",[pronoun]),_177070).


test('?- chat80("It is us that paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("It is us that paints",[pronoun]),_177070).


test('?- chat80("It is them that paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("It is them that paints",[pronoun]),_177070).


test('?- chat80("It is he that paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("It is he that paints",[pronoun]),_177070).


test('?- chat80("It is she that paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("It is she that paints",[pronoun]),_177070).


test('?- chat80("It is her that paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("It is her that paints",[pronoun]),_177070).


test('?- chat80("It is him that paints",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("It is him that paints",[pronoun]),_177070).


test('?- chat80("We are us that paint",[pronoun])',[true(compound(_177070)),nondet]):-call(chat80("We are us that paint",[pronoun]),_177070).


test('?- chat80("We are all of us that paint",[pronoun])',[true(compound(_177072)),nondet]):-call(chat80("We are all of us that paint",[pronoun]),_177072).


test('?- chat80("It is everybody that paints",[pronoun])',[true(compound(_177072)),nondet]):-call(chat80("It is everybody that paints",[pronoun]),_177072).


test('?- chat80("Every man that paints likes monet.",[bratko])',[true(compound(_177074)),nondet]):-call(chat80("Every man that paints likes monet.",[bratko]),_177074).


test('?- chat80("A woman that admires John paints.",[bratko])',[true(compound(_177074)),nondet]):-call(chat80("A woman that admires John paints.",[bratko]),_177074).


test('?- chat80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_177080)),nondet]):-call(chat80("Every woman that likes a man that admires monet paints.",[bratko]),_177080).


test('?- chat80("John likes Annie.",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("John likes Annie.",[bratko]),_177070).


test('?- chat80("Annie likes a man that admires monet.",[bratko])',[true(compound(_177074)),nondet]):-call(chat80("Annie likes a man that admires monet.",[bratko]),_177074).


test('?- chat80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_177074)),nondet]):-call(chat80("Bertrand Russell wrote principia.",[bratko]),_177074).


test('?- chat80("An author wrote principia.",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("An author wrote principia.",[bratko]),_177072).


test('?- chat80("Iraq is a country.",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("Iraq is a country.",[bratko]),_177070).


test('?- chat80("A happy author wrote principia.",[bratko])',[true(compound(_177074)),nondet]):-call(chat80("A happy author wrote principia.",[bratko]),_177074).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_177070).


test('?- chat80("Bertrand is an author.",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("Bertrand is an author.",[bratko]),_177070).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_177070).


test('?- chat80("Every author is a programmer.",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("Every author is a programmer.",[bratko]),_177072).


test('?- chat80("Is Bertrand an programmer?",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("Is Bertrand an programmer?",[bratko]),_177072).


test('?- chat80("What is a author?",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("What is a author?",[bratko]),_177070).


test('?- chat80("What did Bertrand write?",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("What did Bertrand write?",[bratko]),_177072).


test('?- chat80("What is a book?",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("What is a book?",[bratko]),_177070).


test('?- chat80("Principia is a book.",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("Principia is a book.",[bratko]),_177070).


test('?- chat80("Bertrand is Bertrand.",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("Bertrand is Bertrand.",[bratko]),_177070).


test('?- chat80("Shrdlu halts.",[bratko])',[true(compound(_177068)),nondet]):-call(chat80("Shrdlu halts.",[bratko]),_177068).


test('?- chat80("Every student wrote a program.",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("Every student wrote a program.",[bratko]),_177072).


test('?- chat80("Terry writes a program.",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("Terry writes a program.",[bratko]),_177072).


test('?- chat80("Terry writes a program that halts.",[bratko])',[true(compound(_177074)),nondet]):-call(chat80("Terry writes a program that halts.",[bratko]),_177074).


test('?- chat80("An author of every book wrote a program.",[bratko])',[true(compound(_177076)),nondet]):-call(chat80("An author of every book wrote a program.",[bratko]),_177076).


test('?- chat80("A man hapilly maried paints.",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("A man hapilly maried paints.",[bratko]),_177072).


test('?- chat80("A hapilly maried man paints.",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("A hapilly maried man paints.",[bratko]),_177072).


test('?- chat80("A man who knows paints.",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("A man who knows paints.",[bratko]),_177072).


test('?- chat80("A man gives something.",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("A man gives something.",[bratko]),_177070).


test('?- chat80("A man gives his word.",[bratko])',[true(compound(_177070)),nondet]):-call(chat80("A man gives his word.",[bratko]),_177070).


test('?- chat80("A man of his word paints.",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("A man of his word paints.",[bratko]),_177072).


test('?- chat80("A man paints.",[bratko])',[true(compound(_177068)),nondet]):-call(chat80("A man paints.",[bratko]),_177068).


test('?- chat80("A man that paints paints.",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("A man that paints paints.",[bratko]),_177072).


test('?- chat80("A man walks.",[bratko])',[true(compound(_177068)),nondet]):-call(chat80("A man walks.",[bratko]),_177068).


test('?- chat80("A man that walks paints.",[bratko])',[true(compound(_177072)),nondet]):-call(chat80("A man that walks paints.",[bratko]),_177072).


test('?- chat80("It halts.",[bratko])',[true(compound(_177068)),nondet]):-call(chat80("It halts.",[bratko]),_177068).


test('?- chat80("A man of his word that walks paints.",[bratko])',[true(compound(_177074)),nondet]):-call(chat80("A man of his word that walks paints.",[bratko]),_177074).


test('?- chat80("The cost of what the product is changes.",[bratko])',[true(compound(_177076)),nondet]):-call(chat80("The cost of what the product is changes.",[bratko]),_177076).


test('?- chat80("We need a virtual machine server.",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("We need a virtual machine server.",[aindy]),_177074).


test('?- chat80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_177078)),nondet]):-call(chat80("The virtual machine server should have several VMs.",[aindy]),_177078).


test('?- chat80("One VM should be the POSI VM.",[aindy])',[true(compound(_177072)),nondet]):-call(chat80("One VM should be the POSI VM.",[aindy]),_177072).


test('?- chat80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("One VM should be the FRDCSA.org VM.",[aindy]),_177074).


test('?- chat80("One VM should be the mail server.",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("One VM should be the mail server.",[aindy]),_177074).


test('?- chat80("One computer should be the backup server.",[aindy])',[true(compound(_177076)),nondet]):-call(chat80("One computer should be the backup server.",[aindy]),_177076).


test('?- chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_177092)),nondet]):-call(chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_177092).


test('?- chat80("I need a fast computer for work.",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("I need a fast computer for work.",[aindy]),_177074).


test('?- chat80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_177084)),nondet]):-call(chat80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_177084).


test('?- chat80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_177080)),nondet]):-call(chat80("I need a dedicated computer for network security research.",[aindy]),_177080).


test('?- chat80("I need a machine to run Tails on.",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("I need a machine to run Tails on.",[aindy]),_177074).


test('?- chat80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_177078)),nondet]):-call(chat80("I need a machine off the network for airgap security.",[aindy]),_177078).


test('?- chat80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_177084)),nondet]):-call(chat80("One VM should be the game server for running game development projects.",[aindy]),_177084).


test('?- chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_177078)),nondet]):-call(chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_177078).


test('?- chat80("I could read about how to build a private watson.",[aindy])',[true(compound(_177078)),nondet]):-call(chat80("I could read about how to build a private watson.",[aindy]),_177078).


test('?- chat80("Need backups.",[aindy])',[true(compound(_177068)),nondet]):-call(chat80("Need backups.",[aindy]),_177068).


test('?- chat80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_177082)),nondet]):-call(chat80("Practice setting up backups of a machine to a different machine.",[aindy]),_177082).


test('?- chat80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_177080)),nondet]):-call(chat80("Set up schedules for updating the software on all machines.",[aindy]),_177080).


test('?- chat80("Read books on server room layout.",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("Read books on server room layout.",[aindy]),_177074).


test('?- chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_177082)),nondet]):-call(chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_177082).


test('?- chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_177084)),nondet]):-call(chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_177084).


test('?- chat80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("I want a gaming computer.  Do I?",[aindy]),_177074).


test('?- chat80("I want a windows 7 computer for work.",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("I want a windows 7 computer for work.",[aindy]),_177074).


test('?- chat80("I want a fast linux computer for work.",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("I want a fast linux computer for work.",[aindy]),_177074).


test('?- chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_177094)),nondet]):-call(chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_177094).


test('?- chat80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_177080)),nondet]):-call(chat80("I could install a fresh operating system on justin for work.",[aindy]),_177080).


test('?- chat80("I probably want a separate git computer.",[aindy])',[true(compound(_177076)),nondet]):-call(chat80("I probably want a separate git computer.",[aindy]),_177076).


test('?- chat80("I need to start buying servers.",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("I need to start buying servers.",[aindy]),_177074).


test('?- chat80("I want a rackmount case for servers.",[aindy])',[true(compound(_177074)),nondet]):-call(chat80("I want a rackmount case for servers.",[aindy]),_177074).


test('?- chat80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_177080)),nondet]):-call(chat80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_177080).


test('?- chat80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_177078)),nondet]):-call(chat80("2 oceans border each african country.",[chat80(tell)]),_177078).


test('?- chat80("There are 10 large cars.",[quants])',[true(compound(_177072)),nondet]):-call(chat80("There are 10 large cars.",[quants]),_177072).


test('?- chat80("There are 10 oceans.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("There are 10 oceans.",[quants]),_177070).


test('?- chat80("There are 10 women.",[quants])',[true(compound(_177070)),nondet]):-call(chat80("There are 10 women.",[quants]),_177070).


test('?- chat80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_177078)),nondet]):-call(chat80("An ocean borders an African country.",[chat80(tell)]),_177078).


test('?- chat80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_177086)),nondet]):-call(chat80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_177086).


test('?- chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_177088)),nondet]):-call(chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_177088).


test('?- chat80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_177074)),nondet]):-call(chat80("Bertrand wrote a book.",[bratko(book)]),_177074).


test('?- chat80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_177076)),nondet]):-call(chat80("Bertrand wrote nothing.",[bratko(book)]),_177076).


test('?- chat80("Bertrand wrote.",[bratko(book)])',[true(compound(_177074)),nondet]):-call(chat80("Bertrand wrote.",[bratko(book)]),_177074).


test('?- chat80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_177078)),nondet]):-call(chat80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_177078).


test('?- chat80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_177076)),nondet]):-call(chat80("Bertrand wrote about Gottlob.",[bratko(book)]),_177076).


test('?- chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_177078)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_177078).


test('?- chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_177080)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_177080).


test('?- chat80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_177078)),nondet]):-call(chat80("What did alfred write to Bertrand?",[bratko(book)]),_177078).


test('?- chat80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_177074)),nondet]):-call(chat80("Alfred wrote a letter.",[bratko(book)]),_177074).


test('?- chat80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_177078)),nondet]):-call(chat80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_177078).


test('?- chat80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_177078)),nondet]):-call(chat80("Alfred wrote something to Bertrand.",[bratko(book)]),_177078).


test('?- chat80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_177076)),nondet]):-call(chat80("Alfred wrote to Bertrand.",[bratko(book)]),_177076).


test('?- chat80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_177078)),nondet]):-call(chat80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_177078).


test('?- chat80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_177078)),nondet]):-call(chat80("Alfred wrote Bertrand a letter.",[bratko(book)]),_177078).


test('?- chat80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_177078)),nondet]):-call(chat80("Who did alfred write a letter to?",[bratko(book)]),_177078).


test('?- chat80("Alfred gave it.",[bratko(book)])',[true(compound(_177074)),nondet]):-call(chat80("Alfred gave it.",[bratko(book)]),_177074).


test('?- chat80("Alfred gave a book.",[bratko(book)])',[true(compound(_177074)),nondet]):-call(chat80("Alfred gave a book.",[bratko(book)]),_177074).


test('?- chat80("a pride of lions paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a pride of lions paint",[of]),_177070).


test('?- chat80("a flock of birds paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a flock of birds paint",[of]),_177070).


test('?- chat80("a litter of pups paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a litter of pups paint",[of]),_177070).


test('?- chat80("a prickle of porcupines paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a prickle of porcupines paint",[of]),_177072).


test('?- chat80("a litter of cubs paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a litter of cubs paint",[of]),_177070).


test('?- chat80("a pack of dogs paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a pack of dogs paint",[of]),_177070).


test('?- chat80("a colony of beavers paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a colony of beavers paint",[of]),_177072).


test('?- chat80("a gaggle of geese paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a gaggle of geese paint",[of]),_177072).


test('?- chat80("a family of otters paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a family of otters paint",[of]),_177072).


test('?- chat80("a huddle of walruses paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a huddle of walruses paint",[of]),_177072).


test('?- chat80("a herd of deer paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a herd of deer paint",[of]),_177070).


test('?- chat80("a culture of bacteria paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a culture of bacteria paint",[of]),_177072).


test('?- chat80("a swarm of bees paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a swarm of bees paint",[of]),_177070).


test('?- chat80("a bed of clams paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a bed of clams paint",[of]),_177070).


test('?- chat80("a school of cod paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a school of cod paint",[of]),_177070).


test('?- chat80("a herd of dinosaurs paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a herd of dinosaurs paint",[of]),_177072).


test('?- chat80("a mess of iguanas paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a mess of iguanas paint",[of]),_177072).


test('?- chat80("a mob of wombats paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a mob of wombats paint",[of]),_177070).


test('?- chat80("a pod of pelicans paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a pod of pelicans paint",[of]),_177072).


test('?- chat80("a troop of boy scouts paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a troop of boy scouts paint",[of]),_177072).


test('?- chat80("a team of athletes paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a team of athletes paint",[of]),_177072).


test('?- chat80("a panel of experts paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a panel of experts paint",[of]),_177072).


test('?- chat80("a crew of sailors paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a crew of sailors paint",[of]),_177072).


test('?- chat80("a band of robbers paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a band of robbers paint",[of]),_177072).


test('?- chat80("a troupe of performers paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a troupe of performers paint",[of]),_177072).


test('?- chat80("a crowd of onlookers paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a crowd of onlookers paint",[of]),_177072).


test('?- chat80("a curse of painters paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("a curse of painters paint",[of]),_177072).


test('?- chat80("a fleet of cars paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a fleet of cars paint",[of]),_177070).


test('?- chat80("a pair of shoes paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a pair of shoes paint",[of]),_177070).


test('?- chat80("a fleet of ships paint",[of])',[true(compound(_177070)),nondet]):-call(chat80("a fleet of ships paint",[of]),_177070).


test('?- chat80("an anthology of stories paint",[of])',[true(compound(_177072)),nondet]):-call(chat80("an anthology of stories paint",[of]),_177072).


test('?- chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_260428)),nondet]):-call(chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_260428).


test('?- chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_260398)),nondet]):-call(chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_260398).


test('?- chat80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_260536)),nondet]):-call(chat80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_260536).


test('?- chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_260380)),nondet]):-call(chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_260380).


test('?- chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_260428)),nondet]):-call(chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_260428).


test('?- chat80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_260524)),nondet]):-call(chat80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_260524).


test('?- chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_260482)),nondet]):-call(chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_260482).


test('?- chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_260674)),nondet]):-call(chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_260674).


test('?- chat80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_260446)),nondet]):-call(chat80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_260446).


test('?- chat80("Logged on player character",[descriptionTest])',[true(compound(_260254)),nondet]):-call(chat80("Logged on player character",[descriptionTest]),_260254).


test('?- chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_260512)),nondet]):-call(chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_260512).


test('?- chat80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_260458)),nondet]):-call(chat80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_260458).


test('?- chat80("Wesley is her son",[descriptionTest])',[true(compound(_260200)),nondet]):-call(chat80("Wesley is her son",[descriptionTest]),_260200).


test('?- chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_260848)),nondet]):-call(chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_260848).


test('?- chat80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_260278)),nondet]):-call(chat80("Counselor Deanna Troi is here",[descriptionTest]),_260278).


test('?- chat80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_260374)),nondet]):-call(chat80("Counselor Troi is the ship's main counselor",[descriptionTest]),_260374).


test('?- chat80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_260530)),nondet]):-call(chat80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_260530).


test('?- chat80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_260404)),nondet]):-call(chat80("Commander William Riker is here, staring at you",[descriptionTest]),_260404).


test('?- chat80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_260410)),nondet]):-call(chat80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_260410).


test('?- chat80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_260380)),nondet]):-call(chat80("He's in charge of keeping the crew in line",[descriptionTest]),_260380).


test('?- chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_260446)),nondet]):-call(chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_260446).


test('?- chat80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_260344)),nondet]):-call(chat80("Captain Picard is a very important man",[descriptionTest]),_260344).


test('?- chat80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_260446)),nondet]):-call(chat80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_260446).


test('?- chat80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_260290)),nondet]):-call(chat80("He's very smart, and very wise",[descriptionTest]),_260290).


test('?- chat80("Don\'t mess with him!",[descriptionTest])',[true(compound(_260218)),nondet]):-call(chat80("Don't mess with him!",[descriptionTest]),_260218).


test('?- chat80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_260296)),nondet]):-call(chat80("Guinan is here, tending the bar",[descriptionTest]),_260296).


test('?- chat80("Guinan is a strange being",[descriptionTest])',[true(compound(_260254)),nondet]):-call(chat80("Guinan is a strange being",[descriptionTest]),_260254).


test('?- chat80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_260962)),nondet]):-call(chat80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_260962).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_260464)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_260464).


test('?- chat80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_260464)),nondet]):-call(chat80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_260464).


test('?- chat80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_260764)),nondet]):-call(chat80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_260764).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_260458)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_260458).


test('?- chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_260482)),nondet]):-call(chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_260482).


test('?- chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_260752)),nondet]):-call(chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_260752).


test('?- chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_260674)),nondet]):-call(chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_260674).


test('?- chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_260464)),nondet]):-call(chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_260464).


test('?- chat80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_260344)),nondet]):-call(chat80("Livingston is Captain Picard's pet fish",[descriptionTest]),_260344).


test('?- chat80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_260596)),nondet]):-call(chat80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_260596).


test('?- chat80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_260446)),nondet]):-call(chat80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_260446).


test('?- chat80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_260314)),nondet]):-call(chat80("Spot is Data's orange coloured cat",[descriptionTest]),_260314).


test('?- chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_260836)),nondet]):-call(chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_260836).


test('?- chat80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_260458)),nondet]):-call(chat80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_260458).


test('?- chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_260440)),nondet]):-call(chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_260440).


test('?- chat80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_260782)),nondet]):-call(chat80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_260782).


test('?- chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_260428)),nondet]):-call(chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_260428).


test('?- chat80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_260296)),nondet]):-call(chat80("Alexander Rozhenko is Worf's son",[descriptionTest]),_260296).


test('?- chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_260578)),nondet]):-call(chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_260578).


test('?- chat80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_260494)),nondet]):-call(chat80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_260494).


test('?- chat80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_260440)),nondet]):-call(chat80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_260440).


test('?- chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_260842)),nondet]):-call(chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_260842).


test('?- chat80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_260320)),nondet]):-call(chat80("A large phaser rifle is lying here",[descriptionTest]),_260320).


test('?- chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_260914)),nondet]):-call(chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_260914).


test('?- chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_260518)),nondet]):-call(chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_260518).


test('?- chat80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260866)),nondet]):-call(chat80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260866).


test('?- chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_260518)),nondet]):-call(chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_260518).


test('?- chat80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260890)),nondet]):-call(chat80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260890).


test('?- chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_260494)),nondet]):-call(chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_260494).


test('?- chat80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260866)),nondet]):-call(chat80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260866).


test('?- chat80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_260416)),nondet]):-call(chat80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_260416).


test('?- chat80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_260956)),nondet]):-call(chat80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_260956).


test('?- chat80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_260386)),nondet]):-call(chat80("A Starfleet communication badge is lying here",[descriptionTest]),_260386).


test('?- chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_261424)),nondet]):-call(chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_261424).


test('?- chat80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_260380)),nondet]):-call(chat80("Worf's silver chain sash has been left here",[descriptionTest]),_260380).


test('?- chat80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_260992)),nondet]):-call(chat80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_260992).


test('?- chat80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_260272)),nondet]):-call(chat80("Geordi's VISOR is lying here",[descriptionTest]),_260272).


test('?- chat80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_261664)),nondet]):-call(chat80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_261664).


test('?- chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_260440)),nondet]):-call(chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_260440).


test('?- chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_261226)),nondet]):-call(chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_261226).


test('?- chat80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_260374)),nondet]):-call(chat80("A shard of dilithium crystal is lying here",[descriptionTest]),_260374).


test('?- chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_261028)),nondet]):-call(chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_261028).


test('?- chat80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_260386)),nondet]):-call(chat80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_260386).


test('?- chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_260998)),nondet]):-call(chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_260998).


test('?- chat80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_260398)),nondet]):-call(chat80("Commander Riker's trombone has been placed here",[descriptionTest]),_260398).


test('?- chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_260830)),nondet]):-call(chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_260830).


test('?- chat80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_260326)),nondet]):-call(chat80("A small cup of tea is sitting here",[descriptionTest]),_260326).


test('?- chat80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_260344)),nondet]):-call(chat80("A bottle of synthehol is standing here",[descriptionTest]),_260344).


test('?- chat80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_260356)),nondet]):-call(chat80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_260356).


test('?- chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_260380)),nondet]):-call(chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_260380).


test('?- chat80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_260392)),nondet]):-call(chat80("A small glass of prune juice is sitting here",[descriptionTest]),_260392).


test('?- chat80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_260362)),nondet]):-call(chat80("A bottle of Vulcan beer is standing here",[descriptionTest]),_260362).


test('?- chat80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_260434)),nondet]):-call(chat80("You find yourself in the middle of main engineering",[descriptionTest]),_260434).


test('?- chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_260554)),nondet]):-call(chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_260554).


test('?- chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_260854)),nondet]):-call(chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_260854).


test('?- chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_260662)),nondet]):-call(chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_260662).


test('?- chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_260590)),nondet]):-call(chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_260590).


test('?- chat80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_260770)),nondet]):-call(chat80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_260770).


test('?- chat80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_260362)),nondet]):-call(chat80("You're in the middle of Geordi's quarters",[descriptionTest]),_260362).


test('?- chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_260560)),nondet]):-call(chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_260560).


test('?- chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_260884)),nondet]):-call(chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_260884).


test('?- chat80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_260494)),nondet]):-call(chat80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_260494).


test('?- chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_260464)),nondet]):-call(chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_260464).


test('?- chat80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_260350)),nondet]):-call(chat80("You're in the middle of Data's quarters",[descriptionTest]),_260350).


test('?- chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_261412)),nondet]):-call(chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_261412).


test('?- chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_260626)),nondet]):-call(chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_260626).


test('?- chat80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_260650)),nondet]):-call(chat80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_260650).


test('?- chat80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_260278)),nondet]):-call(chat80("You're in the dimly lit Brig",[descriptionTest]),_260278).


test('?- chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_260668)),nondet]):-call(chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_260668).


test('?- chat80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_260746)),nondet]):-call(chat80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_260746).


test('?- chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_261040)),nondet]):-call(chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_261040).


test('?- chat80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_267268)),nondet]):-call(chat80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_267268).


test('?- chat80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_260752)),nondet]):-call(chat80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_260752).


test('?- chat80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_260356)),nondet]):-call(chat80("You're in the Enterprise transporter room",[descriptionTest]),_260356).


test('?- chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_260842)),nondet]):-call(chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_260842).


test('?- chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_260812)),nondet]):-call(chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_260812).


test('?- chat80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_260350)),nondet]):-call(chat80("You find yourself in a transporter beam",[descriptionTest]),_260350).


test('?- chat80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_260350)),nondet]):-call(chat80("All you can see is blue flashing light",[descriptionTest]),_260350).


test('?- chat80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_260506)),nondet]):-call(chat80("It feels as though your body is racing around at high speeds",[descriptionTest]),_260506).


test('?- chat80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_260626)),nondet]):-call(chat80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_260626).


test('?- chat80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_260554)),nondet]):-call(chat80("You step through the doors and find yourself in a large school room",[descriptionTest]),_260554).


test('?- chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_260932)),nondet]):-call(chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_260932).


test('?- chat80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_260686)),nondet]):-call(chat80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_260686).


test('?- chat80("You\'re in the turbolift",[descriptionTest])',[true(compound(_260236)),nondet]):-call(chat80("You're in the turbolift",[descriptionTest]),_260236).


test('?- chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_260614)),nondet]):-call(chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_260614).


test('?- chat80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_260506)),nondet]):-call(chat80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_260506).


test('?- chat80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_260494)),nondet]):-call(chat80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_260494).


test('?- chat80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_260248)),nondet]):-call(chat80("You're now on Holodeck 2",[descriptionTest]),_260248).


test('?- chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_260932)),nondet]):-call(chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_260932).


test('?- chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_260680)),nondet]):-call(chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_260680).


test('?- chat80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_260374)),nondet]):-call(chat80("Right now, this holodeck is not functioning",[descriptionTest]),_260374).


test('?- chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_260482)),nondet]):-call(chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_260482).


test('?- chat80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_260404)),nondet]):-call(chat80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_260404).


test('?- chat80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_260614)),nondet]):-call(chat80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_260614).


test('?- chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_260932)),nondet]):-call(chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_260932).


test('?- chat80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_260308)),nondet]):-call(chat80("You've arrived in Riker's quarters",[descriptionTest]),_260308).


test('?- chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_260884)),nondet]):-call(chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_260884).


test('?- chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_260818)),nondet]):-call(chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_260818).


test('?- chat80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_260422)),nondet]):-call(chat80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_260422).


test('?- chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_261058)),nondet]):-call(chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_261058).


test('?- chat80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_260854)),nondet]):-call(chat80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_260854).


test('?- chat80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_260326)),nondet]):-call(chat80("You emerge into a dark narrow alley",[descriptionTest]),_260326).


test('?- chat80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_260470)),nondet]):-call(chat80("Tall dark brick buildings block your way north and south",[descriptionTest]),_260470).


test('?- chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_260734)),nondet]):-call(chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_260734).


test('?- chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_260770)),nondet]):-call(chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_260770).


test('?- chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_260506)),nondet]):-call(chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_260506).


test('?- chat80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_260410)),nondet]):-call(chat80("The archway leading out of the holodeck is west",[descriptionTest]),_260410).


test('?- chat80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_260314)),nondet]):-call(chat80("You're in Doctor Crusher's quarters",[descriptionTest]),_260314).


test('?- chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_260710)),nondet]):-call(chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_260710).


test('?- chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_260800)),nondet]):-call(chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_260800).


test('?- chat80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_260542)),nondet]):-call(chat80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_260542).


test('?- chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_261166)),nondet]):-call(chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_261166).


test('?- chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_260638)),nondet]):-call(chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_260638).


test('?- chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_261034)),nondet]):-call(chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_261034).


test('?- chat80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_260506)),nondet]):-call(chat80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_260506).


test('?- chat80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_260434)),nondet]):-call(chat80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_260434).


test('?- chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_261328)),nondet]):-call(chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_261328).


test('?- chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_260506)),nondet]):-call(chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_260506).


test('?- chat80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_260416)),nondet]):-call(chat80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_260416).


test('?- chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_260608)),nondet]):-call(chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_260608).


test('?- chat80("A large grey door leads into space",[descriptionTest])',[true(compound(_260320)),nondet]):-call(chat80("A large grey door leads into space",[descriptionTest]),_260320).


test('?- chat80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_260506)),nondet]):-call(chat80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_260506).


test('?- chat80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_260578)),nondet]):-call(chat80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_260578).


test('?- chat80("You feel very cold",[descriptionTest])',[true(compound(_260206)),nondet]):-call(chat80("You feel very cold",[descriptionTest]),_260206).


test('?- chat80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_260476)),nondet]):-call(chat80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_260476).


test('?- chat80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_260362)),nondet]):-call(chat80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_260362).


test('?- chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_260974)),nondet]):-call(chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_260974).


test('?- chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_260698)),nondet]):-call(chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_260698).


test('?- chat80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_260248)),nondet]):-call(chat80("You're in Worf's quarters",[descriptionTest]),_260248).


test('?- chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_260692)),nondet]):-call(chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_260692).


test('?- chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_261106)),nondet]):-call(chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_261106).


test('?- chat80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_260314)),nondet]):-call(chat80("You emerge into the Enterprise gym",[descriptionTest]),_260314).


test('?- chat80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_260416)),nondet]):-call(chat80("The room is quite large, with a soft grey floor",[descriptionTest]),_260416).


test('?- chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_260824)),nondet]):-call(chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_260824).


test('?- chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_260788)),nondet]):-call(chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_260788).


test('?- chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_260476)),nondet]):-call(chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_260476).


test('?- chat80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_260542)),nondet]):-call(chat80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_260542).


test('?- chat80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_260632)),nondet]):-call(chat80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_260632).


test('?- chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_260926)),nondet]):-call(chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_260926).


test('?- chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_260944)),nondet]):-call(chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_260944).


test('?- chat80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_260398)),nondet]):-call(chat80("Two large windows offer a great view of space",[descriptionTest]),_260398).


test('?- chat80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_260650)),nondet]):-call(chat80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_260650).


test('?- chat80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_260326)),nondet]):-call(chat80("You're in the Enterprise science lab",[descriptionTest]),_260326).


test('?- chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_260716)),nondet]):-call(chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_260716).


test('?- chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_261214)),nondet]):-call(chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_261214).


test('?- chat80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_260470)),nondet]):-call(chat80("A complex looking computer console is facing this machine",[descriptionTest]),_260470).


test('?- chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_260626)),nondet]):-call(chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_260626).


test('?- chat80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_260386)),nondet]):-call(chat80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_260386).


test('?- chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_260620)),nondet]):-call(chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_260620).


test('?- chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_260992)),nondet]):-call(chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_260992).


test('?- chat80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_260794)),nondet]):-call(chat80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_260794).


test('?- chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_261190)),nondet]):-call(chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_261190).


test('?- chat80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_260392)),nondet]):-call(chat80("You're standing in Captain Picard's ready room",[descriptionTest]),_260392).


test('?- chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_260830)),nondet]):-call(chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_260830).


test('?- chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_260734)),nondet]):-call(chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_260734).


test('?- chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_260932)),nondet]):-call(chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_260932).


test('?- chat80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_260512)),nondet]):-call(chat80("This is where the Captain makes all of his important decisions",[descriptionTest]),_260512).


test('?- chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_260620)),nondet]):-call(chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_260620).


test('?- chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_260932)),nondet]):-call(chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_260932).


test('?- chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_260740)),nondet]):-call(chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_260740).


test('?- chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_260536)),nondet]):-call(chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_260536).


test('?- chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_260884)),nondet]):-call(chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_260884).


test('?- chat80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_260482)),nondet]):-call(chat80("This is where the ship's pilot and information officer sit",[descriptionTest]),_260482).


test('?- chat80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_260404)),nondet]):-call(chat80("You're in the conference room of the Enterprise",[descriptionTest]),_260404).


test('?- chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_260950)),nondet]):-call(chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_260950).


test('?- chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_260572)),nondet]):-call(chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_260572).


test('?- chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_260668)),nondet]):-call(chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_260668).


test('?- chat80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_260500)),nondet]):-call(chat80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_260500).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_177080)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_177080).


test('?- chat80("no two owners eat pizza",[sanity])',[true(compound(_177072)),nondet]):-call(chat80("no two owners eat pizza",[sanity]),_177072).


test('?- chat80("no three owners eat pizza",[sanity])',[true(compound(_177072)),nondet]):-call(chat80("no three owners eat pizza",[sanity]),_177072).


test('?- chat80("no three owners eat the same pizza",[sanity])',[true(compound(_177074)),nondet]):-call(chat80("no three owners eat the same pizza",[sanity]),_177074).


test('?- chat80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_177076)),nondet]):-call(chat80("no three owners eat the same kind of pizza",[sanity]),_177076).


test('?- chat80("no owners eat the same pizza",[sanity])',[true(compound(_177072)),nondet]):-call(chat80("no owners eat the same pizza",[sanity]),_177072).


test('?- chat80("no owners eat the same kind of pizza",[sanity])',[true(compound(_177074)),nondet]):-call(chat80("no owners eat the same kind of pizza",[sanity]),_177074).


test('?- chat80("there are 5 houses",[sanity])',[true(compound(_177070)),nondet]):-call(chat80("there are 5 houses",[sanity]),_177070).


test('?- chat80("there are not 5 houses",[sanity])',[true(compound(_177070)),nondet]):-call(chat80("there are not 5 houses",[sanity]),_177070).


test('?- chat80("there are not zero houses",[sanity])',[true(compound(_177072)),nondet]):-call(chat80("there are not zero houses",[sanity]),_177072).


test('?- chat80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_177080)),nondet]):-call(chat80(noun_phrase("less than 2 owners"),[sanity,bug]),_177080).


test('?- chat80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_177074)),nondet]):-call(chat80(noun_phrase("at most the 5 owners"),[sanity]),_177074).


test('?- chat80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_177074)),nondet]):-call(chat80(noun_phrase("at most 5 owners"),[sanity]),_177074).


test('?- chat80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_177074)),nondet]):-call(chat80(noun_phrase("less than 3 owners"),[sanity]),_177074).


test('?- chat80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_177076)),nondet]):-call(chat80(noun_phrase("at most 50 percent of owners"),[sanity]),_177076).


test('?- chat80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_177080)),nondet]):-call(chat80(noun_phrase("no three owners"),[sanity,no_working]),_177080).


test('?- chat80("terry writes a non-program.",[tell])',[true(compound(_177072)),nondet]):-call(chat80("terry writes a non-program.",[tell]),_177072).


test('?- chat80("every nonhuman programmer writes a program.",[tell])',[true(compound(_177076)),nondet]):-call(chat80("every nonhuman programmer writes a program.",[tell]),_177076).


test('?- chat80("every human programmer writes a not a program.",[tell])',[true(compound(_177076)),nondet]):-call(chat80("every human programmer writes a not a program.",[tell]),_177076).


test('?- chat80("every human programmer happily writes a not a program.",[tell])',[true(compound(_177078)),nondet]):-call(chat80("every human programmer happily writes a not a program.",[tell]),_177078).


:- end_tests(chat80).



:- begin_tests(curt80).



test('?- curt80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_177122)),nondet]):-call(curt80("His friends are liked by hers.",[bad_juju,sanity]),_177122).


test('?- curt80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_177124)),nondet]):-call(curt80("Her friends are not liked by his.",[bad_juju,sanity]),_177124).


test('?- curt80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_177124)),nondet]):-call(curt80("Do their friends like each other?",[bad_juju,feature]),_177124).


test('?- curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_177066),sanity])',[true(compound(_177128)),nondet]):-call(curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_177066),sanity]),_177128).


test('?- curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_177064),sanity])',[true(compound(_177126)),nondet]):-call(curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_177064),sanity]),_177126).


test('?- curt80("There are 5 houses with five different colors.",[riddle(_177068),sanity])',[true(compound(_177130)),nondet]):-call(curt80("There are 5 houses with five different colors.",[riddle(_177068),sanity]),_177130).


test('?- curt80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_177120)),nondet]):-call(curt80("There are 5 houses",[riddle_prep,sanity]),_177120).


test('?- curt80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_177124)),nondet]):-call(curt80("Each house has a different color",[riddle_prep,sanity]),_177124).


test('?- curt80("In each house lives a person with a different nationality.",[riddle(_177072),sanity])',[true(compound(_177134)),nondet]):-call(curt80("In each house lives a person with a different nationality.",[riddle(_177072),sanity]),_177134).


test('?- curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_177146)),nondet]):-call(curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_177146).


test('?- curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_177134)),nondet]):-call(curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_177134).


test('?- curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_177132)),nondet]):-call(curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_177132).


test('?- curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_177136)),nondet]):-call(curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_177136).


test('?- curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_177140)),nondet]):-call(curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_177140).


test('?- curt80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_177132)),nondet]):-call(curt80("No owners have the same pet.",[riddle(1),sanity,regression]),_177132).


test('?- curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_177136)),nondet]):-call(curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_177136).


test('?- curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_177130)),nondet]):-call(curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_177130).


test('?- curt80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_177134)),nondet]):-call(curt80("No two owners have the same pet.",[riddle(1),sanity,regression]),_177134).


test('?- curt80("The brit lives in the red house.",[riddle(_177066),sanity])',[true(compound(_177128)),nondet]):-call(curt80("The brit lives in the red house.",[riddle(_177066),sanity]),_177128).


test('?- curt80("The swede keeps dogs as pets.",[riddle(_177064),sanity])',[true(compound(_177126)),nondet]):-call(curt80("The swede keeps dogs as pets.",[riddle(_177064),sanity]),_177126).


test('?- curt80("A dane drinks tea.",[riddle(_177062),sanity])',[true(compound(_177124)),nondet]):-call(curt80("A dane drinks tea.",[riddle(_177062),sanity]),_177124).


test('?- curt80("The green house is on the left of the white house.",[riddle(_177070),sanity])',[true(compound(_177132)),nondet]):-call(curt80("The green house is on the left of the white house.",[riddle(_177070),sanity]),_177132).


test('?- curt80("The green house\'s owner drinks coffee.",[riddle(_177066),sanity])',[true(compound(_177128)),nondet]):-call(curt80("The green house's owner drinks coffee.",[riddle(_177066),sanity]),_177128).


test('?- curt80("The person who smokes Pall Mall rears birds.",[riddle(_177068),sanity,regression])',[true(compound(_177136)),nondet]):-call(curt80("The person who smokes Pall Mall rears birds.",[riddle(_177068),sanity,regression]),_177136).


test('?- curt80("The owner of the yellow house smokes Dunhill.",[riddle(_177068),sanity])',[true(compound(_177130)),nondet]):-call(curt80("The owner of the yellow house smokes Dunhill.",[riddle(_177068),sanity]),_177130).


test('?- curt80("The man living in the center house drinks milk.",[riddle(_177070),sanity])',[true(compound(_177132)),nondet]):-call(curt80("The man living in the center house drinks milk.",[riddle(_177070),sanity]),_177132).


test('?- curt80("The Norwegian lives in the first house .",[riddle(_177068),sanity])',[true(compound(_177130)),nondet]):-call(curt80("The Norwegian lives in the first house .",[riddle(_177068),sanity]),_177130).


test('?- curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_177074),sanity])',[true(compound(_177136)),nondet]):-call(curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_177074),sanity]),_177136).


test('?- curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_177074),sanity])',[true(compound(_177136)),nondet]):-call(curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_177074),sanity]),_177136).


test('?- curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_177068),sanity])',[true(compound(_177130)),nondet]):-call(curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_177068),sanity]),_177130).


test('?- curt80("The German smokes Prince.",[riddle(_177064),sanity])',[true(compound(_177126)),nondet]):-call(curt80("The German smokes Prince.",[riddle(_177064),sanity]),_177126).


test('?- curt80("The Norwegian lives next to the blue house.",[riddle(_177068),sanity])',[true(compound(_177130)),nondet]):-call(curt80("The Norwegian lives next to the blue house.",[riddle(_177068),sanity]),_177130).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_177072),sanity])',[true(compound(_177134)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_177072),sanity]),_177134).


test('?- curt80("Who owns the fish?",[riddle(_177062),sanity])',[true(compound(_177124)),nondet]):-call(curt80("Who owns the fish?",[riddle(_177062),sanity]),_177124).


test('?- curt80("One woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("One woman paints.",[quants]),_177114).


test('?- curt80("No woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("No woman paints.",[quants]),_177114).


test('?- curt80("Some woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Some woman paints.",[quants]),_177114).


test('?- curt80("Every woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Every woman paints.",[quants]),_177114).


test('?- curt80("Each woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Each woman paints.",[quants]),_177114).


test('?- curt80("Any woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Any woman paints.",[quants]),_177114).


test('?- curt80("The woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("The woman paints.",[quants]),_177114).


test('?- curt80("The not woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("The not woman paints.",[quants]),_177114).


test('?- curt80("Not a woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Not a woman paints.",[quants]),_177114).


test('?- curt80("Not one woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Not one woman paints.",[quants]),_177114).


test('?- curt80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_177114)),nondet]):-call(curt80("Not no woman paints.",[quants_neg_postcond]),_177114).


test('?- curt80("Not some woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Not some woman paints.",[quants]),_177114).


test('?- curt80("Not every woman paints.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("Not every woman paints.",[quants]),_177116).


test('?- curt80("Not each woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Not each woman paints.",[quants]),_177114).


test('?- curt80("Not any woman paints.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Not any woman paints.",[quants]),_177114).


test('?- curt80("The women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("The women paint.",[quants]),_177114).


test('?- curt80("Women paint.",[quants])',[true(compound(_177112)),nondet]):-call(curt80("Women paint.",[quants]),_177112).


test('?- curt80("Some women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Some women paint.",[quants]),_177114).


test('?- curt80("No women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("No women paint.",[quants]),_177114).


test('?- curt80("All women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("All women paint.",[quants]),_177114).


test('?- curt80("Any women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Any women paint.",[quants]),_177114).


test('?- curt80("Not women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Not women paint.",[quants]),_177114).


test('?- curt80("Not no women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Not no women paint.",[quants]),_177114).


test('?- curt80("Not all women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Not all women paint.",[quants]),_177114).


test('?- curt80("Not any women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Not any women paint.",[quants]),_177114).


test('?- curt80("The three women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("The three women paint.",[quants]),_177114).


test('?- curt80("Three women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Three women paint.",[quants]),_177114).


test('?- curt80("Some three women paint.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("Some three women paint.",[quants]),_177116).


test('?- curt80("No three women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("No three women paint.",[quants]),_177114).


test('?- curt80("Every three women paint.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("Every three women paint.",[quants]),_177116).


test('?- curt80("All three women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("All three women paint.",[quants]),_177114).


test('?- curt80("Any three women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Any three women paint.",[quants]),_177114).


test('?- curt80("Not three women paint.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("Not three women paint.",[quants]),_177114).


test('?- curt80("Not some three women paint.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("Not some three women paint.",[quants]),_177116).


test('?- curt80("Not no three women paint.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("Not no three women paint.",[quants]),_177116).


test('?- curt80("Not all three women paint.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("Not all three women paint.",[quants]),_177116).


test('?- curt80("Not every three women paint.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("Not every three women paint.",[quants]),_177116).


test('?- curt80("Not any three women paint.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("Not any three women paint.",[quants]),_177116).


test('?- curt80("Not three of the women paint.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("Not three of the women paint.",[quants]),_177116).


test('?- curt80("Not some of the three women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("Not some of the three women paint.",[quants]),_177118).


test('?- curt80("Not no three of the women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("Not no three of the women paint.",[quants]),_177118).


test('?- curt80("Not all three of the women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("Not all three of the women paint.",[quants]),_177118).


test('?- curt80("Not every three of the women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("Not every three of the women paint.",[quants]),_177118).


test('?- curt80("Not any three of the women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("Not any three of the women paint.",[quants]),_177118).


test('?- curt80("Not three of the four women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("Not three of the four women paint.",[quants]),_177118).


test('?- curt80("Not none of three out of the four women paint.",[quants])',[true(compound(_177120)),nondet]):-call(curt80("Not none of three out of the four women paint.",[quants]),_177120).


test('?- curt80("Not all three of the four women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("Not all three of the four women paint.",[quants]),_177118).


test('?- curt80("Not any three of the four women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("Not any three of the four women paint.",[quants]),_177118).


test('?- curt80("Three of the four women paint.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("Three of the four women paint.",[quants]),_177116).


test('?- curt80("Three out of the four women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("Three out of the four women paint.",[quants]),_177118).


test('?- curt80("All three of the four women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("All three of the four women paint.",[quants]),_177118).


test('?- curt80("Any three of the four women paint.",[quants])',[true(compound(_177118)),nondet]):-call(curt80("Any three of the four women paint.",[quants]),_177118).


test('?- curt80("I paint",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("I paint",[pronoun]),_177112).


test('?- curt80("you paint",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("you paint",[pronoun]),_177112).


test('?- curt80("We paint",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("We paint",[pronoun]),_177112).


test('?- curt80("None paint",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("None paint",[pronoun]),_177112).


test('?- curt80("They paint",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("They paint",[pronoun]),_177112).


test('?- curt80("Some paint",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("Some paint",[pronoun]),_177112).


test('?- curt80("It paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("It paints",[pronoun]),_177112).


test('?- curt80("he paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("he paints",[pronoun]),_177112).


test('?- curt80("She paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("She paints",[pronoun]),_177112).


test('?- curt80("Someone paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("Someone paints",[pronoun]),_177112).


test('?- curt80("Anybody paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("Anybody paints",[pronoun]),_177112).


test('?- curt80("Anyone paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("Anyone paints",[pronoun]),_177112).


test('?- curt80("Anything paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Anything paints",[pronoun]),_177114).


test('?- curt80("Everybody paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Everybody paints",[pronoun]),_177114).


test('?- curt80("Everyone paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Everyone paints",[pronoun]),_177114).


test('?- curt80("Everything paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Everything paints",[pronoun]),_177114).


test('?- curt80("Nobody paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("Nobody paints",[pronoun]),_177112).


test('?- curt80("No one paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("No one paints",[pronoun]),_177112).


test('?- curt80("Nothing paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("Nothing paints",[pronoun]),_177112).


test('?- curt80("One paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("One paints",[pronoun]),_177112).


test('?- curt80("Somebody paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Somebody paints",[pronoun]),_177114).


test('?- curt80("Something paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Something paints",[pronoun]),_177114).


test('?- curt80("Not anybody paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Not anybody paints",[pronoun]),_177114).


test('?- curt80("Not anyone paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Not anyone paints",[pronoun]),_177114).


test('?- curt80("Not anything paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Not anything paints",[pronoun]),_177114).


test('?- curt80("Not everybody paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Not everybody paints",[pronoun]),_177114).


test('?- curt80("Not everyone paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Not everyone paints",[pronoun]),_177114).


test('?- curt80("Not everything paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Not everything paints",[pronoun]),_177114).


test('?- curt80("Not nothing paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Not nothing paints",[pronoun]),_177114).


test('?- curt80("Not one paints",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("Not one paints",[pronoun]),_177112).


test('?- curt80("Not somebody paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Not somebody paints",[pronoun]),_177114).


test('?- curt80("Not something paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("Not something paints",[pronoun]),_177114).


test('?- curt80("She likes i",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("She likes i",[pronoun]),_177112).


test('?- curt80("She likes me",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("She likes me",[pronoun]),_177112).


test('?- curt80("She likes you",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("She likes you",[pronoun]),_177112).


test('?- curt80("She likes it",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("She likes it",[pronoun]),_177112).


test('?- curt80("She likes us",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("She likes us",[pronoun]),_177112).


test('?- curt80("She likes them",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("She likes them",[pronoun]),_177112).


test('?- curt80("She likes no one",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("She likes no one",[pronoun]),_177114).


test('?- curt80("She likes none",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("She likes none",[pronoun]),_177112).


test('?- curt80("She likes him",[pronoun])',[true(compound(_177112)),nondet]):-call(curt80("She likes him",[pronoun]),_177112).


test('?- curt80("She likes herself",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("She likes herself",[pronoun]),_177114).


test('?- curt80("She likes himself",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("She likes himself",[pronoun]),_177114).


test('?- curt80("It is us that paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("It is us that paints",[pronoun]),_177114).


test('?- curt80("It is them that paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("It is them that paints",[pronoun]),_177114).


test('?- curt80("It is he that paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("It is he that paints",[pronoun]),_177114).


test('?- curt80("It is she that paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("It is she that paints",[pronoun]),_177114).


test('?- curt80("It is her that paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("It is her that paints",[pronoun]),_177114).


test('?- curt80("It is him that paints",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("It is him that paints",[pronoun]),_177114).


test('?- curt80("We are us that paint",[pronoun])',[true(compound(_177114)),nondet]):-call(curt80("We are us that paint",[pronoun]),_177114).


test('?- curt80("We are all of us that paint",[pronoun])',[true(compound(_177116)),nondet]):-call(curt80("We are all of us that paint",[pronoun]),_177116).


test('?- curt80("It is everybody that paints",[pronoun])',[true(compound(_177116)),nondet]):-call(curt80("It is everybody that paints",[pronoun]),_177116).


test('?- curt80("Every man that paints likes monet.",[bratko])',[true(compound(_177118)),nondet]):-call(curt80("Every man that paints likes monet.",[bratko]),_177118).


test('?- curt80("A woman that admires John paints.",[bratko])',[true(compound(_177118)),nondet]):-call(curt80("A woman that admires John paints.",[bratko]),_177118).


test('?- curt80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_177124)),nondet]):-call(curt80("Every woman that likes a man that admires monet paints.",[bratko]),_177124).


test('?- curt80("John likes Annie.",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("John likes Annie.",[bratko]),_177114).


test('?- curt80("Annie likes a man that admires monet.",[bratko])',[true(compound(_177118)),nondet]):-call(curt80("Annie likes a man that admires monet.",[bratko]),_177118).


test('?- curt80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_177118)),nondet]):-call(curt80("Bertrand Russell wrote principia.",[bratko]),_177118).


test('?- curt80("An author wrote principia.",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("An author wrote principia.",[bratko]),_177116).


test('?- curt80("Iraq is a country.",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("Iraq is a country.",[bratko]),_177114).


test('?- curt80("A happy author wrote principia.",[bratko])',[true(compound(_177118)),nondet]):-call(curt80("A happy author wrote principia.",[bratko]),_177118).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_177114).


test('?- curt80("Bertrand is an author.",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("Bertrand is an author.",[bratko]),_177114).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_177114).


test('?- curt80("Every author is a programmer.",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("Every author is a programmer.",[bratko]),_177116).


test('?- curt80("Is Bertrand an programmer?",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("Is Bertrand an programmer?",[bratko]),_177116).


test('?- curt80("What is a author?",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("What is a author?",[bratko]),_177114).


test('?- curt80("What did Bertrand write?",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("What did Bertrand write?",[bratko]),_177116).


test('?- curt80("What is a book?",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("What is a book?",[bratko]),_177114).


test('?- curt80("Principia is a book.",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("Principia is a book.",[bratko]),_177114).


test('?- curt80("Bertrand is Bertrand.",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("Bertrand is Bertrand.",[bratko]),_177114).


test('?- curt80("Shrdlu halts.",[bratko])',[true(compound(_177112)),nondet]):-call(curt80("Shrdlu halts.",[bratko]),_177112).


test('?- curt80("Every student wrote a program.",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("Every student wrote a program.",[bratko]),_177116).


test('?- curt80("Terry writes a program.",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("Terry writes a program.",[bratko]),_177116).


test('?- curt80("Terry writes a program that halts.",[bratko])',[true(compound(_177118)),nondet]):-call(curt80("Terry writes a program that halts.",[bratko]),_177118).


test('?- curt80("An author of every book wrote a program.",[bratko])',[true(compound(_177120)),nondet]):-call(curt80("An author of every book wrote a program.",[bratko]),_177120).


test('?- curt80("A man hapilly maried paints.",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("A man hapilly maried paints.",[bratko]),_177116).


test('?- curt80("A hapilly maried man paints.",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("A hapilly maried man paints.",[bratko]),_177116).


test('?- curt80("A man who knows paints.",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("A man who knows paints.",[bratko]),_177116).


test('?- curt80("A man gives something.",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("A man gives something.",[bratko]),_177114).


test('?- curt80("A man gives his word.",[bratko])',[true(compound(_177114)),nondet]):-call(curt80("A man gives his word.",[bratko]),_177114).


test('?- curt80("A man of his word paints.",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("A man of his word paints.",[bratko]),_177116).


test('?- curt80("A man paints.",[bratko])',[true(compound(_177112)),nondet]):-call(curt80("A man paints.",[bratko]),_177112).


test('?- curt80("A man that paints paints.",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("A man that paints paints.",[bratko]),_177116).


test('?- curt80("A man walks.",[bratko])',[true(compound(_177112)),nondet]):-call(curt80("A man walks.",[bratko]),_177112).


test('?- curt80("A man that walks paints.",[bratko])',[true(compound(_177116)),nondet]):-call(curt80("A man that walks paints.",[bratko]),_177116).


test('?- curt80("It halts.",[bratko])',[true(compound(_177112)),nondet]):-call(curt80("It halts.",[bratko]),_177112).


test('?- curt80("A man of his word that walks paints.",[bratko])',[true(compound(_177118)),nondet]):-call(curt80("A man of his word that walks paints.",[bratko]),_177118).


test('?- curt80("The cost of what the product is changes.",[bratko])',[true(compound(_177120)),nondet]):-call(curt80("The cost of what the product is changes.",[bratko]),_177120).


test('?- curt80("We need a virtual machine server.",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("We need a virtual machine server.",[aindy]),_177118).


test('?- curt80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_177122)),nondet]):-call(curt80("The virtual machine server should have several VMs.",[aindy]),_177122).


test('?- curt80("One VM should be the POSI VM.",[aindy])',[true(compound(_177116)),nondet]):-call(curt80("One VM should be the POSI VM.",[aindy]),_177116).


test('?- curt80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("One VM should be the FRDCSA.org VM.",[aindy]),_177118).


test('?- curt80("One VM should be the mail server.",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("One VM should be the mail server.",[aindy]),_177118).


test('?- curt80("One computer should be the backup server.",[aindy])',[true(compound(_177120)),nondet]):-call(curt80("One computer should be the backup server.",[aindy]),_177120).


test('?- curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_177136)),nondet]):-call(curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_177136).


test('?- curt80("I need a fast computer for work.",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("I need a fast computer for work.",[aindy]),_177118).


test('?- curt80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_177128)),nondet]):-call(curt80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_177128).


test('?- curt80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_177124)),nondet]):-call(curt80("I need a dedicated computer for network security research.",[aindy]),_177124).


test('?- curt80("I need a machine to run Tails on.",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("I need a machine to run Tails on.",[aindy]),_177118).


test('?- curt80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_177122)),nondet]):-call(curt80("I need a machine off the network for airgap security.",[aindy]),_177122).


test('?- curt80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_177128)),nondet]):-call(curt80("One VM should be the game server for running game development projects.",[aindy]),_177128).


test('?- curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_177122)),nondet]):-call(curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_177122).


test('?- curt80("I could read about how to build a private watson.",[aindy])',[true(compound(_177122)),nondet]):-call(curt80("I could read about how to build a private watson.",[aindy]),_177122).


test('?- curt80("Need backups.",[aindy])',[true(compound(_177112)),nondet]):-call(curt80("Need backups.",[aindy]),_177112).


test('?- curt80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_177126)),nondet]):-call(curt80("Practice setting up backups of a machine to a different machine.",[aindy]),_177126).


test('?- curt80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_177124)),nondet]):-call(curt80("Set up schedules for updating the software on all machines.",[aindy]),_177124).


test('?- curt80("Read books on server room layout.",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("Read books on server room layout.",[aindy]),_177118).


test('?- curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_177126)),nondet]):-call(curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_177126).


test('?- curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_177128)),nondet]):-call(curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_177128).


test('?- curt80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("I want a gaming computer.  Do I?",[aindy]),_177118).


test('?- curt80("I want a windows 7 computer for work.",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("I want a windows 7 computer for work.",[aindy]),_177118).


test('?- curt80("I want a fast linux computer for work.",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("I want a fast linux computer for work.",[aindy]),_177118).


test('?- curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_177138)),nondet]):-call(curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_177138).


test('?- curt80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_177124)),nondet]):-call(curt80("I could install a fresh operating system on justin for work.",[aindy]),_177124).


test('?- curt80("I probably want a separate git computer.",[aindy])',[true(compound(_177120)),nondet]):-call(curt80("I probably want a separate git computer.",[aindy]),_177120).


test('?- curt80("I need to start buying servers.",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("I need to start buying servers.",[aindy]),_177118).


test('?- curt80("I want a rackmount case for servers.",[aindy])',[true(compound(_177118)),nondet]):-call(curt80("I want a rackmount case for servers.",[aindy]),_177118).


test('?- curt80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_177124)),nondet]):-call(curt80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_177124).


test('?- curt80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_177122)),nondet]):-call(curt80("2 oceans border each african country.",[chat80(tell)]),_177122).


test('?- curt80("There are 10 large cars.",[quants])',[true(compound(_177116)),nondet]):-call(curt80("There are 10 large cars.",[quants]),_177116).


test('?- curt80("There are 10 oceans.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("There are 10 oceans.",[quants]),_177114).


test('?- curt80("There are 10 women.",[quants])',[true(compound(_177114)),nondet]):-call(curt80("There are 10 women.",[quants]),_177114).


test('?- curt80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_177122)),nondet]):-call(curt80("An ocean borders an African country.",[chat80(tell)]),_177122).


test('?- curt80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_177130)),nondet]):-call(curt80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_177130).


test('?- curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_177132)),nondet]):-call(curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_177132).


test('?- curt80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_177118)),nondet]):-call(curt80("Bertrand wrote a book.",[bratko(book)]),_177118).


test('?- curt80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_177120)),nondet]):-call(curt80("Bertrand wrote nothing.",[bratko(book)]),_177120).


test('?- curt80("Bertrand wrote.",[bratko(book)])',[true(compound(_177118)),nondet]):-call(curt80("Bertrand wrote.",[bratko(book)]),_177118).


test('?- curt80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_177122)),nondet]):-call(curt80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_177122).


test('?- curt80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_177120)),nondet]):-call(curt80("Bertrand wrote about Gottlob.",[bratko(book)]),_177120).


test('?- curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_177122)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_177122).


test('?- curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_177124)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_177124).


test('?- curt80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_177122)),nondet]):-call(curt80("What did alfred write to Bertrand?",[bratko(book)]),_177122).


test('?- curt80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_177118)),nondet]):-call(curt80("Alfred wrote a letter.",[bratko(book)]),_177118).


test('?- curt80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_177122)),nondet]):-call(curt80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_177122).


test('?- curt80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_177122)),nondet]):-call(curt80("Alfred wrote something to Bertrand.",[bratko(book)]),_177122).


test('?- curt80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_177120)),nondet]):-call(curt80("Alfred wrote to Bertrand.",[bratko(book)]),_177120).


test('?- curt80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_177122)),nondet]):-call(curt80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_177122).


test('?- curt80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_177122)),nondet]):-call(curt80("Alfred wrote Bertrand a letter.",[bratko(book)]),_177122).


test('?- curt80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_177122)),nondet]):-call(curt80("Who did alfred write a letter to?",[bratko(book)]),_177122).


test('?- curt80("Alfred gave it.",[bratko(book)])',[true(compound(_177118)),nondet]):-call(curt80("Alfred gave it.",[bratko(book)]),_177118).


test('?- curt80("Alfred gave a book.",[bratko(book)])',[true(compound(_177118)),nondet]):-call(curt80("Alfred gave a book.",[bratko(book)]),_177118).


test('?- curt80("a pride of lions paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a pride of lions paint",[of]),_177114).


test('?- curt80("a flock of birds paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a flock of birds paint",[of]),_177114).


test('?- curt80("a litter of pups paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a litter of pups paint",[of]),_177114).


test('?- curt80("a prickle of porcupines paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a prickle of porcupines paint",[of]),_177116).


test('?- curt80("a litter of cubs paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a litter of cubs paint",[of]),_177114).


test('?- curt80("a pack of dogs paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a pack of dogs paint",[of]),_177114).


test('?- curt80("a colony of beavers paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a colony of beavers paint",[of]),_177116).


test('?- curt80("a gaggle of geese paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a gaggle of geese paint",[of]),_177116).


test('?- curt80("a family of otters paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a family of otters paint",[of]),_177116).


test('?- curt80("a huddle of walruses paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a huddle of walruses paint",[of]),_177116).


test('?- curt80("a herd of deer paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a herd of deer paint",[of]),_177114).


test('?- curt80("a culture of bacteria paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a culture of bacteria paint",[of]),_177116).


test('?- curt80("a swarm of bees paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a swarm of bees paint",[of]),_177114).


test('?- curt80("a bed of clams paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a bed of clams paint",[of]),_177114).


test('?- curt80("a school of cod paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a school of cod paint",[of]),_177114).


test('?- curt80("a herd of dinosaurs paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a herd of dinosaurs paint",[of]),_177116).


test('?- curt80("a mess of iguanas paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a mess of iguanas paint",[of]),_177116).


test('?- curt80("a mob of wombats paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a mob of wombats paint",[of]),_177114).


test('?- curt80("a pod of pelicans paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a pod of pelicans paint",[of]),_177116).


test('?- curt80("a troop of boy scouts paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a troop of boy scouts paint",[of]),_177116).


test('?- curt80("a team of athletes paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a team of athletes paint",[of]),_177116).


test('?- curt80("a panel of experts paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a panel of experts paint",[of]),_177116).


test('?- curt80("a crew of sailors paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a crew of sailors paint",[of]),_177116).


test('?- curt80("a band of robbers paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a band of robbers paint",[of]),_177116).


test('?- curt80("a troupe of performers paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a troupe of performers paint",[of]),_177116).


test('?- curt80("a crowd of onlookers paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a crowd of onlookers paint",[of]),_177116).


test('?- curt80("a curse of painters paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("a curse of painters paint",[of]),_177116).


test('?- curt80("a fleet of cars paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a fleet of cars paint",[of]),_177114).


test('?- curt80("a pair of shoes paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a pair of shoes paint",[of]),_177114).


test('?- curt80("a fleet of ships paint",[of])',[true(compound(_177114)),nondet]):-call(curt80("a fleet of ships paint",[of]),_177114).


test('?- curt80("an anthology of stories paint",[of])',[true(compound(_177116)),nondet]):-call(curt80("an anthology of stories paint",[of]),_177116).


test('?- curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_260472)),nondet]):-call(curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_260472).


test('?- curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_260442)),nondet]):-call(curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_260442).


test('?- curt80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_260580)),nondet]):-call(curt80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_260580).


test('?- curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_260424)),nondet]):-call(curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_260424).


test('?- curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_260472)),nondet]):-call(curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_260472).


test('?- curt80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_260568)),nondet]):-call(curt80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_260568).


test('?- curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_260526)),nondet]):-call(curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_260526).


test('?- curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_260718)),nondet]):-call(curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_260718).


test('?- curt80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_260490)),nondet]):-call(curt80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_260490).


test('?- curt80("Logged on player character",[descriptionTest])',[true(compound(_260298)),nondet]):-call(curt80("Logged on player character",[descriptionTest]),_260298).


test('?- curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_260556)),nondet]):-call(curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_260556).


test('?- curt80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_260502)),nondet]):-call(curt80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_260502).


test('?- curt80("Wesley is her son",[descriptionTest])',[true(compound(_260244)),nondet]):-call(curt80("Wesley is her son",[descriptionTest]),_260244).


test('?- curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_260892)),nondet]):-call(curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_260892).


test('?- curt80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_260322)),nondet]):-call(curt80("Counselor Deanna Troi is here",[descriptionTest]),_260322).


test('?- curt80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_260418)),nondet]):-call(curt80("Counselor Troi is the ship's main counselor",[descriptionTest]),_260418).


test('?- curt80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_260574)),nondet]):-call(curt80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_260574).


test('?- curt80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_260448)),nondet]):-call(curt80("Commander William Riker is here, staring at you",[descriptionTest]),_260448).


test('?- curt80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_260454)),nondet]):-call(curt80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_260454).


test('?- curt80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_260424)),nondet]):-call(curt80("He's in charge of keeping the crew in line",[descriptionTest]),_260424).


test('?- curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_260490)),nondet]):-call(curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_260490).


test('?- curt80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_260388)),nondet]):-call(curt80("Captain Picard is a very important man",[descriptionTest]),_260388).


test('?- curt80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_260490)),nondet]):-call(curt80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_260490).


test('?- curt80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_260334)),nondet]):-call(curt80("He's very smart, and very wise",[descriptionTest]),_260334).


test('?- curt80("Don\'t mess with him!",[descriptionTest])',[true(compound(_260262)),nondet]):-call(curt80("Don't mess with him!",[descriptionTest]),_260262).


test('?- curt80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_260340)),nondet]):-call(curt80("Guinan is here, tending the bar",[descriptionTest]),_260340).


test('?- curt80("Guinan is a strange being",[descriptionTest])',[true(compound(_260298)),nondet]):-call(curt80("Guinan is a strange being",[descriptionTest]),_260298).


test('?- curt80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_261006)),nondet]):-call(curt80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_261006).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_260508)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_260508).


test('?- curt80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_260508)),nondet]):-call(curt80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_260508).


test('?- curt80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_260808)),nondet]):-call(curt80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_260808).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_260502)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_260502).


test('?- curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_260526)),nondet]):-call(curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_260526).


test('?- curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_260796)),nondet]):-call(curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_260796).


test('?- curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_260718)),nondet]):-call(curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_260718).


test('?- curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_260508)),nondet]):-call(curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_260508).


test('?- curt80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_260388)),nondet]):-call(curt80("Livingston is Captain Picard's pet fish",[descriptionTest]),_260388).


test('?- curt80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_260640)),nondet]):-call(curt80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_260640).


test('?- curt80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_260490)),nondet]):-call(curt80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_260490).


test('?- curt80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_260358)),nondet]):-call(curt80("Spot is Data's orange coloured cat",[descriptionTest]),_260358).


test('?- curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_260880)),nondet]):-call(curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_260880).


test('?- curt80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_260502)),nondet]):-call(curt80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_260502).


test('?- curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_260484)),nondet]):-call(curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_260484).


test('?- curt80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_260826)),nondet]):-call(curt80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_260826).


test('?- curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_260472)),nondet]):-call(curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_260472).


test('?- curt80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_260340)),nondet]):-call(curt80("Alexander Rozhenko is Worf's son",[descriptionTest]),_260340).


test('?- curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_260622)),nondet]):-call(curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_260622).


test('?- curt80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_260538)),nondet]):-call(curt80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_260538).


test('?- curt80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_260484)),nondet]):-call(curt80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_260484).


test('?- curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_260886)),nondet]):-call(curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_260886).


test('?- curt80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_260364)),nondet]):-call(curt80("A large phaser rifle is lying here",[descriptionTest]),_260364).


test('?- curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_260958)),nondet]):-call(curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_260958).


test('?- curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_260562)),nondet]):-call(curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_260562).


test('?- curt80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260910)),nondet]):-call(curt80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260910).


test('?- curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_260562)),nondet]):-call(curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_260562).


test('?- curt80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260934)),nondet]):-call(curt80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260934).


test('?- curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_260538)),nondet]):-call(curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_260538).


test('?- curt80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260910)),nondet]):-call(curt80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260910).


test('?- curt80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_260460)),nondet]):-call(curt80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_260460).


test('?- curt80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_261000)),nondet]):-call(curt80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_261000).


test('?- curt80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_260430)),nondet]):-call(curt80("A Starfleet communication badge is lying here",[descriptionTest]),_260430).


test('?- curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_261468)),nondet]):-call(curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_261468).


test('?- curt80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_260424)),nondet]):-call(curt80("Worf's silver chain sash has been left here",[descriptionTest]),_260424).


test('?- curt80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_261036)),nondet]):-call(curt80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_261036).


test('?- curt80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_260316)),nondet]):-call(curt80("Geordi's VISOR is lying here",[descriptionTest]),_260316).


test('?- curt80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_261708)),nondet]):-call(curt80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_261708).


test('?- curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_260484)),nondet]):-call(curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_260484).


test('?- curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_261270)),nondet]):-call(curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_261270).


test('?- curt80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_260418)),nondet]):-call(curt80("A shard of dilithium crystal is lying here",[descriptionTest]),_260418).


test('?- curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_261072)),nondet]):-call(curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_261072).


test('?- curt80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_260430)),nondet]):-call(curt80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_260430).


test('?- curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_261042)),nondet]):-call(curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_261042).


test('?- curt80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_260442)),nondet]):-call(curt80("Commander Riker's trombone has been placed here",[descriptionTest]),_260442).


test('?- curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_260874)),nondet]):-call(curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_260874).


test('?- curt80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_260370)),nondet]):-call(curt80("A small cup of tea is sitting here",[descriptionTest]),_260370).


test('?- curt80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_260388)),nondet]):-call(curt80("A bottle of synthehol is standing here",[descriptionTest]),_260388).


test('?- curt80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_260400)),nondet]):-call(curt80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_260400).


test('?- curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_260424)),nondet]):-call(curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_260424).


test('?- curt80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_260436)),nondet]):-call(curt80("A small glass of prune juice is sitting here",[descriptionTest]),_260436).


test('?- curt80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_260406)),nondet]):-call(curt80("A bottle of Vulcan beer is standing here",[descriptionTest]),_260406).


test('?- curt80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_260478)),nondet]):-call(curt80("You find yourself in the middle of main engineering",[descriptionTest]),_260478).


test('?- curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_260598)),nondet]):-call(curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_260598).


test('?- curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_260898)),nondet]):-call(curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_260898).


test('?- curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_260706)),nondet]):-call(curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_260706).


test('?- curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_260634)),nondet]):-call(curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_260634).


test('?- curt80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_260814)),nondet]):-call(curt80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_260814).


test('?- curt80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_260406)),nondet]):-call(curt80("You're in the middle of Geordi's quarters",[descriptionTest]),_260406).


test('?- curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_260604)),nondet]):-call(curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_260604).


test('?- curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_260928)),nondet]):-call(curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_260928).


test('?- curt80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_260538)),nondet]):-call(curt80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_260538).


test('?- curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_260508)),nondet]):-call(curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_260508).


test('?- curt80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_260394)),nondet]):-call(curt80("You're in the middle of Data's quarters",[descriptionTest]),_260394).


test('?- curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_261456)),nondet]):-call(curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_261456).


test('?- curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_260670)),nondet]):-call(curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_260670).


test('?- curt80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_260694)),nondet]):-call(curt80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_260694).


test('?- curt80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_260322)),nondet]):-call(curt80("You're in the dimly lit Brig",[descriptionTest]),_260322).


test('?- curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_260712)),nondet]):-call(curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_260712).


test('?- curt80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_260790)),nondet]):-call(curt80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_260790).


test('?- curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_261084)),nondet]):-call(curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_261084).


test('?- curt80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_267312)),nondet]):-call(curt80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_267312).


test('?- curt80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_260796)),nondet]):-call(curt80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_260796).


test('?- curt80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_260400)),nondet]):-call(curt80("You're in the Enterprise transporter room",[descriptionTest]),_260400).


test('?- curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_260886)),nondet]):-call(curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_260886).


test('?- curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_260856)),nondet]):-call(curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_260856).


test('?- curt80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_260394)),nondet]):-call(curt80("You find yourself in a transporter beam",[descriptionTest]),_260394).


test('?- curt80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_260394)),nondet]):-call(curt80("All you can see is blue flashing light",[descriptionTest]),_260394).


test('?- curt80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_260550)),nondet]):-call(curt80("It feels as though your body is racing around at high speeds",[descriptionTest]),_260550).


test('?- curt80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_260670)),nondet]):-call(curt80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_260670).


test('?- curt80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_260598)),nondet]):-call(curt80("You step through the doors and find yourself in a large school room",[descriptionTest]),_260598).


test('?- curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_260976)),nondet]):-call(curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_260976).


test('?- curt80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_260730)),nondet]):-call(curt80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_260730).


test('?- curt80("You\'re in the turbolift",[descriptionTest])',[true(compound(_260280)),nondet]):-call(curt80("You're in the turbolift",[descriptionTest]),_260280).


test('?- curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_260658)),nondet]):-call(curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_260658).


test('?- curt80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_260550)),nondet]):-call(curt80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_260550).


test('?- curt80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_260538)),nondet]):-call(curt80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_260538).


test('?- curt80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_260292)),nondet]):-call(curt80("You're now on Holodeck 2",[descriptionTest]),_260292).


test('?- curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_260976)),nondet]):-call(curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_260976).


test('?- curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_260724)),nondet]):-call(curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_260724).


test('?- curt80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_260418)),nondet]):-call(curt80("Right now, this holodeck is not functioning",[descriptionTest]),_260418).


test('?- curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_260526)),nondet]):-call(curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_260526).


test('?- curt80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_260448)),nondet]):-call(curt80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_260448).


test('?- curt80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_260658)),nondet]):-call(curt80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_260658).


test('?- curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_260976)),nondet]):-call(curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_260976).


test('?- curt80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_260352)),nondet]):-call(curt80("You've arrived in Riker's quarters",[descriptionTest]),_260352).


test('?- curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_260928)),nondet]):-call(curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_260928).


test('?- curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_260862)),nondet]):-call(curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_260862).


test('?- curt80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_260466)),nondet]):-call(curt80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_260466).


test('?- curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_261102)),nondet]):-call(curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_261102).


test('?- curt80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_260898)),nondet]):-call(curt80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_260898).


test('?- curt80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_260370)),nondet]):-call(curt80("You emerge into a dark narrow alley",[descriptionTest]),_260370).


test('?- curt80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_260514)),nondet]):-call(curt80("Tall dark brick buildings block your way north and south",[descriptionTest]),_260514).


test('?- curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_260778)),nondet]):-call(curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_260778).


test('?- curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_260814)),nondet]):-call(curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_260814).


test('?- curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_260550)),nondet]):-call(curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_260550).


test('?- curt80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_260454)),nondet]):-call(curt80("The archway leading out of the holodeck is west",[descriptionTest]),_260454).


test('?- curt80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_260358)),nondet]):-call(curt80("You're in Doctor Crusher's quarters",[descriptionTest]),_260358).


test('?- curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_260754)),nondet]):-call(curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_260754).


test('?- curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_260844)),nondet]):-call(curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_260844).


test('?- curt80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_260586)),nondet]):-call(curt80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_260586).


test('?- curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_261210)),nondet]):-call(curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_261210).


test('?- curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_260682)),nondet]):-call(curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_260682).


test('?- curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_261078)),nondet]):-call(curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_261078).


test('?- curt80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_260550)),nondet]):-call(curt80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_260550).


test('?- curt80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_260478)),nondet]):-call(curt80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_260478).


test('?- curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_261372)),nondet]):-call(curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_261372).


test('?- curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_260550)),nondet]):-call(curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_260550).


test('?- curt80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_260460)),nondet]):-call(curt80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_260460).


test('?- curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_260652)),nondet]):-call(curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_260652).


test('?- curt80("A large grey door leads into space",[descriptionTest])',[true(compound(_260364)),nondet]):-call(curt80("A large grey door leads into space",[descriptionTest]),_260364).


test('?- curt80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_260550)),nondet]):-call(curt80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_260550).


test('?- curt80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_260622)),nondet]):-call(curt80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_260622).


test('?- curt80("You feel very cold",[descriptionTest])',[true(compound(_260250)),nondet]):-call(curt80("You feel very cold",[descriptionTest]),_260250).


test('?- curt80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_260520)),nondet]):-call(curt80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_260520).


test('?- curt80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_260406)),nondet]):-call(curt80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_260406).


test('?- curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_261018)),nondet]):-call(curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_261018).


test('?- curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_260742)),nondet]):-call(curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_260742).


test('?- curt80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_260292)),nondet]):-call(curt80("You're in Worf's quarters",[descriptionTest]),_260292).


test('?- curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_260736)),nondet]):-call(curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_260736).


test('?- curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_261150)),nondet]):-call(curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_261150).


test('?- curt80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_260358)),nondet]):-call(curt80("You emerge into the Enterprise gym",[descriptionTest]),_260358).


test('?- curt80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_260460)),nondet]):-call(curt80("The room is quite large, with a soft grey floor",[descriptionTest]),_260460).


test('?- curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_260868)),nondet]):-call(curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_260868).


test('?- curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_260832)),nondet]):-call(curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_260832).


test('?- curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_260520)),nondet]):-call(curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_260520).


test('?- curt80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_260586)),nondet]):-call(curt80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_260586).


test('?- curt80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_260676)),nondet]):-call(curt80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_260676).


test('?- curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_260970)),nondet]):-call(curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_260970).


test('?- curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_260988)),nondet]):-call(curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_260988).


test('?- curt80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_260442)),nondet]):-call(curt80("Two large windows offer a great view of space",[descriptionTest]),_260442).


test('?- curt80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_260694)),nondet]):-call(curt80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_260694).


test('?- curt80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_260370)),nondet]):-call(curt80("You're in the Enterprise science lab",[descriptionTest]),_260370).


test('?- curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_260760)),nondet]):-call(curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_260760).


test('?- curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_261258)),nondet]):-call(curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_261258).


test('?- curt80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_260514)),nondet]):-call(curt80("A complex looking computer console is facing this machine",[descriptionTest]),_260514).


test('?- curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_260670)),nondet]):-call(curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_260670).


test('?- curt80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_260430)),nondet]):-call(curt80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_260430).


test('?- curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_260664)),nondet]):-call(curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_260664).


test('?- curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_261036)),nondet]):-call(curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_261036).


test('?- curt80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_260838)),nondet]):-call(curt80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_260838).


test('?- curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_261234)),nondet]):-call(curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_261234).


test('?- curt80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_260436)),nondet]):-call(curt80("You're standing in Captain Picard's ready room",[descriptionTest]),_260436).


test('?- curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_260874)),nondet]):-call(curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_260874).


test('?- curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_260778)),nondet]):-call(curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_260778).


test('?- curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_260976)),nondet]):-call(curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_260976).


test('?- curt80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_260556)),nondet]):-call(curt80("This is where the Captain makes all of his important decisions",[descriptionTest]),_260556).


test('?- curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_260664)),nondet]):-call(curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_260664).


test('?- curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_260976)),nondet]):-call(curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_260976).


test('?- curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_260784)),nondet]):-call(curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_260784).


test('?- curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_260580)),nondet]):-call(curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_260580).


test('?- curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_260928)),nondet]):-call(curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_260928).


test('?- curt80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_260526)),nondet]):-call(curt80("This is where the ship's pilot and information officer sit",[descriptionTest]),_260526).


test('?- curt80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_260448)),nondet]):-call(curt80("You're in the conference room of the Enterprise",[descriptionTest]),_260448).


test('?- curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_260994)),nondet]):-call(curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_260994).


test('?- curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_260616)),nondet]):-call(curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_260616).


test('?- curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_260712)),nondet]):-call(curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_260712).


test('?- curt80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_260544)),nondet]):-call(curt80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_260544).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_177124)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_177124).


test('?- curt80("no two owners eat pizza",[sanity])',[true(compound(_177116)),nondet]):-call(curt80("no two owners eat pizza",[sanity]),_177116).


test('?- curt80("no three owners eat pizza",[sanity])',[true(compound(_177116)),nondet]):-call(curt80("no three owners eat pizza",[sanity]),_177116).


test('?- curt80("no three owners eat the same pizza",[sanity])',[true(compound(_177118)),nondet]):-call(curt80("no three owners eat the same pizza",[sanity]),_177118).


test('?- curt80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_177120)),nondet]):-call(curt80("no three owners eat the same kind of pizza",[sanity]),_177120).


test('?- curt80("no owners eat the same pizza",[sanity])',[true(compound(_177116)),nondet]):-call(curt80("no owners eat the same pizza",[sanity]),_177116).


test('?- curt80("no owners eat the same kind of pizza",[sanity])',[true(compound(_177118)),nondet]):-call(curt80("no owners eat the same kind of pizza",[sanity]),_177118).


test('?- curt80("there are 5 houses",[sanity])',[true(compound(_177114)),nondet]):-call(curt80("there are 5 houses",[sanity]),_177114).


test('?- curt80("there are not 5 houses",[sanity])',[true(compound(_177114)),nondet]):-call(curt80("there are not 5 houses",[sanity]),_177114).


test('?- curt80("there are not zero houses",[sanity])',[true(compound(_177116)),nondet]):-call(curt80("there are not zero houses",[sanity]),_177116).


test('?- curt80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_177124)),nondet]):-call(curt80(noun_phrase("less than 2 owners"),[sanity,bug]),_177124).


test('?- curt80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_177118)),nondet]):-call(curt80(noun_phrase("at most the 5 owners"),[sanity]),_177118).


test('?- curt80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_177118)),nondet]):-call(curt80(noun_phrase("at most 5 owners"),[sanity]),_177118).


test('?- curt80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_177118)),nondet]):-call(curt80(noun_phrase("less than 3 owners"),[sanity]),_177118).


test('?- curt80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_177120)),nondet]):-call(curt80(noun_phrase("at most 50 percent of owners"),[sanity]),_177120).


test('?- curt80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_177124)),nondet]):-call(curt80(noun_phrase("no three owners"),[sanity,no_working]),_177124).


test('?- curt80("terry writes a non-program.",[tell])',[true(compound(_177116)),nondet]):-call(curt80("terry writes a non-program.",[tell]),_177116).


test('?- curt80("every nonhuman programmer writes a program.",[tell])',[true(compound(_177120)),nondet]):-call(curt80("every nonhuman programmer writes a program.",[tell]),_177120).


test('?- curt80("every human programmer writes a not a program.",[tell])',[true(compound(_177120)),nondet]):-call(curt80("every human programmer writes a not a program.",[tell]),_177120).


test('?- curt80("every human programmer happily writes a not a program.",[tell])',[true(compound(_177122)),nondet]):-call(curt80("every human programmer happily writes a not a program.",[tell]),_177122).


:- end_tests(curt80).



:- begin_tests(e2c).



test('?- e2c("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_177166)),nondet]):-call(e2c("His friends are liked by hers.",[bad_juju,sanity]),_177166).


test('?- e2c("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_177168)),nondet]):-call(e2c("Her friends are not liked by his.",[bad_juju,sanity]),_177168).


test('?- e2c("Do their friends like each other?",[bad_juju,feature])',[true(compound(_177168)),nondet]):-call(e2c("Do their friends like each other?",[bad_juju,feature]),_177168).


test('?- e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_177110),sanity])',[true(compound(_177172)),nondet]):-call(e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_177110),sanity]),_177172).


test('?- e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_177108),sanity])',[true(compound(_177170)),nondet]):-call(e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_177108),sanity]),_177170).


test('?- e2c("There are 5 houses with five different colors.",[riddle(_177112),sanity])',[true(compound(_177174)),nondet]):-call(e2c("There are 5 houses with five different colors.",[riddle(_177112),sanity]),_177174).


test('?- e2c("There are 5 houses",[riddle_prep,sanity])',[true(compound(_177164)),nondet]):-call(e2c("There are 5 houses",[riddle_prep,sanity]),_177164).


test('?- e2c("Each house has a different color",[riddle_prep,sanity])',[true(compound(_177168)),nondet]):-call(e2c("Each house has a different color",[riddle_prep,sanity]),_177168).


test('?- e2c("In each house lives a person with a different nationality.",[riddle(_177116),sanity])',[true(compound(_177178)),nondet]):-call(e2c("In each house lives a person with a different nationality.",[riddle(_177116),sanity]),_177178).


test('?- e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_177190)),nondet]):-call(e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_177190).


test('?- e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_177178)),nondet]):-call(e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_177178).


test('?- e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_177176)),nondet]):-call(e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_177176).


test('?- e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_177180)),nondet]):-call(e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_177180).


test('?- e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_177184)),nondet]):-call(e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_177184).


test('?- e2c("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_177176)),nondet]):-call(e2c("No owners have the same pet.",[riddle(1),sanity,regression]),_177176).


test('?- e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_177180)),nondet]):-call(e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_177180).


test('?- e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_177174)),nondet]):-call(e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_177174).


test('?- e2c("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_177178)),nondet]):-call(e2c("No two owners have the same pet.",[riddle(1),sanity,regression]),_177178).


test('?- e2c("The brit lives in the red house.",[riddle(_177110),sanity])',[true(compound(_177172)),nondet]):-call(e2c("The brit lives in the red house.",[riddle(_177110),sanity]),_177172).


test('?- e2c("The swede keeps dogs as pets.",[riddle(_177108),sanity])',[true(compound(_177170)),nondet]):-call(e2c("The swede keeps dogs as pets.",[riddle(_177108),sanity]),_177170).


test('?- e2c("A dane drinks tea.",[riddle(_177106),sanity])',[true(compound(_177168)),nondet]):-call(e2c("A dane drinks tea.",[riddle(_177106),sanity]),_177168).


test('?- e2c("The green house is on the left of the white house.",[riddle(_177114),sanity])',[true(compound(_177176)),nondet]):-call(e2c("The green house is on the left of the white house.",[riddle(_177114),sanity]),_177176).


test('?- e2c("The green house\'s owner drinks coffee.",[riddle(_177110),sanity])',[true(compound(_177172)),nondet]):-call(e2c("The green house's owner drinks coffee.",[riddle(_177110),sanity]),_177172).


test('?- e2c("The person who smokes Pall Mall rears birds.",[riddle(_177112),sanity,regression])',[true(compound(_177180)),nondet]):-call(e2c("The person who smokes Pall Mall rears birds.",[riddle(_177112),sanity,regression]),_177180).


test('?- e2c("The owner of the yellow house smokes Dunhill.",[riddle(_177112),sanity])',[true(compound(_177174)),nondet]):-call(e2c("The owner of the yellow house smokes Dunhill.",[riddle(_177112),sanity]),_177174).


test('?- e2c("The man living in the center house drinks milk.",[riddle(_177114),sanity])',[true(compound(_177176)),nondet]):-call(e2c("The man living in the center house drinks milk.",[riddle(_177114),sanity]),_177176).


test('?- e2c("The Norwegian lives in the first house .",[riddle(_177112),sanity])',[true(compound(_177174)),nondet]):-call(e2c("The Norwegian lives in the first house .",[riddle(_177112),sanity]),_177174).


test('?- e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_177118),sanity])',[true(compound(_177180)),nondet]):-call(e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_177118),sanity]),_177180).


test('?- e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_177118),sanity])',[true(compound(_177180)),nondet]):-call(e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_177118),sanity]),_177180).


test('?- e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_177112),sanity])',[true(compound(_177174)),nondet]):-call(e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_177112),sanity]),_177174).


test('?- e2c("The German smokes Prince.",[riddle(_177108),sanity])',[true(compound(_177170)),nondet]):-call(e2c("The German smokes Prince.",[riddle(_177108),sanity]),_177170).


test('?- e2c("The Norwegian lives next to the blue house.",[riddle(_177112),sanity])',[true(compound(_177174)),nondet]):-call(e2c("The Norwegian lives next to the blue house.",[riddle(_177112),sanity]),_177174).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_177116),sanity])',[true(compound(_177178)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_177116),sanity]),_177178).


test('?- e2c("Who owns the fish?",[riddle(_177106),sanity])',[true(compound(_177168)),nondet]):-call(e2c("Who owns the fish?",[riddle(_177106),sanity]),_177168).


test('?- e2c("One woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("One woman paints.",[quants]),_177158).


test('?- e2c("No woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("No woman paints.",[quants]),_177158).


test('?- e2c("Some woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Some woman paints.",[quants]),_177158).


test('?- e2c("Every woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Every woman paints.",[quants]),_177158).


test('?- e2c("Each woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Each woman paints.",[quants]),_177158).


test('?- e2c("Any woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Any woman paints.",[quants]),_177158).


test('?- e2c("The woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("The woman paints.",[quants]),_177158).


test('?- e2c("The not woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("The not woman paints.",[quants]),_177158).


test('?- e2c("Not a woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Not a woman paints.",[quants]),_177158).


test('?- e2c("Not one woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Not one woman paints.",[quants]),_177158).


test('?- e2c("Not no woman paints.",[quants_neg_postcond])',[true(compound(_177158)),nondet]):-call(e2c("Not no woman paints.",[quants_neg_postcond]),_177158).


test('?- e2c("Not some woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Not some woman paints.",[quants]),_177158).


test('?- e2c("Not every woman paints.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("Not every woman paints.",[quants]),_177160).


test('?- e2c("Not each woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Not each woman paints.",[quants]),_177158).


test('?- e2c("Not any woman paints.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Not any woman paints.",[quants]),_177158).


test('?- e2c("The women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("The women paint.",[quants]),_177158).


test('?- e2c("Women paint.",[quants])',[true(compound(_177156)),nondet]):-call(e2c("Women paint.",[quants]),_177156).


test('?- e2c("Some women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Some women paint.",[quants]),_177158).


test('?- e2c("No women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("No women paint.",[quants]),_177158).


test('?- e2c("All women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("All women paint.",[quants]),_177158).


test('?- e2c("Any women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Any women paint.",[quants]),_177158).


test('?- e2c("Not women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Not women paint.",[quants]),_177158).


test('?- e2c("Not no women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Not no women paint.",[quants]),_177158).


test('?- e2c("Not all women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Not all women paint.",[quants]),_177158).


test('?- e2c("Not any women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Not any women paint.",[quants]),_177158).


test('?- e2c("The three women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("The three women paint.",[quants]),_177158).


test('?- e2c("Three women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Three women paint.",[quants]),_177158).


test('?- e2c("Some three women paint.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("Some three women paint.",[quants]),_177160).


test('?- e2c("No three women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("No three women paint.",[quants]),_177158).


test('?- e2c("Every three women paint.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("Every three women paint.",[quants]),_177160).


test('?- e2c("All three women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("All three women paint.",[quants]),_177158).


test('?- e2c("Any three women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Any three women paint.",[quants]),_177158).


test('?- e2c("Not three women paint.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("Not three women paint.",[quants]),_177158).


test('?- e2c("Not some three women paint.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("Not some three women paint.",[quants]),_177160).


test('?- e2c("Not no three women paint.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("Not no three women paint.",[quants]),_177160).


test('?- e2c("Not all three women paint.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("Not all three women paint.",[quants]),_177160).


test('?- e2c("Not every three women paint.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("Not every three women paint.",[quants]),_177160).


test('?- e2c("Not any three women paint.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("Not any three women paint.",[quants]),_177160).


test('?- e2c("Not three of the women paint.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("Not three of the women paint.",[quants]),_177160).


test('?- e2c("Not some of the three women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("Not some of the three women paint.",[quants]),_177162).


test('?- e2c("Not no three of the women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("Not no three of the women paint.",[quants]),_177162).


test('?- e2c("Not all three of the women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("Not all three of the women paint.",[quants]),_177162).


test('?- e2c("Not every three of the women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("Not every three of the women paint.",[quants]),_177162).


test('?- e2c("Not any three of the women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("Not any three of the women paint.",[quants]),_177162).


test('?- e2c("Not three of the four women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("Not three of the four women paint.",[quants]),_177162).


test('?- e2c("Not none of three out of the four women paint.",[quants])',[true(compound(_177164)),nondet]):-call(e2c("Not none of three out of the four women paint.",[quants]),_177164).


test('?- e2c("Not all three of the four women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("Not all three of the four women paint.",[quants]),_177162).


test('?- e2c("Not any three of the four women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("Not any three of the four women paint.",[quants]),_177162).


test('?- e2c("Three of the four women paint.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("Three of the four women paint.",[quants]),_177160).


test('?- e2c("Three out of the four women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("Three out of the four women paint.",[quants]),_177162).


test('?- e2c("All three of the four women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("All three of the four women paint.",[quants]),_177162).


test('?- e2c("Any three of the four women paint.",[quants])',[true(compound(_177162)),nondet]):-call(e2c("Any three of the four women paint.",[quants]),_177162).


test('?- e2c("I paint",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("I paint",[pronoun]),_177156).


test('?- e2c("you paint",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("you paint",[pronoun]),_177156).


test('?- e2c("We paint",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("We paint",[pronoun]),_177156).


test('?- e2c("None paint",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("None paint",[pronoun]),_177156).


test('?- e2c("They paint",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("They paint",[pronoun]),_177156).


test('?- e2c("Some paint",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("Some paint",[pronoun]),_177156).


test('?- e2c("It paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("It paints",[pronoun]),_177156).


test('?- e2c("he paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("he paints",[pronoun]),_177156).


test('?- e2c("She paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("She paints",[pronoun]),_177156).


test('?- e2c("Someone paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("Someone paints",[pronoun]),_177156).


test('?- e2c("Anybody paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("Anybody paints",[pronoun]),_177156).


test('?- e2c("Anyone paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("Anyone paints",[pronoun]),_177156).


test('?- e2c("Anything paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Anything paints",[pronoun]),_177158).


test('?- e2c("Everybody paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Everybody paints",[pronoun]),_177158).


test('?- e2c("Everyone paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Everyone paints",[pronoun]),_177158).


test('?- e2c("Everything paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Everything paints",[pronoun]),_177158).


test('?- e2c("Nobody paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("Nobody paints",[pronoun]),_177156).


test('?- e2c("No one paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("No one paints",[pronoun]),_177156).


test('?- e2c("Nothing paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("Nothing paints",[pronoun]),_177156).


test('?- e2c("One paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("One paints",[pronoun]),_177156).


test('?- e2c("Somebody paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Somebody paints",[pronoun]),_177158).


test('?- e2c("Something paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Something paints",[pronoun]),_177158).


test('?- e2c("Not anybody paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Not anybody paints",[pronoun]),_177158).


test('?- e2c("Not anyone paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Not anyone paints",[pronoun]),_177158).


test('?- e2c("Not anything paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Not anything paints",[pronoun]),_177158).


test('?- e2c("Not everybody paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Not everybody paints",[pronoun]),_177158).


test('?- e2c("Not everyone paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Not everyone paints",[pronoun]),_177158).


test('?- e2c("Not everything paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Not everything paints",[pronoun]),_177158).


test('?- e2c("Not nothing paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Not nothing paints",[pronoun]),_177158).


test('?- e2c("Not one paints",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("Not one paints",[pronoun]),_177156).


test('?- e2c("Not somebody paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Not somebody paints",[pronoun]),_177158).


test('?- e2c("Not something paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("Not something paints",[pronoun]),_177158).


test('?- e2c("She likes i",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("She likes i",[pronoun]),_177156).


test('?- e2c("She likes me",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("She likes me",[pronoun]),_177156).


test('?- e2c("She likes you",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("She likes you",[pronoun]),_177156).


test('?- e2c("She likes it",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("She likes it",[pronoun]),_177156).


test('?- e2c("She likes us",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("She likes us",[pronoun]),_177156).


test('?- e2c("She likes them",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("She likes them",[pronoun]),_177156).


test('?- e2c("She likes no one",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("She likes no one",[pronoun]),_177158).


test('?- e2c("She likes none",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("She likes none",[pronoun]),_177156).


test('?- e2c("She likes him",[pronoun])',[true(compound(_177156)),nondet]):-call(e2c("She likes him",[pronoun]),_177156).


test('?- e2c("She likes herself",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("She likes herself",[pronoun]),_177158).


test('?- e2c("She likes himself",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("She likes himself",[pronoun]),_177158).


test('?- e2c("It is us that paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("It is us that paints",[pronoun]),_177158).


test('?- e2c("It is them that paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("It is them that paints",[pronoun]),_177158).


test('?- e2c("It is he that paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("It is he that paints",[pronoun]),_177158).


test('?- e2c("It is she that paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("It is she that paints",[pronoun]),_177158).


test('?- e2c("It is her that paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("It is her that paints",[pronoun]),_177158).


test('?- e2c("It is him that paints",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("It is him that paints",[pronoun]),_177158).


test('?- e2c("We are us that paint",[pronoun])',[true(compound(_177158)),nondet]):-call(e2c("We are us that paint",[pronoun]),_177158).


test('?- e2c("We are all of us that paint",[pronoun])',[true(compound(_177160)),nondet]):-call(e2c("We are all of us that paint",[pronoun]),_177160).


test('?- e2c("It is everybody that paints",[pronoun])',[true(compound(_177160)),nondet]):-call(e2c("It is everybody that paints",[pronoun]),_177160).


test('?- e2c("Every man that paints likes monet.",[bratko])',[true(compound(_177162)),nondet]):-call(e2c("Every man that paints likes monet.",[bratko]),_177162).


test('?- e2c("A woman that admires John paints.",[bratko])',[true(compound(_177162)),nondet]):-call(e2c("A woman that admires John paints.",[bratko]),_177162).


test('?- e2c("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_177168)),nondet]):-call(e2c("Every woman that likes a man that admires monet paints.",[bratko]),_177168).


test('?- e2c("John likes Annie.",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("John likes Annie.",[bratko]),_177158).


test('?- e2c("Annie likes a man that admires monet.",[bratko])',[true(compound(_177162)),nondet]):-call(e2c("Annie likes a man that admires monet.",[bratko]),_177162).


test('?- e2c("Bertrand Russell wrote principia.",[bratko])',[true(compound(_177162)),nondet]):-call(e2c("Bertrand Russell wrote principia.",[bratko]),_177162).


test('?- e2c("An author wrote principia.",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("An author wrote principia.",[bratko]),_177160).


test('?- e2c("Iraq is a country.",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("Iraq is a country.",[bratko]),_177158).


test('?- e2c("A happy author wrote principia.",[bratko])',[true(compound(_177162)),nondet]):-call(e2c("A happy author wrote principia.",[bratko]),_177162).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_177158).


test('?- e2c("Bertrand is an author.",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("Bertrand is an author.",[bratko]),_177158).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_177158).


test('?- e2c("Every author is a programmer.",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("Every author is a programmer.",[bratko]),_177160).


test('?- e2c("Is Bertrand an programmer?",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("Is Bertrand an programmer?",[bratko]),_177160).


test('?- e2c("What is a author?",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("What is a author?",[bratko]),_177158).


test('?- e2c("What did Bertrand write?",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("What did Bertrand write?",[bratko]),_177160).


test('?- e2c("What is a book?",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("What is a book?",[bratko]),_177158).


test('?- e2c("Principia is a book.",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("Principia is a book.",[bratko]),_177158).


test('?- e2c("Bertrand is Bertrand.",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("Bertrand is Bertrand.",[bratko]),_177158).


test('?- e2c("Shrdlu halts.",[bratko])',[true(compound(_177156)),nondet]):-call(e2c("Shrdlu halts.",[bratko]),_177156).


test('?- e2c("Every student wrote a program.",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("Every student wrote a program.",[bratko]),_177160).


test('?- e2c("Terry writes a program.",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("Terry writes a program.",[bratko]),_177160).


test('?- e2c("Terry writes a program that halts.",[bratko])',[true(compound(_177162)),nondet]):-call(e2c("Terry writes a program that halts.",[bratko]),_177162).


test('?- e2c("An author of every book wrote a program.",[bratko])',[true(compound(_177164)),nondet]):-call(e2c("An author of every book wrote a program.",[bratko]),_177164).


test('?- e2c("A man hapilly maried paints.",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("A man hapilly maried paints.",[bratko]),_177160).


test('?- e2c("A hapilly maried man paints.",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("A hapilly maried man paints.",[bratko]),_177160).


test('?- e2c("A man who knows paints.",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("A man who knows paints.",[bratko]),_177160).


test('?- e2c("A man gives something.",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("A man gives something.",[bratko]),_177158).


test('?- e2c("A man gives his word.",[bratko])',[true(compound(_177158)),nondet]):-call(e2c("A man gives his word.",[bratko]),_177158).


test('?- e2c("A man of his word paints.",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("A man of his word paints.",[bratko]),_177160).


test('?- e2c("A man paints.",[bratko])',[true(compound(_177156)),nondet]):-call(e2c("A man paints.",[bratko]),_177156).


test('?- e2c("A man that paints paints.",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("A man that paints paints.",[bratko]),_177160).


test('?- e2c("A man walks.",[bratko])',[true(compound(_177156)),nondet]):-call(e2c("A man walks.",[bratko]),_177156).


test('?- e2c("A man that walks paints.",[bratko])',[true(compound(_177160)),nondet]):-call(e2c("A man that walks paints.",[bratko]),_177160).


test('?- e2c("It halts.",[bratko])',[true(compound(_177156)),nondet]):-call(e2c("It halts.",[bratko]),_177156).


test('?- e2c("A man of his word that walks paints.",[bratko])',[true(compound(_177162)),nondet]):-call(e2c("A man of his word that walks paints.",[bratko]),_177162).


test('?- e2c("The cost of what the product is changes.",[bratko])',[true(compound(_177164)),nondet]):-call(e2c("The cost of what the product is changes.",[bratko]),_177164).


test('?- e2c("We need a virtual machine server.",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("We need a virtual machine server.",[aindy]),_177162).


test('?- e2c("The virtual machine server should have several VMs.",[aindy])',[true(compound(_177166)),nondet]):-call(e2c("The virtual machine server should have several VMs.",[aindy]),_177166).


test('?- e2c("One VM should be the POSI VM.",[aindy])',[true(compound(_177160)),nondet]):-call(e2c("One VM should be the POSI VM.",[aindy]),_177160).


test('?- e2c("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("One VM should be the FRDCSA.org VM.",[aindy]),_177162).


test('?- e2c("One VM should be the mail server.",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("One VM should be the mail server.",[aindy]),_177162).


test('?- e2c("One computer should be the backup server.",[aindy])',[true(compound(_177164)),nondet]):-call(e2c("One computer should be the backup server.",[aindy]),_177164).


test('?- e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_177180)),nondet]):-call(e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_177180).


test('?- e2c("I need a fast computer for work.",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("I need a fast computer for work.",[aindy]),_177162).


test('?- e2c("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_177172)),nondet]):-call(e2c("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_177172).


test('?- e2c("I need a dedicated computer for network security research.",[aindy])',[true(compound(_177168)),nondet]):-call(e2c("I need a dedicated computer for network security research.",[aindy]),_177168).


test('?- e2c("I need a machine to run Tails on.",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("I need a machine to run Tails on.",[aindy]),_177162).


test('?- e2c("I need a machine off the network for airgap security.",[aindy])',[true(compound(_177166)),nondet]):-call(e2c("I need a machine off the network for airgap security.",[aindy]),_177166).


test('?- e2c("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_177172)),nondet]):-call(e2c("One VM should be the game server for running game development projects.",[aindy]),_177172).


test('?- e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_177166)),nondet]):-call(e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_177166).


test('?- e2c("I could read about how to build a private watson.",[aindy])',[true(compound(_177166)),nondet]):-call(e2c("I could read about how to build a private watson.",[aindy]),_177166).


test('?- e2c("Need backups.",[aindy])',[true(compound(_177156)),nondet]):-call(e2c("Need backups.",[aindy]),_177156).


test('?- e2c("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_177170)),nondet]):-call(e2c("Practice setting up backups of a machine to a different machine.",[aindy]),_177170).


test('?- e2c("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_177168)),nondet]):-call(e2c("Set up schedules for updating the software on all machines.",[aindy]),_177168).


test('?- e2c("Read books on server room layout.",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("Read books on server room layout.",[aindy]),_177162).


test('?- e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_177170)),nondet]):-call(e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_177170).


test('?- e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_177172)),nondet]):-call(e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_177172).


test('?- e2c("I want a gaming computer.  Do I?",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("I want a gaming computer.  Do I?",[aindy]),_177162).


test('?- e2c("I want a windows 7 computer for work.",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("I want a windows 7 computer for work.",[aindy]),_177162).


test('?- e2c("I want a fast linux computer for work.",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("I want a fast linux computer for work.",[aindy]),_177162).


test('?- e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_177182)),nondet]):-call(e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_177182).


test('?- e2c("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_177168)),nondet]):-call(e2c("I could install a fresh operating system on justin for work.",[aindy]),_177168).


test('?- e2c("I probably want a separate git computer.",[aindy])',[true(compound(_177164)),nondet]):-call(e2c("I probably want a separate git computer.",[aindy]),_177164).


test('?- e2c("I need to start buying servers.",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("I need to start buying servers.",[aindy]),_177162).


test('?- e2c("I want a rackmount case for servers.",[aindy])',[true(compound(_177162)),nondet]):-call(e2c("I want a rackmount case for servers.",[aindy]),_177162).


test('?- e2c("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_177168)),nondet]):-call(e2c("Each african country is bordered by 2 oceans.",[chat80(tell)]),_177168).


test('?- e2c("2 oceans border each african country.",[chat80(tell)])',[true(compound(_177166)),nondet]):-call(e2c("2 oceans border each african country.",[chat80(tell)]),_177166).


test('?- e2c("There are 10 large cars.",[quants])',[true(compound(_177160)),nondet]):-call(e2c("There are 10 large cars.",[quants]),_177160).


test('?- e2c("There are 10 oceans.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("There are 10 oceans.",[quants]),_177158).


test('?- e2c("There are 10 women.",[quants])',[true(compound(_177158)),nondet]):-call(e2c("There are 10 women.",[quants]),_177158).


test('?- e2c("An ocean borders an African country.",[chat80(tell)])',[true(compound(_177166)),nondet]):-call(e2c("An ocean borders an African country.",[chat80(tell)]),_177166).


test('?- e2c("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_177174)),nondet]):-call(e2c("What is the ocean that borders african countries and that borders asian countries?",[tell]),_177174).


test('?- e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_177176)),nondet]):-call(e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_177176).


test('?- e2c("Bertrand wrote a book.",[bratko(book)])',[true(compound(_177162)),nondet]):-call(e2c("Bertrand wrote a book.",[bratko(book)]),_177162).


test('?- e2c("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_177164)),nondet]):-call(e2c("Bertrand wrote nothing.",[bratko(book)]),_177164).


test('?- e2c("Bertrand wrote.",[bratko(book)])',[true(compound(_177162)),nondet]):-call(e2c("Bertrand wrote.",[bratko(book)]),_177162).


test('?- e2c("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_177166)),nondet]):-call(e2c("Bertrand wrote a book about Gottlob.",[bratko(book)]),_177166).


test('?- e2c("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_177164)),nondet]):-call(e2c("Bertrand wrote about Gottlob.",[bratko(book)]),_177164).


test('?- e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_177166)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_177166).


test('?- e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_177168)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_177168).


test('?- e2c("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_177166)),nondet]):-call(e2c("What did alfred write to Bertrand?",[bratko(book)]),_177166).


test('?- e2c("Alfred wrote a letter.",[bratko(book)])',[true(compound(_177162)),nondet]):-call(e2c("Alfred wrote a letter.",[bratko(book)]),_177162).


test('?- e2c("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_177166)),nondet]):-call(e2c("Alfred wrote a letter to Bertrand.",[bratko(book)]),_177166).


test('?- e2c("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_177166)),nondet]):-call(e2c("Alfred wrote something to Bertrand.",[bratko(book)]),_177166).


test('?- e2c("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_177164)),nondet]):-call(e2c("Alfred wrote to Bertrand.",[bratko(book)]),_177164).


test('?- e2c("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_177166)),nondet]):-call(e2c("Alfred wrote to Bertrand a letter.",[bratko(book)]),_177166).


test('?- e2c("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_177166)),nondet]):-call(e2c("Alfred wrote Bertrand a letter.",[bratko(book)]),_177166).


test('?- e2c("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_177166)),nondet]):-call(e2c("Who did alfred write a letter to?",[bratko(book)]),_177166).


test('?- e2c("Alfred gave it.",[bratko(book)])',[true(compound(_177162)),nondet]):-call(e2c("Alfred gave it.",[bratko(book)]),_177162).


test('?- e2c("Alfred gave a book.",[bratko(book)])',[true(compound(_177162)),nondet]):-call(e2c("Alfred gave a book.",[bratko(book)]),_177162).


test('?- e2c("a pride of lions paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a pride of lions paint",[of]),_177158).


test('?- e2c("a flock of birds paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a flock of birds paint",[of]),_177158).


test('?- e2c("a litter of pups paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a litter of pups paint",[of]),_177158).


test('?- e2c("a prickle of porcupines paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a prickle of porcupines paint",[of]),_177160).


test('?- e2c("a litter of cubs paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a litter of cubs paint",[of]),_177158).


test('?- e2c("a pack of dogs paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a pack of dogs paint",[of]),_177158).


test('?- e2c("a colony of beavers paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a colony of beavers paint",[of]),_177160).


test('?- e2c("a gaggle of geese paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a gaggle of geese paint",[of]),_177160).


test('?- e2c("a family of otters paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a family of otters paint",[of]),_177160).


test('?- e2c("a huddle of walruses paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a huddle of walruses paint",[of]),_177160).


test('?- e2c("a herd of deer paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a herd of deer paint",[of]),_177158).


test('?- e2c("a culture of bacteria paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a culture of bacteria paint",[of]),_177160).


test('?- e2c("a swarm of bees paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a swarm of bees paint",[of]),_177158).


test('?- e2c("a bed of clams paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a bed of clams paint",[of]),_177158).


test('?- e2c("a school of cod paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a school of cod paint",[of]),_177158).


test('?- e2c("a herd of dinosaurs paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a herd of dinosaurs paint",[of]),_177160).


test('?- e2c("a mess of iguanas paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a mess of iguanas paint",[of]),_177160).


test('?- e2c("a mob of wombats paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a mob of wombats paint",[of]),_177158).


test('?- e2c("a pod of pelicans paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a pod of pelicans paint",[of]),_177160).


test('?- e2c("a troop of boy scouts paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a troop of boy scouts paint",[of]),_177160).


test('?- e2c("a team of athletes paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a team of athletes paint",[of]),_177160).


test('?- e2c("a panel of experts paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a panel of experts paint",[of]),_177160).


test('?- e2c("a crew of sailors paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a crew of sailors paint",[of]),_177160).


test('?- e2c("a band of robbers paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a band of robbers paint",[of]),_177160).


test('?- e2c("a troupe of performers paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a troupe of performers paint",[of]),_177160).


test('?- e2c("a crowd of onlookers paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a crowd of onlookers paint",[of]),_177160).


test('?- e2c("a curse of painters paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("a curse of painters paint",[of]),_177160).


test('?- e2c("a fleet of cars paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a fleet of cars paint",[of]),_177158).


test('?- e2c("a pair of shoes paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a pair of shoes paint",[of]),_177158).


test('?- e2c("a fleet of ships paint",[of])',[true(compound(_177158)),nondet]):-call(e2c("a fleet of ships paint",[of]),_177158).


test('?- e2c("an anthology of stories paint",[of])',[true(compound(_177160)),nondet]):-call(e2c("an anthology of stories paint",[of]),_177160).


test('?- e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_260516)),nondet]):-call(e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_260516).


test('?- e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_260486)),nondet]):-call(e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_260486).


test('?- e2c("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_260624)),nondet]):-call(e2c("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_260624).


test('?- e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_260468)),nondet]):-call(e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_260468).


test('?- e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_260516)),nondet]):-call(e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_260516).


test('?- e2c("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_260612)),nondet]):-call(e2c("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_260612).


test('?- e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_260570)),nondet]):-call(e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_260570).


test('?- e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_260762)),nondet]):-call(e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_260762).


test('?- e2c("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_260534)),nondet]):-call(e2c("He stowed super-human strength, and is extremely tough",[descriptionTest]),_260534).


test('?- e2c("Logged on player character",[descriptionTest])',[true(compound(_260342)),nondet]):-call(e2c("Logged on player character",[descriptionTest]),_260342).


test('?- e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_260600)),nondet]):-call(e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_260600).


test('?- e2c("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_260546)),nondet]):-call(e2c("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_260546).


test('?- e2c("Wesley is her son",[descriptionTest])',[true(compound(_260288)),nondet]):-call(e2c("Wesley is her son",[descriptionTest]),_260288).


test('?- e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_260936)),nondet]):-call(e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_260936).


test('?- e2c("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_260366)),nondet]):-call(e2c("Counselor Deanna Troi is here",[descriptionTest]),_260366).


test('?- e2c("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_260462)),nondet]):-call(e2c("Counselor Troi is the ship's main counselor",[descriptionTest]),_260462).


test('?- e2c("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_260618)),nondet]):-call(e2c("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_260618).


test('?- e2c("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_260492)),nondet]):-call(e2c("Commander William Riker is here, staring at you",[descriptionTest]),_260492).


test('?- e2c("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_260498)),nondet]):-call(e2c("Commander Riker is the Enterprise's first officer",[descriptionTest]),_260498).


test('?- e2c("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_260468)),nondet]):-call(e2c("He's in charge of keeping the crew in line",[descriptionTest]),_260468).


test('?- e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_260534)),nondet]):-call(e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_260534).


test('?- e2c("Captain Picard is a very important man",[descriptionTest])',[true(compound(_260432)),nondet]):-call(e2c("Captain Picard is a very important man",[descriptionTest]),_260432).


test('?- e2c("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_260534)),nondet]):-call(e2c("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_260534).


test('?- e2c("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_260378)),nondet]):-call(e2c("He's very smart, and very wise",[descriptionTest]),_260378).


test('?- e2c("Don\'t mess with him!",[descriptionTest])',[true(compound(_260306)),nondet]):-call(e2c("Don't mess with him!",[descriptionTest]),_260306).


test('?- e2c("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_260384)),nondet]):-call(e2c("Guinan is here, tending the bar",[descriptionTest]),_260384).


test('?- e2c("Guinan is a strange being",[descriptionTest])',[true(compound(_260342)),nondet]):-call(e2c("Guinan is a strange being",[descriptionTest]),_260342).


test('?- e2c("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_261050)),nondet]):-call(e2c("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_261050).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_260552)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_260552).


test('?- e2c("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_260552)),nondet]):-call(e2c("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_260552).


test('?- e2c("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_260852)),nondet]):-call(e2c("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_260852).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_260546)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_260546).


test('?- e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_260570)),nondet]):-call(e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_260570).


test('?- e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_260840)),nondet]):-call(e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_260840).


test('?- e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_260762)),nondet]):-call(e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_260762).


test('?- e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_260552)),nondet]):-call(e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_260552).


test('?- e2c("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_260432)),nondet]):-call(e2c("Livingston is Captain Picard's pet fish",[descriptionTest]),_260432).


test('?- e2c("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_260684)),nondet]):-call(e2c("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_260684).


test('?- e2c("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_260534)),nondet]):-call(e2c("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_260534).


test('?- e2c("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_260402)),nondet]):-call(e2c("Spot is Data's orange coloured cat",[descriptionTest]),_260402).


test('?- e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_260924)),nondet]):-call(e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_260924).


test('?- e2c("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_260546)),nondet]):-call(e2c("A nervous looking ensign is standing here, watching you",[descriptionTest]),_260546).


test('?- e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_260528)),nondet]):-call(e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_260528).


test('?- e2c("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_260870)),nondet]):-call(e2c("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_260870).


test('?- e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_260516)),nondet]):-call(e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_260516).


test('?- e2c("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_260384)),nondet]):-call(e2c("Alexander Rozhenko is Worf's son",[descriptionTest]),_260384).


test('?- e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_260666)),nondet]):-call(e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_260666).


test('?- e2c("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_260582)),nondet]):-call(e2c("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_260582).


test('?- e2c("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_260528)),nondet]):-call(e2c("A standard issue Starfleet phaser has been left here",[descriptionTest]),_260528).


test('?- e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_260930)),nondet]):-call(e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_260930).


test('?- e2c("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_260408)),nondet]):-call(e2c("A large phaser rifle is lying here",[descriptionTest]),_260408).


test('?- e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_261002)),nondet]):-call(e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_261002).


test('?- e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_260606)),nondet]):-call(e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_260606).


test('?- e2c("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260954)),nondet]):-call(e2c("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260954).


test('?- e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_260606)),nondet]):-call(e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_260606).


test('?- e2c("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260978)),nondet]):-call(e2c("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260978).


test('?- e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_260582)),nondet]):-call(e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_260582).


test('?- e2c("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_260954)),nondet]):-call(e2c("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_260954).


test('?- e2c("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_260504)),nondet]):-call(e2c("A pair of Starfleet black boots are sitting here",[descriptionTest]),_260504).


test('?- e2c("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_261044)),nondet]):-call(e2c("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_261044).


test('?- e2c("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_260474)),nondet]):-call(e2c("A Starfleet communication badge is lying here",[descriptionTest]),_260474).


test('?- e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_261512)),nondet]):-call(e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_261512).


test('?- e2c("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_260468)),nondet]):-call(e2c("Worf's silver chain sash has been left here",[descriptionTest]),_260468).


test('?- e2c("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_261080)),nondet]):-call(e2c("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_261080).


test('?- e2c("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_260360)),nondet]):-call(e2c("Geordi's VISOR is lying here",[descriptionTest]),_260360).


test('?- e2c("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_261752)),nondet]):-call(e2c("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_261752).


test('?- e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_260528)),nondet]):-call(e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_260528).


test('?- e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_261314)),nondet]):-call(e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_261314).


test('?- e2c("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_260462)),nondet]):-call(e2c("A shard of dilithium crystal is lying here",[descriptionTest]),_260462).


test('?- e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_261116)),nondet]):-call(e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_261116).


test('?- e2c("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_260474)),nondet]):-call(e2c("Captain Picard's wooden flute is sitting here",[descriptionTest]),_260474).


test('?- e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_261086)),nondet]):-call(e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_261086).


test('?- e2c("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_260486)),nondet]):-call(e2c("Commander Riker's trombone has been placed here",[descriptionTest]),_260486).


test('?- e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_260918)),nondet]):-call(e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_260918).


test('?- e2c("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_260414)),nondet]):-call(e2c("A small cup of tea is sitting here",[descriptionTest]),_260414).


test('?- e2c("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_260432)),nondet]):-call(e2c("A bottle of synthehol is standing here",[descriptionTest]),_260432).


test('?- e2c("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_260444)),nondet]):-call(e2c("A bottle of Ferengi ale is sitting here",[descriptionTest]),_260444).


test('?- e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_260468)),nondet]):-call(e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_260468).


test('?- e2c("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_260480)),nondet]):-call(e2c("A small glass of prune juice is sitting here",[descriptionTest]),_260480).


test('?- e2c("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_260450)),nondet]):-call(e2c("A bottle of Vulcan beer is standing here",[descriptionTest]),_260450).


test('?- e2c("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_260522)),nondet]):-call(e2c("You find yourself in the middle of main engineering",[descriptionTest]),_260522).


test('?- e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_260642)),nondet]):-call(e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_260642).


test('?- e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_260942)),nondet]):-call(e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_260942).


test('?- e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_260750)),nondet]):-call(e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_260750).


test('?- e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_260678)),nondet]):-call(e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_260678).


test('?- e2c("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_260858)),nondet]):-call(e2c("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_260858).


test('?- e2c("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_260450)),nondet]):-call(e2c("You're in the middle of Geordi's quarters",[descriptionTest]),_260450).


test('?- e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_260648)),nondet]):-call(e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_260648).


test('?- e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_260972)),nondet]):-call(e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_260972).


test('?- e2c("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_260582)),nondet]):-call(e2c("A neatly made bed has been placed against the northern wall",[descriptionTest]),_260582).


test('?- e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_260552)),nondet]):-call(e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_260552).


test('?- e2c("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_260438)),nondet]):-call(e2c("You're in the middle of Data's quarters",[descriptionTest]),_260438).


test('?- e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_261500)),nondet]):-call(e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_261500).


test('?- e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_260714)),nondet]):-call(e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_260714).


test('?- e2c("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_260738)),nondet]):-call(e2c("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_260738).


test('?- e2c("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_260366)),nondet]):-call(e2c("You're in the dimly lit Brig",[descriptionTest]),_260366).


test('?- e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_260756)),nondet]):-call(e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_260756).


test('?- e2c("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_260834)),nondet]):-call(e2c("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_260834).


test('?- e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_261128)),nondet]):-call(e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_261128).


test('?- e2c(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_267356)),nondet]):-call(e2c('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_267356).


test('?- e2c("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_260840)),nondet]):-call(e2c("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_260840).


test('?- e2c("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_260444)),nondet]):-call(e2c("You're in the Enterprise transporter room",[descriptionTest]),_260444).


test('?- e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_260930)),nondet]):-call(e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_260930).


test('?- e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_260900)),nondet]):-call(e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_260900).


test('?- e2c("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_260438)),nondet]):-call(e2c("You find yourself in a transporter beam",[descriptionTest]),_260438).


test('?- e2c("All you can see is blue flashing light",[descriptionTest])',[true(compound(_260438)),nondet]):-call(e2c("All you can see is blue flashing light",[descriptionTest]),_260438).


test('?- e2c("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_260594)),nondet]):-call(e2c("It feels as though your body is racing around at high speeds",[descriptionTest]),_260594).


test('?- e2c("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_260714)),nondet]):-call(e2c("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_260714).


test('?- e2c("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_260642)),nondet]):-call(e2c("You step through the doors and find yourself in a large school room",[descriptionTest]),_260642).


test('?- e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_261020)),nondet]):-call(e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_261020).


test('?- e2c("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_260774)),nondet]):-call(e2c("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_260774).


test('?- e2c("You\'re in the turbolift",[descriptionTest])',[true(compound(_260324)),nondet]):-call(e2c("You're in the turbolift",[descriptionTest]),_260324).


test('?- e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_260702)),nondet]):-call(e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_260702).


test('?- e2c("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_260594)),nondet]):-call(e2c("Several vertical rows of lights make this place very well lit",[descriptionTest]),_260594).


test('?- e2c("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_260582)),nondet]):-call(e2c("From here, you can access the other decks on the Enterprise",[descriptionTest]),_260582).


test('?- e2c("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_260336)),nondet]):-call(e2c("You're now on Holodeck 2",[descriptionTest]),_260336).


test('?- e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_261020)),nondet]):-call(e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_261020).


test('?- e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_260768)),nondet]):-call(e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_260768).


test('?- e2c("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_260462)),nondet]):-call(e2c("Right now, this holodeck is not functioning",[descriptionTest]),_260462).


test('?- e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_260570)),nondet]):-call(e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_260570).


test('?- e2c("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_260492)),nondet]):-call(e2c("You're in the main cargo bay of the Enterprise",[descriptionTest]),_260492).


test('?- e2c("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_260702)),nondet]):-call(e2c("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_260702).


test('?- e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_261020)),nondet]):-call(e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_261020).


test('?- e2c("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_260396)),nondet]):-call(e2c("You've arrived in Riker's quarters",[descriptionTest]),_260396).


test('?- e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_260972)),nondet]):-call(e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_260972).


test('?- e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_260906)),nondet]):-call(e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_260906).


test('?- e2c("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_260510)),nondet]):-call(e2c("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_260510).


test('?- e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_261146)),nondet]):-call(e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_261146).


test('?- e2c("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_260942)),nondet]):-call(e2c("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_260942).


test('?- e2c("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_260414)),nondet]):-call(e2c("You emerge into a dark narrow alley",[descriptionTest]),_260414).


test('?- e2c("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_260558)),nondet]):-call(e2c("Tall dark brick buildings block your way north and south",[descriptionTest]),_260558).


test('?- e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_260822)),nondet]):-call(e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_260822).


test('?- e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_260858)),nondet]):-call(e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_260858).


test('?- e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_260594)),nondet]):-call(e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_260594).


test('?- e2c("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_260498)),nondet]):-call(e2c("The archway leading out of the holodeck is west",[descriptionTest]),_260498).


test('?- e2c("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_260402)),nondet]):-call(e2c("You're in Doctor Crusher's quarters",[descriptionTest]),_260402).


test('?- e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_260798)),nondet]):-call(e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_260798).


test('?- e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_260888)),nondet]):-call(e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_260888).


test('?- e2c("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_260630)),nondet]):-call(e2c("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_260630).


test('?- e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_261254)),nondet]):-call(e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_261254).


test('?- e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_260726)),nondet]):-call(e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_260726).


test('?- e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_261122)),nondet]):-call(e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_261122).


test('?- e2c("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_260594)),nondet]):-call(e2c("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_260594).


test('?- e2c("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_260522)),nondet]):-call(e2c("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_260522).


test('?- e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_261416)),nondet]):-call(e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_261416).


test('?- e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_260594)),nondet]):-call(e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_260594).


test('?- e2c("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_260504)),nondet]):-call(e2c("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_260504).


test('?- e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_260696)),nondet]):-call(e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_260696).


test('?- e2c("A large grey door leads into space",[descriptionTest])',[true(compound(_260408)),nondet]):-call(e2c("A large grey door leads into space",[descriptionTest]),_260408).


test('?- e2c("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_260594)),nondet]):-call(e2c("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_260594).


test('?- e2c("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_260666)),nondet]):-call(e2c("You can see stars in every direction, which provide the only light here",[descriptionTest]),_260666).


test('?- e2c("You feel very cold",[descriptionTest])',[true(compound(_260294)),nondet]):-call(e2c("You feel very cold",[descriptionTest]),_260294).


test('?- e2c("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_260564)),nondet]):-call(e2c("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_260564).


test('?- e2c("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_260450)),nondet]):-call(e2c("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_260450).


test('?- e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_261062)),nondet]):-call(e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_261062).


test('?- e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_260786)),nondet]):-call(e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_260786).


test('?- e2c("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_260336)),nondet]):-call(e2c("You're in Worf's quarters",[descriptionTest]),_260336).


test('?- e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_260780)),nondet]):-call(e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_260780).


test('?- e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_261194)),nondet]):-call(e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_261194).


test('?- e2c("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_260402)),nondet]):-call(e2c("You emerge into the Enterprise gym",[descriptionTest]),_260402).


test('?- e2c("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_260504)),nondet]):-call(e2c("The room is quite large, with a soft grey floor",[descriptionTest]),_260504).


test('?- e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_260912)),nondet]):-call(e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_260912).


test('?- e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_260876)),nondet]):-call(e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_260876).


test('?- e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_260564)),nondet]):-call(e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_260564).


test('?- e2c("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_260630)),nondet]):-call(e2c("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_260630).


test('?- e2c("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_260720)),nondet]):-call(e2c("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_260720).


test('?- e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_261014)),nondet]):-call(e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_261014).


test('?- e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_261032)),nondet]):-call(e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_261032).


test('?- e2c("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_260486)),nondet]):-call(e2c("Two large windows offer a great view of space",[descriptionTest]),_260486).


test('?- e2c("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_260738)),nondet]):-call(e2c("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_260738).


test('?- e2c("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_260414)),nondet]):-call(e2c("You're in the Enterprise science lab",[descriptionTest]),_260414).


test('?- e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_260804)),nondet]):-call(e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_260804).


test('?- e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_261302)),nondet]):-call(e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_261302).


test('?- e2c("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_260558)),nondet]):-call(e2c("A complex looking computer console is facing this machine",[descriptionTest]),_260558).


test('?- e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_260714)),nondet]):-call(e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_260714).


test('?- e2c("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_260474)),nondet]):-call(e2c("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_260474).


test('?- e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_260708)),nondet]):-call(e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_260708).


test('?- e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_261080)),nondet]):-call(e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_261080).


test('?- e2c("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_260882)),nondet]):-call(e2c("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_260882).


test('?- e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_261278)),nondet]):-call(e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_261278).


test('?- e2c("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_260480)),nondet]):-call(e2c("You're standing in Captain Picard's ready room",[descriptionTest]),_260480).


test('?- e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_260918)),nondet]):-call(e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_260918).


test('?- e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_260822)),nondet]):-call(e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_260822).


test('?- e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_261020)),nondet]):-call(e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_261020).


test('?- e2c("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_260600)),nondet]):-call(e2c("This is where the Captain makes all of his important decisions",[descriptionTest]),_260600).


test('?- e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_260708)),nondet]):-call(e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_260708).


test('?- e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_261020)),nondet]):-call(e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_261020).


test('?- e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_260828)),nondet]):-call(e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_260828).


test('?- e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_260624)),nondet]):-call(e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_260624).


test('?- e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_260972)),nondet]):-call(e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_260972).


test('?- e2c("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_260570)),nondet]):-call(e2c("This is where the ship's pilot and information officer sit",[descriptionTest]),_260570).


test('?- e2c("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_260492)),nondet]):-call(e2c("You're in the conference room of the Enterprise",[descriptionTest]),_260492).


test('?- e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_261038)),nondet]):-call(e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_261038).


test('?- e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_260660)),nondet]):-call(e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_260660).


test('?- e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_260756)),nondet]):-call(e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_260756).


test('?- e2c("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_260588)),nondet]):-call(e2c("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_260588).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_177168)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_177168).


test('?- e2c("no two owners eat pizza",[sanity])',[true(compound(_177160)),nondet]):-call(e2c("no two owners eat pizza",[sanity]),_177160).


test('?- e2c("no three owners eat pizza",[sanity])',[true(compound(_177160)),nondet]):-call(e2c("no three owners eat pizza",[sanity]),_177160).


test('?- e2c("no three owners eat the same pizza",[sanity])',[true(compound(_177162)),nondet]):-call(e2c("no three owners eat the same pizza",[sanity]),_177162).


test('?- e2c("no three owners eat the same kind of pizza",[sanity])',[true(compound(_177164)),nondet]):-call(e2c("no three owners eat the same kind of pizza",[sanity]),_177164).


test('?- e2c("no owners eat the same pizza",[sanity])',[true(compound(_177160)),nondet]):-call(e2c("no owners eat the same pizza",[sanity]),_177160).


test('?- e2c("no owners eat the same kind of pizza",[sanity])',[true(compound(_177162)),nondet]):-call(e2c("no owners eat the same kind of pizza",[sanity]),_177162).


test('?- e2c("there are 5 houses",[sanity])',[true(compound(_177158)),nondet]):-call(e2c("there are 5 houses",[sanity]),_177158).


test('?- e2c("there are not 5 houses",[sanity])',[true(compound(_177158)),nondet]):-call(e2c("there are not 5 houses",[sanity]),_177158).


test('?- e2c("there are not zero houses",[sanity])',[true(compound(_177160)),nondet]):-call(e2c("there are not zero houses",[sanity]),_177160).


test('?- e2c(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_177168)),nondet]):-call(e2c(noun_phrase("less than 2 owners"),[sanity,bug]),_177168).


test('?- e2c(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_177162)),nondet]):-call(e2c(noun_phrase("at most the 5 owners"),[sanity]),_177162).


test('?- e2c(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_177162)),nondet]):-call(e2c(noun_phrase("at most 5 owners"),[sanity]),_177162).


test('?- e2c(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_177162)),nondet]):-call(e2c(noun_phrase("less than 3 owners"),[sanity]),_177162).


test('?- e2c(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_177164)),nondet]):-call(e2c(noun_phrase("at most 50 percent of owners"),[sanity]),_177164).


test('?- e2c(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_177168)),nondet]):-call(e2c(noun_phrase("no three owners"),[sanity,no_working]),_177168).


test('?- e2c("terry writes a non-program.",[tell])',[true(compound(_177160)),nondet]):-call(e2c("terry writes a non-program.",[tell]),_177160).


test('?- e2c("every nonhuman programmer writes a program.",[tell])',[true(compound(_177164)),nondet]):-call(e2c("every nonhuman programmer writes a program.",[tell]),_177164).


test('?- e2c("every human programmer writes a not a program.",[tell])',[true(compound(_177164)),nondet]):-call(e2c("every human programmer writes a not a program.",[tell]),_177164).


test('?- e2c("every human programmer happily writes a not a program.",[tell])',[true(compound(_177166)),nondet]):-call(e2c("every human programmer happily writes a not a program.",[tell]),_177166).


:- end_tests(e2c).

