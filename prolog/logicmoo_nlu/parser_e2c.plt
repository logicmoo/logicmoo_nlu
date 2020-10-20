

:- begin_tests(test_lex_info).



test('?- test_lex_info("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_208342)),nondet]):-call(test_lex_info("His friends are liked by hers.",[bad_juju,sanity]),_208342).


test('?- test_lex_info("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_208344)),nondet]):-call(test_lex_info("Her friends are not liked by his.",[bad_juju,sanity]),_208344).


test('?- test_lex_info("Do their friends like each other?",[bad_juju,feature])',[true(compound(_208344)),nondet]):-call(test_lex_info("Do their friends like each other?",[bad_juju,feature]),_208344).


test('?- test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_208286),sanity])',[true(compound(_208348)),nondet]):-call(test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_208286),sanity]),_208348).


test('?- test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_208284),sanity])',[true(compound(_208346)),nondet]):-call(test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_208284),sanity]),_208346).


test('?- test_lex_info("There are 5 houses with five different colors.",[riddle(_208288),sanity])',[true(compound(_208350)),nondet]):-call(test_lex_info("There are 5 houses with five different colors.",[riddle(_208288),sanity]),_208350).


test('?- test_lex_info("There are 5 houses",[riddle_prep,sanity])',[true(compound(_208340)),nondet]):-call(test_lex_info("There are 5 houses",[riddle_prep,sanity]),_208340).


test('?- test_lex_info("Each house has a different color",[riddle_prep,sanity])',[true(compound(_208344)),nondet]):-call(test_lex_info("Each house has a different color",[riddle_prep,sanity]),_208344).


test('?- test_lex_info("In each house lives a person with a different nationality.",[riddle(_208292),sanity])',[true(compound(_208354)),nondet]):-call(test_lex_info("In each house lives a person with a different nationality.",[riddle(_208292),sanity]),_208354).


test('?- test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_208366)),nondet]):-call(test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_208366).


test('?- test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_208354)),nondet]):-call(test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_208354).


test('?- test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_208352)),nondet]):-call(test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_208352).


test('?- test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_208356)),nondet]):-call(test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_208356).


test('?- test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_208360)),nondet]):-call(test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_208360).


test('?- test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_208352)),nondet]):-call(test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression]),_208352).


test('?- test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_208356)),nondet]):-call(test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_208356).


test('?- test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_208350)),nondet]):-call(test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_208350).


test('?- test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_208354)),nondet]):-call(test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression]),_208354).


test('?- test_lex_info("The brit lives in the red house.",[riddle(_208286),sanity])',[true(compound(_208348)),nondet]):-call(test_lex_info("The brit lives in the red house.",[riddle(_208286),sanity]),_208348).


test('?- test_lex_info("The swede keeps dogs as pets.",[riddle(_208284),sanity])',[true(compound(_208346)),nondet]):-call(test_lex_info("The swede keeps dogs as pets.",[riddle(_208284),sanity]),_208346).


test('?- test_lex_info("A dane drinks tea.",[riddle(_208282),sanity])',[true(compound(_208344)),nondet]):-call(test_lex_info("A dane drinks tea.",[riddle(_208282),sanity]),_208344).


test('?- test_lex_info("The green house is on the left of the white house.",[riddle(_208290),sanity])',[true(compound(_208352)),nondet]):-call(test_lex_info("The green house is on the left of the white house.",[riddle(_208290),sanity]),_208352).


test('?- test_lex_info("The green house\'s owner drinks coffee.",[riddle(_208286),sanity])',[true(compound(_208348)),nondet]):-call(test_lex_info("The green house's owner drinks coffee.",[riddle(_208286),sanity]),_208348).


test('?- test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_208288),sanity,regression])',[true(compound(_208356)),nondet]):-call(test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_208288),sanity,regression]),_208356).


test('?- test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_208288),sanity])',[true(compound(_208350)),nondet]):-call(test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_208288),sanity]),_208350).


test('?- test_lex_info("The man living in the center house drinks milk.",[riddle(_208290),sanity])',[true(compound(_208352)),nondet]):-call(test_lex_info("The man living in the center house drinks milk.",[riddle(_208290),sanity]),_208352).


test('?- test_lex_info("The Norwegian lives in the first house .",[riddle(_208288),sanity])',[true(compound(_208350)),nondet]):-call(test_lex_info("The Norwegian lives in the first house .",[riddle(_208288),sanity]),_208350).


test('?- test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_208294),sanity])',[true(compound(_208356)),nondet]):-call(test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_208294),sanity]),_208356).


test('?- test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_208294),sanity])',[true(compound(_208356)),nondet]):-call(test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_208294),sanity]),_208356).


test('?- test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_208288),sanity])',[true(compound(_208350)),nondet]):-call(test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_208288),sanity]),_208350).


test('?- test_lex_info("The German smokes Prince.",[riddle(_208284),sanity])',[true(compound(_208346)),nondet]):-call(test_lex_info("The German smokes Prince.",[riddle(_208284),sanity]),_208346).


test('?- test_lex_info("The Norwegian lives next to the blue house.",[riddle(_208288),sanity])',[true(compound(_208350)),nondet]):-call(test_lex_info("The Norwegian lives next to the blue house.",[riddle(_208288),sanity]),_208350).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_208292),sanity])',[true(compound(_208354)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_208292),sanity]),_208354).


test('?- test_lex_info("Who owns the fish?",[riddle(_208282),sanity])',[true(compound(_208344)),nondet]):-call(test_lex_info("Who owns the fish?",[riddle(_208282),sanity]),_208344).


