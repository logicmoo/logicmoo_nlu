

:- begin_tests(test_lex_info).



test('?- test_lex_info("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_115332)),nondet]):-call(test_lex_info("His friends are liked by hers.",[bad_juju,sanity]),_115332).


test('?- test_lex_info("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_115334)),nondet]):-call(test_lex_info("Her friends are not liked by his.",[bad_juju,sanity]),_115334).


test('?- test_lex_info("Do their friends like each other?",[bad_juju,feature])',[true(compound(_115334)),nondet]):-call(test_lex_info("Do their friends like each other?",[bad_juju,feature]),_115334).


test('?- test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_115276),sanity])',[true(compound(_115338)),nondet]):-call(test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_115276),sanity]),_115338).


test('?- test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_115274),sanity])',[true(compound(_115336)),nondet]):-call(test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_115274),sanity]),_115336).


test('?- test_lex_info("There are 5 houses with five different colors.",[riddle(_115278),sanity])',[true(compound(_115340)),nondet]):-call(test_lex_info("There are 5 houses with five different colors.",[riddle(_115278),sanity]),_115340).


test('?- test_lex_info("There are 5 houses",[riddle_prep,sanity])',[true(compound(_115330)),nondet]):-call(test_lex_info("There are 5 houses",[riddle_prep,sanity]),_115330).


test('?- test_lex_info("Each house has a different color",[riddle_prep,sanity])',[true(compound(_115334)),nondet]):-call(test_lex_info("Each house has a different color",[riddle_prep,sanity]),_115334).


test('?- test_lex_info("In each house lives a person with a different nationality.",[riddle(_115282),sanity])',[true(compound(_115344)),nondet]):-call(test_lex_info("In each house lives a person with a different nationality.",[riddle(_115282),sanity]),_115344).


test('?- test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_115356)),nondet]):-call(test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_115356).


test('?- test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_115344)),nondet]):-call(test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_115344).


test('?- test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_115342)),nondet]):-call(test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_115342).


test('?- test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_115346)),nondet]):-call(test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_115346).


test('?- test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_115350)),nondet]):-call(test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_115350).


test('?- test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_115342)),nondet]):-call(test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression]),_115342).


test('?- test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_115346)),nondet]):-call(test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_115346).


test('?- test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_115340)),nondet]):-call(test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_115340).


test('?- test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_115344)),nondet]):-call(test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression]),_115344).


test('?- test_lex_info("The brit lives in the red house.",[riddle(_115276),sanity])',[true(compound(_115338)),nondet]):-call(test_lex_info("The brit lives in the red house.",[riddle(_115276),sanity]),_115338).


test('?- test_lex_info("The swede keeps dogs as pets.",[riddle(_115274),sanity])',[true(compound(_115336)),nondet]):-call(test_lex_info("The swede keeps dogs as pets.",[riddle(_115274),sanity]),_115336).


test('?- test_lex_info("A dane drinks tea.",[riddle(_115272),sanity])',[true(compound(_115334)),nondet]):-call(test_lex_info("A dane drinks tea.",[riddle(_115272),sanity]),_115334).


test('?- test_lex_info("The green house is on the left of the white house.",[riddle(_115280),sanity])',[true(compound(_115342)),nondet]):-call(test_lex_info("The green house is on the left of the white house.",[riddle(_115280),sanity]),_115342).


test('?- test_lex_info("The green house\'s owner drinks coffee.",[riddle(_115276),sanity])',[true(compound(_115338)),nondet]):-call(test_lex_info("The green house's owner drinks coffee.",[riddle(_115276),sanity]),_115338).


test('?- test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_115278),sanity,regression])',[true(compound(_115346)),nondet]):-call(test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_115278),sanity,regression]),_115346).


test('?- test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_115278),sanity])',[true(compound(_115340)),nondet]):-call(test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_115278),sanity]),_115340).


test('?- test_lex_info("The man living in the center house drinks milk.",[riddle(_115280),sanity])',[true(compound(_115342)),nondet]):-call(test_lex_info("The man living in the center house drinks milk.",[riddle(_115280),sanity]),_115342).


test('?- test_lex_info("The Norwegian lives in the first house .",[riddle(_115278),sanity])',[true(compound(_115340)),nondet]):-call(test_lex_info("The Norwegian lives in the first house .",[riddle(_115278),sanity]),_115340).


test('?- test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_115284),sanity])',[true(compound(_115346)),nondet]):-call(test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_115284),sanity]),_115346).


test('?- test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_115284),sanity])',[true(compound(_115346)),nondet]):-call(test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_115284),sanity]),_115346).


test('?- test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_115278),sanity])',[true(compound(_115340)),nondet]):-call(test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_115278),sanity]),_115340).


test('?- test_lex_info("The German smokes Prince.",[riddle(_115274),sanity])',[true(compound(_115336)),nondet]):-call(test_lex_info("The German smokes Prince.",[riddle(_115274),sanity]),_115336).


test('?- test_lex_info("The Norwegian lives next to the blue house.",[riddle(_115278),sanity])',[true(compound(_115340)),nondet]):-call(test_lex_info("The Norwegian lives next to the blue house.",[riddle(_115278),sanity]),_115340).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_115282),sanity])',[true(compound(_115344)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_115282),sanity]),_115344).


test('?- test_lex_info("Who owns the fish?",[riddle(_115272),sanity])',[true(compound(_115334)),nondet]):-call(test_lex_info("Who owns the fish?",[riddle(_115272),sanity]),_115334).


