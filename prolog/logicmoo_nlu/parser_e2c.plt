

:- begin_tests(test_lex_info).



test('?- test_lex_info("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_169398)),nondet]):-call(test_lex_info("His friends are liked by hers.",[bad_juju,sanity]),_169398).


test('?- test_lex_info("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_169400)),nondet]):-call(test_lex_info("Her friends are not liked by his.",[bad_juju,sanity]),_169400).


test('?- test_lex_info("Do their friends like each other?",[bad_juju,feature])',[true(compound(_169400)),nondet]):-call(test_lex_info("Do their friends like each other?",[bad_juju,feature]),_169400).


test('?- test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_169342),sanity])',[true(compound(_169404)),nondet]):-call(test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_169342),sanity]),_169404).


test('?- test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_169340),sanity])',[true(compound(_169402)),nondet]):-call(test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_169340),sanity]),_169402).


test('?- test_lex_info("There are 5 houses with five different colors.",[riddle(_169344),sanity])',[true(compound(_169406)),nondet]):-call(test_lex_info("There are 5 houses with five different colors.",[riddle(_169344),sanity]),_169406).


test('?- test_lex_info("There are 5 houses",[riddle_prep,sanity])',[true(compound(_169396)),nondet]):-call(test_lex_info("There are 5 houses",[riddle_prep,sanity]),_169396).


test('?- test_lex_info("Each house has a different color",[riddle_prep,sanity])',[true(compound(_169400)),nondet]):-call(test_lex_info("Each house has a different color",[riddle_prep,sanity]),_169400).


test('?- test_lex_info("In each house lives a person with a different nationality.",[riddle(_169348),sanity])',[true(compound(_169410)),nondet]):-call(test_lex_info("In each house lives a person with a different nationality.",[riddle(_169348),sanity]),_169410).


test('?- test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_169422)),nondet]):-call(test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_169422).


test('?- test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_169410)),nondet]):-call(test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_169410).


test('?- test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_169408)),nondet]):-call(test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_169408).


test('?- test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_169412)),nondet]):-call(test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_169412).


test('?- test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_169416)),nondet]):-call(test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_169416).


test('?- test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_169408)),nondet]):-call(test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression]),_169408).


test('?- test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_169412)),nondet]):-call(test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_169412).


test('?- test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_169406)),nondet]):-call(test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_169406).


test('?- test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_169410)),nondet]):-call(test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression]),_169410).


test('?- test_lex_info("The brit lives in the red house.",[riddle(_169342),sanity])',[true(compound(_169404)),nondet]):-call(test_lex_info("The brit lives in the red house.",[riddle(_169342),sanity]),_169404).


test('?- test_lex_info("The swede keeps dogs as pets.",[riddle(_169340),sanity])',[true(compound(_169402)),nondet]):-call(test_lex_info("The swede keeps dogs as pets.",[riddle(_169340),sanity]),_169402).


test('?- test_lex_info("A dane drinks tea.",[riddle(_169338),sanity])',[true(compound(_169400)),nondet]):-call(test_lex_info("A dane drinks tea.",[riddle(_169338),sanity]),_169400).


test('?- test_lex_info("The green house is on the left of the white house.",[riddle(_169346),sanity])',[true(compound(_169408)),nondet]):-call(test_lex_info("The green house is on the left of the white house.",[riddle(_169346),sanity]),_169408).


test('?- test_lex_info("The green house\'s owner drinks coffee.",[riddle(_169342),sanity])',[true(compound(_169404)),nondet]):-call(test_lex_info("The green house's owner drinks coffee.",[riddle(_169342),sanity]),_169404).


test('?- test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_169344),sanity,regression])',[true(compound(_169412)),nondet]):-call(test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_169344),sanity,regression]),_169412).


test('?- test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_169344),sanity])',[true(compound(_169406)),nondet]):-call(test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_169344),sanity]),_169406).


test('?- test_lex_info("The man living in the center house drinks milk.",[riddle(_169346),sanity])',[true(compound(_169408)),nondet]):-call(test_lex_info("The man living in the center house drinks milk.",[riddle(_169346),sanity]),_169408).


test('?- test_lex_info("The Norwegian lives in the first house .",[riddle(_169344),sanity])',[true(compound(_169406)),nondet]):-call(test_lex_info("The Norwegian lives in the first house .",[riddle(_169344),sanity]),_169406).


test('?- test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_169350),sanity])',[true(compound(_169412)),nondet]):-call(test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_169350),sanity]),_169412).


test('?- test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_169350),sanity])',[true(compound(_169412)),nondet]):-call(test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_169350),sanity]),_169412).


test('?- test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_169344),sanity])',[true(compound(_169406)),nondet]):-call(test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_169344),sanity]),_169406).


test('?- test_lex_info("The German smokes Prince.",[riddle(_169340),sanity])',[true(compound(_169402)),nondet]):-call(test_lex_info("The German smokes Prince.",[riddle(_169340),sanity]),_169402).


test('?- test_lex_info("The Norwegian lives next to the blue house.",[riddle(_169344),sanity])',[true(compound(_169406)),nondet]):-call(test_lex_info("The Norwegian lives next to the blue house.",[riddle(_169344),sanity]),_169406).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_169348),sanity])',[true(compound(_169410)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_169348),sanity]),_169410).


test('?- test_lex_info("Who owns the fish?",[riddle(_169338),sanity])',[true(compound(_169400)),nondet]):-call(test_lex_info("Who owns the fish?",[riddle(_169338),sanity]),_169400).