test('?- test_lex_info("One woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("One woman paints.",[quants]),_208334).


test('?- test_lex_info("No woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("No woman paints.",[quants]),_208334).


test('?- test_lex_info("Some woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Some woman paints.",[quants]),_208334).


test('?- test_lex_info("Every woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Every woman paints.",[quants]),_208334).


test('?- test_lex_info("Each woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Each woman paints.",[quants]),_208334).


test('?- test_lex_info("Any woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Any woman paints.",[quants]),_208334).


test('?- test_lex_info("The woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("The woman paints.",[quants]),_208334).


test('?- test_lex_info("The not woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("The not woman paints.",[quants]),_208334).


test('?- test_lex_info("Not a woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not a woman paints.",[quants]),_208334).


test('?- test_lex_info("Not one woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not one woman paints.",[quants]),_208334).


test('?- test_lex_info("Not no woman paints.",[quants_neg_postcond])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not no woman paints.",[quants_neg_postcond]),_208334).


test('?- test_lex_info("Not some woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not some woman paints.",[quants]),_208334).


test('?- test_lex_info("Not every woman paints.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("Not every woman paints.",[quants]),_208336).


test('?- test_lex_info("Not each woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not each woman paints.",[quants]),_208334).


test('?- test_lex_info("Not any woman paints.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not any woman paints.",[quants]),_208334).


test('?- test_lex_info("The women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("The women paint.",[quants]),_208334).


test('?- test_lex_info("Women paint.",[quants])',[true(compound(_208332)),nondet]):-call(test_lex_info("Women paint.",[quants]),_208332).


test('?- test_lex_info("Some women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Some women paint.",[quants]),_208334).


test('?- test_lex_info("No women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("No women paint.",[quants]),_208334).


test('?- test_lex_info("All women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("All women paint.",[quants]),_208334).


test('?- test_lex_info("Any women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Any women paint.",[quants]),_208334).


test('?- test_lex_info("Not women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not women paint.",[quants]),_208334).


test('?- test_lex_info("Not no women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not no women paint.",[quants]),_208334).


test('?- test_lex_info("Not all women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not all women paint.",[quants]),_208334).


test('?- test_lex_info("Not any women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not any women paint.",[quants]),_208334).


test('?- test_lex_info("The three women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("The three women paint.",[quants]),_208334).


test('?- test_lex_info("Three women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Three women paint.",[quants]),_208334).


test('?- test_lex_info("Some three women paint.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("Some three women paint.",[quants]),_208336).


test('?- test_lex_info("No three women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("No three women paint.",[quants]),_208334).


test('?- test_lex_info("Every three women paint.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("Every three women paint.",[quants]),_208336).


test('?- test_lex_info("All three women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("All three women paint.",[quants]),_208334).


test('?- test_lex_info("Any three women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Any three women paint.",[quants]),_208334).


test('?- test_lex_info("Not three women paint.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not three women paint.",[quants]),_208334).


test('?- test_lex_info("Not some three women paint.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("Not some three women paint.",[quants]),_208336).


test('?- test_lex_info("Not no three women paint.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("Not no three women paint.",[quants]),_208336).


test('?- test_lex_info("Not all three women paint.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("Not all three women paint.",[quants]),_208336).


test('?- test_lex_info("Not every three women paint.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("Not every three women paint.",[quants]),_208336).


test('?- test_lex_info("Not any three women paint.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("Not any three women paint.",[quants]),_208336).


test('?- test_lex_info("Not three of the women paint.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("Not three of the women paint.",[quants]),_208336).


test('?- test_lex_info("Not some of the three women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("Not some of the three women paint.",[quants]),_208338).


test('?- test_lex_info("Not no three of the women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("Not no three of the women paint.",[quants]),_208338).


test('?- test_lex_info("Not all three of the women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("Not all three of the women paint.",[quants]),_208338).


test('?- test_lex_info("Not every three of the women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("Not every three of the women paint.",[quants]),_208338).


test('?- test_lex_info("Not any three of the women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("Not any three of the women paint.",[quants]),_208338).


test('?- test_lex_info("Not three of the four women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("Not three of the four women paint.",[quants]),_208338).


test('?- test_lex_info("Not none of three out of the four women paint.",[quants])',[true(compound(_208340)),nondet]):-call(test_lex_info("Not none of three out of the four women paint.",[quants]),_208340).


test('?- test_lex_info("Not all three of the four women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("Not all three of the four women paint.",[quants]),_208338).


test('?- test_lex_info("Not any three of the four women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("Not any three of the four women paint.",[quants]),_208338).


test('?- test_lex_info("Three of the four women paint.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("Three of the four women paint.",[quants]),_208336).


test('?- test_lex_info("Three out of the four women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("Three out of the four women paint.",[quants]),_208338).


test('?- test_lex_info("All three of the four women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("All three of the four women paint.",[quants]),_208338).


test('?- test_lex_info("Any three of the four women paint.",[quants])',[true(compound(_208338)),nondet]):-call(test_lex_info("Any three of the four women paint.",[quants]),_208338).


test('?- test_lex_info("I paint",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("I paint",[pronoun]),_208332).


test('?- test_lex_info("you paint",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("you paint",[pronoun]),_208332).


test('?- test_lex_info("We paint",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("We paint",[pronoun]),_208332).


test('?- test_lex_info("None paint",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("None paint",[pronoun]),_208332).


test('?- test_lex_info("They paint",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("They paint",[pronoun]),_208332).


test('?- test_lex_info("Some paint",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("Some paint",[pronoun]),_208332).


test('?- test_lex_info("It paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("It paints",[pronoun]),_208332).


test('?- test_lex_info("he paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("he paints",[pronoun]),_208332).


test('?- test_lex_info("She paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("She paints",[pronoun]),_208332).


test('?- test_lex_info("Someone paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("Someone paints",[pronoun]),_208332).


test('?- test_lex_info("Anybody paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("Anybody paints",[pronoun]),_208332).


test('?- test_lex_info("Anyone paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("Anyone paints",[pronoun]),_208332).


test('?- test_lex_info("Anything paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Anything paints",[pronoun]),_208334).


test('?- test_lex_info("Everybody paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Everybody paints",[pronoun]),_208334).


test('?- test_lex_info("Everyone paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Everyone paints",[pronoun]),_208334).


test('?- test_lex_info("Everything paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Everything paints",[pronoun]),_208334).


test('?- test_lex_info("Nobody paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("Nobody paints",[pronoun]),_208332).


test('?- test_lex_info("No one paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("No one paints",[pronoun]),_208332).


test('?- test_lex_info("Nothing paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("Nothing paints",[pronoun]),_208332).


test('?- test_lex_info("One paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("One paints",[pronoun]),_208332).


test('?- test_lex_info("Somebody paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Somebody paints",[pronoun]),_208334).


test('?- test_lex_info("Something paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Something paints",[pronoun]),_208334).


test('?- test_lex_info("Not anybody paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not anybody paints",[pronoun]),_208334).


test('?- test_lex_info("Not anyone paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not anyone paints",[pronoun]),_208334).


test('?- test_lex_info("Not anything paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not anything paints",[pronoun]),_208334).


test('?- test_lex_info("Not everybody paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not everybody paints",[pronoun]),_208334).


test('?- test_lex_info("Not everyone paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not everyone paints",[pronoun]),_208334).


test('?- test_lex_info("Not everything paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not everything paints",[pronoun]),_208334).


test('?- test_lex_info("Not nothing paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not nothing paints",[pronoun]),_208334).


test('?- test_lex_info("Not one paints",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("Not one paints",[pronoun]),_208332).


test('?- test_lex_info("Not somebody paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not somebody paints",[pronoun]),_208334).


test('?- test_lex_info("Not something paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("Not something paints",[pronoun]),_208334).


test('?- test_lex_info("She likes i",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("She likes i",[pronoun]),_208332).


test('?- test_lex_info("She likes me",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("She likes me",[pronoun]),_208332).


test('?- test_lex_info("She likes you",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("She likes you",[pronoun]),_208332).


test('?- test_lex_info("She likes it",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("She likes it",[pronoun]),_208332).


test('?- test_lex_info("She likes us",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("She likes us",[pronoun]),_208332).


test('?- test_lex_info("She likes them",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("She likes them",[pronoun]),_208332).


test('?- test_lex_info("She likes no one",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("She likes no one",[pronoun]),_208334).


test('?- test_lex_info("She likes none",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("She likes none",[pronoun]),_208332).


test('?- test_lex_info("She likes him",[pronoun])',[true(compound(_208332)),nondet]):-call(test_lex_info("She likes him",[pronoun]),_208332).


test('?- test_lex_info("She likes herself",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("She likes herself",[pronoun]),_208334).


test('?- test_lex_info("She likes himself",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("She likes himself",[pronoun]),_208334).


test('?- test_lex_info("It is us that paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("It is us that paints",[pronoun]),_208334).


test('?- test_lex_info("It is them that paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("It is them that paints",[pronoun]),_208334).


test('?- test_lex_info("It is he that paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("It is he that paints",[pronoun]),_208334).


test('?- test_lex_info("It is she that paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("It is she that paints",[pronoun]),_208334).


test('?- test_lex_info("It is her that paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("It is her that paints",[pronoun]),_208334).


test('?- test_lex_info("It is him that paints",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("It is him that paints",[pronoun]),_208334).


test('?- test_lex_info("We are us that paint",[pronoun])',[true(compound(_208334)),nondet]):-call(test_lex_info("We are us that paint",[pronoun]),_208334).


test('?- test_lex_info("We are all of us that paint",[pronoun])',[true(compound(_208336)),nondet]):-call(test_lex_info("We are all of us that paint",[pronoun]),_208336).


test('?- test_lex_info("It is everybody that paints",[pronoun])',[true(compound(_208336)),nondet]):-call(test_lex_info("It is everybody that paints",[pronoun]),_208336).


test('?- test_lex_info("Every man that paints likes monet.",[bratko])',[true(compound(_208338)),nondet]):-call(test_lex_info("Every man that paints likes monet.",[bratko]),_208338).


test('?- test_lex_info("A woman that admires John paints.",[bratko])',[true(compound(_208338)),nondet]):-call(test_lex_info("A woman that admires John paints.",[bratko]),_208338).


test('?- test_lex_info("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_208344)),nondet]):-call(test_lex_info("Every woman that likes a man that admires monet paints.",[bratko]),_208344).


test('?- test_lex_info("John likes Annie.",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("John likes Annie.",[bratko]),_208334).


test('?- test_lex_info("Annie likes a man that admires monet.",[bratko])',[true(compound(_208338)),nondet]):-call(test_lex_info("Annie likes a man that admires monet.",[bratko]),_208338).


test('?- test_lex_info("Bertrand Russell wrote principia.",[bratko])',[true(compound(_208338)),nondet]):-call(test_lex_info("Bertrand Russell wrote principia.",[bratko]),_208338).


test('?- test_lex_info("An author wrote principia.",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("An author wrote principia.",[bratko]),_208336).


test('?- test_lex_info("Iraq is a country.",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("Iraq is a country.",[bratko]),_208334).


test('?- test_lex_info("A happy author wrote principia.",[bratko])',[true(compound(_208338)),nondet]):-call(test_lex_info("A happy author wrote principia.",[bratko]),_208338).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_208334).


test('?- test_lex_info("Bertrand is an author.",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("Bertrand is an author.",[bratko]),_208334).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_208334).


test('?- test_lex_info("Every author is a programmer.",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("Every author is a programmer.",[bratko]),_208336).


test('?- test_lex_info("Is Bertrand an programmer?",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("Is Bertrand an programmer?",[bratko]),_208336).


test('?- test_lex_info("What is a author?",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("What is a author?",[bratko]),_208334).


test('?- test_lex_info("What did Bertrand write?",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("What did Bertrand write?",[bratko]),_208336).


test('?- test_lex_info("What is a book?",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("What is a book?",[bratko]),_208334).


test('?- test_lex_info("Principia is a book.",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("Principia is a book.",[bratko]),_208334).


test('?- test_lex_info("Bertrand is Bertrand.",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("Bertrand is Bertrand.",[bratko]),_208334).


test('?- test_lex_info("Shrdlu halts.",[bratko])',[true(compound(_208332)),nondet]):-call(test_lex_info("Shrdlu halts.",[bratko]),_208332).


test('?- test_lex_info("Every student wrote a program.",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("Every student wrote a program.",[bratko]),_208336).


test('?- test_lex_info("Terry writes a program.",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("Terry writes a program.",[bratko]),_208336).


test('?- test_lex_info("Terry writes a program that halts.",[bratko])',[true(compound(_208338)),nondet]):-call(test_lex_info("Terry writes a program that halts.",[bratko]),_208338).


test('?- test_lex_info("An author of every book wrote a program.",[bratko])',[true(compound(_208340)),nondet]):-call(test_lex_info("An author of every book wrote a program.",[bratko]),_208340).


test('?- test_lex_info("A man hapilly maried paints.",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("A man hapilly maried paints.",[bratko]),_208336).


test('?- test_lex_info("A hapilly maried man paints.",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("A hapilly maried man paints.",[bratko]),_208336).


test('?- test_lex_info("A man who knows paints.",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("A man who knows paints.",[bratko]),_208336).


test('?- test_lex_info("A man gives something.",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("A man gives something.",[bratko]),_208334).


test('?- test_lex_info("A man gives his word.",[bratko])',[true(compound(_208334)),nondet]):-call(test_lex_info("A man gives his word.",[bratko]),_208334).


test('?- test_lex_info("A man of his word paints.",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("A man of his word paints.",[bratko]),_208336).


test('?- test_lex_info("A man paints.",[bratko])',[true(compound(_208332)),nondet]):-call(test_lex_info("A man paints.",[bratko]),_208332).


test('?- test_lex_info("A man that paints paints.",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("A man that paints paints.",[bratko]),_208336).


test('?- test_lex_info("A man walks.",[bratko])',[true(compound(_208332)),nondet]):-call(test_lex_info("A man walks.",[bratko]),_208332).


test('?- test_lex_info("A man that walks paints.",[bratko])',[true(compound(_208336)),nondet]):-call(test_lex_info("A man that walks paints.",[bratko]),_208336).


test('?- test_lex_info("It halts.",[bratko])',[true(compound(_208332)),nondet]):-call(test_lex_info("It halts.",[bratko]),_208332).


test('?- test_lex_info("A man of his word that walks paints.",[bratko])',[true(compound(_208338)),nondet]):-call(test_lex_info("A man of his word that walks paints.",[bratko]),_208338).


test('?- test_lex_info("The cost of what the product is changes.",[bratko])',[true(compound(_208340)),nondet]):-call(test_lex_info("The cost of what the product is changes.",[bratko]),_208340).


test('?- test_lex_info("We need a virtual machine server.",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("We need a virtual machine server.",[aindy]),_208338).


test('?- test_lex_info("The virtual machine server should have several VMs.",[aindy])',[true(compound(_208342)),nondet]):-call(test_lex_info("The virtual machine server should have several VMs.",[aindy]),_208342).


test('?- test_lex_info("One VM should be the POSI VM.",[aindy])',[true(compound(_208336)),nondet]):-call(test_lex_info("One VM should be the POSI VM.",[aindy]),_208336).


test('?- test_lex_info("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("One VM should be the FRDCSA.org VM.",[aindy]),_208338).


test('?- test_lex_info("One VM should be the mail server.",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("One VM should be the mail server.",[aindy]),_208338).


test('?- test_lex_info("One computer should be the backup server.",[aindy])',[true(compound(_208340)),nondet]):-call(test_lex_info("One computer should be the backup server.",[aindy]),_208340).


test('?- test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_208356)),nondet]):-call(test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_208356).


test('?- test_lex_info("I need a fast computer for work.",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("I need a fast computer for work.",[aindy]),_208338).


test('?- test_lex_info("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_208348)),nondet]):-call(test_lex_info("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_208348).


test('?- test_lex_info("I need a dedicated computer for network security research.",[aindy])',[true(compound(_208344)),nondet]):-call(test_lex_info("I need a dedicated computer for network security research.",[aindy]),_208344).


test('?- test_lex_info("I need a machine to run Tails on.",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("I need a machine to run Tails on.",[aindy]),_208338).


test('?- test_lex_info("I need a machine off the network for airgap security.",[aindy])',[true(compound(_208342)),nondet]):-call(test_lex_info("I need a machine off the network for airgap security.",[aindy]),_208342).


test('?- test_lex_info("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_208348)),nondet]):-call(test_lex_info("One VM should be the game server for running game development projects.",[aindy]),_208348).


test('?- test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_208342)),nondet]):-call(test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_208342).


test('?- test_lex_info("I could read about how to build a private watson.",[aindy])',[true(compound(_208342)),nondet]):-call(test_lex_info("I could read about how to build a private watson.",[aindy]),_208342).


test('?- test_lex_info("Need backups.",[aindy])',[true(compound(_208332)),nondet]):-call(test_lex_info("Need backups.",[aindy]),_208332).


test('?- test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_208346)),nondet]):-call(test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy]),_208346).


test('?- test_lex_info("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_208344)),nondet]):-call(test_lex_info("Set up schedules for updating the software on all machines.",[aindy]),_208344).


test('?- test_lex_info("Read books on server room layout.",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("Read books on server room layout.",[aindy]),_208338).


test('?- test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_208346)),nondet]):-call(test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_208346).


test('?- test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_208348)),nondet]):-call(test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_208348).


test('?- test_lex_info("I want a gaming computer.  Do I?",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("I want a gaming computer.  Do I?",[aindy]),_208338).


test('?- test_lex_info("I want a windows 7 computer for work.",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("I want a windows 7 computer for work.",[aindy]),_208338).


test('?- test_lex_info("I want a fast linux computer for work.",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("I want a fast linux computer for work.",[aindy]),_208338).


test('?- test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_208358)),nondet]):-call(test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_208358).


test('?- test_lex_info("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_208344)),nondet]):-call(test_lex_info("I could install a fresh operating system on justin for work.",[aindy]),_208344).


test('?- test_lex_info("I probably want a separate git computer.",[aindy])',[true(compound(_208340)),nondet]):-call(test_lex_info("I probably want a separate git computer.",[aindy]),_208340).


test('?- test_lex_info("I need to start buying servers.",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("I need to start buying servers.",[aindy]),_208338).


test('?- test_lex_info("I want a rackmount case for servers.",[aindy])',[true(compound(_208338)),nondet]):-call(test_lex_info("I want a rackmount case for servers.",[aindy]),_208338).


test('?- test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_208344)),nondet]):-call(test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)]),_208344).


test('?- test_lex_info("2 oceans border each african country.",[chat80(tell)])',[true(compound(_208342)),nondet]):-call(test_lex_info("2 oceans border each african country.",[chat80(tell)]),_208342).


test('?- test_lex_info("There are 10 large cars.",[quants])',[true(compound(_208336)),nondet]):-call(test_lex_info("There are 10 large cars.",[quants]),_208336).


test('?- test_lex_info("There are 10 oceans.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("There are 10 oceans.",[quants]),_208334).


test('?- test_lex_info("There are 10 women.",[quants])',[true(compound(_208334)),nondet]):-call(test_lex_info("There are 10 women.",[quants]),_208334).


test('?- test_lex_info("An ocean borders an African country.",[chat80(tell)])',[true(compound(_208342)),nondet]):-call(test_lex_info("An ocean borders an African country.",[chat80(tell)]),_208342).


test('?- test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_208350)),nondet]):-call(test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell]),_208350).


test('?- test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_208352)),nondet]):-call(test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_208352).


test('?- test_lex_info("Bertrand wrote a book.",[bratko(book)])',[true(compound(_208338)),nondet]):-call(test_lex_info("Bertrand wrote a book.",[bratko(book)]),_208338).


test('?- test_lex_info("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_208340)),nondet]):-call(test_lex_info("Bertrand wrote nothing.",[bratko(book)]),_208340).


test('?- test_lex_info("Bertrand wrote.",[bratko(book)])',[true(compound(_208338)),nondet]):-call(test_lex_info("Bertrand wrote.",[bratko(book)]),_208338).


test('?- test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_208342)),nondet]):-call(test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)]),_208342).


test('?- test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_208340)),nondet]):-call(test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)]),_208340).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_208342)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_208342).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_208344)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_208344).


test('?- test_lex_info("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_208342)),nondet]):-call(test_lex_info("What did alfred write to Bertrand?",[bratko(book)]),_208342).


test('?- test_lex_info("Alfred wrote a letter.",[bratko(book)])',[true(compound(_208338)),nondet]):-call(test_lex_info("Alfred wrote a letter.",[bratko(book)]),_208338).


test('?- test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_208342)),nondet]):-call(test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)]),_208342).


test('?- test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_208342)),nondet]):-call(test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)]),_208342).


test('?- test_lex_info("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_208340)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand.",[bratko(book)]),_208340).


test('?- test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_208342)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)]),_208342).


test('?- test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_208342)),nondet]):-call(test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)]),_208342).


test('?- test_lex_info("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_208342)),nondet]):-call(test_lex_info("Who did alfred write a letter to?",[bratko(book)]),_208342).


test('?- test_lex_info("Alfred gave it.",[bratko(book)])',[true(compound(_208338)),nondet]):-call(test_lex_info("Alfred gave it.",[bratko(book)]),_208338).


test('?- test_lex_info("Alfred gave a book.",[bratko(book)])',[true(compound(_208338)),nondet]):-call(test_lex_info("Alfred gave a book.",[bratko(book)]),_208338).


test('?- test_lex_info("a pride of lions paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a pride of lions paint",[of]),_208334).


test('?- test_lex_info("a flock of birds paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a flock of birds paint",[of]),_208334).


test('?- test_lex_info("a litter of pups paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a litter of pups paint",[of]),_208334).


test('?- test_lex_info("a prickle of porcupines paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a prickle of porcupines paint",[of]),_208336).


test('?- test_lex_info("a litter of cubs paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a litter of cubs paint",[of]),_208334).


test('?- test_lex_info("a pack of dogs paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a pack of dogs paint",[of]),_208334).


test('?- test_lex_info("a colony of beavers paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a colony of beavers paint",[of]),_208336).


test('?- test_lex_info("a gaggle of geese paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a gaggle of geese paint",[of]),_208336).


test('?- test_lex_info("a family of otters paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a family of otters paint",[of]),_208336).


test('?- test_lex_info("a huddle of walruses paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a huddle of walruses paint",[of]),_208336).


test('?- test_lex_info("a herd of deer paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a herd of deer paint",[of]),_208334).


test('?- test_lex_info("a culture of bacteria paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a culture of bacteria paint",[of]),_208336).


test('?- test_lex_info("a swarm of bees paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a swarm of bees paint",[of]),_208334).


test('?- test_lex_info("a bed of clams paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a bed of clams paint",[of]),_208334).


test('?- test_lex_info("a school of cod paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a school of cod paint",[of]),_208334).


test('?- test_lex_info("a herd of dinosaurs paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a herd of dinosaurs paint",[of]),_208336).


test('?- test_lex_info("a mess of iguanas paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a mess of iguanas paint",[of]),_208336).


test('?- test_lex_info("a mob of wombats paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a mob of wombats paint",[of]),_208334).


test('?- test_lex_info("a pod of pelicans paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a pod of pelicans paint",[of]),_208336).


test('?- test_lex_info("a troop of boy scouts paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a troop of boy scouts paint",[of]),_208336).


test('?- test_lex_info("a team of athletes paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a team of athletes paint",[of]),_208336).


test('?- test_lex_info("a panel of experts paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a panel of experts paint",[of]),_208336).


test('?- test_lex_info("a crew of sailors paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a crew of sailors paint",[of]),_208336).


test('?- test_lex_info("a band of robbers paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a band of robbers paint",[of]),_208336).


test('?- test_lex_info("a troupe of performers paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a troupe of performers paint",[of]),_208336).


test('?- test_lex_info("a crowd of onlookers paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a crowd of onlookers paint",[of]),_208336).


test('?- test_lex_info("a curse of painters paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("a curse of painters paint",[of]),_208336).


test('?- test_lex_info("a fleet of cars paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a fleet of cars paint",[of]),_208334).


test('?- test_lex_info("a pair of shoes paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a pair of shoes paint",[of]),_208334).


test('?- test_lex_info("a fleet of ships paint",[of])',[true(compound(_208334)),nondet]):-call(test_lex_info("a fleet of ships paint",[of]),_208334).


test('?- test_lex_info("an anthology of stories paint",[of])',[true(compound(_208336)),nondet]):-call(test_lex_info("an anthology of stories paint",[of]),_208336).


test('?- test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_291692)),nondet]):-call(test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_291692).


test('?- test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_291662)),nondet]):-call(test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_291662).


test('?- test_lex_info("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_291800)),nondet]):-call(test_lex_info("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_291800).


test('?- test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_291644)),nondet]):-call(test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_291644).


test('?- test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_291692)),nondet]):-call(test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_291692).


test('?- test_lex_info("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_291788)),nondet]):-call(test_lex_info("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_291788).


test('?- test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_291746)),nondet]):-call(test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_291746).


test('?- test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_291938)),nondet]):-call(test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_291938).


test('?- test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_291710)),nondet]):-call(test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest]),_291710).


test('?- test_lex_info("Logged on player character",[descriptionTest])',[true(compound(_291518)),nondet]):-call(test_lex_info("Logged on player character",[descriptionTest]),_291518).


test('?- test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_291776)),nondet]):-call(test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_291776).


test('?- test_lex_info("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_291722)),nondet]):-call(test_lex_info("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_291722).


test('?- test_lex_info("Wesley is her son",[descriptionTest])',[true(compound(_291464)),nondet]):-call(test_lex_info("Wesley is her son",[descriptionTest]),_291464).


test('?- test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_292112)),nondet]):-call(test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_292112).


test('?- test_lex_info("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_291542)),nondet]):-call(test_lex_info("Counselor Deanna Troi is here",[descriptionTest]),_291542).


test('?- test_lex_info("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_291638)),nondet]):-call(test_lex_info("Counselor Troi is the ship's main counselor",[descriptionTest]),_291638).


test('?- test_lex_info("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_291794)),nondet]):-call(test_lex_info("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_291794).


test('?- test_lex_info("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_291668)),nondet]):-call(test_lex_info("Commander William Riker is here, staring at you",[descriptionTest]),_291668).


test('?- test_lex_info("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_291674)),nondet]):-call(test_lex_info("Commander Riker is the Enterprise's first officer",[descriptionTest]),_291674).


test('?- test_lex_info("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_291644)),nondet]):-call(test_lex_info("He's in charge of keeping the crew in line",[descriptionTest]),_291644).


test('?- test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_291710)),nondet]):-call(test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_291710).


test('?- test_lex_info("Captain Picard is a very important man",[descriptionTest])',[true(compound(_291608)),nondet]):-call(test_lex_info("Captain Picard is a very important man",[descriptionTest]),_291608).


test('?- test_lex_info("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_291710)),nondet]):-call(test_lex_info("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_291710).


test('?- test_lex_info("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_291554)),nondet]):-call(test_lex_info("He's very smart, and very wise",[descriptionTest]),_291554).


test('?- test_lex_info("Don\'t mess with him!",[descriptionTest])',[true(compound(_291482)),nondet]):-call(test_lex_info("Don't mess with him!",[descriptionTest]),_291482).


test('?- test_lex_info("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_291560)),nondet]):-call(test_lex_info("Guinan is here, tending the bar",[descriptionTest]),_291560).


test('?- test_lex_info("Guinan is a strange being",[descriptionTest])',[true(compound(_291518)),nondet]):-call(test_lex_info("Guinan is a strange being",[descriptionTest]),_291518).


test('?- test_lex_info("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_292226)),nondet]):-call(test_lex_info("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_292226).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_291728)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_291728).


test('?- test_lex_info("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_291728)),nondet]):-call(test_lex_info("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_291728).


test('?- test_lex_info("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_292028)),nondet]):-call(test_lex_info("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_292028).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_291722)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_291722).


test('?- test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_291746)),nondet]):-call(test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_291746).


test('?- test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_292016)),nondet]):-call(test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_292016).


test('?- test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_291938)),nondet]):-call(test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_291938).


test('?- test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_291728)),nondet]):-call(test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_291728).


test('?- test_lex_info("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_291608)),nondet]):-call(test_lex_info("Livingston is Captain Picard's pet fish",[descriptionTest]),_291608).


test('?- test_lex_info("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_291860)),nondet]):-call(test_lex_info("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_291860).


test('?- test_lex_info("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_291710)),nondet]):-call(test_lex_info("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_291710).


test('?- test_lex_info("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_291578)),nondet]):-call(test_lex_info("Spot is Data's orange coloured cat",[descriptionTest]),_291578).


test('?- test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_292100)),nondet]):-call(test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_292100).


test('?- test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_291722)),nondet]):-call(test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest]),_291722).


test('?- test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_291704)),nondet]):-call(test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_291704).


test('?- test_lex_info("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_292046)),nondet]):-call(test_lex_info("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_292046).


test('?- test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_291692)),nondet]):-call(test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_291692).


test('?- test_lex_info("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_291560)),nondet]):-call(test_lex_info("Alexander Rozhenko is Worf's son",[descriptionTest]),_291560).


test('?- test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_291842)),nondet]):-call(test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_291842).


test('?- test_lex_info("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_291758)),nondet]):-call(test_lex_info("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_291758).


test('?- test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_291704)),nondet]):-call(test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest]),_291704).


test('?- test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_292106)),nondet]):-call(test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_292106).


test('?- test_lex_info("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_291584)),nondet]):-call(test_lex_info("A large phaser rifle is lying here",[descriptionTest]),_291584).


test('?- test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_292178)),nondet]):-call(test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_292178).


test('?- test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_291782)),nondet]):-call(test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_291782).


test('?- test_lex_info("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292130)),nondet]):-call(test_lex_info("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292130).


test('?- test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_291782)),nondet]):-call(test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_291782).


test('?- test_lex_info("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292154)),nondet]):-call(test_lex_info("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292154).


test('?- test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_291758)),nondet]):-call(test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_291758).


test('?- test_lex_info("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292130)),nondet]):-call(test_lex_info("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292130).


test('?- test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_291680)),nondet]):-call(test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest]),_291680).


test('?- test_lex_info("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_292220)),nondet]):-call(test_lex_info("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_292220).


test('?- test_lex_info("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_291650)),nondet]):-call(test_lex_info("A Starfleet communication badge is lying here",[descriptionTest]),_291650).


test('?- test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_292688)),nondet]):-call(test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_292688).


test('?- test_lex_info("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_291644)),nondet]):-call(test_lex_info("Worf's silver chain sash has been left here",[descriptionTest]),_291644).


test('?- test_lex_info("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_292256)),nondet]):-call(test_lex_info("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_292256).


test('?- test_lex_info("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_291536)),nondet]):-call(test_lex_info("Geordi's VISOR is lying here",[descriptionTest]),_291536).


test('?- test_lex_info("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_292928)),nondet]):-call(test_lex_info("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_292928).


test('?- test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_291704)),nondet]):-call(test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_291704).


test('?- test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_292490)),nondet]):-call(test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_292490).


test('?- test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_291638)),nondet]):-call(test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest]),_291638).


test('?- test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_292292)),nondet]):-call(test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_292292).


test('?- test_lex_info("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_291650)),nondet]):-call(test_lex_info("Captain Picard's wooden flute is sitting here",[descriptionTest]),_291650).


test('?- test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_292262)),nondet]):-call(test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_292262).


test('?- test_lex_info("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_291662)),nondet]):-call(test_lex_info("Commander Riker's trombone has been placed here",[descriptionTest]),_291662).


test('?- test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_292094)),nondet]):-call(test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_292094).


test('?- test_lex_info("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_291590)),nondet]):-call(test_lex_info("A small cup of tea is sitting here",[descriptionTest]),_291590).


test('?- test_lex_info("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_291608)),nondet]):-call(test_lex_info("A bottle of synthehol is standing here",[descriptionTest]),_291608).


test('?- test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_291620)),nondet]):-call(test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest]),_291620).


test('?- test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_291644)),nondet]):-call(test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_291644).


test('?- test_lex_info("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_291656)),nondet]):-call(test_lex_info("A small glass of prune juice is sitting here",[descriptionTest]),_291656).


test('?- test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_291626)),nondet]):-call(test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest]),_291626).


test('?- test_lex_info("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_291698)),nondet]):-call(test_lex_info("You find yourself in the middle of main engineering",[descriptionTest]),_291698).


test('?- test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_291818)),nondet]):-call(test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_291818).


test('?- test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_292118)),nondet]):-call(test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_292118).


test('?- test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_291926)),nondet]):-call(test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_291926).


test('?- test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_291854)),nondet]):-call(test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_291854).


test('?- test_lex_info("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_292034)),nondet]):-call(test_lex_info("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_292034).


test('?- test_lex_info("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_291626)),nondet]):-call(test_lex_info("You're in the middle of Geordi's quarters",[descriptionTest]),_291626).


test('?- test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_291824)),nondet]):-call(test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_291824).


test('?- test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_292148)),nondet]):-call(test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_292148).


test('?- test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_291758)),nondet]):-call(test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest]),_291758).


test('?- test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_291728)),nondet]):-call(test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_291728).


test('?- test_lex_info("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_291614)),nondet]):-call(test_lex_info("You're in the middle of Data's quarters",[descriptionTest]),_291614).


test('?- test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_292676)),nondet]):-call(test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_292676).


test('?- test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_291890)),nondet]):-call(test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_291890).


test('?- test_lex_info("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_291914)),nondet]):-call(test_lex_info("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_291914).


test('?- test_lex_info("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_291542)),nondet]):-call(test_lex_info("You're in the dimly lit Brig",[descriptionTest]),_291542).


test('?- test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_291932)),nondet]):-call(test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_291932).


test('?- test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_292010)),nondet]):-call(test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_292010).


test('?- test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_292304)),nondet]):-call(test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_292304).


test('?- test_lex_info(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_298532)),nondet]):-call(test_lex_info('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_298532).


test('?- test_lex_info("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_292016)),nondet]):-call(test_lex_info("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_292016).


test('?- test_lex_info("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_291620)),nondet]):-call(test_lex_info("You're in the Enterprise transporter room",[descriptionTest]),_291620).


test('?- test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_292106)),nondet]):-call(test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_292106).


test('?- test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_292076)),nondet]):-call(test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_292076).


test('?- test_lex_info("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_291614)),nondet]):-call(test_lex_info("You find yourself in a transporter beam",[descriptionTest]),_291614).


test('?- test_lex_info("All you can see is blue flashing light",[descriptionTest])',[true(compound(_291614)),nondet]):-call(test_lex_info("All you can see is blue flashing light",[descriptionTest]),_291614).


test('?- test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_291770)),nondet]):-call(test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest]),_291770).


test('?- test_lex_info("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_291890)),nondet]):-call(test_lex_info("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_291890).


test('?- test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_291818)),nondet]):-call(test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest]),_291818).


test('?- test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_292196)),nondet]):-call(test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_292196).


test('?- test_lex_info("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_291950)),nondet]):-call(test_lex_info("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_291950).


test('?- test_lex_info("You\'re in the turbolift",[descriptionTest])',[true(compound(_291500)),nondet]):-call(test_lex_info("You're in the turbolift",[descriptionTest]),_291500).


test('?- test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_291878)),nondet]):-call(test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_291878).


test('?- test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_291770)),nondet]):-call(test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest]),_291770).


test('?- test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_291758)),nondet]):-call(test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest]),_291758).


test('?- test_lex_info("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_291512)),nondet]):-call(test_lex_info("You're now on Holodeck 2",[descriptionTest]),_291512).


test('?- test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_292196)),nondet]):-call(test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_292196).


test('?- test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_291944)),nondet]):-call(test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_291944).


test('?- test_lex_info("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_291638)),nondet]):-call(test_lex_info("Right now, this holodeck is not functioning",[descriptionTest]),_291638).


test('?- test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_291746)),nondet]):-call(test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_291746).


test('?- test_lex_info("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_291668)),nondet]):-call(test_lex_info("You're in the main cargo bay of the Enterprise",[descriptionTest]),_291668).


test('?- test_lex_info("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_291878)),nondet]):-call(test_lex_info("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_291878).


test('?- test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_292196)),nondet]):-call(test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_292196).


test('?- test_lex_info("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_291572)),nondet]):-call(test_lex_info("You've arrived in Riker's quarters",[descriptionTest]),_291572).


test('?- test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_292148)),nondet]):-call(test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_292148).


test('?- test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_292082)),nondet]):-call(test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_292082).


test('?- test_lex_info("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_291686)),nondet]):-call(test_lex_info("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_291686).


test('?- test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_292322)),nondet]):-call(test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_292322).


test('?- test_lex_info("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_292118)),nondet]):-call(test_lex_info("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_292118).


test('?- test_lex_info("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_291590)),nondet]):-call(test_lex_info("You emerge into a dark narrow alley",[descriptionTest]),_291590).


test('?- test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_291734)),nondet]):-call(test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest]),_291734).


test('?- test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_291998)),nondet]):-call(test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_291998).


test('?- test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_292034)),nondet]):-call(test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_292034).


test('?- test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_291770)),nondet]):-call(test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_291770).


test('?- test_lex_info("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_291674)),nondet]):-call(test_lex_info("The archway leading out of the holodeck is west",[descriptionTest]),_291674).


test('?- test_lex_info("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_291578)),nondet]):-call(test_lex_info("You're in Doctor Crusher's quarters",[descriptionTest]),_291578).


test('?- test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_291974)),nondet]):-call(test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_291974).


test('?- test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_292064)),nondet]):-call(test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_292064).


test('?- test_lex_info("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_291806)),nondet]):-call(test_lex_info("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_291806).


test('?- test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_292430)),nondet]):-call(test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_292430).


test('?- test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_291902)),nondet]):-call(test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_291902).


test('?- test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_292298)),nondet]):-call(test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_292298).


test('?- test_lex_info("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_291770)),nondet]):-call(test_lex_info("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_291770).


test('?- test_lex_info("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_291698)),nondet]):-call(test_lex_info("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_291698).


test('?- test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_292592)),nondet]):-call(test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_292592).


test('?- test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_291770)),nondet]):-call(test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_291770).


test('?- test_lex_info("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_291680)),nondet]):-call(test_lex_info("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_291680).


test('?- test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_291872)),nondet]):-call(test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_291872).


test('?- test_lex_info("A large grey door leads into space",[descriptionTest])',[true(compound(_291584)),nondet]):-call(test_lex_info("A large grey door leads into space",[descriptionTest]),_291584).


test('?- test_lex_info("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_291770)),nondet]):-call(test_lex_info("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_291770).


test('?- test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_291842)),nondet]):-call(test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest]),_291842).


test('?- test_lex_info("You feel very cold",[descriptionTest])',[true(compound(_291470)),nondet]):-call(test_lex_info("You feel very cold",[descriptionTest]),_291470).


test('?- test_lex_info("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_291740)),nondet]):-call(test_lex_info("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_291740).


test('?- test_lex_info("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_291626)),nondet]):-call(test_lex_info("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_291626).


test('?- test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_292238)),nondet]):-call(test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_292238).


test('?- test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_291962)),nondet]):-call(test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_291962).


test('?- test_lex_info("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_291512)),nondet]):-call(test_lex_info("You're in Worf's quarters",[descriptionTest]),_291512).


test('?- test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_291956)),nondet]):-call(test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_291956).


test('?- test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_292370)),nondet]):-call(test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_292370).


test('?- test_lex_info("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_291578)),nondet]):-call(test_lex_info("You emerge into the Enterprise gym",[descriptionTest]),_291578).


test('?- test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_291680)),nondet]):-call(test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest]),_291680).


test('?- test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_292088)),nondet]):-call(test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_292088).


test('?- test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_292052)),nondet]):-call(test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_292052).


test('?- test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_291740)),nondet]):-call(test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_291740).


test('?- test_lex_info("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_291806)),nondet]):-call(test_lex_info("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_291806).


test('?- test_lex_info("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_291896)),nondet]):-call(test_lex_info("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_291896).


test('?- test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_292190)),nondet]):-call(test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_292190).


test('?- test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_292208)),nondet]):-call(test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_292208).


test('?- test_lex_info("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_291662)),nondet]):-call(test_lex_info("Two large windows offer a great view of space",[descriptionTest]),_291662).


test('?- test_lex_info("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_291914)),nondet]):-call(test_lex_info("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_291914).


test('?- test_lex_info("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_291590)),nondet]):-call(test_lex_info("You're in the Enterprise science lab",[descriptionTest]),_291590).


test('?- test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_291980)),nondet]):-call(test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_291980).


test('?- test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_292478)),nondet]):-call(test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_292478).


test('?- test_lex_info("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_291734)),nondet]):-call(test_lex_info("A complex looking computer console is facing this machine",[descriptionTest]),_291734).


test('?- test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_291890)),nondet]):-call(test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_291890).


test('?- test_lex_info("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_291650)),nondet]):-call(test_lex_info("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_291650).


test('?- test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_291884)),nondet]):-call(test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_291884).


test('?- test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_292256)),nondet]):-call(test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_292256).


test('?- test_lex_info("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_292058)),nondet]):-call(test_lex_info("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_292058).


test('?- test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_292454)),nondet]):-call(test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_292454).


test('?- test_lex_info("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_291656)),nondet]):-call(test_lex_info("You're standing in Captain Picard's ready room",[descriptionTest]),_291656).


test('?- test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_292094)),nondet]):-call(test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_292094).


test('?- test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_291998)),nondet]):-call(test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_291998).


test('?- test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_292196)),nondet]):-call(test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_292196).


test('?- test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_291776)),nondet]):-call(test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest]),_291776).


test('?- test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_291884)),nondet]):-call(test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_291884).


test('?- test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_292196)),nondet]):-call(test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_292196).


test('?- test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_292004)),nondet]):-call(test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_292004).


test('?- test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_291800)),nondet]):-call(test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_291800).


test('?- test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_292148)),nondet]):-call(test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_292148).


test('?- test_lex_info("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_291746)),nondet]):-call(test_lex_info("This is where the ship's pilot and information officer sit",[descriptionTest]),_291746).


test('?- test_lex_info("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_291668)),nondet]):-call(test_lex_info("You're in the conference room of the Enterprise",[descriptionTest]),_291668).


test('?- test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_292214)),nondet]):-call(test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_292214).


test('?- test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_291836)),nondet]):-call(test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_291836).


test('?- test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_291932)),nondet]):-call(test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_291932).


test('?- test_lex_info("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_291764)),nondet]):-call(test_lex_info("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_291764).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_208344)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_208344).


test('?- test_lex_info("no two owners eat pizza",[sanity])',[true(compound(_208336)),nondet]):-call(test_lex_info("no two owners eat pizza",[sanity]),_208336).


test('?- test_lex_info("no three owners eat pizza",[sanity])',[true(compound(_208336)),nondet]):-call(test_lex_info("no three owners eat pizza",[sanity]),_208336).


test('?- test_lex_info("no three owners eat the same pizza",[sanity])',[true(compound(_208338)),nondet]):-call(test_lex_info("no three owners eat the same pizza",[sanity]),_208338).


test('?- test_lex_info("no three owners eat the same kind of pizza",[sanity])',[true(compound(_208340)),nondet]):-call(test_lex_info("no three owners eat the same kind of pizza",[sanity]),_208340).


test('?- test_lex_info("no owners eat the same pizza",[sanity])',[true(compound(_208336)),nondet]):-call(test_lex_info("no owners eat the same pizza",[sanity]),_208336).


test('?- test_lex_info("no owners eat the same kind of pizza",[sanity])',[true(compound(_208338)),nondet]):-call(test_lex_info("no owners eat the same kind of pizza",[sanity]),_208338).


test('?- test_lex_info("there are 5 houses",[sanity])',[true(compound(_208334)),nondet]):-call(test_lex_info("there are 5 houses",[sanity]),_208334).


test('?- test_lex_info("there are not 5 houses",[sanity])',[true(compound(_208334)),nondet]):-call(test_lex_info("there are not 5 houses",[sanity]),_208334).


test('?- test_lex_info("there are not zero houses",[sanity])',[true(compound(_208336)),nondet]):-call(test_lex_info("there are not zero houses",[sanity]),_208336).


test('?- test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_208344)),nondet]):-call(test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug]),_208344).


test('?- test_lex_info(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_208338)),nondet]):-call(test_lex_info(noun_phrase("at most the 5 owners"),[sanity]),_208338).


test('?- test_lex_info(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_208338)),nondet]):-call(test_lex_info(noun_phrase("at most 5 owners"),[sanity]),_208338).


test('?- test_lex_info(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_208338)),nondet]):-call(test_lex_info(noun_phrase("less than 3 owners"),[sanity]),_208338).


test('?- test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_208340)),nondet]):-call(test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity]),_208340).


test('?- test_lex_info(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_208344)),nondet]):-call(test_lex_info(noun_phrase("no three owners"),[sanity,no_working]),_208344).


test('?- test_lex_info("terry writes a non-program.",[tell])',[true(compound(_208336)),nondet]):-call(test_lex_info("terry writes a non-program.",[tell]),_208336).


test('?- test_lex_info("every nonhuman programmer writes a program.",[tell])',[true(compound(_208340)),nondet]):-call(test_lex_info("every nonhuman programmer writes a program.",[tell]),_208340).


test('?- test_lex_info("every human programmer writes a not a program.",[tell])',[true(compound(_208340)),nondet]):-call(test_lex_info("every human programmer writes a not a program.",[tell]),_208340).


test('?- test_lex_info("every human programmer happily writes a not a program.",[tell])',[true(compound(_208342)),nondet]):-call(test_lex_info("every human programmer happily writes a not a program.",[tell]),_208342).


:- end_tests(test_lex_info).



:- begin_tests(chat80).



test('?- chat80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_208386)),nondet]):-call(chat80("His friends are liked by hers.",[bad_juju,sanity]),_208386).


test('?- chat80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_208388)),nondet]):-call(chat80("Her friends are not liked by his.",[bad_juju,sanity]),_208388).


test('?- chat80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_208388)),nondet]):-call(chat80("Do their friends like each other?",[bad_juju,feature]),_208388).


test('?- chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_208330),sanity])',[true(compound(_208392)),nondet]):-call(chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_208330),sanity]),_208392).


test('?- chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_208328),sanity])',[true(compound(_208390)),nondet]):-call(chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_208328),sanity]),_208390).


test('?- chat80("There are 5 houses with five different colors.",[riddle(_208332),sanity])',[true(compound(_208394)),nondet]):-call(chat80("There are 5 houses with five different colors.",[riddle(_208332),sanity]),_208394).


test('?- chat80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_208384)),nondet]):-call(chat80("There are 5 houses",[riddle_prep,sanity]),_208384).


test('?- chat80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_208388)),nondet]):-call(chat80("Each house has a different color",[riddle_prep,sanity]),_208388).


test('?- chat80("In each house lives a person with a different nationality.",[riddle(_208336),sanity])',[true(compound(_208398)),nondet]):-call(chat80("In each house lives a person with a different nationality.",[riddle(_208336),sanity]),_208398).


test('?- chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_208410)),nondet]):-call(chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_208410).


test('?- chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_208398)),nondet]):-call(chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_208398).


test('?- chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_208396)),nondet]):-call(chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_208396).


test('?- chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_208400)),nondet]):-call(chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_208400).


test('?- chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_208404)),nondet]):-call(chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_208404).


test('?- chat80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_208396)),nondet]):-call(chat80("No owners have the same pet.",[riddle(1),sanity,regression]),_208396).


test('?- chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_208400)),nondet]):-call(chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_208400).


test('?- chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_208394)),nondet]):-call(chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_208394).


test('?- chat80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_208398)),nondet]):-call(chat80("No two owners have the same pet.",[riddle(1),sanity,regression]),_208398).


test('?- chat80("The brit lives in the red house.",[riddle(_208330),sanity])',[true(compound(_208392)),nondet]):-call(chat80("The brit lives in the red house.",[riddle(_208330),sanity]),_208392).


test('?- chat80("The swede keeps dogs as pets.",[riddle(_208328),sanity])',[true(compound(_208390)),nondet]):-call(chat80("The swede keeps dogs as pets.",[riddle(_208328),sanity]),_208390).


test('?- chat80("A dane drinks tea.",[riddle(_208326),sanity])',[true(compound(_208388)),nondet]):-call(chat80("A dane drinks tea.",[riddle(_208326),sanity]),_208388).


test('?- chat80("The green house is on the left of the white house.",[riddle(_208334),sanity])',[true(compound(_208396)),nondet]):-call(chat80("The green house is on the left of the white house.",[riddle(_208334),sanity]),_208396).


test('?- chat80("The green house\'s owner drinks coffee.",[riddle(_208330),sanity])',[true(compound(_208392)),nondet]):-call(chat80("The green house's owner drinks coffee.",[riddle(_208330),sanity]),_208392).


test('?- chat80("The person who smokes Pall Mall rears birds.",[riddle(_208332),sanity,regression])',[true(compound(_208400)),nondet]):-call(chat80("The person who smokes Pall Mall rears birds.",[riddle(_208332),sanity,regression]),_208400).


test('?- chat80("The owner of the yellow house smokes Dunhill.",[riddle(_208332),sanity])',[true(compound(_208394)),nondet]):-call(chat80("The owner of the yellow house smokes Dunhill.",[riddle(_208332),sanity]),_208394).


test('?- chat80("The man living in the center house drinks milk.",[riddle(_208334),sanity])',[true(compound(_208396)),nondet]):-call(chat80("The man living in the center house drinks milk.",[riddle(_208334),sanity]),_208396).


test('?- chat80("The Norwegian lives in the first house .",[riddle(_208332),sanity])',[true(compound(_208394)),nondet]):-call(chat80("The Norwegian lives in the first house .",[riddle(_208332),sanity]),_208394).


test('?- chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_208338),sanity])',[true(compound(_208400)),nondet]):-call(chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_208338),sanity]),_208400).


test('?- chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_208338),sanity])',[true(compound(_208400)),nondet]):-call(chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_208338),sanity]),_208400).


test('?- chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_208332),sanity])',[true(compound(_208394)),nondet]):-call(chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_208332),sanity]),_208394).


test('?- chat80("The German smokes Prince.",[riddle(_208328),sanity])',[true(compound(_208390)),nondet]):-call(chat80("The German smokes Prince.",[riddle(_208328),sanity]),_208390).


test('?- chat80("The Norwegian lives next to the blue house.",[riddle(_208332),sanity])',[true(compound(_208394)),nondet]):-call(chat80("The Norwegian lives next to the blue house.",[riddle(_208332),sanity]),_208394).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_208336),sanity])',[true(compound(_208398)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_208336),sanity]),_208398).


test('?- chat80("Who owns the fish?",[riddle(_208326),sanity])',[true(compound(_208388)),nondet]):-call(chat80("Who owns the fish?",[riddle(_208326),sanity]),_208388).


test('?- chat80("One woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("One woman paints.",[quants]),_208378).


test('?- chat80("No woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("No woman paints.",[quants]),_208378).


test('?- chat80("Some woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Some woman paints.",[quants]),_208378).


test('?- chat80("Every woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Every woman paints.",[quants]),_208378).


test('?- chat80("Each woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Each woman paints.",[quants]),_208378).


test('?- chat80("Any woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Any woman paints.",[quants]),_208378).


test('?- chat80("The woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("The woman paints.",[quants]),_208378).


test('?- chat80("The not woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("The not woman paints.",[quants]),_208378).


test('?- chat80("Not a woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Not a woman paints.",[quants]),_208378).


test('?- chat80("Not one woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Not one woman paints.",[quants]),_208378).


test('?- chat80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_208378)),nondet]):-call(chat80("Not no woman paints.",[quants_neg_postcond]),_208378).


test('?- chat80("Not some woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Not some woman paints.",[quants]),_208378).


test('?- chat80("Not every woman paints.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("Not every woman paints.",[quants]),_208380).


test('?- chat80("Not each woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Not each woman paints.",[quants]),_208378).


test('?- chat80("Not any woman paints.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Not any woman paints.",[quants]),_208378).


test('?- chat80("The women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("The women paint.",[quants]),_208378).


test('?- chat80("Women paint.",[quants])',[true(compound(_208376)),nondet]):-call(chat80("Women paint.",[quants]),_208376).


test('?- chat80("Some women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Some women paint.",[quants]),_208378).


test('?- chat80("No women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("No women paint.",[quants]),_208378).


test('?- chat80("All women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("All women paint.",[quants]),_208378).


test('?- chat80("Any women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Any women paint.",[quants]),_208378).


test('?- chat80("Not women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Not women paint.",[quants]),_208378).


test('?- chat80("Not no women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Not no women paint.",[quants]),_208378).


test('?- chat80("Not all women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Not all women paint.",[quants]),_208378).


test('?- chat80("Not any women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Not any women paint.",[quants]),_208378).


test('?- chat80("The three women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("The three women paint.",[quants]),_208378).


test('?- chat80("Three women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Three women paint.",[quants]),_208378).


test('?- chat80("Some three women paint.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("Some three women paint.",[quants]),_208380).


test('?- chat80("No three women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("No three women paint.",[quants]),_208378).


test('?- chat80("Every three women paint.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("Every three women paint.",[quants]),_208380).


test('?- chat80("All three women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("All three women paint.",[quants]),_208378).


test('?- chat80("Any three women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Any three women paint.",[quants]),_208378).


test('?- chat80("Not three women paint.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("Not three women paint.",[quants]),_208378).


test('?- chat80("Not some three women paint.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("Not some three women paint.",[quants]),_208380).


test('?- chat80("Not no three women paint.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("Not no three women paint.",[quants]),_208380).


test('?- chat80("Not all three women paint.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("Not all three women paint.",[quants]),_208380).


test('?- chat80("Not every three women paint.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("Not every three women paint.",[quants]),_208380).


test('?- chat80("Not any three women paint.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("Not any three women paint.",[quants]),_208380).


test('?- chat80("Not three of the women paint.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("Not three of the women paint.",[quants]),_208380).


test('?- chat80("Not some of the three women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("Not some of the three women paint.",[quants]),_208382).


test('?- chat80("Not no three of the women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("Not no three of the women paint.",[quants]),_208382).


test('?- chat80("Not all three of the women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("Not all three of the women paint.",[quants]),_208382).


test('?- chat80("Not every three of the women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("Not every three of the women paint.",[quants]),_208382).


test('?- chat80("Not any three of the women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("Not any three of the women paint.",[quants]),_208382).


test('?- chat80("Not three of the four women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("Not three of the four women paint.",[quants]),_208382).


test('?- chat80("Not none of three out of the four women paint.",[quants])',[true(compound(_208384)),nondet]):-call(chat80("Not none of three out of the four women paint.",[quants]),_208384).


test('?- chat80("Not all three of the four women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("Not all three of the four women paint.",[quants]),_208382).


test('?- chat80("Not any three of the four women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("Not any three of the four women paint.",[quants]),_208382).


test('?- chat80("Three of the four women paint.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("Three of the four women paint.",[quants]),_208380).


test('?- chat80("Three out of the four women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("Three out of the four women paint.",[quants]),_208382).


test('?- chat80("All three of the four women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("All three of the four women paint.",[quants]),_208382).


test('?- chat80("Any three of the four women paint.",[quants])',[true(compound(_208382)),nondet]):-call(chat80("Any three of the four women paint.",[quants]),_208382).


test('?- chat80("I paint",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("I paint",[pronoun]),_208376).


test('?- chat80("you paint",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("you paint",[pronoun]),_208376).


test('?- chat80("We paint",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("We paint",[pronoun]),_208376).


test('?- chat80("None paint",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("None paint",[pronoun]),_208376).


test('?- chat80("They paint",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("They paint",[pronoun]),_208376).


test('?- chat80("Some paint",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("Some paint",[pronoun]),_208376).


test('?- chat80("It paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("It paints",[pronoun]),_208376).


test('?- chat80("he paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("he paints",[pronoun]),_208376).


test('?- chat80("She paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("She paints",[pronoun]),_208376).


test('?- chat80("Someone paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("Someone paints",[pronoun]),_208376).


test('?- chat80("Anybody paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("Anybody paints",[pronoun]),_208376).


test('?- chat80("Anyone paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("Anyone paints",[pronoun]),_208376).


test('?- chat80("Anything paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Anything paints",[pronoun]),_208378).


test('?- chat80("Everybody paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Everybody paints",[pronoun]),_208378).


test('?- chat80("Everyone paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Everyone paints",[pronoun]),_208378).


test('?- chat80("Everything paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Everything paints",[pronoun]),_208378).


test('?- chat80("Nobody paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("Nobody paints",[pronoun]),_208376).


test('?- chat80("No one paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("No one paints",[pronoun]),_208376).


test('?- chat80("Nothing paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("Nothing paints",[pronoun]),_208376).


test('?- chat80("One paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("One paints",[pronoun]),_208376).


test('?- chat80("Somebody paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Somebody paints",[pronoun]),_208378).


test('?- chat80("Something paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Something paints",[pronoun]),_208378).


test('?- chat80("Not anybody paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Not anybody paints",[pronoun]),_208378).


test('?- chat80("Not anyone paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Not anyone paints",[pronoun]),_208378).


test('?- chat80("Not anything paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Not anything paints",[pronoun]),_208378).


test('?- chat80("Not everybody paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Not everybody paints",[pronoun]),_208378).


test('?- chat80("Not everyone paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Not everyone paints",[pronoun]),_208378).


test('?- chat80("Not everything paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Not everything paints",[pronoun]),_208378).


test('?- chat80("Not nothing paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Not nothing paints",[pronoun]),_208378).


test('?- chat80("Not one paints",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("Not one paints",[pronoun]),_208376).


test('?- chat80("Not somebody paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Not somebody paints",[pronoun]),_208378).


test('?- chat80("Not something paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("Not something paints",[pronoun]),_208378).


test('?- chat80("She likes i",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("She likes i",[pronoun]),_208376).


test('?- chat80("She likes me",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("She likes me",[pronoun]),_208376).


test('?- chat80("She likes you",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("She likes you",[pronoun]),_208376).


test('?- chat80("She likes it",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("She likes it",[pronoun]),_208376).


test('?- chat80("She likes us",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("She likes us",[pronoun]),_208376).


test('?- chat80("She likes them",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("She likes them",[pronoun]),_208376).


test('?- chat80("She likes no one",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("She likes no one",[pronoun]),_208378).


test('?- chat80("She likes none",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("She likes none",[pronoun]),_208376).


test('?- chat80("She likes him",[pronoun])',[true(compound(_208376)),nondet]):-call(chat80("She likes him",[pronoun]),_208376).


test('?- chat80("She likes herself",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("She likes herself",[pronoun]),_208378).


test('?- chat80("She likes himself",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("She likes himself",[pronoun]),_208378).


test('?- chat80("It is us that paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("It is us that paints",[pronoun]),_208378).


test('?- chat80("It is them that paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("It is them that paints",[pronoun]),_208378).


test('?- chat80("It is he that paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("It is he that paints",[pronoun]),_208378).


test('?- chat80("It is she that paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("It is she that paints",[pronoun]),_208378).


test('?- chat80("It is her that paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("It is her that paints",[pronoun]),_208378).


test('?- chat80("It is him that paints",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("It is him that paints",[pronoun]),_208378).


test('?- chat80("We are us that paint",[pronoun])',[true(compound(_208378)),nondet]):-call(chat80("We are us that paint",[pronoun]),_208378).


test('?- chat80("We are all of us that paint",[pronoun])',[true(compound(_208380)),nondet]):-call(chat80("We are all of us that paint",[pronoun]),_208380).


test('?- chat80("It is everybody that paints",[pronoun])',[true(compound(_208380)),nondet]):-call(chat80("It is everybody that paints",[pronoun]),_208380).


test('?- chat80("Every man that paints likes monet.",[bratko])',[true(compound(_208382)),nondet]):-call(chat80("Every man that paints likes monet.",[bratko]),_208382).


test('?- chat80("A woman that admires John paints.",[bratko])',[true(compound(_208382)),nondet]):-call(chat80("A woman that admires John paints.",[bratko]),_208382).


test('?- chat80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_208388)),nondet]):-call(chat80("Every woman that likes a man that admires monet paints.",[bratko]),_208388).


test('?- chat80("John likes Annie.",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("John likes Annie.",[bratko]),_208378).


test('?- chat80("Annie likes a man that admires monet.",[bratko])',[true(compound(_208382)),nondet]):-call(chat80("Annie likes a man that admires monet.",[bratko]),_208382).


test('?- chat80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_208382)),nondet]):-call(chat80("Bertrand Russell wrote principia.",[bratko]),_208382).


test('?- chat80("An author wrote principia.",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("An author wrote principia.",[bratko]),_208380).


test('?- chat80("Iraq is a country.",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("Iraq is a country.",[bratko]),_208378).


test('?- chat80("A happy author wrote principia.",[bratko])',[true(compound(_208382)),nondet]):-call(chat80("A happy author wrote principia.",[bratko]),_208382).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_208378).


test('?- chat80("Bertrand is an author.",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("Bertrand is an author.",[bratko]),_208378).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_208378).


test('?- chat80("Every author is a programmer.",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("Every author is a programmer.",[bratko]),_208380).


test('?- chat80("Is Bertrand an programmer?",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("Is Bertrand an programmer?",[bratko]),_208380).


test('?- chat80("What is a author?",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("What is a author?",[bratko]),_208378).


test('?- chat80("What did Bertrand write?",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("What did Bertrand write?",[bratko]),_208380).


test('?- chat80("What is a book?",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("What is a book?",[bratko]),_208378).


test('?- chat80("Principia is a book.",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("Principia is a book.",[bratko]),_208378).


test('?- chat80("Bertrand is Bertrand.",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("Bertrand is Bertrand.",[bratko]),_208378).


test('?- chat80("Shrdlu halts.",[bratko])',[true(compound(_208376)),nondet]):-call(chat80("Shrdlu halts.",[bratko]),_208376).


test('?- chat80("Every student wrote a program.",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("Every student wrote a program.",[bratko]),_208380).


test('?- chat80("Terry writes a program.",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("Terry writes a program.",[bratko]),_208380).


test('?- chat80("Terry writes a program that halts.",[bratko])',[true(compound(_208382)),nondet]):-call(chat80("Terry writes a program that halts.",[bratko]),_208382).


test('?- chat80("An author of every book wrote a program.",[bratko])',[true(compound(_208384)),nondet]):-call(chat80("An author of every book wrote a program.",[bratko]),_208384).


test('?- chat80("A man hapilly maried paints.",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("A man hapilly maried paints.",[bratko]),_208380).


test('?- chat80("A hapilly maried man paints.",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("A hapilly maried man paints.",[bratko]),_208380).


test('?- chat80("A man who knows paints.",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("A man who knows paints.",[bratko]),_208380).


test('?- chat80("A man gives something.",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("A man gives something.",[bratko]),_208378).


test('?- chat80("A man gives his word.",[bratko])',[true(compound(_208378)),nondet]):-call(chat80("A man gives his word.",[bratko]),_208378).


test('?- chat80("A man of his word paints.",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("A man of his word paints.",[bratko]),_208380).


test('?- chat80("A man paints.",[bratko])',[true(compound(_208376)),nondet]):-call(chat80("A man paints.",[bratko]),_208376).


test('?- chat80("A man that paints paints.",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("A man that paints paints.",[bratko]),_208380).


test('?- chat80("A man walks.",[bratko])',[true(compound(_208376)),nondet]):-call(chat80("A man walks.",[bratko]),_208376).


test('?- chat80("A man that walks paints.",[bratko])',[true(compound(_208380)),nondet]):-call(chat80("A man that walks paints.",[bratko]),_208380).


test('?- chat80("It halts.",[bratko])',[true(compound(_208376)),nondet]):-call(chat80("It halts.",[bratko]),_208376).


test('?- chat80("A man of his word that walks paints.",[bratko])',[true(compound(_208382)),nondet]):-call(chat80("A man of his word that walks paints.",[bratko]),_208382).


test('?- chat80("The cost of what the product is changes.",[bratko])',[true(compound(_208384)),nondet]):-call(chat80("The cost of what the product is changes.",[bratko]),_208384).


test('?- chat80("We need a virtual machine server.",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("We need a virtual machine server.",[aindy]),_208382).


test('?- chat80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_208386)),nondet]):-call(chat80("The virtual machine server should have several VMs.",[aindy]),_208386).


test('?- chat80("One VM should be the POSI VM.",[aindy])',[true(compound(_208380)),nondet]):-call(chat80("One VM should be the POSI VM.",[aindy]),_208380).


test('?- chat80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("One VM should be the FRDCSA.org VM.",[aindy]),_208382).


test('?- chat80("One VM should be the mail server.",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("One VM should be the mail server.",[aindy]),_208382).


test('?- chat80("One computer should be the backup server.",[aindy])',[true(compound(_208384)),nondet]):-call(chat80("One computer should be the backup server.",[aindy]),_208384).


test('?- chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_208400)),nondet]):-call(chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_208400).


test('?- chat80("I need a fast computer for work.",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("I need a fast computer for work.",[aindy]),_208382).


test('?- chat80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_208392)),nondet]):-call(chat80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_208392).


test('?- chat80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_208388)),nondet]):-call(chat80("I need a dedicated computer for network security research.",[aindy]),_208388).


test('?- chat80("I need a machine to run Tails on.",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("I need a machine to run Tails on.",[aindy]),_208382).


test('?- chat80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_208386)),nondet]):-call(chat80("I need a machine off the network for airgap security.",[aindy]),_208386).


test('?- chat80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_208392)),nondet]):-call(chat80("One VM should be the game server for running game development projects.",[aindy]),_208392).


test('?- chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_208386)),nondet]):-call(chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_208386).


test('?- chat80("I could read about how to build a private watson.",[aindy])',[true(compound(_208386)),nondet]):-call(chat80("I could read about how to build a private watson.",[aindy]),_208386).


test('?- chat80("Need backups.",[aindy])',[true(compound(_208376)),nondet]):-call(chat80("Need backups.",[aindy]),_208376).


test('?- chat80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_208390)),nondet]):-call(chat80("Practice setting up backups of a machine to a different machine.",[aindy]),_208390).


test('?- chat80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_208388)),nondet]):-call(chat80("Set up schedules for updating the software on all machines.",[aindy]),_208388).


test('?- chat80("Read books on server room layout.",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("Read books on server room layout.",[aindy]),_208382).


test('?- chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_208390)),nondet]):-call(chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_208390).


test('?- chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_208392)),nondet]):-call(chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_208392).


test('?- chat80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("I want a gaming computer.  Do I?",[aindy]),_208382).


test('?- chat80("I want a windows 7 computer for work.",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("I want a windows 7 computer for work.",[aindy]),_208382).


test('?- chat80("I want a fast linux computer for work.",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("I want a fast linux computer for work.",[aindy]),_208382).


test('?- chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_208402)),nondet]):-call(chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_208402).


test('?- chat80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_208388)),nondet]):-call(chat80("I could install a fresh operating system on justin for work.",[aindy]),_208388).


test('?- chat80("I probably want a separate git computer.",[aindy])',[true(compound(_208384)),nondet]):-call(chat80("I probably want a separate git computer.",[aindy]),_208384).


test('?- chat80("I need to start buying servers.",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("I need to start buying servers.",[aindy]),_208382).


test('?- chat80("I want a rackmount case for servers.",[aindy])',[true(compound(_208382)),nondet]):-call(chat80("I want a rackmount case for servers.",[aindy]),_208382).


test('?- chat80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_208388)),nondet]):-call(chat80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_208388).


test('?- chat80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_208386)),nondet]):-call(chat80("2 oceans border each african country.",[chat80(tell)]),_208386).


test('?- chat80("There are 10 large cars.",[quants])',[true(compound(_208380)),nondet]):-call(chat80("There are 10 large cars.",[quants]),_208380).


test('?- chat80("There are 10 oceans.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("There are 10 oceans.",[quants]),_208378).


test('?- chat80("There are 10 women.",[quants])',[true(compound(_208378)),nondet]):-call(chat80("There are 10 women.",[quants]),_208378).


test('?- chat80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_208386)),nondet]):-call(chat80("An ocean borders an African country.",[chat80(tell)]),_208386).


test('?- chat80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_208394)),nondet]):-call(chat80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_208394).


test('?- chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_208396)),nondet]):-call(chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_208396).


test('?- chat80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_208382)),nondet]):-call(chat80("Bertrand wrote a book.",[bratko(book)]),_208382).


test('?- chat80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_208384)),nondet]):-call(chat80("Bertrand wrote nothing.",[bratko(book)]),_208384).


test('?- chat80("Bertrand wrote.",[bratko(book)])',[true(compound(_208382)),nondet]):-call(chat80("Bertrand wrote.",[bratko(book)]),_208382).


test('?- chat80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_208386)),nondet]):-call(chat80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_208386).


test('?- chat80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_208384)),nondet]):-call(chat80("Bertrand wrote about Gottlob.",[bratko(book)]),_208384).


test('?- chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_208386)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_208386).


test('?- chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_208388)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_208388).


test('?- chat80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_208386)),nondet]):-call(chat80("What did alfred write to Bertrand?",[bratko(book)]),_208386).


test('?- chat80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_208382)),nondet]):-call(chat80("Alfred wrote a letter.",[bratko(book)]),_208382).


test('?- chat80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_208386)),nondet]):-call(chat80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_208386).


test('?- chat80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_208386)),nondet]):-call(chat80("Alfred wrote something to Bertrand.",[bratko(book)]),_208386).


test('?- chat80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_208384)),nondet]):-call(chat80("Alfred wrote to Bertrand.",[bratko(book)]),_208384).


test('?- chat80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_208386)),nondet]):-call(chat80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_208386).


test('?- chat80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_208386)),nondet]):-call(chat80("Alfred wrote Bertrand a letter.",[bratko(book)]),_208386).


test('?- chat80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_208386)),nondet]):-call(chat80("Who did alfred write a letter to?",[bratko(book)]),_208386).


test('?- chat80("Alfred gave it.",[bratko(book)])',[true(compound(_208382)),nondet]):-call(chat80("Alfred gave it.",[bratko(book)]),_208382).


test('?- chat80("Alfred gave a book.",[bratko(book)])',[true(compound(_208382)),nondet]):-call(chat80("Alfred gave a book.",[bratko(book)]),_208382).


test('?- chat80("a pride of lions paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a pride of lions paint",[of]),_208378).


test('?- chat80("a flock of birds paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a flock of birds paint",[of]),_208378).


test('?- chat80("a litter of pups paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a litter of pups paint",[of]),_208378).


test('?- chat80("a prickle of porcupines paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a prickle of porcupines paint",[of]),_208380).


test('?- chat80("a litter of cubs paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a litter of cubs paint",[of]),_208378).


test('?- chat80("a pack of dogs paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a pack of dogs paint",[of]),_208378).


test('?- chat80("a colony of beavers paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a colony of beavers paint",[of]),_208380).


test('?- chat80("a gaggle of geese paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a gaggle of geese paint",[of]),_208380).


test('?- chat80("a family of otters paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a family of otters paint",[of]),_208380).


test('?- chat80("a huddle of walruses paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a huddle of walruses paint",[of]),_208380).


test('?- chat80("a herd of deer paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a herd of deer paint",[of]),_208378).


test('?- chat80("a culture of bacteria paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a culture of bacteria paint",[of]),_208380).


test('?- chat80("a swarm of bees paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a swarm of bees paint",[of]),_208378).


test('?- chat80("a bed of clams paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a bed of clams paint",[of]),_208378).


test('?- chat80("a school of cod paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a school of cod paint",[of]),_208378).


test('?- chat80("a herd of dinosaurs paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a herd of dinosaurs paint",[of]),_208380).


test('?- chat80("a mess of iguanas paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a mess of iguanas paint",[of]),_208380).


test('?- chat80("a mob of wombats paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a mob of wombats paint",[of]),_208378).


test('?- chat80("a pod of pelicans paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a pod of pelicans paint",[of]),_208380).


test('?- chat80("a troop of boy scouts paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a troop of boy scouts paint",[of]),_208380).


test('?- chat80("a team of athletes paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a team of athletes paint",[of]),_208380).


test('?- chat80("a panel of experts paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a panel of experts paint",[of]),_208380).


test('?- chat80("a crew of sailors paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a crew of sailors paint",[of]),_208380).


test('?- chat80("a band of robbers paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a band of robbers paint",[of]),_208380).


test('?- chat80("a troupe of performers paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a troupe of performers paint",[of]),_208380).


test('?- chat80("a crowd of onlookers paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a crowd of onlookers paint",[of]),_208380).


test('?- chat80("a curse of painters paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("a curse of painters paint",[of]),_208380).


test('?- chat80("a fleet of cars paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a fleet of cars paint",[of]),_208378).


test('?- chat80("a pair of shoes paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a pair of shoes paint",[of]),_208378).


test('?- chat80("a fleet of ships paint",[of])',[true(compound(_208378)),nondet]):-call(chat80("a fleet of ships paint",[of]),_208378).


test('?- chat80("an anthology of stories paint",[of])',[true(compound(_208380)),nondet]):-call(chat80("an anthology of stories paint",[of]),_208380).


test('?- chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_291736)),nondet]):-call(chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_291736).


test('?- chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_291706)),nondet]):-call(chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_291706).


test('?- chat80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_291844)),nondet]):-call(chat80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_291844).


test('?- chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_291688)),nondet]):-call(chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_291688).


test('?- chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_291736)),nondet]):-call(chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_291736).


test('?- chat80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_291832)),nondet]):-call(chat80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_291832).


test('?- chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_291790)),nondet]):-call(chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_291790).


test('?- chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_291982)),nondet]):-call(chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_291982).


test('?- chat80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_291754)),nondet]):-call(chat80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_291754).


test('?- chat80("Logged on player character",[descriptionTest])',[true(compound(_291562)),nondet]):-call(chat80("Logged on player character",[descriptionTest]),_291562).


test('?- chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_291820)),nondet]):-call(chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_291820).


test('?- chat80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_291766)),nondet]):-call(chat80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_291766).


test('?- chat80("Wesley is her son",[descriptionTest])',[true(compound(_291508)),nondet]):-call(chat80("Wesley is her son",[descriptionTest]),_291508).


test('?- chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_292156)),nondet]):-call(chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_292156).


test('?- chat80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_291586)),nondet]):-call(chat80("Counselor Deanna Troi is here",[descriptionTest]),_291586).


test('?- chat80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_291682)),nondet]):-call(chat80("Counselor Troi is the ship's main counselor",[descriptionTest]),_291682).


test('?- chat80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_291838)),nondet]):-call(chat80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_291838).


test('?- chat80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_291712)),nondet]):-call(chat80("Commander William Riker is here, staring at you",[descriptionTest]),_291712).


test('?- chat80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_291718)),nondet]):-call(chat80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_291718).


test('?- chat80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_291688)),nondet]):-call(chat80("He's in charge of keeping the crew in line",[descriptionTest]),_291688).


test('?- chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_291754)),nondet]):-call(chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_291754).


test('?- chat80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_291652)),nondet]):-call(chat80("Captain Picard is a very important man",[descriptionTest]),_291652).


test('?- chat80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_291754)),nondet]):-call(chat80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_291754).


test('?- chat80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_291598)),nondet]):-call(chat80("He's very smart, and very wise",[descriptionTest]),_291598).


test('?- chat80("Don\'t mess with him!",[descriptionTest])',[true(compound(_291526)),nondet]):-call(chat80("Don't mess with him!",[descriptionTest]),_291526).


test('?- chat80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_291604)),nondet]):-call(chat80("Guinan is here, tending the bar",[descriptionTest]),_291604).


test('?- chat80("Guinan is a strange being",[descriptionTest])',[true(compound(_291562)),nondet]):-call(chat80("Guinan is a strange being",[descriptionTest]),_291562).


test('?- chat80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_292270)),nondet]):-call(chat80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_292270).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_291772)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_291772).


test('?- chat80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_291772)),nondet]):-call(chat80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_291772).


test('?- chat80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_292072)),nondet]):-call(chat80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_292072).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_291766)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_291766).


test('?- chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_291790)),nondet]):-call(chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_291790).


test('?- chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_292060)),nondet]):-call(chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_292060).


test('?- chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_291982)),nondet]):-call(chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_291982).


test('?- chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_291772)),nondet]):-call(chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_291772).


test('?- chat80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_291652)),nondet]):-call(chat80("Livingston is Captain Picard's pet fish",[descriptionTest]),_291652).


test('?- chat80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_291904)),nondet]):-call(chat80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_291904).


test('?- chat80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_291754)),nondet]):-call(chat80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_291754).


test('?- chat80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_291622)),nondet]):-call(chat80("Spot is Data's orange coloured cat",[descriptionTest]),_291622).


test('?- chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_292144)),nondet]):-call(chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_292144).


test('?- chat80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_291766)),nondet]):-call(chat80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_291766).


test('?- chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_291748)),nondet]):-call(chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_291748).


test('?- chat80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_292090)),nondet]):-call(chat80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_292090).


test('?- chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_291736)),nondet]):-call(chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_291736).


test('?- chat80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_291604)),nondet]):-call(chat80("Alexander Rozhenko is Worf's son",[descriptionTest]),_291604).


test('?- chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_291886)),nondet]):-call(chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_291886).


test('?- chat80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_291802)),nondet]):-call(chat80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_291802).


test('?- chat80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_291748)),nondet]):-call(chat80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_291748).


test('?- chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_292150)),nondet]):-call(chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_292150).


test('?- chat80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_291628)),nondet]):-call(chat80("A large phaser rifle is lying here",[descriptionTest]),_291628).


test('?- chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_292222)),nondet]):-call(chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_292222).


test('?- chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_291826)),nondet]):-call(chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_291826).


test('?- chat80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292174)),nondet]):-call(chat80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292174).


test('?- chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_291826)),nondet]):-call(chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_291826).


test('?- chat80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292198)),nondet]):-call(chat80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292198).


test('?- chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_291802)),nondet]):-call(chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_291802).


test('?- chat80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292174)),nondet]):-call(chat80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292174).


test('?- chat80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_291724)),nondet]):-call(chat80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_291724).


test('?- chat80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_292264)),nondet]):-call(chat80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_292264).


test('?- chat80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_291694)),nondet]):-call(chat80("A Starfleet communication badge is lying here",[descriptionTest]),_291694).


test('?- chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_292732)),nondet]):-call(chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_292732).


test('?- chat80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_291688)),nondet]):-call(chat80("Worf's silver chain sash has been left here",[descriptionTest]),_291688).


test('?- chat80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_292300)),nondet]):-call(chat80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_292300).


test('?- chat80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_291580)),nondet]):-call(chat80("Geordi's VISOR is lying here",[descriptionTest]),_291580).


test('?- chat80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_292972)),nondet]):-call(chat80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_292972).


test('?- chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_291748)),nondet]):-call(chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_291748).


test('?- chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_292534)),nondet]):-call(chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_292534).


test('?- chat80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_291682)),nondet]):-call(chat80("A shard of dilithium crystal is lying here",[descriptionTest]),_291682).


test('?- chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_292336)),nondet]):-call(chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_292336).


test('?- chat80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_291694)),nondet]):-call(chat80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_291694).


test('?- chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_292306)),nondet]):-call(chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_292306).


test('?- chat80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_291706)),nondet]):-call(chat80("Commander Riker's trombone has been placed here",[descriptionTest]),_291706).


test('?- chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_292138)),nondet]):-call(chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_292138).


test('?- chat80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_291634)),nondet]):-call(chat80("A small cup of tea is sitting here",[descriptionTest]),_291634).


test('?- chat80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_291652)),nondet]):-call(chat80("A bottle of synthehol is standing here",[descriptionTest]),_291652).


test('?- chat80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_291664)),nondet]):-call(chat80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_291664).


test('?- chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_291688)),nondet]):-call(chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_291688).


test('?- chat80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_291700)),nondet]):-call(chat80("A small glass of prune juice is sitting here",[descriptionTest]),_291700).


test('?- chat80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_291670)),nondet]):-call(chat80("A bottle of Vulcan beer is standing here",[descriptionTest]),_291670).


test('?- chat80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_291742)),nondet]):-call(chat80("You find yourself in the middle of main engineering",[descriptionTest]),_291742).


test('?- chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_291862)),nondet]):-call(chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_291862).


test('?- chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_292162)),nondet]):-call(chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_292162).


test('?- chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_291970)),nondet]):-call(chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_291970).


test('?- chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_291898)),nondet]):-call(chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_291898).


test('?- chat80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_292078)),nondet]):-call(chat80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_292078).


test('?- chat80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_291670)),nondet]):-call(chat80("You're in the middle of Geordi's quarters",[descriptionTest]),_291670).


test('?- chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_291868)),nondet]):-call(chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_291868).


test('?- chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_292192)),nondet]):-call(chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_292192).


test('?- chat80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_291802)),nondet]):-call(chat80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_291802).


test('?- chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_291772)),nondet]):-call(chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_291772).


test('?- chat80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_291658)),nondet]):-call(chat80("You're in the middle of Data's quarters",[descriptionTest]),_291658).


test('?- chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_292720)),nondet]):-call(chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_292720).


test('?- chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_291934)),nondet]):-call(chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_291934).


test('?- chat80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_291958)),nondet]):-call(chat80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_291958).


test('?- chat80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_291586)),nondet]):-call(chat80("You're in the dimly lit Brig",[descriptionTest]),_291586).


test('?- chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_291976)),nondet]):-call(chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_291976).


test('?- chat80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_292054)),nondet]):-call(chat80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_292054).


test('?- chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_292348)),nondet]):-call(chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_292348).


test('?- chat80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_298576)),nondet]):-call(chat80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_298576).


test('?- chat80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_292060)),nondet]):-call(chat80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_292060).


test('?- chat80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_291664)),nondet]):-call(chat80("You're in the Enterprise transporter room",[descriptionTest]),_291664).


test('?- chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_292150)),nondet]):-call(chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_292150).


test('?- chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_292120)),nondet]):-call(chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_292120).


test('?- chat80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_291658)),nondet]):-call(chat80("You find yourself in a transporter beam",[descriptionTest]),_291658).


test('?- chat80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_291658)),nondet]):-call(chat80("All you can see is blue flashing light",[descriptionTest]),_291658).


test('?- chat80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_291814)),nondet]):-call(chat80("It feels as though your body is racing around at high speeds",[descriptionTest]),_291814).


test('?- chat80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_291934)),nondet]):-call(chat80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_291934).


test('?- chat80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_291862)),nondet]):-call(chat80("You step through the doors and find yourself in a large school room",[descriptionTest]),_291862).


test('?- chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_292240)),nondet]):-call(chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_292240).


test('?- chat80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_291994)),nondet]):-call(chat80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_291994).


test('?- chat80("You\'re in the turbolift",[descriptionTest])',[true(compound(_291544)),nondet]):-call(chat80("You're in the turbolift",[descriptionTest]),_291544).


test('?- chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_291922)),nondet]):-call(chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_291922).


test('?- chat80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_291814)),nondet]):-call(chat80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_291814).


test('?- chat80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_291802)),nondet]):-call(chat80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_291802).


test('?- chat80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_291556)),nondet]):-call(chat80("You're now on Holodeck 2",[descriptionTest]),_291556).


test('?- chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_292240)),nondet]):-call(chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_292240).


test('?- chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_291988)),nondet]):-call(chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_291988).


test('?- chat80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_291682)),nondet]):-call(chat80("Right now, this holodeck is not functioning",[descriptionTest]),_291682).


test('?- chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_291790)),nondet]):-call(chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_291790).


test('?- chat80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_291712)),nondet]):-call(chat80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_291712).


test('?- chat80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_291922)),nondet]):-call(chat80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_291922).


test('?- chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_292240)),nondet]):-call(chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_292240).


test('?- chat80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_291616)),nondet]):-call(chat80("You've arrived in Riker's quarters",[descriptionTest]),_291616).


test('?- chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_292192)),nondet]):-call(chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_292192).


test('?- chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_292126)),nondet]):-call(chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_292126).


test('?- chat80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_291730)),nondet]):-call(chat80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_291730).


test('?- chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_292366)),nondet]):-call(chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_292366).


test('?- chat80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_292162)),nondet]):-call(chat80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_292162).


test('?- chat80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_291634)),nondet]):-call(chat80("You emerge into a dark narrow alley",[descriptionTest]),_291634).


test('?- chat80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_291778)),nondet]):-call(chat80("Tall dark brick buildings block your way north and south",[descriptionTest]),_291778).


test('?- chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_292042)),nondet]):-call(chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_292042).


test('?- chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_292078)),nondet]):-call(chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_292078).


test('?- chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_291814)),nondet]):-call(chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_291814).


test('?- chat80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_291718)),nondet]):-call(chat80("The archway leading out of the holodeck is west",[descriptionTest]),_291718).


test('?- chat80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_291622)),nondet]):-call(chat80("You're in Doctor Crusher's quarters",[descriptionTest]),_291622).


test('?- chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_292018)),nondet]):-call(chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_292018).


test('?- chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_292108)),nondet]):-call(chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_292108).


test('?- chat80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_291850)),nondet]):-call(chat80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_291850).


test('?- chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_292474)),nondet]):-call(chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_292474).


test('?- chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_291946)),nondet]):-call(chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_291946).


test('?- chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_292342)),nondet]):-call(chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_292342).


test('?- chat80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_291814)),nondet]):-call(chat80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_291814).


test('?- chat80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_291742)),nondet]):-call(chat80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_291742).


test('?- chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_292636)),nondet]):-call(chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_292636).


test('?- chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_291814)),nondet]):-call(chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_291814).


test('?- chat80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_291724)),nondet]):-call(chat80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_291724).


test('?- chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_291916)),nondet]):-call(chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_291916).


test('?- chat80("A large grey door leads into space",[descriptionTest])',[true(compound(_291628)),nondet]):-call(chat80("A large grey door leads into space",[descriptionTest]),_291628).


test('?- chat80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_291814)),nondet]):-call(chat80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_291814).


test('?- chat80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_291886)),nondet]):-call(chat80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_291886).


test('?- chat80("You feel very cold",[descriptionTest])',[true(compound(_291514)),nondet]):-call(chat80("You feel very cold",[descriptionTest]),_291514).


test('?- chat80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_291784)),nondet]):-call(chat80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_291784).


test('?- chat80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_291670)),nondet]):-call(chat80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_291670).


test('?- chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_292282)),nondet]):-call(chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_292282).


test('?- chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_292006)),nondet]):-call(chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_292006).


test('?- chat80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_291556)),nondet]):-call(chat80("You're in Worf's quarters",[descriptionTest]),_291556).


test('?- chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_292000)),nondet]):-call(chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_292000).


test('?- chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_292414)),nondet]):-call(chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_292414).


test('?- chat80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_291622)),nondet]):-call(chat80("You emerge into the Enterprise gym",[descriptionTest]),_291622).


test('?- chat80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_291724)),nondet]):-call(chat80("The room is quite large, with a soft grey floor",[descriptionTest]),_291724).


test('?- chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_292132)),nondet]):-call(chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_292132).


test('?- chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_292096)),nondet]):-call(chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_292096).


test('?- chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_291784)),nondet]):-call(chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_291784).


test('?- chat80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_291850)),nondet]):-call(chat80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_291850).


test('?- chat80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_291940)),nondet]):-call(chat80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_291940).


test('?- chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_292234)),nondet]):-call(chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_292234).


test('?- chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_292252)),nondet]):-call(chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_292252).


test('?- chat80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_291706)),nondet]):-call(chat80("Two large windows offer a great view of space",[descriptionTest]),_291706).


test('?- chat80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_291958)),nondet]):-call(chat80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_291958).


test('?- chat80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_291634)),nondet]):-call(chat80("You're in the Enterprise science lab",[descriptionTest]),_291634).


test('?- chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_292024)),nondet]):-call(chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_292024).


test('?- chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_292522)),nondet]):-call(chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_292522).


test('?- chat80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_291778)),nondet]):-call(chat80("A complex looking computer console is facing this machine",[descriptionTest]),_291778).


test('?- chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_291934)),nondet]):-call(chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_291934).


test('?- chat80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_291694)),nondet]):-call(chat80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_291694).


test('?- chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_291928)),nondet]):-call(chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_291928).


test('?- chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_292300)),nondet]):-call(chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_292300).


test('?- chat80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_292102)),nondet]):-call(chat80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_292102).


test('?- chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_292498)),nondet]):-call(chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_292498).


test('?- chat80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_291700)),nondet]):-call(chat80("You're standing in Captain Picard's ready room",[descriptionTest]),_291700).


test('?- chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_292138)),nondet]):-call(chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_292138).


test('?- chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_292042)),nondet]):-call(chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_292042).


test('?- chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_292240)),nondet]):-call(chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_292240).


test('?- chat80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_291820)),nondet]):-call(chat80("This is where the Captain makes all of his important decisions",[descriptionTest]),_291820).


test('?- chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_291928)),nondet]):-call(chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_291928).


test('?- chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_292240)),nondet]):-call(chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_292240).


test('?- chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_292048)),nondet]):-call(chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_292048).


test('?- chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_291844)),nondet]):-call(chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_291844).


test('?- chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_292192)),nondet]):-call(chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_292192).


test('?- chat80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_291790)),nondet]):-call(chat80("This is where the ship's pilot and information officer sit",[descriptionTest]),_291790).


test('?- chat80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_291712)),nondet]):-call(chat80("You're in the conference room of the Enterprise",[descriptionTest]),_291712).


test('?- chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_292258)),nondet]):-call(chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_292258).


test('?- chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_291880)),nondet]):-call(chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_291880).


test('?- chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_291976)),nondet]):-call(chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_291976).


test('?- chat80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_291808)),nondet]):-call(chat80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_291808).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_208388)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_208388).


test('?- chat80("no two owners eat pizza",[sanity])',[true(compound(_208380)),nondet]):-call(chat80("no two owners eat pizza",[sanity]),_208380).


test('?- chat80("no three owners eat pizza",[sanity])',[true(compound(_208380)),nondet]):-call(chat80("no three owners eat pizza",[sanity]),_208380).


test('?- chat80("no three owners eat the same pizza",[sanity])',[true(compound(_208382)),nondet]):-call(chat80("no three owners eat the same pizza",[sanity]),_208382).


test('?- chat80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_208384)),nondet]):-call(chat80("no three owners eat the same kind of pizza",[sanity]),_208384).


test('?- chat80("no owners eat the same pizza",[sanity])',[true(compound(_208380)),nondet]):-call(chat80("no owners eat the same pizza",[sanity]),_208380).


test('?- chat80("no owners eat the same kind of pizza",[sanity])',[true(compound(_208382)),nondet]):-call(chat80("no owners eat the same kind of pizza",[sanity]),_208382).


test('?- chat80("there are 5 houses",[sanity])',[true(compound(_208378)),nondet]):-call(chat80("there are 5 houses",[sanity]),_208378).


test('?- chat80("there are not 5 houses",[sanity])',[true(compound(_208378)),nondet]):-call(chat80("there are not 5 houses",[sanity]),_208378).


test('?- chat80("there are not zero houses",[sanity])',[true(compound(_208380)),nondet]):-call(chat80("there are not zero houses",[sanity]),_208380).


test('?- chat80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_208388)),nondet]):-call(chat80(noun_phrase("less than 2 owners"),[sanity,bug]),_208388).


test('?- chat80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_208382)),nondet]):-call(chat80(noun_phrase("at most the 5 owners"),[sanity]),_208382).


test('?- chat80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_208382)),nondet]):-call(chat80(noun_phrase("at most 5 owners"),[sanity]),_208382).


test('?- chat80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_208382)),nondet]):-call(chat80(noun_phrase("less than 3 owners"),[sanity]),_208382).


test('?- chat80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_208384)),nondet]):-call(chat80(noun_phrase("at most 50 percent of owners"),[sanity]),_208384).


test('?- chat80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_208388)),nondet]):-call(chat80(noun_phrase("no three owners"),[sanity,no_working]),_208388).


test('?- chat80("terry writes a non-program.",[tell])',[true(compound(_208380)),nondet]):-call(chat80("terry writes a non-program.",[tell]),_208380).


test('?- chat80("every nonhuman programmer writes a program.",[tell])',[true(compound(_208384)),nondet]):-call(chat80("every nonhuman programmer writes a program.",[tell]),_208384).


test('?- chat80("every human programmer writes a not a program.",[tell])',[true(compound(_208384)),nondet]):-call(chat80("every human programmer writes a not a program.",[tell]),_208384).


test('?- chat80("every human programmer happily writes a not a program.",[tell])',[true(compound(_208386)),nondet]):-call(chat80("every human programmer happily writes a not a program.",[tell]),_208386).


:- end_tests(chat80).



:- begin_tests(curt80).



test('?- curt80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_208430)),nondet]):-call(curt80("His friends are liked by hers.",[bad_juju,sanity]),_208430).


test('?- curt80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_208432)),nondet]):-call(curt80("Her friends are not liked by his.",[bad_juju,sanity]),_208432).


test('?- curt80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_208432)),nondet]):-call(curt80("Do their friends like each other?",[bad_juju,feature]),_208432).


test('?- curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_208374),sanity])',[true(compound(_208436)),nondet]):-call(curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_208374),sanity]),_208436).


test('?- curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_208372),sanity])',[true(compound(_208434)),nondet]):-call(curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_208372),sanity]),_208434).


test('?- curt80("There are 5 houses with five different colors.",[riddle(_208376),sanity])',[true(compound(_208438)),nondet]):-call(curt80("There are 5 houses with five different colors.",[riddle(_208376),sanity]),_208438).


test('?- curt80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_208428)),nondet]):-call(curt80("There are 5 houses",[riddle_prep,sanity]),_208428).


test('?- curt80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_208432)),nondet]):-call(curt80("Each house has a different color",[riddle_prep,sanity]),_208432).


test('?- curt80("In each house lives a person with a different nationality.",[riddle(_208380),sanity])',[true(compound(_208442)),nondet]):-call(curt80("In each house lives a person with a different nationality.",[riddle(_208380),sanity]),_208442).


test('?- curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_208454)),nondet]):-call(curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_208454).


test('?- curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_208442)),nondet]):-call(curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_208442).


test('?- curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_208440)),nondet]):-call(curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_208440).


test('?- curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_208444)),nondet]):-call(curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_208444).


test('?- curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_208448)),nondet]):-call(curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_208448).


test('?- curt80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_208440)),nondet]):-call(curt80("No owners have the same pet.",[riddle(1),sanity,regression]),_208440).


test('?- curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_208444)),nondet]):-call(curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_208444).


test('?- curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_208438)),nondet]):-call(curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_208438).


test('?- curt80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_208442)),nondet]):-call(curt80("No two owners have the same pet.",[riddle(1),sanity,regression]),_208442).


test('?- curt80("The brit lives in the red house.",[riddle(_208374),sanity])',[true(compound(_208436)),nondet]):-call(curt80("The brit lives in the red house.",[riddle(_208374),sanity]),_208436).


test('?- curt80("The swede keeps dogs as pets.",[riddle(_208372),sanity])',[true(compound(_208434)),nondet]):-call(curt80("The swede keeps dogs as pets.",[riddle(_208372),sanity]),_208434).


test('?- curt80("A dane drinks tea.",[riddle(_208370),sanity])',[true(compound(_208432)),nondet]):-call(curt80("A dane drinks tea.",[riddle(_208370),sanity]),_208432).


test('?- curt80("The green house is on the left of the white house.",[riddle(_208378),sanity])',[true(compound(_208440)),nondet]):-call(curt80("The green house is on the left of the white house.",[riddle(_208378),sanity]),_208440).


test('?- curt80("The green house\'s owner drinks coffee.",[riddle(_208374),sanity])',[true(compound(_208436)),nondet]):-call(curt80("The green house's owner drinks coffee.",[riddle(_208374),sanity]),_208436).


test('?- curt80("The person who smokes Pall Mall rears birds.",[riddle(_208376),sanity,regression])',[true(compound(_208444)),nondet]):-call(curt80("The person who smokes Pall Mall rears birds.",[riddle(_208376),sanity,regression]),_208444).


test('?- curt80("The owner of the yellow house smokes Dunhill.",[riddle(_208376),sanity])',[true(compound(_208438)),nondet]):-call(curt80("The owner of the yellow house smokes Dunhill.",[riddle(_208376),sanity]),_208438).


test('?- curt80("The man living in the center house drinks milk.",[riddle(_208378),sanity])',[true(compound(_208440)),nondet]):-call(curt80("The man living in the center house drinks milk.",[riddle(_208378),sanity]),_208440).


test('?- curt80("The Norwegian lives in the first house .",[riddle(_208376),sanity])',[true(compound(_208438)),nondet]):-call(curt80("The Norwegian lives in the first house .",[riddle(_208376),sanity]),_208438).


test('?- curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_208382),sanity])',[true(compound(_208444)),nondet]):-call(curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_208382),sanity]),_208444).


test('?- curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_208382),sanity])',[true(compound(_208444)),nondet]):-call(curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_208382),sanity]),_208444).


test('?- curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_208376),sanity])',[true(compound(_208438)),nondet]):-call(curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_208376),sanity]),_208438).


test('?- curt80("The German smokes Prince.",[riddle(_208372),sanity])',[true(compound(_208434)),nondet]):-call(curt80("The German smokes Prince.",[riddle(_208372),sanity]),_208434).


test('?- curt80("The Norwegian lives next to the blue house.",[riddle(_208376),sanity])',[true(compound(_208438)),nondet]):-call(curt80("The Norwegian lives next to the blue house.",[riddle(_208376),sanity]),_208438).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_208380),sanity])',[true(compound(_208442)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_208380),sanity]),_208442).


test('?- curt80("Who owns the fish?",[riddle(_208370),sanity])',[true(compound(_208432)),nondet]):-call(curt80("Who owns the fish?",[riddle(_208370),sanity]),_208432).


test('?- curt80("One woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("One woman paints.",[quants]),_208422).


test('?- curt80("No woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("No woman paints.",[quants]),_208422).


test('?- curt80("Some woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Some woman paints.",[quants]),_208422).


test('?- curt80("Every woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Every woman paints.",[quants]),_208422).


test('?- curt80("Each woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Each woman paints.",[quants]),_208422).


test('?- curt80("Any woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Any woman paints.",[quants]),_208422).


test('?- curt80("The woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("The woman paints.",[quants]),_208422).


test('?- curt80("The not woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("The not woman paints.",[quants]),_208422).


test('?- curt80("Not a woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Not a woman paints.",[quants]),_208422).


test('?- curt80("Not one woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Not one woman paints.",[quants]),_208422).


test('?- curt80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_208422)),nondet]):-call(curt80("Not no woman paints.",[quants_neg_postcond]),_208422).


test('?- curt80("Not some woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Not some woman paints.",[quants]),_208422).


test('?- curt80("Not every woman paints.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("Not every woman paints.",[quants]),_208424).


test('?- curt80("Not each woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Not each woman paints.",[quants]),_208422).


test('?- curt80("Not any woman paints.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Not any woman paints.",[quants]),_208422).


test('?- curt80("The women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("The women paint.",[quants]),_208422).


test('?- curt80("Women paint.",[quants])',[true(compound(_208420)),nondet]):-call(curt80("Women paint.",[quants]),_208420).


test('?- curt80("Some women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Some women paint.",[quants]),_208422).


test('?- curt80("No women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("No women paint.",[quants]),_208422).


test('?- curt80("All women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("All women paint.",[quants]),_208422).


test('?- curt80("Any women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Any women paint.",[quants]),_208422).


test('?- curt80("Not women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Not women paint.",[quants]),_208422).


test('?- curt80("Not no women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Not no women paint.",[quants]),_208422).


test('?- curt80("Not all women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Not all women paint.",[quants]),_208422).


test('?- curt80("Not any women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Not any women paint.",[quants]),_208422).


test('?- curt80("The three women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("The three women paint.",[quants]),_208422).


test('?- curt80("Three women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Three women paint.",[quants]),_208422).


test('?- curt80("Some three women paint.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("Some three women paint.",[quants]),_208424).


test('?- curt80("No three women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("No three women paint.",[quants]),_208422).


test('?- curt80("Every three women paint.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("Every three women paint.",[quants]),_208424).


test('?- curt80("All three women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("All three women paint.",[quants]),_208422).


test('?- curt80("Any three women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Any three women paint.",[quants]),_208422).


test('?- curt80("Not three women paint.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("Not three women paint.",[quants]),_208422).


test('?- curt80("Not some three women paint.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("Not some three women paint.",[quants]),_208424).


test('?- curt80("Not no three women paint.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("Not no three women paint.",[quants]),_208424).


test('?- curt80("Not all three women paint.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("Not all three women paint.",[quants]),_208424).


test('?- curt80("Not every three women paint.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("Not every three women paint.",[quants]),_208424).


test('?- curt80("Not any three women paint.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("Not any three women paint.",[quants]),_208424).


test('?- curt80("Not three of the women paint.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("Not three of the women paint.",[quants]),_208424).


test('?- curt80("Not some of the three women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("Not some of the three women paint.",[quants]),_208426).


test('?- curt80("Not no three of the women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("Not no three of the women paint.",[quants]),_208426).


test('?- curt80("Not all three of the women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("Not all three of the women paint.",[quants]),_208426).


test('?- curt80("Not every three of the women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("Not every three of the women paint.",[quants]),_208426).


test('?- curt80("Not any three of the women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("Not any three of the women paint.",[quants]),_208426).


test('?- curt80("Not three of the four women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("Not three of the four women paint.",[quants]),_208426).


test('?- curt80("Not none of three out of the four women paint.",[quants])',[true(compound(_208428)),nondet]):-call(curt80("Not none of three out of the four women paint.",[quants]),_208428).


test('?- curt80("Not all three of the four women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("Not all three of the four women paint.",[quants]),_208426).


test('?- curt80("Not any three of the four women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("Not any three of the four women paint.",[quants]),_208426).


test('?- curt80("Three of the four women paint.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("Three of the four women paint.",[quants]),_208424).


test('?- curt80("Three out of the four women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("Three out of the four women paint.",[quants]),_208426).


test('?- curt80("All three of the four women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("All three of the four women paint.",[quants]),_208426).


test('?- curt80("Any three of the four women paint.",[quants])',[true(compound(_208426)),nondet]):-call(curt80("Any three of the four women paint.",[quants]),_208426).


test('?- curt80("I paint",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("I paint",[pronoun]),_208420).


test('?- curt80("you paint",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("you paint",[pronoun]),_208420).


test('?- curt80("We paint",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("We paint",[pronoun]),_208420).


test('?- curt80("None paint",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("None paint",[pronoun]),_208420).


test('?- curt80("They paint",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("They paint",[pronoun]),_208420).


test('?- curt80("Some paint",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("Some paint",[pronoun]),_208420).


test('?- curt80("It paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("It paints",[pronoun]),_208420).


test('?- curt80("he paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("he paints",[pronoun]),_208420).


test('?- curt80("She paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("She paints",[pronoun]),_208420).


test('?- curt80("Someone paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("Someone paints",[pronoun]),_208420).


test('?- curt80("Anybody paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("Anybody paints",[pronoun]),_208420).


test('?- curt80("Anyone paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("Anyone paints",[pronoun]),_208420).


test('?- curt80("Anything paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Anything paints",[pronoun]),_208422).


test('?- curt80("Everybody paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Everybody paints",[pronoun]),_208422).


test('?- curt80("Everyone paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Everyone paints",[pronoun]),_208422).


test('?- curt80("Everything paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Everything paints",[pronoun]),_208422).


test('?- curt80("Nobody paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("Nobody paints",[pronoun]),_208420).


test('?- curt80("No one paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("No one paints",[pronoun]),_208420).


test('?- curt80("Nothing paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("Nothing paints",[pronoun]),_208420).


test('?- curt80("One paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("One paints",[pronoun]),_208420).


test('?- curt80("Somebody paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Somebody paints",[pronoun]),_208422).


test('?- curt80("Something paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Something paints",[pronoun]),_208422).


test('?- curt80("Not anybody paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Not anybody paints",[pronoun]),_208422).


test('?- curt80("Not anyone paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Not anyone paints",[pronoun]),_208422).


test('?- curt80("Not anything paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Not anything paints",[pronoun]),_208422).


test('?- curt80("Not everybody paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Not everybody paints",[pronoun]),_208422).


test('?- curt80("Not everyone paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Not everyone paints",[pronoun]),_208422).


test('?- curt80("Not everything paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Not everything paints",[pronoun]),_208422).


test('?- curt80("Not nothing paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Not nothing paints",[pronoun]),_208422).


test('?- curt80("Not one paints",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("Not one paints",[pronoun]),_208420).


test('?- curt80("Not somebody paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Not somebody paints",[pronoun]),_208422).


test('?- curt80("Not something paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("Not something paints",[pronoun]),_208422).


test('?- curt80("She likes i",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("She likes i",[pronoun]),_208420).


test('?- curt80("She likes me",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("She likes me",[pronoun]),_208420).


test('?- curt80("She likes you",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("She likes you",[pronoun]),_208420).


test('?- curt80("She likes it",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("She likes it",[pronoun]),_208420).


test('?- curt80("She likes us",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("She likes us",[pronoun]),_208420).


test('?- curt80("She likes them",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("She likes them",[pronoun]),_208420).


test('?- curt80("She likes no one",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("She likes no one",[pronoun]),_208422).


test('?- curt80("She likes none",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("She likes none",[pronoun]),_208420).


test('?- curt80("She likes him",[pronoun])',[true(compound(_208420)),nondet]):-call(curt80("She likes him",[pronoun]),_208420).


test('?- curt80("She likes herself",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("She likes herself",[pronoun]),_208422).


test('?- curt80("She likes himself",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("She likes himself",[pronoun]),_208422).


test('?- curt80("It is us that paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("It is us that paints",[pronoun]),_208422).


test('?- curt80("It is them that paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("It is them that paints",[pronoun]),_208422).


test('?- curt80("It is he that paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("It is he that paints",[pronoun]),_208422).


test('?- curt80("It is she that paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("It is she that paints",[pronoun]),_208422).


test('?- curt80("It is her that paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("It is her that paints",[pronoun]),_208422).


test('?- curt80("It is him that paints",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("It is him that paints",[pronoun]),_208422).


test('?- curt80("We are us that paint",[pronoun])',[true(compound(_208422)),nondet]):-call(curt80("We are us that paint",[pronoun]),_208422).


test('?- curt80("We are all of us that paint",[pronoun])',[true(compound(_208424)),nondet]):-call(curt80("We are all of us that paint",[pronoun]),_208424).


test('?- curt80("It is everybody that paints",[pronoun])',[true(compound(_208424)),nondet]):-call(curt80("It is everybody that paints",[pronoun]),_208424).


test('?- curt80("Every man that paints likes monet.",[bratko])',[true(compound(_208426)),nondet]):-call(curt80("Every man that paints likes monet.",[bratko]),_208426).


test('?- curt80("A woman that admires John paints.",[bratko])',[true(compound(_208426)),nondet]):-call(curt80("A woman that admires John paints.",[bratko]),_208426).


test('?- curt80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_208432)),nondet]):-call(curt80("Every woman that likes a man that admires monet paints.",[bratko]),_208432).


test('?- curt80("John likes Annie.",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("John likes Annie.",[bratko]),_208422).


test('?- curt80("Annie likes a man that admires monet.",[bratko])',[true(compound(_208426)),nondet]):-call(curt80("Annie likes a man that admires monet.",[bratko]),_208426).


test('?- curt80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_208426)),nondet]):-call(curt80("Bertrand Russell wrote principia.",[bratko]),_208426).


test('?- curt80("An author wrote principia.",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("An author wrote principia.",[bratko]),_208424).


test('?- curt80("Iraq is a country.",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("Iraq is a country.",[bratko]),_208422).


test('?- curt80("A happy author wrote principia.",[bratko])',[true(compound(_208426)),nondet]):-call(curt80("A happy author wrote principia.",[bratko]),_208426).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_208422).


test('?- curt80("Bertrand is an author.",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("Bertrand is an author.",[bratko]),_208422).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_208422).


test('?- curt80("Every author is a programmer.",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("Every author is a programmer.",[bratko]),_208424).


test('?- curt80("Is Bertrand an programmer?",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("Is Bertrand an programmer?",[bratko]),_208424).


test('?- curt80("What is a author?",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("What is a author?",[bratko]),_208422).


test('?- curt80("What did Bertrand write?",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("What did Bertrand write?",[bratko]),_208424).


test('?- curt80("What is a book?",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("What is a book?",[bratko]),_208422).


test('?- curt80("Principia is a book.",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("Principia is a book.",[bratko]),_208422).


test('?- curt80("Bertrand is Bertrand.",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("Bertrand is Bertrand.",[bratko]),_208422).


test('?- curt80("Shrdlu halts.",[bratko])',[true(compound(_208420)),nondet]):-call(curt80("Shrdlu halts.",[bratko]),_208420).


test('?- curt80("Every student wrote a program.",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("Every student wrote a program.",[bratko]),_208424).


test('?- curt80("Terry writes a program.",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("Terry writes a program.",[bratko]),_208424).


test('?- curt80("Terry writes a program that halts.",[bratko])',[true(compound(_208426)),nondet]):-call(curt80("Terry writes a program that halts.",[bratko]),_208426).


test('?- curt80("An author of every book wrote a program.",[bratko])',[true(compound(_208428)),nondet]):-call(curt80("An author of every book wrote a program.",[bratko]),_208428).


test('?- curt80("A man hapilly maried paints.",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("A man hapilly maried paints.",[bratko]),_208424).


test('?- curt80("A hapilly maried man paints.",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("A hapilly maried man paints.",[bratko]),_208424).


test('?- curt80("A man who knows paints.",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("A man who knows paints.",[bratko]),_208424).


test('?- curt80("A man gives something.",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("A man gives something.",[bratko]),_208422).


test('?- curt80("A man gives his word.",[bratko])',[true(compound(_208422)),nondet]):-call(curt80("A man gives his word.",[bratko]),_208422).


test('?- curt80("A man of his word paints.",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("A man of his word paints.",[bratko]),_208424).


test('?- curt80("A man paints.",[bratko])',[true(compound(_208420)),nondet]):-call(curt80("A man paints.",[bratko]),_208420).


test('?- curt80("A man that paints paints.",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("A man that paints paints.",[bratko]),_208424).


test('?- curt80("A man walks.",[bratko])',[true(compound(_208420)),nondet]):-call(curt80("A man walks.",[bratko]),_208420).


test('?- curt80("A man that walks paints.",[bratko])',[true(compound(_208424)),nondet]):-call(curt80("A man that walks paints.",[bratko]),_208424).


test('?- curt80("It halts.",[bratko])',[true(compound(_208420)),nondet]):-call(curt80("It halts.",[bratko]),_208420).


test('?- curt80("A man of his word that walks paints.",[bratko])',[true(compound(_208426)),nondet]):-call(curt80("A man of his word that walks paints.",[bratko]),_208426).


test('?- curt80("The cost of what the product is changes.",[bratko])',[true(compound(_208428)),nondet]):-call(curt80("The cost of what the product is changes.",[bratko]),_208428).


test('?- curt80("We need a virtual machine server.",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("We need a virtual machine server.",[aindy]),_208426).


test('?- curt80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_208430)),nondet]):-call(curt80("The virtual machine server should have several VMs.",[aindy]),_208430).


test('?- curt80("One VM should be the POSI VM.",[aindy])',[true(compound(_208424)),nondet]):-call(curt80("One VM should be the POSI VM.",[aindy]),_208424).


test('?- curt80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("One VM should be the FRDCSA.org VM.",[aindy]),_208426).


test('?- curt80("One VM should be the mail server.",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("One VM should be the mail server.",[aindy]),_208426).


test('?- curt80("One computer should be the backup server.",[aindy])',[true(compound(_208428)),nondet]):-call(curt80("One computer should be the backup server.",[aindy]),_208428).


test('?- curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_208444)),nondet]):-call(curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_208444).


test('?- curt80("I need a fast computer for work.",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("I need a fast computer for work.",[aindy]),_208426).


test('?- curt80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_208436)),nondet]):-call(curt80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_208436).


test('?- curt80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_208432)),nondet]):-call(curt80("I need a dedicated computer for network security research.",[aindy]),_208432).


test('?- curt80("I need a machine to run Tails on.",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("I need a machine to run Tails on.",[aindy]),_208426).


test('?- curt80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_208430)),nondet]):-call(curt80("I need a machine off the network for airgap security.",[aindy]),_208430).


test('?- curt80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_208436)),nondet]):-call(curt80("One VM should be the game server for running game development projects.",[aindy]),_208436).


test('?- curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_208430)),nondet]):-call(curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_208430).


test('?- curt80("I could read about how to build a private watson.",[aindy])',[true(compound(_208430)),nondet]):-call(curt80("I could read about how to build a private watson.",[aindy]),_208430).


test('?- curt80("Need backups.",[aindy])',[true(compound(_208420)),nondet]):-call(curt80("Need backups.",[aindy]),_208420).


test('?- curt80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_208434)),nondet]):-call(curt80("Practice setting up backups of a machine to a different machine.",[aindy]),_208434).


test('?- curt80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_208432)),nondet]):-call(curt80("Set up schedules for updating the software on all machines.",[aindy]),_208432).


test('?- curt80("Read books on server room layout.",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("Read books on server room layout.",[aindy]),_208426).


test('?- curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_208434)),nondet]):-call(curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_208434).


test('?- curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_208436)),nondet]):-call(curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_208436).


test('?- curt80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("I want a gaming computer.  Do I?",[aindy]),_208426).


test('?- curt80("I want a windows 7 computer for work.",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("I want a windows 7 computer for work.",[aindy]),_208426).


test('?- curt80("I want a fast linux computer for work.",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("I want a fast linux computer for work.",[aindy]),_208426).


test('?- curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_208446)),nondet]):-call(curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_208446).


test('?- curt80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_208432)),nondet]):-call(curt80("I could install a fresh operating system on justin for work.",[aindy]),_208432).


test('?- curt80("I probably want a separate git computer.",[aindy])',[true(compound(_208428)),nondet]):-call(curt80("I probably want a separate git computer.",[aindy]),_208428).


test('?- curt80("I need to start buying servers.",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("I need to start buying servers.",[aindy]),_208426).


test('?- curt80("I want a rackmount case for servers.",[aindy])',[true(compound(_208426)),nondet]):-call(curt80("I want a rackmount case for servers.",[aindy]),_208426).


test('?- curt80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_208432)),nondet]):-call(curt80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_208432).


test('?- curt80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_208430)),nondet]):-call(curt80("2 oceans border each african country.",[chat80(tell)]),_208430).


test('?- curt80("There are 10 large cars.",[quants])',[true(compound(_208424)),nondet]):-call(curt80("There are 10 large cars.",[quants]),_208424).


test('?- curt80("There are 10 oceans.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("There are 10 oceans.",[quants]),_208422).


test('?- curt80("There are 10 women.",[quants])',[true(compound(_208422)),nondet]):-call(curt80("There are 10 women.",[quants]),_208422).


test('?- curt80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_208430)),nondet]):-call(curt80("An ocean borders an African country.",[chat80(tell)]),_208430).


test('?- curt80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_208438)),nondet]):-call(curt80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_208438).


test('?- curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_208440)),nondet]):-call(curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_208440).


test('?- curt80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_208426)),nondet]):-call(curt80("Bertrand wrote a book.",[bratko(book)]),_208426).


test('?- curt80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_208428)),nondet]):-call(curt80("Bertrand wrote nothing.",[bratko(book)]),_208428).


test('?- curt80("Bertrand wrote.",[bratko(book)])',[true(compound(_208426)),nondet]):-call(curt80("Bertrand wrote.",[bratko(book)]),_208426).


test('?- curt80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_208430)),nondet]):-call(curt80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_208430).


test('?- curt80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_208428)),nondet]):-call(curt80("Bertrand wrote about Gottlob.",[bratko(book)]),_208428).


test('?- curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_208430)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_208430).


test('?- curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_208432)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_208432).


test('?- curt80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_208430)),nondet]):-call(curt80("What did alfred write to Bertrand?",[bratko(book)]),_208430).


test('?- curt80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_208426)),nondet]):-call(curt80("Alfred wrote a letter.",[bratko(book)]),_208426).


test('?- curt80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_208430)),nondet]):-call(curt80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_208430).


test('?- curt80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_208430)),nondet]):-call(curt80("Alfred wrote something to Bertrand.",[bratko(book)]),_208430).


test('?- curt80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_208428)),nondet]):-call(curt80("Alfred wrote to Bertrand.",[bratko(book)]),_208428).


test('?- curt80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_208430)),nondet]):-call(curt80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_208430).


test('?- curt80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_208430)),nondet]):-call(curt80("Alfred wrote Bertrand a letter.",[bratko(book)]),_208430).


test('?- curt80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_208430)),nondet]):-call(curt80("Who did alfred write a letter to?",[bratko(book)]),_208430).


test('?- curt80("Alfred gave it.",[bratko(book)])',[true(compound(_208426)),nondet]):-call(curt80("Alfred gave it.",[bratko(book)]),_208426).


test('?- curt80("Alfred gave a book.",[bratko(book)])',[true(compound(_208426)),nondet]):-call(curt80("Alfred gave a book.",[bratko(book)]),_208426).


test('?- curt80("a pride of lions paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a pride of lions paint",[of]),_208422).


test('?- curt80("a flock of birds paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a flock of birds paint",[of]),_208422).


test('?- curt80("a litter of pups paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a litter of pups paint",[of]),_208422).


test('?- curt80("a prickle of porcupines paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a prickle of porcupines paint",[of]),_208424).


test('?- curt80("a litter of cubs paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a litter of cubs paint",[of]),_208422).


test('?- curt80("a pack of dogs paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a pack of dogs paint",[of]),_208422).


test('?- curt80("a colony of beavers paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a colony of beavers paint",[of]),_208424).


test('?- curt80("a gaggle of geese paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a gaggle of geese paint",[of]),_208424).


test('?- curt80("a family of otters paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a family of otters paint",[of]),_208424).


test('?- curt80("a huddle of walruses paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a huddle of walruses paint",[of]),_208424).


test('?- curt80("a herd of deer paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a herd of deer paint",[of]),_208422).


test('?- curt80("a culture of bacteria paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a culture of bacteria paint",[of]),_208424).


test('?- curt80("a swarm of bees paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a swarm of bees paint",[of]),_208422).


test('?- curt80("a bed of clams paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a bed of clams paint",[of]),_208422).


test('?- curt80("a school of cod paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a school of cod paint",[of]),_208422).


test('?- curt80("a herd of dinosaurs paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a herd of dinosaurs paint",[of]),_208424).


test('?- curt80("a mess of iguanas paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a mess of iguanas paint",[of]),_208424).


test('?- curt80("a mob of wombats paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a mob of wombats paint",[of]),_208422).


test('?- curt80("a pod of pelicans paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a pod of pelicans paint",[of]),_208424).


test('?- curt80("a troop of boy scouts paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a troop of boy scouts paint",[of]),_208424).


test('?- curt80("a team of athletes paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a team of athletes paint",[of]),_208424).


test('?- curt80("a panel of experts paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a panel of experts paint",[of]),_208424).


test('?- curt80("a crew of sailors paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a crew of sailors paint",[of]),_208424).


test('?- curt80("a band of robbers paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a band of robbers paint",[of]),_208424).


test('?- curt80("a troupe of performers paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a troupe of performers paint",[of]),_208424).


test('?- curt80("a crowd of onlookers paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a crowd of onlookers paint",[of]),_208424).


test('?- curt80("a curse of painters paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("a curse of painters paint",[of]),_208424).


test('?- curt80("a fleet of cars paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a fleet of cars paint",[of]),_208422).


test('?- curt80("a pair of shoes paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a pair of shoes paint",[of]),_208422).


test('?- curt80("a fleet of ships paint",[of])',[true(compound(_208422)),nondet]):-call(curt80("a fleet of ships paint",[of]),_208422).


test('?- curt80("an anthology of stories paint",[of])',[true(compound(_208424)),nondet]):-call(curt80("an anthology of stories paint",[of]),_208424).


test('?- curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_291780)),nondet]):-call(curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_291780).


test('?- curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_291750)),nondet]):-call(curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_291750).


test('?- curt80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_291888)),nondet]):-call(curt80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_291888).


test('?- curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_291732)),nondet]):-call(curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_291732).


test('?- curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_291780)),nondet]):-call(curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_291780).


test('?- curt80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_291876)),nondet]):-call(curt80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_291876).


test('?- curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_291834)),nondet]):-call(curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_291834).


test('?- curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_292026)),nondet]):-call(curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_292026).


test('?- curt80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_291798)),nondet]):-call(curt80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_291798).


test('?- curt80("Logged on player character",[descriptionTest])',[true(compound(_291606)),nondet]):-call(curt80("Logged on player character",[descriptionTest]),_291606).


test('?- curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_291864)),nondet]):-call(curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_291864).


test('?- curt80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_291810)),nondet]):-call(curt80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_291810).


test('?- curt80("Wesley is her son",[descriptionTest])',[true(compound(_291552)),nondet]):-call(curt80("Wesley is her son",[descriptionTest]),_291552).


test('?- curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_292200)),nondet]):-call(curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_292200).


test('?- curt80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_291630)),nondet]):-call(curt80("Counselor Deanna Troi is here",[descriptionTest]),_291630).


test('?- curt80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_291726)),nondet]):-call(curt80("Counselor Troi is the ship's main counselor",[descriptionTest]),_291726).


test('?- curt80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_291882)),nondet]):-call(curt80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_291882).


test('?- curt80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_291756)),nondet]):-call(curt80("Commander William Riker is here, staring at you",[descriptionTest]),_291756).


test('?- curt80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_291762)),nondet]):-call(curt80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_291762).


test('?- curt80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_291732)),nondet]):-call(curt80("He's in charge of keeping the crew in line",[descriptionTest]),_291732).


test('?- curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_291798)),nondet]):-call(curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_291798).


test('?- curt80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_291696)),nondet]):-call(curt80("Captain Picard is a very important man",[descriptionTest]),_291696).


test('?- curt80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_291798)),nondet]):-call(curt80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_291798).


test('?- curt80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_291642)),nondet]):-call(curt80("He's very smart, and very wise",[descriptionTest]),_291642).


test('?- curt80("Don\'t mess with him!",[descriptionTest])',[true(compound(_291570)),nondet]):-call(curt80("Don't mess with him!",[descriptionTest]),_291570).


test('?- curt80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_291648)),nondet]):-call(curt80("Guinan is here, tending the bar",[descriptionTest]),_291648).


test('?- curt80("Guinan is a strange being",[descriptionTest])',[true(compound(_291606)),nondet]):-call(curt80("Guinan is a strange being",[descriptionTest]),_291606).


test('?- curt80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_292314)),nondet]):-call(curt80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_292314).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_291816)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_291816).


test('?- curt80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_291816)),nondet]):-call(curt80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_291816).


test('?- curt80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_292116)),nondet]):-call(curt80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_292116).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_291810)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_291810).


test('?- curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_291834)),nondet]):-call(curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_291834).


test('?- curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_292104)),nondet]):-call(curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_292104).


test('?- curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_292026)),nondet]):-call(curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_292026).


test('?- curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_291816)),nondet]):-call(curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_291816).


test('?- curt80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_291696)),nondet]):-call(curt80("Livingston is Captain Picard's pet fish",[descriptionTest]),_291696).


test('?- curt80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_291948)),nondet]):-call(curt80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_291948).


test('?- curt80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_291798)),nondet]):-call(curt80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_291798).


test('?- curt80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_291666)),nondet]):-call(curt80("Spot is Data's orange coloured cat",[descriptionTest]),_291666).


test('?- curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_292188)),nondet]):-call(curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_292188).


test('?- curt80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_291810)),nondet]):-call(curt80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_291810).


test('?- curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_291792)),nondet]):-call(curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_291792).


test('?- curt80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_292134)),nondet]):-call(curt80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_292134).


test('?- curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_291780)),nondet]):-call(curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_291780).


test('?- curt80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_291648)),nondet]):-call(curt80("Alexander Rozhenko is Worf's son",[descriptionTest]),_291648).


test('?- curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_291930)),nondet]):-call(curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_291930).


test('?- curt80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_291846)),nondet]):-call(curt80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_291846).


test('?- curt80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_291792)),nondet]):-call(curt80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_291792).


test('?- curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_292194)),nondet]):-call(curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_292194).


test('?- curt80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_291672)),nondet]):-call(curt80("A large phaser rifle is lying here",[descriptionTest]),_291672).


test('?- curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_292266)),nondet]):-call(curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_292266).


test('?- curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_291870)),nondet]):-call(curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_291870).


test('?- curt80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292218)),nondet]):-call(curt80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292218).


test('?- curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_291870)),nondet]):-call(curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_291870).


test('?- curt80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292242)),nondet]):-call(curt80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292242).


test('?- curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_291846)),nondet]):-call(curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_291846).


test('?- curt80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292218)),nondet]):-call(curt80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292218).


test('?- curt80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_291768)),nondet]):-call(curt80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_291768).


test('?- curt80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_292308)),nondet]):-call(curt80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_292308).


test('?- curt80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_291738)),nondet]):-call(curt80("A Starfleet communication badge is lying here",[descriptionTest]),_291738).


test('?- curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_292776)),nondet]):-call(curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_292776).


test('?- curt80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_291732)),nondet]):-call(curt80("Worf's silver chain sash has been left here",[descriptionTest]),_291732).


test('?- curt80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_292344)),nondet]):-call(curt80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_292344).


test('?- curt80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_291624)),nondet]):-call(curt80("Geordi's VISOR is lying here",[descriptionTest]),_291624).


test('?- curt80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_293016)),nondet]):-call(curt80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_293016).


test('?- curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_291792)),nondet]):-call(curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_291792).


test('?- curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_292578)),nondet]):-call(curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_292578).


test('?- curt80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_291726)),nondet]):-call(curt80("A shard of dilithium crystal is lying here",[descriptionTest]),_291726).


test('?- curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_292380)),nondet]):-call(curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_292380).


test('?- curt80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_291738)),nondet]):-call(curt80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_291738).


test('?- curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_292350)),nondet]):-call(curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_292350).


test('?- curt80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_291750)),nondet]):-call(curt80("Commander Riker's trombone has been placed here",[descriptionTest]),_291750).


test('?- curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_292182)),nondet]):-call(curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_292182).


test('?- curt80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_291678)),nondet]):-call(curt80("A small cup of tea is sitting here",[descriptionTest]),_291678).


test('?- curt80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_291696)),nondet]):-call(curt80("A bottle of synthehol is standing here",[descriptionTest]),_291696).


test('?- curt80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_291708)),nondet]):-call(curt80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_291708).


test('?- curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_291732)),nondet]):-call(curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_291732).


test('?- curt80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_291744)),nondet]):-call(curt80("A small glass of prune juice is sitting here",[descriptionTest]),_291744).


test('?- curt80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_291714)),nondet]):-call(curt80("A bottle of Vulcan beer is standing here",[descriptionTest]),_291714).


test('?- curt80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_291786)),nondet]):-call(curt80("You find yourself in the middle of main engineering",[descriptionTest]),_291786).


test('?- curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_291906)),nondet]):-call(curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_291906).


test('?- curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_292206)),nondet]):-call(curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_292206).


test('?- curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_292014)),nondet]):-call(curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_292014).


test('?- curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_291942)),nondet]):-call(curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_291942).


test('?- curt80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_292122)),nondet]):-call(curt80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_292122).


test('?- curt80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_291714)),nondet]):-call(curt80("You're in the middle of Geordi's quarters",[descriptionTest]),_291714).


test('?- curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_291912)),nondet]):-call(curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_291912).


test('?- curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_292236)),nondet]):-call(curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_292236).


test('?- curt80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_291846)),nondet]):-call(curt80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_291846).


test('?- curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_291816)),nondet]):-call(curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_291816).


test('?- curt80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_291702)),nondet]):-call(curt80("You're in the middle of Data's quarters",[descriptionTest]),_291702).


test('?- curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_292764)),nondet]):-call(curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_292764).


test('?- curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_291978)),nondet]):-call(curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_291978).


test('?- curt80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_292002)),nondet]):-call(curt80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_292002).


test('?- curt80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_291630)),nondet]):-call(curt80("You're in the dimly lit Brig",[descriptionTest]),_291630).


test('?- curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_292020)),nondet]):-call(curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_292020).


test('?- curt80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_292098)),nondet]):-call(curt80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_292098).


test('?- curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_292392)),nondet]):-call(curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_292392).


test('?- curt80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_298620)),nondet]):-call(curt80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_298620).


test('?- curt80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_292104)),nondet]):-call(curt80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_292104).


test('?- curt80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_291708)),nondet]):-call(curt80("You're in the Enterprise transporter room",[descriptionTest]),_291708).


test('?- curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_292194)),nondet]):-call(curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_292194).


test('?- curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_292164)),nondet]):-call(curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_292164).


test('?- curt80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_291702)),nondet]):-call(curt80("You find yourself in a transporter beam",[descriptionTest]),_291702).


test('?- curt80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_291702)),nondet]):-call(curt80("All you can see is blue flashing light",[descriptionTest]),_291702).


test('?- curt80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_291858)),nondet]):-call(curt80("It feels as though your body is racing around at high speeds",[descriptionTest]),_291858).


test('?- curt80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_291978)),nondet]):-call(curt80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_291978).


test('?- curt80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_291906)),nondet]):-call(curt80("You step through the doors and find yourself in a large school room",[descriptionTest]),_291906).


test('?- curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_292284)),nondet]):-call(curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_292284).


test('?- curt80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_292038)),nondet]):-call(curt80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_292038).


test('?- curt80("You\'re in the turbolift",[descriptionTest])',[true(compound(_291588)),nondet]):-call(curt80("You're in the turbolift",[descriptionTest]),_291588).


test('?- curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_291966)),nondet]):-call(curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_291966).


test('?- curt80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_291858)),nondet]):-call(curt80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_291858).


test('?- curt80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_291846)),nondet]):-call(curt80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_291846).


test('?- curt80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_291600)),nondet]):-call(curt80("You're now on Holodeck 2",[descriptionTest]),_291600).


test('?- curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_292284)),nondet]):-call(curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_292284).


test('?- curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_292032)),nondet]):-call(curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_292032).


test('?- curt80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_291726)),nondet]):-call(curt80("Right now, this holodeck is not functioning",[descriptionTest]),_291726).


test('?- curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_291834)),nondet]):-call(curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_291834).


test('?- curt80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_291756)),nondet]):-call(curt80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_291756).


test('?- curt80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_291966)),nondet]):-call(curt80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_291966).


test('?- curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_292284)),nondet]):-call(curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_292284).


test('?- curt80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_291660)),nondet]):-call(curt80("You've arrived in Riker's quarters",[descriptionTest]),_291660).


test('?- curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_292236)),nondet]):-call(curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_292236).


test('?- curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_292170)),nondet]):-call(curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_292170).


test('?- curt80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_291774)),nondet]):-call(curt80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_291774).


test('?- curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_292410)),nondet]):-call(curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_292410).


test('?- curt80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_292206)),nondet]):-call(curt80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_292206).


test('?- curt80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_291678)),nondet]):-call(curt80("You emerge into a dark narrow alley",[descriptionTest]),_291678).


test('?- curt80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_291822)),nondet]):-call(curt80("Tall dark brick buildings block your way north and south",[descriptionTest]),_291822).


test('?- curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_292086)),nondet]):-call(curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_292086).


test('?- curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_292122)),nondet]):-call(curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_292122).


test('?- curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_291858)),nondet]):-call(curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_291858).


test('?- curt80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_291762)),nondet]):-call(curt80("The archway leading out of the holodeck is west",[descriptionTest]),_291762).


test('?- curt80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_291666)),nondet]):-call(curt80("You're in Doctor Crusher's quarters",[descriptionTest]),_291666).


test('?- curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_292062)),nondet]):-call(curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_292062).


test('?- curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_292152)),nondet]):-call(curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_292152).


test('?- curt80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_291894)),nondet]):-call(curt80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_291894).


test('?- curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_292518)),nondet]):-call(curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_292518).


test('?- curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_291990)),nondet]):-call(curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_291990).


test('?- curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_292386)),nondet]):-call(curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_292386).


test('?- curt80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_291858)),nondet]):-call(curt80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_291858).


test('?- curt80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_291786)),nondet]):-call(curt80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_291786).


test('?- curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_292680)),nondet]):-call(curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_292680).


test('?- curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_291858)),nondet]):-call(curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_291858).


test('?- curt80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_291768)),nondet]):-call(curt80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_291768).


test('?- curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_291960)),nondet]):-call(curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_291960).


test('?- curt80("A large grey door leads into space",[descriptionTest])',[true(compound(_291672)),nondet]):-call(curt80("A large grey door leads into space",[descriptionTest]),_291672).


test('?- curt80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_291858)),nondet]):-call(curt80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_291858).


test('?- curt80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_291930)),nondet]):-call(curt80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_291930).


test('?- curt80("You feel very cold",[descriptionTest])',[true(compound(_291558)),nondet]):-call(curt80("You feel very cold",[descriptionTest]),_291558).


test('?- curt80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_291828)),nondet]):-call(curt80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_291828).


test('?- curt80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_291714)),nondet]):-call(curt80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_291714).


test('?- curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_292326)),nondet]):-call(curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_292326).


test('?- curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_292050)),nondet]):-call(curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_292050).


test('?- curt80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_291600)),nondet]):-call(curt80("You're in Worf's quarters",[descriptionTest]),_291600).


test('?- curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_292044)),nondet]):-call(curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_292044).


test('?- curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_292458)),nondet]):-call(curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_292458).


test('?- curt80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_291666)),nondet]):-call(curt80("You emerge into the Enterprise gym",[descriptionTest]),_291666).


test('?- curt80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_291768)),nondet]):-call(curt80("The room is quite large, with a soft grey floor",[descriptionTest]),_291768).


test('?- curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_292176)),nondet]):-call(curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_292176).


test('?- curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_292140)),nondet]):-call(curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_292140).


test('?- curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_291828)),nondet]):-call(curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_291828).


test('?- curt80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_291894)),nondet]):-call(curt80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_291894).


test('?- curt80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_291984)),nondet]):-call(curt80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_291984).


test('?- curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_292278)),nondet]):-call(curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_292278).


test('?- curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_292296)),nondet]):-call(curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_292296).


test('?- curt80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_291750)),nondet]):-call(curt80("Two large windows offer a great view of space",[descriptionTest]),_291750).


test('?- curt80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_292002)),nondet]):-call(curt80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_292002).


test('?- curt80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_291678)),nondet]):-call(curt80("You're in the Enterprise science lab",[descriptionTest]),_291678).


test('?- curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_292068)),nondet]):-call(curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_292068).


test('?- curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_292566)),nondet]):-call(curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_292566).


test('?- curt80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_291822)),nondet]):-call(curt80("A complex looking computer console is facing this machine",[descriptionTest]),_291822).


test('?- curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_291978)),nondet]):-call(curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_291978).


test('?- curt80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_291738)),nondet]):-call(curt80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_291738).


test('?- curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_291972)),nondet]):-call(curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_291972).


test('?- curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_292344)),nondet]):-call(curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_292344).


test('?- curt80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_292146)),nondet]):-call(curt80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_292146).


test('?- curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_292542)),nondet]):-call(curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_292542).


test('?- curt80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_291744)),nondet]):-call(curt80("You're standing in Captain Picard's ready room",[descriptionTest]),_291744).


test('?- curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_292182)),nondet]):-call(curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_292182).


test('?- curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_292086)),nondet]):-call(curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_292086).


test('?- curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_292284)),nondet]):-call(curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_292284).


test('?- curt80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_291864)),nondet]):-call(curt80("This is where the Captain makes all of his important decisions",[descriptionTest]),_291864).


test('?- curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_291972)),nondet]):-call(curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_291972).


test('?- curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_292284)),nondet]):-call(curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_292284).


test('?- curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_292092)),nondet]):-call(curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_292092).


test('?- curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_291888)),nondet]):-call(curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_291888).


test('?- curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_292236)),nondet]):-call(curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_292236).


test('?- curt80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_291834)),nondet]):-call(curt80("This is where the ship's pilot and information officer sit",[descriptionTest]),_291834).


test('?- curt80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_291756)),nondet]):-call(curt80("You're in the conference room of the Enterprise",[descriptionTest]),_291756).


test('?- curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_292302)),nondet]):-call(curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_292302).


test('?- curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_291924)),nondet]):-call(curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_291924).


test('?- curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_292020)),nondet]):-call(curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_292020).


test('?- curt80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_291852)),nondet]):-call(curt80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_291852).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_208432)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_208432).


test('?- curt80("no two owners eat pizza",[sanity])',[true(compound(_208424)),nondet]):-call(curt80("no two owners eat pizza",[sanity]),_208424).


test('?- curt80("no three owners eat pizza",[sanity])',[true(compound(_208424)),nondet]):-call(curt80("no three owners eat pizza",[sanity]),_208424).


test('?- curt80("no three owners eat the same pizza",[sanity])',[true(compound(_208426)),nondet]):-call(curt80("no three owners eat the same pizza",[sanity]),_208426).


test('?- curt80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_208428)),nondet]):-call(curt80("no three owners eat the same kind of pizza",[sanity]),_208428).


test('?- curt80("no owners eat the same pizza",[sanity])',[true(compound(_208424)),nondet]):-call(curt80("no owners eat the same pizza",[sanity]),_208424).


test('?- curt80("no owners eat the same kind of pizza",[sanity])',[true(compound(_208426)),nondet]):-call(curt80("no owners eat the same kind of pizza",[sanity]),_208426).


test('?- curt80("there are 5 houses",[sanity])',[true(compound(_208422)),nondet]):-call(curt80("there are 5 houses",[sanity]),_208422).


test('?- curt80("there are not 5 houses",[sanity])',[true(compound(_208422)),nondet]):-call(curt80("there are not 5 houses",[sanity]),_208422).


test('?- curt80("there are not zero houses",[sanity])',[true(compound(_208424)),nondet]):-call(curt80("there are not zero houses",[sanity]),_208424).


test('?- curt80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_208432)),nondet]):-call(curt80(noun_phrase("less than 2 owners"),[sanity,bug]),_208432).


test('?- curt80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_208426)),nondet]):-call(curt80(noun_phrase("at most the 5 owners"),[sanity]),_208426).


test('?- curt80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_208426)),nondet]):-call(curt80(noun_phrase("at most 5 owners"),[sanity]),_208426).


test('?- curt80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_208426)),nondet]):-call(curt80(noun_phrase("less than 3 owners"),[sanity]),_208426).


test('?- curt80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_208428)),nondet]):-call(curt80(noun_phrase("at most 50 percent of owners"),[sanity]),_208428).


test('?- curt80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_208432)),nondet]):-call(curt80(noun_phrase("no three owners"),[sanity,no_working]),_208432).


test('?- curt80("terry writes a non-program.",[tell])',[true(compound(_208424)),nondet]):-call(curt80("terry writes a non-program.",[tell]),_208424).


test('?- curt80("every nonhuman programmer writes a program.",[tell])',[true(compound(_208428)),nondet]):-call(curt80("every nonhuman programmer writes a program.",[tell]),_208428).


test('?- curt80("every human programmer writes a not a program.",[tell])',[true(compound(_208428)),nondet]):-call(curt80("every human programmer writes a not a program.",[tell]),_208428).


test('?- curt80("every human programmer happily writes a not a program.",[tell])',[true(compound(_208430)),nondet]):-call(curt80("every human programmer happily writes a not a program.",[tell]),_208430).


:- end_tests(curt80).



:- begin_tests(e2c).



test('?- e2c("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_208474)),nondet]):-call(e2c("His friends are liked by hers.",[bad_juju,sanity]),_208474).


test('?- e2c("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_208476)),nondet]):-call(e2c("Her friends are not liked by his.",[bad_juju,sanity]),_208476).


test('?- e2c("Do their friends like each other?",[bad_juju,feature])',[true(compound(_208476)),nondet]):-call(e2c("Do their friends like each other?",[bad_juju,feature]),_208476).


test('?- e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_208418),sanity])',[true(compound(_208480)),nondet]):-call(e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_208418),sanity]),_208480).


test('?- e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_208416),sanity])',[true(compound(_208478)),nondet]):-call(e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_208416),sanity]),_208478).


test('?- e2c("There are 5 houses with five different colors.",[riddle(_208420),sanity])',[true(compound(_208482)),nondet]):-call(e2c("There are 5 houses with five different colors.",[riddle(_208420),sanity]),_208482).


test('?- e2c("There are 5 houses",[riddle_prep,sanity])',[true(compound(_208472)),nondet]):-call(e2c("There are 5 houses",[riddle_prep,sanity]),_208472).


test('?- e2c("Each house has a different color",[riddle_prep,sanity])',[true(compound(_208476)),nondet]):-call(e2c("Each house has a different color",[riddle_prep,sanity]),_208476).


test('?- e2c("In each house lives a person with a different nationality.",[riddle(_208424),sanity])',[true(compound(_208486)),nondet]):-call(e2c("In each house lives a person with a different nationality.",[riddle(_208424),sanity]),_208486).


test('?- e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_208498)),nondet]):-call(e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_208498).


test('?- e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_208486)),nondet]):-call(e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_208486).


test('?- e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_208484)),nondet]):-call(e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_208484).


test('?- e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_208488)),nondet]):-call(e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_208488).


test('?- e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_208492)),nondet]):-call(e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_208492).


test('?- e2c("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_208484)),nondet]):-call(e2c("No owners have the same pet.",[riddle(1),sanity,regression]),_208484).


test('?- e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_208488)),nondet]):-call(e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_208488).


test('?- e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_208482)),nondet]):-call(e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_208482).


test('?- e2c("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_208486)),nondet]):-call(e2c("No two owners have the same pet.",[riddle(1),sanity,regression]),_208486).


test('?- e2c("The brit lives in the red house.",[riddle(_208418),sanity])',[true(compound(_208480)),nondet]):-call(e2c("The brit lives in the red house.",[riddle(_208418),sanity]),_208480).


test('?- e2c("The swede keeps dogs as pets.",[riddle(_208416),sanity])',[true(compound(_208478)),nondet]):-call(e2c("The swede keeps dogs as pets.",[riddle(_208416),sanity]),_208478).


test('?- e2c("A dane drinks tea.",[riddle(_208414),sanity])',[true(compound(_208476)),nondet]):-call(e2c("A dane drinks tea.",[riddle(_208414),sanity]),_208476).


test('?- e2c("The green house is on the left of the white house.",[riddle(_208422),sanity])',[true(compound(_208484)),nondet]):-call(e2c("The green house is on the left of the white house.",[riddle(_208422),sanity]),_208484).


test('?- e2c("The green house\'s owner drinks coffee.",[riddle(_208418),sanity])',[true(compound(_208480)),nondet]):-call(e2c("The green house's owner drinks coffee.",[riddle(_208418),sanity]),_208480).


test('?- e2c("The person who smokes Pall Mall rears birds.",[riddle(_208420),sanity,regression])',[true(compound(_208488)),nondet]):-call(e2c("The person who smokes Pall Mall rears birds.",[riddle(_208420),sanity,regression]),_208488).


test('?- e2c("The owner of the yellow house smokes Dunhill.",[riddle(_208420),sanity])',[true(compound(_208482)),nondet]):-call(e2c("The owner of the yellow house smokes Dunhill.",[riddle(_208420),sanity]),_208482).


test('?- e2c("The man living in the center house drinks milk.",[riddle(_208422),sanity])',[true(compound(_208484)),nondet]):-call(e2c("The man living in the center house drinks milk.",[riddle(_208422),sanity]),_208484).


test('?- e2c("The Norwegian lives in the first house .",[riddle(_208420),sanity])',[true(compound(_208482)),nondet]):-call(e2c("The Norwegian lives in the first house .",[riddle(_208420),sanity]),_208482).


test('?- e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_208426),sanity])',[true(compound(_208488)),nondet]):-call(e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_208426),sanity]),_208488).


test('?- e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_208426),sanity])',[true(compound(_208488)),nondet]):-call(e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_208426),sanity]),_208488).


test('?- e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_208420),sanity])',[true(compound(_208482)),nondet]):-call(e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_208420),sanity]),_208482).


test('?- e2c("The German smokes Prince.",[riddle(_208416),sanity])',[true(compound(_208478)),nondet]):-call(e2c("The German smokes Prince.",[riddle(_208416),sanity]),_208478).


test('?- e2c("The Norwegian lives next to the blue house.",[riddle(_208420),sanity])',[true(compound(_208482)),nondet]):-call(e2c("The Norwegian lives next to the blue house.",[riddle(_208420),sanity]),_208482).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_208424),sanity])',[true(compound(_208486)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_208424),sanity]),_208486).


test('?- e2c("Who owns the fish?",[riddle(_208414),sanity])',[true(compound(_208476)),nondet]):-call(e2c("Who owns the fish?",[riddle(_208414),sanity]),_208476).


test('?- e2c("One woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("One woman paints.",[quants]),_208466).


test('?- e2c("No woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("No woman paints.",[quants]),_208466).


test('?- e2c("Some woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Some woman paints.",[quants]),_208466).


test('?- e2c("Every woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Every woman paints.",[quants]),_208466).


test('?- e2c("Each woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Each woman paints.",[quants]),_208466).


test('?- e2c("Any woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Any woman paints.",[quants]),_208466).


test('?- e2c("The woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("The woman paints.",[quants]),_208466).


test('?- e2c("The not woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("The not woman paints.",[quants]),_208466).


test('?- e2c("Not a woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Not a woman paints.",[quants]),_208466).


test('?- e2c("Not one woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Not one woman paints.",[quants]),_208466).


test('?- e2c("Not no woman paints.",[quants_neg_postcond])',[true(compound(_208466)),nondet]):-call(e2c("Not no woman paints.",[quants_neg_postcond]),_208466).


test('?- e2c("Not some woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Not some woman paints.",[quants]),_208466).


test('?- e2c("Not every woman paints.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("Not every woman paints.",[quants]),_208468).


test('?- e2c("Not each woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Not each woman paints.",[quants]),_208466).


test('?- e2c("Not any woman paints.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Not any woman paints.",[quants]),_208466).


test('?- e2c("The women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("The women paint.",[quants]),_208466).


test('?- e2c("Women paint.",[quants])',[true(compound(_208464)),nondet]):-call(e2c("Women paint.",[quants]),_208464).


test('?- e2c("Some women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Some women paint.",[quants]),_208466).


test('?- e2c("No women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("No women paint.",[quants]),_208466).


test('?- e2c("All women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("All women paint.",[quants]),_208466).


test('?- e2c("Any women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Any women paint.",[quants]),_208466).


test('?- e2c("Not women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Not women paint.",[quants]),_208466).


test('?- e2c("Not no women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Not no women paint.",[quants]),_208466).


test('?- e2c("Not all women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Not all women paint.",[quants]),_208466).


test('?- e2c("Not any women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Not any women paint.",[quants]),_208466).


test('?- e2c("The three women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("The three women paint.",[quants]),_208466).


test('?- e2c("Three women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Three women paint.",[quants]),_208466).


test('?- e2c("Some three women paint.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("Some three women paint.",[quants]),_208468).


test('?- e2c("No three women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("No three women paint.",[quants]),_208466).


test('?- e2c("Every three women paint.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("Every three women paint.",[quants]),_208468).


test('?- e2c("All three women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("All three women paint.",[quants]),_208466).


test('?- e2c("Any three women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Any three women paint.",[quants]),_208466).


test('?- e2c("Not three women paint.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("Not three women paint.",[quants]),_208466).


test('?- e2c("Not some three women paint.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("Not some three women paint.",[quants]),_208468).


test('?- e2c("Not no three women paint.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("Not no three women paint.",[quants]),_208468).


test('?- e2c("Not all three women paint.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("Not all three women paint.",[quants]),_208468).


test('?- e2c("Not every three women paint.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("Not every three women paint.",[quants]),_208468).


test('?- e2c("Not any three women paint.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("Not any three women paint.",[quants]),_208468).


test('?- e2c("Not three of the women paint.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("Not three of the women paint.",[quants]),_208468).


test('?- e2c("Not some of the three women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("Not some of the three women paint.",[quants]),_208470).


test('?- e2c("Not no three of the women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("Not no three of the women paint.",[quants]),_208470).


test('?- e2c("Not all three of the women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("Not all three of the women paint.",[quants]),_208470).


test('?- e2c("Not every three of the women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("Not every three of the women paint.",[quants]),_208470).


test('?- e2c("Not any three of the women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("Not any three of the women paint.",[quants]),_208470).


test('?- e2c("Not three of the four women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("Not three of the four women paint.",[quants]),_208470).


test('?- e2c("Not none of three out of the four women paint.",[quants])',[true(compound(_208472)),nondet]):-call(e2c("Not none of three out of the four women paint.",[quants]),_208472).


test('?- e2c("Not all three of the four women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("Not all three of the four women paint.",[quants]),_208470).


test('?- e2c("Not any three of the four women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("Not any three of the four women paint.",[quants]),_208470).


test('?- e2c("Three of the four women paint.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("Three of the four women paint.",[quants]),_208468).


test('?- e2c("Three out of the four women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("Three out of the four women paint.",[quants]),_208470).


test('?- e2c("All three of the four women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("All three of the four women paint.",[quants]),_208470).


test('?- e2c("Any three of the four women paint.",[quants])',[true(compound(_208470)),nondet]):-call(e2c("Any three of the four women paint.",[quants]),_208470).


test('?- e2c("I paint",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("I paint",[pronoun]),_208464).


test('?- e2c("you paint",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("you paint",[pronoun]),_208464).


test('?- e2c("We paint",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("We paint",[pronoun]),_208464).


test('?- e2c("None paint",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("None paint",[pronoun]),_208464).


test('?- e2c("They paint",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("They paint",[pronoun]),_208464).


test('?- e2c("Some paint",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("Some paint",[pronoun]),_208464).


test('?- e2c("It paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("It paints",[pronoun]),_208464).


test('?- e2c("he paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("he paints",[pronoun]),_208464).


test('?- e2c("She paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("She paints",[pronoun]),_208464).


test('?- e2c("Someone paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("Someone paints",[pronoun]),_208464).


test('?- e2c("Anybody paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("Anybody paints",[pronoun]),_208464).


test('?- e2c("Anyone paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("Anyone paints",[pronoun]),_208464).


test('?- e2c("Anything paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Anything paints",[pronoun]),_208466).


test('?- e2c("Everybody paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Everybody paints",[pronoun]),_208466).


test('?- e2c("Everyone paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Everyone paints",[pronoun]),_208466).


test('?- e2c("Everything paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Everything paints",[pronoun]),_208466).


test('?- e2c("Nobody paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("Nobody paints",[pronoun]),_208464).


test('?- e2c("No one paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("No one paints",[pronoun]),_208464).


test('?- e2c("Nothing paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("Nothing paints",[pronoun]),_208464).


test('?- e2c("One paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("One paints",[pronoun]),_208464).


test('?- e2c("Somebody paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Somebody paints",[pronoun]),_208466).


test('?- e2c("Something paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Something paints",[pronoun]),_208466).


test('?- e2c("Not anybody paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Not anybody paints",[pronoun]),_208466).


test('?- e2c("Not anyone paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Not anyone paints",[pronoun]),_208466).


test('?- e2c("Not anything paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Not anything paints",[pronoun]),_208466).


test('?- e2c("Not everybody paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Not everybody paints",[pronoun]),_208466).


test('?- e2c("Not everyone paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Not everyone paints",[pronoun]),_208466).


test('?- e2c("Not everything paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Not everything paints",[pronoun]),_208466).


test('?- e2c("Not nothing paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Not nothing paints",[pronoun]),_208466).


test('?- e2c("Not one paints",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("Not one paints",[pronoun]),_208464).


test('?- e2c("Not somebody paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Not somebody paints",[pronoun]),_208466).


test('?- e2c("Not something paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("Not something paints",[pronoun]),_208466).


test('?- e2c("She likes i",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("She likes i",[pronoun]),_208464).


test('?- e2c("She likes me",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("She likes me",[pronoun]),_208464).


test('?- e2c("She likes you",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("She likes you",[pronoun]),_208464).


test('?- e2c("She likes it",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("She likes it",[pronoun]),_208464).


test('?- e2c("She likes us",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("She likes us",[pronoun]),_208464).


test('?- e2c("She likes them",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("She likes them",[pronoun]),_208464).


test('?- e2c("She likes no one",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("She likes no one",[pronoun]),_208466).


test('?- e2c("She likes none",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("She likes none",[pronoun]),_208464).


test('?- e2c("She likes him",[pronoun])',[true(compound(_208464)),nondet]):-call(e2c("She likes him",[pronoun]),_208464).


test('?- e2c("She likes herself",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("She likes herself",[pronoun]),_208466).


test('?- e2c("She likes himself",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("She likes himself",[pronoun]),_208466).


test('?- e2c("It is us that paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("It is us that paints",[pronoun]),_208466).


test('?- e2c("It is them that paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("It is them that paints",[pronoun]),_208466).


test('?- e2c("It is he that paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("It is he that paints",[pronoun]),_208466).


test('?- e2c("It is she that paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("It is she that paints",[pronoun]),_208466).


test('?- e2c("It is her that paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("It is her that paints",[pronoun]),_208466).


test('?- e2c("It is him that paints",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("It is him that paints",[pronoun]),_208466).


test('?- e2c("We are us that paint",[pronoun])',[true(compound(_208466)),nondet]):-call(e2c("We are us that paint",[pronoun]),_208466).


test('?- e2c("We are all of us that paint",[pronoun])',[true(compound(_208468)),nondet]):-call(e2c("We are all of us that paint",[pronoun]),_208468).


test('?- e2c("It is everybody that paints",[pronoun])',[true(compound(_208468)),nondet]):-call(e2c("It is everybody that paints",[pronoun]),_208468).


test('?- e2c("Every man that paints likes monet.",[bratko])',[true(compound(_208470)),nondet]):-call(e2c("Every man that paints likes monet.",[bratko]),_208470).


test('?- e2c("A woman that admires John paints.",[bratko])',[true(compound(_208470)),nondet]):-call(e2c("A woman that admires John paints.",[bratko]),_208470).


test('?- e2c("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_208476)),nondet]):-call(e2c("Every woman that likes a man that admires monet paints.",[bratko]),_208476).


test('?- e2c("John likes Annie.",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("John likes Annie.",[bratko]),_208466).


test('?- e2c("Annie likes a man that admires monet.",[bratko])',[true(compound(_208470)),nondet]):-call(e2c("Annie likes a man that admires monet.",[bratko]),_208470).


test('?- e2c("Bertrand Russell wrote principia.",[bratko])',[true(compound(_208470)),nondet]):-call(e2c("Bertrand Russell wrote principia.",[bratko]),_208470).


test('?- e2c("An author wrote principia.",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("An author wrote principia.",[bratko]),_208468).


test('?- e2c("Iraq is a country.",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("Iraq is a country.",[bratko]),_208466).


test('?- e2c("A happy author wrote principia.",[bratko])',[true(compound(_208470)),nondet]):-call(e2c("A happy author wrote principia.",[bratko]),_208470).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_208466).


test('?- e2c("Bertrand is an author.",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("Bertrand is an author.",[bratko]),_208466).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_208466).


test('?- e2c("Every author is a programmer.",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("Every author is a programmer.",[bratko]),_208468).


test('?- e2c("Is Bertrand an programmer?",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("Is Bertrand an programmer?",[bratko]),_208468).


test('?- e2c("What is a author?",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("What is a author?",[bratko]),_208466).


test('?- e2c("What did Bertrand write?",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("What did Bertrand write?",[bratko]),_208468).


test('?- e2c("What is a book?",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("What is a book?",[bratko]),_208466).


test('?- e2c("Principia is a book.",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("Principia is a book.",[bratko]),_208466).


test('?- e2c("Bertrand is Bertrand.",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("Bertrand is Bertrand.",[bratko]),_208466).


test('?- e2c("Shrdlu halts.",[bratko])',[true(compound(_208464)),nondet]):-call(e2c("Shrdlu halts.",[bratko]),_208464).


test('?- e2c("Every student wrote a program.",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("Every student wrote a program.",[bratko]),_208468).


test('?- e2c("Terry writes a program.",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("Terry writes a program.",[bratko]),_208468).


test('?- e2c("Terry writes a program that halts.",[bratko])',[true(compound(_208470)),nondet]):-call(e2c("Terry writes a program that halts.",[bratko]),_208470).


test('?- e2c("An author of every book wrote a program.",[bratko])',[true(compound(_208472)),nondet]):-call(e2c("An author of every book wrote a program.",[bratko]),_208472).


test('?- e2c("A man hapilly maried paints.",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("A man hapilly maried paints.",[bratko]),_208468).


test('?- e2c("A hapilly maried man paints.",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("A hapilly maried man paints.",[bratko]),_208468).


test('?- e2c("A man who knows paints.",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("A man who knows paints.",[bratko]),_208468).


test('?- e2c("A man gives something.",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("A man gives something.",[bratko]),_208466).


test('?- e2c("A man gives his word.",[bratko])',[true(compound(_208466)),nondet]):-call(e2c("A man gives his word.",[bratko]),_208466).


test('?- e2c("A man of his word paints.",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("A man of his word paints.",[bratko]),_208468).


test('?- e2c("A man paints.",[bratko])',[true(compound(_208464)),nondet]):-call(e2c("A man paints.",[bratko]),_208464).


test('?- e2c("A man that paints paints.",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("A man that paints paints.",[bratko]),_208468).


test('?- e2c("A man walks.",[bratko])',[true(compound(_208464)),nondet]):-call(e2c("A man walks.",[bratko]),_208464).


test('?- e2c("A man that walks paints.",[bratko])',[true(compound(_208468)),nondet]):-call(e2c("A man that walks paints.",[bratko]),_208468).


test('?- e2c("It halts.",[bratko])',[true(compound(_208464)),nondet]):-call(e2c("It halts.",[bratko]),_208464).


test('?- e2c("A man of his word that walks paints.",[bratko])',[true(compound(_208470)),nondet]):-call(e2c("A man of his word that walks paints.",[bratko]),_208470).


test('?- e2c("The cost of what the product is changes.",[bratko])',[true(compound(_208472)),nondet]):-call(e2c("The cost of what the product is changes.",[bratko]),_208472).


test('?- e2c("We need a virtual machine server.",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("We need a virtual machine server.",[aindy]),_208470).


test('?- e2c("The virtual machine server should have several VMs.",[aindy])',[true(compound(_208474)),nondet]):-call(e2c("The virtual machine server should have several VMs.",[aindy]),_208474).


test('?- e2c("One VM should be the POSI VM.",[aindy])',[true(compound(_208468)),nondet]):-call(e2c("One VM should be the POSI VM.",[aindy]),_208468).


test('?- e2c("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("One VM should be the FRDCSA.org VM.",[aindy]),_208470).


test('?- e2c("One VM should be the mail server.",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("One VM should be the mail server.",[aindy]),_208470).


test('?- e2c("One computer should be the backup server.",[aindy])',[true(compound(_208472)),nondet]):-call(e2c("One computer should be the backup server.",[aindy]),_208472).


test('?- e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_208488)),nondet]):-call(e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_208488).


test('?- e2c("I need a fast computer for work.",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("I need a fast computer for work.",[aindy]),_208470).


test('?- e2c("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_208480)),nondet]):-call(e2c("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_208480).


test('?- e2c("I need a dedicated computer for network security research.",[aindy])',[true(compound(_208476)),nondet]):-call(e2c("I need a dedicated computer for network security research.",[aindy]),_208476).


test('?- e2c("I need a machine to run Tails on.",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("I need a machine to run Tails on.",[aindy]),_208470).


test('?- e2c("I need a machine off the network for airgap security.",[aindy])',[true(compound(_208474)),nondet]):-call(e2c("I need a machine off the network for airgap security.",[aindy]),_208474).


test('?- e2c("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_208480)),nondet]):-call(e2c("One VM should be the game server for running game development projects.",[aindy]),_208480).


test('?- e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_208474)),nondet]):-call(e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_208474).


test('?- e2c("I could read about how to build a private watson.",[aindy])',[true(compound(_208474)),nondet]):-call(e2c("I could read about how to build a private watson.",[aindy]),_208474).


test('?- e2c("Need backups.",[aindy])',[true(compound(_208464)),nondet]):-call(e2c("Need backups.",[aindy]),_208464).


test('?- e2c("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_208478)),nondet]):-call(e2c("Practice setting up backups of a machine to a different machine.",[aindy]),_208478).


test('?- e2c("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_208476)),nondet]):-call(e2c("Set up schedules for updating the software on all machines.",[aindy]),_208476).


test('?- e2c("Read books on server room layout.",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("Read books on server room layout.",[aindy]),_208470).


test('?- e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_208478)),nondet]):-call(e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_208478).


test('?- e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_208480)),nondet]):-call(e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_208480).


test('?- e2c("I want a gaming computer.  Do I?",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("I want a gaming computer.  Do I?",[aindy]),_208470).


test('?- e2c("I want a windows 7 computer for work.",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("I want a windows 7 computer for work.",[aindy]),_208470).


test('?- e2c("I want a fast linux computer for work.",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("I want a fast linux computer for work.",[aindy]),_208470).


test('?- e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_208490)),nondet]):-call(e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_208490).


test('?- e2c("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_208476)),nondet]):-call(e2c("I could install a fresh operating system on justin for work.",[aindy]),_208476).


test('?- e2c("I probably want a separate git computer.",[aindy])',[true(compound(_208472)),nondet]):-call(e2c("I probably want a separate git computer.",[aindy]),_208472).


test('?- e2c("I need to start buying servers.",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("I need to start buying servers.",[aindy]),_208470).


test('?- e2c("I want a rackmount case for servers.",[aindy])',[true(compound(_208470)),nondet]):-call(e2c("I want a rackmount case for servers.",[aindy]),_208470).


test('?- e2c("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_208476)),nondet]):-call(e2c("Each african country is bordered by 2 oceans.",[chat80(tell)]),_208476).


test('?- e2c("2 oceans border each african country.",[chat80(tell)])',[true(compound(_208474)),nondet]):-call(e2c("2 oceans border each african country.",[chat80(tell)]),_208474).


test('?- e2c("There are 10 large cars.",[quants])',[true(compound(_208468)),nondet]):-call(e2c("There are 10 large cars.",[quants]),_208468).


test('?- e2c("There are 10 oceans.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("There are 10 oceans.",[quants]),_208466).


test('?- e2c("There are 10 women.",[quants])',[true(compound(_208466)),nondet]):-call(e2c("There are 10 women.",[quants]),_208466).


test('?- e2c("An ocean borders an African country.",[chat80(tell)])',[true(compound(_208474)),nondet]):-call(e2c("An ocean borders an African country.",[chat80(tell)]),_208474).


test('?- e2c("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_208482)),nondet]):-call(e2c("What is the ocean that borders african countries and that borders asian countries?",[tell]),_208482).


test('?- e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_208484)),nondet]):-call(e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_208484).


test('?- e2c("Bertrand wrote a book.",[bratko(book)])',[true(compound(_208470)),nondet]):-call(e2c("Bertrand wrote a book.",[bratko(book)]),_208470).


test('?- e2c("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_208472)),nondet]):-call(e2c("Bertrand wrote nothing.",[bratko(book)]),_208472).


test('?- e2c("Bertrand wrote.",[bratko(book)])',[true(compound(_208470)),nondet]):-call(e2c("Bertrand wrote.",[bratko(book)]),_208470).


test('?- e2c("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_208474)),nondet]):-call(e2c("Bertrand wrote a book about Gottlob.",[bratko(book)]),_208474).


test('?- e2c("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_208472)),nondet]):-call(e2c("Bertrand wrote about Gottlob.",[bratko(book)]),_208472).


test('?- e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_208474)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_208474).


test('?- e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_208476)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_208476).


test('?- e2c("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_208474)),nondet]):-call(e2c("What did alfred write to Bertrand?",[bratko(book)]),_208474).


test('?- e2c("Alfred wrote a letter.",[bratko(book)])',[true(compound(_208470)),nondet]):-call(e2c("Alfred wrote a letter.",[bratko(book)]),_208470).


test('?- e2c("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_208474)),nondet]):-call(e2c("Alfred wrote a letter to Bertrand.",[bratko(book)]),_208474).


test('?- e2c("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_208474)),nondet]):-call(e2c("Alfred wrote something to Bertrand.",[bratko(book)]),_208474).


test('?- e2c("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_208472)),nondet]):-call(e2c("Alfred wrote to Bertrand.",[bratko(book)]),_208472).


test('?- e2c("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_208474)),nondet]):-call(e2c("Alfred wrote to Bertrand a letter.",[bratko(book)]),_208474).


test('?- e2c("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_208474)),nondet]):-call(e2c("Alfred wrote Bertrand a letter.",[bratko(book)]),_208474).


test('?- e2c("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_208474)),nondet]):-call(e2c("Who did alfred write a letter to?",[bratko(book)]),_208474).


test('?- e2c("Alfred gave it.",[bratko(book)])',[true(compound(_208470)),nondet]):-call(e2c("Alfred gave it.",[bratko(book)]),_208470).


test('?- e2c("Alfred gave a book.",[bratko(book)])',[true(compound(_208470)),nondet]):-call(e2c("Alfred gave a book.",[bratko(book)]),_208470).


test('?- e2c("a pride of lions paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a pride of lions paint",[of]),_208466).


test('?- e2c("a flock of birds paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a flock of birds paint",[of]),_208466).


test('?- e2c("a litter of pups paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a litter of pups paint",[of]),_208466).


test('?- e2c("a prickle of porcupines paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a prickle of porcupines paint",[of]),_208468).


test('?- e2c("a litter of cubs paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a litter of cubs paint",[of]),_208466).


test('?- e2c("a pack of dogs paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a pack of dogs paint",[of]),_208466).


test('?- e2c("a colony of beavers paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a colony of beavers paint",[of]),_208468).


test('?- e2c("a gaggle of geese paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a gaggle of geese paint",[of]),_208468).


test('?- e2c("a family of otters paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a family of otters paint",[of]),_208468).


test('?- e2c("a huddle of walruses paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a huddle of walruses paint",[of]),_208468).


test('?- e2c("a herd of deer paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a herd of deer paint",[of]),_208466).


test('?- e2c("a culture of bacteria paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a culture of bacteria paint",[of]),_208468).


test('?- e2c("a swarm of bees paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a swarm of bees paint",[of]),_208466).


test('?- e2c("a bed of clams paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a bed of clams paint",[of]),_208466).


test('?- e2c("a school of cod paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a school of cod paint",[of]),_208466).


test('?- e2c("a herd of dinosaurs paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a herd of dinosaurs paint",[of]),_208468).


test('?- e2c("a mess of iguanas paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a mess of iguanas paint",[of]),_208468).


test('?- e2c("a mob of wombats paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a mob of wombats paint",[of]),_208466).


test('?- e2c("a pod of pelicans paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a pod of pelicans paint",[of]),_208468).


test('?- e2c("a troop of boy scouts paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a troop of boy scouts paint",[of]),_208468).


test('?- e2c("a team of athletes paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a team of athletes paint",[of]),_208468).


test('?- e2c("a panel of experts paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a panel of experts paint",[of]),_208468).


test('?- e2c("a crew of sailors paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a crew of sailors paint",[of]),_208468).


test('?- e2c("a band of robbers paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a band of robbers paint",[of]),_208468).


test('?- e2c("a troupe of performers paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a troupe of performers paint",[of]),_208468).


test('?- e2c("a crowd of onlookers paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a crowd of onlookers paint",[of]),_208468).


test('?- e2c("a curse of painters paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("a curse of painters paint",[of]),_208468).


test('?- e2c("a fleet of cars paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a fleet of cars paint",[of]),_208466).


test('?- e2c("a pair of shoes paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a pair of shoes paint",[of]),_208466).


test('?- e2c("a fleet of ships paint",[of])',[true(compound(_208466)),nondet]):-call(e2c("a fleet of ships paint",[of]),_208466).


test('?- e2c("an anthology of stories paint",[of])',[true(compound(_208468)),nondet]):-call(e2c("an anthology of stories paint",[of]),_208468).


test('?- e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_291824)),nondet]):-call(e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_291824).


test('?- e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_291794)),nondet]):-call(e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_291794).


test('?- e2c("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_291932)),nondet]):-call(e2c("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_291932).


test('?- e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_291776)),nondet]):-call(e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_291776).


test('?- e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_291824)),nondet]):-call(e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_291824).


test('?- e2c("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_291920)),nondet]):-call(e2c("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_291920).


test('?- e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_291878)),nondet]):-call(e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_291878).


test('?- e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_292070)),nondet]):-call(e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_292070).


test('?- e2c("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_291842)),nondet]):-call(e2c("He stowed super-human strength, and is extremely tough",[descriptionTest]),_291842).


test('?- e2c("Logged on player character",[descriptionTest])',[true(compound(_291650)),nondet]):-call(e2c("Logged on player character",[descriptionTest]),_291650).


test('?- e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_291908)),nondet]):-call(e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_291908).


test('?- e2c("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_291854)),nondet]):-call(e2c("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_291854).


test('?- e2c("Wesley is her son",[descriptionTest])',[true(compound(_291596)),nondet]):-call(e2c("Wesley is her son",[descriptionTest]),_291596).


test('?- e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_292244)),nondet]):-call(e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_292244).


test('?- e2c("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_291674)),nondet]):-call(e2c("Counselor Deanna Troi is here",[descriptionTest]),_291674).


test('?- e2c("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_291770)),nondet]):-call(e2c("Counselor Troi is the ship's main counselor",[descriptionTest]),_291770).


test('?- e2c("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_291926)),nondet]):-call(e2c("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_291926).


test('?- e2c("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_291800)),nondet]):-call(e2c("Commander William Riker is here, staring at you",[descriptionTest]),_291800).


test('?- e2c("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_291806)),nondet]):-call(e2c("Commander Riker is the Enterprise's first officer",[descriptionTest]),_291806).


test('?- e2c("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_291776)),nondet]):-call(e2c("He's in charge of keeping the crew in line",[descriptionTest]),_291776).


test('?- e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_291842)),nondet]):-call(e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_291842).


test('?- e2c("Captain Picard is a very important man",[descriptionTest])',[true(compound(_291740)),nondet]):-call(e2c("Captain Picard is a very important man",[descriptionTest]),_291740).


test('?- e2c("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_291842)),nondet]):-call(e2c("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_291842).


test('?- e2c("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_291686)),nondet]):-call(e2c("He's very smart, and very wise",[descriptionTest]),_291686).


test('?- e2c("Don\'t mess with him!",[descriptionTest])',[true(compound(_291614)),nondet]):-call(e2c("Don't mess with him!",[descriptionTest]),_291614).


test('?- e2c("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_291692)),nondet]):-call(e2c("Guinan is here, tending the bar",[descriptionTest]),_291692).


test('?- e2c("Guinan is a strange being",[descriptionTest])',[true(compound(_291650)),nondet]):-call(e2c("Guinan is a strange being",[descriptionTest]),_291650).


test('?- e2c("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_292358)),nondet]):-call(e2c("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_292358).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_291860)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_291860).


test('?- e2c("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_291860)),nondet]):-call(e2c("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_291860).


test('?- e2c("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_292160)),nondet]):-call(e2c("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_292160).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_291854)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_291854).


test('?- e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_291878)),nondet]):-call(e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_291878).


test('?- e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_292148)),nondet]):-call(e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_292148).


test('?- e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_292070)),nondet]):-call(e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_292070).


test('?- e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_291860)),nondet]):-call(e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_291860).


test('?- e2c("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_291740)),nondet]):-call(e2c("Livingston is Captain Picard's pet fish",[descriptionTest]),_291740).


test('?- e2c("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_291992)),nondet]):-call(e2c("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_291992).


test('?- e2c("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_291842)),nondet]):-call(e2c("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_291842).


test('?- e2c("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_291710)),nondet]):-call(e2c("Spot is Data's orange coloured cat",[descriptionTest]),_291710).


test('?- e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_292232)),nondet]):-call(e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_292232).


test('?- e2c("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_291854)),nondet]):-call(e2c("A nervous looking ensign is standing here, watching you",[descriptionTest]),_291854).


test('?- e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_291836)),nondet]):-call(e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_291836).


test('?- e2c("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_292178)),nondet]):-call(e2c("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_292178).


test('?- e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_291824)),nondet]):-call(e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_291824).


test('?- e2c("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_291692)),nondet]):-call(e2c("Alexander Rozhenko is Worf's son",[descriptionTest]),_291692).


test('?- e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_291974)),nondet]):-call(e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_291974).


test('?- e2c("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_291890)),nondet]):-call(e2c("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_291890).


test('?- e2c("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_291836)),nondet]):-call(e2c("A standard issue Starfleet phaser has been left here",[descriptionTest]),_291836).


test('?- e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_292238)),nondet]):-call(e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_292238).


test('?- e2c("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_291716)),nondet]):-call(e2c("A large phaser rifle is lying here",[descriptionTest]),_291716).


test('?- e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_292310)),nondet]):-call(e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_292310).


test('?- e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_291914)),nondet]):-call(e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_291914).


test('?- e2c("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292262)),nondet]):-call(e2c("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292262).


test('?- e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_291914)),nondet]):-call(e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_291914).


test('?- e2c("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292286)),nondet]):-call(e2c("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292286).


test('?- e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_291890)),nondet]):-call(e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_291890).


test('?- e2c("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_292262)),nondet]):-call(e2c("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_292262).


test('?- e2c("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_291812)),nondet]):-call(e2c("A pair of Starfleet black boots are sitting here",[descriptionTest]),_291812).


test('?- e2c("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_292352)),nondet]):-call(e2c("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_292352).


test('?- e2c("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_291782)),nondet]):-call(e2c("A Starfleet communication badge is lying here",[descriptionTest]),_291782).


test('?- e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_292820)),nondet]):-call(e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_292820).


test('?- e2c("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_291776)),nondet]):-call(e2c("Worf's silver chain sash has been left here",[descriptionTest]),_291776).


test('?- e2c("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_292388)),nondet]):-call(e2c("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_292388).


test('?- e2c("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_291668)),nondet]):-call(e2c("Geordi's VISOR is lying here",[descriptionTest]),_291668).


test('?- e2c("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_293060)),nondet]):-call(e2c("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_293060).


test('?- e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_291836)),nondet]):-call(e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_291836).


test('?- e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_292622)),nondet]):-call(e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_292622).


test('?- e2c("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_291770)),nondet]):-call(e2c("A shard of dilithium crystal is lying here",[descriptionTest]),_291770).


test('?- e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_292424)),nondet]):-call(e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_292424).


test('?- e2c("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_291782)),nondet]):-call(e2c("Captain Picard's wooden flute is sitting here",[descriptionTest]),_291782).


test('?- e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_292394)),nondet]):-call(e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_292394).


test('?- e2c("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_291794)),nondet]):-call(e2c("Commander Riker's trombone has been placed here",[descriptionTest]),_291794).


test('?- e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_292226)),nondet]):-call(e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_292226).


test('?- e2c("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_291722)),nondet]):-call(e2c("A small cup of tea is sitting here",[descriptionTest]),_291722).


test('?- e2c("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_291740)),nondet]):-call(e2c("A bottle of synthehol is standing here",[descriptionTest]),_291740).


test('?- e2c("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_291752)),nondet]):-call(e2c("A bottle of Ferengi ale is sitting here",[descriptionTest]),_291752).


test('?- e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_291776)),nondet]):-call(e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_291776).


test('?- e2c("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_291788)),nondet]):-call(e2c("A small glass of prune juice is sitting here",[descriptionTest]),_291788).


test('?- e2c("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_291758)),nondet]):-call(e2c("A bottle of Vulcan beer is standing here",[descriptionTest]),_291758).


test('?- e2c("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_291830)),nondet]):-call(e2c("You find yourself in the middle of main engineering",[descriptionTest]),_291830).


test('?- e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_291950)),nondet]):-call(e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_291950).


test('?- e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_292250)),nondet]):-call(e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_292250).


test('?- e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_292058)),nondet]):-call(e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_292058).


test('?- e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_291986)),nondet]):-call(e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_291986).


test('?- e2c("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_292166)),nondet]):-call(e2c("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_292166).


test('?- e2c("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_291758)),nondet]):-call(e2c("You're in the middle of Geordi's quarters",[descriptionTest]),_291758).


test('?- e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_291956)),nondet]):-call(e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_291956).


test('?- e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_292280)),nondet]):-call(e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_292280).


test('?- e2c("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_291890)),nondet]):-call(e2c("A neatly made bed has been placed against the northern wall",[descriptionTest]),_291890).


test('?- e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_291860)),nondet]):-call(e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_291860).


test('?- e2c("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_291746)),nondet]):-call(e2c("You're in the middle of Data's quarters",[descriptionTest]),_291746).


test('?- e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_292808)),nondet]):-call(e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_292808).


test('?- e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_292022)),nondet]):-call(e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_292022).


test('?- e2c("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_292046)),nondet]):-call(e2c("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_292046).


test('?- e2c("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_291674)),nondet]):-call(e2c("You're in the dimly lit Brig",[descriptionTest]),_291674).


test('?- e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_292064)),nondet]):-call(e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_292064).


test('?- e2c("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_292142)),nondet]):-call(e2c("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_292142).


test('?- e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_292436)),nondet]):-call(e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_292436).


test('?- e2c(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_298664)),nondet]):-call(e2c('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_298664).


test('?- e2c("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_292148)),nondet]):-call(e2c("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_292148).


test('?- e2c("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_291752)),nondet]):-call(e2c("You're in the Enterprise transporter room",[descriptionTest]),_291752).


test('?- e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_292238)),nondet]):-call(e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_292238).


test('?- e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_292208)),nondet]):-call(e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_292208).


test('?- e2c("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_291746)),nondet]):-call(e2c("You find yourself in a transporter beam",[descriptionTest]),_291746).


test('?- e2c("All you can see is blue flashing light",[descriptionTest])',[true(compound(_291746)),nondet]):-call(e2c("All you can see is blue flashing light",[descriptionTest]),_291746).


test('?- e2c("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_291902)),nondet]):-call(e2c("It feels as though your body is racing around at high speeds",[descriptionTest]),_291902).


test('?- e2c("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_292022)),nondet]):-call(e2c("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_292022).


test('?- e2c("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_291950)),nondet]):-call(e2c("You step through the doors and find yourself in a large school room",[descriptionTest]),_291950).


test('?- e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_292328)),nondet]):-call(e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_292328).


test('?- e2c("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_292082)),nondet]):-call(e2c("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_292082).


test('?- e2c("You\'re in the turbolift",[descriptionTest])',[true(compound(_291632)),nondet]):-call(e2c("You're in the turbolift",[descriptionTest]),_291632).


test('?- e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_292010)),nondet]):-call(e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_292010).


test('?- e2c("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_291902)),nondet]):-call(e2c("Several vertical rows of lights make this place very well lit",[descriptionTest]),_291902).


test('?- e2c("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_291890)),nondet]):-call(e2c("From here, you can access the other decks on the Enterprise",[descriptionTest]),_291890).


test('?- e2c("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_291644)),nondet]):-call(e2c("You're now on Holodeck 2",[descriptionTest]),_291644).


test('?- e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_292328)),nondet]):-call(e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_292328).


test('?- e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_292076)),nondet]):-call(e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_292076).


test('?- e2c("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_291770)),nondet]):-call(e2c("Right now, this holodeck is not functioning",[descriptionTest]),_291770).


test('?- e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_291878)),nondet]):-call(e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_291878).


test('?- e2c("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_291800)),nondet]):-call(e2c("You're in the main cargo bay of the Enterprise",[descriptionTest]),_291800).


test('?- e2c("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_292010)),nondet]):-call(e2c("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_292010).


test('?- e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_292328)),nondet]):-call(e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_292328).


test('?- e2c("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_291704)),nondet]):-call(e2c("You've arrived in Riker's quarters",[descriptionTest]),_291704).


test('?- e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_292280)),nondet]):-call(e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_292280).


test('?- e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_292214)),nondet]):-call(e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_292214).


test('?- e2c("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_291818)),nondet]):-call(e2c("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_291818).


test('?- e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_292454)),nondet]):-call(e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_292454).


test('?- e2c("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_292250)),nondet]):-call(e2c("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_292250).


test('?- e2c("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_291722)),nondet]):-call(e2c("You emerge into a dark narrow alley",[descriptionTest]),_291722).


test('?- e2c("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_291866)),nondet]):-call(e2c("Tall dark brick buildings block your way north and south",[descriptionTest]),_291866).


test('?- e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_292130)),nondet]):-call(e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_292130).


test('?- e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_292166)),nondet]):-call(e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_292166).


test('?- e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_291902)),nondet]):-call(e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_291902).


test('?- e2c("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_291806)),nondet]):-call(e2c("The archway leading out of the holodeck is west",[descriptionTest]),_291806).


test('?- e2c("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_291710)),nondet]):-call(e2c("You're in Doctor Crusher's quarters",[descriptionTest]),_291710).


test('?- e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_292106)),nondet]):-call(e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_292106).


test('?- e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_292196)),nondet]):-call(e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_292196).


test('?- e2c("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_291938)),nondet]):-call(e2c("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_291938).


test('?- e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_292562)),nondet]):-call(e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_292562).


test('?- e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_292034)),nondet]):-call(e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_292034).


test('?- e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_292430)),nondet]):-call(e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_292430).


test('?- e2c("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_291902)),nondet]):-call(e2c("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_291902).


test('?- e2c("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_291830)),nondet]):-call(e2c("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_291830).


test('?- e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_292724)),nondet]):-call(e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_292724).


test('?- e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_291902)),nondet]):-call(e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_291902).


test('?- e2c("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_291812)),nondet]):-call(e2c("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_291812).


test('?- e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_292004)),nondet]):-call(e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_292004).


test('?- e2c("A large grey door leads into space",[descriptionTest])',[true(compound(_291716)),nondet]):-call(e2c("A large grey door leads into space",[descriptionTest]),_291716).


test('?- e2c("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_291902)),nondet]):-call(e2c("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_291902).


test('?- e2c("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_291974)),nondet]):-call(e2c("You can see stars in every direction, which provide the only light here",[descriptionTest]),_291974).


test('?- e2c("You feel very cold",[descriptionTest])',[true(compound(_291602)),nondet]):-call(e2c("You feel very cold",[descriptionTest]),_291602).


test('?- e2c("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_291872)),nondet]):-call(e2c("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_291872).


test('?- e2c("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_291758)),nondet]):-call(e2c("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_291758).


test('?- e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_292370)),nondet]):-call(e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_292370).


test('?- e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_292094)),nondet]):-call(e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_292094).


test('?- e2c("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_291644)),nondet]):-call(e2c("You're in Worf's quarters",[descriptionTest]),_291644).


test('?- e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_292088)),nondet]):-call(e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_292088).


test('?- e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_292502)),nondet]):-call(e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_292502).


test('?- e2c("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_291710)),nondet]):-call(e2c("You emerge into the Enterprise gym",[descriptionTest]),_291710).


test('?- e2c("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_291812)),nondet]):-call(e2c("The room is quite large, with a soft grey floor",[descriptionTest]),_291812).


test('?- e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_292220)),nondet]):-call(e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_292220).


test('?- e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_292184)),nondet]):-call(e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_292184).


test('?- e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_291872)),nondet]):-call(e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_291872).


test('?- e2c("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_291938)),nondet]):-call(e2c("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_291938).


test('?- e2c("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_292028)),nondet]):-call(e2c("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_292028).


test('?- e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_292322)),nondet]):-call(e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_292322).


test('?- e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_292340)),nondet]):-call(e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_292340).


test('?- e2c("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_291794)),nondet]):-call(e2c("Two large windows offer a great view of space",[descriptionTest]),_291794).


test('?- e2c("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_292046)),nondet]):-call(e2c("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_292046).


test('?- e2c("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_291722)),nondet]):-call(e2c("You're in the Enterprise science lab",[descriptionTest]),_291722).


test('?- e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_292112)),nondet]):-call(e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_292112).


test('?- e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_292610)),nondet]):-call(e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_292610).


test('?- e2c("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_291866)),nondet]):-call(e2c("A complex looking computer console is facing this machine",[descriptionTest]),_291866).


test('?- e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_292022)),nondet]):-call(e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_292022).


test('?- e2c("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_291782)),nondet]):-call(e2c("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_291782).


test('?- e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_292016)),nondet]):-call(e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_292016).


test('?- e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_292388)),nondet]):-call(e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_292388).


test('?- e2c("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_292190)),nondet]):-call(e2c("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_292190).


test('?- e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_292586)),nondet]):-call(e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_292586).


test('?- e2c("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_291788)),nondet]):-call(e2c("You're standing in Captain Picard's ready room",[descriptionTest]),_291788).


test('?- e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_292226)),nondet]):-call(e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_292226).


test('?- e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_292130)),nondet]):-call(e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_292130).


test('?- e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_292328)),nondet]):-call(e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_292328).


test('?- e2c("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_291908)),nondet]):-call(e2c("This is where the Captain makes all of his important decisions",[descriptionTest]),_291908).


test('?- e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_292016)),nondet]):-call(e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_292016).


test('?- e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_292328)),nondet]):-call(e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_292328).


test('?- e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_292136)),nondet]):-call(e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_292136).


test('?- e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_291932)),nondet]):-call(e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_291932).


test('?- e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_292280)),nondet]):-call(e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_292280).


test('?- e2c("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_291878)),nondet]):-call(e2c("This is where the ship's pilot and information officer sit",[descriptionTest]),_291878).


test('?- e2c("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_291800)),nondet]):-call(e2c("You're in the conference room of the Enterprise",[descriptionTest]),_291800).


test('?- e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_292346)),nondet]):-call(e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_292346).


test('?- e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_291968)),nondet]):-call(e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_291968).


test('?- e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_292064)),nondet]):-call(e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_292064).


test('?- e2c("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_291896)),nondet]):-call(e2c("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_291896).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_208476)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_208476).


test('?- e2c("no two owners eat pizza",[sanity])',[true(compound(_208468)),nondet]):-call(e2c("no two owners eat pizza",[sanity]),_208468).


test('?- e2c("no three owners eat pizza",[sanity])',[true(compound(_208468)),nondet]):-call(e2c("no three owners eat pizza",[sanity]),_208468).


test('?- e2c("no three owners eat the same pizza",[sanity])',[true(compound(_208470)),nondet]):-call(e2c("no three owners eat the same pizza",[sanity]),_208470).


test('?- e2c("no three owners eat the same kind of pizza",[sanity])',[true(compound(_208472)),nondet]):-call(e2c("no three owners eat the same kind of pizza",[sanity]),_208472).


test('?- e2c("no owners eat the same pizza",[sanity])',[true(compound(_208468)),nondet]):-call(e2c("no owners eat the same pizza",[sanity]),_208468).


test('?- e2c("no owners eat the same kind of pizza",[sanity])',[true(compound(_208470)),nondet]):-call(e2c("no owners eat the same kind of pizza",[sanity]),_208470).


test('?- e2c("there are 5 houses",[sanity])',[true(compound(_208466)),nondet]):-call(e2c("there are 5 houses",[sanity]),_208466).


test('?- e2c("there are not 5 houses",[sanity])',[true(compound(_208466)),nondet]):-call(e2c("there are not 5 houses",[sanity]),_208466).


test('?- e2c("there are not zero houses",[sanity])',[true(compound(_208468)),nondet]):-call(e2c("there are not zero houses",[sanity]),_208468).


test('?- e2c(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_208476)),nondet]):-call(e2c(noun_phrase("less than 2 owners"),[sanity,bug]),_208476).


test('?- e2c(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_208470)),nondet]):-call(e2c(noun_phrase("at most the 5 owners"),[sanity]),_208470).


test('?- e2c(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_208470)),nondet]):-call(e2c(noun_phrase("at most 5 owners"),[sanity]),_208470).


test('?- e2c(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_208470)),nondet]):-call(e2c(noun_phrase("less than 3 owners"),[sanity]),_208470).


test('?- e2c(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_208472)),nondet]):-call(e2c(noun_phrase("at most 50 percent of owners"),[sanity]),_208472).


test('?- e2c(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_208476)),nondet]):-call(e2c(noun_phrase("no three owners"),[sanity,no_working]),_208476).


test('?- e2c("terry writes a non-program.",[tell])',[true(compound(_208468)),nondet]):-call(e2c("terry writes a non-program.",[tell]),_208468).


test('?- e2c("every nonhuman programmer writes a program.",[tell])',[true(compound(_208472)),nondet]):-call(e2c("every nonhuman programmer writes a program.",[tell]),_208472).


test('?- e2c("every human programmer writes a not a program.",[tell])',[true(compound(_208472)),nondet]):-call(e2c("every human programmer writes a not a program.",[tell]),_208472).


test('?- e2c("every human programmer happily writes a not a program.",[tell])',[true(compound(_208474)),nondet]):-call(e2c("every human programmer happily writes a not a program.",[tell]),_208474).


:- end_tests(e2c).