test('?- test_lex_info("One woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("One woman paints.",[quants]),_115324).


test('?- test_lex_info("No woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("No woman paints.",[quants]),_115324).


test('?- test_lex_info("Some woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Some woman paints.",[quants]),_115324).


test('?- test_lex_info("Every woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Every woman paints.",[quants]),_115324).


test('?- test_lex_info("Each woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Each woman paints.",[quants]),_115324).


test('?- test_lex_info("Any woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Any woman paints.",[quants]),_115324).


test('?- test_lex_info("The woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("The woman paints.",[quants]),_115324).


test('?- test_lex_info("The not woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("The not woman paints.",[quants]),_115324).


test('?- test_lex_info("Not a woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not a woman paints.",[quants]),_115324).


test('?- test_lex_info("Not one woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not one woman paints.",[quants]),_115324).


test('?- test_lex_info("Not no woman paints.",[quants_neg_postcond])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not no woman paints.",[quants_neg_postcond]),_115324).


test('?- test_lex_info("Not some woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not some woman paints.",[quants]),_115324).


test('?- test_lex_info("Not every woman paints.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("Not every woman paints.",[quants]),_115326).


test('?- test_lex_info("Not each woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not each woman paints.",[quants]),_115324).


test('?- test_lex_info("Not any woman paints.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not any woman paints.",[quants]),_115324).


test('?- test_lex_info("The women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("The women paint.",[quants]),_115324).


test('?- test_lex_info("Women paint.",[quants])',[true(compound(_115322)),nondet]):-call(test_lex_info("Women paint.",[quants]),_115322).


test('?- test_lex_info("Some women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Some women paint.",[quants]),_115324).


test('?- test_lex_info("No women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("No women paint.",[quants]),_115324).


test('?- test_lex_info("All women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("All women paint.",[quants]),_115324).


test('?- test_lex_info("Any women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Any women paint.",[quants]),_115324).


test('?- test_lex_info("Not women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not women paint.",[quants]),_115324).


test('?- test_lex_info("Not no women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not no women paint.",[quants]),_115324).


test('?- test_lex_info("Not all women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not all women paint.",[quants]),_115324).


test('?- test_lex_info("Not any women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not any women paint.",[quants]),_115324).


test('?- test_lex_info("The three women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("The three women paint.",[quants]),_115324).


test('?- test_lex_info("Three women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Three women paint.",[quants]),_115324).


test('?- test_lex_info("Some three women paint.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("Some three women paint.",[quants]),_115326).


test('?- test_lex_info("No three women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("No three women paint.",[quants]),_115324).


test('?- test_lex_info("Every three women paint.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("Every three women paint.",[quants]),_115326).


test('?- test_lex_info("All three women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("All three women paint.",[quants]),_115324).


test('?- test_lex_info("Any three women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Any three women paint.",[quants]),_115324).


test('?- test_lex_info("Not three women paint.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not three women paint.",[quants]),_115324).


test('?- test_lex_info("Not some three women paint.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("Not some three women paint.",[quants]),_115326).


test('?- test_lex_info("Not no three women paint.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("Not no three women paint.",[quants]),_115326).


test('?- test_lex_info("Not all three women paint.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("Not all three women paint.",[quants]),_115326).


test('?- test_lex_info("Not every three women paint.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("Not every three women paint.",[quants]),_115326).


test('?- test_lex_info("Not any three women paint.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("Not any three women paint.",[quants]),_115326).


test('?- test_lex_info("Not three of the women paint.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("Not three of the women paint.",[quants]),_115326).


test('?- test_lex_info("Not some of the three women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("Not some of the three women paint.",[quants]),_115328).


test('?- test_lex_info("Not no three of the women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("Not no three of the women paint.",[quants]),_115328).


test('?- test_lex_info("Not all three of the women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("Not all three of the women paint.",[quants]),_115328).


test('?- test_lex_info("Not every three of the women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("Not every three of the women paint.",[quants]),_115328).


test('?- test_lex_info("Not any three of the women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("Not any three of the women paint.",[quants]),_115328).


test('?- test_lex_info("Not three of the four women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("Not three of the four women paint.",[quants]),_115328).


test('?- test_lex_info("Not none of three out of the four women paint.",[quants])',[true(compound(_115330)),nondet]):-call(test_lex_info("Not none of three out of the four women paint.",[quants]),_115330).


test('?- test_lex_info("Not all three of the four women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("Not all three of the four women paint.",[quants]),_115328).


test('?- test_lex_info("Not any three of the four women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("Not any three of the four women paint.",[quants]),_115328).


test('?- test_lex_info("Three of the four women paint.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("Three of the four women paint.",[quants]),_115326).


test('?- test_lex_info("Three out of the four women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("Three out of the four women paint.",[quants]),_115328).


test('?- test_lex_info("All three of the four women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("All three of the four women paint.",[quants]),_115328).


test('?- test_lex_info("Any three of the four women paint.",[quants])',[true(compound(_115328)),nondet]):-call(test_lex_info("Any three of the four women paint.",[quants]),_115328).


test('?- test_lex_info("I paint",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("I paint",[pronoun]),_115322).


test('?- test_lex_info("you paint",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("you paint",[pronoun]),_115322).


test('?- test_lex_info("We paint",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("We paint",[pronoun]),_115322).


test('?- test_lex_info("None paint",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("None paint",[pronoun]),_115322).


test('?- test_lex_info("They paint",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("They paint",[pronoun]),_115322).


test('?- test_lex_info("Some paint",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("Some paint",[pronoun]),_115322).


test('?- test_lex_info("It paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("It paints",[pronoun]),_115322).


test('?- test_lex_info("he paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("he paints",[pronoun]),_115322).


test('?- test_lex_info("She paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("She paints",[pronoun]),_115322).


test('?- test_lex_info("Someone paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("Someone paints",[pronoun]),_115322).


test('?- test_lex_info("Anybody paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("Anybody paints",[pronoun]),_115322).


test('?- test_lex_info("Anyone paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("Anyone paints",[pronoun]),_115322).


test('?- test_lex_info("Anything paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Anything paints",[pronoun]),_115324).


test('?- test_lex_info("Everybody paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Everybody paints",[pronoun]),_115324).


test('?- test_lex_info("Everyone paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Everyone paints",[pronoun]),_115324).


test('?- test_lex_info("Everything paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Everything paints",[pronoun]),_115324).


test('?- test_lex_info("Nobody paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("Nobody paints",[pronoun]),_115322).


test('?- test_lex_info("No one paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("No one paints",[pronoun]),_115322).


test('?- test_lex_info("Nothing paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("Nothing paints",[pronoun]),_115322).


test('?- test_lex_info("One paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("One paints",[pronoun]),_115322).


test('?- test_lex_info("Somebody paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Somebody paints",[pronoun]),_115324).


test('?- test_lex_info("Something paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Something paints",[pronoun]),_115324).


test('?- test_lex_info("Not anybody paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not anybody paints",[pronoun]),_115324).


test('?- test_lex_info("Not anyone paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not anyone paints",[pronoun]),_115324).


test('?- test_lex_info("Not anything paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not anything paints",[pronoun]),_115324).


test('?- test_lex_info("Not everybody paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not everybody paints",[pronoun]),_115324).


test('?- test_lex_info("Not everyone paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not everyone paints",[pronoun]),_115324).


test('?- test_lex_info("Not everything paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not everything paints",[pronoun]),_115324).


test('?- test_lex_info("Not nothing paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not nothing paints",[pronoun]),_115324).


test('?- test_lex_info("Not one paints",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("Not one paints",[pronoun]),_115322).


test('?- test_lex_info("Not somebody paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not somebody paints",[pronoun]),_115324).


test('?- test_lex_info("Not something paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("Not something paints",[pronoun]),_115324).


test('?- test_lex_info("She likes i",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("She likes i",[pronoun]),_115322).


test('?- test_lex_info("She likes me",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("She likes me",[pronoun]),_115322).


test('?- test_lex_info("She likes you",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("She likes you",[pronoun]),_115322).


test('?- test_lex_info("She likes it",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("She likes it",[pronoun]),_115322).


test('?- test_lex_info("She likes us",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("She likes us",[pronoun]),_115322).


test('?- test_lex_info("She likes them",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("She likes them",[pronoun]),_115322).


test('?- test_lex_info("She likes no one",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("She likes no one",[pronoun]),_115324).


test('?- test_lex_info("She likes none",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("She likes none",[pronoun]),_115322).


test('?- test_lex_info("She likes him",[pronoun])',[true(compound(_115322)),nondet]):-call(test_lex_info("She likes him",[pronoun]),_115322).


test('?- test_lex_info("She likes herself",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("She likes herself",[pronoun]),_115324).


test('?- test_lex_info("She likes himself",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("She likes himself",[pronoun]),_115324).


test('?- test_lex_info("It is us that paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("It is us that paints",[pronoun]),_115324).


test('?- test_lex_info("It is them that paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("It is them that paints",[pronoun]),_115324).


test('?- test_lex_info("It is he that paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("It is he that paints",[pronoun]),_115324).


test('?- test_lex_info("It is she that paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("It is she that paints",[pronoun]),_115324).


test('?- test_lex_info("It is her that paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("It is her that paints",[pronoun]),_115324).


test('?- test_lex_info("It is him that paints",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("It is him that paints",[pronoun]),_115324).


test('?- test_lex_info("We are us that paint",[pronoun])',[true(compound(_115324)),nondet]):-call(test_lex_info("We are us that paint",[pronoun]),_115324).


test('?- test_lex_info("We are all of us that paint",[pronoun])',[true(compound(_115326)),nondet]):-call(test_lex_info("We are all of us that paint",[pronoun]),_115326).


test('?- test_lex_info("It is everybody that paints",[pronoun])',[true(compound(_115326)),nondet]):-call(test_lex_info("It is everybody that paints",[pronoun]),_115326).


test('?- test_lex_info("Every man that paints likes monet.",[bratko])',[true(compound(_115328)),nondet]):-call(test_lex_info("Every man that paints likes monet.",[bratko]),_115328).


test('?- test_lex_info("A woman that admires John paints.",[bratko])',[true(compound(_115328)),nondet]):-call(test_lex_info("A woman that admires John paints.",[bratko]),_115328).


test('?- test_lex_info("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_115334)),nondet]):-call(test_lex_info("Every woman that likes a man that admires monet paints.",[bratko]),_115334).


test('?- test_lex_info("John likes Annie.",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("John likes Annie.",[bratko]),_115324).


test('?- test_lex_info("Annie likes a man that admires monet.",[bratko])',[true(compound(_115328)),nondet]):-call(test_lex_info("Annie likes a man that admires monet.",[bratko]),_115328).


test('?- test_lex_info("Bertrand Russell wrote principia.",[bratko])',[true(compound(_115328)),nondet]):-call(test_lex_info("Bertrand Russell wrote principia.",[bratko]),_115328).


test('?- test_lex_info("An author wrote principia.",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("An author wrote principia.",[bratko]),_115326).


test('?- test_lex_info("Iraq is a country.",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("Iraq is a country.",[bratko]),_115324).


test('?- test_lex_info("A happy author wrote principia.",[bratko])',[true(compound(_115328)),nondet]):-call(test_lex_info("A happy author wrote principia.",[bratko]),_115328).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_115324).


test('?- test_lex_info("Bertrand is an author.",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("Bertrand is an author.",[bratko]),_115324).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_115324).


test('?- test_lex_info("Every author is a programmer.",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("Every author is a programmer.",[bratko]),_115326).


test('?- test_lex_info("Is Bertrand an programmer?",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("Is Bertrand an programmer?",[bratko]),_115326).


test('?- test_lex_info("What is a author?",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("What is a author?",[bratko]),_115324).


test('?- test_lex_info("What did Bertrand write?",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("What did Bertrand write?",[bratko]),_115326).


test('?- test_lex_info("What is a book?",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("What is a book?",[bratko]),_115324).


test('?- test_lex_info("Principia is a book.",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("Principia is a book.",[bratko]),_115324).


test('?- test_lex_info("Bertrand is Bertrand.",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("Bertrand is Bertrand.",[bratko]),_115324).


test('?- test_lex_info("Shrdlu halts.",[bratko])',[true(compound(_115322)),nondet]):-call(test_lex_info("Shrdlu halts.",[bratko]),_115322).


test('?- test_lex_info("Every student wrote a program.",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("Every student wrote a program.",[bratko]),_115326).


test('?- test_lex_info("Terry writes a program.",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("Terry writes a program.",[bratko]),_115326).


test('?- test_lex_info("Terry writes a program that halts.",[bratko])',[true(compound(_115328)),nondet]):-call(test_lex_info("Terry writes a program that halts.",[bratko]),_115328).


test('?- test_lex_info("An author of every book wrote a program.",[bratko])',[true(compound(_115330)),nondet]):-call(test_lex_info("An author of every book wrote a program.",[bratko]),_115330).


test('?- test_lex_info("A man hapilly maried paints.",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("A man hapilly maried paints.",[bratko]),_115326).


test('?- test_lex_info("A hapilly maried man paints.",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("A hapilly maried man paints.",[bratko]),_115326).


test('?- test_lex_info("A man who knows paints.",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("A man who knows paints.",[bratko]),_115326).


test('?- test_lex_info("A man gives something.",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("A man gives something.",[bratko]),_115324).


test('?- test_lex_info("A man gives his word.",[bratko])',[true(compound(_115324)),nondet]):-call(test_lex_info("A man gives his word.",[bratko]),_115324).


test('?- test_lex_info("A man of his word paints.",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("A man of his word paints.",[bratko]),_115326).


test('?- test_lex_info("A man paints.",[bratko])',[true(compound(_115322)),nondet]):-call(test_lex_info("A man paints.",[bratko]),_115322).


test('?- test_lex_info("A man that paints paints.",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("A man that paints paints.",[bratko]),_115326).


test('?- test_lex_info("A man walks.",[bratko])',[true(compound(_115322)),nondet]):-call(test_lex_info("A man walks.",[bratko]),_115322).


test('?- test_lex_info("A man that walks paints.",[bratko])',[true(compound(_115326)),nondet]):-call(test_lex_info("A man that walks paints.",[bratko]),_115326).


test('?- test_lex_info("It halts.",[bratko])',[true(compound(_115322)),nondet]):-call(test_lex_info("It halts.",[bratko]),_115322).


test('?- test_lex_info("A man of his word that walks paints.",[bratko])',[true(compound(_115328)),nondet]):-call(test_lex_info("A man of his word that walks paints.",[bratko]),_115328).


test('?- test_lex_info("The cost of what the product is changes.",[bratko])',[true(compound(_115330)),nondet]):-call(test_lex_info("The cost of what the product is changes.",[bratko]),_115330).


test('?- test_lex_info("We need a virtual machine server.",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("We need a virtual machine server.",[aindy]),_115328).


test('?- test_lex_info("The virtual machine server should have several VMs.",[aindy])',[true(compound(_115332)),nondet]):-call(test_lex_info("The virtual machine server should have several VMs.",[aindy]),_115332).


test('?- test_lex_info("One VM should be the POSI VM.",[aindy])',[true(compound(_115326)),nondet]):-call(test_lex_info("One VM should be the POSI VM.",[aindy]),_115326).


test('?- test_lex_info("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("One VM should be the FRDCSA.org VM.",[aindy]),_115328).


test('?- test_lex_info("One VM should be the mail server.",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("One VM should be the mail server.",[aindy]),_115328).


test('?- test_lex_info("One computer should be the backup server.",[aindy])',[true(compound(_115330)),nondet]):-call(test_lex_info("One computer should be the backup server.",[aindy]),_115330).


test('?- test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_115346)),nondet]):-call(test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_115346).


test('?- test_lex_info("I need a fast computer for work.",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("I need a fast computer for work.",[aindy]),_115328).


test('?- test_lex_info("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_115338)),nondet]):-call(test_lex_info("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_115338).


test('?- test_lex_info("I need a dedicated computer for network security research.",[aindy])',[true(compound(_115334)),nondet]):-call(test_lex_info("I need a dedicated computer for network security research.",[aindy]),_115334).


test('?- test_lex_info("I need a machine to run Tails on.",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("I need a machine to run Tails on.",[aindy]),_115328).


test('?- test_lex_info("I need a machine off the network for airgap security.",[aindy])',[true(compound(_115332)),nondet]):-call(test_lex_info("I need a machine off the network for airgap security.",[aindy]),_115332).


test('?- test_lex_info("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_115338)),nondet]):-call(test_lex_info("One VM should be the game server for running game development projects.",[aindy]),_115338).


test('?- test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_115332)),nondet]):-call(test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_115332).


test('?- test_lex_info("I could read about how to build a private watson.",[aindy])',[true(compound(_115332)),nondet]):-call(test_lex_info("I could read about how to build a private watson.",[aindy]),_115332).


test('?- test_lex_info("Need backups.",[aindy])',[true(compound(_115322)),nondet]):-call(test_lex_info("Need backups.",[aindy]),_115322).


test('?- test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_115336)),nondet]):-call(test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy]),_115336).


test('?- test_lex_info("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_115334)),nondet]):-call(test_lex_info("Set up schedules for updating the software on all machines.",[aindy]),_115334).


test('?- test_lex_info("Read books on server room layout.",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("Read books on server room layout.",[aindy]),_115328).


test('?- test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_115336)),nondet]):-call(test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_115336).


test('?- test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_115338)),nondet]):-call(test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_115338).


test('?- test_lex_info("I want a gaming computer.  Do I?",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("I want a gaming computer.  Do I?",[aindy]),_115328).


test('?- test_lex_info("I want a windows 7 computer for work.",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("I want a windows 7 computer for work.",[aindy]),_115328).


test('?- test_lex_info("I want a fast linux computer for work.",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("I want a fast linux computer for work.",[aindy]),_115328).


test('?- test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_115348)),nondet]):-call(test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_115348).


test('?- test_lex_info("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_115334)),nondet]):-call(test_lex_info("I could install a fresh operating system on justin for work.",[aindy]),_115334).


test('?- test_lex_info("I probably want a separate git computer.",[aindy])',[true(compound(_115330)),nondet]):-call(test_lex_info("I probably want a separate git computer.",[aindy]),_115330).


test('?- test_lex_info("I need to start buying servers.",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("I need to start buying servers.",[aindy]),_115328).


test('?- test_lex_info("I want a rackmount case for servers.",[aindy])',[true(compound(_115328)),nondet]):-call(test_lex_info("I want a rackmount case for servers.",[aindy]),_115328).


test('?- test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_115334)),nondet]):-call(test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)]),_115334).


test('?- test_lex_info("2 oceans border each african country.",[chat80(tell)])',[true(compound(_115332)),nondet]):-call(test_lex_info("2 oceans border each african country.",[chat80(tell)]),_115332).


test('?- test_lex_info("There are 10 large cars.",[quants])',[true(compound(_115326)),nondet]):-call(test_lex_info("There are 10 large cars.",[quants]),_115326).


test('?- test_lex_info("There are 10 oceans.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("There are 10 oceans.",[quants]),_115324).


test('?- test_lex_info("There are 10 women.",[quants])',[true(compound(_115324)),nondet]):-call(test_lex_info("There are 10 women.",[quants]),_115324).


test('?- test_lex_info("An ocean borders an African country.",[chat80(tell)])',[true(compound(_115332)),nondet]):-call(test_lex_info("An ocean borders an African country.",[chat80(tell)]),_115332).


test('?- test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_115340)),nondet]):-call(test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell]),_115340).


test('?- test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_115342)),nondet]):-call(test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_115342).


test('?- test_lex_info("Bertrand wrote a book.",[bratko(book)])',[true(compound(_115328)),nondet]):-call(test_lex_info("Bertrand wrote a book.",[bratko(book)]),_115328).


test('?- test_lex_info("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_115330)),nondet]):-call(test_lex_info("Bertrand wrote nothing.",[bratko(book)]),_115330).


test('?- test_lex_info("Bertrand wrote.",[bratko(book)])',[true(compound(_115328)),nondet]):-call(test_lex_info("Bertrand wrote.",[bratko(book)]),_115328).


test('?- test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_115332)),nondet]):-call(test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)]),_115332).


test('?- test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_115330)),nondet]):-call(test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)]),_115330).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_115332)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_115332).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_115334)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_115334).


test('?- test_lex_info("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_115332)),nondet]):-call(test_lex_info("What did alfred write to Bertrand?",[bratko(book)]),_115332).


test('?- test_lex_info("Alfred wrote a letter.",[bratko(book)])',[true(compound(_115328)),nondet]):-call(test_lex_info("Alfred wrote a letter.",[bratko(book)]),_115328).


test('?- test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_115332)),nondet]):-call(test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)]),_115332).


test('?- test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_115332)),nondet]):-call(test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)]),_115332).


test('?- test_lex_info("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_115330)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand.",[bratko(book)]),_115330).


test('?- test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_115332)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)]),_115332).


test('?- test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_115332)),nondet]):-call(test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)]),_115332).


test('?- test_lex_info("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_115332)),nondet]):-call(test_lex_info("Who did alfred write a letter to?",[bratko(book)]),_115332).


test('?- test_lex_info("Alfred gave it.",[bratko(book)])',[true(compound(_115328)),nondet]):-call(test_lex_info("Alfred gave it.",[bratko(book)]),_115328).


test('?- test_lex_info("Alfred gave a book.",[bratko(book)])',[true(compound(_115328)),nondet]):-call(test_lex_info("Alfred gave a book.",[bratko(book)]),_115328).


test('?- test_lex_info("a pride of lions paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a pride of lions paint",[of]),_115324).


test('?- test_lex_info("a flock of birds paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a flock of birds paint",[of]),_115324).


test('?- test_lex_info("a litter of pups paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a litter of pups paint",[of]),_115324).


test('?- test_lex_info("a prickle of porcupines paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a prickle of porcupines paint",[of]),_115326).


test('?- test_lex_info("a litter of cubs paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a litter of cubs paint",[of]),_115324).


test('?- test_lex_info("a pack of dogs paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a pack of dogs paint",[of]),_115324).


test('?- test_lex_info("a colony of beavers paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a colony of beavers paint",[of]),_115326).


test('?- test_lex_info("a gaggle of geese paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a gaggle of geese paint",[of]),_115326).


test('?- test_lex_info("a family of otters paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a family of otters paint",[of]),_115326).


test('?- test_lex_info("a huddle of walruses paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a huddle of walruses paint",[of]),_115326).


test('?- test_lex_info("a herd of deer paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a herd of deer paint",[of]),_115324).


test('?- test_lex_info("a culture of bacteria paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a culture of bacteria paint",[of]),_115326).


test('?- test_lex_info("a swarm of bees paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a swarm of bees paint",[of]),_115324).


test('?- test_lex_info("a bed of clams paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a bed of clams paint",[of]),_115324).


test('?- test_lex_info("a school of cod paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a school of cod paint",[of]),_115324).


test('?- test_lex_info("a herd of dinosaurs paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a herd of dinosaurs paint",[of]),_115326).


test('?- test_lex_info("a mess of iguanas paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a mess of iguanas paint",[of]),_115326).


test('?- test_lex_info("a mob of wombats paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a mob of wombats paint",[of]),_115324).


test('?- test_lex_info("a pod of pelicans paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a pod of pelicans paint",[of]),_115326).


test('?- test_lex_info("a troop of boy scouts paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a troop of boy scouts paint",[of]),_115326).


test('?- test_lex_info("a team of athletes paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a team of athletes paint",[of]),_115326).


test('?- test_lex_info("a panel of experts paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a panel of experts paint",[of]),_115326).


test('?- test_lex_info("a crew of sailors paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a crew of sailors paint",[of]),_115326).


test('?- test_lex_info("a band of robbers paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a band of robbers paint",[of]),_115326).


test('?- test_lex_info("a troupe of performers paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a troupe of performers paint",[of]),_115326).


test('?- test_lex_info("a crowd of onlookers paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a crowd of onlookers paint",[of]),_115326).


test('?- test_lex_info("a curse of painters paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("a curse of painters paint",[of]),_115326).


test('?- test_lex_info("a fleet of cars paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a fleet of cars paint",[of]),_115324).


test('?- test_lex_info("a pair of shoes paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a pair of shoes paint",[of]),_115324).


test('?- test_lex_info("a fleet of ships paint",[of])',[true(compound(_115324)),nondet]):-call(test_lex_info("a fleet of ships paint",[of]),_115324).


test('?- test_lex_info("an anthology of stories paint",[of])',[true(compound(_115326)),nondet]):-call(test_lex_info("an anthology of stories paint",[of]),_115326).


test('?- test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_192300)),nondet]):-call(test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_192300).


test('?- test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_192270)),nondet]):-call(test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_192270).


test('?- test_lex_info("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_192408)),nondet]):-call(test_lex_info("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_192408).


test('?- test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_192252)),nondet]):-call(test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_192252).


test('?- test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_192300)),nondet]):-call(test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_192300).


test('?- test_lex_info("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_192396)),nondet]):-call(test_lex_info("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_192396).


test('?- test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_192354)),nondet]):-call(test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_192354).


test('?- test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_192546)),nondet]):-call(test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_192546).


test('?- test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_192318)),nondet]):-call(test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest]),_192318).


test('?- test_lex_info("Logged on player character",[descriptionTest])',[true(compound(_192126)),nondet]):-call(test_lex_info("Logged on player character",[descriptionTest]),_192126).


test('?- test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_192384)),nondet]):-call(test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_192384).


test('?- test_lex_info("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_192330)),nondet]):-call(test_lex_info("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_192330).


test('?- test_lex_info("Wesley is her son",[descriptionTest])',[true(compound(_192072)),nondet]):-call(test_lex_info("Wesley is her son",[descriptionTest]),_192072).


test('?- test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_192720)),nondet]):-call(test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_192720).


test('?- test_lex_info("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_192150)),nondet]):-call(test_lex_info("Counselor Deanna Troi is here",[descriptionTest]),_192150).


test('?- test_lex_info("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_192246)),nondet]):-call(test_lex_info("Counselor Troi is the ship's main counselor",[descriptionTest]),_192246).


test('?- test_lex_info("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_192402)),nondet]):-call(test_lex_info("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_192402).


test('?- test_lex_info("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_192276)),nondet]):-call(test_lex_info("Commander William Riker is here, staring at you",[descriptionTest]),_192276).


test('?- test_lex_info("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_192282)),nondet]):-call(test_lex_info("Commander Riker is the Enterprise's first officer",[descriptionTest]),_192282).


test('?- test_lex_info("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_192252)),nondet]):-call(test_lex_info("He's in charge of keeping the crew in line",[descriptionTest]),_192252).


test('?- test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_192318)),nondet]):-call(test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_192318).


test('?- test_lex_info("Captain Picard is a very important man",[descriptionTest])',[true(compound(_192216)),nondet]):-call(test_lex_info("Captain Picard is a very important man",[descriptionTest]),_192216).


test('?- test_lex_info("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_192318)),nondet]):-call(test_lex_info("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_192318).


test('?- test_lex_info("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_192162)),nondet]):-call(test_lex_info("He's very smart, and very wise",[descriptionTest]),_192162).


test('?- test_lex_info("Don\'t mess with him!",[descriptionTest])',[true(compound(_192090)),nondet]):-call(test_lex_info("Don't mess with him!",[descriptionTest]),_192090).


test('?- test_lex_info("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_192168)),nondet]):-call(test_lex_info("Guinan is here, tending the bar",[descriptionTest]),_192168).


test('?- test_lex_info("Guinan is a strange being",[descriptionTest])',[true(compound(_192126)),nondet]):-call(test_lex_info("Guinan is a strange being",[descriptionTest]),_192126).


test('?- test_lex_info("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_192834)),nondet]):-call(test_lex_info("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_192834).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_192336)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_192336).


test('?- test_lex_info("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_192336)),nondet]):-call(test_lex_info("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_192336).


test('?- test_lex_info("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_192636)),nondet]):-call(test_lex_info("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_192636).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_192330)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_192330).


test('?- test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_192354)),nondet]):-call(test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_192354).


test('?- test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_192624)),nondet]):-call(test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_192624).


test('?- test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_192546)),nondet]):-call(test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_192546).


test('?- test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_192336)),nondet]):-call(test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_192336).


test('?- test_lex_info("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_192216)),nondet]):-call(test_lex_info("Livingston is Captain Picard's pet fish",[descriptionTest]),_192216).


test('?- test_lex_info("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_192468)),nondet]):-call(test_lex_info("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_192468).


test('?- test_lex_info("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_192318)),nondet]):-call(test_lex_info("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_192318).


test('?- test_lex_info("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_192186)),nondet]):-call(test_lex_info("Spot is Data's orange coloured cat",[descriptionTest]),_192186).


test('?- test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_192708)),nondet]):-call(test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_192708).


test('?- test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_192330)),nondet]):-call(test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest]),_192330).


test('?- test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_192312)),nondet]):-call(test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_192312).


test('?- test_lex_info("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_192654)),nondet]):-call(test_lex_info("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_192654).


test('?- test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_192300)),nondet]):-call(test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_192300).


test('?- test_lex_info("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_192168)),nondet]):-call(test_lex_info("Alexander Rozhenko is Worf's son",[descriptionTest]),_192168).


test('?- test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_192450)),nondet]):-call(test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_192450).


test('?- test_lex_info("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_192366)),nondet]):-call(test_lex_info("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_192366).


test('?- test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_192312)),nondet]):-call(test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest]),_192312).


test('?- test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_192714)),nondet]):-call(test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_192714).


test('?- test_lex_info("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_192192)),nondet]):-call(test_lex_info("A large phaser rifle is lying here",[descriptionTest]),_192192).


test('?- test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_192786)),nondet]):-call(test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_192786).


test('?- test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_192390)),nondet]):-call(test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_192390).


test('?- test_lex_info("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192738)),nondet]):-call(test_lex_info("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192738).


test('?- test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_192390)),nondet]):-call(test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_192390).


test('?- test_lex_info("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192762)),nondet]):-call(test_lex_info("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192762).


test('?- test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_192366)),nondet]):-call(test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_192366).


test('?- test_lex_info("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192738)),nondet]):-call(test_lex_info("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192738).


test('?- test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_192288)),nondet]):-call(test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest]),_192288).


test('?- test_lex_info("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_192828)),nondet]):-call(test_lex_info("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_192828).


test('?- test_lex_info("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_192258)),nondet]):-call(test_lex_info("A Starfleet communication badge is lying here",[descriptionTest]),_192258).


test('?- test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_193296)),nondet]):-call(test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_193296).


test('?- test_lex_info("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_192252)),nondet]):-call(test_lex_info("Worf's silver chain sash has been left here",[descriptionTest]),_192252).


test('?- test_lex_info("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_192864)),nondet]):-call(test_lex_info("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_192864).


test('?- test_lex_info("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_192144)),nondet]):-call(test_lex_info("Geordi's VISOR is lying here",[descriptionTest]),_192144).


test('?- test_lex_info("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_193536)),nondet]):-call(test_lex_info("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_193536).


test('?- test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_192312)),nondet]):-call(test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_192312).


test('?- test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_193098)),nondet]):-call(test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_193098).


test('?- test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_192246)),nondet]):-call(test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest]),_192246).


test('?- test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_192900)),nondet]):-call(test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_192900).


test('?- test_lex_info("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_192258)),nondet]):-call(test_lex_info("Captain Picard's wooden flute is sitting here",[descriptionTest]),_192258).


test('?- test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_192870)),nondet]):-call(test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_192870).


test('?- test_lex_info("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_192270)),nondet]):-call(test_lex_info("Commander Riker's trombone has been placed here",[descriptionTest]),_192270).


test('?- test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_192702)),nondet]):-call(test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_192702).


test('?- test_lex_info("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_192198)),nondet]):-call(test_lex_info("A small cup of tea is sitting here",[descriptionTest]),_192198).


test('?- test_lex_info("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_192216)),nondet]):-call(test_lex_info("A bottle of synthehol is standing here",[descriptionTest]),_192216).


test('?- test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_192228)),nondet]):-call(test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest]),_192228).


test('?- test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_192252)),nondet]):-call(test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_192252).


test('?- test_lex_info("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_192264)),nondet]):-call(test_lex_info("A small glass of prune juice is sitting here",[descriptionTest]),_192264).


test('?- test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_192234)),nondet]):-call(test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest]),_192234).


test('?- test_lex_info("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_192306)),nondet]):-call(test_lex_info("You find yourself in the middle of main engineering",[descriptionTest]),_192306).


test('?- test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_192426)),nondet]):-call(test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_192426).


test('?- test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_192726)),nondet]):-call(test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_192726).


test('?- test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_192534)),nondet]):-call(test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_192534).


test('?- test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_192462)),nondet]):-call(test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_192462).


test('?- test_lex_info("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_192642)),nondet]):-call(test_lex_info("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_192642).


test('?- test_lex_info("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_192234)),nondet]):-call(test_lex_info("You're in the middle of Geordi's quarters",[descriptionTest]),_192234).


test('?- test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_192432)),nondet]):-call(test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_192432).


test('?- test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_192756)),nondet]):-call(test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_192756).


test('?- test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_192366)),nondet]):-call(test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest]),_192366).


test('?- test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_192336)),nondet]):-call(test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_192336).


test('?- test_lex_info("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_192222)),nondet]):-call(test_lex_info("You're in the middle of Data's quarters",[descriptionTest]),_192222).


test('?- test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_193284)),nondet]):-call(test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_193284).


test('?- test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_192498)),nondet]):-call(test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_192498).


test('?- test_lex_info("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_192522)),nondet]):-call(test_lex_info("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_192522).


test('?- test_lex_info("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_192150)),nondet]):-call(test_lex_info("You're in the dimly lit Brig",[descriptionTest]),_192150).


test('?- test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_192540)),nondet]):-call(test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_192540).


test('?- test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_192618)),nondet]):-call(test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_192618).


test('?- test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_192912)),nondet]):-call(test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_192912).


test('?- test_lex_info(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_199140)),nondet]):-call(test_lex_info('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_199140).


test('?- test_lex_info("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_192624)),nondet]):-call(test_lex_info("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_192624).


test('?- test_lex_info("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_192228)),nondet]):-call(test_lex_info("You're in the Enterprise transporter room",[descriptionTest]),_192228).


test('?- test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_192714)),nondet]):-call(test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_192714).


test('?- test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_192684)),nondet]):-call(test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_192684).


test('?- test_lex_info("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_192222)),nondet]):-call(test_lex_info("You find yourself in a transporter beam",[descriptionTest]),_192222).


test('?- test_lex_info("All you can see is blue flashing light",[descriptionTest])',[true(compound(_192222)),nondet]):-call(test_lex_info("All you can see is blue flashing light",[descriptionTest]),_192222).


test('?- test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_192378)),nondet]):-call(test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest]),_192378).


test('?- test_lex_info("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_192498)),nondet]):-call(test_lex_info("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_192498).


test('?- test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_192426)),nondet]):-call(test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest]),_192426).


test('?- test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_192804)),nondet]):-call(test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_192804).


test('?- test_lex_info("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_192558)),nondet]):-call(test_lex_info("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_192558).


test('?- test_lex_info("You\'re in the turbolift",[descriptionTest])',[true(compound(_192108)),nondet]):-call(test_lex_info("You're in the turbolift",[descriptionTest]),_192108).


test('?- test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_192486)),nondet]):-call(test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_192486).


test('?- test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_192378)),nondet]):-call(test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest]),_192378).


test('?- test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_192366)),nondet]):-call(test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest]),_192366).


test('?- test_lex_info("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_192120)),nondet]):-call(test_lex_info("You're now on Holodeck 2",[descriptionTest]),_192120).


test('?- test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_192804)),nondet]):-call(test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_192804).


test('?- test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_192552)),nondet]):-call(test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_192552).


test('?- test_lex_info("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_192246)),nondet]):-call(test_lex_info("Right now, this holodeck is not functioning",[descriptionTest]),_192246).


test('?- test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_192354)),nondet]):-call(test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_192354).


test('?- test_lex_info("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_192276)),nondet]):-call(test_lex_info("You're in the main cargo bay of the Enterprise",[descriptionTest]),_192276).


test('?- test_lex_info("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_192486)),nondet]):-call(test_lex_info("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_192486).


test('?- test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_192804)),nondet]):-call(test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_192804).


test('?- test_lex_info("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_192180)),nondet]):-call(test_lex_info("You've arrived in Riker's quarters",[descriptionTest]),_192180).


test('?- test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_192756)),nondet]):-call(test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_192756).


test('?- test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_192690)),nondet]):-call(test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_192690).


test('?- test_lex_info("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_192294)),nondet]):-call(test_lex_info("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_192294).


test('?- test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_192930)),nondet]):-call(test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_192930).


test('?- test_lex_info("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_192726)),nondet]):-call(test_lex_info("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_192726).


test('?- test_lex_info("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_192198)),nondet]):-call(test_lex_info("You emerge into a dark narrow alley",[descriptionTest]),_192198).


test('?- test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_192342)),nondet]):-call(test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest]),_192342).


test('?- test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_192606)),nondet]):-call(test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_192606).


test('?- test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_192642)),nondet]):-call(test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_192642).


test('?- test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_192378)),nondet]):-call(test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_192378).


test('?- test_lex_info("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_192282)),nondet]):-call(test_lex_info("The archway leading out of the holodeck is west",[descriptionTest]),_192282).


test('?- test_lex_info("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_192186)),nondet]):-call(test_lex_info("You're in Doctor Crusher's quarters",[descriptionTest]),_192186).


test('?- test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_192582)),nondet]):-call(test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_192582).


test('?- test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_192672)),nondet]):-call(test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_192672).


test('?- test_lex_info("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_192414)),nondet]):-call(test_lex_info("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_192414).


test('?- test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_193038)),nondet]):-call(test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_193038).


test('?- test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_192510)),nondet]):-call(test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_192510).


test('?- test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_192906)),nondet]):-call(test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_192906).


test('?- test_lex_info("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_192378)),nondet]):-call(test_lex_info("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_192378).


test('?- test_lex_info("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_192306)),nondet]):-call(test_lex_info("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_192306).


test('?- test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_193200)),nondet]):-call(test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_193200).


test('?- test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_192378)),nondet]):-call(test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_192378).


test('?- test_lex_info("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_192288)),nondet]):-call(test_lex_info("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_192288).


test('?- test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_192480)),nondet]):-call(test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_192480).


test('?- test_lex_info("A large grey door leads into space",[descriptionTest])',[true(compound(_192192)),nondet]):-call(test_lex_info("A large grey door leads into space",[descriptionTest]),_192192).


test('?- test_lex_info("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_192378)),nondet]):-call(test_lex_info("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_192378).


test('?- test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_192450)),nondet]):-call(test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest]),_192450).


test('?- test_lex_info("You feel very cold",[descriptionTest])',[true(compound(_192078)),nondet]):-call(test_lex_info("You feel very cold",[descriptionTest]),_192078).


test('?- test_lex_info("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_192348)),nondet]):-call(test_lex_info("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_192348).


test('?- test_lex_info("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_192234)),nondet]):-call(test_lex_info("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_192234).


test('?- test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_192846)),nondet]):-call(test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_192846).


test('?- test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_192570)),nondet]):-call(test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_192570).


test('?- test_lex_info("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_192120)),nondet]):-call(test_lex_info("You're in Worf's quarters",[descriptionTest]),_192120).


test('?- test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_192564)),nondet]):-call(test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_192564).


test('?- test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_192978)),nondet]):-call(test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_192978).


test('?- test_lex_info("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_192186)),nondet]):-call(test_lex_info("You emerge into the Enterprise gym",[descriptionTest]),_192186).


test('?- test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_192288)),nondet]):-call(test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest]),_192288).


test('?- test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_192696)),nondet]):-call(test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_192696).


test('?- test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_192660)),nondet]):-call(test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_192660).


test('?- test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_192348)),nondet]):-call(test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_192348).


test('?- test_lex_info("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_192414)),nondet]):-call(test_lex_info("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_192414).


test('?- test_lex_info("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_192504)),nondet]):-call(test_lex_info("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_192504).


test('?- test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_192798)),nondet]):-call(test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_192798).


test('?- test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_192816)),nondet]):-call(test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_192816).


test('?- test_lex_info("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_192270)),nondet]):-call(test_lex_info("Two large windows offer a great view of space",[descriptionTest]),_192270).


test('?- test_lex_info("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_192522)),nondet]):-call(test_lex_info("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_192522).


test('?- test_lex_info("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_192198)),nondet]):-call(test_lex_info("You're in the Enterprise science lab",[descriptionTest]),_192198).


test('?- test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_192588)),nondet]):-call(test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_192588).


test('?- test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_193086)),nondet]):-call(test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_193086).


test('?- test_lex_info("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_192342)),nondet]):-call(test_lex_info("A complex looking computer console is facing this machine",[descriptionTest]),_192342).


test('?- test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_192498)),nondet]):-call(test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_192498).


test('?- test_lex_info("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_192258)),nondet]):-call(test_lex_info("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_192258).


test('?- test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_192492)),nondet]):-call(test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_192492).


test('?- test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_192864)),nondet]):-call(test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_192864).


test('?- test_lex_info("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_192666)),nondet]):-call(test_lex_info("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_192666).


test('?- test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_193062)),nondet]):-call(test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_193062).


test('?- test_lex_info("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_192264)),nondet]):-call(test_lex_info("You're standing in Captain Picard's ready room",[descriptionTest]),_192264).


test('?- test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_192702)),nondet]):-call(test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_192702).


test('?- test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_192606)),nondet]):-call(test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_192606).


test('?- test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_192804)),nondet]):-call(test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_192804).


test('?- test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_192384)),nondet]):-call(test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest]),_192384).


test('?- test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_192492)),nondet]):-call(test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_192492).


test('?- test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_192804)),nondet]):-call(test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_192804).


test('?- test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_192612)),nondet]):-call(test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_192612).


test('?- test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_192408)),nondet]):-call(test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_192408).


test('?- test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_192756)),nondet]):-call(test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_192756).


test('?- test_lex_info("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_192354)),nondet]):-call(test_lex_info("This is where the ship's pilot and information officer sit",[descriptionTest]),_192354).


test('?- test_lex_info("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_192276)),nondet]):-call(test_lex_info("You're in the conference room of the Enterprise",[descriptionTest]),_192276).


test('?- test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_192822)),nondet]):-call(test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_192822).


test('?- test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_192444)),nondet]):-call(test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_192444).


test('?- test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_192540)),nondet]):-call(test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_192540).


test('?- test_lex_info("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_192372)),nondet]):-call(test_lex_info("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_192372).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_115334)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_115334).


test('?- test_lex_info("no two owners eat pizza",[sanity])',[true(compound(_115326)),nondet]):-call(test_lex_info("no two owners eat pizza",[sanity]),_115326).


test('?- test_lex_info("no three owners eat pizza",[sanity])',[true(compound(_115326)),nondet]):-call(test_lex_info("no three owners eat pizza",[sanity]),_115326).


test('?- test_lex_info("no three owners eat the same pizza",[sanity])',[true(compound(_115328)),nondet]):-call(test_lex_info("no three owners eat the same pizza",[sanity]),_115328).


test('?- test_lex_info("no three owners eat the same kind of pizza",[sanity])',[true(compound(_115330)),nondet]):-call(test_lex_info("no three owners eat the same kind of pizza",[sanity]),_115330).


test('?- test_lex_info("no owners eat the same pizza",[sanity])',[true(compound(_115326)),nondet]):-call(test_lex_info("no owners eat the same pizza",[sanity]),_115326).


test('?- test_lex_info("no owners eat the same kind of pizza",[sanity])',[true(compound(_115328)),nondet]):-call(test_lex_info("no owners eat the same kind of pizza",[sanity]),_115328).


test('?- test_lex_info("there are 5 houses",[sanity])',[true(compound(_115324)),nondet]):-call(test_lex_info("there are 5 houses",[sanity]),_115324).


test('?- test_lex_info("there are not 5 houses",[sanity])',[true(compound(_115324)),nondet]):-call(test_lex_info("there are not 5 houses",[sanity]),_115324).


test('?- test_lex_info("there are not zero houses",[sanity])',[true(compound(_115326)),nondet]):-call(test_lex_info("there are not zero houses",[sanity]),_115326).


test('?- test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_115334)),nondet]):-call(test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug]),_115334).


test('?- test_lex_info(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_115328)),nondet]):-call(test_lex_info(noun_phrase("at most the 5 owners"),[sanity]),_115328).


test('?- test_lex_info(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_115328)),nondet]):-call(test_lex_info(noun_phrase("at most 5 owners"),[sanity]),_115328).


test('?- test_lex_info(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_115328)),nondet]):-call(test_lex_info(noun_phrase("less than 3 owners"),[sanity]),_115328).


test('?- test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_115330)),nondet]):-call(test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity]),_115330).


test('?- test_lex_info(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_115334)),nondet]):-call(test_lex_info(noun_phrase("no three owners"),[sanity,no_working]),_115334).


test('?- test_lex_info("terry writes a non-program.",[tell])',[true(compound(_115326)),nondet]):-call(test_lex_info("terry writes a non-program.",[tell]),_115326).


test('?- test_lex_info("every nonhuman programmer writes a program.",[tell])',[true(compound(_115330)),nondet]):-call(test_lex_info("every nonhuman programmer writes a program.",[tell]),_115330).


test('?- test_lex_info("every human programmer writes a not a program.",[tell])',[true(compound(_115330)),nondet]):-call(test_lex_info("every human programmer writes a not a program.",[tell]),_115330).


test('?- test_lex_info("every human programmer happily writes a not a program.",[tell])',[true(compound(_115332)),nondet]):-call(test_lex_info("every human programmer happily writes a not a program.",[tell]),_115332).


:- end_tests(test_lex_info).



:- begin_tests(chat80).



test('?- chat80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_115374)),nondet]):-call(chat80("His friends are liked by hers.",[bad_juju,sanity]),_115374).


test('?- chat80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_115376)),nondet]):-call(chat80("Her friends are not liked by his.",[bad_juju,sanity]),_115376).


test('?- chat80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_115376)),nondet]):-call(chat80("Do their friends like each other?",[bad_juju,feature]),_115376).


test('?- chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_115318),sanity])',[true(compound(_115380)),nondet]):-call(chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_115318),sanity]),_115380).


test('?- chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_115316),sanity])',[true(compound(_115378)),nondet]):-call(chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_115316),sanity]),_115378).


test('?- chat80("There are 5 houses with five different colors.",[riddle(_115320),sanity])',[true(compound(_115382)),nondet]):-call(chat80("There are 5 houses with five different colors.",[riddle(_115320),sanity]),_115382).


test('?- chat80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_115372)),nondet]):-call(chat80("There are 5 houses",[riddle_prep,sanity]),_115372).


test('?- chat80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_115376)),nondet]):-call(chat80("Each house has a different color",[riddle_prep,sanity]),_115376).


test('?- chat80("In each house lives a person with a different nationality.",[riddle(_115324),sanity])',[true(compound(_115386)),nondet]):-call(chat80("In each house lives a person with a different nationality.",[riddle(_115324),sanity]),_115386).


test('?- chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_115398)),nondet]):-call(chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_115398).


test('?- chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_115386)),nondet]):-call(chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_115386).


test('?- chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_115384)),nondet]):-call(chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_115384).


test('?- chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_115388)),nondet]):-call(chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_115388).


test('?- chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_115392)),nondet]):-call(chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_115392).


test('?- chat80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_115384)),nondet]):-call(chat80("No owners have the same pet.",[riddle(1),sanity,regression]),_115384).


test('?- chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_115388)),nondet]):-call(chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_115388).


test('?- chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_115382)),nondet]):-call(chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_115382).


test('?- chat80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_115386)),nondet]):-call(chat80("No two owners have the same pet.",[riddle(1),sanity,regression]),_115386).


test('?- chat80("The brit lives in the red house.",[riddle(_115318),sanity])',[true(compound(_115380)),nondet]):-call(chat80("The brit lives in the red house.",[riddle(_115318),sanity]),_115380).


test('?- chat80("The swede keeps dogs as pets.",[riddle(_115316),sanity])',[true(compound(_115378)),nondet]):-call(chat80("The swede keeps dogs as pets.",[riddle(_115316),sanity]),_115378).


test('?- chat80("A dane drinks tea.",[riddle(_115314),sanity])',[true(compound(_115376)),nondet]):-call(chat80("A dane drinks tea.",[riddle(_115314),sanity]),_115376).


test('?- chat80("The green house is on the left of the white house.",[riddle(_115322),sanity])',[true(compound(_115384)),nondet]):-call(chat80("The green house is on the left of the white house.",[riddle(_115322),sanity]),_115384).


test('?- chat80("The green house\'s owner drinks coffee.",[riddle(_115318),sanity])',[true(compound(_115380)),nondet]):-call(chat80("The green house's owner drinks coffee.",[riddle(_115318),sanity]),_115380).


test('?- chat80("The person who smokes Pall Mall rears birds.",[riddle(_115320),sanity,regression])',[true(compound(_115388)),nondet]):-call(chat80("The person who smokes Pall Mall rears birds.",[riddle(_115320),sanity,regression]),_115388).


test('?- chat80("The owner of the yellow house smokes Dunhill.",[riddle(_115320),sanity])',[true(compound(_115382)),nondet]):-call(chat80("The owner of the yellow house smokes Dunhill.",[riddle(_115320),sanity]),_115382).


test('?- chat80("The man living in the center house drinks milk.",[riddle(_115322),sanity])',[true(compound(_115384)),nondet]):-call(chat80("The man living in the center house drinks milk.",[riddle(_115322),sanity]),_115384).


test('?- chat80("The Norwegian lives in the first house .",[riddle(_115320),sanity])',[true(compound(_115382)),nondet]):-call(chat80("The Norwegian lives in the first house .",[riddle(_115320),sanity]),_115382).


test('?- chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_115326),sanity])',[true(compound(_115388)),nondet]):-call(chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_115326),sanity]),_115388).


test('?- chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_115326),sanity])',[true(compound(_115388)),nondet]):-call(chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_115326),sanity]),_115388).


test('?- chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_115320),sanity])',[true(compound(_115382)),nondet]):-call(chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_115320),sanity]),_115382).


test('?- chat80("The German smokes Prince.",[riddle(_115316),sanity])',[true(compound(_115378)),nondet]):-call(chat80("The German smokes Prince.",[riddle(_115316),sanity]),_115378).


test('?- chat80("The Norwegian lives next to the blue house.",[riddle(_115320),sanity])',[true(compound(_115382)),nondet]):-call(chat80("The Norwegian lives next to the blue house.",[riddle(_115320),sanity]),_115382).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_115324),sanity])',[true(compound(_115386)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_115324),sanity]),_115386).


test('?- chat80("Who owns the fish?",[riddle(_115314),sanity])',[true(compound(_115376)),nondet]):-call(chat80("Who owns the fish?",[riddle(_115314),sanity]),_115376).


test('?- chat80("One woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("One woman paints.",[quants]),_115366).


test('?- chat80("No woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("No woman paints.",[quants]),_115366).


test('?- chat80("Some woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Some woman paints.",[quants]),_115366).


test('?- chat80("Every woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Every woman paints.",[quants]),_115366).


test('?- chat80("Each woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Each woman paints.",[quants]),_115366).


test('?- chat80("Any woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Any woman paints.",[quants]),_115366).


test('?- chat80("The woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("The woman paints.",[quants]),_115366).


test('?- chat80("The not woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("The not woman paints.",[quants]),_115366).


test('?- chat80("Not a woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Not a woman paints.",[quants]),_115366).


test('?- chat80("Not one woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Not one woman paints.",[quants]),_115366).


test('?- chat80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_115366)),nondet]):-call(chat80("Not no woman paints.",[quants_neg_postcond]),_115366).


test('?- chat80("Not some woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Not some woman paints.",[quants]),_115366).


test('?- chat80("Not every woman paints.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("Not every woman paints.",[quants]),_115368).


test('?- chat80("Not each woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Not each woman paints.",[quants]),_115366).


test('?- chat80("Not any woman paints.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Not any woman paints.",[quants]),_115366).


test('?- chat80("The women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("The women paint.",[quants]),_115366).


test('?- chat80("Women paint.",[quants])',[true(compound(_115364)),nondet]):-call(chat80("Women paint.",[quants]),_115364).


test('?- chat80("Some women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Some women paint.",[quants]),_115366).


test('?- chat80("No women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("No women paint.",[quants]),_115366).


test('?- chat80("All women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("All women paint.",[quants]),_115366).


test('?- chat80("Any women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Any women paint.",[quants]),_115366).


test('?- chat80("Not women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Not women paint.",[quants]),_115366).


test('?- chat80("Not no women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Not no women paint.",[quants]),_115366).


test('?- chat80("Not all women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Not all women paint.",[quants]),_115366).


test('?- chat80("Not any women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Not any women paint.",[quants]),_115366).


test('?- chat80("The three women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("The three women paint.",[quants]),_115366).


test('?- chat80("Three women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Three women paint.",[quants]),_115366).


test('?- chat80("Some three women paint.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("Some three women paint.",[quants]),_115368).


test('?- chat80("No three women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("No three women paint.",[quants]),_115366).


test('?- chat80("Every three women paint.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("Every three women paint.",[quants]),_115368).


test('?- chat80("All three women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("All three women paint.",[quants]),_115366).


test('?- chat80("Any three women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Any three women paint.",[quants]),_115366).


test('?- chat80("Not three women paint.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("Not three women paint.",[quants]),_115366).


test('?- chat80("Not some three women paint.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("Not some three women paint.",[quants]),_115368).


test('?- chat80("Not no three women paint.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("Not no three women paint.",[quants]),_115368).


test('?- chat80("Not all three women paint.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("Not all three women paint.",[quants]),_115368).


test('?- chat80("Not every three women paint.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("Not every three women paint.",[quants]),_115368).


test('?- chat80("Not any three women paint.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("Not any three women paint.",[quants]),_115368).


test('?- chat80("Not three of the women paint.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("Not three of the women paint.",[quants]),_115368).


test('?- chat80("Not some of the three women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("Not some of the three women paint.",[quants]),_115370).


test('?- chat80("Not no three of the women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("Not no three of the women paint.",[quants]),_115370).


test('?- chat80("Not all three of the women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("Not all three of the women paint.",[quants]),_115370).


test('?- chat80("Not every three of the women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("Not every three of the women paint.",[quants]),_115370).


test('?- chat80("Not any three of the women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("Not any three of the women paint.",[quants]),_115370).


test('?- chat80("Not three of the four women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("Not three of the four women paint.",[quants]),_115370).


test('?- chat80("Not none of three out of the four women paint.",[quants])',[true(compound(_115372)),nondet]):-call(chat80("Not none of three out of the four women paint.",[quants]),_115372).


test('?- chat80("Not all three of the four women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("Not all three of the four women paint.",[quants]),_115370).


test('?- chat80("Not any three of the four women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("Not any three of the four women paint.",[quants]),_115370).


test('?- chat80("Three of the four women paint.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("Three of the four women paint.",[quants]),_115368).


test('?- chat80("Three out of the four women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("Three out of the four women paint.",[quants]),_115370).


test('?- chat80("All three of the four women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("All three of the four women paint.",[quants]),_115370).


test('?- chat80("Any three of the four women paint.",[quants])',[true(compound(_115370)),nondet]):-call(chat80("Any three of the four women paint.",[quants]),_115370).


test('?- chat80("I paint",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("I paint",[pronoun]),_115364).


test('?- chat80("you paint",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("you paint",[pronoun]),_115364).


test('?- chat80("We paint",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("We paint",[pronoun]),_115364).


test('?- chat80("None paint",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("None paint",[pronoun]),_115364).


test('?- chat80("They paint",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("They paint",[pronoun]),_115364).


test('?- chat80("Some paint",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("Some paint",[pronoun]),_115364).


test('?- chat80("It paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("It paints",[pronoun]),_115364).


test('?- chat80("he paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("he paints",[pronoun]),_115364).


test('?- chat80("She paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("She paints",[pronoun]),_115364).


test('?- chat80("Someone paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("Someone paints",[pronoun]),_115364).


test('?- chat80("Anybody paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("Anybody paints",[pronoun]),_115364).


test('?- chat80("Anyone paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("Anyone paints",[pronoun]),_115364).


test('?- chat80("Anything paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Anything paints",[pronoun]),_115366).


test('?- chat80("Everybody paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Everybody paints",[pronoun]),_115366).


test('?- chat80("Everyone paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Everyone paints",[pronoun]),_115366).


test('?- chat80("Everything paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Everything paints",[pronoun]),_115366).


test('?- chat80("Nobody paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("Nobody paints",[pronoun]),_115364).


test('?- chat80("No one paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("No one paints",[pronoun]),_115364).


test('?- chat80("Nothing paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("Nothing paints",[pronoun]),_115364).


test('?- chat80("One paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("One paints",[pronoun]),_115364).


test('?- chat80("Somebody paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Somebody paints",[pronoun]),_115366).


test('?- chat80("Something paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Something paints",[pronoun]),_115366).


test('?- chat80("Not anybody paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Not anybody paints",[pronoun]),_115366).


test('?- chat80("Not anyone paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Not anyone paints",[pronoun]),_115366).


test('?- chat80("Not anything paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Not anything paints",[pronoun]),_115366).


test('?- chat80("Not everybody paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Not everybody paints",[pronoun]),_115366).


test('?- chat80("Not everyone paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Not everyone paints",[pronoun]),_115366).


test('?- chat80("Not everything paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Not everything paints",[pronoun]),_115366).


test('?- chat80("Not nothing paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Not nothing paints",[pronoun]),_115366).


test('?- chat80("Not one paints",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("Not one paints",[pronoun]),_115364).


test('?- chat80("Not somebody paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Not somebody paints",[pronoun]),_115366).


test('?- chat80("Not something paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("Not something paints",[pronoun]),_115366).


test('?- chat80("She likes i",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("She likes i",[pronoun]),_115364).


test('?- chat80("She likes me",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("She likes me",[pronoun]),_115364).


test('?- chat80("She likes you",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("She likes you",[pronoun]),_115364).


test('?- chat80("She likes it",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("She likes it",[pronoun]),_115364).


test('?- chat80("She likes us",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("She likes us",[pronoun]),_115364).


test('?- chat80("She likes them",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("She likes them",[pronoun]),_115364).


test('?- chat80("She likes no one",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("She likes no one",[pronoun]),_115366).


test('?- chat80("She likes none",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("She likes none",[pronoun]),_115364).


test('?- chat80("She likes him",[pronoun])',[true(compound(_115364)),nondet]):-call(chat80("She likes him",[pronoun]),_115364).


test('?- chat80("She likes herself",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("She likes herself",[pronoun]),_115366).


test('?- chat80("She likes himself",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("She likes himself",[pronoun]),_115366).


test('?- chat80("It is us that paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("It is us that paints",[pronoun]),_115366).


test('?- chat80("It is them that paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("It is them that paints",[pronoun]),_115366).


test('?- chat80("It is he that paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("It is he that paints",[pronoun]),_115366).


test('?- chat80("It is she that paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("It is she that paints",[pronoun]),_115366).


test('?- chat80("It is her that paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("It is her that paints",[pronoun]),_115366).


test('?- chat80("It is him that paints",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("It is him that paints",[pronoun]),_115366).


test('?- chat80("We are us that paint",[pronoun])',[true(compound(_115366)),nondet]):-call(chat80("We are us that paint",[pronoun]),_115366).


test('?- chat80("We are all of us that paint",[pronoun])',[true(compound(_115368)),nondet]):-call(chat80("We are all of us that paint",[pronoun]),_115368).


test('?- chat80("It is everybody that paints",[pronoun])',[true(compound(_115368)),nondet]):-call(chat80("It is everybody that paints",[pronoun]),_115368).


test('?- chat80("Every man that paints likes monet.",[bratko])',[true(compound(_115370)),nondet]):-call(chat80("Every man that paints likes monet.",[bratko]),_115370).


test('?- chat80("A woman that admires John paints.",[bratko])',[true(compound(_115370)),nondet]):-call(chat80("A woman that admires John paints.",[bratko]),_115370).


test('?- chat80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_115376)),nondet]):-call(chat80("Every woman that likes a man that admires monet paints.",[bratko]),_115376).


test('?- chat80("John likes Annie.",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("John likes Annie.",[bratko]),_115366).


test('?- chat80("Annie likes a man that admires monet.",[bratko])',[true(compound(_115370)),nondet]):-call(chat80("Annie likes a man that admires monet.",[bratko]),_115370).


test('?- chat80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_115370)),nondet]):-call(chat80("Bertrand Russell wrote principia.",[bratko]),_115370).


test('?- chat80("An author wrote principia.",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("An author wrote principia.",[bratko]),_115368).


test('?- chat80("Iraq is a country.",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("Iraq is a country.",[bratko]),_115366).


test('?- chat80("A happy author wrote principia.",[bratko])',[true(compound(_115370)),nondet]):-call(chat80("A happy author wrote principia.",[bratko]),_115370).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_115366).


test('?- chat80("Bertrand is an author.",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("Bertrand is an author.",[bratko]),_115366).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_115366).


test('?- chat80("Every author is a programmer.",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("Every author is a programmer.",[bratko]),_115368).


test('?- chat80("Is Bertrand an programmer?",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("Is Bertrand an programmer?",[bratko]),_115368).


test('?- chat80("What is a author?",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("What is a author?",[bratko]),_115366).


test('?- chat80("What did Bertrand write?",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("What did Bertrand write?",[bratko]),_115368).


test('?- chat80("What is a book?",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("What is a book?",[bratko]),_115366).


test('?- chat80("Principia is a book.",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("Principia is a book.",[bratko]),_115366).


test('?- chat80("Bertrand is Bertrand.",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("Bertrand is Bertrand.",[bratko]),_115366).


test('?- chat80("Shrdlu halts.",[bratko])',[true(compound(_115364)),nondet]):-call(chat80("Shrdlu halts.",[bratko]),_115364).


test('?- chat80("Every student wrote a program.",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("Every student wrote a program.",[bratko]),_115368).


test('?- chat80("Terry writes a program.",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("Terry writes a program.",[bratko]),_115368).


test('?- chat80("Terry writes a program that halts.",[bratko])',[true(compound(_115370)),nondet]):-call(chat80("Terry writes a program that halts.",[bratko]),_115370).


test('?- chat80("An author of every book wrote a program.",[bratko])',[true(compound(_115372)),nondet]):-call(chat80("An author of every book wrote a program.",[bratko]),_115372).


test('?- chat80("A man hapilly maried paints.",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("A man hapilly maried paints.",[bratko]),_115368).


test('?- chat80("A hapilly maried man paints.",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("A hapilly maried man paints.",[bratko]),_115368).


test('?- chat80("A man who knows paints.",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("A man who knows paints.",[bratko]),_115368).


test('?- chat80("A man gives something.",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("A man gives something.",[bratko]),_115366).


test('?- chat80("A man gives his word.",[bratko])',[true(compound(_115366)),nondet]):-call(chat80("A man gives his word.",[bratko]),_115366).


test('?- chat80("A man of his word paints.",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("A man of his word paints.",[bratko]),_115368).


test('?- chat80("A man paints.",[bratko])',[true(compound(_115364)),nondet]):-call(chat80("A man paints.",[bratko]),_115364).


test('?- chat80("A man that paints paints.",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("A man that paints paints.",[bratko]),_115368).


test('?- chat80("A man walks.",[bratko])',[true(compound(_115364)),nondet]):-call(chat80("A man walks.",[bratko]),_115364).


test('?- chat80("A man that walks paints.",[bratko])',[true(compound(_115368)),nondet]):-call(chat80("A man that walks paints.",[bratko]),_115368).


test('?- chat80("It halts.",[bratko])',[true(compound(_115364)),nondet]):-call(chat80("It halts.",[bratko]),_115364).


test('?- chat80("A man of his word that walks paints.",[bratko])',[true(compound(_115370)),nondet]):-call(chat80("A man of his word that walks paints.",[bratko]),_115370).


test('?- chat80("The cost of what the product is changes.",[bratko])',[true(compound(_115372)),nondet]):-call(chat80("The cost of what the product is changes.",[bratko]),_115372).


test('?- chat80("We need a virtual machine server.",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("We need a virtual machine server.",[aindy]),_115370).


test('?- chat80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_115374)),nondet]):-call(chat80("The virtual machine server should have several VMs.",[aindy]),_115374).


test('?- chat80("One VM should be the POSI VM.",[aindy])',[true(compound(_115368)),nondet]):-call(chat80("One VM should be the POSI VM.",[aindy]),_115368).


test('?- chat80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("One VM should be the FRDCSA.org VM.",[aindy]),_115370).


test('?- chat80("One VM should be the mail server.",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("One VM should be the mail server.",[aindy]),_115370).


test('?- chat80("One computer should be the backup server.",[aindy])',[true(compound(_115372)),nondet]):-call(chat80("One computer should be the backup server.",[aindy]),_115372).


test('?- chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_115388)),nondet]):-call(chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_115388).


test('?- chat80("I need a fast computer for work.",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("I need a fast computer for work.",[aindy]),_115370).


test('?- chat80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_115380)),nondet]):-call(chat80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_115380).


test('?- chat80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_115376)),nondet]):-call(chat80("I need a dedicated computer for network security research.",[aindy]),_115376).


test('?- chat80("I need a machine to run Tails on.",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("I need a machine to run Tails on.",[aindy]),_115370).


test('?- chat80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_115374)),nondet]):-call(chat80("I need a machine off the network for airgap security.",[aindy]),_115374).


test('?- chat80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_115380)),nondet]):-call(chat80("One VM should be the game server for running game development projects.",[aindy]),_115380).


test('?- chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_115374)),nondet]):-call(chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_115374).


test('?- chat80("I could read about how to build a private watson.",[aindy])',[true(compound(_115374)),nondet]):-call(chat80("I could read about how to build a private watson.",[aindy]),_115374).


test('?- chat80("Need backups.",[aindy])',[true(compound(_115364)),nondet]):-call(chat80("Need backups.",[aindy]),_115364).


test('?- chat80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_115378)),nondet]):-call(chat80("Practice setting up backups of a machine to a different machine.",[aindy]),_115378).


test('?- chat80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_115376)),nondet]):-call(chat80("Set up schedules for updating the software on all machines.",[aindy]),_115376).


test('?- chat80("Read books on server room layout.",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("Read books on server room layout.",[aindy]),_115370).


test('?- chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_115378)),nondet]):-call(chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_115378).


test('?- chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_115380)),nondet]):-call(chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_115380).


test('?- chat80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("I want a gaming computer.  Do I?",[aindy]),_115370).


test('?- chat80("I want a windows 7 computer for work.",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("I want a windows 7 computer for work.",[aindy]),_115370).


test('?- chat80("I want a fast linux computer for work.",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("I want a fast linux computer for work.",[aindy]),_115370).


test('?- chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_115390)),nondet]):-call(chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_115390).


test('?- chat80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_115376)),nondet]):-call(chat80("I could install a fresh operating system on justin for work.",[aindy]),_115376).


test('?- chat80("I probably want a separate git computer.",[aindy])',[true(compound(_115372)),nondet]):-call(chat80("I probably want a separate git computer.",[aindy]),_115372).


test('?- chat80("I need to start buying servers.",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("I need to start buying servers.",[aindy]),_115370).


test('?- chat80("I want a rackmount case for servers.",[aindy])',[true(compound(_115370)),nondet]):-call(chat80("I want a rackmount case for servers.",[aindy]),_115370).


test('?- chat80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_115376)),nondet]):-call(chat80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_115376).


test('?- chat80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_115374)),nondet]):-call(chat80("2 oceans border each african country.",[chat80(tell)]),_115374).


test('?- chat80("There are 10 large cars.",[quants])',[true(compound(_115368)),nondet]):-call(chat80("There are 10 large cars.",[quants]),_115368).


test('?- chat80("There are 10 oceans.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("There are 10 oceans.",[quants]),_115366).


test('?- chat80("There are 10 women.",[quants])',[true(compound(_115366)),nondet]):-call(chat80("There are 10 women.",[quants]),_115366).


test('?- chat80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_115374)),nondet]):-call(chat80("An ocean borders an African country.",[chat80(tell)]),_115374).


test('?- chat80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_115382)),nondet]):-call(chat80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_115382).


test('?- chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_115384)),nondet]):-call(chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_115384).


test('?- chat80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_115370)),nondet]):-call(chat80("Bertrand wrote a book.",[bratko(book)]),_115370).


test('?- chat80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_115372)),nondet]):-call(chat80("Bertrand wrote nothing.",[bratko(book)]),_115372).


test('?- chat80("Bertrand wrote.",[bratko(book)])',[true(compound(_115370)),nondet]):-call(chat80("Bertrand wrote.",[bratko(book)]),_115370).


test('?- chat80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_115374)),nondet]):-call(chat80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_115374).


test('?- chat80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_115372)),nondet]):-call(chat80("Bertrand wrote about Gottlob.",[bratko(book)]),_115372).


test('?- chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_115374)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_115374).


test('?- chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_115376)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_115376).


test('?- chat80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_115374)),nondet]):-call(chat80("What did alfred write to Bertrand?",[bratko(book)]),_115374).


test('?- chat80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_115370)),nondet]):-call(chat80("Alfred wrote a letter.",[bratko(book)]),_115370).


test('?- chat80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_115374)),nondet]):-call(chat80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_115374).


test('?- chat80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_115374)),nondet]):-call(chat80("Alfred wrote something to Bertrand.",[bratko(book)]),_115374).


test('?- chat80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_115372)),nondet]):-call(chat80("Alfred wrote to Bertrand.",[bratko(book)]),_115372).


test('?- chat80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_115374)),nondet]):-call(chat80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_115374).


test('?- chat80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_115374)),nondet]):-call(chat80("Alfred wrote Bertrand a letter.",[bratko(book)]),_115374).


test('?- chat80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_115374)),nondet]):-call(chat80("Who did alfred write a letter to?",[bratko(book)]),_115374).


test('?- chat80("Alfred gave it.",[bratko(book)])',[true(compound(_115370)),nondet]):-call(chat80("Alfred gave it.",[bratko(book)]),_115370).


test('?- chat80("Alfred gave a book.",[bratko(book)])',[true(compound(_115370)),nondet]):-call(chat80("Alfred gave a book.",[bratko(book)]),_115370).


test('?- chat80("a pride of lions paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a pride of lions paint",[of]),_115366).


test('?- chat80("a flock of birds paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a flock of birds paint",[of]),_115366).


test('?- chat80("a litter of pups paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a litter of pups paint",[of]),_115366).


test('?- chat80("a prickle of porcupines paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a prickle of porcupines paint",[of]),_115368).


test('?- chat80("a litter of cubs paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a litter of cubs paint",[of]),_115366).


test('?- chat80("a pack of dogs paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a pack of dogs paint",[of]),_115366).


test('?- chat80("a colony of beavers paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a colony of beavers paint",[of]),_115368).


test('?- chat80("a gaggle of geese paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a gaggle of geese paint",[of]),_115368).


test('?- chat80("a family of otters paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a family of otters paint",[of]),_115368).


test('?- chat80("a huddle of walruses paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a huddle of walruses paint",[of]),_115368).


test('?- chat80("a herd of deer paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a herd of deer paint",[of]),_115366).


test('?- chat80("a culture of bacteria paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a culture of bacteria paint",[of]),_115368).


test('?- chat80("a swarm of bees paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a swarm of bees paint",[of]),_115366).


test('?- chat80("a bed of clams paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a bed of clams paint",[of]),_115366).


test('?- chat80("a school of cod paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a school of cod paint",[of]),_115366).


test('?- chat80("a herd of dinosaurs paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a herd of dinosaurs paint",[of]),_115368).


test('?- chat80("a mess of iguanas paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a mess of iguanas paint",[of]),_115368).


test('?- chat80("a mob of wombats paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a mob of wombats paint",[of]),_115366).


test('?- chat80("a pod of pelicans paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a pod of pelicans paint",[of]),_115368).


test('?- chat80("a troop of boy scouts paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a troop of boy scouts paint",[of]),_115368).


test('?- chat80("a team of athletes paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a team of athletes paint",[of]),_115368).


test('?- chat80("a panel of experts paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a panel of experts paint",[of]),_115368).


test('?- chat80("a crew of sailors paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a crew of sailors paint",[of]),_115368).


test('?- chat80("a band of robbers paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a band of robbers paint",[of]),_115368).


test('?- chat80("a troupe of performers paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a troupe of performers paint",[of]),_115368).


test('?- chat80("a crowd of onlookers paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a crowd of onlookers paint",[of]),_115368).


test('?- chat80("a curse of painters paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("a curse of painters paint",[of]),_115368).


test('?- chat80("a fleet of cars paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a fleet of cars paint",[of]),_115366).


test('?- chat80("a pair of shoes paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a pair of shoes paint",[of]),_115366).


test('?- chat80("a fleet of ships paint",[of])',[true(compound(_115366)),nondet]):-call(chat80("a fleet of ships paint",[of]),_115366).


test('?- chat80("an anthology of stories paint",[of])',[true(compound(_115368)),nondet]):-call(chat80("an anthology of stories paint",[of]),_115368).


test('?- chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_192342)),nondet]):-call(chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_192342).


test('?- chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_192312)),nondet]):-call(chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_192312).


test('?- chat80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_192450)),nondet]):-call(chat80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_192450).


test('?- chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_192294)),nondet]):-call(chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_192294).


test('?- chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_192342)),nondet]):-call(chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_192342).


test('?- chat80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_192438)),nondet]):-call(chat80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_192438).


test('?- chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_192396)),nondet]):-call(chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_192396).


test('?- chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_192588)),nondet]):-call(chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_192588).


test('?- chat80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_192360)),nondet]):-call(chat80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_192360).


test('?- chat80("Logged on player character",[descriptionTest])',[true(compound(_192168)),nondet]):-call(chat80("Logged on player character",[descriptionTest]),_192168).


test('?- chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_192426)),nondet]):-call(chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_192426).


test('?- chat80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_192372)),nondet]):-call(chat80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_192372).


test('?- chat80("Wesley is her son",[descriptionTest])',[true(compound(_192114)),nondet]):-call(chat80("Wesley is her son",[descriptionTest]),_192114).


test('?- chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_192762)),nondet]):-call(chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_192762).


test('?- chat80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_192192)),nondet]):-call(chat80("Counselor Deanna Troi is here",[descriptionTest]),_192192).


test('?- chat80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_192288)),nondet]):-call(chat80("Counselor Troi is the ship's main counselor",[descriptionTest]),_192288).


test('?- chat80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_192444)),nondet]):-call(chat80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_192444).


test('?- chat80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_192318)),nondet]):-call(chat80("Commander William Riker is here, staring at you",[descriptionTest]),_192318).


test('?- chat80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_192324)),nondet]):-call(chat80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_192324).


test('?- chat80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_192294)),nondet]):-call(chat80("He's in charge of keeping the crew in line",[descriptionTest]),_192294).


test('?- chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_192360)),nondet]):-call(chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_192360).


test('?- chat80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_192258)),nondet]):-call(chat80("Captain Picard is a very important man",[descriptionTest]),_192258).


test('?- chat80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_192360)),nondet]):-call(chat80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_192360).


test('?- chat80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_192204)),nondet]):-call(chat80("He's very smart, and very wise",[descriptionTest]),_192204).


test('?- chat80("Don\'t mess with him!",[descriptionTest])',[true(compound(_192132)),nondet]):-call(chat80("Don't mess with him!",[descriptionTest]),_192132).


test('?- chat80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_192210)),nondet]):-call(chat80("Guinan is here, tending the bar",[descriptionTest]),_192210).


test('?- chat80("Guinan is a strange being",[descriptionTest])',[true(compound(_192168)),nondet]):-call(chat80("Guinan is a strange being",[descriptionTest]),_192168).


test('?- chat80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_192876)),nondet]):-call(chat80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_192876).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_192378)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_192378).


test('?- chat80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_192378)),nondet]):-call(chat80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_192378).


test('?- chat80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_192678)),nondet]):-call(chat80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_192678).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_192372)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_192372).


test('?- chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_192396)),nondet]):-call(chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_192396).


test('?- chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_192666)),nondet]):-call(chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_192666).


test('?- chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_192588)),nondet]):-call(chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_192588).


test('?- chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_192378)),nondet]):-call(chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_192378).


test('?- chat80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_192258)),nondet]):-call(chat80("Livingston is Captain Picard's pet fish",[descriptionTest]),_192258).


test('?- chat80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_192510)),nondet]):-call(chat80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_192510).


test('?- chat80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_192360)),nondet]):-call(chat80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_192360).


test('?- chat80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_192228)),nondet]):-call(chat80("Spot is Data's orange coloured cat",[descriptionTest]),_192228).


test('?- chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_192750)),nondet]):-call(chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_192750).


test('?- chat80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_192372)),nondet]):-call(chat80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_192372).


test('?- chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_192354)),nondet]):-call(chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_192354).


test('?- chat80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_192696)),nondet]):-call(chat80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_192696).


test('?- chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_192342)),nondet]):-call(chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_192342).


test('?- chat80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_192210)),nondet]):-call(chat80("Alexander Rozhenko is Worf's son",[descriptionTest]),_192210).


test('?- chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_192492)),nondet]):-call(chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_192492).


test('?- chat80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_192408)),nondet]):-call(chat80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_192408).


test('?- chat80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_192354)),nondet]):-call(chat80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_192354).


test('?- chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_192756)),nondet]):-call(chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_192756).


test('?- chat80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_192234)),nondet]):-call(chat80("A large phaser rifle is lying here",[descriptionTest]),_192234).


test('?- chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_192828)),nondet]):-call(chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_192828).


test('?- chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_192432)),nondet]):-call(chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_192432).


test('?- chat80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192780)),nondet]):-call(chat80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192780).


test('?- chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_192432)),nondet]):-call(chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_192432).


test('?- chat80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192804)),nondet]):-call(chat80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192804).


test('?- chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_192408)),nondet]):-call(chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_192408).


test('?- chat80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192780)),nondet]):-call(chat80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192780).


test('?- chat80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_192330)),nondet]):-call(chat80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_192330).


test('?- chat80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_192870)),nondet]):-call(chat80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_192870).


test('?- chat80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_192300)),nondet]):-call(chat80("A Starfleet communication badge is lying here",[descriptionTest]),_192300).


test('?- chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_193338)),nondet]):-call(chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_193338).


test('?- chat80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_192294)),nondet]):-call(chat80("Worf's silver chain sash has been left here",[descriptionTest]),_192294).


test('?- chat80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_192906)),nondet]):-call(chat80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_192906).


test('?- chat80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_192186)),nondet]):-call(chat80("Geordi's VISOR is lying here",[descriptionTest]),_192186).


test('?- chat80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_193578)),nondet]):-call(chat80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_193578).


test('?- chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_192354)),nondet]):-call(chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_192354).


test('?- chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_193140)),nondet]):-call(chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_193140).


test('?- chat80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_192288)),nondet]):-call(chat80("A shard of dilithium crystal is lying here",[descriptionTest]),_192288).


test('?- chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_192942)),nondet]):-call(chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_192942).


test('?- chat80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_192300)),nondet]):-call(chat80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_192300).


test('?- chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_192912)),nondet]):-call(chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_192912).


test('?- chat80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_192312)),nondet]):-call(chat80("Commander Riker's trombone has been placed here",[descriptionTest]),_192312).


test('?- chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_192744)),nondet]):-call(chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_192744).


test('?- chat80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_192240)),nondet]):-call(chat80("A small cup of tea is sitting here",[descriptionTest]),_192240).


test('?- chat80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_192258)),nondet]):-call(chat80("A bottle of synthehol is standing here",[descriptionTest]),_192258).


test('?- chat80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_192270)),nondet]):-call(chat80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_192270).


test('?- chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_192294)),nondet]):-call(chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_192294).


test('?- chat80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_192306)),nondet]):-call(chat80("A small glass of prune juice is sitting here",[descriptionTest]),_192306).


test('?- chat80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_192276)),nondet]):-call(chat80("A bottle of Vulcan beer is standing here",[descriptionTest]),_192276).


test('?- chat80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_192348)),nondet]):-call(chat80("You find yourself in the middle of main engineering",[descriptionTest]),_192348).


test('?- chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_192468)),nondet]):-call(chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_192468).


test('?- chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_192768)),nondet]):-call(chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_192768).


test('?- chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_192576)),nondet]):-call(chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_192576).


test('?- chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_192504)),nondet]):-call(chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_192504).


test('?- chat80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_192684)),nondet]):-call(chat80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_192684).


test('?- chat80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_192276)),nondet]):-call(chat80("You're in the middle of Geordi's quarters",[descriptionTest]),_192276).


test('?- chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_192474)),nondet]):-call(chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_192474).


test('?- chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_192798)),nondet]):-call(chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_192798).


test('?- chat80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_192408)),nondet]):-call(chat80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_192408).


test('?- chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_192378)),nondet]):-call(chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_192378).


test('?- chat80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_192264)),nondet]):-call(chat80("You're in the middle of Data's quarters",[descriptionTest]),_192264).


test('?- chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_193326)),nondet]):-call(chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_193326).


test('?- chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_192540)),nondet]):-call(chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_192540).


test('?- chat80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_192564)),nondet]):-call(chat80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_192564).


test('?- chat80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_192192)),nondet]):-call(chat80("You're in the dimly lit Brig",[descriptionTest]),_192192).


test('?- chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_192582)),nondet]):-call(chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_192582).


test('?- chat80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_192660)),nondet]):-call(chat80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_192660).


test('?- chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_192954)),nondet]):-call(chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_192954).


test('?- chat80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_199182)),nondet]):-call(chat80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_199182).


test('?- chat80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_192666)),nondet]):-call(chat80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_192666).


test('?- chat80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_192270)),nondet]):-call(chat80("You're in the Enterprise transporter room",[descriptionTest]),_192270).


test('?- chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_192756)),nondet]):-call(chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_192756).


test('?- chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_192726)),nondet]):-call(chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_192726).


test('?- chat80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_192264)),nondet]):-call(chat80("You find yourself in a transporter beam",[descriptionTest]),_192264).


test('?- chat80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_192264)),nondet]):-call(chat80("All you can see is blue flashing light",[descriptionTest]),_192264).


test('?- chat80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_192420)),nondet]):-call(chat80("It feels as though your body is racing around at high speeds",[descriptionTest]),_192420).


test('?- chat80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_192540)),nondet]):-call(chat80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_192540).


test('?- chat80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_192468)),nondet]):-call(chat80("You step through the doors and find yourself in a large school room",[descriptionTest]),_192468).


test('?- chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_192846)),nondet]):-call(chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_192846).


test('?- chat80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_192600)),nondet]):-call(chat80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_192600).


test('?- chat80("You\'re in the turbolift",[descriptionTest])',[true(compound(_192150)),nondet]):-call(chat80("You're in the turbolift",[descriptionTest]),_192150).


test('?- chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_192528)),nondet]):-call(chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_192528).


test('?- chat80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_192420)),nondet]):-call(chat80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_192420).


test('?- chat80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_192408)),nondet]):-call(chat80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_192408).


test('?- chat80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_192162)),nondet]):-call(chat80("You're now on Holodeck 2",[descriptionTest]),_192162).


test('?- chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_192846)),nondet]):-call(chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_192846).


test('?- chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_192594)),nondet]):-call(chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_192594).


test('?- chat80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_192288)),nondet]):-call(chat80("Right now, this holodeck is not functioning",[descriptionTest]),_192288).


test('?- chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_192396)),nondet]):-call(chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_192396).


test('?- chat80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_192318)),nondet]):-call(chat80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_192318).


test('?- chat80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_192528)),nondet]):-call(chat80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_192528).


test('?- chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_192846)),nondet]):-call(chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_192846).


test('?- chat80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_192222)),nondet]):-call(chat80("You've arrived in Riker's quarters",[descriptionTest]),_192222).


test('?- chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_192798)),nondet]):-call(chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_192798).


test('?- chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_192732)),nondet]):-call(chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_192732).


test('?- chat80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_192336)),nondet]):-call(chat80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_192336).


test('?- chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_192972)),nondet]):-call(chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_192972).


test('?- chat80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_192768)),nondet]):-call(chat80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_192768).


test('?- chat80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_192240)),nondet]):-call(chat80("You emerge into a dark narrow alley",[descriptionTest]),_192240).


test('?- chat80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_192384)),nondet]):-call(chat80("Tall dark brick buildings block your way north and south",[descriptionTest]),_192384).


test('?- chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_192648)),nondet]):-call(chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_192648).


test('?- chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_192684)),nondet]):-call(chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_192684).


test('?- chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_192420)),nondet]):-call(chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_192420).


test('?- chat80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_192324)),nondet]):-call(chat80("The archway leading out of the holodeck is west",[descriptionTest]),_192324).


test('?- chat80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_192228)),nondet]):-call(chat80("You're in Doctor Crusher's quarters",[descriptionTest]),_192228).


test('?- chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_192624)),nondet]):-call(chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_192624).


test('?- chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_192714)),nondet]):-call(chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_192714).


test('?- chat80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_192456)),nondet]):-call(chat80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_192456).


test('?- chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_193080)),nondet]):-call(chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_193080).


test('?- chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_192552)),nondet]):-call(chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_192552).


test('?- chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_192948)),nondet]):-call(chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_192948).


test('?- chat80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_192420)),nondet]):-call(chat80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_192420).


test('?- chat80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_192348)),nondet]):-call(chat80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_192348).


test('?- chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_193242)),nondet]):-call(chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_193242).


test('?- chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_192420)),nondet]):-call(chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_192420).


test('?- chat80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_192330)),nondet]):-call(chat80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_192330).


test('?- chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_192522)),nondet]):-call(chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_192522).


test('?- chat80("A large grey door leads into space",[descriptionTest])',[true(compound(_192234)),nondet]):-call(chat80("A large grey door leads into space",[descriptionTest]),_192234).


test('?- chat80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_192420)),nondet]):-call(chat80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_192420).


test('?- chat80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_192492)),nondet]):-call(chat80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_192492).


test('?- chat80("You feel very cold",[descriptionTest])',[true(compound(_192120)),nondet]):-call(chat80("You feel very cold",[descriptionTest]),_192120).


test('?- chat80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_192390)),nondet]):-call(chat80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_192390).


test('?- chat80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_192276)),nondet]):-call(chat80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_192276).


test('?- chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_192888)),nondet]):-call(chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_192888).


test('?- chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_192612)),nondet]):-call(chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_192612).


test('?- chat80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_192162)),nondet]):-call(chat80("You're in Worf's quarters",[descriptionTest]),_192162).


test('?- chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_192606)),nondet]):-call(chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_192606).


test('?- chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_193020)),nondet]):-call(chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_193020).


test('?- chat80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_192228)),nondet]):-call(chat80("You emerge into the Enterprise gym",[descriptionTest]),_192228).


test('?- chat80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_192330)),nondet]):-call(chat80("The room is quite large, with a soft grey floor",[descriptionTest]),_192330).


test('?- chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_192738)),nondet]):-call(chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_192738).


test('?- chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_192702)),nondet]):-call(chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_192702).


test('?- chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_192390)),nondet]):-call(chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_192390).


test('?- chat80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_192456)),nondet]):-call(chat80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_192456).


test('?- chat80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_192546)),nondet]):-call(chat80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_192546).


test('?- chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_192840)),nondet]):-call(chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_192840).


test('?- chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_192858)),nondet]):-call(chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_192858).


test('?- chat80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_192312)),nondet]):-call(chat80("Two large windows offer a great view of space",[descriptionTest]),_192312).


test('?- chat80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_192564)),nondet]):-call(chat80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_192564).


test('?- chat80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_192240)),nondet]):-call(chat80("You're in the Enterprise science lab",[descriptionTest]),_192240).


test('?- chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_192630)),nondet]):-call(chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_192630).


test('?- chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_193128)),nondet]):-call(chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_193128).


test('?- chat80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_192384)),nondet]):-call(chat80("A complex looking computer console is facing this machine",[descriptionTest]),_192384).


test('?- chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_192540)),nondet]):-call(chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_192540).


test('?- chat80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_192300)),nondet]):-call(chat80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_192300).


test('?- chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_192534)),nondet]):-call(chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_192534).


test('?- chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_192906)),nondet]):-call(chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_192906).


test('?- chat80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_192708)),nondet]):-call(chat80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_192708).


test('?- chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_193104)),nondet]):-call(chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_193104).


test('?- chat80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_192306)),nondet]):-call(chat80("You're standing in Captain Picard's ready room",[descriptionTest]),_192306).


test('?- chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_192744)),nondet]):-call(chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_192744).


test('?- chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_192648)),nondet]):-call(chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_192648).


test('?- chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_192846)),nondet]):-call(chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_192846).


test('?- chat80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_192426)),nondet]):-call(chat80("This is where the Captain makes all of his important decisions",[descriptionTest]),_192426).


test('?- chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_192534)),nondet]):-call(chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_192534).


test('?- chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_192846)),nondet]):-call(chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_192846).


test('?- chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_192654)),nondet]):-call(chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_192654).


test('?- chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_192450)),nondet]):-call(chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_192450).


test('?- chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_192798)),nondet]):-call(chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_192798).


test('?- chat80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_192396)),nondet]):-call(chat80("This is where the ship's pilot and information officer sit",[descriptionTest]),_192396).


test('?- chat80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_192318)),nondet]):-call(chat80("You're in the conference room of the Enterprise",[descriptionTest]),_192318).


test('?- chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_192864)),nondet]):-call(chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_192864).


test('?- chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_192486)),nondet]):-call(chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_192486).


test('?- chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_192582)),nondet]):-call(chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_192582).


test('?- chat80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_192414)),nondet]):-call(chat80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_192414).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_115376)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_115376).


test('?- chat80("no two owners eat pizza",[sanity])',[true(compound(_115368)),nondet]):-call(chat80("no two owners eat pizza",[sanity]),_115368).


test('?- chat80("no three owners eat pizza",[sanity])',[true(compound(_115368)),nondet]):-call(chat80("no three owners eat pizza",[sanity]),_115368).


test('?- chat80("no three owners eat the same pizza",[sanity])',[true(compound(_115370)),nondet]):-call(chat80("no three owners eat the same pizza",[sanity]),_115370).


test('?- chat80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_115372)),nondet]):-call(chat80("no three owners eat the same kind of pizza",[sanity]),_115372).


test('?- chat80("no owners eat the same pizza",[sanity])',[true(compound(_115368)),nondet]):-call(chat80("no owners eat the same pizza",[sanity]),_115368).


test('?- chat80("no owners eat the same kind of pizza",[sanity])',[true(compound(_115370)),nondet]):-call(chat80("no owners eat the same kind of pizza",[sanity]),_115370).


test('?- chat80("there are 5 houses",[sanity])',[true(compound(_115366)),nondet]):-call(chat80("there are 5 houses",[sanity]),_115366).


test('?- chat80("there are not 5 houses",[sanity])',[true(compound(_115366)),nondet]):-call(chat80("there are not 5 houses",[sanity]),_115366).


test('?- chat80("there are not zero houses",[sanity])',[true(compound(_115368)),nondet]):-call(chat80("there are not zero houses",[sanity]),_115368).


test('?- chat80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_115376)),nondet]):-call(chat80(noun_phrase("less than 2 owners"),[sanity,bug]),_115376).


test('?- chat80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_115370)),nondet]):-call(chat80(noun_phrase("at most the 5 owners"),[sanity]),_115370).


test('?- chat80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_115370)),nondet]):-call(chat80(noun_phrase("at most 5 owners"),[sanity]),_115370).


test('?- chat80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_115370)),nondet]):-call(chat80(noun_phrase("less than 3 owners"),[sanity]),_115370).


test('?- chat80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_115372)),nondet]):-call(chat80(noun_phrase("at most 50 percent of owners"),[sanity]),_115372).


test('?- chat80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_115376)),nondet]):-call(chat80(noun_phrase("no three owners"),[sanity,no_working]),_115376).


test('?- chat80("terry writes a non-program.",[tell])',[true(compound(_115368)),nondet]):-call(chat80("terry writes a non-program.",[tell]),_115368).


test('?- chat80("every nonhuman programmer writes a program.",[tell])',[true(compound(_115372)),nondet]):-call(chat80("every nonhuman programmer writes a program.",[tell]),_115372).


test('?- chat80("every human programmer writes a not a program.",[tell])',[true(compound(_115372)),nondet]):-call(chat80("every human programmer writes a not a program.",[tell]),_115372).


test('?- chat80("every human programmer happily writes a not a program.",[tell])',[true(compound(_115374)),nondet]):-call(chat80("every human programmer happily writes a not a program.",[tell]),_115374).


:- end_tests(chat80).



:- begin_tests(curt80).



test('?- curt80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_115416)),nondet]):-call(curt80("His friends are liked by hers.",[bad_juju,sanity]),_115416).


test('?- curt80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_115418)),nondet]):-call(curt80("Her friends are not liked by his.",[bad_juju,sanity]),_115418).


test('?- curt80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_115418)),nondet]):-call(curt80("Do their friends like each other?",[bad_juju,feature]),_115418).


test('?- curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_115360),sanity])',[true(compound(_115422)),nondet]):-call(curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_115360),sanity]),_115422).


test('?- curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_115358),sanity])',[true(compound(_115420)),nondet]):-call(curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_115358),sanity]),_115420).


test('?- curt80("There are 5 houses with five different colors.",[riddle(_115362),sanity])',[true(compound(_115424)),nondet]):-call(curt80("There are 5 houses with five different colors.",[riddle(_115362),sanity]),_115424).


test('?- curt80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_115414)),nondet]):-call(curt80("There are 5 houses",[riddle_prep,sanity]),_115414).


test('?- curt80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_115418)),nondet]):-call(curt80("Each house has a different color",[riddle_prep,sanity]),_115418).


test('?- curt80("In each house lives a person with a different nationality.",[riddle(_115366),sanity])',[true(compound(_115428)),nondet]):-call(curt80("In each house lives a person with a different nationality.",[riddle(_115366),sanity]),_115428).


test('?- curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_115440)),nondet]):-call(curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_115440).


test('?- curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_115428)),nondet]):-call(curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_115428).


test('?- curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_115426)),nondet]):-call(curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_115426).


test('?- curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_115430)),nondet]):-call(curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_115430).


test('?- curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_115434)),nondet]):-call(curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_115434).


test('?- curt80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_115426)),nondet]):-call(curt80("No owners have the same pet.",[riddle(1),sanity,regression]),_115426).


test('?- curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_115430)),nondet]):-call(curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_115430).


test('?- curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_115424)),nondet]):-call(curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_115424).


test('?- curt80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_115428)),nondet]):-call(curt80("No two owners have the same pet.",[riddle(1),sanity,regression]),_115428).


test('?- curt80("The brit lives in the red house.",[riddle(_115360),sanity])',[true(compound(_115422)),nondet]):-call(curt80("The brit lives in the red house.",[riddle(_115360),sanity]),_115422).


test('?- curt80("The swede keeps dogs as pets.",[riddle(_115358),sanity])',[true(compound(_115420)),nondet]):-call(curt80("The swede keeps dogs as pets.",[riddle(_115358),sanity]),_115420).


test('?- curt80("A dane drinks tea.",[riddle(_115356),sanity])',[true(compound(_115418)),nondet]):-call(curt80("A dane drinks tea.",[riddle(_115356),sanity]),_115418).


test('?- curt80("The green house is on the left of the white house.",[riddle(_115364),sanity])',[true(compound(_115426)),nondet]):-call(curt80("The green house is on the left of the white house.",[riddle(_115364),sanity]),_115426).


test('?- curt80("The green house\'s owner drinks coffee.",[riddle(_115360),sanity])',[true(compound(_115422)),nondet]):-call(curt80("The green house's owner drinks coffee.",[riddle(_115360),sanity]),_115422).


test('?- curt80("The person who smokes Pall Mall rears birds.",[riddle(_115362),sanity,regression])',[true(compound(_115430)),nondet]):-call(curt80("The person who smokes Pall Mall rears birds.",[riddle(_115362),sanity,regression]),_115430).


test('?- curt80("The owner of the yellow house smokes Dunhill.",[riddle(_115362),sanity])',[true(compound(_115424)),nondet]):-call(curt80("The owner of the yellow house smokes Dunhill.",[riddle(_115362),sanity]),_115424).


test('?- curt80("The man living in the center house drinks milk.",[riddle(_115364),sanity])',[true(compound(_115426)),nondet]):-call(curt80("The man living in the center house drinks milk.",[riddle(_115364),sanity]),_115426).


test('?- curt80("The Norwegian lives in the first house .",[riddle(_115362),sanity])',[true(compound(_115424)),nondet]):-call(curt80("The Norwegian lives in the first house .",[riddle(_115362),sanity]),_115424).


test('?- curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_115368),sanity])',[true(compound(_115430)),nondet]):-call(curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_115368),sanity]),_115430).


test('?- curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_115368),sanity])',[true(compound(_115430)),nondet]):-call(curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_115368),sanity]),_115430).


test('?- curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_115362),sanity])',[true(compound(_115424)),nondet]):-call(curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_115362),sanity]),_115424).


test('?- curt80("The German smokes Prince.",[riddle(_115358),sanity])',[true(compound(_115420)),nondet]):-call(curt80("The German smokes Prince.",[riddle(_115358),sanity]),_115420).


test('?- curt80("The Norwegian lives next to the blue house.",[riddle(_115362),sanity])',[true(compound(_115424)),nondet]):-call(curt80("The Norwegian lives next to the blue house.",[riddle(_115362),sanity]),_115424).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_115366),sanity])',[true(compound(_115428)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_115366),sanity]),_115428).


test('?- curt80("Who owns the fish?",[riddle(_115356),sanity])',[true(compound(_115418)),nondet]):-call(curt80("Who owns the fish?",[riddle(_115356),sanity]),_115418).


test('?- curt80("One woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("One woman paints.",[quants]),_115408).


test('?- curt80("No woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("No woman paints.",[quants]),_115408).


test('?- curt80("Some woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Some woman paints.",[quants]),_115408).


test('?- curt80("Every woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Every woman paints.",[quants]),_115408).


test('?- curt80("Each woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Each woman paints.",[quants]),_115408).


test('?- curt80("Any woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Any woman paints.",[quants]),_115408).


test('?- curt80("The woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("The woman paints.",[quants]),_115408).


test('?- curt80("The not woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("The not woman paints.",[quants]),_115408).


test('?- curt80("Not a woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Not a woman paints.",[quants]),_115408).


test('?- curt80("Not one woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Not one woman paints.",[quants]),_115408).


test('?- curt80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_115408)),nondet]):-call(curt80("Not no woman paints.",[quants_neg_postcond]),_115408).


test('?- curt80("Not some woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Not some woman paints.",[quants]),_115408).


test('?- curt80("Not every woman paints.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("Not every woman paints.",[quants]),_115410).


test('?- curt80("Not each woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Not each woman paints.",[quants]),_115408).


test('?- curt80("Not any woman paints.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Not any woman paints.",[quants]),_115408).


test('?- curt80("The women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("The women paint.",[quants]),_115408).


test('?- curt80("Women paint.",[quants])',[true(compound(_115406)),nondet]):-call(curt80("Women paint.",[quants]),_115406).


test('?- curt80("Some women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Some women paint.",[quants]),_115408).


test('?- curt80("No women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("No women paint.",[quants]),_115408).


test('?- curt80("All women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("All women paint.",[quants]),_115408).


test('?- curt80("Any women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Any women paint.",[quants]),_115408).


test('?- curt80("Not women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Not women paint.",[quants]),_115408).


test('?- curt80("Not no women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Not no women paint.",[quants]),_115408).


test('?- curt80("Not all women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Not all women paint.",[quants]),_115408).


test('?- curt80("Not any women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Not any women paint.",[quants]),_115408).


test('?- curt80("The three women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("The three women paint.",[quants]),_115408).


test('?- curt80("Three women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Three women paint.",[quants]),_115408).


test('?- curt80("Some three women paint.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("Some three women paint.",[quants]),_115410).


test('?- curt80("No three women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("No three women paint.",[quants]),_115408).


test('?- curt80("Every three women paint.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("Every three women paint.",[quants]),_115410).


test('?- curt80("All three women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("All three women paint.",[quants]),_115408).


test('?- curt80("Any three women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Any three women paint.",[quants]),_115408).


test('?- curt80("Not three women paint.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("Not three women paint.",[quants]),_115408).


test('?- curt80("Not some three women paint.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("Not some three women paint.",[quants]),_115410).


test('?- curt80("Not no three women paint.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("Not no three women paint.",[quants]),_115410).


test('?- curt80("Not all three women paint.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("Not all three women paint.",[quants]),_115410).


test('?- curt80("Not every three women paint.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("Not every three women paint.",[quants]),_115410).


test('?- curt80("Not any three women paint.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("Not any three women paint.",[quants]),_115410).


test('?- curt80("Not three of the women paint.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("Not three of the women paint.",[quants]),_115410).


test('?- curt80("Not some of the three women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("Not some of the three women paint.",[quants]),_115412).


test('?- curt80("Not no three of the women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("Not no three of the women paint.",[quants]),_115412).


test('?- curt80("Not all three of the women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("Not all three of the women paint.",[quants]),_115412).


test('?- curt80("Not every three of the women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("Not every three of the women paint.",[quants]),_115412).


test('?- curt80("Not any three of the women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("Not any three of the women paint.",[quants]),_115412).


test('?- curt80("Not three of the four women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("Not three of the four women paint.",[quants]),_115412).


test('?- curt80("Not none of three out of the four women paint.",[quants])',[true(compound(_115414)),nondet]):-call(curt80("Not none of three out of the four women paint.",[quants]),_115414).


test('?- curt80("Not all three of the four women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("Not all three of the four women paint.",[quants]),_115412).


test('?- curt80("Not any three of the four women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("Not any three of the four women paint.",[quants]),_115412).


test('?- curt80("Three of the four women paint.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("Three of the four women paint.",[quants]),_115410).


test('?- curt80("Three out of the four women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("Three out of the four women paint.",[quants]),_115412).


test('?- curt80("All three of the four women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("All three of the four women paint.",[quants]),_115412).


test('?- curt80("Any three of the four women paint.",[quants])',[true(compound(_115412)),nondet]):-call(curt80("Any three of the four women paint.",[quants]),_115412).


test('?- curt80("I paint",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("I paint",[pronoun]),_115406).


test('?- curt80("you paint",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("you paint",[pronoun]),_115406).


test('?- curt80("We paint",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("We paint",[pronoun]),_115406).


test('?- curt80("None paint",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("None paint",[pronoun]),_115406).


test('?- curt80("They paint",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("They paint",[pronoun]),_115406).


test('?- curt80("Some paint",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("Some paint",[pronoun]),_115406).


test('?- curt80("It paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("It paints",[pronoun]),_115406).


test('?- curt80("he paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("he paints",[pronoun]),_115406).


test('?- curt80("She paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("She paints",[pronoun]),_115406).


test('?- curt80("Someone paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("Someone paints",[pronoun]),_115406).


test('?- curt80("Anybody paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("Anybody paints",[pronoun]),_115406).


test('?- curt80("Anyone paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("Anyone paints",[pronoun]),_115406).


test('?- curt80("Anything paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Anything paints",[pronoun]),_115408).


test('?- curt80("Everybody paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Everybody paints",[pronoun]),_115408).


test('?- curt80("Everyone paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Everyone paints",[pronoun]),_115408).


test('?- curt80("Everything paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Everything paints",[pronoun]),_115408).


test('?- curt80("Nobody paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("Nobody paints",[pronoun]),_115406).


test('?- curt80("No one paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("No one paints",[pronoun]),_115406).


test('?- curt80("Nothing paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("Nothing paints",[pronoun]),_115406).


test('?- curt80("One paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("One paints",[pronoun]),_115406).


test('?- curt80("Somebody paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Somebody paints",[pronoun]),_115408).


test('?- curt80("Something paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Something paints",[pronoun]),_115408).


test('?- curt80("Not anybody paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Not anybody paints",[pronoun]),_115408).


test('?- curt80("Not anyone paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Not anyone paints",[pronoun]),_115408).


test('?- curt80("Not anything paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Not anything paints",[pronoun]),_115408).


test('?- curt80("Not everybody paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Not everybody paints",[pronoun]),_115408).


test('?- curt80("Not everyone paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Not everyone paints",[pronoun]),_115408).


test('?- curt80("Not everything paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Not everything paints",[pronoun]),_115408).


test('?- curt80("Not nothing paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Not nothing paints",[pronoun]),_115408).


test('?- curt80("Not one paints",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("Not one paints",[pronoun]),_115406).


test('?- curt80("Not somebody paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Not somebody paints",[pronoun]),_115408).


test('?- curt80("Not something paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("Not something paints",[pronoun]),_115408).


test('?- curt80("She likes i",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("She likes i",[pronoun]),_115406).


test('?- curt80("She likes me",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("She likes me",[pronoun]),_115406).


test('?- curt80("She likes you",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("She likes you",[pronoun]),_115406).


test('?- curt80("She likes it",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("She likes it",[pronoun]),_115406).


test('?- curt80("She likes us",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("She likes us",[pronoun]),_115406).


test('?- curt80("She likes them",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("She likes them",[pronoun]),_115406).


test('?- curt80("She likes no one",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("She likes no one",[pronoun]),_115408).


test('?- curt80("She likes none",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("She likes none",[pronoun]),_115406).


test('?- curt80("She likes him",[pronoun])',[true(compound(_115406)),nondet]):-call(curt80("She likes him",[pronoun]),_115406).


test('?- curt80("She likes herself",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("She likes herself",[pronoun]),_115408).


test('?- curt80("She likes himself",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("She likes himself",[pronoun]),_115408).


test('?- curt80("It is us that paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("It is us that paints",[pronoun]),_115408).


test('?- curt80("It is them that paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("It is them that paints",[pronoun]),_115408).


test('?- curt80("It is he that paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("It is he that paints",[pronoun]),_115408).


test('?- curt80("It is she that paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("It is she that paints",[pronoun]),_115408).


test('?- curt80("It is her that paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("It is her that paints",[pronoun]),_115408).


test('?- curt80("It is him that paints",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("It is him that paints",[pronoun]),_115408).


test('?- curt80("We are us that paint",[pronoun])',[true(compound(_115408)),nondet]):-call(curt80("We are us that paint",[pronoun]),_115408).


test('?- curt80("We are all of us that paint",[pronoun])',[true(compound(_115410)),nondet]):-call(curt80("We are all of us that paint",[pronoun]),_115410).


test('?- curt80("It is everybody that paints",[pronoun])',[true(compound(_115410)),nondet]):-call(curt80("It is everybody that paints",[pronoun]),_115410).


test('?- curt80("Every man that paints likes monet.",[bratko])',[true(compound(_115412)),nondet]):-call(curt80("Every man that paints likes monet.",[bratko]),_115412).


test('?- curt80("A woman that admires John paints.",[bratko])',[true(compound(_115412)),nondet]):-call(curt80("A woman that admires John paints.",[bratko]),_115412).


test('?- curt80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_115418)),nondet]):-call(curt80("Every woman that likes a man that admires monet paints.",[bratko]),_115418).


test('?- curt80("John likes Annie.",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("John likes Annie.",[bratko]),_115408).


test('?- curt80("Annie likes a man that admires monet.",[bratko])',[true(compound(_115412)),nondet]):-call(curt80("Annie likes a man that admires monet.",[bratko]),_115412).


test('?- curt80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_115412)),nondet]):-call(curt80("Bertrand Russell wrote principia.",[bratko]),_115412).


test('?- curt80("An author wrote principia.",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("An author wrote principia.",[bratko]),_115410).


test('?- curt80("Iraq is a country.",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("Iraq is a country.",[bratko]),_115408).


test('?- curt80("A happy author wrote principia.",[bratko])',[true(compound(_115412)),nondet]):-call(curt80("A happy author wrote principia.",[bratko]),_115412).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_115408).


test('?- curt80("Bertrand is an author.",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("Bertrand is an author.",[bratko]),_115408).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_115408).


test('?- curt80("Every author is a programmer.",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("Every author is a programmer.",[bratko]),_115410).


test('?- curt80("Is Bertrand an programmer?",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("Is Bertrand an programmer?",[bratko]),_115410).


test('?- curt80("What is a author?",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("What is a author?",[bratko]),_115408).


test('?- curt80("What did Bertrand write?",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("What did Bertrand write?",[bratko]),_115410).


test('?- curt80("What is a book?",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("What is a book?",[bratko]),_115408).


test('?- curt80("Principia is a book.",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("Principia is a book.",[bratko]),_115408).


test('?- curt80("Bertrand is Bertrand.",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("Bertrand is Bertrand.",[bratko]),_115408).


test('?- curt80("Shrdlu halts.",[bratko])',[true(compound(_115406)),nondet]):-call(curt80("Shrdlu halts.",[bratko]),_115406).


test('?- curt80("Every student wrote a program.",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("Every student wrote a program.",[bratko]),_115410).


test('?- curt80("Terry writes a program.",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("Terry writes a program.",[bratko]),_115410).


test('?- curt80("Terry writes a program that halts.",[bratko])',[true(compound(_115412)),nondet]):-call(curt80("Terry writes a program that halts.",[bratko]),_115412).


test('?- curt80("An author of every book wrote a program.",[bratko])',[true(compound(_115414)),nondet]):-call(curt80("An author of every book wrote a program.",[bratko]),_115414).


test('?- curt80("A man hapilly maried paints.",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("A man hapilly maried paints.",[bratko]),_115410).


test('?- curt80("A hapilly maried man paints.",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("A hapilly maried man paints.",[bratko]),_115410).


test('?- curt80("A man who knows paints.",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("A man who knows paints.",[bratko]),_115410).


test('?- curt80("A man gives something.",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("A man gives something.",[bratko]),_115408).


test('?- curt80("A man gives his word.",[bratko])',[true(compound(_115408)),nondet]):-call(curt80("A man gives his word.",[bratko]),_115408).


test('?- curt80("A man of his word paints.",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("A man of his word paints.",[bratko]),_115410).


test('?- curt80("A man paints.",[bratko])',[true(compound(_115406)),nondet]):-call(curt80("A man paints.",[bratko]),_115406).


test('?- curt80("A man that paints paints.",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("A man that paints paints.",[bratko]),_115410).


test('?- curt80("A man walks.",[bratko])',[true(compound(_115406)),nondet]):-call(curt80("A man walks.",[bratko]),_115406).


test('?- curt80("A man that walks paints.",[bratko])',[true(compound(_115410)),nondet]):-call(curt80("A man that walks paints.",[bratko]),_115410).


test('?- curt80("It halts.",[bratko])',[true(compound(_115406)),nondet]):-call(curt80("It halts.",[bratko]),_115406).


test('?- curt80("A man of his word that walks paints.",[bratko])',[true(compound(_115412)),nondet]):-call(curt80("A man of his word that walks paints.",[bratko]),_115412).


test('?- curt80("The cost of what the product is changes.",[bratko])',[true(compound(_115414)),nondet]):-call(curt80("The cost of what the product is changes.",[bratko]),_115414).


test('?- curt80("We need a virtual machine server.",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("We need a virtual machine server.",[aindy]),_115412).


test('?- curt80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_115416)),nondet]):-call(curt80("The virtual machine server should have several VMs.",[aindy]),_115416).


test('?- curt80("One VM should be the POSI VM.",[aindy])',[true(compound(_115410)),nondet]):-call(curt80("One VM should be the POSI VM.",[aindy]),_115410).


test('?- curt80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("One VM should be the FRDCSA.org VM.",[aindy]),_115412).


test('?- curt80("One VM should be the mail server.",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("One VM should be the mail server.",[aindy]),_115412).


test('?- curt80("One computer should be the backup server.",[aindy])',[true(compound(_115414)),nondet]):-call(curt80("One computer should be the backup server.",[aindy]),_115414).


test('?- curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_115430)),nondet]):-call(curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_115430).


test('?- curt80("I need a fast computer for work.",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("I need a fast computer for work.",[aindy]),_115412).


test('?- curt80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_115422)),nondet]):-call(curt80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_115422).


test('?- curt80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_115418)),nondet]):-call(curt80("I need a dedicated computer for network security research.",[aindy]),_115418).


test('?- curt80("I need a machine to run Tails on.",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("I need a machine to run Tails on.",[aindy]),_115412).


test('?- curt80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_115416)),nondet]):-call(curt80("I need a machine off the network for airgap security.",[aindy]),_115416).


test('?- curt80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_115422)),nondet]):-call(curt80("One VM should be the game server for running game development projects.",[aindy]),_115422).


test('?- curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_115416)),nondet]):-call(curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_115416).


test('?- curt80("I could read about how to build a private watson.",[aindy])',[true(compound(_115416)),nondet]):-call(curt80("I could read about how to build a private watson.",[aindy]),_115416).


test('?- curt80("Need backups.",[aindy])',[true(compound(_115406)),nondet]):-call(curt80("Need backups.",[aindy]),_115406).


test('?- curt80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_115420)),nondet]):-call(curt80("Practice setting up backups of a machine to a different machine.",[aindy]),_115420).


test('?- curt80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_115418)),nondet]):-call(curt80("Set up schedules for updating the software on all machines.",[aindy]),_115418).


test('?- curt80("Read books on server room layout.",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("Read books on server room layout.",[aindy]),_115412).


test('?- curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_115420)),nondet]):-call(curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_115420).


test('?- curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_115422)),nondet]):-call(curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_115422).


test('?- curt80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("I want a gaming computer.  Do I?",[aindy]),_115412).


test('?- curt80("I want a windows 7 computer for work.",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("I want a windows 7 computer for work.",[aindy]),_115412).


test('?- curt80("I want a fast linux computer for work.",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("I want a fast linux computer for work.",[aindy]),_115412).


test('?- curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_115432)),nondet]):-call(curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_115432).


test('?- curt80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_115418)),nondet]):-call(curt80("I could install a fresh operating system on justin for work.",[aindy]),_115418).


test('?- curt80("I probably want a separate git computer.",[aindy])',[true(compound(_115414)),nondet]):-call(curt80("I probably want a separate git computer.",[aindy]),_115414).


test('?- curt80("I need to start buying servers.",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("I need to start buying servers.",[aindy]),_115412).


test('?- curt80("I want a rackmount case for servers.",[aindy])',[true(compound(_115412)),nondet]):-call(curt80("I want a rackmount case for servers.",[aindy]),_115412).


test('?- curt80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_115418)),nondet]):-call(curt80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_115418).


test('?- curt80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_115416)),nondet]):-call(curt80("2 oceans border each african country.",[chat80(tell)]),_115416).


test('?- curt80("There are 10 large cars.",[quants])',[true(compound(_115410)),nondet]):-call(curt80("There are 10 large cars.",[quants]),_115410).


test('?- curt80("There are 10 oceans.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("There are 10 oceans.",[quants]),_115408).


test('?- curt80("There are 10 women.",[quants])',[true(compound(_115408)),nondet]):-call(curt80("There are 10 women.",[quants]),_115408).


test('?- curt80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_115416)),nondet]):-call(curt80("An ocean borders an African country.",[chat80(tell)]),_115416).


test('?- curt80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_115424)),nondet]):-call(curt80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_115424).


test('?- curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_115426)),nondet]):-call(curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_115426).


test('?- curt80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_115412)),nondet]):-call(curt80("Bertrand wrote a book.",[bratko(book)]),_115412).


test('?- curt80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_115414)),nondet]):-call(curt80("Bertrand wrote nothing.",[bratko(book)]),_115414).


test('?- curt80("Bertrand wrote.",[bratko(book)])',[true(compound(_115412)),nondet]):-call(curt80("Bertrand wrote.",[bratko(book)]),_115412).


test('?- curt80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_115416)),nondet]):-call(curt80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_115416).


test('?- curt80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_115414)),nondet]):-call(curt80("Bertrand wrote about Gottlob.",[bratko(book)]),_115414).


test('?- curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_115416)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_115416).


test('?- curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_115418)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_115418).


test('?- curt80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_115416)),nondet]):-call(curt80("What did alfred write to Bertrand?",[bratko(book)]),_115416).


test('?- curt80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_115412)),nondet]):-call(curt80("Alfred wrote a letter.",[bratko(book)]),_115412).


test('?- curt80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_115416)),nondet]):-call(curt80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_115416).


test('?- curt80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_115416)),nondet]):-call(curt80("Alfred wrote something to Bertrand.",[bratko(book)]),_115416).


test('?- curt80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_115414)),nondet]):-call(curt80("Alfred wrote to Bertrand.",[bratko(book)]),_115414).


test('?- curt80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_115416)),nondet]):-call(curt80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_115416).


test('?- curt80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_115416)),nondet]):-call(curt80("Alfred wrote Bertrand a letter.",[bratko(book)]),_115416).


test('?- curt80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_115416)),nondet]):-call(curt80("Who did alfred write a letter to?",[bratko(book)]),_115416).


test('?- curt80("Alfred gave it.",[bratko(book)])',[true(compound(_115412)),nondet]):-call(curt80("Alfred gave it.",[bratko(book)]),_115412).


test('?- curt80("Alfred gave a book.",[bratko(book)])',[true(compound(_115412)),nondet]):-call(curt80("Alfred gave a book.",[bratko(book)]),_115412).


test('?- curt80("a pride of lions paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a pride of lions paint",[of]),_115408).


test('?- curt80("a flock of birds paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a flock of birds paint",[of]),_115408).


test('?- curt80("a litter of pups paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a litter of pups paint",[of]),_115408).


test('?- curt80("a prickle of porcupines paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a prickle of porcupines paint",[of]),_115410).


test('?- curt80("a litter of cubs paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a litter of cubs paint",[of]),_115408).


test('?- curt80("a pack of dogs paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a pack of dogs paint",[of]),_115408).


test('?- curt80("a colony of beavers paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a colony of beavers paint",[of]),_115410).


test('?- curt80("a gaggle of geese paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a gaggle of geese paint",[of]),_115410).


test('?- curt80("a family of otters paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a family of otters paint",[of]),_115410).


test('?- curt80("a huddle of walruses paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a huddle of walruses paint",[of]),_115410).


test('?- curt80("a herd of deer paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a herd of deer paint",[of]),_115408).


test('?- curt80("a culture of bacteria paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a culture of bacteria paint",[of]),_115410).


test('?- curt80("a swarm of bees paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a swarm of bees paint",[of]),_115408).


test('?- curt80("a bed of clams paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a bed of clams paint",[of]),_115408).


test('?- curt80("a school of cod paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a school of cod paint",[of]),_115408).


test('?- curt80("a herd of dinosaurs paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a herd of dinosaurs paint",[of]),_115410).


test('?- curt80("a mess of iguanas paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a mess of iguanas paint",[of]),_115410).


test('?- curt80("a mob of wombats paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a mob of wombats paint",[of]),_115408).


test('?- curt80("a pod of pelicans paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a pod of pelicans paint",[of]),_115410).


test('?- curt80("a troop of boy scouts paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a troop of boy scouts paint",[of]),_115410).


test('?- curt80("a team of athletes paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a team of athletes paint",[of]),_115410).


test('?- curt80("a panel of experts paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a panel of experts paint",[of]),_115410).


test('?- curt80("a crew of sailors paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a crew of sailors paint",[of]),_115410).


test('?- curt80("a band of robbers paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a band of robbers paint",[of]),_115410).


test('?- curt80("a troupe of performers paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a troupe of performers paint",[of]),_115410).


test('?- curt80("a crowd of onlookers paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a crowd of onlookers paint",[of]),_115410).


test('?- curt80("a curse of painters paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("a curse of painters paint",[of]),_115410).


test('?- curt80("a fleet of cars paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a fleet of cars paint",[of]),_115408).


test('?- curt80("a pair of shoes paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a pair of shoes paint",[of]),_115408).


test('?- curt80("a fleet of ships paint",[of])',[true(compound(_115408)),nondet]):-call(curt80("a fleet of ships paint",[of]),_115408).


test('?- curt80("an anthology of stories paint",[of])',[true(compound(_115410)),nondet]):-call(curt80("an anthology of stories paint",[of]),_115410).


test('?- curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_192384)),nondet]):-call(curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_192384).


test('?- curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_192354)),nondet]):-call(curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_192354).


test('?- curt80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_192492)),nondet]):-call(curt80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_192492).


test('?- curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_192336)),nondet]):-call(curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_192336).


test('?- curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_192384)),nondet]):-call(curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_192384).


test('?- curt80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_192480)),nondet]):-call(curt80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_192480).


test('?- curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_192438)),nondet]):-call(curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_192438).


test('?- curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_192630)),nondet]):-call(curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_192630).


test('?- curt80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_192402)),nondet]):-call(curt80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_192402).


test('?- curt80("Logged on player character",[descriptionTest])',[true(compound(_192210)),nondet]):-call(curt80("Logged on player character",[descriptionTest]),_192210).


test('?- curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_192468)),nondet]):-call(curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_192468).


test('?- curt80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_192414)),nondet]):-call(curt80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_192414).


test('?- curt80("Wesley is her son",[descriptionTest])',[true(compound(_192156)),nondet]):-call(curt80("Wesley is her son",[descriptionTest]),_192156).


test('?- curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_192804)),nondet]):-call(curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_192804).


test('?- curt80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_192234)),nondet]):-call(curt80("Counselor Deanna Troi is here",[descriptionTest]),_192234).


test('?- curt80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_192330)),nondet]):-call(curt80("Counselor Troi is the ship's main counselor",[descriptionTest]),_192330).


test('?- curt80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_192486)),nondet]):-call(curt80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_192486).


test('?- curt80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_192360)),nondet]):-call(curt80("Commander William Riker is here, staring at you",[descriptionTest]),_192360).


test('?- curt80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_192366)),nondet]):-call(curt80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_192366).


test('?- curt80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_192336)),nondet]):-call(curt80("He's in charge of keeping the crew in line",[descriptionTest]),_192336).


test('?- curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_192402)),nondet]):-call(curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_192402).


test('?- curt80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_192300)),nondet]):-call(curt80("Captain Picard is a very important man",[descriptionTest]),_192300).


test('?- curt80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_192402)),nondet]):-call(curt80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_192402).


test('?- curt80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_192246)),nondet]):-call(curt80("He's very smart, and very wise",[descriptionTest]),_192246).


test('?- curt80("Don\'t mess with him!",[descriptionTest])',[true(compound(_192174)),nondet]):-call(curt80("Don't mess with him!",[descriptionTest]),_192174).


test('?- curt80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_192252)),nondet]):-call(curt80("Guinan is here, tending the bar",[descriptionTest]),_192252).


test('?- curt80("Guinan is a strange being",[descriptionTest])',[true(compound(_192210)),nondet]):-call(curt80("Guinan is a strange being",[descriptionTest]),_192210).


test('?- curt80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_192918)),nondet]):-call(curt80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_192918).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_192420)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_192420).


test('?- curt80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_192420)),nondet]):-call(curt80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_192420).


test('?- curt80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_192720)),nondet]):-call(curt80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_192720).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_192414)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_192414).


test('?- curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_192438)),nondet]):-call(curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_192438).


test('?- curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_192708)),nondet]):-call(curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_192708).


test('?- curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_192630)),nondet]):-call(curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_192630).


test('?- curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_192420)),nondet]):-call(curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_192420).


test('?- curt80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_192300)),nondet]):-call(curt80("Livingston is Captain Picard's pet fish",[descriptionTest]),_192300).


test('?- curt80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_192552)),nondet]):-call(curt80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_192552).


test('?- curt80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_192402)),nondet]):-call(curt80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_192402).


test('?- curt80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_192270)),nondet]):-call(curt80("Spot is Data's orange coloured cat",[descriptionTest]),_192270).


test('?- curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_192792)),nondet]):-call(curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_192792).


test('?- curt80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_192414)),nondet]):-call(curt80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_192414).


test('?- curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_192396)),nondet]):-call(curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_192396).


test('?- curt80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_192738)),nondet]):-call(curt80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_192738).


test('?- curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_192384)),nondet]):-call(curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_192384).


test('?- curt80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_192252)),nondet]):-call(curt80("Alexander Rozhenko is Worf's son",[descriptionTest]),_192252).


test('?- curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_192534)),nondet]):-call(curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_192534).


test('?- curt80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_192450)),nondet]):-call(curt80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_192450).


test('?- curt80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_192396)),nondet]):-call(curt80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_192396).


test('?- curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_192798)),nondet]):-call(curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_192798).


test('?- curt80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_192276)),nondet]):-call(curt80("A large phaser rifle is lying here",[descriptionTest]),_192276).


test('?- curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_192870)),nondet]):-call(curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_192870).


test('?- curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_192474)),nondet]):-call(curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_192474).


test('?- curt80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192822)),nondet]):-call(curt80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192822).


test('?- curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_192474)),nondet]):-call(curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_192474).


test('?- curt80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192846)),nondet]):-call(curt80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192846).


test('?- curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_192450)),nondet]):-call(curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_192450).


test('?- curt80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192822)),nondet]):-call(curt80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192822).


test('?- curt80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_192372)),nondet]):-call(curt80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_192372).


test('?- curt80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_192912)),nondet]):-call(curt80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_192912).


test('?- curt80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_192342)),nondet]):-call(curt80("A Starfleet communication badge is lying here",[descriptionTest]),_192342).


test('?- curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_193380)),nondet]):-call(curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_193380).


test('?- curt80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_192336)),nondet]):-call(curt80("Worf's silver chain sash has been left here",[descriptionTest]),_192336).


test('?- curt80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_192948)),nondet]):-call(curt80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_192948).


test('?- curt80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_192228)),nondet]):-call(curt80("Geordi's VISOR is lying here",[descriptionTest]),_192228).


test('?- curt80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_193620)),nondet]):-call(curt80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_193620).


test('?- curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_192396)),nondet]):-call(curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_192396).


test('?- curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_193182)),nondet]):-call(curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_193182).


test('?- curt80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_192330)),nondet]):-call(curt80("A shard of dilithium crystal is lying here",[descriptionTest]),_192330).


test('?- curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_192984)),nondet]):-call(curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_192984).


test('?- curt80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_192342)),nondet]):-call(curt80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_192342).


test('?- curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_192954)),nondet]):-call(curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_192954).


test('?- curt80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_192354)),nondet]):-call(curt80("Commander Riker's trombone has been placed here",[descriptionTest]),_192354).


test('?- curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_192786)),nondet]):-call(curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_192786).


test('?- curt80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_192282)),nondet]):-call(curt80("A small cup of tea is sitting here",[descriptionTest]),_192282).


test('?- curt80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_192300)),nondet]):-call(curt80("A bottle of synthehol is standing here",[descriptionTest]),_192300).


test('?- curt80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_192312)),nondet]):-call(curt80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_192312).


test('?- curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_192336)),nondet]):-call(curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_192336).


test('?- curt80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_192348)),nondet]):-call(curt80("A small glass of prune juice is sitting here",[descriptionTest]),_192348).


test('?- curt80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_192318)),nondet]):-call(curt80("A bottle of Vulcan beer is standing here",[descriptionTest]),_192318).


test('?- curt80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_192390)),nondet]):-call(curt80("You find yourself in the middle of main engineering",[descriptionTest]),_192390).


test('?- curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_192510)),nondet]):-call(curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_192510).


test('?- curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_192810)),nondet]):-call(curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_192810).


test('?- curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_192618)),nondet]):-call(curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_192618).


test('?- curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_192546)),nondet]):-call(curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_192546).


test('?- curt80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_192726)),nondet]):-call(curt80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_192726).


test('?- curt80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_192318)),nondet]):-call(curt80("You're in the middle of Geordi's quarters",[descriptionTest]),_192318).


test('?- curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_192516)),nondet]):-call(curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_192516).


test('?- curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_192840)),nondet]):-call(curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_192840).


test('?- curt80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_192450)),nondet]):-call(curt80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_192450).


test('?- curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_192420)),nondet]):-call(curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_192420).


test('?- curt80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_192306)),nondet]):-call(curt80("You're in the middle of Data's quarters",[descriptionTest]),_192306).


test('?- curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_193368)),nondet]):-call(curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_193368).


test('?- curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_192582)),nondet]):-call(curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_192582).


test('?- curt80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_192606)),nondet]):-call(curt80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_192606).


test('?- curt80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_192234)),nondet]):-call(curt80("You're in the dimly lit Brig",[descriptionTest]),_192234).


test('?- curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_192624)),nondet]):-call(curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_192624).


test('?- curt80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_192702)),nondet]):-call(curt80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_192702).


test('?- curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_192996)),nondet]):-call(curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_192996).


test('?- curt80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_199224)),nondet]):-call(curt80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_199224).


test('?- curt80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_192708)),nondet]):-call(curt80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_192708).


test('?- curt80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_192312)),nondet]):-call(curt80("You're in the Enterprise transporter room",[descriptionTest]),_192312).


test('?- curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_192798)),nondet]):-call(curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_192798).


test('?- curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_192768)),nondet]):-call(curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_192768).


test('?- curt80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_192306)),nondet]):-call(curt80("You find yourself in a transporter beam",[descriptionTest]),_192306).


test('?- curt80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_192306)),nondet]):-call(curt80("All you can see is blue flashing light",[descriptionTest]),_192306).


test('?- curt80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_192462)),nondet]):-call(curt80("It feels as though your body is racing around at high speeds",[descriptionTest]),_192462).


test('?- curt80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_192582)),nondet]):-call(curt80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_192582).


test('?- curt80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_192510)),nondet]):-call(curt80("You step through the doors and find yourself in a large school room",[descriptionTest]),_192510).


test('?- curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_192888)),nondet]):-call(curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_192888).


test('?- curt80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_192642)),nondet]):-call(curt80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_192642).


test('?- curt80("You\'re in the turbolift",[descriptionTest])',[true(compound(_192192)),nondet]):-call(curt80("You're in the turbolift",[descriptionTest]),_192192).


test('?- curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_192570)),nondet]):-call(curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_192570).


test('?- curt80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_192462)),nondet]):-call(curt80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_192462).


test('?- curt80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_192450)),nondet]):-call(curt80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_192450).


test('?- curt80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_192204)),nondet]):-call(curt80("You're now on Holodeck 2",[descriptionTest]),_192204).


test('?- curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_192888)),nondet]):-call(curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_192888).


test('?- curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_192636)),nondet]):-call(curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_192636).


test('?- curt80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_192330)),nondet]):-call(curt80("Right now, this holodeck is not functioning",[descriptionTest]),_192330).


test('?- curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_192438)),nondet]):-call(curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_192438).


test('?- curt80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_192360)),nondet]):-call(curt80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_192360).


test('?- curt80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_192570)),nondet]):-call(curt80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_192570).


test('?- curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_192888)),nondet]):-call(curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_192888).


test('?- curt80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_192264)),nondet]):-call(curt80("You've arrived in Riker's quarters",[descriptionTest]),_192264).


test('?- curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_192840)),nondet]):-call(curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_192840).


test('?- curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_192774)),nondet]):-call(curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_192774).


test('?- curt80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_192378)),nondet]):-call(curt80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_192378).


test('?- curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_193014)),nondet]):-call(curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_193014).


test('?- curt80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_192810)),nondet]):-call(curt80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_192810).


test('?- curt80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_192282)),nondet]):-call(curt80("You emerge into a dark narrow alley",[descriptionTest]),_192282).


test('?- curt80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_192426)),nondet]):-call(curt80("Tall dark brick buildings block your way north and south",[descriptionTest]),_192426).


test('?- curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_192690)),nondet]):-call(curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_192690).


test('?- curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_192726)),nondet]):-call(curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_192726).


test('?- curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_192462)),nondet]):-call(curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_192462).


test('?- curt80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_192366)),nondet]):-call(curt80("The archway leading out of the holodeck is west",[descriptionTest]),_192366).


test('?- curt80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_192270)),nondet]):-call(curt80("You're in Doctor Crusher's quarters",[descriptionTest]),_192270).


test('?- curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_192666)),nondet]):-call(curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_192666).


test('?- curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_192756)),nondet]):-call(curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_192756).


test('?- curt80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_192498)),nondet]):-call(curt80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_192498).


test('?- curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_193122)),nondet]):-call(curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_193122).


test('?- curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_192594)),nondet]):-call(curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_192594).


test('?- curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_192990)),nondet]):-call(curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_192990).


test('?- curt80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_192462)),nondet]):-call(curt80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_192462).


test('?- curt80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_192390)),nondet]):-call(curt80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_192390).


test('?- curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_193284)),nondet]):-call(curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_193284).


test('?- curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_192462)),nondet]):-call(curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_192462).


test('?- curt80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_192372)),nondet]):-call(curt80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_192372).


test('?- curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_192564)),nondet]):-call(curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_192564).


test('?- curt80("A large grey door leads into space",[descriptionTest])',[true(compound(_192276)),nondet]):-call(curt80("A large grey door leads into space",[descriptionTest]),_192276).


test('?- curt80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_192462)),nondet]):-call(curt80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_192462).


test('?- curt80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_192534)),nondet]):-call(curt80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_192534).


test('?- curt80("You feel very cold",[descriptionTest])',[true(compound(_192162)),nondet]):-call(curt80("You feel very cold",[descriptionTest]),_192162).


test('?- curt80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_192432)),nondet]):-call(curt80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_192432).


test('?- curt80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_192318)),nondet]):-call(curt80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_192318).


test('?- curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_192930)),nondet]):-call(curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_192930).


test('?- curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_192654)),nondet]):-call(curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_192654).


test('?- curt80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_192204)),nondet]):-call(curt80("You're in Worf's quarters",[descriptionTest]),_192204).


test('?- curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_192648)),nondet]):-call(curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_192648).


test('?- curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_193062)),nondet]):-call(curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_193062).


test('?- curt80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_192270)),nondet]):-call(curt80("You emerge into the Enterprise gym",[descriptionTest]),_192270).


test('?- curt80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_192372)),nondet]):-call(curt80("The room is quite large, with a soft grey floor",[descriptionTest]),_192372).


test('?- curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_192780)),nondet]):-call(curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_192780).


test('?- curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_192744)),nondet]):-call(curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_192744).


test('?- curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_192432)),nondet]):-call(curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_192432).


test('?- curt80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_192498)),nondet]):-call(curt80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_192498).


test('?- curt80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_192588)),nondet]):-call(curt80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_192588).


test('?- curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_192882)),nondet]):-call(curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_192882).


test('?- curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_192900)),nondet]):-call(curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_192900).


test('?- curt80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_192354)),nondet]):-call(curt80("Two large windows offer a great view of space",[descriptionTest]),_192354).


test('?- curt80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_192606)),nondet]):-call(curt80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_192606).


test('?- curt80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_192282)),nondet]):-call(curt80("You're in the Enterprise science lab",[descriptionTest]),_192282).


test('?- curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_192672)),nondet]):-call(curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_192672).


test('?- curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_193170)),nondet]):-call(curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_193170).


test('?- curt80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_192426)),nondet]):-call(curt80("A complex looking computer console is facing this machine",[descriptionTest]),_192426).


test('?- curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_192582)),nondet]):-call(curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_192582).


test('?- curt80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_192342)),nondet]):-call(curt80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_192342).


test('?- curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_192576)),nondet]):-call(curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_192576).


test('?- curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_192948)),nondet]):-call(curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_192948).


test('?- curt80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_192750)),nondet]):-call(curt80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_192750).


test('?- curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_193146)),nondet]):-call(curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_193146).


test('?- curt80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_192348)),nondet]):-call(curt80("You're standing in Captain Picard's ready room",[descriptionTest]),_192348).


test('?- curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_192786)),nondet]):-call(curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_192786).


test('?- curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_192690)),nondet]):-call(curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_192690).


test('?- curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_192888)),nondet]):-call(curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_192888).


test('?- curt80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_192468)),nondet]):-call(curt80("This is where the Captain makes all of his important decisions",[descriptionTest]),_192468).


test('?- curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_192576)),nondet]):-call(curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_192576).


test('?- curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_192888)),nondet]):-call(curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_192888).


test('?- curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_192696)),nondet]):-call(curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_192696).


test('?- curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_192492)),nondet]):-call(curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_192492).


test('?- curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_192840)),nondet]):-call(curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_192840).


test('?- curt80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_192438)),nondet]):-call(curt80("This is where the ship's pilot and information officer sit",[descriptionTest]),_192438).


test('?- curt80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_192360)),nondet]):-call(curt80("You're in the conference room of the Enterprise",[descriptionTest]),_192360).


test('?- curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_192906)),nondet]):-call(curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_192906).


test('?- curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_192528)),nondet]):-call(curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_192528).


test('?- curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_192624)),nondet]):-call(curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_192624).


test('?- curt80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_192456)),nondet]):-call(curt80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_192456).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_115418)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_115418).


test('?- curt80("no two owners eat pizza",[sanity])',[true(compound(_115410)),nondet]):-call(curt80("no two owners eat pizza",[sanity]),_115410).


test('?- curt80("no three owners eat pizza",[sanity])',[true(compound(_115410)),nondet]):-call(curt80("no three owners eat pizza",[sanity]),_115410).


test('?- curt80("no three owners eat the same pizza",[sanity])',[true(compound(_115412)),nondet]):-call(curt80("no three owners eat the same pizza",[sanity]),_115412).


test('?- curt80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_115414)),nondet]):-call(curt80("no three owners eat the same kind of pizza",[sanity]),_115414).


test('?- curt80("no owners eat the same pizza",[sanity])',[true(compound(_115410)),nondet]):-call(curt80("no owners eat the same pizza",[sanity]),_115410).


test('?- curt80("no owners eat the same kind of pizza",[sanity])',[true(compound(_115412)),nondet]):-call(curt80("no owners eat the same kind of pizza",[sanity]),_115412).


test('?- curt80("there are 5 houses",[sanity])',[true(compound(_115408)),nondet]):-call(curt80("there are 5 houses",[sanity]),_115408).


test('?- curt80("there are not 5 houses",[sanity])',[true(compound(_115408)),nondet]):-call(curt80("there are not 5 houses",[sanity]),_115408).


test('?- curt80("there are not zero houses",[sanity])',[true(compound(_115410)),nondet]):-call(curt80("there are not zero houses",[sanity]),_115410).


test('?- curt80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_115418)),nondet]):-call(curt80(noun_phrase("less than 2 owners"),[sanity,bug]),_115418).


test('?- curt80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_115412)),nondet]):-call(curt80(noun_phrase("at most the 5 owners"),[sanity]),_115412).


test('?- curt80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_115412)),nondet]):-call(curt80(noun_phrase("at most 5 owners"),[sanity]),_115412).


test('?- curt80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_115412)),nondet]):-call(curt80(noun_phrase("less than 3 owners"),[sanity]),_115412).


test('?- curt80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_115414)),nondet]):-call(curt80(noun_phrase("at most 50 percent of owners"),[sanity]),_115414).


test('?- curt80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_115418)),nondet]):-call(curt80(noun_phrase("no three owners"),[sanity,no_working]),_115418).


test('?- curt80("terry writes a non-program.",[tell])',[true(compound(_115410)),nondet]):-call(curt80("terry writes a non-program.",[tell]),_115410).


test('?- curt80("every nonhuman programmer writes a program.",[tell])',[true(compound(_115414)),nondet]):-call(curt80("every nonhuman programmer writes a program.",[tell]),_115414).


test('?- curt80("every human programmer writes a not a program.",[tell])',[true(compound(_115414)),nondet]):-call(curt80("every human programmer writes a not a program.",[tell]),_115414).


test('?- curt80("every human programmer happily writes a not a program.",[tell])',[true(compound(_115416)),nondet]):-call(curt80("every human programmer happily writes a not a program.",[tell]),_115416).


:- end_tests(curt80).



:- begin_tests(e2c).



test('?- e2c("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_115458)),nondet]):-call(e2c("His friends are liked by hers.",[bad_juju,sanity]),_115458).


test('?- e2c("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_115460)),nondet]):-call(e2c("Her friends are not liked by his.",[bad_juju,sanity]),_115460).


test('?- e2c("Do their friends like each other?",[bad_juju,feature])',[true(compound(_115460)),nondet]):-call(e2c("Do their friends like each other?",[bad_juju,feature]),_115460).


test('?- e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_115402),sanity])',[true(compound(_115464)),nondet]):-call(e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_115402),sanity]),_115464).


test('?- e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_115400),sanity])',[true(compound(_115462)),nondet]):-call(e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_115400),sanity]),_115462).


test('?- e2c("There are 5 houses with five different colors.",[riddle(_115404),sanity])',[true(compound(_115466)),nondet]):-call(e2c("There are 5 houses with five different colors.",[riddle(_115404),sanity]),_115466).


test('?- e2c("There are 5 houses",[riddle_prep,sanity])',[true(compound(_115456)),nondet]):-call(e2c("There are 5 houses",[riddle_prep,sanity]),_115456).


test('?- e2c("Each house has a different color",[riddle_prep,sanity])',[true(compound(_115460)),nondet]):-call(e2c("Each house has a different color",[riddle_prep,sanity]),_115460).


test('?- e2c("In each house lives a person with a different nationality.",[riddle(_115408),sanity])',[true(compound(_115470)),nondet]):-call(e2c("In each house lives a person with a different nationality.",[riddle(_115408),sanity]),_115470).


test('?- e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_115482)),nondet]):-call(e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_115482).


test('?- e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_115470)),nondet]):-call(e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_115470).


test('?- e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_115468)),nondet]):-call(e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_115468).


test('?- e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_115472)),nondet]):-call(e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_115472).


test('?- e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_115476)),nondet]):-call(e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_115476).


test('?- e2c("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_115468)),nondet]):-call(e2c("No owners have the same pet.",[riddle(1),sanity,regression]),_115468).


test('?- e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_115472)),nondet]):-call(e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_115472).


test('?- e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_115466)),nondet]):-call(e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_115466).


test('?- e2c("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_115470)),nondet]):-call(e2c("No two owners have the same pet.",[riddle(1),sanity,regression]),_115470).


test('?- e2c("The brit lives in the red house.",[riddle(_115402),sanity])',[true(compound(_115464)),nondet]):-call(e2c("The brit lives in the red house.",[riddle(_115402),sanity]),_115464).


test('?- e2c("The swede keeps dogs as pets.",[riddle(_115400),sanity])',[true(compound(_115462)),nondet]):-call(e2c("The swede keeps dogs as pets.",[riddle(_115400),sanity]),_115462).


test('?- e2c("A dane drinks tea.",[riddle(_115398),sanity])',[true(compound(_115460)),nondet]):-call(e2c("A dane drinks tea.",[riddle(_115398),sanity]),_115460).


test('?- e2c("The green house is on the left of the white house.",[riddle(_115406),sanity])',[true(compound(_115468)),nondet]):-call(e2c("The green house is on the left of the white house.",[riddle(_115406),sanity]),_115468).


test('?- e2c("The green house\'s owner drinks coffee.",[riddle(_115402),sanity])',[true(compound(_115464)),nondet]):-call(e2c("The green house's owner drinks coffee.",[riddle(_115402),sanity]),_115464).


test('?- e2c("The person who smokes Pall Mall rears birds.",[riddle(_115404),sanity,regression])',[true(compound(_115472)),nondet]):-call(e2c("The person who smokes Pall Mall rears birds.",[riddle(_115404),sanity,regression]),_115472).


test('?- e2c("The owner of the yellow house smokes Dunhill.",[riddle(_115404),sanity])',[true(compound(_115466)),nondet]):-call(e2c("The owner of the yellow house smokes Dunhill.",[riddle(_115404),sanity]),_115466).


test('?- e2c("The man living in the center house drinks milk.",[riddle(_115406),sanity])',[true(compound(_115468)),nondet]):-call(e2c("The man living in the center house drinks milk.",[riddle(_115406),sanity]),_115468).


test('?- e2c("The Norwegian lives in the first house .",[riddle(_115404),sanity])',[true(compound(_115466)),nondet]):-call(e2c("The Norwegian lives in the first house .",[riddle(_115404),sanity]),_115466).


test('?- e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_115410),sanity])',[true(compound(_115472)),nondet]):-call(e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_115410),sanity]),_115472).


test('?- e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_115410),sanity])',[true(compound(_115472)),nondet]):-call(e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_115410),sanity]),_115472).


test('?- e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_115404),sanity])',[true(compound(_115466)),nondet]):-call(e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_115404),sanity]),_115466).


test('?- e2c("The German smokes Prince.",[riddle(_115400),sanity])',[true(compound(_115462)),nondet]):-call(e2c("The German smokes Prince.",[riddle(_115400),sanity]),_115462).


test('?- e2c("The Norwegian lives next to the blue house.",[riddle(_115404),sanity])',[true(compound(_115466)),nondet]):-call(e2c("The Norwegian lives next to the blue house.",[riddle(_115404),sanity]),_115466).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_115408),sanity])',[true(compound(_115470)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_115408),sanity]),_115470).


test('?- e2c("Who owns the fish?",[riddle(_115398),sanity])',[true(compound(_115460)),nondet]):-call(e2c("Who owns the fish?",[riddle(_115398),sanity]),_115460).


test('?- e2c("One woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("One woman paints.",[quants]),_115450).


test('?- e2c("No woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("No woman paints.",[quants]),_115450).


test('?- e2c("Some woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Some woman paints.",[quants]),_115450).


test('?- e2c("Every woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Every woman paints.",[quants]),_115450).


test('?- e2c("Each woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Each woman paints.",[quants]),_115450).


test('?- e2c("Any woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Any woman paints.",[quants]),_115450).


test('?- e2c("The woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("The woman paints.",[quants]),_115450).


test('?- e2c("The not woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("The not woman paints.",[quants]),_115450).


test('?- e2c("Not a woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Not a woman paints.",[quants]),_115450).


test('?- e2c("Not one woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Not one woman paints.",[quants]),_115450).


test('?- e2c("Not no woman paints.",[quants_neg_postcond])',[true(compound(_115450)),nondet]):-call(e2c("Not no woman paints.",[quants_neg_postcond]),_115450).


test('?- e2c("Not some woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Not some woman paints.",[quants]),_115450).


test('?- e2c("Not every woman paints.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("Not every woman paints.",[quants]),_115452).


test('?- e2c("Not each woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Not each woman paints.",[quants]),_115450).


test('?- e2c("Not any woman paints.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Not any woman paints.",[quants]),_115450).


test('?- e2c("The women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("The women paint.",[quants]),_115450).


test('?- e2c("Women paint.",[quants])',[true(compound(_115448)),nondet]):-call(e2c("Women paint.",[quants]),_115448).


test('?- e2c("Some women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Some women paint.",[quants]),_115450).


test('?- e2c("No women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("No women paint.",[quants]),_115450).


test('?- e2c("All women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("All women paint.",[quants]),_115450).


test('?- e2c("Any women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Any women paint.",[quants]),_115450).


test('?- e2c("Not women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Not women paint.",[quants]),_115450).


test('?- e2c("Not no women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Not no women paint.",[quants]),_115450).


test('?- e2c("Not all women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Not all women paint.",[quants]),_115450).


test('?- e2c("Not any women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Not any women paint.",[quants]),_115450).


test('?- e2c("The three women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("The three women paint.",[quants]),_115450).


test('?- e2c("Three women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Three women paint.",[quants]),_115450).


test('?- e2c("Some three women paint.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("Some three women paint.",[quants]),_115452).


test('?- e2c("No three women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("No three women paint.",[quants]),_115450).


test('?- e2c("Every three women paint.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("Every three women paint.",[quants]),_115452).


test('?- e2c("All three women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("All three women paint.",[quants]),_115450).


test('?- e2c("Any three women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Any three women paint.",[quants]),_115450).


test('?- e2c("Not three women paint.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("Not three women paint.",[quants]),_115450).


test('?- e2c("Not some three women paint.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("Not some three women paint.",[quants]),_115452).


test('?- e2c("Not no three women paint.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("Not no three women paint.",[quants]),_115452).


test('?- e2c("Not all three women paint.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("Not all three women paint.",[quants]),_115452).


test('?- e2c("Not every three women paint.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("Not every three women paint.",[quants]),_115452).


test('?- e2c("Not any three women paint.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("Not any three women paint.",[quants]),_115452).


test('?- e2c("Not three of the women paint.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("Not three of the women paint.",[quants]),_115452).


test('?- e2c("Not some of the three women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("Not some of the three women paint.",[quants]),_115454).


test('?- e2c("Not no three of the women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("Not no three of the women paint.",[quants]),_115454).


test('?- e2c("Not all three of the women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("Not all three of the women paint.",[quants]),_115454).


test('?- e2c("Not every three of the women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("Not every three of the women paint.",[quants]),_115454).


test('?- e2c("Not any three of the women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("Not any three of the women paint.",[quants]),_115454).


test('?- e2c("Not three of the four women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("Not three of the four women paint.",[quants]),_115454).


test('?- e2c("Not none of three out of the four women paint.",[quants])',[true(compound(_115456)),nondet]):-call(e2c("Not none of three out of the four women paint.",[quants]),_115456).


test('?- e2c("Not all three of the four women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("Not all three of the four women paint.",[quants]),_115454).


test('?- e2c("Not any three of the four women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("Not any three of the four women paint.",[quants]),_115454).


test('?- e2c("Three of the four women paint.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("Three of the four women paint.",[quants]),_115452).


test('?- e2c("Three out of the four women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("Three out of the four women paint.",[quants]),_115454).


test('?- e2c("All three of the four women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("All three of the four women paint.",[quants]),_115454).


test('?- e2c("Any three of the four women paint.",[quants])',[true(compound(_115454)),nondet]):-call(e2c("Any three of the four women paint.",[quants]),_115454).


test('?- e2c("I paint",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("I paint",[pronoun]),_115448).


test('?- e2c("you paint",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("you paint",[pronoun]),_115448).


test('?- e2c("We paint",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("We paint",[pronoun]),_115448).


test('?- e2c("None paint",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("None paint",[pronoun]),_115448).


test('?- e2c("They paint",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("They paint",[pronoun]),_115448).


test('?- e2c("Some paint",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("Some paint",[pronoun]),_115448).


test('?- e2c("It paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("It paints",[pronoun]),_115448).


test('?- e2c("he paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("he paints",[pronoun]),_115448).


test('?- e2c("She paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("She paints",[pronoun]),_115448).


test('?- e2c("Someone paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("Someone paints",[pronoun]),_115448).


test('?- e2c("Anybody paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("Anybody paints",[pronoun]),_115448).


test('?- e2c("Anyone paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("Anyone paints",[pronoun]),_115448).


test('?- e2c("Anything paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Anything paints",[pronoun]),_115450).


test('?- e2c("Everybody paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Everybody paints",[pronoun]),_115450).


test('?- e2c("Everyone paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Everyone paints",[pronoun]),_115450).


test('?- e2c("Everything paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Everything paints",[pronoun]),_115450).


test('?- e2c("Nobody paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("Nobody paints",[pronoun]),_115448).


test('?- e2c("No one paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("No one paints",[pronoun]),_115448).


test('?- e2c("Nothing paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("Nothing paints",[pronoun]),_115448).


test('?- e2c("One paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("One paints",[pronoun]),_115448).


test('?- e2c("Somebody paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Somebody paints",[pronoun]),_115450).


test('?- e2c("Something paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Something paints",[pronoun]),_115450).


test('?- e2c("Not anybody paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Not anybody paints",[pronoun]),_115450).


test('?- e2c("Not anyone paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Not anyone paints",[pronoun]),_115450).


test('?- e2c("Not anything paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Not anything paints",[pronoun]),_115450).


test('?- e2c("Not everybody paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Not everybody paints",[pronoun]),_115450).


test('?- e2c("Not everyone paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Not everyone paints",[pronoun]),_115450).


test('?- e2c("Not everything paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Not everything paints",[pronoun]),_115450).


test('?- e2c("Not nothing paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Not nothing paints",[pronoun]),_115450).


test('?- e2c("Not one paints",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("Not one paints",[pronoun]),_115448).


test('?- e2c("Not somebody paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Not somebody paints",[pronoun]),_115450).


test('?- e2c("Not something paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("Not something paints",[pronoun]),_115450).


test('?- e2c("She likes i",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("She likes i",[pronoun]),_115448).


test('?- e2c("She likes me",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("She likes me",[pronoun]),_115448).


test('?- e2c("She likes you",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("She likes you",[pronoun]),_115448).


test('?- e2c("She likes it",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("She likes it",[pronoun]),_115448).


test('?- e2c("She likes us",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("She likes us",[pronoun]),_115448).


test('?- e2c("She likes them",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("She likes them",[pronoun]),_115448).


test('?- e2c("She likes no one",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("She likes no one",[pronoun]),_115450).


test('?- e2c("She likes none",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("She likes none",[pronoun]),_115448).


test('?- e2c("She likes him",[pronoun])',[true(compound(_115448)),nondet]):-call(e2c("She likes him",[pronoun]),_115448).


test('?- e2c("She likes herself",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("She likes herself",[pronoun]),_115450).


test('?- e2c("She likes himself",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("She likes himself",[pronoun]),_115450).


test('?- e2c("It is us that paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("It is us that paints",[pronoun]),_115450).


test('?- e2c("It is them that paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("It is them that paints",[pronoun]),_115450).


test('?- e2c("It is he that paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("It is he that paints",[pronoun]),_115450).


test('?- e2c("It is she that paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("It is she that paints",[pronoun]),_115450).


test('?- e2c("It is her that paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("It is her that paints",[pronoun]),_115450).


test('?- e2c("It is him that paints",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("It is him that paints",[pronoun]),_115450).


test('?- e2c("We are us that paint",[pronoun])',[true(compound(_115450)),nondet]):-call(e2c("We are us that paint",[pronoun]),_115450).


test('?- e2c("We are all of us that paint",[pronoun])',[true(compound(_115452)),nondet]):-call(e2c("We are all of us that paint",[pronoun]),_115452).


test('?- e2c("It is everybody that paints",[pronoun])',[true(compound(_115452)),nondet]):-call(e2c("It is everybody that paints",[pronoun]),_115452).


test('?- e2c("Every man that paints likes monet.",[bratko])',[true(compound(_115454)),nondet]):-call(e2c("Every man that paints likes monet.",[bratko]),_115454).


test('?- e2c("A woman that admires John paints.",[bratko])',[true(compound(_115454)),nondet]):-call(e2c("A woman that admires John paints.",[bratko]),_115454).


test('?- e2c("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_115460)),nondet]):-call(e2c("Every woman that likes a man that admires monet paints.",[bratko]),_115460).


test('?- e2c("John likes Annie.",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("John likes Annie.",[bratko]),_115450).


test('?- e2c("Annie likes a man that admires monet.",[bratko])',[true(compound(_115454)),nondet]):-call(e2c("Annie likes a man that admires monet.",[bratko]),_115454).


test('?- e2c("Bertrand Russell wrote principia.",[bratko])',[true(compound(_115454)),nondet]):-call(e2c("Bertrand Russell wrote principia.",[bratko]),_115454).


test('?- e2c("An author wrote principia.",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("An author wrote principia.",[bratko]),_115452).


test('?- e2c("Iraq is a country.",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("Iraq is a country.",[bratko]),_115450).


test('?- e2c("A happy author wrote principia.",[bratko])',[true(compound(_115454)),nondet]):-call(e2c("A happy author wrote principia.",[bratko]),_115454).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_115450).


test('?- e2c("Bertrand is an author.",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("Bertrand is an author.",[bratko]),_115450).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_115450).


test('?- e2c("Every author is a programmer.",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("Every author is a programmer.",[bratko]),_115452).


test('?- e2c("Is Bertrand an programmer?",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("Is Bertrand an programmer?",[bratko]),_115452).


test('?- e2c("What is a author?",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("What is a author?",[bratko]),_115450).


test('?- e2c("What did Bertrand write?",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("What did Bertrand write?",[bratko]),_115452).


test('?- e2c("What is a book?",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("What is a book?",[bratko]),_115450).


test('?- e2c("Principia is a book.",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("Principia is a book.",[bratko]),_115450).


test('?- e2c("Bertrand is Bertrand.",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("Bertrand is Bertrand.",[bratko]),_115450).


test('?- e2c("Shrdlu halts.",[bratko])',[true(compound(_115448)),nondet]):-call(e2c("Shrdlu halts.",[bratko]),_115448).


test('?- e2c("Every student wrote a program.",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("Every student wrote a program.",[bratko]),_115452).


test('?- e2c("Terry writes a program.",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("Terry writes a program.",[bratko]),_115452).


test('?- e2c("Terry writes a program that halts.",[bratko])',[true(compound(_115454)),nondet]):-call(e2c("Terry writes a program that halts.",[bratko]),_115454).


test('?- e2c("An author of every book wrote a program.",[bratko])',[true(compound(_115456)),nondet]):-call(e2c("An author of every book wrote a program.",[bratko]),_115456).


test('?- e2c("A man hapilly maried paints.",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("A man hapilly maried paints.",[bratko]),_115452).


test('?- e2c("A hapilly maried man paints.",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("A hapilly maried man paints.",[bratko]),_115452).


test('?- e2c("A man who knows paints.",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("A man who knows paints.",[bratko]),_115452).


test('?- e2c("A man gives something.",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("A man gives something.",[bratko]),_115450).


test('?- e2c("A man gives his word.",[bratko])',[true(compound(_115450)),nondet]):-call(e2c("A man gives his word.",[bratko]),_115450).


test('?- e2c("A man of his word paints.",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("A man of his word paints.",[bratko]),_115452).


test('?- e2c("A man paints.",[bratko])',[true(compound(_115448)),nondet]):-call(e2c("A man paints.",[bratko]),_115448).


test('?- e2c("A man that paints paints.",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("A man that paints paints.",[bratko]),_115452).


test('?- e2c("A man walks.",[bratko])',[true(compound(_115448)),nondet]):-call(e2c("A man walks.",[bratko]),_115448).


test('?- e2c("A man that walks paints.",[bratko])',[true(compound(_115452)),nondet]):-call(e2c("A man that walks paints.",[bratko]),_115452).


test('?- e2c("It halts.",[bratko])',[true(compound(_115448)),nondet]):-call(e2c("It halts.",[bratko]),_115448).


test('?- e2c("A man of his word that walks paints.",[bratko])',[true(compound(_115454)),nondet]):-call(e2c("A man of his word that walks paints.",[bratko]),_115454).


test('?- e2c("The cost of what the product is changes.",[bratko])',[true(compound(_115456)),nondet]):-call(e2c("The cost of what the product is changes.",[bratko]),_115456).


test('?- e2c("We need a virtual machine server.",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("We need a virtual machine server.",[aindy]),_115454).


test('?- e2c("The virtual machine server should have several VMs.",[aindy])',[true(compound(_115458)),nondet]):-call(e2c("The virtual machine server should have several VMs.",[aindy]),_115458).


test('?- e2c("One VM should be the POSI VM.",[aindy])',[true(compound(_115452)),nondet]):-call(e2c("One VM should be the POSI VM.",[aindy]),_115452).


test('?- e2c("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("One VM should be the FRDCSA.org VM.",[aindy]),_115454).


test('?- e2c("One VM should be the mail server.",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("One VM should be the mail server.",[aindy]),_115454).


test('?- e2c("One computer should be the backup server.",[aindy])',[true(compound(_115456)),nondet]):-call(e2c("One computer should be the backup server.",[aindy]),_115456).


test('?- e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_115472)),nondet]):-call(e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_115472).


test('?- e2c("I need a fast computer for work.",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("I need a fast computer for work.",[aindy]),_115454).


test('?- e2c("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_115464)),nondet]):-call(e2c("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_115464).


test('?- e2c("I need a dedicated computer for network security research.",[aindy])',[true(compound(_115460)),nondet]):-call(e2c("I need a dedicated computer for network security research.",[aindy]),_115460).


test('?- e2c("I need a machine to run Tails on.",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("I need a machine to run Tails on.",[aindy]),_115454).


test('?- e2c("I need a machine off the network for airgap security.",[aindy])',[true(compound(_115458)),nondet]):-call(e2c("I need a machine off the network for airgap security.",[aindy]),_115458).


test('?- e2c("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_115464)),nondet]):-call(e2c("One VM should be the game server for running game development projects.",[aindy]),_115464).


test('?- e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_115458)),nondet]):-call(e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_115458).


test('?- e2c("I could read about how to build a private watson.",[aindy])',[true(compound(_115458)),nondet]):-call(e2c("I could read about how to build a private watson.",[aindy]),_115458).


test('?- e2c("Need backups.",[aindy])',[true(compound(_115448)),nondet]):-call(e2c("Need backups.",[aindy]),_115448).


test('?- e2c("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_115462)),nondet]):-call(e2c("Practice setting up backups of a machine to a different machine.",[aindy]),_115462).


test('?- e2c("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_115460)),nondet]):-call(e2c("Set up schedules for updating the software on all machines.",[aindy]),_115460).


test('?- e2c("Read books on server room layout.",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("Read books on server room layout.",[aindy]),_115454).


test('?- e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_115462)),nondet]):-call(e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_115462).


test('?- e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_115464)),nondet]):-call(e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_115464).


test('?- e2c("I want a gaming computer.  Do I?",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("I want a gaming computer.  Do I?",[aindy]),_115454).


test('?- e2c("I want a windows 7 computer for work.",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("I want a windows 7 computer for work.",[aindy]),_115454).


test('?- e2c("I want a fast linux computer for work.",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("I want a fast linux computer for work.",[aindy]),_115454).


test('?- e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_115474)),nondet]):-call(e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_115474).


test('?- e2c("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_115460)),nondet]):-call(e2c("I could install a fresh operating system on justin for work.",[aindy]),_115460).


test('?- e2c("I probably want a separate git computer.",[aindy])',[true(compound(_115456)),nondet]):-call(e2c("I probably want a separate git computer.",[aindy]),_115456).


test('?- e2c("I need to start buying servers.",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("I need to start buying servers.",[aindy]),_115454).


test('?- e2c("I want a rackmount case for servers.",[aindy])',[true(compound(_115454)),nondet]):-call(e2c("I want a rackmount case for servers.",[aindy]),_115454).


test('?- e2c("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_115460)),nondet]):-call(e2c("Each african country is bordered by 2 oceans.",[chat80(tell)]),_115460).


test('?- e2c("2 oceans border each african country.",[chat80(tell)])',[true(compound(_115458)),nondet]):-call(e2c("2 oceans border each african country.",[chat80(tell)]),_115458).


test('?- e2c("There are 10 large cars.",[quants])',[true(compound(_115452)),nondet]):-call(e2c("There are 10 large cars.",[quants]),_115452).


test('?- e2c("There are 10 oceans.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("There are 10 oceans.",[quants]),_115450).


test('?- e2c("There are 10 women.",[quants])',[true(compound(_115450)),nondet]):-call(e2c("There are 10 women.",[quants]),_115450).


test('?- e2c("An ocean borders an African country.",[chat80(tell)])',[true(compound(_115458)),nondet]):-call(e2c("An ocean borders an African country.",[chat80(tell)]),_115458).


test('?- e2c("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_115466)),nondet]):-call(e2c("What is the ocean that borders african countries and that borders asian countries?",[tell]),_115466).


test('?- e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_115468)),nondet]):-call(e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_115468).


test('?- e2c("Bertrand wrote a book.",[bratko(book)])',[true(compound(_115454)),nondet]):-call(e2c("Bertrand wrote a book.",[bratko(book)]),_115454).


test('?- e2c("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_115456)),nondet]):-call(e2c("Bertrand wrote nothing.",[bratko(book)]),_115456).


test('?- e2c("Bertrand wrote.",[bratko(book)])',[true(compound(_115454)),nondet]):-call(e2c("Bertrand wrote.",[bratko(book)]),_115454).


test('?- e2c("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_115458)),nondet]):-call(e2c("Bertrand wrote a book about Gottlob.",[bratko(book)]),_115458).


test('?- e2c("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_115456)),nondet]):-call(e2c("Bertrand wrote about Gottlob.",[bratko(book)]),_115456).


test('?- e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_115458)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_115458).


test('?- e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_115460)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_115460).


test('?- e2c("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_115458)),nondet]):-call(e2c("What did alfred write to Bertrand?",[bratko(book)]),_115458).


test('?- e2c("Alfred wrote a letter.",[bratko(book)])',[true(compound(_115454)),nondet]):-call(e2c("Alfred wrote a letter.",[bratko(book)]),_115454).


test('?- e2c("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_115458)),nondet]):-call(e2c("Alfred wrote a letter to Bertrand.",[bratko(book)]),_115458).


test('?- e2c("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_115458)),nondet]):-call(e2c("Alfred wrote something to Bertrand.",[bratko(book)]),_115458).


test('?- e2c("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_115456)),nondet]):-call(e2c("Alfred wrote to Bertrand.",[bratko(book)]),_115456).


test('?- e2c("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_115458)),nondet]):-call(e2c("Alfred wrote to Bertrand a letter.",[bratko(book)]),_115458).


test('?- e2c("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_115458)),nondet]):-call(e2c("Alfred wrote Bertrand a letter.",[bratko(book)]),_115458).


test('?- e2c("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_115458)),nondet]):-call(e2c("Who did alfred write a letter to?",[bratko(book)]),_115458).


test('?- e2c("Alfred gave it.",[bratko(book)])',[true(compound(_115454)),nondet]):-call(e2c("Alfred gave it.",[bratko(book)]),_115454).


test('?- e2c("Alfred gave a book.",[bratko(book)])',[true(compound(_115454)),nondet]):-call(e2c("Alfred gave a book.",[bratko(book)]),_115454).


test('?- e2c("a pride of lions paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a pride of lions paint",[of]),_115450).


test('?- e2c("a flock of birds paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a flock of birds paint",[of]),_115450).


test('?- e2c("a litter of pups paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a litter of pups paint",[of]),_115450).


test('?- e2c("a prickle of porcupines paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a prickle of porcupines paint",[of]),_115452).


test('?- e2c("a litter of cubs paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a litter of cubs paint",[of]),_115450).


test('?- e2c("a pack of dogs paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a pack of dogs paint",[of]),_115450).


test('?- e2c("a colony of beavers paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a colony of beavers paint",[of]),_115452).


test('?- e2c("a gaggle of geese paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a gaggle of geese paint",[of]),_115452).


test('?- e2c("a family of otters paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a family of otters paint",[of]),_115452).


test('?- e2c("a huddle of walruses paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a huddle of walruses paint",[of]),_115452).


test('?- e2c("a herd of deer paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a herd of deer paint",[of]),_115450).


test('?- e2c("a culture of bacteria paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a culture of bacteria paint",[of]),_115452).


test('?- e2c("a swarm of bees paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a swarm of bees paint",[of]),_115450).


test('?- e2c("a bed of clams paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a bed of clams paint",[of]),_115450).


test('?- e2c("a school of cod paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a school of cod paint",[of]),_115450).


test('?- e2c("a herd of dinosaurs paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a herd of dinosaurs paint",[of]),_115452).


test('?- e2c("a mess of iguanas paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a mess of iguanas paint",[of]),_115452).


test('?- e2c("a mob of wombats paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a mob of wombats paint",[of]),_115450).


test('?- e2c("a pod of pelicans paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a pod of pelicans paint",[of]),_115452).


test('?- e2c("a troop of boy scouts paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a troop of boy scouts paint",[of]),_115452).


test('?- e2c("a team of athletes paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a team of athletes paint",[of]),_115452).


test('?- e2c("a panel of experts paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a panel of experts paint",[of]),_115452).


test('?- e2c("a crew of sailors paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a crew of sailors paint",[of]),_115452).


test('?- e2c("a band of robbers paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a band of robbers paint",[of]),_115452).


test('?- e2c("a troupe of performers paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a troupe of performers paint",[of]),_115452).


test('?- e2c("a crowd of onlookers paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a crowd of onlookers paint",[of]),_115452).


test('?- e2c("a curse of painters paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("a curse of painters paint",[of]),_115452).


test('?- e2c("a fleet of cars paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a fleet of cars paint",[of]),_115450).


test('?- e2c("a pair of shoes paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a pair of shoes paint",[of]),_115450).


test('?- e2c("a fleet of ships paint",[of])',[true(compound(_115450)),nondet]):-call(e2c("a fleet of ships paint",[of]),_115450).


test('?- e2c("an anthology of stories paint",[of])',[true(compound(_115452)),nondet]):-call(e2c("an anthology of stories paint",[of]),_115452).


test('?- e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_192426)),nondet]):-call(e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_192426).


test('?- e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_192396)),nondet]):-call(e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_192396).


test('?- e2c("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_192534)),nondet]):-call(e2c("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_192534).


test('?- e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_192378)),nondet]):-call(e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_192378).


test('?- e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_192426)),nondet]):-call(e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_192426).


test('?- e2c("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_192522)),nondet]):-call(e2c("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_192522).


test('?- e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_192480)),nondet]):-call(e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_192480).


test('?- e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_192672)),nondet]):-call(e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_192672).


test('?- e2c("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_192444)),nondet]):-call(e2c("He stowed super-human strength, and is extremely tough",[descriptionTest]),_192444).


test('?- e2c("Logged on player character",[descriptionTest])',[true(compound(_192252)),nondet]):-call(e2c("Logged on player character",[descriptionTest]),_192252).


test('?- e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_192510)),nondet]):-call(e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_192510).


test('?- e2c("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_192456)),nondet]):-call(e2c("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_192456).


test('?- e2c("Wesley is her son",[descriptionTest])',[true(compound(_192198)),nondet]):-call(e2c("Wesley is her son",[descriptionTest]),_192198).


test('?- e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_192846)),nondet]):-call(e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_192846).


test('?- e2c("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_192276)),nondet]):-call(e2c("Counselor Deanna Troi is here",[descriptionTest]),_192276).


test('?- e2c("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_192372)),nondet]):-call(e2c("Counselor Troi is the ship's main counselor",[descriptionTest]),_192372).


test('?- e2c("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_192528)),nondet]):-call(e2c("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_192528).


test('?- e2c("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_192402)),nondet]):-call(e2c("Commander William Riker is here, staring at you",[descriptionTest]),_192402).


test('?- e2c("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_192408)),nondet]):-call(e2c("Commander Riker is the Enterprise's first officer",[descriptionTest]),_192408).


test('?- e2c("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_192378)),nondet]):-call(e2c("He's in charge of keeping the crew in line",[descriptionTest]),_192378).


test('?- e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_192444)),nondet]):-call(e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_192444).


test('?- e2c("Captain Picard is a very important man",[descriptionTest])',[true(compound(_192342)),nondet]):-call(e2c("Captain Picard is a very important man",[descriptionTest]),_192342).


test('?- e2c("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_192444)),nondet]):-call(e2c("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_192444).


test('?- e2c("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_192288)),nondet]):-call(e2c("He's very smart, and very wise",[descriptionTest]),_192288).


test('?- e2c("Don\'t mess with him!",[descriptionTest])',[true(compound(_192216)),nondet]):-call(e2c("Don't mess with him!",[descriptionTest]),_192216).


test('?- e2c("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_192294)),nondet]):-call(e2c("Guinan is here, tending the bar",[descriptionTest]),_192294).


test('?- e2c("Guinan is a strange being",[descriptionTest])',[true(compound(_192252)),nondet]):-call(e2c("Guinan is a strange being",[descriptionTest]),_192252).


test('?- e2c("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_192960)),nondet]):-call(e2c("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_192960).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_192462)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_192462).


test('?- e2c("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_192462)),nondet]):-call(e2c("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_192462).


test('?- e2c("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_192762)),nondet]):-call(e2c("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_192762).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_192456)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_192456).


test('?- e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_192480)),nondet]):-call(e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_192480).


test('?- e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_192750)),nondet]):-call(e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_192750).


test('?- e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_192672)),nondet]):-call(e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_192672).


test('?- e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_192462)),nondet]):-call(e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_192462).


test('?- e2c("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_192342)),nondet]):-call(e2c("Livingston is Captain Picard's pet fish",[descriptionTest]),_192342).


test('?- e2c("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_192594)),nondet]):-call(e2c("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_192594).


test('?- e2c("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_192444)),nondet]):-call(e2c("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_192444).


test('?- e2c("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_192312)),nondet]):-call(e2c("Spot is Data's orange coloured cat",[descriptionTest]),_192312).


test('?- e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_192834)),nondet]):-call(e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_192834).


test('?- e2c("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_192456)),nondet]):-call(e2c("A nervous looking ensign is standing here, watching you",[descriptionTest]),_192456).


test('?- e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_192438)),nondet]):-call(e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_192438).


test('?- e2c("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_192780)),nondet]):-call(e2c("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_192780).


test('?- e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_192426)),nondet]):-call(e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_192426).


test('?- e2c("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_192294)),nondet]):-call(e2c("Alexander Rozhenko is Worf's son",[descriptionTest]),_192294).


test('?- e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_192576)),nondet]):-call(e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_192576).


test('?- e2c("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_192492)),nondet]):-call(e2c("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_192492).


test('?- e2c("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_192438)),nondet]):-call(e2c("A standard issue Starfleet phaser has been left here",[descriptionTest]),_192438).


test('?- e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_192840)),nondet]):-call(e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_192840).


test('?- e2c("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_192318)),nondet]):-call(e2c("A large phaser rifle is lying here",[descriptionTest]),_192318).


test('?- e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_192912)),nondet]):-call(e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_192912).


test('?- e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_192516)),nondet]):-call(e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_192516).


test('?- e2c("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192864)),nondet]):-call(e2c("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192864).


test('?- e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_192516)),nondet]):-call(e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_192516).


test('?- e2c("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192888)),nondet]):-call(e2c("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192888).


test('?- e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_192492)),nondet]):-call(e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_192492).


test('?- e2c("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_192864)),nondet]):-call(e2c("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_192864).


test('?- e2c("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_192414)),nondet]):-call(e2c("A pair of Starfleet black boots are sitting here",[descriptionTest]),_192414).


test('?- e2c("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_192954)),nondet]):-call(e2c("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_192954).


test('?- e2c("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_192384)),nondet]):-call(e2c("A Starfleet communication badge is lying here",[descriptionTest]),_192384).


test('?- e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_193422)),nondet]):-call(e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_193422).


test('?- e2c("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_192378)),nondet]):-call(e2c("Worf's silver chain sash has been left here",[descriptionTest]),_192378).


test('?- e2c("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_192990)),nondet]):-call(e2c("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_192990).


test('?- e2c("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_192270)),nondet]):-call(e2c("Geordi's VISOR is lying here",[descriptionTest]),_192270).


test('?- e2c("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_193662)),nondet]):-call(e2c("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_193662).


test('?- e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_192438)),nondet]):-call(e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_192438).


test('?- e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_193224)),nondet]):-call(e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_193224).


test('?- e2c("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_192372)),nondet]):-call(e2c("A shard of dilithium crystal is lying here",[descriptionTest]),_192372).


test('?- e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_193026)),nondet]):-call(e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_193026).


test('?- e2c("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_192384)),nondet]):-call(e2c("Captain Picard's wooden flute is sitting here",[descriptionTest]),_192384).


test('?- e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_192996)),nondet]):-call(e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_192996).


test('?- e2c("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_192396)),nondet]):-call(e2c("Commander Riker's trombone has been placed here",[descriptionTest]),_192396).


test('?- e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_192828)),nondet]):-call(e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_192828).


test('?- e2c("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_192324)),nondet]):-call(e2c("A small cup of tea is sitting here",[descriptionTest]),_192324).


test('?- e2c("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_192342)),nondet]):-call(e2c("A bottle of synthehol is standing here",[descriptionTest]),_192342).


test('?- e2c("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_192354)),nondet]):-call(e2c("A bottle of Ferengi ale is sitting here",[descriptionTest]),_192354).


test('?- e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_192378)),nondet]):-call(e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_192378).


test('?- e2c("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_192390)),nondet]):-call(e2c("A small glass of prune juice is sitting here",[descriptionTest]),_192390).


test('?- e2c("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_192360)),nondet]):-call(e2c("A bottle of Vulcan beer is standing here",[descriptionTest]),_192360).


test('?- e2c("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_192432)),nondet]):-call(e2c("You find yourself in the middle of main engineering",[descriptionTest]),_192432).


test('?- e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_192552)),nondet]):-call(e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_192552).


test('?- e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_192852)),nondet]):-call(e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_192852).


test('?- e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_192660)),nondet]):-call(e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_192660).


test('?- e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_192588)),nondet]):-call(e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_192588).


test('?- e2c("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_192768)),nondet]):-call(e2c("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_192768).


test('?- e2c("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_192360)),nondet]):-call(e2c("You're in the middle of Geordi's quarters",[descriptionTest]),_192360).


test('?- e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_192558)),nondet]):-call(e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_192558).


test('?- e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_192882)),nondet]):-call(e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_192882).


test('?- e2c("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_192492)),nondet]):-call(e2c("A neatly made bed has been placed against the northern wall",[descriptionTest]),_192492).


test('?- e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_192462)),nondet]):-call(e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_192462).


test('?- e2c("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_192348)),nondet]):-call(e2c("You're in the middle of Data's quarters",[descriptionTest]),_192348).


test('?- e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_193410)),nondet]):-call(e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_193410).


test('?- e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_192624)),nondet]):-call(e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_192624).


test('?- e2c("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_192648)),nondet]):-call(e2c("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_192648).


test('?- e2c("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_192276)),nondet]):-call(e2c("You're in the dimly lit Brig",[descriptionTest]),_192276).


test('?- e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_192666)),nondet]):-call(e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_192666).


test('?- e2c("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_192744)),nondet]):-call(e2c("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_192744).


test('?- e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_193038)),nondet]):-call(e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_193038).


test('?- e2c(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_199266)),nondet]):-call(e2c('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_199266).


test('?- e2c("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_192750)),nondet]):-call(e2c("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_192750).


test('?- e2c("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_192354)),nondet]):-call(e2c("You're in the Enterprise transporter room",[descriptionTest]),_192354).


test('?- e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_192840)),nondet]):-call(e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_192840).


test('?- e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_192810)),nondet]):-call(e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_192810).


test('?- e2c("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_192348)),nondet]):-call(e2c("You find yourself in a transporter beam",[descriptionTest]),_192348).


test('?- e2c("All you can see is blue flashing light",[descriptionTest])',[true(compound(_192348)),nondet]):-call(e2c("All you can see is blue flashing light",[descriptionTest]),_192348).


test('?- e2c("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_192504)),nondet]):-call(e2c("It feels as though your body is racing around at high speeds",[descriptionTest]),_192504).


test('?- e2c("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_192624)),nondet]):-call(e2c("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_192624).


test('?- e2c("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_192552)),nondet]):-call(e2c("You step through the doors and find yourself in a large school room",[descriptionTest]),_192552).


test('?- e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_192930)),nondet]):-call(e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_192930).


test('?- e2c("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_192684)),nondet]):-call(e2c("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_192684).


test('?- e2c("You\'re in the turbolift",[descriptionTest])',[true(compound(_192234)),nondet]):-call(e2c("You're in the turbolift",[descriptionTest]),_192234).


test('?- e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_192612)),nondet]):-call(e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_192612).


test('?- e2c("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_192504)),nondet]):-call(e2c("Several vertical rows of lights make this place very well lit",[descriptionTest]),_192504).


test('?- e2c("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_192492)),nondet]):-call(e2c("From here, you can access the other decks on the Enterprise",[descriptionTest]),_192492).


test('?- e2c("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_192246)),nondet]):-call(e2c("You're now on Holodeck 2",[descriptionTest]),_192246).


test('?- e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_192930)),nondet]):-call(e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_192930).


test('?- e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_192678)),nondet]):-call(e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_192678).


test('?- e2c("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_192372)),nondet]):-call(e2c("Right now, this holodeck is not functioning",[descriptionTest]),_192372).


test('?- e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_192480)),nondet]):-call(e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_192480).


test('?- e2c("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_192402)),nondet]):-call(e2c("You're in the main cargo bay of the Enterprise",[descriptionTest]),_192402).


test('?- e2c("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_192612)),nondet]):-call(e2c("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_192612).


test('?- e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_192930)),nondet]):-call(e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_192930).


test('?- e2c("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_192306)),nondet]):-call(e2c("You've arrived in Riker's quarters",[descriptionTest]),_192306).


test('?- e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_192882)),nondet]):-call(e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_192882).


test('?- e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_192816)),nondet]):-call(e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_192816).


test('?- e2c("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_192420)),nondet]):-call(e2c("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_192420).


test('?- e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_193056)),nondet]):-call(e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_193056).


test('?- e2c("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_192852)),nondet]):-call(e2c("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_192852).


test('?- e2c("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_192324)),nondet]):-call(e2c("You emerge into a dark narrow alley",[descriptionTest]),_192324).


test('?- e2c("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_192468)),nondet]):-call(e2c("Tall dark brick buildings block your way north and south",[descriptionTest]),_192468).


test('?- e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_192732)),nondet]):-call(e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_192732).


test('?- e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_192768)),nondet]):-call(e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_192768).


test('?- e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_192504)),nondet]):-call(e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_192504).


test('?- e2c("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_192408)),nondet]):-call(e2c("The archway leading out of the holodeck is west",[descriptionTest]),_192408).


test('?- e2c("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_192312)),nondet]):-call(e2c("You're in Doctor Crusher's quarters",[descriptionTest]),_192312).


test('?- e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_192708)),nondet]):-call(e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_192708).


test('?- e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_192798)),nondet]):-call(e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_192798).


test('?- e2c("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_192540)),nondet]):-call(e2c("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_192540).


test('?- e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_193164)),nondet]):-call(e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_193164).


test('?- e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_192636)),nondet]):-call(e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_192636).


test('?- e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_193032)),nondet]):-call(e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_193032).


test('?- e2c("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_192504)),nondet]):-call(e2c("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_192504).


test('?- e2c("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_192432)),nondet]):-call(e2c("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_192432).


test('?- e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_193326)),nondet]):-call(e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_193326).


test('?- e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_192504)),nondet]):-call(e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_192504).


test('?- e2c("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_192414)),nondet]):-call(e2c("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_192414).


test('?- e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_192606)),nondet]):-call(e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_192606).


test('?- e2c("A large grey door leads into space",[descriptionTest])',[true(compound(_192318)),nondet]):-call(e2c("A large grey door leads into space",[descriptionTest]),_192318).


test('?- e2c("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_192504)),nondet]):-call(e2c("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_192504).


test('?- e2c("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_192576)),nondet]):-call(e2c("You can see stars in every direction, which provide the only light here",[descriptionTest]),_192576).


test('?- e2c("You feel very cold",[descriptionTest])',[true(compound(_192204)),nondet]):-call(e2c("You feel very cold",[descriptionTest]),_192204).


test('?- e2c("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_192474)),nondet]):-call(e2c("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_192474).


test('?- e2c("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_192360)),nondet]):-call(e2c("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_192360).


test('?- e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_192972)),nondet]):-call(e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_192972).


test('?- e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_192696)),nondet]):-call(e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_192696).


test('?- e2c("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_192246)),nondet]):-call(e2c("You're in Worf's quarters",[descriptionTest]),_192246).


test('?- e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_192690)),nondet]):-call(e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_192690).


test('?- e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_193104)),nondet]):-call(e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_193104).


test('?- e2c("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_192312)),nondet]):-call(e2c("You emerge into the Enterprise gym",[descriptionTest]),_192312).


test('?- e2c("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_192414)),nondet]):-call(e2c("The room is quite large, with a soft grey floor",[descriptionTest]),_192414).


test('?- e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_192822)),nondet]):-call(e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_192822).


test('?- e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_192786)),nondet]):-call(e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_192786).


test('?- e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_192474)),nondet]):-call(e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_192474).


test('?- e2c("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_192540)),nondet]):-call(e2c("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_192540).


test('?- e2c("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_192630)),nondet]):-call(e2c("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_192630).


test('?- e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_192924)),nondet]):-call(e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_192924).


test('?- e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_192942)),nondet]):-call(e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_192942).


test('?- e2c("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_192396)),nondet]):-call(e2c("Two large windows offer a great view of space",[descriptionTest]),_192396).


test('?- e2c("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_192648)),nondet]):-call(e2c("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_192648).


test('?- e2c("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_192324)),nondet]):-call(e2c("You're in the Enterprise science lab",[descriptionTest]),_192324).


test('?- e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_192714)),nondet]):-call(e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_192714).


test('?- e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_193212)),nondet]):-call(e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_193212).


test('?- e2c("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_192468)),nondet]):-call(e2c("A complex looking computer console is facing this machine",[descriptionTest]),_192468).


test('?- e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_192624)),nondet]):-call(e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_192624).


test('?- e2c("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_192384)),nondet]):-call(e2c("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_192384).


test('?- e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_192618)),nondet]):-call(e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_192618).


test('?- e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_192990)),nondet]):-call(e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_192990).


test('?- e2c("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_192792)),nondet]):-call(e2c("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_192792).


test('?- e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_193188)),nondet]):-call(e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_193188).


test('?- e2c("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_192390)),nondet]):-call(e2c("You're standing in Captain Picard's ready room",[descriptionTest]),_192390).


test('?- e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_192828)),nondet]):-call(e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_192828).


test('?- e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_192732)),nondet]):-call(e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_192732).


test('?- e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_192930)),nondet]):-call(e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_192930).


test('?- e2c("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_192510)),nondet]):-call(e2c("This is where the Captain makes all of his important decisions",[descriptionTest]),_192510).


test('?- e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_192618)),nondet]):-call(e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_192618).


test('?- e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_192930)),nondet]):-call(e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_192930).


test('?- e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_192738)),nondet]):-call(e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_192738).


test('?- e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_192534)),nondet]):-call(e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_192534).


test('?- e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_192882)),nondet]):-call(e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_192882).


test('?- e2c("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_192480)),nondet]):-call(e2c("This is where the ship's pilot and information officer sit",[descriptionTest]),_192480).


test('?- e2c("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_192402)),nondet]):-call(e2c("You're in the conference room of the Enterprise",[descriptionTest]),_192402).


test('?- e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_192948)),nondet]):-call(e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_192948).


test('?- e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_192570)),nondet]):-call(e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_192570).


test('?- e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_192666)),nondet]):-call(e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_192666).


test('?- e2c("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_192498)),nondet]):-call(e2c("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_192498).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_115460)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_115460).


test('?- e2c("no two owners eat pizza",[sanity])',[true(compound(_115452)),nondet]):-call(e2c("no two owners eat pizza",[sanity]),_115452).


test('?- e2c("no three owners eat pizza",[sanity])',[true(compound(_115452)),nondet]):-call(e2c("no three owners eat pizza",[sanity]),_115452).


test('?- e2c("no three owners eat the same pizza",[sanity])',[true(compound(_115454)),nondet]):-call(e2c("no three owners eat the same pizza",[sanity]),_115454).


test('?- e2c("no three owners eat the same kind of pizza",[sanity])',[true(compound(_115456)),nondet]):-call(e2c("no three owners eat the same kind of pizza",[sanity]),_115456).


test('?- e2c("no owners eat the same pizza",[sanity])',[true(compound(_115452)),nondet]):-call(e2c("no owners eat the same pizza",[sanity]),_115452).


test('?- e2c("no owners eat the same kind of pizza",[sanity])',[true(compound(_115454)),nondet]):-call(e2c("no owners eat the same kind of pizza",[sanity]),_115454).


test('?- e2c("there are 5 houses",[sanity])',[true(compound(_115450)),nondet]):-call(e2c("there are 5 houses",[sanity]),_115450).


test('?- e2c("there are not 5 houses",[sanity])',[true(compound(_115450)),nondet]):-call(e2c("there are not 5 houses",[sanity]),_115450).


test('?- e2c("there are not zero houses",[sanity])',[true(compound(_115452)),nondet]):-call(e2c("there are not zero houses",[sanity]),_115452).


test('?- e2c(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_115460)),nondet]):-call(e2c(noun_phrase("less than 2 owners"),[sanity,bug]),_115460).


test('?- e2c(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_115454)),nondet]):-call(e2c(noun_phrase("at most the 5 owners"),[sanity]),_115454).


test('?- e2c(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_115454)),nondet]):-call(e2c(noun_phrase("at most 5 owners"),[sanity]),_115454).


test('?- e2c(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_115454)),nondet]):-call(e2c(noun_phrase("less than 3 owners"),[sanity]),_115454).


test('?- e2c(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_115456)),nondet]):-call(e2c(noun_phrase("at most 50 percent of owners"),[sanity]),_115456).


test('?- e2c(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_115460)),nondet]):-call(e2c(noun_phrase("no three owners"),[sanity,no_working]),_115460).


test('?- e2c("terry writes a non-program.",[tell])',[true(compound(_115452)),nondet]):-call(e2c("terry writes a non-program.",[tell]),_115452).


test('?- e2c("every nonhuman programmer writes a program.",[tell])',[true(compound(_115456)),nondet]):-call(e2c("every nonhuman programmer writes a program.",[tell]),_115456).


test('?- e2c("every human programmer writes a not a program.",[tell])',[true(compound(_115456)),nondet]):-call(e2c("every human programmer writes a not a program.",[tell]),_115456).


test('?- e2c("every human programmer happily writes a not a program.",[tell])',[true(compound(_115458)),nondet]):-call(e2c("every human programmer happily writes a not a program.",[tell]),_115458).


:- end_tests(e2c).