test('?- test_lex_info("One woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("One woman paints.",[quants]),_169390).


test('?- test_lex_info("No woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("No woman paints.",[quants]),_169390).


test('?- test_lex_info("Some woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Some woman paints.",[quants]),_169390).


test('?- test_lex_info("Every woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Every woman paints.",[quants]),_169390).


test('?- test_lex_info("Each woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Each woman paints.",[quants]),_169390).


test('?- test_lex_info("Any woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Any woman paints.",[quants]),_169390).


test('?- test_lex_info("The woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("The woman paints.",[quants]),_169390).


test('?- test_lex_info("The not woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("The not woman paints.",[quants]),_169390).


test('?- test_lex_info("Not a woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not a woman paints.",[quants]),_169390).


test('?- test_lex_info("Not one woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not one woman paints.",[quants]),_169390).


test('?- test_lex_info("Not no woman paints.",[quants_neg_postcond])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not no woman paints.",[quants_neg_postcond]),_169390).


test('?- test_lex_info("Not some woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not some woman paints.",[quants]),_169390).


test('?- test_lex_info("Not every woman paints.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("Not every woman paints.",[quants]),_169392).


test('?- test_lex_info("Not each woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not each woman paints.",[quants]),_169390).


test('?- test_lex_info("Not any woman paints.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not any woman paints.",[quants]),_169390).


test('?- test_lex_info("The women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("The women paint.",[quants]),_169390).


test('?- test_lex_info("Women paint.",[quants])',[true(compound(_169388)),nondet]):-call(test_lex_info("Women paint.",[quants]),_169388).


test('?- test_lex_info("Some women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Some women paint.",[quants]),_169390).


test('?- test_lex_info("No women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("No women paint.",[quants]),_169390).


test('?- test_lex_info("All women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("All women paint.",[quants]),_169390).


test('?- test_lex_info("Any women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Any women paint.",[quants]),_169390).


test('?- test_lex_info("Not women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not women paint.",[quants]),_169390).


test('?- test_lex_info("Not no women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not no women paint.",[quants]),_169390).


test('?- test_lex_info("Not all women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not all women paint.",[quants]),_169390).


test('?- test_lex_info("Not any women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not any women paint.",[quants]),_169390).


test('?- test_lex_info("The three women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("The three women paint.",[quants]),_169390).


test('?- test_lex_info("Three women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Three women paint.",[quants]),_169390).


test('?- test_lex_info("Some three women paint.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("Some three women paint.",[quants]),_169392).


test('?- test_lex_info("No three women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("No three women paint.",[quants]),_169390).


test('?- test_lex_info("Every three women paint.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("Every three women paint.",[quants]),_169392).


test('?- test_lex_info("All three women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("All three women paint.",[quants]),_169390).


test('?- test_lex_info("Any three women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Any three women paint.",[quants]),_169390).


test('?- test_lex_info("Not three women paint.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not three women paint.",[quants]),_169390).


test('?- test_lex_info("Not some three women paint.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("Not some three women paint.",[quants]),_169392).


test('?- test_lex_info("Not no three women paint.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("Not no three women paint.",[quants]),_169392).


test('?- test_lex_info("Not all three women paint.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("Not all three women paint.",[quants]),_169392).


test('?- test_lex_info("Not every three women paint.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("Not every three women paint.",[quants]),_169392).


test('?- test_lex_info("Not any three women paint.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("Not any three women paint.",[quants]),_169392).


test('?- test_lex_info("Not three of the women paint.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("Not three of the women paint.",[quants]),_169392).


test('?- test_lex_info("Not some of the three women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("Not some of the three women paint.",[quants]),_169394).


test('?- test_lex_info("Not no three of the women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("Not no three of the women paint.",[quants]),_169394).


test('?- test_lex_info("Not all three of the women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("Not all three of the women paint.",[quants]),_169394).


test('?- test_lex_info("Not every three of the women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("Not every three of the women paint.",[quants]),_169394).


test('?- test_lex_info("Not any three of the women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("Not any three of the women paint.",[quants]),_169394).


test('?- test_lex_info("Not three of the four women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("Not three of the four women paint.",[quants]),_169394).


test('?- test_lex_info("Not none of three out of the four women paint.",[quants])',[true(compound(_169396)),nondet]):-call(test_lex_info("Not none of three out of the four women paint.",[quants]),_169396).


test('?- test_lex_info("Not all three of the four women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("Not all three of the four women paint.",[quants]),_169394).


test('?- test_lex_info("Not any three of the four women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("Not any three of the four women paint.",[quants]),_169394).


test('?- test_lex_info("Three of the four women paint.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("Three of the four women paint.",[quants]),_169392).


test('?- test_lex_info("Three out of the four women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("Three out of the four women paint.",[quants]),_169394).


test('?- test_lex_info("All three of the four women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("All three of the four women paint.",[quants]),_169394).


test('?- test_lex_info("Any three of the four women paint.",[quants])',[true(compound(_169394)),nondet]):-call(test_lex_info("Any three of the four women paint.",[quants]),_169394).


test('?- test_lex_info("I paint",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("I paint",[pronoun]),_169388).


test('?- test_lex_info("you paint",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("you paint",[pronoun]),_169388).


test('?- test_lex_info("We paint",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("We paint",[pronoun]),_169388).


test('?- test_lex_info("None paint",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("None paint",[pronoun]),_169388).


test('?- test_lex_info("They paint",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("They paint",[pronoun]),_169388).


test('?- test_lex_info("Some paint",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("Some paint",[pronoun]),_169388).


test('?- test_lex_info("It paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("It paints",[pronoun]),_169388).


test('?- test_lex_info("he paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("he paints",[pronoun]),_169388).


test('?- test_lex_info("She paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("She paints",[pronoun]),_169388).


test('?- test_lex_info("Someone paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("Someone paints",[pronoun]),_169388).


test('?- test_lex_info("Anybody paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("Anybody paints",[pronoun]),_169388).


test('?- test_lex_info("Anyone paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("Anyone paints",[pronoun]),_169388).


test('?- test_lex_info("Anything paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Anything paints",[pronoun]),_169390).


test('?- test_lex_info("Everybody paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Everybody paints",[pronoun]),_169390).


test('?- test_lex_info("Everyone paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Everyone paints",[pronoun]),_169390).


test('?- test_lex_info("Everything paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Everything paints",[pronoun]),_169390).


test('?- test_lex_info("Nobody paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("Nobody paints",[pronoun]),_169388).


test('?- test_lex_info("No one paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("No one paints",[pronoun]),_169388).


test('?- test_lex_info("Nothing paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("Nothing paints",[pronoun]),_169388).


test('?- test_lex_info("One paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("One paints",[pronoun]),_169388).


test('?- test_lex_info("Somebody paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Somebody paints",[pronoun]),_169390).


test('?- test_lex_info("Something paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Something paints",[pronoun]),_169390).


test('?- test_lex_info("Not anybody paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not anybody paints",[pronoun]),_169390).


test('?- test_lex_info("Not anyone paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not anyone paints",[pronoun]),_169390).


test('?- test_lex_info("Not anything paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not anything paints",[pronoun]),_169390).


test('?- test_lex_info("Not everybody paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not everybody paints",[pronoun]),_169390).


test('?- test_lex_info("Not everyone paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not everyone paints",[pronoun]),_169390).


test('?- test_lex_info("Not everything paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not everything paints",[pronoun]),_169390).


test('?- test_lex_info("Not nothing paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not nothing paints",[pronoun]),_169390).


test('?- test_lex_info("Not one paints",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("Not one paints",[pronoun]),_169388).


test('?- test_lex_info("Not somebody paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not somebody paints",[pronoun]),_169390).


test('?- test_lex_info("Not something paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("Not something paints",[pronoun]),_169390).


test('?- test_lex_info("She likes i",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("She likes i",[pronoun]),_169388).


test('?- test_lex_info("She likes me",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("She likes me",[pronoun]),_169388).


test('?- test_lex_info("She likes you",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("She likes you",[pronoun]),_169388).


test('?- test_lex_info("She likes it",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("She likes it",[pronoun]),_169388).


test('?- test_lex_info("She likes us",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("She likes us",[pronoun]),_169388).


test('?- test_lex_info("She likes them",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("She likes them",[pronoun]),_169388).


test('?- test_lex_info("She likes no one",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("She likes no one",[pronoun]),_169390).


test('?- test_lex_info("She likes none",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("She likes none",[pronoun]),_169388).


test('?- test_lex_info("She likes him",[pronoun])',[true(compound(_169388)),nondet]):-call(test_lex_info("She likes him",[pronoun]),_169388).


test('?- test_lex_info("She likes herself",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("She likes herself",[pronoun]),_169390).


test('?- test_lex_info("She likes himself",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("She likes himself",[pronoun]),_169390).


test('?- test_lex_info("It is us that paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("It is us that paints",[pronoun]),_169390).


test('?- test_lex_info("It is them that paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("It is them that paints",[pronoun]),_169390).


test('?- test_lex_info("It is he that paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("It is he that paints",[pronoun]),_169390).


test('?- test_lex_info("It is she that paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("It is she that paints",[pronoun]),_169390).


test('?- test_lex_info("It is her that paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("It is her that paints",[pronoun]),_169390).


test('?- test_lex_info("It is him that paints",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("It is him that paints",[pronoun]),_169390).


test('?- test_lex_info("We are us that paint",[pronoun])',[true(compound(_169390)),nondet]):-call(test_lex_info("We are us that paint",[pronoun]),_169390).


test('?- test_lex_info("We are all of us that paint",[pronoun])',[true(compound(_169392)),nondet]):-call(test_lex_info("We are all of us that paint",[pronoun]),_169392).


test('?- test_lex_info("It is everybody that paints",[pronoun])',[true(compound(_169392)),nondet]):-call(test_lex_info("It is everybody that paints",[pronoun]),_169392).


test('?- test_lex_info("Every man that paints likes monet.",[bratko])',[true(compound(_169394)),nondet]):-call(test_lex_info("Every man that paints likes monet.",[bratko]),_169394).


test('?- test_lex_info("A woman that admires John paints.",[bratko])',[true(compound(_169394)),nondet]):-call(test_lex_info("A woman that admires John paints.",[bratko]),_169394).


test('?- test_lex_info("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_169400)),nondet]):-call(test_lex_info("Every woman that likes a man that admires monet paints.",[bratko]),_169400).


test('?- test_lex_info("John likes Annie.",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("John likes Annie.",[bratko]),_169390).


test('?- test_lex_info("Annie likes a man that admires monet.",[bratko])',[true(compound(_169394)),nondet]):-call(test_lex_info("Annie likes a man that admires monet.",[bratko]),_169394).


test('?- test_lex_info("Bertrand Russell wrote principia.",[bratko])',[true(compound(_169394)),nondet]):-call(test_lex_info("Bertrand Russell wrote principia.",[bratko]),_169394).


test('?- test_lex_info("An author wrote principia.",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("An author wrote principia.",[bratko]),_169392).


test('?- test_lex_info("Iraq is a country.",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("Iraq is a country.",[bratko]),_169390).


test('?- test_lex_info("A happy author wrote principia.",[bratko])',[true(compound(_169394)),nondet]):-call(test_lex_info("A happy author wrote principia.",[bratko]),_169394).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_169390).


test('?- test_lex_info("Bertrand is an author.",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("Bertrand is an author.",[bratko]),_169390).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_169390).


test('?- test_lex_info("Every author is a programmer.",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("Every author is a programmer.",[bratko]),_169392).


test('?- test_lex_info("Is Bertrand an programmer?",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("Is Bertrand an programmer?",[bratko]),_169392).


test('?- test_lex_info("What is a author?",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("What is a author?",[bratko]),_169390).


test('?- test_lex_info("What did Bertrand write?",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("What did Bertrand write?",[bratko]),_169392).


test('?- test_lex_info("What is a book?",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("What is a book?",[bratko]),_169390).


test('?- test_lex_info("Principia is a book.",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("Principia is a book.",[bratko]),_169390).


test('?- test_lex_info("Bertrand is Bertrand.",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("Bertrand is Bertrand.",[bratko]),_169390).


test('?- test_lex_info("Shrdlu halts.",[bratko])',[true(compound(_169388)),nondet]):-call(test_lex_info("Shrdlu halts.",[bratko]),_169388).


test('?- test_lex_info("Every student wrote a program.",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("Every student wrote a program.",[bratko]),_169392).


test('?- test_lex_info("Terry writes a program.",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("Terry writes a program.",[bratko]),_169392).


test('?- test_lex_info("Terry writes a program that halts.",[bratko])',[true(compound(_169394)),nondet]):-call(test_lex_info("Terry writes a program that halts.",[bratko]),_169394).


test('?- test_lex_info("An author of every book wrote a program.",[bratko])',[true(compound(_169396)),nondet]):-call(test_lex_info("An author of every book wrote a program.",[bratko]),_169396).


test('?- test_lex_info("A man hapilly maried paints.",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("A man hapilly maried paints.",[bratko]),_169392).


test('?- test_lex_info("A hapilly maried man paints.",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("A hapilly maried man paints.",[bratko]),_169392).


test('?- test_lex_info("A man who knows paints.",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("A man who knows paints.",[bratko]),_169392).


test('?- test_lex_info("A man gives something.",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("A man gives something.",[bratko]),_169390).


test('?- test_lex_info("A man gives his word.",[bratko])',[true(compound(_169390)),nondet]):-call(test_lex_info("A man gives his word.",[bratko]),_169390).


test('?- test_lex_info("A man of his word paints.",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("A man of his word paints.",[bratko]),_169392).


test('?- test_lex_info("A man paints.",[bratko])',[true(compound(_169388)),nondet]):-call(test_lex_info("A man paints.",[bratko]),_169388).


test('?- test_lex_info("A man that paints paints.",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("A man that paints paints.",[bratko]),_169392).


test('?- test_lex_info("A man walks.",[bratko])',[true(compound(_169388)),nondet]):-call(test_lex_info("A man walks.",[bratko]),_169388).


test('?- test_lex_info("A man that walks paints.",[bratko])',[true(compound(_169392)),nondet]):-call(test_lex_info("A man that walks paints.",[bratko]),_169392).


test('?- test_lex_info("It halts.",[bratko])',[true(compound(_169388)),nondet]):-call(test_lex_info("It halts.",[bratko]),_169388).


test('?- test_lex_info("A man of his word that walks paints.",[bratko])',[true(compound(_169394)),nondet]):-call(test_lex_info("A man of his word that walks paints.",[bratko]),_169394).


test('?- test_lex_info("The cost of what the product is changes.",[bratko])',[true(compound(_169396)),nondet]):-call(test_lex_info("The cost of what the product is changes.",[bratko]),_169396).


test('?- test_lex_info("We need a virtual machine server.",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("We need a virtual machine server.",[aindy]),_169394).


test('?- test_lex_info("The virtual machine server should have several VMs.",[aindy])',[true(compound(_169398)),nondet]):-call(test_lex_info("The virtual machine server should have several VMs.",[aindy]),_169398).


test('?- test_lex_info("One VM should be the POSI VM.",[aindy])',[true(compound(_169392)),nondet]):-call(test_lex_info("One VM should be the POSI VM.",[aindy]),_169392).


test('?- test_lex_info("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("One VM should be the FRDCSA.org VM.",[aindy]),_169394).


test('?- test_lex_info("One VM should be the mail server.",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("One VM should be the mail server.",[aindy]),_169394).


test('?- test_lex_info("One computer should be the backup server.",[aindy])',[true(compound(_169396)),nondet]):-call(test_lex_info("One computer should be the backup server.",[aindy]),_169396).


test('?- test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_169412)),nondet]):-call(test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_169412).


test('?- test_lex_info("I need a fast computer for work.",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("I need a fast computer for work.",[aindy]),_169394).


test('?- test_lex_info("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_169404)),nondet]):-call(test_lex_info("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_169404).


test('?- test_lex_info("I need a dedicated computer for network security research.",[aindy])',[true(compound(_169400)),nondet]):-call(test_lex_info("I need a dedicated computer for network security research.",[aindy]),_169400).


test('?- test_lex_info("I need a machine to run Tails on.",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("I need a machine to run Tails on.",[aindy]),_169394).


test('?- test_lex_info("I need a machine off the network for airgap security.",[aindy])',[true(compound(_169398)),nondet]):-call(test_lex_info("I need a machine off the network for airgap security.",[aindy]),_169398).


test('?- test_lex_info("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_169404)),nondet]):-call(test_lex_info("One VM should be the game server for running game development projects.",[aindy]),_169404).


test('?- test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_169398)),nondet]):-call(test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_169398).


test('?- test_lex_info("I could read about how to build a private watson.",[aindy])',[true(compound(_169398)),nondet]):-call(test_lex_info("I could read about how to build a private watson.",[aindy]),_169398).


test('?- test_lex_info("Need backups.",[aindy])',[true(compound(_169388)),nondet]):-call(test_lex_info("Need backups.",[aindy]),_169388).


test('?- test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_169402)),nondet]):-call(test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy]),_169402).


test('?- test_lex_info("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_169400)),nondet]):-call(test_lex_info("Set up schedules for updating the software on all machines.",[aindy]),_169400).


test('?- test_lex_info("Read books on server room layout.",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("Read books on server room layout.",[aindy]),_169394).


test('?- test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_169402)),nondet]):-call(test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_169402).


test('?- test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_169404)),nondet]):-call(test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_169404).


test('?- test_lex_info("I want a gaming computer.  Do I?",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("I want a gaming computer.  Do I?",[aindy]),_169394).


test('?- test_lex_info("I want a windows 7 computer for work.",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("I want a windows 7 computer for work.",[aindy]),_169394).


test('?- test_lex_info("I want a fast linux computer for work.",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("I want a fast linux computer for work.",[aindy]),_169394).


test('?- test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_169414)),nondet]):-call(test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_169414).


test('?- test_lex_info("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_169400)),nondet]):-call(test_lex_info("I could install a fresh operating system on justin for work.",[aindy]),_169400).


test('?- test_lex_info("I probably want a separate git computer.",[aindy])',[true(compound(_169396)),nondet]):-call(test_lex_info("I probably want a separate git computer.",[aindy]),_169396).


test('?- test_lex_info("I need to start buying servers.",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("I need to start buying servers.",[aindy]),_169394).


test('?- test_lex_info("I want a rackmount case for servers.",[aindy])',[true(compound(_169394)),nondet]):-call(test_lex_info("I want a rackmount case for servers.",[aindy]),_169394).


test('?- test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_169400)),nondet]):-call(test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)]),_169400).


test('?- test_lex_info("2 oceans border each african country.",[chat80(tell)])',[true(compound(_169398)),nondet]):-call(test_lex_info("2 oceans border each african country.",[chat80(tell)]),_169398).


test('?- test_lex_info("There are 10 large cars.",[quants])',[true(compound(_169392)),nondet]):-call(test_lex_info("There are 10 large cars.",[quants]),_169392).


test('?- test_lex_info("There are 10 oceans.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("There are 10 oceans.",[quants]),_169390).


test('?- test_lex_info("There are 10 women.",[quants])',[true(compound(_169390)),nondet]):-call(test_lex_info("There are 10 women.",[quants]),_169390).


test('?- test_lex_info("An ocean borders an African country.",[chat80(tell)])',[true(compound(_169398)),nondet]):-call(test_lex_info("An ocean borders an African country.",[chat80(tell)]),_169398).


test('?- test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_169406)),nondet]):-call(test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell]),_169406).


test('?- test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_169408)),nondet]):-call(test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_169408).


test('?- test_lex_info("Bertrand wrote a book.",[bratko(book)])',[true(compound(_169394)),nondet]):-call(test_lex_info("Bertrand wrote a book.",[bratko(book)]),_169394).


test('?- test_lex_info("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_169396)),nondet]):-call(test_lex_info("Bertrand wrote nothing.",[bratko(book)]),_169396).


test('?- test_lex_info("Bertrand wrote.",[bratko(book)])',[true(compound(_169394)),nondet]):-call(test_lex_info("Bertrand wrote.",[bratko(book)]),_169394).


test('?- test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_169398)),nondet]):-call(test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)]),_169398).


test('?- test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_169396)),nondet]):-call(test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)]),_169396).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_169398)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_169398).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_169400)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_169400).


test('?- test_lex_info("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_169398)),nondet]):-call(test_lex_info("What did alfred write to Bertrand?",[bratko(book)]),_169398).


test('?- test_lex_info("Alfred wrote a letter.",[bratko(book)])',[true(compound(_169394)),nondet]):-call(test_lex_info("Alfred wrote a letter.",[bratko(book)]),_169394).


test('?- test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_169398)),nondet]):-call(test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)]),_169398).


test('?- test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_169398)),nondet]):-call(test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)]),_169398).


test('?- test_lex_info("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_169396)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand.",[bratko(book)]),_169396).


test('?- test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_169398)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)]),_169398).


test('?- test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_169398)),nondet]):-call(test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)]),_169398).


test('?- test_lex_info("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_169398)),nondet]):-call(test_lex_info("Who did alfred write a letter to?",[bratko(book)]),_169398).


test('?- test_lex_info("Alfred gave it.",[bratko(book)])',[true(compound(_169394)),nondet]):-call(test_lex_info("Alfred gave it.",[bratko(book)]),_169394).


test('?- test_lex_info("Alfred gave a book.",[bratko(book)])',[true(compound(_169394)),nondet]):-call(test_lex_info("Alfred gave a book.",[bratko(book)]),_169394).


test('?- test_lex_info("a pride of lions paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a pride of lions paint",[of]),_169390).


test('?- test_lex_info("a flock of birds paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a flock of birds paint",[of]),_169390).


test('?- test_lex_info("a litter of pups paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a litter of pups paint",[of]),_169390).


test('?- test_lex_info("a prickle of porcupines paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a prickle of porcupines paint",[of]),_169392).


test('?- test_lex_info("a litter of cubs paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a litter of cubs paint",[of]),_169390).


test('?- test_lex_info("a pack of dogs paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a pack of dogs paint",[of]),_169390).


test('?- test_lex_info("a colony of beavers paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a colony of beavers paint",[of]),_169392).


test('?- test_lex_info("a gaggle of geese paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a gaggle of geese paint",[of]),_169392).


test('?- test_lex_info("a family of otters paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a family of otters paint",[of]),_169392).


test('?- test_lex_info("a huddle of walruses paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a huddle of walruses paint",[of]),_169392).


test('?- test_lex_info("a herd of deer paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a herd of deer paint",[of]),_169390).


test('?- test_lex_info("a culture of bacteria paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a culture of bacteria paint",[of]),_169392).


test('?- test_lex_info("a swarm of bees paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a swarm of bees paint",[of]),_169390).


test('?- test_lex_info("a bed of clams paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a bed of clams paint",[of]),_169390).


test('?- test_lex_info("a school of cod paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a school of cod paint",[of]),_169390).


test('?- test_lex_info("a herd of dinosaurs paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a herd of dinosaurs paint",[of]),_169392).


test('?- test_lex_info("a mess of iguanas paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a mess of iguanas paint",[of]),_169392).


test('?- test_lex_info("a mob of wombats paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a mob of wombats paint",[of]),_169390).


test('?- test_lex_info("a pod of pelicans paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a pod of pelicans paint",[of]),_169392).


test('?- test_lex_info("a troop of boy scouts paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a troop of boy scouts paint",[of]),_169392).


test('?- test_lex_info("a team of athletes paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a team of athletes paint",[of]),_169392).


test('?- test_lex_info("a panel of experts paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a panel of experts paint",[of]),_169392).


test('?- test_lex_info("a crew of sailors paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a crew of sailors paint",[of]),_169392).


test('?- test_lex_info("a band of robbers paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a band of robbers paint",[of]),_169392).


test('?- test_lex_info("a troupe of performers paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a troupe of performers paint",[of]),_169392).


test('?- test_lex_info("a crowd of onlookers paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a crowd of onlookers paint",[of]),_169392).


test('?- test_lex_info("a curse of painters paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("a curse of painters paint",[of]),_169392).


test('?- test_lex_info("a fleet of cars paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a fleet of cars paint",[of]),_169390).


test('?- test_lex_info("a pair of shoes paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a pair of shoes paint",[of]),_169390).


test('?- test_lex_info("a fleet of ships paint",[of])',[true(compound(_169390)),nondet]):-call(test_lex_info("a fleet of ships paint",[of]),_169390).


test('?- test_lex_info("an anthology of stories paint",[of])',[true(compound(_169392)),nondet]):-call(test_lex_info("an anthology of stories paint",[of]),_169392).


test('?- test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_246366)),nondet]):-call(test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_246366).


test('?- test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_246336)),nondet]):-call(test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_246336).


test('?- test_lex_info("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_246474)),nondet]):-call(test_lex_info("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_246474).


test('?- test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_246318)),nondet]):-call(test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_246318).


test('?- test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_246366)),nondet]):-call(test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_246366).


test('?- test_lex_info("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_246462)),nondet]):-call(test_lex_info("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_246462).


test('?- test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_246420)),nondet]):-call(test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_246420).


test('?- test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_246612)),nondet]):-call(test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_246612).


test('?- test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_246384)),nondet]):-call(test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest]),_246384).


test('?- test_lex_info("Logged on player character",[descriptionTest])',[true(compound(_246192)),nondet]):-call(test_lex_info("Logged on player character",[descriptionTest]),_246192).


test('?- test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_246450)),nondet]):-call(test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_246450).


test('?- test_lex_info("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_246396)),nondet]):-call(test_lex_info("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_246396).


test('?- test_lex_info("Wesley is her son",[descriptionTest])',[true(compound(_246138)),nondet]):-call(test_lex_info("Wesley is her son",[descriptionTest]),_246138).


test('?- test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_246786)),nondet]):-call(test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_246786).


test('?- test_lex_info("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_246216)),nondet]):-call(test_lex_info("Counselor Deanna Troi is here",[descriptionTest]),_246216).


test('?- test_lex_info("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_246312)),nondet]):-call(test_lex_info("Counselor Troi is the ship's main counselor",[descriptionTest]),_246312).


test('?- test_lex_info("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_246468)),nondet]):-call(test_lex_info("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_246468).


test('?- test_lex_info("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_246342)),nondet]):-call(test_lex_info("Commander William Riker is here, staring at you",[descriptionTest]),_246342).


test('?- test_lex_info("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_246348)),nondet]):-call(test_lex_info("Commander Riker is the Enterprise's first officer",[descriptionTest]),_246348).


test('?- test_lex_info("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_246318)),nondet]):-call(test_lex_info("He's in charge of keeping the crew in line",[descriptionTest]),_246318).


test('?- test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_246384)),nondet]):-call(test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_246384).


test('?- test_lex_info("Captain Picard is a very important man",[descriptionTest])',[true(compound(_246282)),nondet]):-call(test_lex_info("Captain Picard is a very important man",[descriptionTest]),_246282).


test('?- test_lex_info("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_246384)),nondet]):-call(test_lex_info("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_246384).


test('?- test_lex_info("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_246228)),nondet]):-call(test_lex_info("He's very smart, and very wise",[descriptionTest]),_246228).


test('?- test_lex_info("Don\'t mess with him!",[descriptionTest])',[true(compound(_246156)),nondet]):-call(test_lex_info("Don't mess with him!",[descriptionTest]),_246156).


test('?- test_lex_info("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_246234)),nondet]):-call(test_lex_info("Guinan is here, tending the bar",[descriptionTest]),_246234).


test('?- test_lex_info("Guinan is a strange being",[descriptionTest])',[true(compound(_246192)),nondet]):-call(test_lex_info("Guinan is a strange being",[descriptionTest]),_246192).


test('?- test_lex_info("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_246900)),nondet]):-call(test_lex_info("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_246900).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_246402)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_246402).


test('?- test_lex_info("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_246402)),nondet]):-call(test_lex_info("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_246402).


test('?- test_lex_info("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_246702)),nondet]):-call(test_lex_info("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_246702).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_246396)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_246396).


test('?- test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_246420)),nondet]):-call(test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_246420).


test('?- test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_246690)),nondet]):-call(test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_246690).


test('?- test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_246612)),nondet]):-call(test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_246612).


test('?- test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_246402)),nondet]):-call(test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_246402).


test('?- test_lex_info("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_246282)),nondet]):-call(test_lex_info("Livingston is Captain Picard's pet fish",[descriptionTest]),_246282).


test('?- test_lex_info("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_246534)),nondet]):-call(test_lex_info("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_246534).


test('?- test_lex_info("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_246384)),nondet]):-call(test_lex_info("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_246384).


test('?- test_lex_info("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_246252)),nondet]):-call(test_lex_info("Spot is Data's orange coloured cat",[descriptionTest]),_246252).


test('?- test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_246774)),nondet]):-call(test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_246774).


test('?- test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_246396)),nondet]):-call(test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest]),_246396).


test('?- test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_246378)),nondet]):-call(test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_246378).


test('?- test_lex_info("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_246720)),nondet]):-call(test_lex_info("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_246720).


test('?- test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_246366)),nondet]):-call(test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_246366).


test('?- test_lex_info("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_246234)),nondet]):-call(test_lex_info("Alexander Rozhenko is Worf's son",[descriptionTest]),_246234).


test('?- test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_246516)),nondet]):-call(test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_246516).


test('?- test_lex_info("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_246432)),nondet]):-call(test_lex_info("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_246432).


test('?- test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_246378)),nondet]):-call(test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest]),_246378).


test('?- test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_246780)),nondet]):-call(test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_246780).


test('?- test_lex_info("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_246258)),nondet]):-call(test_lex_info("A large phaser rifle is lying here",[descriptionTest]),_246258).


test('?- test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_246852)),nondet]):-call(test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_246852).


test('?- test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_246456)),nondet]):-call(test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_246456).


test('?- test_lex_info("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246804)),nondet]):-call(test_lex_info("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246804).


test('?- test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_246456)),nondet]):-call(test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_246456).


test('?- test_lex_info("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246828)),nondet]):-call(test_lex_info("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246828).


test('?- test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_246432)),nondet]):-call(test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_246432).


test('?- test_lex_info("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246804)),nondet]):-call(test_lex_info("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246804).


test('?- test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_246354)),nondet]):-call(test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest]),_246354).


test('?- test_lex_info("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_246894)),nondet]):-call(test_lex_info("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_246894).


test('?- test_lex_info("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_246324)),nondet]):-call(test_lex_info("A Starfleet communication badge is lying here",[descriptionTest]),_246324).


test('?- test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_247362)),nondet]):-call(test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_247362).


test('?- test_lex_info("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_246318)),nondet]):-call(test_lex_info("Worf's silver chain sash has been left here",[descriptionTest]),_246318).


test('?- test_lex_info("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_246930)),nondet]):-call(test_lex_info("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_246930).


test('?- test_lex_info("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_246210)),nondet]):-call(test_lex_info("Geordi's VISOR is lying here",[descriptionTest]),_246210).


test('?- test_lex_info("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_247602)),nondet]):-call(test_lex_info("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_247602).


test('?- test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_246378)),nondet]):-call(test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_246378).


test('?- test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_247164)),nondet]):-call(test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_247164).


test('?- test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_246312)),nondet]):-call(test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest]),_246312).


test('?- test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_246966)),nondet]):-call(test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_246966).


test('?- test_lex_info("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_246324)),nondet]):-call(test_lex_info("Captain Picard's wooden flute is sitting here",[descriptionTest]),_246324).


test('?- test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_246936)),nondet]):-call(test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_246936).


test('?- test_lex_info("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_246336)),nondet]):-call(test_lex_info("Commander Riker's trombone has been placed here",[descriptionTest]),_246336).


test('?- test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_246768)),nondet]):-call(test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_246768).


test('?- test_lex_info("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_246264)),nondet]):-call(test_lex_info("A small cup of tea is sitting here",[descriptionTest]),_246264).


test('?- test_lex_info("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_246282)),nondet]):-call(test_lex_info("A bottle of synthehol is standing here",[descriptionTest]),_246282).


test('?- test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_246294)),nondet]):-call(test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest]),_246294).


test('?- test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_246318)),nondet]):-call(test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_246318).


test('?- test_lex_info("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_246330)),nondet]):-call(test_lex_info("A small glass of prune juice is sitting here",[descriptionTest]),_246330).


test('?- test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_246300)),nondet]):-call(test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest]),_246300).


test('?- test_lex_info("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_246372)),nondet]):-call(test_lex_info("You find yourself in the middle of main engineering",[descriptionTest]),_246372).


test('?- test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_246492)),nondet]):-call(test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_246492).


test('?- test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_246792)),nondet]):-call(test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_246792).


test('?- test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_246600)),nondet]):-call(test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_246600).


test('?- test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_246528)),nondet]):-call(test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_246528).


test('?- test_lex_info("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_246708)),nondet]):-call(test_lex_info("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_246708).


test('?- test_lex_info("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_246300)),nondet]):-call(test_lex_info("You're in the middle of Geordi's quarters",[descriptionTest]),_246300).


test('?- test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_246498)),nondet]):-call(test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_246498).


test('?- test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_246822)),nondet]):-call(test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_246822).


test('?- test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_246432)),nondet]):-call(test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest]),_246432).


test('?- test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_246402)),nondet]):-call(test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_246402).


test('?- test_lex_info("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_246288)),nondet]):-call(test_lex_info("You're in the middle of Data's quarters",[descriptionTest]),_246288).


test('?- test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_247350)),nondet]):-call(test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_247350).


test('?- test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_246564)),nondet]):-call(test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_246564).


test('?- test_lex_info("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_246588)),nondet]):-call(test_lex_info("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_246588).


test('?- test_lex_info("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_246216)),nondet]):-call(test_lex_info("You're in the dimly lit Brig",[descriptionTest]),_246216).


test('?- test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_246606)),nondet]):-call(test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_246606).


test('?- test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_246684)),nondet]):-call(test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_246684).


test('?- test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_246978)),nondet]):-call(test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_246978).


test('?- test_lex_info(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_253206)),nondet]):-call(test_lex_info('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_253206).


test('?- test_lex_info("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_246690)),nondet]):-call(test_lex_info("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_246690).


test('?- test_lex_info("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_246294)),nondet]):-call(test_lex_info("You're in the Enterprise transporter room",[descriptionTest]),_246294).


test('?- test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_246780)),nondet]):-call(test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_246780).


test('?- test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_246750)),nondet]):-call(test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_246750).


test('?- test_lex_info("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_246288)),nondet]):-call(test_lex_info("You find yourself in a transporter beam",[descriptionTest]),_246288).


test('?- test_lex_info("All you can see is blue flashing light",[descriptionTest])',[true(compound(_246288)),nondet]):-call(test_lex_info("All you can see is blue flashing light",[descriptionTest]),_246288).


test('?- test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_246444)),nondet]):-call(test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest]),_246444).


test('?- test_lex_info("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_246564)),nondet]):-call(test_lex_info("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_246564).


test('?- test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_246492)),nondet]):-call(test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest]),_246492).


test('?- test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_246870)),nondet]):-call(test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_246870).


test('?- test_lex_info("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_246624)),nondet]):-call(test_lex_info("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_246624).


test('?- test_lex_info("You\'re in the turbolift",[descriptionTest])',[true(compound(_246174)),nondet]):-call(test_lex_info("You're in the turbolift",[descriptionTest]),_246174).


test('?- test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_246552)),nondet]):-call(test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_246552).


test('?- test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_246444)),nondet]):-call(test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest]),_246444).


test('?- test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_246432)),nondet]):-call(test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest]),_246432).


test('?- test_lex_info("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_246186)),nondet]):-call(test_lex_info("You're now on Holodeck 2",[descriptionTest]),_246186).


test('?- test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_246870)),nondet]):-call(test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_246870).


test('?- test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_246618)),nondet]):-call(test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_246618).


test('?- test_lex_info("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_246312)),nondet]):-call(test_lex_info("Right now, this holodeck is not functioning",[descriptionTest]),_246312).


test('?- test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_246420)),nondet]):-call(test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_246420).


test('?- test_lex_info("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_246342)),nondet]):-call(test_lex_info("You're in the main cargo bay of the Enterprise",[descriptionTest]),_246342).


test('?- test_lex_info("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_246552)),nondet]):-call(test_lex_info("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_246552).


test('?- test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_246870)),nondet]):-call(test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_246870).


test('?- test_lex_info("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_246246)),nondet]):-call(test_lex_info("You've arrived in Riker's quarters",[descriptionTest]),_246246).


test('?- test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_246822)),nondet]):-call(test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_246822).


test('?- test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_246756)),nondet]):-call(test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_246756).


test('?- test_lex_info("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_246360)),nondet]):-call(test_lex_info("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_246360).


test('?- test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_246996)),nondet]):-call(test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_246996).


test('?- test_lex_info("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_246792)),nondet]):-call(test_lex_info("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_246792).


test('?- test_lex_info("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_246264)),nondet]):-call(test_lex_info("You emerge into a dark narrow alley",[descriptionTest]),_246264).


test('?- test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_246408)),nondet]):-call(test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest]),_246408).


test('?- test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_246672)),nondet]):-call(test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_246672).


test('?- test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_246708)),nondet]):-call(test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_246708).


test('?- test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_246444)),nondet]):-call(test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_246444).


test('?- test_lex_info("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_246348)),nondet]):-call(test_lex_info("The archway leading out of the holodeck is west",[descriptionTest]),_246348).


test('?- test_lex_info("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_246252)),nondet]):-call(test_lex_info("You're in Doctor Crusher's quarters",[descriptionTest]),_246252).


test('?- test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_246648)),nondet]):-call(test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_246648).


test('?- test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_246738)),nondet]):-call(test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_246738).


test('?- test_lex_info("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_246480)),nondet]):-call(test_lex_info("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_246480).


test('?- test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_247104)),nondet]):-call(test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_247104).


test('?- test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_246576)),nondet]):-call(test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_246576).


test('?- test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_246972)),nondet]):-call(test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_246972).


test('?- test_lex_info("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_246444)),nondet]):-call(test_lex_info("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_246444).


test('?- test_lex_info("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_246372)),nondet]):-call(test_lex_info("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_246372).


test('?- test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_247266)),nondet]):-call(test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_247266).


test('?- test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_246444)),nondet]):-call(test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_246444).


test('?- test_lex_info("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_246354)),nondet]):-call(test_lex_info("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_246354).


test('?- test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_246546)),nondet]):-call(test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_246546).


test('?- test_lex_info("A large grey door leads into space",[descriptionTest])',[true(compound(_246258)),nondet]):-call(test_lex_info("A large grey door leads into space",[descriptionTest]),_246258).


test('?- test_lex_info("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_246444)),nondet]):-call(test_lex_info("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_246444).


test('?- test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_246516)),nondet]):-call(test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest]),_246516).


test('?- test_lex_info("You feel very cold",[descriptionTest])',[true(compound(_246144)),nondet]):-call(test_lex_info("You feel very cold",[descriptionTest]),_246144).


test('?- test_lex_info("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_246414)),nondet]):-call(test_lex_info("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_246414).


test('?- test_lex_info("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_246300)),nondet]):-call(test_lex_info("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_246300).


test('?- test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_246912)),nondet]):-call(test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_246912).


test('?- test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_246636)),nondet]):-call(test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_246636).


test('?- test_lex_info("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_246186)),nondet]):-call(test_lex_info("You're in Worf's quarters",[descriptionTest]),_246186).


test('?- test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_246630)),nondet]):-call(test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_246630).


test('?- test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_247044)),nondet]):-call(test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_247044).


test('?- test_lex_info("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_246252)),nondet]):-call(test_lex_info("You emerge into the Enterprise gym",[descriptionTest]),_246252).


test('?- test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_246354)),nondet]):-call(test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest]),_246354).


test('?- test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_246762)),nondet]):-call(test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_246762).


test('?- test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_246726)),nondet]):-call(test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_246726).


test('?- test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_246414)),nondet]):-call(test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_246414).


test('?- test_lex_info("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_246480)),nondet]):-call(test_lex_info("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_246480).


test('?- test_lex_info("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_246570)),nondet]):-call(test_lex_info("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_246570).


test('?- test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_246864)),nondet]):-call(test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_246864).


test('?- test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_246882)),nondet]):-call(test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_246882).


test('?- test_lex_info("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_246336)),nondet]):-call(test_lex_info("Two large windows offer a great view of space",[descriptionTest]),_246336).


test('?- test_lex_info("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_246588)),nondet]):-call(test_lex_info("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_246588).


test('?- test_lex_info("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_246264)),nondet]):-call(test_lex_info("You're in the Enterprise science lab",[descriptionTest]),_246264).


test('?- test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_246654)),nondet]):-call(test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_246654).


test('?- test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_247152)),nondet]):-call(test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_247152).


test('?- test_lex_info("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_246408)),nondet]):-call(test_lex_info("A complex looking computer console is facing this machine",[descriptionTest]),_246408).


test('?- test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_246564)),nondet]):-call(test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_246564).


test('?- test_lex_info("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_246324)),nondet]):-call(test_lex_info("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_246324).


test('?- test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_246558)),nondet]):-call(test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_246558).


test('?- test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_246930)),nondet]):-call(test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_246930).


test('?- test_lex_info("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_246732)),nondet]):-call(test_lex_info("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_246732).


test('?- test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_247128)),nondet]):-call(test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_247128).


test('?- test_lex_info("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_246330)),nondet]):-call(test_lex_info("You're standing in Captain Picard's ready room",[descriptionTest]),_246330).


test('?- test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_246768)),nondet]):-call(test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_246768).


test('?- test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_246672)),nondet]):-call(test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_246672).


test('?- test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_246870)),nondet]):-call(test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_246870).


test('?- test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_246450)),nondet]):-call(test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest]),_246450).


test('?- test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_246558)),nondet]):-call(test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_246558).


test('?- test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_246870)),nondet]):-call(test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_246870).


test('?- test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_246678)),nondet]):-call(test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_246678).


test('?- test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_246474)),nondet]):-call(test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_246474).


test('?- test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_246822)),nondet]):-call(test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_246822).


test('?- test_lex_info("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_246420)),nondet]):-call(test_lex_info("This is where the ship's pilot and information officer sit",[descriptionTest]),_246420).


test('?- test_lex_info("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_246342)),nondet]):-call(test_lex_info("You're in the conference room of the Enterprise",[descriptionTest]),_246342).


test('?- test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_246888)),nondet]):-call(test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_246888).


test('?- test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_246510)),nondet]):-call(test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_246510).


test('?- test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_246606)),nondet]):-call(test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_246606).


test('?- test_lex_info("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_246438)),nondet]):-call(test_lex_info("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_246438).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_169400)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_169400).


test('?- test_lex_info("no two owners eat pizza",[sanity])',[true(compound(_169392)),nondet]):-call(test_lex_info("no two owners eat pizza",[sanity]),_169392).


test('?- test_lex_info("no three owners eat pizza",[sanity])',[true(compound(_169392)),nondet]):-call(test_lex_info("no three owners eat pizza",[sanity]),_169392).


test('?- test_lex_info("no three owners eat the same pizza",[sanity])',[true(compound(_169394)),nondet]):-call(test_lex_info("no three owners eat the same pizza",[sanity]),_169394).


test('?- test_lex_info("no three owners eat the same kind of pizza",[sanity])',[true(compound(_169396)),nondet]):-call(test_lex_info("no three owners eat the same kind of pizza",[sanity]),_169396).


test('?- test_lex_info("no owners eat the same pizza",[sanity])',[true(compound(_169392)),nondet]):-call(test_lex_info("no owners eat the same pizza",[sanity]),_169392).


test('?- test_lex_info("no owners eat the same kind of pizza",[sanity])',[true(compound(_169394)),nondet]):-call(test_lex_info("no owners eat the same kind of pizza",[sanity]),_169394).


test('?- test_lex_info("there are 5 houses",[sanity])',[true(compound(_169390)),nondet]):-call(test_lex_info("there are 5 houses",[sanity]),_169390).


test('?- test_lex_info("there are not 5 houses",[sanity])',[true(compound(_169390)),nondet]):-call(test_lex_info("there are not 5 houses",[sanity]),_169390).


test('?- test_lex_info("there are not zero houses",[sanity])',[true(compound(_169392)),nondet]):-call(test_lex_info("there are not zero houses",[sanity]),_169392).


test('?- test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_169400)),nondet]):-call(test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug]),_169400).


test('?- test_lex_info(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_169394)),nondet]):-call(test_lex_info(noun_phrase("at most the 5 owners"),[sanity]),_169394).


test('?- test_lex_info(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_169394)),nondet]):-call(test_lex_info(noun_phrase("at most 5 owners"),[sanity]),_169394).


test('?- test_lex_info(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_169394)),nondet]):-call(test_lex_info(noun_phrase("less than 3 owners"),[sanity]),_169394).


test('?- test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_169396)),nondet]):-call(test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity]),_169396).


test('?- test_lex_info(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_169400)),nondet]):-call(test_lex_info(noun_phrase("no three owners"),[sanity,no_working]),_169400).


test('?- test_lex_info("terry writes a non-program.",[tell])',[true(compound(_169392)),nondet]):-call(test_lex_info("terry writes a non-program.",[tell]),_169392).


test('?- test_lex_info("every nonhuman programmer writes a program.",[tell])',[true(compound(_169396)),nondet]):-call(test_lex_info("every nonhuman programmer writes a program.",[tell]),_169396).


test('?- test_lex_info("every human programmer writes a not a program.",[tell])',[true(compound(_169396)),nondet]):-call(test_lex_info("every human programmer writes a not a program.",[tell]),_169396).


test('?- test_lex_info("every human programmer happily writes a not a program.",[tell])',[true(compound(_169398)),nondet]):-call(test_lex_info("every human programmer happily writes a not a program.",[tell]),_169398).


:- end_tests(test_lex_info).



:- begin_tests(chat80).



test('?- chat80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_169440)),nondet]):-call(chat80("His friends are liked by hers.",[bad_juju,sanity]),_169440).


test('?- chat80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_169442)),nondet]):-call(chat80("Her friends are not liked by his.",[bad_juju,sanity]),_169442).


test('?- chat80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_169442)),nondet]):-call(chat80("Do their friends like each other?",[bad_juju,feature]),_169442).


test('?- chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_169384),sanity])',[true(compound(_169446)),nondet]):-call(chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_169384),sanity]),_169446).


test('?- chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_169382),sanity])',[true(compound(_169444)),nondet]):-call(chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_169382),sanity]),_169444).


test('?- chat80("There are 5 houses with five different colors.",[riddle(_169386),sanity])',[true(compound(_169448)),nondet]):-call(chat80("There are 5 houses with five different colors.",[riddle(_169386),sanity]),_169448).


test('?- chat80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_169438)),nondet]):-call(chat80("There are 5 houses",[riddle_prep,sanity]),_169438).


test('?- chat80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_169442)),nondet]):-call(chat80("Each house has a different color",[riddle_prep,sanity]),_169442).


test('?- chat80("In each house lives a person with a different nationality.",[riddle(_169390),sanity])',[true(compound(_169452)),nondet]):-call(chat80("In each house lives a person with a different nationality.",[riddle(_169390),sanity]),_169452).


test('?- chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_169464)),nondet]):-call(chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_169464).


test('?- chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_169452)),nondet]):-call(chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_169452).


test('?- chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_169450)),nondet]):-call(chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_169450).


test('?- chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_169454)),nondet]):-call(chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_169454).


test('?- chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_169458)),nondet]):-call(chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_169458).


test('?- chat80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_169450)),nondet]):-call(chat80("No owners have the same pet.",[riddle(1),sanity,regression]),_169450).


test('?- chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_169454)),nondet]):-call(chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_169454).


test('?- chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_169448)),nondet]):-call(chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_169448).


test('?- chat80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_169452)),nondet]):-call(chat80("No two owners have the same pet.",[riddle(1),sanity,regression]),_169452).


test('?- chat80("The brit lives in the red house.",[riddle(_169384),sanity])',[true(compound(_169446)),nondet]):-call(chat80("The brit lives in the red house.",[riddle(_169384),sanity]),_169446).


test('?- chat80("The swede keeps dogs as pets.",[riddle(_169382),sanity])',[true(compound(_169444)),nondet]):-call(chat80("The swede keeps dogs as pets.",[riddle(_169382),sanity]),_169444).


test('?- chat80("A dane drinks tea.",[riddle(_169380),sanity])',[true(compound(_169442)),nondet]):-call(chat80("A dane drinks tea.",[riddle(_169380),sanity]),_169442).


test('?- chat80("The green house is on the left of the white house.",[riddle(_169388),sanity])',[true(compound(_169450)),nondet]):-call(chat80("The green house is on the left of the white house.",[riddle(_169388),sanity]),_169450).


test('?- chat80("The green house\'s owner drinks coffee.",[riddle(_169384),sanity])',[true(compound(_169446)),nondet]):-call(chat80("The green house's owner drinks coffee.",[riddle(_169384),sanity]),_169446).


test('?- chat80("The person who smokes Pall Mall rears birds.",[riddle(_169386),sanity,regression])',[true(compound(_169454)),nondet]):-call(chat80("The person who smokes Pall Mall rears birds.",[riddle(_169386),sanity,regression]),_169454).


test('?- chat80("The owner of the yellow house smokes Dunhill.",[riddle(_169386),sanity])',[true(compound(_169448)),nondet]):-call(chat80("The owner of the yellow house smokes Dunhill.",[riddle(_169386),sanity]),_169448).


test('?- chat80("The man living in the center house drinks milk.",[riddle(_169388),sanity])',[true(compound(_169450)),nondet]):-call(chat80("The man living in the center house drinks milk.",[riddle(_169388),sanity]),_169450).


test('?- chat80("The Norwegian lives in the first house .",[riddle(_169386),sanity])',[true(compound(_169448)),nondet]):-call(chat80("The Norwegian lives in the first house .",[riddle(_169386),sanity]),_169448).


test('?- chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_169392),sanity])',[true(compound(_169454)),nondet]):-call(chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_169392),sanity]),_169454).


test('?- chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_169392),sanity])',[true(compound(_169454)),nondet]):-call(chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_169392),sanity]),_169454).


test('?- chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_169386),sanity])',[true(compound(_169448)),nondet]):-call(chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_169386),sanity]),_169448).


test('?- chat80("The German smokes Prince.",[riddle(_169382),sanity])',[true(compound(_169444)),nondet]):-call(chat80("The German smokes Prince.",[riddle(_169382),sanity]),_169444).


test('?- chat80("The Norwegian lives next to the blue house.",[riddle(_169386),sanity])',[true(compound(_169448)),nondet]):-call(chat80("The Norwegian lives next to the blue house.",[riddle(_169386),sanity]),_169448).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_169390),sanity])',[true(compound(_169452)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_169390),sanity]),_169452).


test('?- chat80("Who owns the fish?",[riddle(_169380),sanity])',[true(compound(_169442)),nondet]):-call(chat80("Who owns the fish?",[riddle(_169380),sanity]),_169442).


test('?- chat80("One woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("One woman paints.",[quants]),_169432).


test('?- chat80("No woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("No woman paints.",[quants]),_169432).


test('?- chat80("Some woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Some woman paints.",[quants]),_169432).


test('?- chat80("Every woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Every woman paints.",[quants]),_169432).


test('?- chat80("Each woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Each woman paints.",[quants]),_169432).


test('?- chat80("Any woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Any woman paints.",[quants]),_169432).


test('?- chat80("The woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("The woman paints.",[quants]),_169432).


test('?- chat80("The not woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("The not woman paints.",[quants]),_169432).


test('?- chat80("Not a woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Not a woman paints.",[quants]),_169432).


test('?- chat80("Not one woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Not one woman paints.",[quants]),_169432).


test('?- chat80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_169432)),nondet]):-call(chat80("Not no woman paints.",[quants_neg_postcond]),_169432).


test('?- chat80("Not some woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Not some woman paints.",[quants]),_169432).


test('?- chat80("Not every woman paints.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("Not every woman paints.",[quants]),_169434).


test('?- chat80("Not each woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Not each woman paints.",[quants]),_169432).


test('?- chat80("Not any woman paints.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Not any woman paints.",[quants]),_169432).


test('?- chat80("The women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("The women paint.",[quants]),_169432).


test('?- chat80("Women paint.",[quants])',[true(compound(_169430)),nondet]):-call(chat80("Women paint.",[quants]),_169430).


test('?- chat80("Some women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Some women paint.",[quants]),_169432).


test('?- chat80("No women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("No women paint.",[quants]),_169432).


test('?- chat80("All women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("All women paint.",[quants]),_169432).


test('?- chat80("Any women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Any women paint.",[quants]),_169432).


test('?- chat80("Not women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Not women paint.",[quants]),_169432).


test('?- chat80("Not no women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Not no women paint.",[quants]),_169432).


test('?- chat80("Not all women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Not all women paint.",[quants]),_169432).


test('?- chat80("Not any women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Not any women paint.",[quants]),_169432).


test('?- chat80("The three women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("The three women paint.",[quants]),_169432).


test('?- chat80("Three women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Three women paint.",[quants]),_169432).


test('?- chat80("Some three women paint.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("Some three women paint.",[quants]),_169434).


test('?- chat80("No three women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("No three women paint.",[quants]),_169432).


test('?- chat80("Every three women paint.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("Every three women paint.",[quants]),_169434).


test('?- chat80("All three women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("All three women paint.",[quants]),_169432).


test('?- chat80("Any three women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Any three women paint.",[quants]),_169432).


test('?- chat80("Not three women paint.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("Not three women paint.",[quants]),_169432).


test('?- chat80("Not some three women paint.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("Not some three women paint.",[quants]),_169434).


test('?- chat80("Not no three women paint.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("Not no three women paint.",[quants]),_169434).


test('?- chat80("Not all three women paint.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("Not all three women paint.",[quants]),_169434).


test('?- chat80("Not every three women paint.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("Not every three women paint.",[quants]),_169434).


test('?- chat80("Not any three women paint.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("Not any three women paint.",[quants]),_169434).


test('?- chat80("Not three of the women paint.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("Not three of the women paint.",[quants]),_169434).


test('?- chat80("Not some of the three women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("Not some of the three women paint.",[quants]),_169436).


test('?- chat80("Not no three of the women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("Not no three of the women paint.",[quants]),_169436).


test('?- chat80("Not all three of the women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("Not all three of the women paint.",[quants]),_169436).


test('?- chat80("Not every three of the women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("Not every three of the women paint.",[quants]),_169436).


test('?- chat80("Not any three of the women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("Not any three of the women paint.",[quants]),_169436).


test('?- chat80("Not three of the four women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("Not three of the four women paint.",[quants]),_169436).


test('?- chat80("Not none of three out of the four women paint.",[quants])',[true(compound(_169438)),nondet]):-call(chat80("Not none of three out of the four women paint.",[quants]),_169438).


test('?- chat80("Not all three of the four women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("Not all three of the four women paint.",[quants]),_169436).


test('?- chat80("Not any three of the four women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("Not any three of the four women paint.",[quants]),_169436).


test('?- chat80("Three of the four women paint.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("Three of the four women paint.",[quants]),_169434).


test('?- chat80("Three out of the four women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("Three out of the four women paint.",[quants]),_169436).


test('?- chat80("All three of the four women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("All three of the four women paint.",[quants]),_169436).


test('?- chat80("Any three of the four women paint.",[quants])',[true(compound(_169436)),nondet]):-call(chat80("Any three of the four women paint.",[quants]),_169436).


test('?- chat80("I paint",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("I paint",[pronoun]),_169430).


test('?- chat80("you paint",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("you paint",[pronoun]),_169430).


test('?- chat80("We paint",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("We paint",[pronoun]),_169430).


test('?- chat80("None paint",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("None paint",[pronoun]),_169430).


test('?- chat80("They paint",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("They paint",[pronoun]),_169430).


test('?- chat80("Some paint",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("Some paint",[pronoun]),_169430).


test('?- chat80("It paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("It paints",[pronoun]),_169430).


test('?- chat80("he paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("he paints",[pronoun]),_169430).


test('?- chat80("She paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("She paints",[pronoun]),_169430).


test('?- chat80("Someone paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("Someone paints",[pronoun]),_169430).


test('?- chat80("Anybody paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("Anybody paints",[pronoun]),_169430).


test('?- chat80("Anyone paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("Anyone paints",[pronoun]),_169430).


test('?- chat80("Anything paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Anything paints",[pronoun]),_169432).


test('?- chat80("Everybody paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Everybody paints",[pronoun]),_169432).


test('?- chat80("Everyone paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Everyone paints",[pronoun]),_169432).


test('?- chat80("Everything paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Everything paints",[pronoun]),_169432).


test('?- chat80("Nobody paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("Nobody paints",[pronoun]),_169430).


test('?- chat80("No one paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("No one paints",[pronoun]),_169430).


test('?- chat80("Nothing paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("Nothing paints",[pronoun]),_169430).


test('?- chat80("One paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("One paints",[pronoun]),_169430).


test('?- chat80("Somebody paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Somebody paints",[pronoun]),_169432).


test('?- chat80("Something paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Something paints",[pronoun]),_169432).


test('?- chat80("Not anybody paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Not anybody paints",[pronoun]),_169432).


test('?- chat80("Not anyone paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Not anyone paints",[pronoun]),_169432).


test('?- chat80("Not anything paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Not anything paints",[pronoun]),_169432).


test('?- chat80("Not everybody paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Not everybody paints",[pronoun]),_169432).


test('?- chat80("Not everyone paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Not everyone paints",[pronoun]),_169432).


test('?- chat80("Not everything paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Not everything paints",[pronoun]),_169432).


test('?- chat80("Not nothing paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Not nothing paints",[pronoun]),_169432).


test('?- chat80("Not one paints",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("Not one paints",[pronoun]),_169430).


test('?- chat80("Not somebody paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Not somebody paints",[pronoun]),_169432).


test('?- chat80("Not something paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("Not something paints",[pronoun]),_169432).


test('?- chat80("She likes i",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("She likes i",[pronoun]),_169430).


test('?- chat80("She likes me",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("She likes me",[pronoun]),_169430).


test('?- chat80("She likes you",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("She likes you",[pronoun]),_169430).


test('?- chat80("She likes it",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("She likes it",[pronoun]),_169430).


test('?- chat80("She likes us",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("She likes us",[pronoun]),_169430).


test('?- chat80("She likes them",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("She likes them",[pronoun]),_169430).


test('?- chat80("She likes no one",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("She likes no one",[pronoun]),_169432).


test('?- chat80("She likes none",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("She likes none",[pronoun]),_169430).


test('?- chat80("She likes him",[pronoun])',[true(compound(_169430)),nondet]):-call(chat80("She likes him",[pronoun]),_169430).


test('?- chat80("She likes herself",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("She likes herself",[pronoun]),_169432).


test('?- chat80("She likes himself",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("She likes himself",[pronoun]),_169432).


test('?- chat80("It is us that paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("It is us that paints",[pronoun]),_169432).


test('?- chat80("It is them that paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("It is them that paints",[pronoun]),_169432).


test('?- chat80("It is he that paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("It is he that paints",[pronoun]),_169432).


test('?- chat80("It is she that paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("It is she that paints",[pronoun]),_169432).


test('?- chat80("It is her that paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("It is her that paints",[pronoun]),_169432).


test('?- chat80("It is him that paints",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("It is him that paints",[pronoun]),_169432).


test('?- chat80("We are us that paint",[pronoun])',[true(compound(_169432)),nondet]):-call(chat80("We are us that paint",[pronoun]),_169432).


test('?- chat80("We are all of us that paint",[pronoun])',[true(compound(_169434)),nondet]):-call(chat80("We are all of us that paint",[pronoun]),_169434).


test('?- chat80("It is everybody that paints",[pronoun])',[true(compound(_169434)),nondet]):-call(chat80("It is everybody that paints",[pronoun]),_169434).


test('?- chat80("Every man that paints likes monet.",[bratko])',[true(compound(_169436)),nondet]):-call(chat80("Every man that paints likes monet.",[bratko]),_169436).


test('?- chat80("A woman that admires John paints.",[bratko])',[true(compound(_169436)),nondet]):-call(chat80("A woman that admires John paints.",[bratko]),_169436).


test('?- chat80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_169442)),nondet]):-call(chat80("Every woman that likes a man that admires monet paints.",[bratko]),_169442).


test('?- chat80("John likes Annie.",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("John likes Annie.",[bratko]),_169432).


test('?- chat80("Annie likes a man that admires monet.",[bratko])',[true(compound(_169436)),nondet]):-call(chat80("Annie likes a man that admires monet.",[bratko]),_169436).


test('?- chat80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_169436)),nondet]):-call(chat80("Bertrand Russell wrote principia.",[bratko]),_169436).


test('?- chat80("An author wrote principia.",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("An author wrote principia.",[bratko]),_169434).


test('?- chat80("Iraq is a country.",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("Iraq is a country.",[bratko]),_169432).


test('?- chat80("A happy author wrote principia.",[bratko])',[true(compound(_169436)),nondet]):-call(chat80("A happy author wrote principia.",[bratko]),_169436).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_169432).


test('?- chat80("Bertrand is an author.",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("Bertrand is an author.",[bratko]),_169432).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_169432).


test('?- chat80("Every author is a programmer.",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("Every author is a programmer.",[bratko]),_169434).


test('?- chat80("Is Bertrand an programmer?",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("Is Bertrand an programmer?",[bratko]),_169434).


test('?- chat80("What is a author?",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("What is a author?",[bratko]),_169432).


test('?- chat80("What did Bertrand write?",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("What did Bertrand write?",[bratko]),_169434).


test('?- chat80("What is a book?",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("What is a book?",[bratko]),_169432).


test('?- chat80("Principia is a book.",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("Principia is a book.",[bratko]),_169432).


test('?- chat80("Bertrand is Bertrand.",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("Bertrand is Bertrand.",[bratko]),_169432).


test('?- chat80("Shrdlu halts.",[bratko])',[true(compound(_169430)),nondet]):-call(chat80("Shrdlu halts.",[bratko]),_169430).


test('?- chat80("Every student wrote a program.",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("Every student wrote a program.",[bratko]),_169434).


test('?- chat80("Terry writes a program.",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("Terry writes a program.",[bratko]),_169434).


test('?- chat80("Terry writes a program that halts.",[bratko])',[true(compound(_169436)),nondet]):-call(chat80("Terry writes a program that halts.",[bratko]),_169436).


test('?- chat80("An author of every book wrote a program.",[bratko])',[true(compound(_169438)),nondet]):-call(chat80("An author of every book wrote a program.",[bratko]),_169438).


test('?- chat80("A man hapilly maried paints.",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("A man hapilly maried paints.",[bratko]),_169434).


test('?- chat80("A hapilly maried man paints.",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("A hapilly maried man paints.",[bratko]),_169434).


test('?- chat80("A man who knows paints.",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("A man who knows paints.",[bratko]),_169434).


test('?- chat80("A man gives something.",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("A man gives something.",[bratko]),_169432).


test('?- chat80("A man gives his word.",[bratko])',[true(compound(_169432)),nondet]):-call(chat80("A man gives his word.",[bratko]),_169432).


test('?- chat80("A man of his word paints.",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("A man of his word paints.",[bratko]),_169434).


test('?- chat80("A man paints.",[bratko])',[true(compound(_169430)),nondet]):-call(chat80("A man paints.",[bratko]),_169430).


test('?- chat80("A man that paints paints.",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("A man that paints paints.",[bratko]),_169434).


test('?- chat80("A man walks.",[bratko])',[true(compound(_169430)),nondet]):-call(chat80("A man walks.",[bratko]),_169430).


test('?- chat80("A man that walks paints.",[bratko])',[true(compound(_169434)),nondet]):-call(chat80("A man that walks paints.",[bratko]),_169434).


test('?- chat80("It halts.",[bratko])',[true(compound(_169430)),nondet]):-call(chat80("It halts.",[bratko]),_169430).


test('?- chat80("A man of his word that walks paints.",[bratko])',[true(compound(_169436)),nondet]):-call(chat80("A man of his word that walks paints.",[bratko]),_169436).


test('?- chat80("The cost of what the product is changes.",[bratko])',[true(compound(_169438)),nondet]):-call(chat80("The cost of what the product is changes.",[bratko]),_169438).


test('?- chat80("We need a virtual machine server.",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("We need a virtual machine server.",[aindy]),_169436).


test('?- chat80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_169440)),nondet]):-call(chat80("The virtual machine server should have several VMs.",[aindy]),_169440).


test('?- chat80("One VM should be the POSI VM.",[aindy])',[true(compound(_169434)),nondet]):-call(chat80("One VM should be the POSI VM.",[aindy]),_169434).


test('?- chat80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("One VM should be the FRDCSA.org VM.",[aindy]),_169436).


test('?- chat80("One VM should be the mail server.",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("One VM should be the mail server.",[aindy]),_169436).


test('?- chat80("One computer should be the backup server.",[aindy])',[true(compound(_169438)),nondet]):-call(chat80("One computer should be the backup server.",[aindy]),_169438).


test('?- chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_169454)),nondet]):-call(chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_169454).


test('?- chat80("I need a fast computer for work.",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("I need a fast computer for work.",[aindy]),_169436).


test('?- chat80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_169446)),nondet]):-call(chat80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_169446).


test('?- chat80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_169442)),nondet]):-call(chat80("I need a dedicated computer for network security research.",[aindy]),_169442).


test('?- chat80("I need a machine to run Tails on.",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("I need a machine to run Tails on.",[aindy]),_169436).


test('?- chat80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_169440)),nondet]):-call(chat80("I need a machine off the network for airgap security.",[aindy]),_169440).


test('?- chat80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_169446)),nondet]):-call(chat80("One VM should be the game server for running game development projects.",[aindy]),_169446).


test('?- chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_169440)),nondet]):-call(chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_169440).


test('?- chat80("I could read about how to build a private watson.",[aindy])',[true(compound(_169440)),nondet]):-call(chat80("I could read about how to build a private watson.",[aindy]),_169440).


test('?- chat80("Need backups.",[aindy])',[true(compound(_169430)),nondet]):-call(chat80("Need backups.",[aindy]),_169430).


test('?- chat80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_169444)),nondet]):-call(chat80("Practice setting up backups of a machine to a different machine.",[aindy]),_169444).


test('?- chat80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_169442)),nondet]):-call(chat80("Set up schedules for updating the software on all machines.",[aindy]),_169442).


test('?- chat80("Read books on server room layout.",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("Read books on server room layout.",[aindy]),_169436).


test('?- chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_169444)),nondet]):-call(chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_169444).


test('?- chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_169446)),nondet]):-call(chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_169446).


test('?- chat80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("I want a gaming computer.  Do I?",[aindy]),_169436).


test('?- chat80("I want a windows 7 computer for work.",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("I want a windows 7 computer for work.",[aindy]),_169436).


test('?- chat80("I want a fast linux computer for work.",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("I want a fast linux computer for work.",[aindy]),_169436).


test('?- chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_169456)),nondet]):-call(chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_169456).


test('?- chat80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_169442)),nondet]):-call(chat80("I could install a fresh operating system on justin for work.",[aindy]),_169442).


test('?- chat80("I probably want a separate git computer.",[aindy])',[true(compound(_169438)),nondet]):-call(chat80("I probably want a separate git computer.",[aindy]),_169438).


test('?- chat80("I need to start buying servers.",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("I need to start buying servers.",[aindy]),_169436).


test('?- chat80("I want a rackmount case for servers.",[aindy])',[true(compound(_169436)),nondet]):-call(chat80("I want a rackmount case for servers.",[aindy]),_169436).


test('?- chat80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_169442)),nondet]):-call(chat80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_169442).


test('?- chat80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_169440)),nondet]):-call(chat80("2 oceans border each african country.",[chat80(tell)]),_169440).


test('?- chat80("There are 10 large cars.",[quants])',[true(compound(_169434)),nondet]):-call(chat80("There are 10 large cars.",[quants]),_169434).


test('?- chat80("There are 10 oceans.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("There are 10 oceans.",[quants]),_169432).


test('?- chat80("There are 10 women.",[quants])',[true(compound(_169432)),nondet]):-call(chat80("There are 10 women.",[quants]),_169432).


test('?- chat80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_169440)),nondet]):-call(chat80("An ocean borders an African country.",[chat80(tell)]),_169440).


test('?- chat80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_169448)),nondet]):-call(chat80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_169448).


test('?- chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_169450)),nondet]):-call(chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_169450).


test('?- chat80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_169436)),nondet]):-call(chat80("Bertrand wrote a book.",[bratko(book)]),_169436).


test('?- chat80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_169438)),nondet]):-call(chat80("Bertrand wrote nothing.",[bratko(book)]),_169438).


test('?- chat80("Bertrand wrote.",[bratko(book)])',[true(compound(_169436)),nondet]):-call(chat80("Bertrand wrote.",[bratko(book)]),_169436).


test('?- chat80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_169440)),nondet]):-call(chat80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_169440).


test('?- chat80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_169438)),nondet]):-call(chat80("Bertrand wrote about Gottlob.",[bratko(book)]),_169438).


test('?- chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_169440)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_169440).


test('?- chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_169442)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_169442).


test('?- chat80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_169440)),nondet]):-call(chat80("What did alfred write to Bertrand?",[bratko(book)]),_169440).


test('?- chat80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_169436)),nondet]):-call(chat80("Alfred wrote a letter.",[bratko(book)]),_169436).


test('?- chat80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_169440)),nondet]):-call(chat80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_169440).


test('?- chat80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_169440)),nondet]):-call(chat80("Alfred wrote something to Bertrand.",[bratko(book)]),_169440).


test('?- chat80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_169438)),nondet]):-call(chat80("Alfred wrote to Bertrand.",[bratko(book)]),_169438).


test('?- chat80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_169440)),nondet]):-call(chat80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_169440).


test('?- chat80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_169440)),nondet]):-call(chat80("Alfred wrote Bertrand a letter.",[bratko(book)]),_169440).


test('?- chat80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_169440)),nondet]):-call(chat80("Who did alfred write a letter to?",[bratko(book)]),_169440).


test('?- chat80("Alfred gave it.",[bratko(book)])',[true(compound(_169436)),nondet]):-call(chat80("Alfred gave it.",[bratko(book)]),_169436).


test('?- chat80("Alfred gave a book.",[bratko(book)])',[true(compound(_169436)),nondet]):-call(chat80("Alfred gave a book.",[bratko(book)]),_169436).


test('?- chat80("a pride of lions paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a pride of lions paint",[of]),_169432).


test('?- chat80("a flock of birds paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a flock of birds paint",[of]),_169432).


test('?- chat80("a litter of pups paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a litter of pups paint",[of]),_169432).


test('?- chat80("a prickle of porcupines paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a prickle of porcupines paint",[of]),_169434).


test('?- chat80("a litter of cubs paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a litter of cubs paint",[of]),_169432).


test('?- chat80("a pack of dogs paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a pack of dogs paint",[of]),_169432).


test('?- chat80("a colony of beavers paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a colony of beavers paint",[of]),_169434).


test('?- chat80("a gaggle of geese paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a gaggle of geese paint",[of]),_169434).


test('?- chat80("a family of otters paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a family of otters paint",[of]),_169434).


test('?- chat80("a huddle of walruses paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a huddle of walruses paint",[of]),_169434).


test('?- chat80("a herd of deer paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a herd of deer paint",[of]),_169432).


test('?- chat80("a culture of bacteria paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a culture of bacteria paint",[of]),_169434).


test('?- chat80("a swarm of bees paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a swarm of bees paint",[of]),_169432).


test('?- chat80("a bed of clams paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a bed of clams paint",[of]),_169432).


test('?- chat80("a school of cod paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a school of cod paint",[of]),_169432).


test('?- chat80("a herd of dinosaurs paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a herd of dinosaurs paint",[of]),_169434).


test('?- chat80("a mess of iguanas paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a mess of iguanas paint",[of]),_169434).


test('?- chat80("a mob of wombats paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a mob of wombats paint",[of]),_169432).


test('?- chat80("a pod of pelicans paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a pod of pelicans paint",[of]),_169434).


test('?- chat80("a troop of boy scouts paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a troop of boy scouts paint",[of]),_169434).


test('?- chat80("a team of athletes paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a team of athletes paint",[of]),_169434).


test('?- chat80("a panel of experts paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a panel of experts paint",[of]),_169434).


test('?- chat80("a crew of sailors paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a crew of sailors paint",[of]),_169434).


test('?- chat80("a band of robbers paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a band of robbers paint",[of]),_169434).


test('?- chat80("a troupe of performers paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a troupe of performers paint",[of]),_169434).


test('?- chat80("a crowd of onlookers paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a crowd of onlookers paint",[of]),_169434).


test('?- chat80("a curse of painters paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("a curse of painters paint",[of]),_169434).


test('?- chat80("a fleet of cars paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a fleet of cars paint",[of]),_169432).


test('?- chat80("a pair of shoes paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a pair of shoes paint",[of]),_169432).


test('?- chat80("a fleet of ships paint",[of])',[true(compound(_169432)),nondet]):-call(chat80("a fleet of ships paint",[of]),_169432).


test('?- chat80("an anthology of stories paint",[of])',[true(compound(_169434)),nondet]):-call(chat80("an anthology of stories paint",[of]),_169434).


test('?- chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_246408)),nondet]):-call(chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_246408).


test('?- chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_246378)),nondet]):-call(chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_246378).


test('?- chat80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_246516)),nondet]):-call(chat80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_246516).


test('?- chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_246360)),nondet]):-call(chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_246360).


test('?- chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_246408)),nondet]):-call(chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_246408).


test('?- chat80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_246504)),nondet]):-call(chat80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_246504).


test('?- chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_246462)),nondet]):-call(chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_246462).


test('?- chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_246654)),nondet]):-call(chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_246654).


test('?- chat80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_246426)),nondet]):-call(chat80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_246426).


test('?- chat80("Logged on player character",[descriptionTest])',[true(compound(_246234)),nondet]):-call(chat80("Logged on player character",[descriptionTest]),_246234).


test('?- chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_246492)),nondet]):-call(chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_246492).


test('?- chat80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_246438)),nondet]):-call(chat80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_246438).


test('?- chat80("Wesley is her son",[descriptionTest])',[true(compound(_246180)),nondet]):-call(chat80("Wesley is her son",[descriptionTest]),_246180).


test('?- chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_246828)),nondet]):-call(chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_246828).


test('?- chat80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_246258)),nondet]):-call(chat80("Counselor Deanna Troi is here",[descriptionTest]),_246258).


test('?- chat80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_246354)),nondet]):-call(chat80("Counselor Troi is the ship's main counselor",[descriptionTest]),_246354).


test('?- chat80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_246510)),nondet]):-call(chat80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_246510).


test('?- chat80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_246384)),nondet]):-call(chat80("Commander William Riker is here, staring at you",[descriptionTest]),_246384).


test('?- chat80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_246390)),nondet]):-call(chat80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_246390).


test('?- chat80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_246360)),nondet]):-call(chat80("He's in charge of keeping the crew in line",[descriptionTest]),_246360).


test('?- chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_246426)),nondet]):-call(chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_246426).


test('?- chat80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_246324)),nondet]):-call(chat80("Captain Picard is a very important man",[descriptionTest]),_246324).


test('?- chat80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_246426)),nondet]):-call(chat80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_246426).


test('?- chat80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_246270)),nondet]):-call(chat80("He's very smart, and very wise",[descriptionTest]),_246270).


test('?- chat80("Don\'t mess with him!",[descriptionTest])',[true(compound(_246198)),nondet]):-call(chat80("Don't mess with him!",[descriptionTest]),_246198).


test('?- chat80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_246276)),nondet]):-call(chat80("Guinan is here, tending the bar",[descriptionTest]),_246276).


test('?- chat80("Guinan is a strange being",[descriptionTest])',[true(compound(_246234)),nondet]):-call(chat80("Guinan is a strange being",[descriptionTest]),_246234).


test('?- chat80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_246942)),nondet]):-call(chat80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_246942).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_246444)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_246444).


test('?- chat80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_246444)),nondet]):-call(chat80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_246444).


test('?- chat80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_246744)),nondet]):-call(chat80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_246744).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_246438)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_246438).


test('?- chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_246462)),nondet]):-call(chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_246462).


test('?- chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_246732)),nondet]):-call(chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_246732).


test('?- chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_246654)),nondet]):-call(chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_246654).


test('?- chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_246444)),nondet]):-call(chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_246444).


test('?- chat80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_246324)),nondet]):-call(chat80("Livingston is Captain Picard's pet fish",[descriptionTest]),_246324).


test('?- chat80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_246576)),nondet]):-call(chat80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_246576).


test('?- chat80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_246426)),nondet]):-call(chat80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_246426).


test('?- chat80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_246294)),nondet]):-call(chat80("Spot is Data's orange coloured cat",[descriptionTest]),_246294).


test('?- chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_246816)),nondet]):-call(chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_246816).


test('?- chat80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_246438)),nondet]):-call(chat80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_246438).


test('?- chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_246420)),nondet]):-call(chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_246420).


test('?- chat80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_246762)),nondet]):-call(chat80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_246762).


test('?- chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_246408)),nondet]):-call(chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_246408).


test('?- chat80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_246276)),nondet]):-call(chat80("Alexander Rozhenko is Worf's son",[descriptionTest]),_246276).


test('?- chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_246558)),nondet]):-call(chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_246558).


test('?- chat80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_246474)),nondet]):-call(chat80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_246474).


test('?- chat80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_246420)),nondet]):-call(chat80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_246420).


test('?- chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_246822)),nondet]):-call(chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_246822).


test('?- chat80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_246300)),nondet]):-call(chat80("A large phaser rifle is lying here",[descriptionTest]),_246300).


test('?- chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_246894)),nondet]):-call(chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_246894).


test('?- chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_246498)),nondet]):-call(chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_246498).


test('?- chat80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246846)),nondet]):-call(chat80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246846).


test('?- chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_246498)),nondet]):-call(chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_246498).


test('?- chat80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246870)),nondet]):-call(chat80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246870).


test('?- chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_246474)),nondet]):-call(chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_246474).


test('?- chat80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246846)),nondet]):-call(chat80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246846).


test('?- chat80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_246396)),nondet]):-call(chat80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_246396).


test('?- chat80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_246936)),nondet]):-call(chat80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_246936).


test('?- chat80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_246366)),nondet]):-call(chat80("A Starfleet communication badge is lying here",[descriptionTest]),_246366).


test('?- chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_247404)),nondet]):-call(chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_247404).


test('?- chat80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_246360)),nondet]):-call(chat80("Worf's silver chain sash has been left here",[descriptionTest]),_246360).


test('?- chat80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_246972)),nondet]):-call(chat80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_246972).


test('?- chat80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_246252)),nondet]):-call(chat80("Geordi's VISOR is lying here",[descriptionTest]),_246252).


test('?- chat80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_247644)),nondet]):-call(chat80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_247644).


test('?- chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_246420)),nondet]):-call(chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_246420).


test('?- chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_247206)),nondet]):-call(chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_247206).


test('?- chat80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_246354)),nondet]):-call(chat80("A shard of dilithium crystal is lying here",[descriptionTest]),_246354).


test('?- chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_247008)),nondet]):-call(chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_247008).


test('?- chat80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_246366)),nondet]):-call(chat80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_246366).


test('?- chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_246978)),nondet]):-call(chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_246978).


test('?- chat80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_246378)),nondet]):-call(chat80("Commander Riker's trombone has been placed here",[descriptionTest]),_246378).


test('?- chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_246810)),nondet]):-call(chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_246810).


test('?- chat80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_246306)),nondet]):-call(chat80("A small cup of tea is sitting here",[descriptionTest]),_246306).


test('?- chat80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_246324)),nondet]):-call(chat80("A bottle of synthehol is standing here",[descriptionTest]),_246324).


test('?- chat80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_246336)),nondet]):-call(chat80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_246336).


test('?- chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_246360)),nondet]):-call(chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_246360).


test('?- chat80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_246372)),nondet]):-call(chat80("A small glass of prune juice is sitting here",[descriptionTest]),_246372).


test('?- chat80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_246342)),nondet]):-call(chat80("A bottle of Vulcan beer is standing here",[descriptionTest]),_246342).


test('?- chat80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_246414)),nondet]):-call(chat80("You find yourself in the middle of main engineering",[descriptionTest]),_246414).


test('?- chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_246534)),nondet]):-call(chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_246534).


test('?- chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_246834)),nondet]):-call(chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_246834).


test('?- chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_246642)),nondet]):-call(chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_246642).


test('?- chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_246570)),nondet]):-call(chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_246570).


test('?- chat80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_246750)),nondet]):-call(chat80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_246750).


test('?- chat80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_246342)),nondet]):-call(chat80("You're in the middle of Geordi's quarters",[descriptionTest]),_246342).


test('?- chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_246540)),nondet]):-call(chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_246540).


test('?- chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_246864)),nondet]):-call(chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_246864).


test('?- chat80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_246474)),nondet]):-call(chat80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_246474).


test('?- chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_246444)),nondet]):-call(chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_246444).


test('?- chat80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_246330)),nondet]):-call(chat80("You're in the middle of Data's quarters",[descriptionTest]),_246330).


test('?- chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_247392)),nondet]):-call(chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_247392).


test('?- chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_246606)),nondet]):-call(chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_246606).


test('?- chat80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_246630)),nondet]):-call(chat80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_246630).


test('?- chat80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_246258)),nondet]):-call(chat80("You're in the dimly lit Brig",[descriptionTest]),_246258).


test('?- chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_246648)),nondet]):-call(chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_246648).


test('?- chat80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_246726)),nondet]):-call(chat80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_246726).


test('?- chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_247020)),nondet]):-call(chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_247020).


test('?- chat80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_253248)),nondet]):-call(chat80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_253248).


test('?- chat80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_246732)),nondet]):-call(chat80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_246732).


test('?- chat80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_246336)),nondet]):-call(chat80("You're in the Enterprise transporter room",[descriptionTest]),_246336).


test('?- chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_246822)),nondet]):-call(chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_246822).


test('?- chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_246792)),nondet]):-call(chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_246792).


test('?- chat80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_246330)),nondet]):-call(chat80("You find yourself in a transporter beam",[descriptionTest]),_246330).


test('?- chat80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_246330)),nondet]):-call(chat80("All you can see is blue flashing light",[descriptionTest]),_246330).


test('?- chat80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_246486)),nondet]):-call(chat80("It feels as though your body is racing around at high speeds",[descriptionTest]),_246486).


test('?- chat80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_246606)),nondet]):-call(chat80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_246606).


test('?- chat80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_246534)),nondet]):-call(chat80("You step through the doors and find yourself in a large school room",[descriptionTest]),_246534).


test('?- chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_246912)),nondet]):-call(chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_246912).


test('?- chat80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_246666)),nondet]):-call(chat80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_246666).


test('?- chat80("You\'re in the turbolift",[descriptionTest])',[true(compound(_246216)),nondet]):-call(chat80("You're in the turbolift",[descriptionTest]),_246216).


test('?- chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_246594)),nondet]):-call(chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_246594).


test('?- chat80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_246486)),nondet]):-call(chat80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_246486).


test('?- chat80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_246474)),nondet]):-call(chat80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_246474).


test('?- chat80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_246228)),nondet]):-call(chat80("You're now on Holodeck 2",[descriptionTest]),_246228).


test('?- chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_246912)),nondet]):-call(chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_246912).


test('?- chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_246660)),nondet]):-call(chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_246660).


test('?- chat80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_246354)),nondet]):-call(chat80("Right now, this holodeck is not functioning",[descriptionTest]),_246354).


test('?- chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_246462)),nondet]):-call(chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_246462).


test('?- chat80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_246384)),nondet]):-call(chat80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_246384).


test('?- chat80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_246594)),nondet]):-call(chat80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_246594).


test('?- chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_246912)),nondet]):-call(chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_246912).


test('?- chat80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_246288)),nondet]):-call(chat80("You've arrived in Riker's quarters",[descriptionTest]),_246288).


test('?- chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_246864)),nondet]):-call(chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_246864).


test('?- chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_246798)),nondet]):-call(chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_246798).


test('?- chat80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_246402)),nondet]):-call(chat80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_246402).


test('?- chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_247038)),nondet]):-call(chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_247038).


test('?- chat80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_246834)),nondet]):-call(chat80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_246834).


test('?- chat80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_246306)),nondet]):-call(chat80("You emerge into a dark narrow alley",[descriptionTest]),_246306).


test('?- chat80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_246450)),nondet]):-call(chat80("Tall dark brick buildings block your way north and south",[descriptionTest]),_246450).


test('?- chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_246714)),nondet]):-call(chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_246714).


test('?- chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_246750)),nondet]):-call(chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_246750).


test('?- chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_246486)),nondet]):-call(chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_246486).


test('?- chat80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_246390)),nondet]):-call(chat80("The archway leading out of the holodeck is west",[descriptionTest]),_246390).


test('?- chat80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_246294)),nondet]):-call(chat80("You're in Doctor Crusher's quarters",[descriptionTest]),_246294).


test('?- chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_246690)),nondet]):-call(chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_246690).


test('?- chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_246780)),nondet]):-call(chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_246780).


test('?- chat80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_246522)),nondet]):-call(chat80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_246522).


test('?- chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_247146)),nondet]):-call(chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_247146).


test('?- chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_246618)),nondet]):-call(chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_246618).


test('?- chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_247014)),nondet]):-call(chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_247014).


test('?- chat80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_246486)),nondet]):-call(chat80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_246486).


test('?- chat80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_246414)),nondet]):-call(chat80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_246414).


test('?- chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_247308)),nondet]):-call(chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_247308).


test('?- chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_246486)),nondet]):-call(chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_246486).


test('?- chat80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_246396)),nondet]):-call(chat80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_246396).


test('?- chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_246588)),nondet]):-call(chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_246588).


test('?- chat80("A large grey door leads into space",[descriptionTest])',[true(compound(_246300)),nondet]):-call(chat80("A large grey door leads into space",[descriptionTest]),_246300).


test('?- chat80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_246486)),nondet]):-call(chat80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_246486).


test('?- chat80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_246558)),nondet]):-call(chat80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_246558).


test('?- chat80("You feel very cold",[descriptionTest])',[true(compound(_246186)),nondet]):-call(chat80("You feel very cold",[descriptionTest]),_246186).


test('?- chat80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_246456)),nondet]):-call(chat80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_246456).


test('?- chat80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_246342)),nondet]):-call(chat80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_246342).


test('?- chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_246954)),nondet]):-call(chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_246954).


test('?- chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_246678)),nondet]):-call(chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_246678).


test('?- chat80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_246228)),nondet]):-call(chat80("You're in Worf's quarters",[descriptionTest]),_246228).


test('?- chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_246672)),nondet]):-call(chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_246672).


test('?- chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_247086)),nondet]):-call(chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_247086).


test('?- chat80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_246294)),nondet]):-call(chat80("You emerge into the Enterprise gym",[descriptionTest]),_246294).


test('?- chat80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_246396)),nondet]):-call(chat80("The room is quite large, with a soft grey floor",[descriptionTest]),_246396).


test('?- chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_246804)),nondet]):-call(chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_246804).


test('?- chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_246768)),nondet]):-call(chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_246768).


test('?- chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_246456)),nondet]):-call(chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_246456).


test('?- chat80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_246522)),nondet]):-call(chat80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_246522).


test('?- chat80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_246612)),nondet]):-call(chat80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_246612).


test('?- chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_246906)),nondet]):-call(chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_246906).


test('?- chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_246924)),nondet]):-call(chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_246924).


test('?- chat80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_246378)),nondet]):-call(chat80("Two large windows offer a great view of space",[descriptionTest]),_246378).


test('?- chat80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_246630)),nondet]):-call(chat80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_246630).


test('?- chat80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_246306)),nondet]):-call(chat80("You're in the Enterprise science lab",[descriptionTest]),_246306).


test('?- chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_246696)),nondet]):-call(chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_246696).


test('?- chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_247194)),nondet]):-call(chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_247194).


test('?- chat80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_246450)),nondet]):-call(chat80("A complex looking computer console is facing this machine",[descriptionTest]),_246450).


test('?- chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_246606)),nondet]):-call(chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_246606).


test('?- chat80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_246366)),nondet]):-call(chat80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_246366).


test('?- chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_246600)),nondet]):-call(chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_246600).


test('?- chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_246972)),nondet]):-call(chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_246972).


test('?- chat80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_246774)),nondet]):-call(chat80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_246774).


test('?- chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_247170)),nondet]):-call(chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_247170).


test('?- chat80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_246372)),nondet]):-call(chat80("You're standing in Captain Picard's ready room",[descriptionTest]),_246372).


test('?- chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_246810)),nondet]):-call(chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_246810).


test('?- chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_246714)),nondet]):-call(chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_246714).


test('?- chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_246912)),nondet]):-call(chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_246912).


test('?- chat80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_246492)),nondet]):-call(chat80("This is where the Captain makes all of his important decisions",[descriptionTest]),_246492).


test('?- chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_246600)),nondet]):-call(chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_246600).


test('?- chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_246912)),nondet]):-call(chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_246912).


test('?- chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_246720)),nondet]):-call(chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_246720).


test('?- chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_246516)),nondet]):-call(chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_246516).


test('?- chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_246864)),nondet]):-call(chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_246864).


test('?- chat80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_246462)),nondet]):-call(chat80("This is where the ship's pilot and information officer sit",[descriptionTest]),_246462).


test('?- chat80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_246384)),nondet]):-call(chat80("You're in the conference room of the Enterprise",[descriptionTest]),_246384).


test('?- chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_246930)),nondet]):-call(chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_246930).


test('?- chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_246552)),nondet]):-call(chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_246552).


test('?- chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_246648)),nondet]):-call(chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_246648).


test('?- chat80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_246480)),nondet]):-call(chat80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_246480).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_169442)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_169442).


test('?- chat80("no two owners eat pizza",[sanity])',[true(compound(_169434)),nondet]):-call(chat80("no two owners eat pizza",[sanity]),_169434).


test('?- chat80("no three owners eat pizza",[sanity])',[true(compound(_169434)),nondet]):-call(chat80("no three owners eat pizza",[sanity]),_169434).


test('?- chat80("no three owners eat the same pizza",[sanity])',[true(compound(_169436)),nondet]):-call(chat80("no three owners eat the same pizza",[sanity]),_169436).


test('?- chat80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_169438)),nondet]):-call(chat80("no three owners eat the same kind of pizza",[sanity]),_169438).


test('?- chat80("no owners eat the same pizza",[sanity])',[true(compound(_169434)),nondet]):-call(chat80("no owners eat the same pizza",[sanity]),_169434).


test('?- chat80("no owners eat the same kind of pizza",[sanity])',[true(compound(_169436)),nondet]):-call(chat80("no owners eat the same kind of pizza",[sanity]),_169436).


test('?- chat80("there are 5 houses",[sanity])',[true(compound(_169432)),nondet]):-call(chat80("there are 5 houses",[sanity]),_169432).


test('?- chat80("there are not 5 houses",[sanity])',[true(compound(_169432)),nondet]):-call(chat80("there are not 5 houses",[sanity]),_169432).


test('?- chat80("there are not zero houses",[sanity])',[true(compound(_169434)),nondet]):-call(chat80("there are not zero houses",[sanity]),_169434).


test('?- chat80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_169442)),nondet]):-call(chat80(noun_phrase("less than 2 owners"),[sanity,bug]),_169442).


test('?- chat80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_169436)),nondet]):-call(chat80(noun_phrase("at most the 5 owners"),[sanity]),_169436).


test('?- chat80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_169436)),nondet]):-call(chat80(noun_phrase("at most 5 owners"),[sanity]),_169436).


test('?- chat80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_169436)),nondet]):-call(chat80(noun_phrase("less than 3 owners"),[sanity]),_169436).


test('?- chat80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_169438)),nondet]):-call(chat80(noun_phrase("at most 50 percent of owners"),[sanity]),_169438).


test('?- chat80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_169442)),nondet]):-call(chat80(noun_phrase("no three owners"),[sanity,no_working]),_169442).


test('?- chat80("terry writes a non-program.",[tell])',[true(compound(_169434)),nondet]):-call(chat80("terry writes a non-program.",[tell]),_169434).


test('?- chat80("every nonhuman programmer writes a program.",[tell])',[true(compound(_169438)),nondet]):-call(chat80("every nonhuman programmer writes a program.",[tell]),_169438).


test('?- chat80("every human programmer writes a not a program.",[tell])',[true(compound(_169438)),nondet]):-call(chat80("every human programmer writes a not a program.",[tell]),_169438).


test('?- chat80("every human programmer happily writes a not a program.",[tell])',[true(compound(_169440)),nondet]):-call(chat80("every human programmer happily writes a not a program.",[tell]),_169440).


:- end_tests(chat80).



:- begin_tests(curt80).



test('?- curt80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_169482)),nondet]):-call(curt80("His friends are liked by hers.",[bad_juju,sanity]),_169482).


test('?- curt80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_169484)),nondet]):-call(curt80("Her friends are not liked by his.",[bad_juju,sanity]),_169484).


test('?- curt80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_169484)),nondet]):-call(curt80("Do their friends like each other?",[bad_juju,feature]),_169484).


test('?- curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_169426),sanity])',[true(compound(_169488)),nondet]):-call(curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_169426),sanity]),_169488).


test('?- curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_169424),sanity])',[true(compound(_169486)),nondet]):-call(curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_169424),sanity]),_169486).


test('?- curt80("There are 5 houses with five different colors.",[riddle(_169428),sanity])',[true(compound(_169490)),nondet]):-call(curt80("There are 5 houses with five different colors.",[riddle(_169428),sanity]),_169490).


test('?- curt80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_169480)),nondet]):-call(curt80("There are 5 houses",[riddle_prep,sanity]),_169480).


test('?- curt80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_169484)),nondet]):-call(curt80("Each house has a different color",[riddle_prep,sanity]),_169484).


test('?- curt80("In each house lives a person with a different nationality.",[riddle(_169432),sanity])',[true(compound(_169494)),nondet]):-call(curt80("In each house lives a person with a different nationality.",[riddle(_169432),sanity]),_169494).


test('?- curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_169506)),nondet]):-call(curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_169506).


test('?- curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_169494)),nondet]):-call(curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_169494).


test('?- curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_169492)),nondet]):-call(curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_169492).


test('?- curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_169496)),nondet]):-call(curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_169496).


test('?- curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_169500)),nondet]):-call(curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_169500).


test('?- curt80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_169492)),nondet]):-call(curt80("No owners have the same pet.",[riddle(1),sanity,regression]),_169492).


test('?- curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_169496)),nondet]):-call(curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_169496).


test('?- curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_169490)),nondet]):-call(curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_169490).


test('?- curt80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_169494)),nondet]):-call(curt80("No two owners have the same pet.",[riddle(1),sanity,regression]),_169494).


test('?- curt80("The brit lives in the red house.",[riddle(_169426),sanity])',[true(compound(_169488)),nondet]):-call(curt80("The brit lives in the red house.",[riddle(_169426),sanity]),_169488).


test('?- curt80("The swede keeps dogs as pets.",[riddle(_169424),sanity])',[true(compound(_169486)),nondet]):-call(curt80("The swede keeps dogs as pets.",[riddle(_169424),sanity]),_169486).


test('?- curt80("A dane drinks tea.",[riddle(_169422),sanity])',[true(compound(_169484)),nondet]):-call(curt80("A dane drinks tea.",[riddle(_169422),sanity]),_169484).


test('?- curt80("The green house is on the left of the white house.",[riddle(_169430),sanity])',[true(compound(_169492)),nondet]):-call(curt80("The green house is on the left of the white house.",[riddle(_169430),sanity]),_169492).


test('?- curt80("The green house\'s owner drinks coffee.",[riddle(_169426),sanity])',[true(compound(_169488)),nondet]):-call(curt80("The green house's owner drinks coffee.",[riddle(_169426),sanity]),_169488).


test('?- curt80("The person who smokes Pall Mall rears birds.",[riddle(_169428),sanity,regression])',[true(compound(_169496)),nondet]):-call(curt80("The person who smokes Pall Mall rears birds.",[riddle(_169428),sanity,regression]),_169496).


test('?- curt80("The owner of the yellow house smokes Dunhill.",[riddle(_169428),sanity])',[true(compound(_169490)),nondet]):-call(curt80("The owner of the yellow house smokes Dunhill.",[riddle(_169428),sanity]),_169490).


test('?- curt80("The man living in the center house drinks milk.",[riddle(_169430),sanity])',[true(compound(_169492)),nondet]):-call(curt80("The man living in the center house drinks milk.",[riddle(_169430),sanity]),_169492).


test('?- curt80("The Norwegian lives in the first house .",[riddle(_169428),sanity])',[true(compound(_169490)),nondet]):-call(curt80("The Norwegian lives in the first house .",[riddle(_169428),sanity]),_169490).


test('?- curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_169434),sanity])',[true(compound(_169496)),nondet]):-call(curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_169434),sanity]),_169496).


test('?- curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_169434),sanity])',[true(compound(_169496)),nondet]):-call(curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_169434),sanity]),_169496).


test('?- curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_169428),sanity])',[true(compound(_169490)),nondet]):-call(curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_169428),sanity]),_169490).


test('?- curt80("The German smokes Prince.",[riddle(_169424),sanity])',[true(compound(_169486)),nondet]):-call(curt80("The German smokes Prince.",[riddle(_169424),sanity]),_169486).


test('?- curt80("The Norwegian lives next to the blue house.",[riddle(_169428),sanity])',[true(compound(_169490)),nondet]):-call(curt80("The Norwegian lives next to the blue house.",[riddle(_169428),sanity]),_169490).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_169432),sanity])',[true(compound(_169494)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_169432),sanity]),_169494).


test('?- curt80("Who owns the fish?",[riddle(_169422),sanity])',[true(compound(_169484)),nondet]):-call(curt80("Who owns the fish?",[riddle(_169422),sanity]),_169484).


test('?- curt80("One woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("One woman paints.",[quants]),_169474).


test('?- curt80("No woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("No woman paints.",[quants]),_169474).


test('?- curt80("Some woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Some woman paints.",[quants]),_169474).


test('?- curt80("Every woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Every woman paints.",[quants]),_169474).


test('?- curt80("Each woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Each woman paints.",[quants]),_169474).


test('?- curt80("Any woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Any woman paints.",[quants]),_169474).


test('?- curt80("The woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("The woman paints.",[quants]),_169474).


test('?- curt80("The not woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("The not woman paints.",[quants]),_169474).


test('?- curt80("Not a woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Not a woman paints.",[quants]),_169474).


test('?- curt80("Not one woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Not one woman paints.",[quants]),_169474).


test('?- curt80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_169474)),nondet]):-call(curt80("Not no woman paints.",[quants_neg_postcond]),_169474).


test('?- curt80("Not some woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Not some woman paints.",[quants]),_169474).


test('?- curt80("Not every woman paints.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("Not every woman paints.",[quants]),_169476).


test('?- curt80("Not each woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Not each woman paints.",[quants]),_169474).


test('?- curt80("Not any woman paints.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Not any woman paints.",[quants]),_169474).


test('?- curt80("The women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("The women paint.",[quants]),_169474).


test('?- curt80("Women paint.",[quants])',[true(compound(_169472)),nondet]):-call(curt80("Women paint.",[quants]),_169472).


test('?- curt80("Some women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Some women paint.",[quants]),_169474).


test('?- curt80("No women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("No women paint.",[quants]),_169474).


test('?- curt80("All women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("All women paint.",[quants]),_169474).


test('?- curt80("Any women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Any women paint.",[quants]),_169474).


test('?- curt80("Not women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Not women paint.",[quants]),_169474).


test('?- curt80("Not no women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Not no women paint.",[quants]),_169474).


test('?- curt80("Not all women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Not all women paint.",[quants]),_169474).


test('?- curt80("Not any women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Not any women paint.",[quants]),_169474).


test('?- curt80("The three women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("The three women paint.",[quants]),_169474).


test('?- curt80("Three women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Three women paint.",[quants]),_169474).


test('?- curt80("Some three women paint.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("Some three women paint.",[quants]),_169476).


test('?- curt80("No three women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("No three women paint.",[quants]),_169474).


test('?- curt80("Every three women paint.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("Every three women paint.",[quants]),_169476).


test('?- curt80("All three women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("All three women paint.",[quants]),_169474).


test('?- curt80("Any three women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Any three women paint.",[quants]),_169474).


test('?- curt80("Not three women paint.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("Not three women paint.",[quants]),_169474).


test('?- curt80("Not some three women paint.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("Not some three women paint.",[quants]),_169476).


test('?- curt80("Not no three women paint.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("Not no three women paint.",[quants]),_169476).


test('?- curt80("Not all three women paint.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("Not all three women paint.",[quants]),_169476).


test('?- curt80("Not every three women paint.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("Not every three women paint.",[quants]),_169476).


test('?- curt80("Not any three women paint.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("Not any three women paint.",[quants]),_169476).


test('?- curt80("Not three of the women paint.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("Not three of the women paint.",[quants]),_169476).


test('?- curt80("Not some of the three women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("Not some of the three women paint.",[quants]),_169478).


test('?- curt80("Not no three of the women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("Not no three of the women paint.",[quants]),_169478).


test('?- curt80("Not all three of the women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("Not all three of the women paint.",[quants]),_169478).


test('?- curt80("Not every three of the women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("Not every three of the women paint.",[quants]),_169478).


test('?- curt80("Not any three of the women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("Not any three of the women paint.",[quants]),_169478).


test('?- curt80("Not three of the four women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("Not three of the four women paint.",[quants]),_169478).


test('?- curt80("Not none of three out of the four women paint.",[quants])',[true(compound(_169480)),nondet]):-call(curt80("Not none of three out of the four women paint.",[quants]),_169480).


test('?- curt80("Not all three of the four women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("Not all three of the four women paint.",[quants]),_169478).


test('?- curt80("Not any three of the four women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("Not any three of the four women paint.",[quants]),_169478).


test('?- curt80("Three of the four women paint.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("Three of the four women paint.",[quants]),_169476).


test('?- curt80("Three out of the four women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("Three out of the four women paint.",[quants]),_169478).


test('?- curt80("All three of the four women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("All three of the four women paint.",[quants]),_169478).


test('?- curt80("Any three of the four women paint.",[quants])',[true(compound(_169478)),nondet]):-call(curt80("Any three of the four women paint.",[quants]),_169478).


test('?- curt80("I paint",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("I paint",[pronoun]),_169472).


test('?- curt80("you paint",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("you paint",[pronoun]),_169472).


test('?- curt80("We paint",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("We paint",[pronoun]),_169472).


test('?- curt80("None paint",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("None paint",[pronoun]),_169472).


test('?- curt80("They paint",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("They paint",[pronoun]),_169472).


test('?- curt80("Some paint",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("Some paint",[pronoun]),_169472).


test('?- curt80("It paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("It paints",[pronoun]),_169472).


test('?- curt80("he paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("he paints",[pronoun]),_169472).


test('?- curt80("She paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("She paints",[pronoun]),_169472).


test('?- curt80("Someone paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("Someone paints",[pronoun]),_169472).


test('?- curt80("Anybody paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("Anybody paints",[pronoun]),_169472).


test('?- curt80("Anyone paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("Anyone paints",[pronoun]),_169472).


test('?- curt80("Anything paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Anything paints",[pronoun]),_169474).


test('?- curt80("Everybody paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Everybody paints",[pronoun]),_169474).


test('?- curt80("Everyone paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Everyone paints",[pronoun]),_169474).


test('?- curt80("Everything paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Everything paints",[pronoun]),_169474).


test('?- curt80("Nobody paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("Nobody paints",[pronoun]),_169472).


test('?- curt80("No one paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("No one paints",[pronoun]),_169472).


test('?- curt80("Nothing paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("Nothing paints",[pronoun]),_169472).


test('?- curt80("One paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("One paints",[pronoun]),_169472).


test('?- curt80("Somebody paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Somebody paints",[pronoun]),_169474).


test('?- curt80("Something paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Something paints",[pronoun]),_169474).


test('?- curt80("Not anybody paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Not anybody paints",[pronoun]),_169474).


test('?- curt80("Not anyone paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Not anyone paints",[pronoun]),_169474).


test('?- curt80("Not anything paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Not anything paints",[pronoun]),_169474).


test('?- curt80("Not everybody paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Not everybody paints",[pronoun]),_169474).


test('?- curt80("Not everyone paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Not everyone paints",[pronoun]),_169474).


test('?- curt80("Not everything paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Not everything paints",[pronoun]),_169474).


test('?- curt80("Not nothing paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Not nothing paints",[pronoun]),_169474).


test('?- curt80("Not one paints",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("Not one paints",[pronoun]),_169472).


test('?- curt80("Not somebody paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Not somebody paints",[pronoun]),_169474).


test('?- curt80("Not something paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("Not something paints",[pronoun]),_169474).


test('?- curt80("She likes i",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("She likes i",[pronoun]),_169472).


test('?- curt80("She likes me",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("She likes me",[pronoun]),_169472).


test('?- curt80("She likes you",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("She likes you",[pronoun]),_169472).


test('?- curt80("She likes it",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("She likes it",[pronoun]),_169472).


test('?- curt80("She likes us",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("She likes us",[pronoun]),_169472).


test('?- curt80("She likes them",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("She likes them",[pronoun]),_169472).


test('?- curt80("She likes no one",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("She likes no one",[pronoun]),_169474).


test('?- curt80("She likes none",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("She likes none",[pronoun]),_169472).


test('?- curt80("She likes him",[pronoun])',[true(compound(_169472)),nondet]):-call(curt80("She likes him",[pronoun]),_169472).


test('?- curt80("She likes herself",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("She likes herself",[pronoun]),_169474).


test('?- curt80("She likes himself",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("She likes himself",[pronoun]),_169474).


test('?- curt80("It is us that paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("It is us that paints",[pronoun]),_169474).


test('?- curt80("It is them that paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("It is them that paints",[pronoun]),_169474).


test('?- curt80("It is he that paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("It is he that paints",[pronoun]),_169474).


test('?- curt80("It is she that paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("It is she that paints",[pronoun]),_169474).


test('?- curt80("It is her that paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("It is her that paints",[pronoun]),_169474).


test('?- curt80("It is him that paints",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("It is him that paints",[pronoun]),_169474).


test('?- curt80("We are us that paint",[pronoun])',[true(compound(_169474)),nondet]):-call(curt80("We are us that paint",[pronoun]),_169474).


test('?- curt80("We are all of us that paint",[pronoun])',[true(compound(_169476)),nondet]):-call(curt80("We are all of us that paint",[pronoun]),_169476).


test('?- curt80("It is everybody that paints",[pronoun])',[true(compound(_169476)),nondet]):-call(curt80("It is everybody that paints",[pronoun]),_169476).


test('?- curt80("Every man that paints likes monet.",[bratko])',[true(compound(_169478)),nondet]):-call(curt80("Every man that paints likes monet.",[bratko]),_169478).


test('?- curt80("A woman that admires John paints.",[bratko])',[true(compound(_169478)),nondet]):-call(curt80("A woman that admires John paints.",[bratko]),_169478).


test('?- curt80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_169484)),nondet]):-call(curt80("Every woman that likes a man that admires monet paints.",[bratko]),_169484).


test('?- curt80("John likes Annie.",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("John likes Annie.",[bratko]),_169474).


test('?- curt80("Annie likes a man that admires monet.",[bratko])',[true(compound(_169478)),nondet]):-call(curt80("Annie likes a man that admires monet.",[bratko]),_169478).


test('?- curt80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_169478)),nondet]):-call(curt80("Bertrand Russell wrote principia.",[bratko]),_169478).


test('?- curt80("An author wrote principia.",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("An author wrote principia.",[bratko]),_169476).


test('?- curt80("Iraq is a country.",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("Iraq is a country.",[bratko]),_169474).


test('?- curt80("A happy author wrote principia.",[bratko])',[true(compound(_169478)),nondet]):-call(curt80("A happy author wrote principia.",[bratko]),_169478).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_169474).


test('?- curt80("Bertrand is an author.",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("Bertrand is an author.",[bratko]),_169474).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_169474).


test('?- curt80("Every author is a programmer.",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("Every author is a programmer.",[bratko]),_169476).


test('?- curt80("Is Bertrand an programmer?",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("Is Bertrand an programmer?",[bratko]),_169476).


test('?- curt80("What is a author?",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("What is a author?",[bratko]),_169474).


test('?- curt80("What did Bertrand write?",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("What did Bertrand write?",[bratko]),_169476).


test('?- curt80("What is a book?",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("What is a book?",[bratko]),_169474).


test('?- curt80("Principia is a book.",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("Principia is a book.",[bratko]),_169474).


test('?- curt80("Bertrand is Bertrand.",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("Bertrand is Bertrand.",[bratko]),_169474).


test('?- curt80("Shrdlu halts.",[bratko])',[true(compound(_169472)),nondet]):-call(curt80("Shrdlu halts.",[bratko]),_169472).


test('?- curt80("Every student wrote a program.",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("Every student wrote a program.",[bratko]),_169476).


test('?- curt80("Terry writes a program.",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("Terry writes a program.",[bratko]),_169476).


test('?- curt80("Terry writes a program that halts.",[bratko])',[true(compound(_169478)),nondet]):-call(curt80("Terry writes a program that halts.",[bratko]),_169478).


test('?- curt80("An author of every book wrote a program.",[bratko])',[true(compound(_169480)),nondet]):-call(curt80("An author of every book wrote a program.",[bratko]),_169480).


test('?- curt80("A man hapilly maried paints.",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("A man hapilly maried paints.",[bratko]),_169476).


test('?- curt80("A hapilly maried man paints.",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("A hapilly maried man paints.",[bratko]),_169476).


test('?- curt80("A man who knows paints.",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("A man who knows paints.",[bratko]),_169476).


test('?- curt80("A man gives something.",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("A man gives something.",[bratko]),_169474).


test('?- curt80("A man gives his word.",[bratko])',[true(compound(_169474)),nondet]):-call(curt80("A man gives his word.",[bratko]),_169474).


test('?- curt80("A man of his word paints.",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("A man of his word paints.",[bratko]),_169476).


test('?- curt80("A man paints.",[bratko])',[true(compound(_169472)),nondet]):-call(curt80("A man paints.",[bratko]),_169472).


test('?- curt80("A man that paints paints.",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("A man that paints paints.",[bratko]),_169476).


test('?- curt80("A man walks.",[bratko])',[true(compound(_169472)),nondet]):-call(curt80("A man walks.",[bratko]),_169472).


test('?- curt80("A man that walks paints.",[bratko])',[true(compound(_169476)),nondet]):-call(curt80("A man that walks paints.",[bratko]),_169476).


test('?- curt80("It halts.",[bratko])',[true(compound(_169472)),nondet]):-call(curt80("It halts.",[bratko]),_169472).


test('?- curt80("A man of his word that walks paints.",[bratko])',[true(compound(_169478)),nondet]):-call(curt80("A man of his word that walks paints.",[bratko]),_169478).


test('?- curt80("The cost of what the product is changes.",[bratko])',[true(compound(_169480)),nondet]):-call(curt80("The cost of what the product is changes.",[bratko]),_169480).


test('?- curt80("We need a virtual machine server.",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("We need a virtual machine server.",[aindy]),_169478).


test('?- curt80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_169482)),nondet]):-call(curt80("The virtual machine server should have several VMs.",[aindy]),_169482).


test('?- curt80("One VM should be the POSI VM.",[aindy])',[true(compound(_169476)),nondet]):-call(curt80("One VM should be the POSI VM.",[aindy]),_169476).


test('?- curt80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("One VM should be the FRDCSA.org VM.",[aindy]),_169478).


test('?- curt80("One VM should be the mail server.",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("One VM should be the mail server.",[aindy]),_169478).


test('?- curt80("One computer should be the backup server.",[aindy])',[true(compound(_169480)),nondet]):-call(curt80("One computer should be the backup server.",[aindy]),_169480).


test('?- curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_169496)),nondet]):-call(curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_169496).


test('?- curt80("I need a fast computer for work.",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("I need a fast computer for work.",[aindy]),_169478).


test('?- curt80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_169488)),nondet]):-call(curt80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_169488).


test('?- curt80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_169484)),nondet]):-call(curt80("I need a dedicated computer for network security research.",[aindy]),_169484).


test('?- curt80("I need a machine to run Tails on.",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("I need a machine to run Tails on.",[aindy]),_169478).


test('?- curt80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_169482)),nondet]):-call(curt80("I need a machine off the network for airgap security.",[aindy]),_169482).


test('?- curt80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_169488)),nondet]):-call(curt80("One VM should be the game server for running game development projects.",[aindy]),_169488).


test('?- curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_169482)),nondet]):-call(curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_169482).


test('?- curt80("I could read about how to build a private watson.",[aindy])',[true(compound(_169482)),nondet]):-call(curt80("I could read about how to build a private watson.",[aindy]),_169482).


test('?- curt80("Need backups.",[aindy])',[true(compound(_169472)),nondet]):-call(curt80("Need backups.",[aindy]),_169472).


test('?- curt80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_169486)),nondet]):-call(curt80("Practice setting up backups of a machine to a different machine.",[aindy]),_169486).


test('?- curt80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_169484)),nondet]):-call(curt80("Set up schedules for updating the software on all machines.",[aindy]),_169484).


test('?- curt80("Read books on server room layout.",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("Read books on server room layout.",[aindy]),_169478).


test('?- curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_169486)),nondet]):-call(curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_169486).


test('?- curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_169488)),nondet]):-call(curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_169488).


test('?- curt80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("I want a gaming computer.  Do I?",[aindy]),_169478).


test('?- curt80("I want a windows 7 computer for work.",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("I want a windows 7 computer for work.",[aindy]),_169478).


test('?- curt80("I want a fast linux computer for work.",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("I want a fast linux computer for work.",[aindy]),_169478).


test('?- curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_169498)),nondet]):-call(curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_169498).


test('?- curt80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_169484)),nondet]):-call(curt80("I could install a fresh operating system on justin for work.",[aindy]),_169484).


test('?- curt80("I probably want a separate git computer.",[aindy])',[true(compound(_169480)),nondet]):-call(curt80("I probably want a separate git computer.",[aindy]),_169480).


test('?- curt80("I need to start buying servers.",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("I need to start buying servers.",[aindy]),_169478).


test('?- curt80("I want a rackmount case for servers.",[aindy])',[true(compound(_169478)),nondet]):-call(curt80("I want a rackmount case for servers.",[aindy]),_169478).


test('?- curt80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_169484)),nondet]):-call(curt80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_169484).


test('?- curt80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_169482)),nondet]):-call(curt80("2 oceans border each african country.",[chat80(tell)]),_169482).


test('?- curt80("There are 10 large cars.",[quants])',[true(compound(_169476)),nondet]):-call(curt80("There are 10 large cars.",[quants]),_169476).


test('?- curt80("There are 10 oceans.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("There are 10 oceans.",[quants]),_169474).


test('?- curt80("There are 10 women.",[quants])',[true(compound(_169474)),nondet]):-call(curt80("There are 10 women.",[quants]),_169474).


test('?- curt80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_169482)),nondet]):-call(curt80("An ocean borders an African country.",[chat80(tell)]),_169482).


test('?- curt80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_169490)),nondet]):-call(curt80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_169490).


test('?- curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_169492)),nondet]):-call(curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_169492).


test('?- curt80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_169478)),nondet]):-call(curt80("Bertrand wrote a book.",[bratko(book)]),_169478).


test('?- curt80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_169480)),nondet]):-call(curt80("Bertrand wrote nothing.",[bratko(book)]),_169480).


test('?- curt80("Bertrand wrote.",[bratko(book)])',[true(compound(_169478)),nondet]):-call(curt80("Bertrand wrote.",[bratko(book)]),_169478).


test('?- curt80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_169482)),nondet]):-call(curt80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_169482).


test('?- curt80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_169480)),nondet]):-call(curt80("Bertrand wrote about Gottlob.",[bratko(book)]),_169480).


test('?- curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_169482)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_169482).


test('?- curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_169484)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_169484).


test('?- curt80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_169482)),nondet]):-call(curt80("What did alfred write to Bertrand?",[bratko(book)]),_169482).


test('?- curt80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_169478)),nondet]):-call(curt80("Alfred wrote a letter.",[bratko(book)]),_169478).


test('?- curt80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_169482)),nondet]):-call(curt80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_169482).


test('?- curt80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_169482)),nondet]):-call(curt80("Alfred wrote something to Bertrand.",[bratko(book)]),_169482).


test('?- curt80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_169480)),nondet]):-call(curt80("Alfred wrote to Bertrand.",[bratko(book)]),_169480).


test('?- curt80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_169482)),nondet]):-call(curt80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_169482).


test('?- curt80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_169482)),nondet]):-call(curt80("Alfred wrote Bertrand a letter.",[bratko(book)]),_169482).


test('?- curt80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_169482)),nondet]):-call(curt80("Who did alfred write a letter to?",[bratko(book)]),_169482).


test('?- curt80("Alfred gave it.",[bratko(book)])',[true(compound(_169478)),nondet]):-call(curt80("Alfred gave it.",[bratko(book)]),_169478).


test('?- curt80("Alfred gave a book.",[bratko(book)])',[true(compound(_169478)),nondet]):-call(curt80("Alfred gave a book.",[bratko(book)]),_169478).


test('?- curt80("a pride of lions paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a pride of lions paint",[of]),_169474).


test('?- curt80("a flock of birds paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a flock of birds paint",[of]),_169474).


test('?- curt80("a litter of pups paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a litter of pups paint",[of]),_169474).


test('?- curt80("a prickle of porcupines paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a prickle of porcupines paint",[of]),_169476).


test('?- curt80("a litter of cubs paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a litter of cubs paint",[of]),_169474).


test('?- curt80("a pack of dogs paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a pack of dogs paint",[of]),_169474).


test('?- curt80("a colony of beavers paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a colony of beavers paint",[of]),_169476).


test('?- curt80("a gaggle of geese paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a gaggle of geese paint",[of]),_169476).


test('?- curt80("a family of otters paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a family of otters paint",[of]),_169476).


test('?- curt80("a huddle of walruses paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a huddle of walruses paint",[of]),_169476).


test('?- curt80("a herd of deer paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a herd of deer paint",[of]),_169474).


test('?- curt80("a culture of bacteria paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a culture of bacteria paint",[of]),_169476).


test('?- curt80("a swarm of bees paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a swarm of bees paint",[of]),_169474).


test('?- curt80("a bed of clams paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a bed of clams paint",[of]),_169474).


test('?- curt80("a school of cod paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a school of cod paint",[of]),_169474).


test('?- curt80("a herd of dinosaurs paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a herd of dinosaurs paint",[of]),_169476).


test('?- curt80("a mess of iguanas paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a mess of iguanas paint",[of]),_169476).


test('?- curt80("a mob of wombats paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a mob of wombats paint",[of]),_169474).


test('?- curt80("a pod of pelicans paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a pod of pelicans paint",[of]),_169476).


test('?- curt80("a troop of boy scouts paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a troop of boy scouts paint",[of]),_169476).


test('?- curt80("a team of athletes paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a team of athletes paint",[of]),_169476).


test('?- curt80("a panel of experts paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a panel of experts paint",[of]),_169476).


test('?- curt80("a crew of sailors paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a crew of sailors paint",[of]),_169476).


test('?- curt80("a band of robbers paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a band of robbers paint",[of]),_169476).


test('?- curt80("a troupe of performers paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a troupe of performers paint",[of]),_169476).


test('?- curt80("a crowd of onlookers paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a crowd of onlookers paint",[of]),_169476).


test('?- curt80("a curse of painters paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("a curse of painters paint",[of]),_169476).


test('?- curt80("a fleet of cars paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a fleet of cars paint",[of]),_169474).


test('?- curt80("a pair of shoes paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a pair of shoes paint",[of]),_169474).


test('?- curt80("a fleet of ships paint",[of])',[true(compound(_169474)),nondet]):-call(curt80("a fleet of ships paint",[of]),_169474).


test('?- curt80("an anthology of stories paint",[of])',[true(compound(_169476)),nondet]):-call(curt80("an anthology of stories paint",[of]),_169476).


test('?- curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_246450)),nondet]):-call(curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_246450).


test('?- curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_246420)),nondet]):-call(curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_246420).


test('?- curt80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_246558)),nondet]):-call(curt80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_246558).


test('?- curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_246402)),nondet]):-call(curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_246402).


test('?- curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_246450)),nondet]):-call(curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_246450).


test('?- curt80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_246546)),nondet]):-call(curt80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_246546).


test('?- curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_246504)),nondet]):-call(curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_246504).


test('?- curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_246696)),nondet]):-call(curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_246696).


test('?- curt80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_246468)),nondet]):-call(curt80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_246468).


test('?- curt80("Logged on player character",[descriptionTest])',[true(compound(_246276)),nondet]):-call(curt80("Logged on player character",[descriptionTest]),_246276).


test('?- curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_246534)),nondet]):-call(curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_246534).


test('?- curt80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_246480)),nondet]):-call(curt80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_246480).


test('?- curt80("Wesley is her son",[descriptionTest])',[true(compound(_246222)),nondet]):-call(curt80("Wesley is her son",[descriptionTest]),_246222).


test('?- curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_246870)),nondet]):-call(curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_246870).


test('?- curt80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_246300)),nondet]):-call(curt80("Counselor Deanna Troi is here",[descriptionTest]),_246300).


test('?- curt80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_246396)),nondet]):-call(curt80("Counselor Troi is the ship's main counselor",[descriptionTest]),_246396).


test('?- curt80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_246552)),nondet]):-call(curt80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_246552).


test('?- curt80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_246426)),nondet]):-call(curt80("Commander William Riker is here, staring at you",[descriptionTest]),_246426).


test('?- curt80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_246432)),nondet]):-call(curt80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_246432).


test('?- curt80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_246402)),nondet]):-call(curt80("He's in charge of keeping the crew in line",[descriptionTest]),_246402).


test('?- curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_246468)),nondet]):-call(curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_246468).


test('?- curt80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_246366)),nondet]):-call(curt80("Captain Picard is a very important man",[descriptionTest]),_246366).


test('?- curt80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_246468)),nondet]):-call(curt80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_246468).


test('?- curt80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_246312)),nondet]):-call(curt80("He's very smart, and very wise",[descriptionTest]),_246312).


test('?- curt80("Don\'t mess with him!",[descriptionTest])',[true(compound(_246240)),nondet]):-call(curt80("Don't mess with him!",[descriptionTest]),_246240).


test('?- curt80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_246318)),nondet]):-call(curt80("Guinan is here, tending the bar",[descriptionTest]),_246318).


test('?- curt80("Guinan is a strange being",[descriptionTest])',[true(compound(_246276)),nondet]):-call(curt80("Guinan is a strange being",[descriptionTest]),_246276).


test('?- curt80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_246984)),nondet]):-call(curt80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_246984).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_246486)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_246486).


test('?- curt80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_246486)),nondet]):-call(curt80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_246486).


test('?- curt80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_246786)),nondet]):-call(curt80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_246786).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_246480)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_246480).


test('?- curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_246504)),nondet]):-call(curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_246504).


test('?- curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_246774)),nondet]):-call(curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_246774).


test('?- curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_246696)),nondet]):-call(curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_246696).


test('?- curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_246486)),nondet]):-call(curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_246486).


test('?- curt80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_246366)),nondet]):-call(curt80("Livingston is Captain Picard's pet fish",[descriptionTest]),_246366).


test('?- curt80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_246618)),nondet]):-call(curt80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_246618).


test('?- curt80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_246468)),nondet]):-call(curt80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_246468).


test('?- curt80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_246336)),nondet]):-call(curt80("Spot is Data's orange coloured cat",[descriptionTest]),_246336).


test('?- curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_246858)),nondet]):-call(curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_246858).


test('?- curt80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_246480)),nondet]):-call(curt80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_246480).


test('?- curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_246462)),nondet]):-call(curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_246462).


test('?- curt80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_246804)),nondet]):-call(curt80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_246804).


test('?- curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_246450)),nondet]):-call(curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_246450).


test('?- curt80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_246318)),nondet]):-call(curt80("Alexander Rozhenko is Worf's son",[descriptionTest]),_246318).


test('?- curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_246600)),nondet]):-call(curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_246600).


test('?- curt80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_246516)),nondet]):-call(curt80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_246516).


test('?- curt80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_246462)),nondet]):-call(curt80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_246462).


test('?- curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_246864)),nondet]):-call(curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_246864).


test('?- curt80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_246342)),nondet]):-call(curt80("A large phaser rifle is lying here",[descriptionTest]),_246342).


test('?- curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_246936)),nondet]):-call(curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_246936).


test('?- curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_246540)),nondet]):-call(curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_246540).


test('?- curt80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246888)),nondet]):-call(curt80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246888).


test('?- curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_246540)),nondet]):-call(curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_246540).


test('?- curt80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246912)),nondet]):-call(curt80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246912).


test('?- curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_246516)),nondet]):-call(curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_246516).


test('?- curt80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246888)),nondet]):-call(curt80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246888).


test('?- curt80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_246438)),nondet]):-call(curt80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_246438).


test('?- curt80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_246978)),nondet]):-call(curt80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_246978).


test('?- curt80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_246408)),nondet]):-call(curt80("A Starfleet communication badge is lying here",[descriptionTest]),_246408).


test('?- curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_247446)),nondet]):-call(curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_247446).


test('?- curt80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_246402)),nondet]):-call(curt80("Worf's silver chain sash has been left here",[descriptionTest]),_246402).


test('?- curt80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_247014)),nondet]):-call(curt80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_247014).


test('?- curt80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_246294)),nondet]):-call(curt80("Geordi's VISOR is lying here",[descriptionTest]),_246294).


test('?- curt80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_247686)),nondet]):-call(curt80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_247686).


test('?- curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_246462)),nondet]):-call(curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_246462).


test('?- curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_247248)),nondet]):-call(curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_247248).


test('?- curt80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_246396)),nondet]):-call(curt80("A shard of dilithium crystal is lying here",[descriptionTest]),_246396).


test('?- curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_247050)),nondet]):-call(curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_247050).


test('?- curt80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_246408)),nondet]):-call(curt80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_246408).


test('?- curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_247020)),nondet]):-call(curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_247020).


test('?- curt80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_246420)),nondet]):-call(curt80("Commander Riker's trombone has been placed here",[descriptionTest]),_246420).


test('?- curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_246852)),nondet]):-call(curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_246852).


test('?- curt80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_246348)),nondet]):-call(curt80("A small cup of tea is sitting here",[descriptionTest]),_246348).


test('?- curt80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_246366)),nondet]):-call(curt80("A bottle of synthehol is standing here",[descriptionTest]),_246366).


test('?- curt80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_246378)),nondet]):-call(curt80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_246378).


test('?- curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_246402)),nondet]):-call(curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_246402).


test('?- curt80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_246414)),nondet]):-call(curt80("A small glass of prune juice is sitting here",[descriptionTest]),_246414).


test('?- curt80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_246384)),nondet]):-call(curt80("A bottle of Vulcan beer is standing here",[descriptionTest]),_246384).


test('?- curt80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_246456)),nondet]):-call(curt80("You find yourself in the middle of main engineering",[descriptionTest]),_246456).


test('?- curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_246576)),nondet]):-call(curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_246576).


test('?- curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_246876)),nondet]):-call(curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_246876).


test('?- curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_246684)),nondet]):-call(curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_246684).


test('?- curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_246612)),nondet]):-call(curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_246612).


test('?- curt80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_246792)),nondet]):-call(curt80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_246792).


test('?- curt80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_246384)),nondet]):-call(curt80("You're in the middle of Geordi's quarters",[descriptionTest]),_246384).


test('?- curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_246582)),nondet]):-call(curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_246582).


test('?- curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_246906)),nondet]):-call(curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_246906).


test('?- curt80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_246516)),nondet]):-call(curt80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_246516).


test('?- curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_246486)),nondet]):-call(curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_246486).


test('?- curt80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_246372)),nondet]):-call(curt80("You're in the middle of Data's quarters",[descriptionTest]),_246372).


test('?- curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_247434)),nondet]):-call(curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_247434).


test('?- curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_246648)),nondet]):-call(curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_246648).


test('?- curt80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_246672)),nondet]):-call(curt80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_246672).


test('?- curt80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_246300)),nondet]):-call(curt80("You're in the dimly lit Brig",[descriptionTest]),_246300).


test('?- curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_246690)),nondet]):-call(curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_246690).


test('?- curt80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_246768)),nondet]):-call(curt80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_246768).


test('?- curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_247062)),nondet]):-call(curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_247062).


test('?- curt80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_253290)),nondet]):-call(curt80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_253290).


test('?- curt80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_246774)),nondet]):-call(curt80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_246774).


test('?- curt80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_246378)),nondet]):-call(curt80("You're in the Enterprise transporter room",[descriptionTest]),_246378).


test('?- curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_246864)),nondet]):-call(curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_246864).


test('?- curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_246834)),nondet]):-call(curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_246834).


test('?- curt80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_246372)),nondet]):-call(curt80("You find yourself in a transporter beam",[descriptionTest]),_246372).


test('?- curt80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_246372)),nondet]):-call(curt80("All you can see is blue flashing light",[descriptionTest]),_246372).


test('?- curt80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_246528)),nondet]):-call(curt80("It feels as though your body is racing around at high speeds",[descriptionTest]),_246528).


test('?- curt80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_246648)),nondet]):-call(curt80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_246648).


test('?- curt80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_246576)),nondet]):-call(curt80("You step through the doors and find yourself in a large school room",[descriptionTest]),_246576).


test('?- curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_246954)),nondet]):-call(curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_246954).


test('?- curt80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_246708)),nondet]):-call(curt80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_246708).


test('?- curt80("You\'re in the turbolift",[descriptionTest])',[true(compound(_246258)),nondet]):-call(curt80("You're in the turbolift",[descriptionTest]),_246258).


test('?- curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_246636)),nondet]):-call(curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_246636).


test('?- curt80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_246528)),nondet]):-call(curt80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_246528).


test('?- curt80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_246516)),nondet]):-call(curt80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_246516).


test('?- curt80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_246270)),nondet]):-call(curt80("You're now on Holodeck 2",[descriptionTest]),_246270).


test('?- curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_246954)),nondet]):-call(curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_246954).


test('?- curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_246702)),nondet]):-call(curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_246702).


test('?- curt80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_246396)),nondet]):-call(curt80("Right now, this holodeck is not functioning",[descriptionTest]),_246396).


test('?- curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_246504)),nondet]):-call(curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_246504).


test('?- curt80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_246426)),nondet]):-call(curt80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_246426).


test('?- curt80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_246636)),nondet]):-call(curt80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_246636).


test('?- curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_246954)),nondet]):-call(curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_246954).


test('?- curt80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_246330)),nondet]):-call(curt80("You've arrived in Riker's quarters",[descriptionTest]),_246330).


test('?- curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_246906)),nondet]):-call(curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_246906).


test('?- curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_246840)),nondet]):-call(curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_246840).


test('?- curt80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_246444)),nondet]):-call(curt80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_246444).


test('?- curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_247080)),nondet]):-call(curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_247080).


test('?- curt80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_246876)),nondet]):-call(curt80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_246876).


test('?- curt80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_246348)),nondet]):-call(curt80("You emerge into a dark narrow alley",[descriptionTest]),_246348).


test('?- curt80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_246492)),nondet]):-call(curt80("Tall dark brick buildings block your way north and south",[descriptionTest]),_246492).


test('?- curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_246756)),nondet]):-call(curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_246756).


test('?- curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_246792)),nondet]):-call(curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_246792).


test('?- curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_246528)),nondet]):-call(curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_246528).


test('?- curt80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_246432)),nondet]):-call(curt80("The archway leading out of the holodeck is west",[descriptionTest]),_246432).


test('?- curt80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_246336)),nondet]):-call(curt80("You're in Doctor Crusher's quarters",[descriptionTest]),_246336).


test('?- curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_246732)),nondet]):-call(curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_246732).


test('?- curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_246822)),nondet]):-call(curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_246822).


test('?- curt80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_246564)),nondet]):-call(curt80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_246564).


test('?- curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_247188)),nondet]):-call(curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_247188).


test('?- curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_246660)),nondet]):-call(curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_246660).


test('?- curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_247056)),nondet]):-call(curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_247056).


test('?- curt80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_246528)),nondet]):-call(curt80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_246528).


test('?- curt80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_246456)),nondet]):-call(curt80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_246456).


test('?- curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_247350)),nondet]):-call(curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_247350).


test('?- curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_246528)),nondet]):-call(curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_246528).


test('?- curt80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_246438)),nondet]):-call(curt80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_246438).


test('?- curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_246630)),nondet]):-call(curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_246630).


test('?- curt80("A large grey door leads into space",[descriptionTest])',[true(compound(_246342)),nondet]):-call(curt80("A large grey door leads into space",[descriptionTest]),_246342).


test('?- curt80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_246528)),nondet]):-call(curt80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_246528).


test('?- curt80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_246600)),nondet]):-call(curt80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_246600).


test('?- curt80("You feel very cold",[descriptionTest])',[true(compound(_246228)),nondet]):-call(curt80("You feel very cold",[descriptionTest]),_246228).


test('?- curt80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_246498)),nondet]):-call(curt80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_246498).


test('?- curt80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_246384)),nondet]):-call(curt80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_246384).


test('?- curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_246996)),nondet]):-call(curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_246996).


test('?- curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_246720)),nondet]):-call(curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_246720).


test('?- curt80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_246270)),nondet]):-call(curt80("You're in Worf's quarters",[descriptionTest]),_246270).


test('?- curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_246714)),nondet]):-call(curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_246714).


test('?- curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_247128)),nondet]):-call(curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_247128).


test('?- curt80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_246336)),nondet]):-call(curt80("You emerge into the Enterprise gym",[descriptionTest]),_246336).


test('?- curt80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_246438)),nondet]):-call(curt80("The room is quite large, with a soft grey floor",[descriptionTest]),_246438).


test('?- curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_246846)),nondet]):-call(curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_246846).


test('?- curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_246810)),nondet]):-call(curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_246810).


test('?- curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_246498)),nondet]):-call(curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_246498).


test('?- curt80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_246564)),nondet]):-call(curt80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_246564).


test('?- curt80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_246654)),nondet]):-call(curt80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_246654).


test('?- curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_246948)),nondet]):-call(curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_246948).


test('?- curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_246966)),nondet]):-call(curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_246966).


test('?- curt80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_246420)),nondet]):-call(curt80("Two large windows offer a great view of space",[descriptionTest]),_246420).


test('?- curt80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_246672)),nondet]):-call(curt80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_246672).


test('?- curt80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_246348)),nondet]):-call(curt80("You're in the Enterprise science lab",[descriptionTest]),_246348).


test('?- curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_246738)),nondet]):-call(curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_246738).


test('?- curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_247236)),nondet]):-call(curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_247236).


test('?- curt80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_246492)),nondet]):-call(curt80("A complex looking computer console is facing this machine",[descriptionTest]),_246492).


test('?- curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_246648)),nondet]):-call(curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_246648).


test('?- curt80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_246408)),nondet]):-call(curt80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_246408).


test('?- curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_246642)),nondet]):-call(curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_246642).


test('?- curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_247014)),nondet]):-call(curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_247014).


test('?- curt80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_246816)),nondet]):-call(curt80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_246816).


test('?- curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_247212)),nondet]):-call(curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_247212).


test('?- curt80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_246414)),nondet]):-call(curt80("You're standing in Captain Picard's ready room",[descriptionTest]),_246414).


test('?- curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_246852)),nondet]):-call(curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_246852).


test('?- curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_246756)),nondet]):-call(curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_246756).


test('?- curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_246954)),nondet]):-call(curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_246954).


test('?- curt80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_246534)),nondet]):-call(curt80("This is where the Captain makes all of his important decisions",[descriptionTest]),_246534).


test('?- curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_246642)),nondet]):-call(curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_246642).


test('?- curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_246954)),nondet]):-call(curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_246954).


test('?- curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_246762)),nondet]):-call(curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_246762).


test('?- curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_246558)),nondet]):-call(curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_246558).


test('?- curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_246906)),nondet]):-call(curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_246906).


test('?- curt80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_246504)),nondet]):-call(curt80("This is where the ship's pilot and information officer sit",[descriptionTest]),_246504).


test('?- curt80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_246426)),nondet]):-call(curt80("You're in the conference room of the Enterprise",[descriptionTest]),_246426).


test('?- curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_246972)),nondet]):-call(curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_246972).


test('?- curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_246594)),nondet]):-call(curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_246594).


test('?- curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_246690)),nondet]):-call(curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_246690).


test('?- curt80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_246522)),nondet]):-call(curt80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_246522).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_169484)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_169484).


test('?- curt80("no two owners eat pizza",[sanity])',[true(compound(_169476)),nondet]):-call(curt80("no two owners eat pizza",[sanity]),_169476).


test('?- curt80("no three owners eat pizza",[sanity])',[true(compound(_169476)),nondet]):-call(curt80("no three owners eat pizza",[sanity]),_169476).


test('?- curt80("no three owners eat the same pizza",[sanity])',[true(compound(_169478)),nondet]):-call(curt80("no three owners eat the same pizza",[sanity]),_169478).


test('?- curt80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_169480)),nondet]):-call(curt80("no three owners eat the same kind of pizza",[sanity]),_169480).


test('?- curt80("no owners eat the same pizza",[sanity])',[true(compound(_169476)),nondet]):-call(curt80("no owners eat the same pizza",[sanity]),_169476).


test('?- curt80("no owners eat the same kind of pizza",[sanity])',[true(compound(_169478)),nondet]):-call(curt80("no owners eat the same kind of pizza",[sanity]),_169478).


test('?- curt80("there are 5 houses",[sanity])',[true(compound(_169474)),nondet]):-call(curt80("there are 5 houses",[sanity]),_169474).


test('?- curt80("there are not 5 houses",[sanity])',[true(compound(_169474)),nondet]):-call(curt80("there are not 5 houses",[sanity]),_169474).


test('?- curt80("there are not zero houses",[sanity])',[true(compound(_169476)),nondet]):-call(curt80("there are not zero houses",[sanity]),_169476).


test('?- curt80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_169484)),nondet]):-call(curt80(noun_phrase("less than 2 owners"),[sanity,bug]),_169484).


test('?- curt80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_169478)),nondet]):-call(curt80(noun_phrase("at most the 5 owners"),[sanity]),_169478).


test('?- curt80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_169478)),nondet]):-call(curt80(noun_phrase("at most 5 owners"),[sanity]),_169478).


test('?- curt80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_169478)),nondet]):-call(curt80(noun_phrase("less than 3 owners"),[sanity]),_169478).


test('?- curt80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_169480)),nondet]):-call(curt80(noun_phrase("at most 50 percent of owners"),[sanity]),_169480).


test('?- curt80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_169484)),nondet]):-call(curt80(noun_phrase("no three owners"),[sanity,no_working]),_169484).


test('?- curt80("terry writes a non-program.",[tell])',[true(compound(_169476)),nondet]):-call(curt80("terry writes a non-program.",[tell]),_169476).


test('?- curt80("every nonhuman programmer writes a program.",[tell])',[true(compound(_169480)),nondet]):-call(curt80("every nonhuman programmer writes a program.",[tell]),_169480).


test('?- curt80("every human programmer writes a not a program.",[tell])',[true(compound(_169480)),nondet]):-call(curt80("every human programmer writes a not a program.",[tell]),_169480).


test('?- curt80("every human programmer happily writes a not a program.",[tell])',[true(compound(_169482)),nondet]):-call(curt80("every human programmer happily writes a not a program.",[tell]),_169482).


:- end_tests(curt80).



:- begin_tests(e2c).



test('?- e2c("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_169524)),nondet]):-call(e2c("His friends are liked by hers.",[bad_juju,sanity]),_169524).


test('?- e2c("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_169526)),nondet]):-call(e2c("Her friends are not liked by his.",[bad_juju,sanity]),_169526).


test('?- e2c("Do their friends like each other?",[bad_juju,feature])',[true(compound(_169526)),nondet]):-call(e2c("Do their friends like each other?",[bad_juju,feature]),_169526).


test('?- e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_169468),sanity])',[true(compound(_169530)),nondet]):-call(e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_169468),sanity]),_169530).


test('?- e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_169466),sanity])',[true(compound(_169528)),nondet]):-call(e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_169466),sanity]),_169528).


test('?- e2c("There are 5 houses with five different colors.",[riddle(_169470),sanity])',[true(compound(_169532)),nondet]):-call(e2c("There are 5 houses with five different colors.",[riddle(_169470),sanity]),_169532).


test('?- e2c("There are 5 houses",[riddle_prep,sanity])',[true(compound(_169522)),nondet]):-call(e2c("There are 5 houses",[riddle_prep,sanity]),_169522).


test('?- e2c("Each house has a different color",[riddle_prep,sanity])',[true(compound(_169526)),nondet]):-call(e2c("Each house has a different color",[riddle_prep,sanity]),_169526).


test('?- e2c("In each house lives a person with a different nationality.",[riddle(_169474),sanity])',[true(compound(_169536)),nondet]):-call(e2c("In each house lives a person with a different nationality.",[riddle(_169474),sanity]),_169536).


test('?- e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_169548)),nondet]):-call(e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_169548).


test('?- e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_169536)),nondet]):-call(e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_169536).


test('?- e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_169534)),nondet]):-call(e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_169534).


test('?- e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_169538)),nondet]):-call(e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_169538).


test('?- e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_169542)),nondet]):-call(e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_169542).


test('?- e2c("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_169534)),nondet]):-call(e2c("No owners have the same pet.",[riddle(1),sanity,regression]),_169534).


test('?- e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_169538)),nondet]):-call(e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_169538).


test('?- e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_169532)),nondet]):-call(e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_169532).


test('?- e2c("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_169536)),nondet]):-call(e2c("No two owners have the same pet.",[riddle(1),sanity,regression]),_169536).


test('?- e2c("The brit lives in the red house.",[riddle(_169468),sanity])',[true(compound(_169530)),nondet]):-call(e2c("The brit lives in the red house.",[riddle(_169468),sanity]),_169530).


test('?- e2c("The swede keeps dogs as pets.",[riddle(_169466),sanity])',[true(compound(_169528)),nondet]):-call(e2c("The swede keeps dogs as pets.",[riddle(_169466),sanity]),_169528).


test('?- e2c("A dane drinks tea.",[riddle(_169464),sanity])',[true(compound(_169526)),nondet]):-call(e2c("A dane drinks tea.",[riddle(_169464),sanity]),_169526).


test('?- e2c("The green house is on the left of the white house.",[riddle(_169472),sanity])',[true(compound(_169534)),nondet]):-call(e2c("The green house is on the left of the white house.",[riddle(_169472),sanity]),_169534).


test('?- e2c("The green house\'s owner drinks coffee.",[riddle(_169468),sanity])',[true(compound(_169530)),nondet]):-call(e2c("The green house's owner drinks coffee.",[riddle(_169468),sanity]),_169530).


test('?- e2c("The person who smokes Pall Mall rears birds.",[riddle(_169470),sanity,regression])',[true(compound(_169538)),nondet]):-call(e2c("The person who smokes Pall Mall rears birds.",[riddle(_169470),sanity,regression]),_169538).


test('?- e2c("The owner of the yellow house smokes Dunhill.",[riddle(_169470),sanity])',[true(compound(_169532)),nondet]):-call(e2c("The owner of the yellow house smokes Dunhill.",[riddle(_169470),sanity]),_169532).


test('?- e2c("The man living in the center house drinks milk.",[riddle(_169472),sanity])',[true(compound(_169534)),nondet]):-call(e2c("The man living in the center house drinks milk.",[riddle(_169472),sanity]),_169534).


test('?- e2c("The Norwegian lives in the first house .",[riddle(_169470),sanity])',[true(compound(_169532)),nondet]):-call(e2c("The Norwegian lives in the first house .",[riddle(_169470),sanity]),_169532).


test('?- e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_169476),sanity])',[true(compound(_169538)),nondet]):-call(e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_169476),sanity]),_169538).


test('?- e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_169476),sanity])',[true(compound(_169538)),nondet]):-call(e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_169476),sanity]),_169538).


test('?- e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_169470),sanity])',[true(compound(_169532)),nondet]):-call(e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_169470),sanity]),_169532).


test('?- e2c("The German smokes Prince.",[riddle(_169466),sanity])',[true(compound(_169528)),nondet]):-call(e2c("The German smokes Prince.",[riddle(_169466),sanity]),_169528).


test('?- e2c("The Norwegian lives next to the blue house.",[riddle(_169470),sanity])',[true(compound(_169532)),nondet]):-call(e2c("The Norwegian lives next to the blue house.",[riddle(_169470),sanity]),_169532).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_169474),sanity])',[true(compound(_169536)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_169474),sanity]),_169536).


test('?- e2c("Who owns the fish?",[riddle(_169464),sanity])',[true(compound(_169526)),nondet]):-call(e2c("Who owns the fish?",[riddle(_169464),sanity]),_169526).


test('?- e2c("One woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("One woman paints.",[quants]),_169516).


test('?- e2c("No woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("No woman paints.",[quants]),_169516).


test('?- e2c("Some woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Some woman paints.",[quants]),_169516).


test('?- e2c("Every woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Every woman paints.",[quants]),_169516).


test('?- e2c("Each woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Each woman paints.",[quants]),_169516).


test('?- e2c("Any woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Any woman paints.",[quants]),_169516).


test('?- e2c("The woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("The woman paints.",[quants]),_169516).


test('?- e2c("The not woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("The not woman paints.",[quants]),_169516).


test('?- e2c("Not a woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Not a woman paints.",[quants]),_169516).


test('?- e2c("Not one woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Not one woman paints.",[quants]),_169516).


test('?- e2c("Not no woman paints.",[quants_neg_postcond])',[true(compound(_169516)),nondet]):-call(e2c("Not no woman paints.",[quants_neg_postcond]),_169516).


test('?- e2c("Not some woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Not some woman paints.",[quants]),_169516).


test('?- e2c("Not every woman paints.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("Not every woman paints.",[quants]),_169518).


test('?- e2c("Not each woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Not each woman paints.",[quants]),_169516).


test('?- e2c("Not any woman paints.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Not any woman paints.",[quants]),_169516).


test('?- e2c("The women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("The women paint.",[quants]),_169516).


test('?- e2c("Women paint.",[quants])',[true(compound(_169514)),nondet]):-call(e2c("Women paint.",[quants]),_169514).


test('?- e2c("Some women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Some women paint.",[quants]),_169516).


test('?- e2c("No women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("No women paint.",[quants]),_169516).


test('?- e2c("All women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("All women paint.",[quants]),_169516).


test('?- e2c("Any women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Any women paint.",[quants]),_169516).


test('?- e2c("Not women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Not women paint.",[quants]),_169516).


test('?- e2c("Not no women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Not no women paint.",[quants]),_169516).


test('?- e2c("Not all women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Not all women paint.",[quants]),_169516).


test('?- e2c("Not any women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Not any women paint.",[quants]),_169516).


test('?- e2c("The three women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("The three women paint.",[quants]),_169516).


test('?- e2c("Three women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Three women paint.",[quants]),_169516).


test('?- e2c("Some three women paint.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("Some three women paint.",[quants]),_169518).


test('?- e2c("No three women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("No three women paint.",[quants]),_169516).


test('?- e2c("Every three women paint.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("Every three women paint.",[quants]),_169518).


test('?- e2c("All three women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("All three women paint.",[quants]),_169516).


test('?- e2c("Any three women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Any three women paint.",[quants]),_169516).


test('?- e2c("Not three women paint.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("Not three women paint.",[quants]),_169516).


test('?- e2c("Not some three women paint.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("Not some three women paint.",[quants]),_169518).


test('?- e2c("Not no three women paint.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("Not no three women paint.",[quants]),_169518).


test('?- e2c("Not all three women paint.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("Not all three women paint.",[quants]),_169518).


test('?- e2c("Not every three women paint.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("Not every three women paint.",[quants]),_169518).


test('?- e2c("Not any three women paint.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("Not any three women paint.",[quants]),_169518).


test('?- e2c("Not three of the women paint.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("Not three of the women paint.",[quants]),_169518).


test('?- e2c("Not some of the three women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("Not some of the three women paint.",[quants]),_169520).


test('?- e2c("Not no three of the women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("Not no three of the women paint.",[quants]),_169520).


test('?- e2c("Not all three of the women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("Not all three of the women paint.",[quants]),_169520).


test('?- e2c("Not every three of the women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("Not every three of the women paint.",[quants]),_169520).


test('?- e2c("Not any three of the women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("Not any three of the women paint.",[quants]),_169520).


test('?- e2c("Not three of the four women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("Not three of the four women paint.",[quants]),_169520).


test('?- e2c("Not none of three out of the four women paint.",[quants])',[true(compound(_169522)),nondet]):-call(e2c("Not none of three out of the four women paint.",[quants]),_169522).


test('?- e2c("Not all three of the four women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("Not all three of the four women paint.",[quants]),_169520).


test('?- e2c("Not any three of the four women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("Not any three of the four women paint.",[quants]),_169520).


test('?- e2c("Three of the four women paint.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("Three of the four women paint.",[quants]),_169518).


test('?- e2c("Three out of the four women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("Three out of the four women paint.",[quants]),_169520).


test('?- e2c("All three of the four women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("All three of the four women paint.",[quants]),_169520).


test('?- e2c("Any three of the four women paint.",[quants])',[true(compound(_169520)),nondet]):-call(e2c("Any three of the four women paint.",[quants]),_169520).


test('?- e2c("I paint",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("I paint",[pronoun]),_169514).


test('?- e2c("you paint",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("you paint",[pronoun]),_169514).


test('?- e2c("We paint",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("We paint",[pronoun]),_169514).


test('?- e2c("None paint",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("None paint",[pronoun]),_169514).


test('?- e2c("They paint",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("They paint",[pronoun]),_169514).


test('?- e2c("Some paint",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("Some paint",[pronoun]),_169514).


test('?- e2c("It paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("It paints",[pronoun]),_169514).


test('?- e2c("he paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("he paints",[pronoun]),_169514).


test('?- e2c("She paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("She paints",[pronoun]),_169514).


test('?- e2c("Someone paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("Someone paints",[pronoun]),_169514).


test('?- e2c("Anybody paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("Anybody paints",[pronoun]),_169514).


test('?- e2c("Anyone paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("Anyone paints",[pronoun]),_169514).


test('?- e2c("Anything paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Anything paints",[pronoun]),_169516).


test('?- e2c("Everybody paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Everybody paints",[pronoun]),_169516).


test('?- e2c("Everyone paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Everyone paints",[pronoun]),_169516).


test('?- e2c("Everything paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Everything paints",[pronoun]),_169516).


test('?- e2c("Nobody paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("Nobody paints",[pronoun]),_169514).


test('?- e2c("No one paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("No one paints",[pronoun]),_169514).


test('?- e2c("Nothing paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("Nothing paints",[pronoun]),_169514).


test('?- e2c("One paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("One paints",[pronoun]),_169514).


test('?- e2c("Somebody paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Somebody paints",[pronoun]),_169516).


test('?- e2c("Something paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Something paints",[pronoun]),_169516).


test('?- e2c("Not anybody paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Not anybody paints",[pronoun]),_169516).


test('?- e2c("Not anyone paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Not anyone paints",[pronoun]),_169516).


test('?- e2c("Not anything paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Not anything paints",[pronoun]),_169516).


test('?- e2c("Not everybody paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Not everybody paints",[pronoun]),_169516).


test('?- e2c("Not everyone paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Not everyone paints",[pronoun]),_169516).


test('?- e2c("Not everything paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Not everything paints",[pronoun]),_169516).


test('?- e2c("Not nothing paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Not nothing paints",[pronoun]),_169516).


test('?- e2c("Not one paints",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("Not one paints",[pronoun]),_169514).


test('?- e2c("Not somebody paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Not somebody paints",[pronoun]),_169516).


test('?- e2c("Not something paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("Not something paints",[pronoun]),_169516).


test('?- e2c("She likes i",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("She likes i",[pronoun]),_169514).


test('?- e2c("She likes me",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("She likes me",[pronoun]),_169514).


test('?- e2c("She likes you",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("She likes you",[pronoun]),_169514).


test('?- e2c("She likes it",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("She likes it",[pronoun]),_169514).


test('?- e2c("She likes us",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("She likes us",[pronoun]),_169514).


test('?- e2c("She likes them",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("She likes them",[pronoun]),_169514).


test('?- e2c("She likes no one",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("She likes no one",[pronoun]),_169516).


test('?- e2c("She likes none",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("She likes none",[pronoun]),_169514).


test('?- e2c("She likes him",[pronoun])',[true(compound(_169514)),nondet]):-call(e2c("She likes him",[pronoun]),_169514).


test('?- e2c("She likes herself",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("She likes herself",[pronoun]),_169516).


test('?- e2c("She likes himself",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("She likes himself",[pronoun]),_169516).


test('?- e2c("It is us that paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("It is us that paints",[pronoun]),_169516).


test('?- e2c("It is them that paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("It is them that paints",[pronoun]),_169516).


test('?- e2c("It is he that paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("It is he that paints",[pronoun]),_169516).


test('?- e2c("It is she that paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("It is she that paints",[pronoun]),_169516).


test('?- e2c("It is her that paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("It is her that paints",[pronoun]),_169516).


test('?- e2c("It is him that paints",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("It is him that paints",[pronoun]),_169516).


test('?- e2c("We are us that paint",[pronoun])',[true(compound(_169516)),nondet]):-call(e2c("We are us that paint",[pronoun]),_169516).


test('?- e2c("We are all of us that paint",[pronoun])',[true(compound(_169518)),nondet]):-call(e2c("We are all of us that paint",[pronoun]),_169518).


test('?- e2c("It is everybody that paints",[pronoun])',[true(compound(_169518)),nondet]):-call(e2c("It is everybody that paints",[pronoun]),_169518).


test('?- e2c("Every man that paints likes monet.",[bratko])',[true(compound(_169520)),nondet]):-call(e2c("Every man that paints likes monet.",[bratko]),_169520).


test('?- e2c("A woman that admires John paints.",[bratko])',[true(compound(_169520)),nondet]):-call(e2c("A woman that admires John paints.",[bratko]),_169520).


test('?- e2c("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_169526)),nondet]):-call(e2c("Every woman that likes a man that admires monet paints.",[bratko]),_169526).


test('?- e2c("John likes Annie.",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("John likes Annie.",[bratko]),_169516).


test('?- e2c("Annie likes a man that admires monet.",[bratko])',[true(compound(_169520)),nondet]):-call(e2c("Annie likes a man that admires monet.",[bratko]),_169520).


test('?- e2c("Bertrand Russell wrote principia.",[bratko])',[true(compound(_169520)),nondet]):-call(e2c("Bertrand Russell wrote principia.",[bratko]),_169520).


test('?- e2c("An author wrote principia.",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("An author wrote principia.",[bratko]),_169518).


test('?- e2c("Iraq is a country.",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("Iraq is a country.",[bratko]),_169516).


test('?- e2c("A happy author wrote principia.",[bratko])',[true(compound(_169520)),nondet]):-call(e2c("A happy author wrote principia.",[bratko]),_169520).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_169516).


test('?- e2c("Bertrand is an author.",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("Bertrand is an author.",[bratko]),_169516).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_169516).


test('?- e2c("Every author is a programmer.",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("Every author is a programmer.",[bratko]),_169518).


test('?- e2c("Is Bertrand an programmer?",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("Is Bertrand an programmer?",[bratko]),_169518).


test('?- e2c("What is a author?",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("What is a author?",[bratko]),_169516).


test('?- e2c("What did Bertrand write?",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("What did Bertrand write?",[bratko]),_169518).


test('?- e2c("What is a book?",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("What is a book?",[bratko]),_169516).


test('?- e2c("Principia is a book.",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("Principia is a book.",[bratko]),_169516).


test('?- e2c("Bertrand is Bertrand.",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("Bertrand is Bertrand.",[bratko]),_169516).


test('?- e2c("Shrdlu halts.",[bratko])',[true(compound(_169514)),nondet]):-call(e2c("Shrdlu halts.",[bratko]),_169514).


test('?- e2c("Every student wrote a program.",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("Every student wrote a program.",[bratko]),_169518).


test('?- e2c("Terry writes a program.",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("Terry writes a program.",[bratko]),_169518).


test('?- e2c("Terry writes a program that halts.",[bratko])',[true(compound(_169520)),nondet]):-call(e2c("Terry writes a program that halts.",[bratko]),_169520).


test('?- e2c("An author of every book wrote a program.",[bratko])',[true(compound(_169522)),nondet]):-call(e2c("An author of every book wrote a program.",[bratko]),_169522).


test('?- e2c("A man hapilly maried paints.",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("A man hapilly maried paints.",[bratko]),_169518).


test('?- e2c("A hapilly maried man paints.",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("A hapilly maried man paints.",[bratko]),_169518).


test('?- e2c("A man who knows paints.",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("A man who knows paints.",[bratko]),_169518).


test('?- e2c("A man gives something.",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("A man gives something.",[bratko]),_169516).


test('?- e2c("A man gives his word.",[bratko])',[true(compound(_169516)),nondet]):-call(e2c("A man gives his word.",[bratko]),_169516).


test('?- e2c("A man of his word paints.",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("A man of his word paints.",[bratko]),_169518).


test('?- e2c("A man paints.",[bratko])',[true(compound(_169514)),nondet]):-call(e2c("A man paints.",[bratko]),_169514).


test('?- e2c("A man that paints paints.",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("A man that paints paints.",[bratko]),_169518).


test('?- e2c("A man walks.",[bratko])',[true(compound(_169514)),nondet]):-call(e2c("A man walks.",[bratko]),_169514).


test('?- e2c("A man that walks paints.",[bratko])',[true(compound(_169518)),nondet]):-call(e2c("A man that walks paints.",[bratko]),_169518).


test('?- e2c("It halts.",[bratko])',[true(compound(_169514)),nondet]):-call(e2c("It halts.",[bratko]),_169514).


test('?- e2c("A man of his word that walks paints.",[bratko])',[true(compound(_169520)),nondet]):-call(e2c("A man of his word that walks paints.",[bratko]),_169520).


test('?- e2c("The cost of what the product is changes.",[bratko])',[true(compound(_169522)),nondet]):-call(e2c("The cost of what the product is changes.",[bratko]),_169522).


test('?- e2c("We need a virtual machine server.",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("We need a virtual machine server.",[aindy]),_169520).


test('?- e2c("The virtual machine server should have several VMs.",[aindy])',[true(compound(_169524)),nondet]):-call(e2c("The virtual machine server should have several VMs.",[aindy]),_169524).


test('?- e2c("One VM should be the POSI VM.",[aindy])',[true(compound(_169518)),nondet]):-call(e2c("One VM should be the POSI VM.",[aindy]),_169518).


test('?- e2c("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("One VM should be the FRDCSA.org VM.",[aindy]),_169520).


test('?- e2c("One VM should be the mail server.",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("One VM should be the mail server.",[aindy]),_169520).


test('?- e2c("One computer should be the backup server.",[aindy])',[true(compound(_169522)),nondet]):-call(e2c("One computer should be the backup server.",[aindy]),_169522).


test('?- e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_169538)),nondet]):-call(e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_169538).


test('?- e2c("I need a fast computer for work.",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("I need a fast computer for work.",[aindy]),_169520).


test('?- e2c("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_169530)),nondet]):-call(e2c("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_169530).


test('?- e2c("I need a dedicated computer for network security research.",[aindy])',[true(compound(_169526)),nondet]):-call(e2c("I need a dedicated computer for network security research.",[aindy]),_169526).


test('?- e2c("I need a machine to run Tails on.",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("I need a machine to run Tails on.",[aindy]),_169520).


test('?- e2c("I need a machine off the network for airgap security.",[aindy])',[true(compound(_169524)),nondet]):-call(e2c("I need a machine off the network for airgap security.",[aindy]),_169524).


test('?- e2c("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_169530)),nondet]):-call(e2c("One VM should be the game server for running game development projects.",[aindy]),_169530).


test('?- e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_169524)),nondet]):-call(e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_169524).


test('?- e2c("I could read about how to build a private watson.",[aindy])',[true(compound(_169524)),nondet]):-call(e2c("I could read about how to build a private watson.",[aindy]),_169524).


test('?- e2c("Need backups.",[aindy])',[true(compound(_169514)),nondet]):-call(e2c("Need backups.",[aindy]),_169514).


test('?- e2c("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_169528)),nondet]):-call(e2c("Practice setting up backups of a machine to a different machine.",[aindy]),_169528).


test('?- e2c("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_169526)),nondet]):-call(e2c("Set up schedules for updating the software on all machines.",[aindy]),_169526).


test('?- e2c("Read books on server room layout.",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("Read books on server room layout.",[aindy]),_169520).


test('?- e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_169528)),nondet]):-call(e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_169528).


test('?- e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_169530)),nondet]):-call(e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_169530).


test('?- e2c("I want a gaming computer.  Do I?",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("I want a gaming computer.  Do I?",[aindy]),_169520).


test('?- e2c("I want a windows 7 computer for work.",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("I want a windows 7 computer for work.",[aindy]),_169520).


test('?- e2c("I want a fast linux computer for work.",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("I want a fast linux computer for work.",[aindy]),_169520).


test('?- e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_169540)),nondet]):-call(e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_169540).


test('?- e2c("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_169526)),nondet]):-call(e2c("I could install a fresh operating system on justin for work.",[aindy]),_169526).


test('?- e2c("I probably want a separate git computer.",[aindy])',[true(compound(_169522)),nondet]):-call(e2c("I probably want a separate git computer.",[aindy]),_169522).


test('?- e2c("I need to start buying servers.",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("I need to start buying servers.",[aindy]),_169520).


test('?- e2c("I want a rackmount case for servers.",[aindy])',[true(compound(_169520)),nondet]):-call(e2c("I want a rackmount case for servers.",[aindy]),_169520).


test('?- e2c("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_169526)),nondet]):-call(e2c("Each african country is bordered by 2 oceans.",[chat80(tell)]),_169526).


test('?- e2c("2 oceans border each african country.",[chat80(tell)])',[true(compound(_169524)),nondet]):-call(e2c("2 oceans border each african country.",[chat80(tell)]),_169524).


test('?- e2c("There are 10 large cars.",[quants])',[true(compound(_169518)),nondet]):-call(e2c("There are 10 large cars.",[quants]),_169518).


test('?- e2c("There are 10 oceans.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("There are 10 oceans.",[quants]),_169516).


test('?- e2c("There are 10 women.",[quants])',[true(compound(_169516)),nondet]):-call(e2c("There are 10 women.",[quants]),_169516).


test('?- e2c("An ocean borders an African country.",[chat80(tell)])',[true(compound(_169524)),nondet]):-call(e2c("An ocean borders an African country.",[chat80(tell)]),_169524).


test('?- e2c("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_169532)),nondet]):-call(e2c("What is the ocean that borders african countries and that borders asian countries?",[tell]),_169532).


test('?- e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_169534)),nondet]):-call(e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_169534).


test('?- e2c("Bertrand wrote a book.",[bratko(book)])',[true(compound(_169520)),nondet]):-call(e2c("Bertrand wrote a book.",[bratko(book)]),_169520).


test('?- e2c("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_169522)),nondet]):-call(e2c("Bertrand wrote nothing.",[bratko(book)]),_169522).


test('?- e2c("Bertrand wrote.",[bratko(book)])',[true(compound(_169520)),nondet]):-call(e2c("Bertrand wrote.",[bratko(book)]),_169520).


test('?- e2c("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_169524)),nondet]):-call(e2c("Bertrand wrote a book about Gottlob.",[bratko(book)]),_169524).


test('?- e2c("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_169522)),nondet]):-call(e2c("Bertrand wrote about Gottlob.",[bratko(book)]),_169522).


test('?- e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_169524)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_169524).


test('?- e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_169526)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_169526).


test('?- e2c("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_169524)),nondet]):-call(e2c("What did alfred write to Bertrand?",[bratko(book)]),_169524).


test('?- e2c("Alfred wrote a letter.",[bratko(book)])',[true(compound(_169520)),nondet]):-call(e2c("Alfred wrote a letter.",[bratko(book)]),_169520).


test('?- e2c("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_169524)),nondet]):-call(e2c("Alfred wrote a letter to Bertrand.",[bratko(book)]),_169524).


test('?- e2c("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_169524)),nondet]):-call(e2c("Alfred wrote something to Bertrand.",[bratko(book)]),_169524).


test('?- e2c("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_169522)),nondet]):-call(e2c("Alfred wrote to Bertrand.",[bratko(book)]),_169522).


test('?- e2c("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_169524)),nondet]):-call(e2c("Alfred wrote to Bertrand a letter.",[bratko(book)]),_169524).


test('?- e2c("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_169524)),nondet]):-call(e2c("Alfred wrote Bertrand a letter.",[bratko(book)]),_169524).


test('?- e2c("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_169524)),nondet]):-call(e2c("Who did alfred write a letter to?",[bratko(book)]),_169524).


test('?- e2c("Alfred gave it.",[bratko(book)])',[true(compound(_169520)),nondet]):-call(e2c("Alfred gave it.",[bratko(book)]),_169520).


test('?- e2c("Alfred gave a book.",[bratko(book)])',[true(compound(_169520)),nondet]):-call(e2c("Alfred gave a book.",[bratko(book)]),_169520).


test('?- e2c("a pride of lions paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a pride of lions paint",[of]),_169516).


test('?- e2c("a flock of birds paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a flock of birds paint",[of]),_169516).


test('?- e2c("a litter of pups paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a litter of pups paint",[of]),_169516).


test('?- e2c("a prickle of porcupines paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a prickle of porcupines paint",[of]),_169518).


test('?- e2c("a litter of cubs paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a litter of cubs paint",[of]),_169516).


test('?- e2c("a pack of dogs paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a pack of dogs paint",[of]),_169516).


test('?- e2c("a colony of beavers paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a colony of beavers paint",[of]),_169518).


test('?- e2c("a gaggle of geese paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a gaggle of geese paint",[of]),_169518).


test('?- e2c("a family of otters paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a family of otters paint",[of]),_169518).


test('?- e2c("a huddle of walruses paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a huddle of walruses paint",[of]),_169518).


test('?- e2c("a herd of deer paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a herd of deer paint",[of]),_169516).


test('?- e2c("a culture of bacteria paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a culture of bacteria paint",[of]),_169518).


test('?- e2c("a swarm of bees paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a swarm of bees paint",[of]),_169516).


test('?- e2c("a bed of clams paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a bed of clams paint",[of]),_169516).


test('?- e2c("a school of cod paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a school of cod paint",[of]),_169516).


test('?- e2c("a herd of dinosaurs paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a herd of dinosaurs paint",[of]),_169518).


test('?- e2c("a mess of iguanas paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a mess of iguanas paint",[of]),_169518).


test('?- e2c("a mob of wombats paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a mob of wombats paint",[of]),_169516).


test('?- e2c("a pod of pelicans paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a pod of pelicans paint",[of]),_169518).


test('?- e2c("a troop of boy scouts paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a troop of boy scouts paint",[of]),_169518).


test('?- e2c("a team of athletes paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a team of athletes paint",[of]),_169518).


test('?- e2c("a panel of experts paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a panel of experts paint",[of]),_169518).


test('?- e2c("a crew of sailors paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a crew of sailors paint",[of]),_169518).


test('?- e2c("a band of robbers paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a band of robbers paint",[of]),_169518).


test('?- e2c("a troupe of performers paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a troupe of performers paint",[of]),_169518).


test('?- e2c("a crowd of onlookers paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a crowd of onlookers paint",[of]),_169518).


test('?- e2c("a curse of painters paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("a curse of painters paint",[of]),_169518).


test('?- e2c("a fleet of cars paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a fleet of cars paint",[of]),_169516).


test('?- e2c("a pair of shoes paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a pair of shoes paint",[of]),_169516).


test('?- e2c("a fleet of ships paint",[of])',[true(compound(_169516)),nondet]):-call(e2c("a fleet of ships paint",[of]),_169516).


test('?- e2c("an anthology of stories paint",[of])',[true(compound(_169518)),nondet]):-call(e2c("an anthology of stories paint",[of]),_169518).


test('?- e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_246492)),nondet]):-call(e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_246492).


test('?- e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_246462)),nondet]):-call(e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_246462).


test('?- e2c("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_246600)),nondet]):-call(e2c("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_246600).


test('?- e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_246444)),nondet]):-call(e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_246444).


test('?- e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_246492)),nondet]):-call(e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_246492).


test('?- e2c("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_246588)),nondet]):-call(e2c("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_246588).


test('?- e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_246546)),nondet]):-call(e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_246546).


test('?- e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_246738)),nondet]):-call(e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_246738).


test('?- e2c("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_246510)),nondet]):-call(e2c("He stowed super-human strength, and is extremely tough",[descriptionTest]),_246510).


test('?- e2c("Logged on player character",[descriptionTest])',[true(compound(_246318)),nondet]):-call(e2c("Logged on player character",[descriptionTest]),_246318).


test('?- e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_246576)),nondet]):-call(e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_246576).


test('?- e2c("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_246522)),nondet]):-call(e2c("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_246522).


test('?- e2c("Wesley is her son",[descriptionTest])',[true(compound(_246264)),nondet]):-call(e2c("Wesley is her son",[descriptionTest]),_246264).


test('?- e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_246912)),nondet]):-call(e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_246912).


test('?- e2c("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_246342)),nondet]):-call(e2c("Counselor Deanna Troi is here",[descriptionTest]),_246342).


test('?- e2c("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_246438)),nondet]):-call(e2c("Counselor Troi is the ship's main counselor",[descriptionTest]),_246438).


test('?- e2c("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_246594)),nondet]):-call(e2c("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_246594).


test('?- e2c("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_246468)),nondet]):-call(e2c("Commander William Riker is here, staring at you",[descriptionTest]),_246468).


test('?- e2c("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_246474)),nondet]):-call(e2c("Commander Riker is the Enterprise's first officer",[descriptionTest]),_246474).


test('?- e2c("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_246444)),nondet]):-call(e2c("He's in charge of keeping the crew in line",[descriptionTest]),_246444).


test('?- e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_246510)),nondet]):-call(e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_246510).


test('?- e2c("Captain Picard is a very important man",[descriptionTest])',[true(compound(_246408)),nondet]):-call(e2c("Captain Picard is a very important man",[descriptionTest]),_246408).


test('?- e2c("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_246510)),nondet]):-call(e2c("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_246510).


test('?- e2c("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_246354)),nondet]):-call(e2c("He's very smart, and very wise",[descriptionTest]),_246354).


test('?- e2c("Don\'t mess with him!",[descriptionTest])',[true(compound(_246282)),nondet]):-call(e2c("Don't mess with him!",[descriptionTest]),_246282).


test('?- e2c("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_246360)),nondet]):-call(e2c("Guinan is here, tending the bar",[descriptionTest]),_246360).


test('?- e2c("Guinan is a strange being",[descriptionTest])',[true(compound(_246318)),nondet]):-call(e2c("Guinan is a strange being",[descriptionTest]),_246318).


test('?- e2c("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_247026)),nondet]):-call(e2c("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_247026).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_246528)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_246528).


test('?- e2c("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_246528)),nondet]):-call(e2c("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_246528).


test('?- e2c("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_246828)),nondet]):-call(e2c("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_246828).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_246522)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_246522).


test('?- e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_246546)),nondet]):-call(e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_246546).


test('?- e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_246816)),nondet]):-call(e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_246816).


test('?- e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_246738)),nondet]):-call(e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_246738).


test('?- e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_246528)),nondet]):-call(e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_246528).


test('?- e2c("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_246408)),nondet]):-call(e2c("Livingston is Captain Picard's pet fish",[descriptionTest]),_246408).


test('?- e2c("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_246660)),nondet]):-call(e2c("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_246660).


test('?- e2c("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_246510)),nondet]):-call(e2c("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_246510).


test('?- e2c("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_246378)),nondet]):-call(e2c("Spot is Data's orange coloured cat",[descriptionTest]),_246378).


test('?- e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_246900)),nondet]):-call(e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_246900).


test('?- e2c("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_246522)),nondet]):-call(e2c("A nervous looking ensign is standing here, watching you",[descriptionTest]),_246522).


test('?- e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_246504)),nondet]):-call(e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_246504).


test('?- e2c("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_246846)),nondet]):-call(e2c("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_246846).


test('?- e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_246492)),nondet]):-call(e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_246492).


test('?- e2c("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_246360)),nondet]):-call(e2c("Alexander Rozhenko is Worf's son",[descriptionTest]),_246360).


test('?- e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_246642)),nondet]):-call(e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_246642).


test('?- e2c("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_246558)),nondet]):-call(e2c("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_246558).


test('?- e2c("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_246504)),nondet]):-call(e2c("A standard issue Starfleet phaser has been left here",[descriptionTest]),_246504).


test('?- e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_246906)),nondet]):-call(e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_246906).


test('?- e2c("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_246384)),nondet]):-call(e2c("A large phaser rifle is lying here",[descriptionTest]),_246384).


test('?- e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_246978)),nondet]):-call(e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_246978).


test('?- e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_246582)),nondet]):-call(e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_246582).


test('?- e2c("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246930)),nondet]):-call(e2c("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246930).


test('?- e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_246582)),nondet]):-call(e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_246582).


test('?- e2c("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246954)),nondet]):-call(e2c("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246954).


test('?- e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_246558)),nondet]):-call(e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_246558).


test('?- e2c("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_246930)),nondet]):-call(e2c("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_246930).


test('?- e2c("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_246480)),nondet]):-call(e2c("A pair of Starfleet black boots are sitting here",[descriptionTest]),_246480).


test('?- e2c("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_247020)),nondet]):-call(e2c("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_247020).


test('?- e2c("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_246450)),nondet]):-call(e2c("A Starfleet communication badge is lying here",[descriptionTest]),_246450).


test('?- e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_247488)),nondet]):-call(e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_247488).


test('?- e2c("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_246444)),nondet]):-call(e2c("Worf's silver chain sash has been left here",[descriptionTest]),_246444).


test('?- e2c("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_247056)),nondet]):-call(e2c("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_247056).


test('?- e2c("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_246336)),nondet]):-call(e2c("Geordi's VISOR is lying here",[descriptionTest]),_246336).


test('?- e2c("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_247728)),nondet]):-call(e2c("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_247728).


test('?- e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_246504)),nondet]):-call(e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_246504).


test('?- e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_247290)),nondet]):-call(e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_247290).


test('?- e2c("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_246438)),nondet]):-call(e2c("A shard of dilithium crystal is lying here",[descriptionTest]),_246438).


test('?- e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_247092)),nondet]):-call(e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_247092).


test('?- e2c("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_246450)),nondet]):-call(e2c("Captain Picard's wooden flute is sitting here",[descriptionTest]),_246450).


test('?- e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_247062)),nondet]):-call(e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_247062).


test('?- e2c("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_246462)),nondet]):-call(e2c("Commander Riker's trombone has been placed here",[descriptionTest]),_246462).


test('?- e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_246894)),nondet]):-call(e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_246894).


test('?- e2c("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_246390)),nondet]):-call(e2c("A small cup of tea is sitting here",[descriptionTest]),_246390).


test('?- e2c("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_246408)),nondet]):-call(e2c("A bottle of synthehol is standing here",[descriptionTest]),_246408).


test('?- e2c("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_246420)),nondet]):-call(e2c("A bottle of Ferengi ale is sitting here",[descriptionTest]),_246420).


test('?- e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_246444)),nondet]):-call(e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_246444).


test('?- e2c("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_246456)),nondet]):-call(e2c("A small glass of prune juice is sitting here",[descriptionTest]),_246456).


test('?- e2c("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_246426)),nondet]):-call(e2c("A bottle of Vulcan beer is standing here",[descriptionTest]),_246426).


test('?- e2c("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_246498)),nondet]):-call(e2c("You find yourself in the middle of main engineering",[descriptionTest]),_246498).


test('?- e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_246618)),nondet]):-call(e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_246618).


test('?- e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_246918)),nondet]):-call(e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_246918).


test('?- e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_246726)),nondet]):-call(e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_246726).


test('?- e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_246654)),nondet]):-call(e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_246654).


test('?- e2c("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_246834)),nondet]):-call(e2c("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_246834).


test('?- e2c("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_246426)),nondet]):-call(e2c("You're in the middle of Geordi's quarters",[descriptionTest]),_246426).


test('?- e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_246624)),nondet]):-call(e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_246624).


test('?- e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_246948)),nondet]):-call(e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_246948).


test('?- e2c("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_246558)),nondet]):-call(e2c("A neatly made bed has been placed against the northern wall",[descriptionTest]),_246558).


test('?- e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_246528)),nondet]):-call(e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_246528).


test('?- e2c("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_246414)),nondet]):-call(e2c("You're in the middle of Data's quarters",[descriptionTest]),_246414).


test('?- e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_247476)),nondet]):-call(e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_247476).


test('?- e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_246690)),nondet]):-call(e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_246690).


test('?- e2c("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_246714)),nondet]):-call(e2c("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_246714).


test('?- e2c("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_246342)),nondet]):-call(e2c("You're in the dimly lit Brig",[descriptionTest]),_246342).


test('?- e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_246732)),nondet]):-call(e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_246732).


test('?- e2c("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_246810)),nondet]):-call(e2c("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_246810).


test('?- e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_247104)),nondet]):-call(e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_247104).


test('?- e2c(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_253332)),nondet]):-call(e2c('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_253332).


test('?- e2c("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_246816)),nondet]):-call(e2c("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_246816).


test('?- e2c("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_246420)),nondet]):-call(e2c("You're in the Enterprise transporter room",[descriptionTest]),_246420).


test('?- e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_246906)),nondet]):-call(e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_246906).


test('?- e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_246876)),nondet]):-call(e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_246876).


test('?- e2c("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_246414)),nondet]):-call(e2c("You find yourself in a transporter beam",[descriptionTest]),_246414).


test('?- e2c("All you can see is blue flashing light",[descriptionTest])',[true(compound(_246414)),nondet]):-call(e2c("All you can see is blue flashing light",[descriptionTest]),_246414).


test('?- e2c("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_246570)),nondet]):-call(e2c("It feels as though your body is racing around at high speeds",[descriptionTest]),_246570).


test('?- e2c("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_246690)),nondet]):-call(e2c("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_246690).


test('?- e2c("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_246618)),nondet]):-call(e2c("You step through the doors and find yourself in a large school room",[descriptionTest]),_246618).


test('?- e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_246996)),nondet]):-call(e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_246996).


test('?- e2c("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_246750)),nondet]):-call(e2c("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_246750).


test('?- e2c("You\'re in the turbolift",[descriptionTest])',[true(compound(_246300)),nondet]):-call(e2c("You're in the turbolift",[descriptionTest]),_246300).


test('?- e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_246678)),nondet]):-call(e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_246678).


test('?- e2c("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_246570)),nondet]):-call(e2c("Several vertical rows of lights make this place very well lit",[descriptionTest]),_246570).


test('?- e2c("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_246558)),nondet]):-call(e2c("From here, you can access the other decks on the Enterprise",[descriptionTest]),_246558).


test('?- e2c("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_246312)),nondet]):-call(e2c("You're now on Holodeck 2",[descriptionTest]),_246312).


test('?- e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_246996)),nondet]):-call(e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_246996).


test('?- e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_246744)),nondet]):-call(e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_246744).


test('?- e2c("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_246438)),nondet]):-call(e2c("Right now, this holodeck is not functioning",[descriptionTest]),_246438).


test('?- e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_246546)),nondet]):-call(e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_246546).


test('?- e2c("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_246468)),nondet]):-call(e2c("You're in the main cargo bay of the Enterprise",[descriptionTest]),_246468).


test('?- e2c("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_246678)),nondet]):-call(e2c("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_246678).


test('?- e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_246996)),nondet]):-call(e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_246996).


test('?- e2c("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_246372)),nondet]):-call(e2c("You've arrived in Riker's quarters",[descriptionTest]),_246372).


test('?- e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_246948)),nondet]):-call(e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_246948).


test('?- e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_246882)),nondet]):-call(e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_246882).


test('?- e2c("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_246486)),nondet]):-call(e2c("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_246486).


test('?- e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_247122)),nondet]):-call(e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_247122).


test('?- e2c("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_246918)),nondet]):-call(e2c("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_246918).


test('?- e2c("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_246390)),nondet]):-call(e2c("You emerge into a dark narrow alley",[descriptionTest]),_246390).


test('?- e2c("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_246534)),nondet]):-call(e2c("Tall dark brick buildings block your way north and south",[descriptionTest]),_246534).


test('?- e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_246798)),nondet]):-call(e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_246798).


test('?- e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_246834)),nondet]):-call(e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_246834).


test('?- e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_246570)),nondet]):-call(e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_246570).


test('?- e2c("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_246474)),nondet]):-call(e2c("The archway leading out of the holodeck is west",[descriptionTest]),_246474).


test('?- e2c("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_246378)),nondet]):-call(e2c("You're in Doctor Crusher's quarters",[descriptionTest]),_246378).


test('?- e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_246774)),nondet]):-call(e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_246774).


test('?- e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_246864)),nondet]):-call(e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_246864).


test('?- e2c("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_246606)),nondet]):-call(e2c("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_246606).


test('?- e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_247230)),nondet]):-call(e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_247230).


test('?- e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_246702)),nondet]):-call(e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_246702).


test('?- e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_247098)),nondet]):-call(e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_247098).


test('?- e2c("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_246570)),nondet]):-call(e2c("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_246570).


test('?- e2c("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_246498)),nondet]):-call(e2c("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_246498).


test('?- e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_247392)),nondet]):-call(e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_247392).


test('?- e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_246570)),nondet]):-call(e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_246570).


test('?- e2c("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_246480)),nondet]):-call(e2c("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_246480).


test('?- e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_246672)),nondet]):-call(e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_246672).


test('?- e2c("A large grey door leads into space",[descriptionTest])',[true(compound(_246384)),nondet]):-call(e2c("A large grey door leads into space",[descriptionTest]),_246384).


test('?- e2c("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_246570)),nondet]):-call(e2c("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_246570).


test('?- e2c("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_246642)),nondet]):-call(e2c("You can see stars in every direction, which provide the only light here",[descriptionTest]),_246642).


test('?- e2c("You feel very cold",[descriptionTest])',[true(compound(_246270)),nondet]):-call(e2c("You feel very cold",[descriptionTest]),_246270).


test('?- e2c("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_246540)),nondet]):-call(e2c("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_246540).


test('?- e2c("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_246426)),nondet]):-call(e2c("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_246426).


test('?- e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_247038)),nondet]):-call(e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_247038).


test('?- e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_246762)),nondet]):-call(e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_246762).


test('?- e2c("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_246312)),nondet]):-call(e2c("You're in Worf's quarters",[descriptionTest]),_246312).


test('?- e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_246756)),nondet]):-call(e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_246756).


test('?- e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_247170)),nondet]):-call(e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_247170).


test('?- e2c("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_246378)),nondet]):-call(e2c("You emerge into the Enterprise gym",[descriptionTest]),_246378).


test('?- e2c("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_246480)),nondet]):-call(e2c("The room is quite large, with a soft grey floor",[descriptionTest]),_246480).


test('?- e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_246888)),nondet]):-call(e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_246888).


test('?- e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_246852)),nondet]):-call(e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_246852).


test('?- e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_246540)),nondet]):-call(e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_246540).


test('?- e2c("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_246606)),nondet]):-call(e2c("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_246606).


test('?- e2c("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_246696)),nondet]):-call(e2c("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_246696).


test('?- e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_246990)),nondet]):-call(e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_246990).


test('?- e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_247008)),nondet]):-call(e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_247008).


test('?- e2c("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_246462)),nondet]):-call(e2c("Two large windows offer a great view of space",[descriptionTest]),_246462).


test('?- e2c("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_246714)),nondet]):-call(e2c("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_246714).


test('?- e2c("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_246390)),nondet]):-call(e2c("You're in the Enterprise science lab",[descriptionTest]),_246390).


test('?- e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_246780)),nondet]):-call(e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_246780).


test('?- e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_247278)),nondet]):-call(e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_247278).


test('?- e2c("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_246534)),nondet]):-call(e2c("A complex looking computer console is facing this machine",[descriptionTest]),_246534).


test('?- e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_246690)),nondet]):-call(e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_246690).


test('?- e2c("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_246450)),nondet]):-call(e2c("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_246450).


test('?- e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_246684)),nondet]):-call(e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_246684).


test('?- e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_247056)),nondet]):-call(e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_247056).


test('?- e2c("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_246858)),nondet]):-call(e2c("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_246858).


test('?- e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_247254)),nondet]):-call(e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_247254).


test('?- e2c("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_246456)),nondet]):-call(e2c("You're standing in Captain Picard's ready room",[descriptionTest]),_246456).


test('?- e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_246894)),nondet]):-call(e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_246894).


test('?- e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_246798)),nondet]):-call(e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_246798).


test('?- e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_246996)),nondet]):-call(e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_246996).


test('?- e2c("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_246576)),nondet]):-call(e2c("This is where the Captain makes all of his important decisions",[descriptionTest]),_246576).


test('?- e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_246684)),nondet]):-call(e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_246684).


test('?- e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_246996)),nondet]):-call(e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_246996).


test('?- e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_246804)),nondet]):-call(e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_246804).


test('?- e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_246600)),nondet]):-call(e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_246600).


test('?- e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_246948)),nondet]):-call(e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_246948).


test('?- e2c("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_246546)),nondet]):-call(e2c("This is where the ship's pilot and information officer sit",[descriptionTest]),_246546).


test('?- e2c("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_246468)),nondet]):-call(e2c("You're in the conference room of the Enterprise",[descriptionTest]),_246468).


test('?- e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_247014)),nondet]):-call(e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_247014).


test('?- e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_246636)),nondet]):-call(e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_246636).


test('?- e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_246732)),nondet]):-call(e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_246732).


test('?- e2c("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_246564)),nondet]):-call(e2c("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_246564).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_169526)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_169526).


test('?- e2c("no two owners eat pizza",[sanity])',[true(compound(_169518)),nondet]):-call(e2c("no two owners eat pizza",[sanity]),_169518).


test('?- e2c("no three owners eat pizza",[sanity])',[true(compound(_169518)),nondet]):-call(e2c("no three owners eat pizza",[sanity]),_169518).


test('?- e2c("no three owners eat the same pizza",[sanity])',[true(compound(_169520)),nondet]):-call(e2c("no three owners eat the same pizza",[sanity]),_169520).


test('?- e2c("no three owners eat the same kind of pizza",[sanity])',[true(compound(_169522)),nondet]):-call(e2c("no three owners eat the same kind of pizza",[sanity]),_169522).


test('?- e2c("no owners eat the same pizza",[sanity])',[true(compound(_169518)),nondet]):-call(e2c("no owners eat the same pizza",[sanity]),_169518).


test('?- e2c("no owners eat the same kind of pizza",[sanity])',[true(compound(_169520)),nondet]):-call(e2c("no owners eat the same kind of pizza",[sanity]),_169520).


test('?- e2c("there are 5 houses",[sanity])',[true(compound(_169516)),nondet]):-call(e2c("there are 5 houses",[sanity]),_169516).


test('?- e2c("there are not 5 houses",[sanity])',[true(compound(_169516)),nondet]):-call(e2c("there are not 5 houses",[sanity]),_169516).


test('?- e2c("there are not zero houses",[sanity])',[true(compound(_169518)),nondet]):-call(e2c("there are not zero houses",[sanity]),_169518).


test('?- e2c(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_169526)),nondet]):-call(e2c(noun_phrase("less than 2 owners"),[sanity,bug]),_169526).


test('?- e2c(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_169520)),nondet]):-call(e2c(noun_phrase("at most the 5 owners"),[sanity]),_169520).


test('?- e2c(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_169520)),nondet]):-call(e2c(noun_phrase("at most 5 owners"),[sanity]),_169520).


test('?- e2c(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_169520)),nondet]):-call(e2c(noun_phrase("less than 3 owners"),[sanity]),_169520).


test('?- e2c(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_169522)),nondet]):-call(e2c(noun_phrase("at most 50 percent of owners"),[sanity]),_169522).


test('?- e2c(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_169526)),nondet]):-call(e2c(noun_phrase("no three owners"),[sanity,no_working]),_169526).


test('?- e2c("terry writes a non-program.",[tell])',[true(compound(_169518)),nondet]):-call(e2c("terry writes a non-program.",[tell]),_169518).


test('?- e2c("every nonhuman programmer writes a program.",[tell])',[true(compound(_169522)),nondet]):-call(e2c("every nonhuman programmer writes a program.",[tell]),_169522).


test('?- e2c("every human programmer writes a not a program.",[tell])',[true(compound(_169522)),nondet]):-call(e2c("every human programmer writes a not a program.",[tell]),_169522).


test('?- e2c("every human programmer happily writes a not a program.",[tell])',[true(compound(_169524)),nondet]):-call(e2c("every human programmer happily writes a not a program.",[tell]),_169524).


:- end_tests(e2c).

