

:- begin_tests(test_lex_info).



test('?- test_lex_info("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_518946)),nondet]):-call(test_lex_info("His friends are liked by hers.",[bad_juju,sanity]),_518946).


test('?- test_lex_info("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_518948)),nondet]):-call(test_lex_info("Her friends are not liked by his.",[bad_juju,sanity]),_518948).


test('?- test_lex_info("Do their friends like each other?",[bad_juju,feature])',[true(compound(_518948)),nondet]):-call(test_lex_info("Do their friends like each other?",[bad_juju,feature]),_518948).


test('?- test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_518890),sanity])',[true(compound(_518952)),nondet]):-call(test_lex_info("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_518890),sanity]),_518952).


test('?- test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_518888),sanity])',[true(compound(_518950)),nondet]):-call(test_lex_info("If ?X keeps ?Y then ?X has ?Y.",[riddle(_518888),sanity]),_518950).


test('?- test_lex_info("There are 5 houses with five different colors.",[riddle(_518892),sanity])',[true(compound(_518954)),nondet]):-call(test_lex_info("There are 5 houses with five different colors.",[riddle(_518892),sanity]),_518954).


test('?- test_lex_info("There are 5 houses",[riddle_prep,sanity])',[true(compound(_518944)),nondet]):-call(test_lex_info("There are 5 houses",[riddle_prep,sanity]),_518944).


test('?- test_lex_info("Each house has a different color",[riddle_prep,sanity])',[true(compound(_518948)),nondet]):-call(test_lex_info("Each house has a different color",[riddle_prep,sanity]),_518948).


test('?- test_lex_info("In each house lives a person with a different nationality.",[riddle(_518896),sanity])',[true(compound(_518958)),nondet]):-call(test_lex_info("In each house lives a person with a different nationality.",[riddle(_518896),sanity]),_518958).


test('?- test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_518970)),nondet]):-call(test_lex_info("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_518970).


test('?- test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_518958)),nondet]):-call(test_lex_info("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_518958).


test('?- test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_518956)),nondet]):-call(test_lex_info("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_518956).


test('?- test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_518960)),nondet]):-call(test_lex_info("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_518960).


test('?- test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_518964)),nondet]):-call(test_lex_info("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_518964).


test('?- test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_518956)),nondet]):-call(test_lex_info("No owners have the same pet.",[riddle(1),sanity,regression]),_518956).


test('?- test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_518960)),nondet]):-call(test_lex_info("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_518960).


test('?- test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_518954)),nondet]):-call(test_lex_info("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_518954).


test('?- test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_518958)),nondet]):-call(test_lex_info("No two owners have the same pet.",[riddle(1),sanity,regression]),_518958).


test('?- test_lex_info("The brit lives in the red house.",[riddle(_518890),sanity])',[true(compound(_518952)),nondet]):-call(test_lex_info("The brit lives in the red house.",[riddle(_518890),sanity]),_518952).


test('?- test_lex_info("The swede keeps dogs as pets.",[riddle(_518888),sanity])',[true(compound(_518950)),nondet]):-call(test_lex_info("The swede keeps dogs as pets.",[riddle(_518888),sanity]),_518950).


test('?- test_lex_info("A dane drinks tea.",[riddle(_518886),sanity])',[true(compound(_518948)),nondet]):-call(test_lex_info("A dane drinks tea.",[riddle(_518886),sanity]),_518948).


test('?- test_lex_info("The green house is on the left of the white house.",[riddle(_518894),sanity])',[true(compound(_518956)),nondet]):-call(test_lex_info("The green house is on the left of the white house.",[riddle(_518894),sanity]),_518956).


test('?- test_lex_info("The green house\'s owner drinks coffee.",[riddle(_518890),sanity])',[true(compound(_518952)),nondet]):-call(test_lex_info("The green house's owner drinks coffee.",[riddle(_518890),sanity]),_518952).


test('?- test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_518892),sanity,regression])',[true(compound(_518960)),nondet]):-call(test_lex_info("The person who smokes Pall Mall rears birds.",[riddle(_518892),sanity,regression]),_518960).


test('?- test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_518892),sanity])',[true(compound(_518954)),nondet]):-call(test_lex_info("The owner of the yellow house smokes Dunhill.",[riddle(_518892),sanity]),_518954).


test('?- test_lex_info("The man living in the center house drinks milk.",[riddle(_518894),sanity])',[true(compound(_518956)),nondet]):-call(test_lex_info("The man living in the center house drinks milk.",[riddle(_518894),sanity]),_518956).


test('?- test_lex_info("The Norwegian lives in the first house .",[riddle(_518892),sanity])',[true(compound(_518954)),nondet]):-call(test_lex_info("The Norwegian lives in the first house .",[riddle(_518892),sanity]),_518954).


test('?- test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_518898),sanity])',[true(compound(_518960)),nondet]):-call(test_lex_info("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_518898),sanity]),_518960).


test('?- test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_518898),sanity])',[true(compound(_518960)),nondet]):-call(test_lex_info("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_518898),sanity]),_518960).


test('?- test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_518892),sanity])',[true(compound(_518954)),nondet]):-call(test_lex_info("The owner who smokes BlueMaster drinks beer.",[riddle(_518892),sanity]),_518954).


test('?- test_lex_info("The German smokes Prince.",[riddle(_518888),sanity])',[true(compound(_518950)),nondet]):-call(test_lex_info("The German smokes Prince.",[riddle(_518888),sanity]),_518950).


test('?- test_lex_info("The Norwegian lives next to the blue house.",[riddle(_518892),sanity])',[true(compound(_518954)),nondet]):-call(test_lex_info("The Norwegian lives next to the blue house.",[riddle(_518892),sanity]),_518954).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_518896),sanity])',[true(compound(_518958)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[riddle(_518896),sanity]),_518958).


test('?- test_lex_info("Who owns the fish?",[riddle(_518886),sanity])',[true(compound(_518948)),nondet]):-call(test_lex_info("Who owns the fish?",[riddle(_518886),sanity]),_518948).


test('?- test_lex_info("One woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("One woman paints.",[quants]),_518938).


test('?- test_lex_info("No woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("No woman paints.",[quants]),_518938).


test('?- test_lex_info("Some woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Some woman paints.",[quants]),_518938).


test('?- test_lex_info("Every woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Every woman paints.",[quants]),_518938).


test('?- test_lex_info("Each woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Each woman paints.",[quants]),_518938).


test('?- test_lex_info("Any woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Any woman paints.",[quants]),_518938).


test('?- test_lex_info("The woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("The woman paints.",[quants]),_518938).


test('?- test_lex_info("The not woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("The not woman paints.",[quants]),_518938).


test('?- test_lex_info("Not a woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not a woman paints.",[quants]),_518938).


test('?- test_lex_info("Not one woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not one woman paints.",[quants]),_518938).


test('?- test_lex_info("Not no woman paints.",[quants_neg_postcond])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not no woman paints.",[quants_neg_postcond]),_518938).


test('?- test_lex_info("Not some woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not some woman paints.",[quants]),_518938).


test('?- test_lex_info("Not every woman paints.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("Not every woman paints.",[quants]),_518940).


test('?- test_lex_info("Not each woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not each woman paints.",[quants]),_518938).


test('?- test_lex_info("Not any woman paints.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not any woman paints.",[quants]),_518938).


test('?- test_lex_info("The women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("The women paint.",[quants]),_518938).


test('?- test_lex_info("Women paint.",[quants])',[true(compound(_518936)),nondet]):-call(test_lex_info("Women paint.",[quants]),_518936).


test('?- test_lex_info("Some women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Some women paint.",[quants]),_518938).


test('?- test_lex_info("No women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("No women paint.",[quants]),_518938).


test('?- test_lex_info("All women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("All women paint.",[quants]),_518938).


test('?- test_lex_info("Any women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Any women paint.",[quants]),_518938).


test('?- test_lex_info("Not women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not women paint.",[quants]),_518938).


test('?- test_lex_info("Not no women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not no women paint.",[quants]),_518938).


test('?- test_lex_info("Not all women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not all women paint.",[quants]),_518938).


test('?- test_lex_info("Not any women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not any women paint.",[quants]),_518938).


test('?- test_lex_info("The three women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("The three women paint.",[quants]),_518938).


test('?- test_lex_info("Three women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Three women paint.",[quants]),_518938).


test('?- test_lex_info("Some three women paint.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("Some three women paint.",[quants]),_518940).


test('?- test_lex_info("No three women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("No three women paint.",[quants]),_518938).


test('?- test_lex_info("Every three women paint.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("Every three women paint.",[quants]),_518940).


test('?- test_lex_info("All three women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("All three women paint.",[quants]),_518938).


test('?- test_lex_info("Any three women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Any three women paint.",[quants]),_518938).


test('?- test_lex_info("Not three women paint.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not three women paint.",[quants]),_518938).


test('?- test_lex_info("Not some three women paint.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("Not some three women paint.",[quants]),_518940).


test('?- test_lex_info("Not no three women paint.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("Not no three women paint.",[quants]),_518940).


test('?- test_lex_info("Not all three women paint.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("Not all three women paint.",[quants]),_518940).


test('?- test_lex_info("Not every three women paint.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("Not every three women paint.",[quants]),_518940).


test('?- test_lex_info("Not any three women paint.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("Not any three women paint.",[quants]),_518940).


test('?- test_lex_info("Not three of the women paint.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("Not three of the women paint.",[quants]),_518940).


test('?- test_lex_info("Not some of the three women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("Not some of the three women paint.",[quants]),_518942).


test('?- test_lex_info("Not no three of the women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("Not no three of the women paint.",[quants]),_518942).


test('?- test_lex_info("Not all three of the women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("Not all three of the women paint.",[quants]),_518942).


test('?- test_lex_info("Not every three of the women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("Not every three of the women paint.",[quants]),_518942).


test('?- test_lex_info("Not any three of the women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("Not any three of the women paint.",[quants]),_518942).


test('?- test_lex_info("Not three of the four women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("Not three of the four women paint.",[quants]),_518942).


test('?- test_lex_info("Not none of three out of the four women paint.",[quants])',[true(compound(_518944)),nondet]):-call(test_lex_info("Not none of three out of the four women paint.",[quants]),_518944).


test('?- test_lex_info("Not all three of the four women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("Not all three of the four women paint.",[quants]),_518942).


test('?- test_lex_info("Not any three of the four women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("Not any three of the four women paint.",[quants]),_518942).


test('?- test_lex_info("Three of the four women paint.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("Three of the four women paint.",[quants]),_518940).


test('?- test_lex_info("Three out of the four women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("Three out of the four women paint.",[quants]),_518942).


test('?- test_lex_info("All three of the four women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("All three of the four women paint.",[quants]),_518942).


test('?- test_lex_info("Any three of the four women paint.",[quants])',[true(compound(_518942)),nondet]):-call(test_lex_info("Any three of the four women paint.",[quants]),_518942).


test('?- test_lex_info("I paint",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("I paint",[pronoun]),_518936).


test('?- test_lex_info("you paint",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("you paint",[pronoun]),_518936).


test('?- test_lex_info("We paint",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("We paint",[pronoun]),_518936).


test('?- test_lex_info("None paint",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("None paint",[pronoun]),_518936).


test('?- test_lex_info("They paint",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("They paint",[pronoun]),_518936).


test('?- test_lex_info("Some paint",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("Some paint",[pronoun]),_518936).


test('?- test_lex_info("It paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("It paints",[pronoun]),_518936).


test('?- test_lex_info("he paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("he paints",[pronoun]),_518936).


test('?- test_lex_info("She paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("She paints",[pronoun]),_518936).


test('?- test_lex_info("Someone paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("Someone paints",[pronoun]),_518936).


test('?- test_lex_info("Anybody paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("Anybody paints",[pronoun]),_518936).


test('?- test_lex_info("Anyone paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("Anyone paints",[pronoun]),_518936).


test('?- test_lex_info("Anything paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Anything paints",[pronoun]),_518938).


test('?- test_lex_info("Everybody paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Everybody paints",[pronoun]),_518938).


test('?- test_lex_info("Everyone paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Everyone paints",[pronoun]),_518938).


test('?- test_lex_info("Everything paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Everything paints",[pronoun]),_518938).


test('?- test_lex_info("Nobody paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("Nobody paints",[pronoun]),_518936).


test('?- test_lex_info("No one paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("No one paints",[pronoun]),_518936).


test('?- test_lex_info("Nothing paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("Nothing paints",[pronoun]),_518936).


test('?- test_lex_info("One paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("One paints",[pronoun]),_518936).


test('?- test_lex_info("Somebody paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Somebody paints",[pronoun]),_518938).


test('?- test_lex_info("Something paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Something paints",[pronoun]),_518938).


test('?- test_lex_info("Not anybody paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not anybody paints",[pronoun]),_518938).


test('?- test_lex_info("Not anyone paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not anyone paints",[pronoun]),_518938).


test('?- test_lex_info("Not anything paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not anything paints",[pronoun]),_518938).


test('?- test_lex_info("Not everybody paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not everybody paints",[pronoun]),_518938).


test('?- test_lex_info("Not everyone paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not everyone paints",[pronoun]),_518938).


test('?- test_lex_info("Not everything paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not everything paints",[pronoun]),_518938).


test('?- test_lex_info("Not nothing paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not nothing paints",[pronoun]),_518938).


test('?- test_lex_info("Not one paints",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("Not one paints",[pronoun]),_518936).


test('?- test_lex_info("Not somebody paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not somebody paints",[pronoun]),_518938).


test('?- test_lex_info("Not something paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("Not something paints",[pronoun]),_518938).


test('?- test_lex_info("She likes i",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("She likes i",[pronoun]),_518936).


test('?- test_lex_info("She likes me",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("She likes me",[pronoun]),_518936).


test('?- test_lex_info("She likes you",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("She likes you",[pronoun]),_518936).


test('?- test_lex_info("She likes it",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("She likes it",[pronoun]),_518936).


test('?- test_lex_info("She likes us",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("She likes us",[pronoun]),_518936).


test('?- test_lex_info("She likes them",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("She likes them",[pronoun]),_518936).


test('?- test_lex_info("She likes no one",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("She likes no one",[pronoun]),_518938).


test('?- test_lex_info("She likes none",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("She likes none",[pronoun]),_518936).


test('?- test_lex_info("She likes him",[pronoun])',[true(compound(_518936)),nondet]):-call(test_lex_info("She likes him",[pronoun]),_518936).


test('?- test_lex_info("She likes herself",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("She likes herself",[pronoun]),_518938).


test('?- test_lex_info("She likes himself",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("She likes himself",[pronoun]),_518938).


test('?- test_lex_info("It is us that paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("It is us that paints",[pronoun]),_518938).


test('?- test_lex_info("It is them that paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("It is them that paints",[pronoun]),_518938).


test('?- test_lex_info("It is he that paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("It is he that paints",[pronoun]),_518938).


test('?- test_lex_info("It is she that paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("It is she that paints",[pronoun]),_518938).


test('?- test_lex_info("It is her that paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("It is her that paints",[pronoun]),_518938).


test('?- test_lex_info("It is him that paints",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("It is him that paints",[pronoun]),_518938).


test('?- test_lex_info("We are us that paint",[pronoun])',[true(compound(_518938)),nondet]):-call(test_lex_info("We are us that paint",[pronoun]),_518938).


test('?- test_lex_info("We are all of us that paint",[pronoun])',[true(compound(_518940)),nondet]):-call(test_lex_info("We are all of us that paint",[pronoun]),_518940).


test('?- test_lex_info("It is everybody that paints",[pronoun])',[true(compound(_518940)),nondet]):-call(test_lex_info("It is everybody that paints",[pronoun]),_518940).


test('?- test_lex_info("Every man that paints likes monet.",[bratko])',[true(compound(_518942)),nondet]):-call(test_lex_info("Every man that paints likes monet.",[bratko]),_518942).


test('?- test_lex_info("A woman that admires John paints.",[bratko])',[true(compound(_518942)),nondet]):-call(test_lex_info("A woman that admires John paints.",[bratko]),_518942).


test('?- test_lex_info("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_518948)),nondet]):-call(test_lex_info("Every woman that likes a man that admires monet paints.",[bratko]),_518948).


test('?- test_lex_info("John likes Annie.",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("John likes Annie.",[bratko]),_518938).


test('?- test_lex_info("Annie likes a man that admires monet.",[bratko])',[true(compound(_518942)),nondet]):-call(test_lex_info("Annie likes a man that admires monet.",[bratko]),_518942).


test('?- test_lex_info("Bertrand Russell wrote principia.",[bratko])',[true(compound(_518942)),nondet]):-call(test_lex_info("Bertrand Russell wrote principia.",[bratko]),_518942).


test('?- test_lex_info("An author wrote principia.",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("An author wrote principia.",[bratko]),_518940).


test('?- test_lex_info("Iraq is a country.",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("Iraq is a country.",[bratko]),_518938).


test('?- test_lex_info("A happy author wrote principia.",[bratko])',[true(compound(_518942)),nondet]):-call(test_lex_info("A happy author wrote principia.",[bratko]),_518942).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_518938).


test('?- test_lex_info("Bertrand is an author.",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("Bertrand is an author.",[bratko]),_518938).


test('?- test_lex_info("Is Bertrand an author?",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("Is Bertrand an author?",[bratko]),_518938).


test('?- test_lex_info("Every author is a programmer.",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("Every author is a programmer.",[bratko]),_518940).


test('?- test_lex_info("Is Bertrand an programmer?",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("Is Bertrand an programmer?",[bratko]),_518940).


test('?- test_lex_info("What is a author?",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("What is a author?",[bratko]),_518938).


test('?- test_lex_info("What did Bertrand write?",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("What did Bertrand write?",[bratko]),_518940).


test('?- test_lex_info("What is a book?",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("What is a book?",[bratko]),_518938).


test('?- test_lex_info("Principia is a book.",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("Principia is a book.",[bratko]),_518938).


test('?- test_lex_info("Bertrand is Bertrand.",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("Bertrand is Bertrand.",[bratko]),_518938).


test('?- test_lex_info("Shrdlu halts.",[bratko])',[true(compound(_518936)),nondet]):-call(test_lex_info("Shrdlu halts.",[bratko]),_518936).


test('?- test_lex_info("Every student wrote a program.",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("Every student wrote a program.",[bratko]),_518940).


test('?- test_lex_info("Terry writes a program.",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("Terry writes a program.",[bratko]),_518940).


test('?- test_lex_info("Terry writes a program that halts.",[bratko])',[true(compound(_518942)),nondet]):-call(test_lex_info("Terry writes a program that halts.",[bratko]),_518942).


test('?- test_lex_info("An author of every book wrote a program.",[bratko])',[true(compound(_518944)),nondet]):-call(test_lex_info("An author of every book wrote a program.",[bratko]),_518944).


test('?- test_lex_info("A man hapilly maried paints.",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("A man hapilly maried paints.",[bratko]),_518940).


test('?- test_lex_info("A hapilly maried man paints.",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("A hapilly maried man paints.",[bratko]),_518940).


test('?- test_lex_info("A man who knows paints.",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("A man who knows paints.",[bratko]),_518940).


test('?- test_lex_info("A man gives something.",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("A man gives something.",[bratko]),_518938).


test('?- test_lex_info("A man gives his word.",[bratko])',[true(compound(_518938)),nondet]):-call(test_lex_info("A man gives his word.",[bratko]),_518938).


test('?- test_lex_info("A man of his word paints.",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("A man of his word paints.",[bratko]),_518940).


test('?- test_lex_info("A man paints.",[bratko])',[true(compound(_518936)),nondet]):-call(test_lex_info("A man paints.",[bratko]),_518936).


test('?- test_lex_info("A man that paints paints.",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("A man that paints paints.",[bratko]),_518940).


test('?- test_lex_info("A man walks.",[bratko])',[true(compound(_518936)),nondet]):-call(test_lex_info("A man walks.",[bratko]),_518936).


test('?- test_lex_info("A man that walks paints.",[bratko])',[true(compound(_518940)),nondet]):-call(test_lex_info("A man that walks paints.",[bratko]),_518940).


test('?- test_lex_info("It halts.",[bratko])',[true(compound(_518936)),nondet]):-call(test_lex_info("It halts.",[bratko]),_518936).


test('?- test_lex_info("A man of his word that walks paints.",[bratko])',[true(compound(_518942)),nondet]):-call(test_lex_info("A man of his word that walks paints.",[bratko]),_518942).


test('?- test_lex_info("The cost of what the product is changes.",[bratko])',[true(compound(_518944)),nondet]):-call(test_lex_info("The cost of what the product is changes.",[bratko]),_518944).


test('?- test_lex_info("We need a virtual machine server.",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("We need a virtual machine server.",[aindy]),_518942).


test('?- test_lex_info("The virtual machine server should have several VMs.",[aindy])',[true(compound(_518946)),nondet]):-call(test_lex_info("The virtual machine server should have several VMs.",[aindy]),_518946).


test('?- test_lex_info("One VM should be the POSI VM.",[aindy])',[true(compound(_518940)),nondet]):-call(test_lex_info("One VM should be the POSI VM.",[aindy]),_518940).


test('?- test_lex_info("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("One VM should be the FRDCSA.org VM.",[aindy]),_518942).


test('?- test_lex_info("One VM should be the mail server.",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("One VM should be the mail server.",[aindy]),_518942).


test('?- test_lex_info("One computer should be the backup server.",[aindy])',[true(compound(_518944)),nondet]):-call(test_lex_info("One computer should be the backup server.",[aindy]),_518944).


test('?- test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_518960)),nondet]):-call(test_lex_info("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_518960).


test('?- test_lex_info("I need a fast computer for work.",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("I need a fast computer for work.",[aindy]),_518942).


test('?- test_lex_info("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_518952)),nondet]):-call(test_lex_info("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_518952).


test('?- test_lex_info("I need a dedicated computer for network security research.",[aindy])',[true(compound(_518948)),nondet]):-call(test_lex_info("I need a dedicated computer for network security research.",[aindy]),_518948).


test('?- test_lex_info("I need a machine to run Tails on.",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("I need a machine to run Tails on.",[aindy]),_518942).


test('?- test_lex_info("I need a machine off the network for airgap security.",[aindy])',[true(compound(_518946)),nondet]):-call(test_lex_info("I need a machine off the network for airgap security.",[aindy]),_518946).


test('?- test_lex_info("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_518952)),nondet]):-call(test_lex_info("One VM should be the game server for running game development projects.",[aindy]),_518952).


test('?- test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_518946)),nondet]):-call(test_lex_info("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_518946).


test('?- test_lex_info("I could read about how to build a private watson.",[aindy])',[true(compound(_518946)),nondet]):-call(test_lex_info("I could read about how to build a private watson.",[aindy]),_518946).


test('?- test_lex_info("Need backups.",[aindy])',[true(compound(_518936)),nondet]):-call(test_lex_info("Need backups.",[aindy]),_518936).


test('?- test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_518950)),nondet]):-call(test_lex_info("Practice setting up backups of a machine to a different machine.",[aindy]),_518950).


test('?- test_lex_info("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_518948)),nondet]):-call(test_lex_info("Set up schedules for updating the software on all machines.",[aindy]),_518948).


test('?- test_lex_info("Read books on server room layout.",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("Read books on server room layout.",[aindy]),_518942).


test('?- test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_518950)),nondet]):-call(test_lex_info("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_518950).


test('?- test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_518952)),nondet]):-call(test_lex_info("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_518952).


test('?- test_lex_info("I want a gaming computer.  Do I?",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("I want a gaming computer.  Do I?",[aindy]),_518942).


test('?- test_lex_info("I want a windows 7 computer for work.",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("I want a windows 7 computer for work.",[aindy]),_518942).


test('?- test_lex_info("I want a fast linux computer for work.",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("I want a fast linux computer for work.",[aindy]),_518942).


test('?- test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_518962)),nondet]):-call(test_lex_info("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_518962).


test('?- test_lex_info("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_518948)),nondet]):-call(test_lex_info("I could install a fresh operating system on justin for work.",[aindy]),_518948).


test('?- test_lex_info("I probably want a separate git computer.",[aindy])',[true(compound(_518944)),nondet]):-call(test_lex_info("I probably want a separate git computer.",[aindy]),_518944).


test('?- test_lex_info("I need to start buying servers.",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("I need to start buying servers.",[aindy]),_518942).


test('?- test_lex_info("I want a rackmount case for servers.",[aindy])',[true(compound(_518942)),nondet]):-call(test_lex_info("I want a rackmount case for servers.",[aindy]),_518942).


test('?- test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_518948)),nondet]):-call(test_lex_info("Each african country is bordered by 2 oceans.",[chat80(tell)]),_518948).


test('?- test_lex_info("2 oceans border each african country.",[chat80(tell)])',[true(compound(_518946)),nondet]):-call(test_lex_info("2 oceans border each african country.",[chat80(tell)]),_518946).


test('?- test_lex_info("There are 10 large cars.",[quants])',[true(compound(_518940)),nondet]):-call(test_lex_info("There are 10 large cars.",[quants]),_518940).


test('?- test_lex_info("There are 10 oceans.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("There are 10 oceans.",[quants]),_518938).


test('?- test_lex_info("There are 10 women.",[quants])',[true(compound(_518938)),nondet]):-call(test_lex_info("There are 10 women.",[quants]),_518938).


test('?- test_lex_info("An ocean borders an African country.",[chat80(tell)])',[true(compound(_518946)),nondet]):-call(test_lex_info("An ocean borders an African country.",[chat80(tell)]),_518946).


test('?- test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_518954)),nondet]):-call(test_lex_info("What is the ocean that borders african countries and that borders asian countries?",[tell]),_518954).


test('?- test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_518956)),nondet]):-call(test_lex_info("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_518956).


test('?- test_lex_info("Bertrand wrote a book.",[bratko(book)])',[true(compound(_518942)),nondet]):-call(test_lex_info("Bertrand wrote a book.",[bratko(book)]),_518942).


test('?- test_lex_info("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_518944)),nondet]):-call(test_lex_info("Bertrand wrote nothing.",[bratko(book)]),_518944).


test('?- test_lex_info("Bertrand wrote.",[bratko(book)])',[true(compound(_518942)),nondet]):-call(test_lex_info("Bertrand wrote.",[bratko(book)]),_518942).


test('?- test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_518946)),nondet]):-call(test_lex_info("Bertrand wrote a book about Gottlob.",[bratko(book)]),_518946).


test('?- test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_518944)),nondet]):-call(test_lex_info("Bertrand wrote about Gottlob.",[bratko(book)]),_518944).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_518946)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_518946).


test('?- test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_518948)),nondet]):-call(test_lex_info("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_518948).


test('?- test_lex_info("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_518946)),nondet]):-call(test_lex_info("What did alfred write to Bertrand?",[bratko(book)]),_518946).


test('?- test_lex_info("Alfred wrote a letter.",[bratko(book)])',[true(compound(_518942)),nondet]):-call(test_lex_info("Alfred wrote a letter.",[bratko(book)]),_518942).


test('?- test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_518946)),nondet]):-call(test_lex_info("Alfred wrote a letter to Bertrand.",[bratko(book)]),_518946).


test('?- test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_518946)),nondet]):-call(test_lex_info("Alfred wrote something to Bertrand.",[bratko(book)]),_518946).


test('?- test_lex_info("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_518944)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand.",[bratko(book)]),_518944).


test('?- test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_518946)),nondet]):-call(test_lex_info("Alfred wrote to Bertrand a letter.",[bratko(book)]),_518946).


test('?- test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_518946)),nondet]):-call(test_lex_info("Alfred wrote Bertrand a letter.",[bratko(book)]),_518946).


test('?- test_lex_info("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_518946)),nondet]):-call(test_lex_info("Who did alfred write a letter to?",[bratko(book)]),_518946).


test('?- test_lex_info("Alfred gave it.",[bratko(book)])',[true(compound(_518942)),nondet]):-call(test_lex_info("Alfred gave it.",[bratko(book)]),_518942).


test('?- test_lex_info("Alfred gave a book.",[bratko(book)])',[true(compound(_518942)),nondet]):-call(test_lex_info("Alfred gave a book.",[bratko(book)]),_518942).


test('?- test_lex_info("a pride of lions paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a pride of lions paint",[of]),_518938).


test('?- test_lex_info("a flock of birds paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a flock of birds paint",[of]),_518938).


test('?- test_lex_info("a litter of pups paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a litter of pups paint",[of]),_518938).


test('?- test_lex_info("a prickle of porcupines paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a prickle of porcupines paint",[of]),_518940).


test('?- test_lex_info("a litter of cubs paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a litter of cubs paint",[of]),_518938).


test('?- test_lex_info("a pack of dogs paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a pack of dogs paint",[of]),_518938).


test('?- test_lex_info("a colony of beavers paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a colony of beavers paint",[of]),_518940).


test('?- test_lex_info("a gaggle of geese paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a gaggle of geese paint",[of]),_518940).


test('?- test_lex_info("a family of otters paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a family of otters paint",[of]),_518940).


test('?- test_lex_info("a huddle of walruses paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a huddle of walruses paint",[of]),_518940).


test('?- test_lex_info("a herd of deer paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a herd of deer paint",[of]),_518938).


test('?- test_lex_info("a culture of bacteria paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a culture of bacteria paint",[of]),_518940).


test('?- test_lex_info("a swarm of bees paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a swarm of bees paint",[of]),_518938).


test('?- test_lex_info("a bed of clams paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a bed of clams paint",[of]),_518938).


test('?- test_lex_info("a school of cod paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a school of cod paint",[of]),_518938).


test('?- test_lex_info("a herd of dinosaurs paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a herd of dinosaurs paint",[of]),_518940).


test('?- test_lex_info("a mess of iguanas paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a mess of iguanas paint",[of]),_518940).


test('?- test_lex_info("a mob of wombats paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a mob of wombats paint",[of]),_518938).


test('?- test_lex_info("a pod of pelicans paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a pod of pelicans paint",[of]),_518940).


test('?- test_lex_info("a troop of boy scouts paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a troop of boy scouts paint",[of]),_518940).


test('?- test_lex_info("a team of athletes paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a team of athletes paint",[of]),_518940).


test('?- test_lex_info("a panel of experts paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a panel of experts paint",[of]),_518940).


test('?- test_lex_info("a crew of sailors paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a crew of sailors paint",[of]),_518940).


test('?- test_lex_info("a band of robbers paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a band of robbers paint",[of]),_518940).


test('?- test_lex_info("a troupe of performers paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a troupe of performers paint",[of]),_518940).


test('?- test_lex_info("a crowd of onlookers paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a crowd of onlookers paint",[of]),_518940).


test('?- test_lex_info("a curse of painters paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("a curse of painters paint",[of]),_518940).


test('?- test_lex_info("a fleet of cars paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a fleet of cars paint",[of]),_518938).


test('?- test_lex_info("a pair of shoes paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a pair of shoes paint",[of]),_518938).


test('?- test_lex_info("a fleet of ships paint",[of])',[true(compound(_518938)),nondet]):-call(test_lex_info("a fleet of ships paint",[of]),_518938).


test('?- test_lex_info("an anthology of stories paint",[of])',[true(compound(_518940)),nondet]):-call(test_lex_info("an anthology of stories paint",[of]),_518940).


test('?- test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_103742)),nondet]):-call(test_lex_info("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_103742).


test('?- test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_103712)),nondet]):-call(test_lex_info("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_103712).


test('?- test_lex_info("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_103850)),nondet]):-call(test_lex_info("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_103850).


test('?- test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_103694)),nondet]):-call(test_lex_info("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_103694).


test('?- test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_103742)),nondet]):-call(test_lex_info("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_103742).


test('?- test_lex_info("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_103838)),nondet]):-call(test_lex_info("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_103838).


test('?- test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_103796)),nondet]):-call(test_lex_info("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_103796).


test('?- test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_103988)),nondet]):-call(test_lex_info("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_103988).


test('?- test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_103760)),nondet]):-call(test_lex_info("He stowed super-human strength, and is extremely tough",[descriptionTest]),_103760).


test('?- test_lex_info("Logged on player character",[descriptionTest])',[true(compound(_103568)),nondet]):-call(test_lex_info("Logged on player character",[descriptionTest]),_103568).


test('?- test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_103826)),nondet]):-call(test_lex_info("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_103826).


test('?- test_lex_info("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_103772)),nondet]):-call(test_lex_info("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_103772).


test('?- test_lex_info("Wesley is her son",[descriptionTest])',[true(compound(_103514)),nondet]):-call(test_lex_info("Wesley is her son",[descriptionTest]),_103514).


test('?- test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_104162)),nondet]):-call(test_lex_info("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_104162).


test('?- test_lex_info("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_103592)),nondet]):-call(test_lex_info("Counselor Deanna Troi is here",[descriptionTest]),_103592).


test('?- test_lex_info("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_103688)),nondet]):-call(test_lex_info("Counselor Troi is the ship's main counselor",[descriptionTest]),_103688).


test('?- test_lex_info("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_103844)),nondet]):-call(test_lex_info("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_103844).


test('?- test_lex_info("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_103718)),nondet]):-call(test_lex_info("Commander William Riker is here, staring at you",[descriptionTest]),_103718).


test('?- test_lex_info("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_103724)),nondet]):-call(test_lex_info("Commander Riker is the Enterprise's first officer",[descriptionTest]),_103724).


test('?- test_lex_info("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_103694)),nondet]):-call(test_lex_info("He's in charge of keeping the crew in line",[descriptionTest]),_103694).


test('?- test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_103760)),nondet]):-call(test_lex_info("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_103760).


test('?- test_lex_info("Captain Picard is a very important man",[descriptionTest])',[true(compound(_103658)),nondet]):-call(test_lex_info("Captain Picard is a very important man",[descriptionTest]),_103658).


test('?- test_lex_info("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_103760)),nondet]):-call(test_lex_info("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_103760).


test('?- test_lex_info("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_103604)),nondet]):-call(test_lex_info("He's very smart, and very wise",[descriptionTest]),_103604).


test('?- test_lex_info("Don\'t mess with him!",[descriptionTest])',[true(compound(_103532)),nondet]):-call(test_lex_info("Don't mess with him!",[descriptionTest]),_103532).


test('?- test_lex_info("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_103610)),nondet]):-call(test_lex_info("Guinan is here, tending the bar",[descriptionTest]),_103610).


test('?- test_lex_info("Guinan is a strange being",[descriptionTest])',[true(compound(_103568)),nondet]):-call(test_lex_info("Guinan is a strange being",[descriptionTest]),_103568).


test('?- test_lex_info("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_104276)),nondet]):-call(test_lex_info("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_104276).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_103778)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_103778).


test('?- test_lex_info("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_103778)),nondet]):-call(test_lex_info("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_103778).


test('?- test_lex_info("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_104078)),nondet]):-call(test_lex_info("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_104078).


test('?- test_lex_info("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_103772)),nondet]):-call(test_lex_info("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_103772).


test('?- test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_103796)),nondet]):-call(test_lex_info("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_103796).


test('?- test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_104066)),nondet]):-call(test_lex_info("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_104066).


test('?- test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_103988)),nondet]):-call(test_lex_info("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_103988).


test('?- test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_103778)),nondet]):-call(test_lex_info("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_103778).


test('?- test_lex_info("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_103658)),nondet]):-call(test_lex_info("Livingston is Captain Picard's pet fish",[descriptionTest]),_103658).


test('?- test_lex_info("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_103910)),nondet]):-call(test_lex_info("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_103910).


test('?- test_lex_info("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_103760)),nondet]):-call(test_lex_info("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_103760).


test('?- test_lex_info("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_103628)),nondet]):-call(test_lex_info("Spot is Data's orange coloured cat",[descriptionTest]),_103628).


test('?- test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_104150)),nondet]):-call(test_lex_info("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_104150).


test('?- test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_103772)),nondet]):-call(test_lex_info("A nervous looking ensign is standing here, watching you",[descriptionTest]),_103772).


test('?- test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_103754)),nondet]):-call(test_lex_info("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_103754).


test('?- test_lex_info("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_104096)),nondet]):-call(test_lex_info("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_104096).


test('?- test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_103742)),nondet]):-call(test_lex_info("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_103742).


test('?- test_lex_info("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_103610)),nondet]):-call(test_lex_info("Alexander Rozhenko is Worf's son",[descriptionTest]),_103610).


test('?- test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_103892)),nondet]):-call(test_lex_info("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_103892).


test('?- test_lex_info("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_103808)),nondet]):-call(test_lex_info("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_103808).


test('?- test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_103754)),nondet]):-call(test_lex_info("A standard issue Starfleet phaser has been left here",[descriptionTest]),_103754).


test('?- test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_104156)),nondet]):-call(test_lex_info("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_104156).


test('?- test_lex_info("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_103634)),nondet]):-call(test_lex_info("A large phaser rifle is lying here",[descriptionTest]),_103634).


test('?- test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_104228)),nondet]):-call(test_lex_info("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_104228).


test('?- test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_103832)),nondet]):-call(test_lex_info("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_103832).


test('?- test_lex_info("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104180)),nondet]):-call(test_lex_info("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104180).


test('?- test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_103832)),nondet]):-call(test_lex_info("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_103832).


test('?- test_lex_info("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104204)),nondet]):-call(test_lex_info("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104204).


test('?- test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_103808)),nondet]):-call(test_lex_info("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_103808).


test('?- test_lex_info("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104180)),nondet]):-call(test_lex_info("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104180).


test('?- test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_103730)),nondet]):-call(test_lex_info("A pair of Starfleet black boots are sitting here",[descriptionTest]),_103730).


test('?- test_lex_info("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_104270)),nondet]):-call(test_lex_info("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_104270).


test('?- test_lex_info("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_103700)),nondet]):-call(test_lex_info("A Starfleet communication badge is lying here",[descriptionTest]),_103700).


test('?- test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_104738)),nondet]):-call(test_lex_info("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_104738).


test('?- test_lex_info("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_103694)),nondet]):-call(test_lex_info("Worf's silver chain sash has been left here",[descriptionTest]),_103694).


test('?- test_lex_info("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_104306)),nondet]):-call(test_lex_info("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_104306).


test('?- test_lex_info("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_103586)),nondet]):-call(test_lex_info("Geordi's VISOR is lying here",[descriptionTest]),_103586).


test('?- test_lex_info("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_104978)),nondet]):-call(test_lex_info("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_104978).


test('?- test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_103754)),nondet]):-call(test_lex_info("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_103754).


test('?- test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_104540)),nondet]):-call(test_lex_info("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_104540).


test('?- test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_103688)),nondet]):-call(test_lex_info("A shard of dilithium crystal is lying here",[descriptionTest]),_103688).


test('?- test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_104342)),nondet]):-call(test_lex_info("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_104342).


test('?- test_lex_info("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_103700)),nondet]):-call(test_lex_info("Captain Picard's wooden flute is sitting here",[descriptionTest]),_103700).


test('?- test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_104312)),nondet]):-call(test_lex_info("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_104312).


test('?- test_lex_info("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_103712)),nondet]):-call(test_lex_info("Commander Riker's trombone has been placed here",[descriptionTest]),_103712).


test('?- test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_104144)),nondet]):-call(test_lex_info("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_104144).


test('?- test_lex_info("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_103640)),nondet]):-call(test_lex_info("A small cup of tea is sitting here",[descriptionTest]),_103640).


test('?- test_lex_info("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_103658)),nondet]):-call(test_lex_info("A bottle of synthehol is standing here",[descriptionTest]),_103658).


test('?- test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_103670)),nondet]):-call(test_lex_info("A bottle of Ferengi ale is sitting here",[descriptionTest]),_103670).


test('?- test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_103694)),nondet]):-call(test_lex_info("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_103694).


test('?- test_lex_info("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_103706)),nondet]):-call(test_lex_info("A small glass of prune juice is sitting here",[descriptionTest]),_103706).


test('?- test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_103676)),nondet]):-call(test_lex_info("A bottle of Vulcan beer is standing here",[descriptionTest]),_103676).


test('?- test_lex_info("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_103748)),nondet]):-call(test_lex_info("You find yourself in the middle of main engineering",[descriptionTest]),_103748).


test('?- test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_103868)),nondet]):-call(test_lex_info("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_103868).


test('?- test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_104168)),nondet]):-call(test_lex_info("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_104168).


test('?- test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_103976)),nondet]):-call(test_lex_info("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_103976).


test('?- test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_103904)),nondet]):-call(test_lex_info("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_103904).


test('?- test_lex_info("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_104084)),nondet]):-call(test_lex_info("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_104084).


test('?- test_lex_info("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_103676)),nondet]):-call(test_lex_info("You're in the middle of Geordi's quarters",[descriptionTest]),_103676).


test('?- test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_103874)),nondet]):-call(test_lex_info("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_103874).


test('?- test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_104198)),nondet]):-call(test_lex_info("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_104198).


test('?- test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_103808)),nondet]):-call(test_lex_info("A neatly made bed has been placed against the northern wall",[descriptionTest]),_103808).


test('?- test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_103778)),nondet]):-call(test_lex_info("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_103778).


test('?- test_lex_info("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_103664)),nondet]):-call(test_lex_info("You're in the middle of Data's quarters",[descriptionTest]),_103664).


test('?- test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_104726)),nondet]):-call(test_lex_info("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_104726).


test('?- test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_103940)),nondet]):-call(test_lex_info("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_103940).


test('?- test_lex_info("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_103964)),nondet]):-call(test_lex_info("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_103964).


test('?- test_lex_info("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_103592)),nondet]):-call(test_lex_info("You're in the dimly lit Brig",[descriptionTest]),_103592).


test('?- test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_103982)),nondet]):-call(test_lex_info("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_103982).


test('?- test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_104060)),nondet]):-call(test_lex_info("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_104060).


test('?- test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_104354)),nondet]):-call(test_lex_info("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_104354).


test('?- test_lex_info(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_110582)),nondet]):-call(test_lex_info('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_110582).


test('?- test_lex_info("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_104066)),nondet]):-call(test_lex_info("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_104066).


test('?- test_lex_info("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_103670)),nondet]):-call(test_lex_info("You're in the Enterprise transporter room",[descriptionTest]),_103670).


test('?- test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_104156)),nondet]):-call(test_lex_info("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_104156).


test('?- test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_104126)),nondet]):-call(test_lex_info("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_104126).


test('?- test_lex_info("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_103664)),nondet]):-call(test_lex_info("You find yourself in a transporter beam",[descriptionTest]),_103664).


test('?- test_lex_info("All you can see is blue flashing light",[descriptionTest])',[true(compound(_103664)),nondet]):-call(test_lex_info("All you can see is blue flashing light",[descriptionTest]),_103664).


test('?- test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_103820)),nondet]):-call(test_lex_info("It feels as though your body is racing around at high speeds",[descriptionTest]),_103820).


test('?- test_lex_info("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_103940)),nondet]):-call(test_lex_info("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_103940).


test('?- test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_103868)),nondet]):-call(test_lex_info("You step through the doors and find yourself in a large school room",[descriptionTest]),_103868).


test('?- test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_104246)),nondet]):-call(test_lex_info("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_104246).


test('?- test_lex_info("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_104000)),nondet]):-call(test_lex_info("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_104000).


test('?- test_lex_info("You\'re in the turbolift",[descriptionTest])',[true(compound(_103550)),nondet]):-call(test_lex_info("You're in the turbolift",[descriptionTest]),_103550).


test('?- test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_103928)),nondet]):-call(test_lex_info("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_103928).


test('?- test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_103820)),nondet]):-call(test_lex_info("Several vertical rows of lights make this place very well lit",[descriptionTest]),_103820).


test('?- test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_103808)),nondet]):-call(test_lex_info("From here, you can access the other decks on the Enterprise",[descriptionTest]),_103808).


test('?- test_lex_info("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_103562)),nondet]):-call(test_lex_info("You're now on Holodeck 2",[descriptionTest]),_103562).


test('?- test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_104246)),nondet]):-call(test_lex_info("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_104246).


test('?- test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_103994)),nondet]):-call(test_lex_info("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_103994).


test('?- test_lex_info("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_103688)),nondet]):-call(test_lex_info("Right now, this holodeck is not functioning",[descriptionTest]),_103688).


test('?- test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_103796)),nondet]):-call(test_lex_info("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_103796).


test('?- test_lex_info("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_103718)),nondet]):-call(test_lex_info("You're in the main cargo bay of the Enterprise",[descriptionTest]),_103718).


test('?- test_lex_info("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_103928)),nondet]):-call(test_lex_info("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_103928).


test('?- test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_104246)),nondet]):-call(test_lex_info("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_104246).


test('?- test_lex_info("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_103622)),nondet]):-call(test_lex_info("You've arrived in Riker's quarters",[descriptionTest]),_103622).


test('?- test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_104198)),nondet]):-call(test_lex_info("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_104198).


test('?- test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_104132)),nondet]):-call(test_lex_info("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_104132).


test('?- test_lex_info("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_103736)),nondet]):-call(test_lex_info("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_103736).


test('?- test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_104372)),nondet]):-call(test_lex_info("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_104372).


test('?- test_lex_info("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_104168)),nondet]):-call(test_lex_info("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_104168).


test('?- test_lex_info("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_103640)),nondet]):-call(test_lex_info("You emerge into a dark narrow alley",[descriptionTest]),_103640).


test('?- test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_103784)),nondet]):-call(test_lex_info("Tall dark brick buildings block your way north and south",[descriptionTest]),_103784).


test('?- test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_104048)),nondet]):-call(test_lex_info("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_104048).


test('?- test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_104084)),nondet]):-call(test_lex_info("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_104084).


test('?- test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_103820)),nondet]):-call(test_lex_info("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_103820).


test('?- test_lex_info("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_103724)),nondet]):-call(test_lex_info("The archway leading out of the holodeck is west",[descriptionTest]),_103724).


test('?- test_lex_info("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_103628)),nondet]):-call(test_lex_info("You're in Doctor Crusher's quarters",[descriptionTest]),_103628).


test('?- test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_104024)),nondet]):-call(test_lex_info("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_104024).


test('?- test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_104114)),nondet]):-call(test_lex_info("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_104114).


test('?- test_lex_info("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_103856)),nondet]):-call(test_lex_info("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_103856).


test('?- test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_104480)),nondet]):-call(test_lex_info("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_104480).


test('?- test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_103952)),nondet]):-call(test_lex_info("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_103952).


test('?- test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_104348)),nondet]):-call(test_lex_info("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_104348).


test('?- test_lex_info("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_103820)),nondet]):-call(test_lex_info("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_103820).


test('?- test_lex_info("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_103748)),nondet]):-call(test_lex_info("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_103748).


test('?- test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_104642)),nondet]):-call(test_lex_info("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_104642).


test('?- test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_103820)),nondet]):-call(test_lex_info("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_103820).


test('?- test_lex_info("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_103730)),nondet]):-call(test_lex_info("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_103730).


test('?- test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_103922)),nondet]):-call(test_lex_info("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_103922).


test('?- test_lex_info("A large grey door leads into space",[descriptionTest])',[true(compound(_103634)),nondet]):-call(test_lex_info("A large grey door leads into space",[descriptionTest]),_103634).


test('?- test_lex_info("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_103820)),nondet]):-call(test_lex_info("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_103820).


test('?- test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_103892)),nondet]):-call(test_lex_info("You can see stars in every direction, which provide the only light here",[descriptionTest]),_103892).


test('?- test_lex_info("You feel very cold",[descriptionTest])',[true(compound(_103520)),nondet]):-call(test_lex_info("You feel very cold",[descriptionTest]),_103520).


test('?- test_lex_info("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_103790)),nondet]):-call(test_lex_info("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_103790).


test('?- test_lex_info("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_103676)),nondet]):-call(test_lex_info("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_103676).


test('?- test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_104288)),nondet]):-call(test_lex_info("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_104288).


test('?- test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_104012)),nondet]):-call(test_lex_info("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_104012).


test('?- test_lex_info("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_103562)),nondet]):-call(test_lex_info("You're in Worf's quarters",[descriptionTest]),_103562).


test('?- test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_104006)),nondet]):-call(test_lex_info("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_104006).


test('?- test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_104420)),nondet]):-call(test_lex_info("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_104420).


test('?- test_lex_info("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_103628)),nondet]):-call(test_lex_info("You emerge into the Enterprise gym",[descriptionTest]),_103628).


test('?- test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_103730)),nondet]):-call(test_lex_info("The room is quite large, with a soft grey floor",[descriptionTest]),_103730).


test('?- test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_104138)),nondet]):-call(test_lex_info("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_104138).


test('?- test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_104102)),nondet]):-call(test_lex_info("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_104102).


test('?- test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_103790)),nondet]):-call(test_lex_info("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_103790).


test('?- test_lex_info("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_103856)),nondet]):-call(test_lex_info("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_103856).


test('?- test_lex_info("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_103946)),nondet]):-call(test_lex_info("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_103946).


test('?- test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_104240)),nondet]):-call(test_lex_info("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_104240).


test('?- test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_104258)),nondet]):-call(test_lex_info("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_104258).


test('?- test_lex_info("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_103712)),nondet]):-call(test_lex_info("Two large windows offer a great view of space",[descriptionTest]),_103712).


test('?- test_lex_info("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_103964)),nondet]):-call(test_lex_info("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_103964).


test('?- test_lex_info("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_103640)),nondet]):-call(test_lex_info("You're in the Enterprise science lab",[descriptionTest]),_103640).


test('?- test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_104030)),nondet]):-call(test_lex_info("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_104030).


test('?- test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_104528)),nondet]):-call(test_lex_info("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_104528).


test('?- test_lex_info("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_103784)),nondet]):-call(test_lex_info("A complex looking computer console is facing this machine",[descriptionTest]),_103784).


test('?- test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_103940)),nondet]):-call(test_lex_info("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_103940).


test('?- test_lex_info("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_103700)),nondet]):-call(test_lex_info("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_103700).


test('?- test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_103934)),nondet]):-call(test_lex_info("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_103934).


test('?- test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_104306)),nondet]):-call(test_lex_info("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_104306).


test('?- test_lex_info("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_104108)),nondet]):-call(test_lex_info("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_104108).


test('?- test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_104504)),nondet]):-call(test_lex_info("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_104504).


test('?- test_lex_info("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_103706)),nondet]):-call(test_lex_info("You're standing in Captain Picard's ready room",[descriptionTest]),_103706).


test('?- test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_104144)),nondet]):-call(test_lex_info("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_104144).


test('?- test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_104048)),nondet]):-call(test_lex_info("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_104048).


test('?- test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_104246)),nondet]):-call(test_lex_info("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_104246).


test('?- test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_103826)),nondet]):-call(test_lex_info("This is where the Captain makes all of his important decisions",[descriptionTest]),_103826).


test('?- test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_103934)),nondet]):-call(test_lex_info("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_103934).


test('?- test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_104246)),nondet]):-call(test_lex_info("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_104246).


test('?- test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_104054)),nondet]):-call(test_lex_info("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_104054).


test('?- test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_103850)),nondet]):-call(test_lex_info("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_103850).


test('?- test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_104198)),nondet]):-call(test_lex_info("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_104198).


test('?- test_lex_info("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_103796)),nondet]):-call(test_lex_info("This is where the ship's pilot and information officer sit",[descriptionTest]),_103796).


test('?- test_lex_info("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_103718)),nondet]):-call(test_lex_info("You're in the conference room of the Enterprise",[descriptionTest]),_103718).


test('?- test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_104264)),nondet]):-call(test_lex_info("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_104264).


test('?- test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_103886)),nondet]):-call(test_lex_info("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_103886).


test('?- test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_103982)),nondet]):-call(test_lex_info("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_103982).


test('?- test_lex_info("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_103814)),nondet]):-call(test_lex_info("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_103814).


test('?- test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_20394)),nondet]):-call(test_lex_info("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_20394).


test('?- test_lex_info("no two owners eat pizza",[sanity])',[true(compound(_20386)),nondet]):-call(test_lex_info("no two owners eat pizza",[sanity]),_20386).


test('?- test_lex_info("no three owners eat pizza",[sanity])',[true(compound(_20386)),nondet]):-call(test_lex_info("no three owners eat pizza",[sanity]),_20386).


test('?- test_lex_info("no three owners eat the same pizza",[sanity])',[true(compound(_20388)),nondet]):-call(test_lex_info("no three owners eat the same pizza",[sanity]),_20388).


test('?- test_lex_info("no three owners eat the same kind of pizza",[sanity])',[true(compound(_20390)),nondet]):-call(test_lex_info("no three owners eat the same kind of pizza",[sanity]),_20390).


test('?- test_lex_info("no owners eat the same pizza",[sanity])',[true(compound(_20386)),nondet]):-call(test_lex_info("no owners eat the same pizza",[sanity]),_20386).


test('?- test_lex_info("no owners eat the same kind of pizza",[sanity])',[true(compound(_20388)),nondet]):-call(test_lex_info("no owners eat the same kind of pizza",[sanity]),_20388).


test('?- test_lex_info("there are 5 houses",[sanity])',[true(compound(_20384)),nondet]):-call(test_lex_info("there are 5 houses",[sanity]),_20384).


test('?- test_lex_info("there are not 5 houses",[sanity])',[true(compound(_20384)),nondet]):-call(test_lex_info("there are not 5 houses",[sanity]),_20384).


test('?- test_lex_info("there are not zero houses",[sanity])',[true(compound(_20386)),nondet]):-call(test_lex_info("there are not zero houses",[sanity]),_20386).


test('?- test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_20394)),nondet]):-call(test_lex_info(noun_phrase("less than 2 owners"),[sanity,bug]),_20394).


test('?- test_lex_info(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_20388)),nondet]):-call(test_lex_info(noun_phrase("at most the 5 owners"),[sanity]),_20388).


test('?- test_lex_info(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_20388)),nondet]):-call(test_lex_info(noun_phrase("at most 5 owners"),[sanity]),_20388).


test('?- test_lex_info(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_20388)),nondet]):-call(test_lex_info(noun_phrase("less than 3 owners"),[sanity]),_20388).


test('?- test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_20390)),nondet]):-call(test_lex_info(noun_phrase("at most 50 percent of owners"),[sanity]),_20390).


test('?- test_lex_info(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_20394)),nondet]):-call(test_lex_info(noun_phrase("no three owners"),[sanity,no_working]),_20394).


test('?- test_lex_info("terry writes a non-program.",[tell])',[true(compound(_20386)),nondet]):-call(test_lex_info("terry writes a non-program.",[tell]),_20386).


test('?- test_lex_info("every nonhuman programmer writes a program.",[tell])',[true(compound(_20390)),nondet]):-call(test_lex_info("every nonhuman programmer writes a program.",[tell]),_20390).


test('?- test_lex_info("every human programmer writes a not a program.",[tell])',[true(compound(_20390)),nondet]):-call(test_lex_info("every human programmer writes a not a program.",[tell]),_20390).


test('?- test_lex_info("every human programmer happily writes a not a program.",[tell])',[true(compound(_20392)),nondet]):-call(test_lex_info("every human programmer happily writes a not a program.",[tell]),_20392).


:- end_tests(test_lex_info).



:- begin_tests(chat80).



test('?- chat80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_20436)),nondet]):-call(chat80("His friends are liked by hers.",[bad_juju,sanity]),_20436).


test('?- chat80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_20438)),nondet]):-call(chat80("Her friends are not liked by his.",[bad_juju,sanity]),_20438).


test('?- chat80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_20438)),nondet]):-call(chat80("Do their friends like each other?",[bad_juju,feature]),_20438).


test('?- chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_20380),sanity])',[true(compound(_20442)),nondet]):-call(chat80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_20380),sanity]),_20442).


test('?- chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_20378),sanity])',[true(compound(_20440)),nondet]):-call(chat80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_20378),sanity]),_20440).


test('?- chat80("There are 5 houses with five different colors.",[riddle(_20382),sanity])',[true(compound(_20444)),nondet]):-call(chat80("There are 5 houses with five different colors.",[riddle(_20382),sanity]),_20444).


test('?- chat80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_20434)),nondet]):-call(chat80("There are 5 houses",[riddle_prep,sanity]),_20434).


test('?- chat80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_20438)),nondet]):-call(chat80("Each house has a different color",[riddle_prep,sanity]),_20438).


test('?- chat80("In each house lives a person with a different nationality.",[riddle(_20386),sanity])',[true(compound(_20448)),nondet]):-call(chat80("In each house lives a person with a different nationality.",[riddle(_20386),sanity]),_20448).


test('?- chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_20460)),nondet]):-call(chat80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_20460).


test('?- chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_20448)),nondet]):-call(chat80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_20448).


test('?- chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_20446)),nondet]):-call(chat80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_20446).


test('?- chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_20450)),nondet]):-call(chat80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_20450).


test('?- chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_20454)),nondet]):-call(chat80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_20454).


test('?- chat80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_20446)),nondet]):-call(chat80("No owners have the same pet.",[riddle(1),sanity,regression]),_20446).


test('?- chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_20450)),nondet]):-call(chat80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_20450).


test('?- chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_20444)),nondet]):-call(chat80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_20444).


test('?- chat80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_20448)),nondet]):-call(chat80("No two owners have the same pet.",[riddle(1),sanity,regression]),_20448).


test('?- chat80("The brit lives in the red house.",[riddle(_20380),sanity])',[true(compound(_20442)),nondet]):-call(chat80("The brit lives in the red house.",[riddle(_20380),sanity]),_20442).


test('?- chat80("The swede keeps dogs as pets.",[riddle(_20378),sanity])',[true(compound(_20440)),nondet]):-call(chat80("The swede keeps dogs as pets.",[riddle(_20378),sanity]),_20440).


test('?- chat80("A dane drinks tea.",[riddle(_20376),sanity])',[true(compound(_20438)),nondet]):-call(chat80("A dane drinks tea.",[riddle(_20376),sanity]),_20438).


test('?- chat80("The green house is on the left of the white house.",[riddle(_20384),sanity])',[true(compound(_20446)),nondet]):-call(chat80("The green house is on the left of the white house.",[riddle(_20384),sanity]),_20446).


test('?- chat80("The green house\'s owner drinks coffee.",[riddle(_20380),sanity])',[true(compound(_20442)),nondet]):-call(chat80("The green house's owner drinks coffee.",[riddle(_20380),sanity]),_20442).


test('?- chat80("The person who smokes Pall Mall rears birds.",[riddle(_20382),sanity,regression])',[true(compound(_20450)),nondet]):-call(chat80("The person who smokes Pall Mall rears birds.",[riddle(_20382),sanity,regression]),_20450).


test('?- chat80("The owner of the yellow house smokes Dunhill.",[riddle(_20382),sanity])',[true(compound(_20444)),nondet]):-call(chat80("The owner of the yellow house smokes Dunhill.",[riddle(_20382),sanity]),_20444).


test('?- chat80("The man living in the center house drinks milk.",[riddle(_20384),sanity])',[true(compound(_20446)),nondet]):-call(chat80("The man living in the center house drinks milk.",[riddle(_20384),sanity]),_20446).


test('?- chat80("The Norwegian lives in the first house .",[riddle(_20382),sanity])',[true(compound(_20444)),nondet]):-call(chat80("The Norwegian lives in the first house .",[riddle(_20382),sanity]),_20444).


test('?- chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_20388),sanity])',[true(compound(_20450)),nondet]):-call(chat80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_20388),sanity]),_20450).


test('?- chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_20388),sanity])',[true(compound(_20450)),nondet]):-call(chat80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_20388),sanity]),_20450).


test('?- chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_20382),sanity])',[true(compound(_20444)),nondet]):-call(chat80("The owner who smokes BlueMaster drinks beer.",[riddle(_20382),sanity]),_20444).


test('?- chat80("The German smokes Prince.",[riddle(_20378),sanity])',[true(compound(_20440)),nondet]):-call(chat80("The German smokes Prince.",[riddle(_20378),sanity]),_20440).


test('?- chat80("The Norwegian lives next to the blue house.",[riddle(_20382),sanity])',[true(compound(_20444)),nondet]):-call(chat80("The Norwegian lives next to the blue house.",[riddle(_20382),sanity]),_20444).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_20386),sanity])',[true(compound(_20448)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_20386),sanity]),_20448).


test('?- chat80("Who owns the fish?",[riddle(_20376),sanity])',[true(compound(_20438)),nondet]):-call(chat80("Who owns the fish?",[riddle(_20376),sanity]),_20438).


test('?- chat80("One woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("One woman paints.",[quants]),_20428).


test('?- chat80("No woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("No woman paints.",[quants]),_20428).


test('?- chat80("Some woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Some woman paints.",[quants]),_20428).


test('?- chat80("Every woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Every woman paints.",[quants]),_20428).


test('?- chat80("Each woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Each woman paints.",[quants]),_20428).


test('?- chat80("Any woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Any woman paints.",[quants]),_20428).


test('?- chat80("The woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("The woman paints.",[quants]),_20428).


test('?- chat80("The not woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("The not woman paints.",[quants]),_20428).


test('?- chat80("Not a woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Not a woman paints.",[quants]),_20428).


test('?- chat80("Not one woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Not one woman paints.",[quants]),_20428).


test('?- chat80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_20428)),nondet]):-call(chat80("Not no woman paints.",[quants_neg_postcond]),_20428).


test('?- chat80("Not some woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Not some woman paints.",[quants]),_20428).


test('?- chat80("Not every woman paints.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("Not every woman paints.",[quants]),_20430).


test('?- chat80("Not each woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Not each woman paints.",[quants]),_20428).


test('?- chat80("Not any woman paints.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Not any woman paints.",[quants]),_20428).


test('?- chat80("The women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("The women paint.",[quants]),_20428).


test('?- chat80("Women paint.",[quants])',[true(compound(_20426)),nondet]):-call(chat80("Women paint.",[quants]),_20426).


test('?- chat80("Some women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Some women paint.",[quants]),_20428).


test('?- chat80("No women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("No women paint.",[quants]),_20428).


test('?- chat80("All women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("All women paint.",[quants]),_20428).


test('?- chat80("Any women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Any women paint.",[quants]),_20428).


test('?- chat80("Not women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Not women paint.",[quants]),_20428).


test('?- chat80("Not no women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Not no women paint.",[quants]),_20428).


test('?- chat80("Not all women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Not all women paint.",[quants]),_20428).


test('?- chat80("Not any women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Not any women paint.",[quants]),_20428).


test('?- chat80("The three women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("The three women paint.",[quants]),_20428).


test('?- chat80("Three women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Three women paint.",[quants]),_20428).


test('?- chat80("Some three women paint.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("Some three women paint.",[quants]),_20430).


test('?- chat80("No three women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("No three women paint.",[quants]),_20428).


test('?- chat80("Every three women paint.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("Every three women paint.",[quants]),_20430).


test('?- chat80("All three women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("All three women paint.",[quants]),_20428).


test('?- chat80("Any three women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Any three women paint.",[quants]),_20428).


test('?- chat80("Not three women paint.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("Not three women paint.",[quants]),_20428).


test('?- chat80("Not some three women paint.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("Not some three women paint.",[quants]),_20430).


test('?- chat80("Not no three women paint.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("Not no three women paint.",[quants]),_20430).


test('?- chat80("Not all three women paint.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("Not all three women paint.",[quants]),_20430).


test('?- chat80("Not every three women paint.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("Not every three women paint.",[quants]),_20430).


test('?- chat80("Not any three women paint.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("Not any three women paint.",[quants]),_20430).


test('?- chat80("Not three of the women paint.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("Not three of the women paint.",[quants]),_20430).


test('?- chat80("Not some of the three women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("Not some of the three women paint.",[quants]),_20432).


test('?- chat80("Not no three of the women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("Not no three of the women paint.",[quants]),_20432).


test('?- chat80("Not all three of the women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("Not all three of the women paint.",[quants]),_20432).


test('?- chat80("Not every three of the women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("Not every three of the women paint.",[quants]),_20432).


test('?- chat80("Not any three of the women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("Not any three of the women paint.",[quants]),_20432).


test('?- chat80("Not three of the four women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("Not three of the four women paint.",[quants]),_20432).


test('?- chat80("Not none of three out of the four women paint.",[quants])',[true(compound(_20434)),nondet]):-call(chat80("Not none of three out of the four women paint.",[quants]),_20434).


test('?- chat80("Not all three of the four women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("Not all three of the four women paint.",[quants]),_20432).


test('?- chat80("Not any three of the four women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("Not any three of the four women paint.",[quants]),_20432).


test('?- chat80("Three of the four women paint.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("Three of the four women paint.",[quants]),_20430).


test('?- chat80("Three out of the four women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("Three out of the four women paint.",[quants]),_20432).


test('?- chat80("All three of the four women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("All three of the four women paint.",[quants]),_20432).


test('?- chat80("Any three of the four women paint.",[quants])',[true(compound(_20432)),nondet]):-call(chat80("Any three of the four women paint.",[quants]),_20432).


test('?- chat80("I paint",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("I paint",[pronoun]),_20426).


test('?- chat80("you paint",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("you paint",[pronoun]),_20426).


test('?- chat80("We paint",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("We paint",[pronoun]),_20426).


test('?- chat80("None paint",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("None paint",[pronoun]),_20426).


test('?- chat80("They paint",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("They paint",[pronoun]),_20426).


test('?- chat80("Some paint",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("Some paint",[pronoun]),_20426).


test('?- chat80("It paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("It paints",[pronoun]),_20426).


test('?- chat80("he paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("he paints",[pronoun]),_20426).


test('?- chat80("She paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("She paints",[pronoun]),_20426).


test('?- chat80("Someone paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("Someone paints",[pronoun]),_20426).


test('?- chat80("Anybody paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("Anybody paints",[pronoun]),_20426).


test('?- chat80("Anyone paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("Anyone paints",[pronoun]),_20426).


test('?- chat80("Anything paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Anything paints",[pronoun]),_20428).


test('?- chat80("Everybody paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Everybody paints",[pronoun]),_20428).


test('?- chat80("Everyone paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Everyone paints",[pronoun]),_20428).


test('?- chat80("Everything paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Everything paints",[pronoun]),_20428).


test('?- chat80("Nobody paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("Nobody paints",[pronoun]),_20426).


test('?- chat80("No one paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("No one paints",[pronoun]),_20426).


test('?- chat80("Nothing paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("Nothing paints",[pronoun]),_20426).


test('?- chat80("One paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("One paints",[pronoun]),_20426).


test('?- chat80("Somebody paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Somebody paints",[pronoun]),_20428).


test('?- chat80("Something paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Something paints",[pronoun]),_20428).


test('?- chat80("Not anybody paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Not anybody paints",[pronoun]),_20428).


test('?- chat80("Not anyone paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Not anyone paints",[pronoun]),_20428).


test('?- chat80("Not anything paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Not anything paints",[pronoun]),_20428).


test('?- chat80("Not everybody paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Not everybody paints",[pronoun]),_20428).


test('?- chat80("Not everyone paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Not everyone paints",[pronoun]),_20428).


test('?- chat80("Not everything paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Not everything paints",[pronoun]),_20428).


test('?- chat80("Not nothing paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Not nothing paints",[pronoun]),_20428).


test('?- chat80("Not one paints",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("Not one paints",[pronoun]),_20426).


test('?- chat80("Not somebody paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Not somebody paints",[pronoun]),_20428).


test('?- chat80("Not something paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("Not something paints",[pronoun]),_20428).


test('?- chat80("She likes i",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("She likes i",[pronoun]),_20426).


test('?- chat80("She likes me",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("She likes me",[pronoun]),_20426).


test('?- chat80("She likes you",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("She likes you",[pronoun]),_20426).


test('?- chat80("She likes it",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("She likes it",[pronoun]),_20426).


test('?- chat80("She likes us",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("She likes us",[pronoun]),_20426).


test('?- chat80("She likes them",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("She likes them",[pronoun]),_20426).


test('?- chat80("She likes no one",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("She likes no one",[pronoun]),_20428).


test('?- chat80("She likes none",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("She likes none",[pronoun]),_20426).


test('?- chat80("She likes him",[pronoun])',[true(compound(_20426)),nondet]):-call(chat80("She likes him",[pronoun]),_20426).


test('?- chat80("She likes herself",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("She likes herself",[pronoun]),_20428).


test('?- chat80("She likes himself",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("She likes himself",[pronoun]),_20428).


test('?- chat80("It is us that paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("It is us that paints",[pronoun]),_20428).


test('?- chat80("It is them that paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("It is them that paints",[pronoun]),_20428).


test('?- chat80("It is he that paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("It is he that paints",[pronoun]),_20428).


test('?- chat80("It is she that paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("It is she that paints",[pronoun]),_20428).


test('?- chat80("It is her that paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("It is her that paints",[pronoun]),_20428).


test('?- chat80("It is him that paints",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("It is him that paints",[pronoun]),_20428).


test('?- chat80("We are us that paint",[pronoun])',[true(compound(_20428)),nondet]):-call(chat80("We are us that paint",[pronoun]),_20428).


test('?- chat80("We are all of us that paint",[pronoun])',[true(compound(_20430)),nondet]):-call(chat80("We are all of us that paint",[pronoun]),_20430).


test('?- chat80("It is everybody that paints",[pronoun])',[true(compound(_20430)),nondet]):-call(chat80("It is everybody that paints",[pronoun]),_20430).


test('?- chat80("Every man that paints likes monet.",[bratko])',[true(compound(_20432)),nondet]):-call(chat80("Every man that paints likes monet.",[bratko]),_20432).


test('?- chat80("A woman that admires John paints.",[bratko])',[true(compound(_20432)),nondet]):-call(chat80("A woman that admires John paints.",[bratko]),_20432).


test('?- chat80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_20438)),nondet]):-call(chat80("Every woman that likes a man that admires monet paints.",[bratko]),_20438).


test('?- chat80("John likes Annie.",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("John likes Annie.",[bratko]),_20428).


test('?- chat80("Annie likes a man that admires monet.",[bratko])',[true(compound(_20432)),nondet]):-call(chat80("Annie likes a man that admires monet.",[bratko]),_20432).


test('?- chat80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_20432)),nondet]):-call(chat80("Bertrand Russell wrote principia.",[bratko]),_20432).


test('?- chat80("An author wrote principia.",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("An author wrote principia.",[bratko]),_20430).


test('?- chat80("Iraq is a country.",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("Iraq is a country.",[bratko]),_20428).


test('?- chat80("A happy author wrote principia.",[bratko])',[true(compound(_20432)),nondet]):-call(chat80("A happy author wrote principia.",[bratko]),_20432).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_20428).


test('?- chat80("Bertrand is an author.",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("Bertrand is an author.",[bratko]),_20428).


test('?- chat80("Is Bertrand an author?",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("Is Bertrand an author?",[bratko]),_20428).


test('?- chat80("Every author is a programmer.",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("Every author is a programmer.",[bratko]),_20430).


test('?- chat80("Is Bertrand an programmer?",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("Is Bertrand an programmer?",[bratko]),_20430).


test('?- chat80("What is a author?",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("What is a author?",[bratko]),_20428).


test('?- chat80("What did Bertrand write?",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("What did Bertrand write?",[bratko]),_20430).


test('?- chat80("What is a book?",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("What is a book?",[bratko]),_20428).


test('?- chat80("Principia is a book.",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("Principia is a book.",[bratko]),_20428).


test('?- chat80("Bertrand is Bertrand.",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("Bertrand is Bertrand.",[bratko]),_20428).


test('?- chat80("Shrdlu halts.",[bratko])',[true(compound(_20426)),nondet]):-call(chat80("Shrdlu halts.",[bratko]),_20426).


test('?- chat80("Every student wrote a program.",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("Every student wrote a program.",[bratko]),_20430).


test('?- chat80("Terry writes a program.",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("Terry writes a program.",[bratko]),_20430).


test('?- chat80("Terry writes a program that halts.",[bratko])',[true(compound(_20432)),nondet]):-call(chat80("Terry writes a program that halts.",[bratko]),_20432).


test('?- chat80("An author of every book wrote a program.",[bratko])',[true(compound(_20434)),nondet]):-call(chat80("An author of every book wrote a program.",[bratko]),_20434).


test('?- chat80("A man hapilly maried paints.",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("A man hapilly maried paints.",[bratko]),_20430).


test('?- chat80("A hapilly maried man paints.",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("A hapilly maried man paints.",[bratko]),_20430).


test('?- chat80("A man who knows paints.",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("A man who knows paints.",[bratko]),_20430).


test('?- chat80("A man gives something.",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("A man gives something.",[bratko]),_20428).


test('?- chat80("A man gives his word.",[bratko])',[true(compound(_20428)),nondet]):-call(chat80("A man gives his word.",[bratko]),_20428).


test('?- chat80("A man of his word paints.",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("A man of his word paints.",[bratko]),_20430).


test('?- chat80("A man paints.",[bratko])',[true(compound(_20426)),nondet]):-call(chat80("A man paints.",[bratko]),_20426).


test('?- chat80("A man that paints paints.",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("A man that paints paints.",[bratko]),_20430).


test('?- chat80("A man walks.",[bratko])',[true(compound(_20426)),nondet]):-call(chat80("A man walks.",[bratko]),_20426).


test('?- chat80("A man that walks paints.",[bratko])',[true(compound(_20430)),nondet]):-call(chat80("A man that walks paints.",[bratko]),_20430).


test('?- chat80("It halts.",[bratko])',[true(compound(_20426)),nondet]):-call(chat80("It halts.",[bratko]),_20426).


test('?- chat80("A man of his word that walks paints.",[bratko])',[true(compound(_20432)),nondet]):-call(chat80("A man of his word that walks paints.",[bratko]),_20432).


test('?- chat80("The cost of what the product is changes.",[bratko])',[true(compound(_20434)),nondet]):-call(chat80("The cost of what the product is changes.",[bratko]),_20434).


test('?- chat80("We need a virtual machine server.",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("We need a virtual machine server.",[aindy]),_20432).


test('?- chat80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_20436)),nondet]):-call(chat80("The virtual machine server should have several VMs.",[aindy]),_20436).


test('?- chat80("One VM should be the POSI VM.",[aindy])',[true(compound(_20430)),nondet]):-call(chat80("One VM should be the POSI VM.",[aindy]),_20430).


test('?- chat80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("One VM should be the FRDCSA.org VM.",[aindy]),_20432).


test('?- chat80("One VM should be the mail server.",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("One VM should be the mail server.",[aindy]),_20432).


test('?- chat80("One computer should be the backup server.",[aindy])',[true(compound(_20434)),nondet]):-call(chat80("One computer should be the backup server.",[aindy]),_20434).


test('?- chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_20450)),nondet]):-call(chat80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_20450).


test('?- chat80("I need a fast computer for work.",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("I need a fast computer for work.",[aindy]),_20432).


test('?- chat80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_20442)),nondet]):-call(chat80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_20442).


test('?- chat80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_20438)),nondet]):-call(chat80("I need a dedicated computer for network security research.",[aindy]),_20438).


test('?- chat80("I need a machine to run Tails on.",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("I need a machine to run Tails on.",[aindy]),_20432).


test('?- chat80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_20436)),nondet]):-call(chat80("I need a machine off the network for airgap security.",[aindy]),_20436).


test('?- chat80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_20442)),nondet]):-call(chat80("One VM should be the game server for running game development projects.",[aindy]),_20442).


test('?- chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_20436)),nondet]):-call(chat80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_20436).


test('?- chat80("I could read about how to build a private watson.",[aindy])',[true(compound(_20436)),nondet]):-call(chat80("I could read about how to build a private watson.",[aindy]),_20436).


test('?- chat80("Need backups.",[aindy])',[true(compound(_20426)),nondet]):-call(chat80("Need backups.",[aindy]),_20426).


test('?- chat80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_20440)),nondet]):-call(chat80("Practice setting up backups of a machine to a different machine.",[aindy]),_20440).


test('?- chat80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_20438)),nondet]):-call(chat80("Set up schedules for updating the software on all machines.",[aindy]),_20438).


test('?- chat80("Read books on server room layout.",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("Read books on server room layout.",[aindy]),_20432).


test('?- chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_20440)),nondet]):-call(chat80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_20440).


test('?- chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_20442)),nondet]):-call(chat80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_20442).


test('?- chat80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("I want a gaming computer.  Do I?",[aindy]),_20432).


test('?- chat80("I want a windows 7 computer for work.",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("I want a windows 7 computer for work.",[aindy]),_20432).


test('?- chat80("I want a fast linux computer for work.",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("I want a fast linux computer for work.",[aindy]),_20432).


test('?- chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_20452)),nondet]):-call(chat80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_20452).


test('?- chat80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_20438)),nondet]):-call(chat80("I could install a fresh operating system on justin for work.",[aindy]),_20438).


test('?- chat80("I probably want a separate git computer.",[aindy])',[true(compound(_20434)),nondet]):-call(chat80("I probably want a separate git computer.",[aindy]),_20434).


test('?- chat80("I need to start buying servers.",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("I need to start buying servers.",[aindy]),_20432).


test('?- chat80("I want a rackmount case for servers.",[aindy])',[true(compound(_20432)),nondet]):-call(chat80("I want a rackmount case for servers.",[aindy]),_20432).


test('?- chat80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_20438)),nondet]):-call(chat80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_20438).


test('?- chat80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_20436)),nondet]):-call(chat80("2 oceans border each african country.",[chat80(tell)]),_20436).


test('?- chat80("There are 10 large cars.",[quants])',[true(compound(_20430)),nondet]):-call(chat80("There are 10 large cars.",[quants]),_20430).


test('?- chat80("There are 10 oceans.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("There are 10 oceans.",[quants]),_20428).


test('?- chat80("There are 10 women.",[quants])',[true(compound(_20428)),nondet]):-call(chat80("There are 10 women.",[quants]),_20428).


test('?- chat80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_20436)),nondet]):-call(chat80("An ocean borders an African country.",[chat80(tell)]),_20436).


test('?- chat80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_20444)),nondet]):-call(chat80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_20444).


test('?- chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_20446)),nondet]):-call(chat80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_20446).


test('?- chat80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_20432)),nondet]):-call(chat80("Bertrand wrote a book.",[bratko(book)]),_20432).


test('?- chat80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_20434)),nondet]):-call(chat80("Bertrand wrote nothing.",[bratko(book)]),_20434).


test('?- chat80("Bertrand wrote.",[bratko(book)])',[true(compound(_20432)),nondet]):-call(chat80("Bertrand wrote.",[bratko(book)]),_20432).


test('?- chat80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_20436)),nondet]):-call(chat80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_20436).


test('?- chat80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_20434)),nondet]):-call(chat80("Bertrand wrote about Gottlob.",[bratko(book)]),_20434).


test('?- chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_20436)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_20436).


test('?- chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_20438)),nondet]):-call(chat80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_20438).


test('?- chat80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_20436)),nondet]):-call(chat80("What did alfred write to Bertrand?",[bratko(book)]),_20436).


test('?- chat80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_20432)),nondet]):-call(chat80("Alfred wrote a letter.",[bratko(book)]),_20432).


test('?- chat80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_20436)),nondet]):-call(chat80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_20436).


test('?- chat80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_20436)),nondet]):-call(chat80("Alfred wrote something to Bertrand.",[bratko(book)]),_20436).


test('?- chat80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_20434)),nondet]):-call(chat80("Alfred wrote to Bertrand.",[bratko(book)]),_20434).


test('?- chat80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_20436)),nondet]):-call(chat80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_20436).


test('?- chat80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_20436)),nondet]):-call(chat80("Alfred wrote Bertrand a letter.",[bratko(book)]),_20436).


test('?- chat80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_20436)),nondet]):-call(chat80("Who did alfred write a letter to?",[bratko(book)]),_20436).


test('?- chat80("Alfred gave it.",[bratko(book)])',[true(compound(_20432)),nondet]):-call(chat80("Alfred gave it.",[bratko(book)]),_20432).


test('?- chat80("Alfred gave a book.",[bratko(book)])',[true(compound(_20432)),nondet]):-call(chat80("Alfred gave a book.",[bratko(book)]),_20432).


test('?- chat80("a pride of lions paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a pride of lions paint",[of]),_20428).


test('?- chat80("a flock of birds paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a flock of birds paint",[of]),_20428).


test('?- chat80("a litter of pups paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a litter of pups paint",[of]),_20428).


test('?- chat80("a prickle of porcupines paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a prickle of porcupines paint",[of]),_20430).


test('?- chat80("a litter of cubs paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a litter of cubs paint",[of]),_20428).


test('?- chat80("a pack of dogs paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a pack of dogs paint",[of]),_20428).


test('?- chat80("a colony of beavers paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a colony of beavers paint",[of]),_20430).


test('?- chat80("a gaggle of geese paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a gaggle of geese paint",[of]),_20430).


test('?- chat80("a family of otters paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a family of otters paint",[of]),_20430).


test('?- chat80("a huddle of walruses paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a huddle of walruses paint",[of]),_20430).


test('?- chat80("a herd of deer paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a herd of deer paint",[of]),_20428).


test('?- chat80("a culture of bacteria paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a culture of bacteria paint",[of]),_20430).


test('?- chat80("a swarm of bees paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a swarm of bees paint",[of]),_20428).


test('?- chat80("a bed of clams paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a bed of clams paint",[of]),_20428).


test('?- chat80("a school of cod paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a school of cod paint",[of]),_20428).


test('?- chat80("a herd of dinosaurs paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a herd of dinosaurs paint",[of]),_20430).


test('?- chat80("a mess of iguanas paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a mess of iguanas paint",[of]),_20430).


test('?- chat80("a mob of wombats paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a mob of wombats paint",[of]),_20428).


test('?- chat80("a pod of pelicans paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a pod of pelicans paint",[of]),_20430).


test('?- chat80("a troop of boy scouts paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a troop of boy scouts paint",[of]),_20430).


test('?- chat80("a team of athletes paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a team of athletes paint",[of]),_20430).


test('?- chat80("a panel of experts paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a panel of experts paint",[of]),_20430).


test('?- chat80("a crew of sailors paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a crew of sailors paint",[of]),_20430).


test('?- chat80("a band of robbers paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a band of robbers paint",[of]),_20430).


test('?- chat80("a troupe of performers paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a troupe of performers paint",[of]),_20430).


test('?- chat80("a crowd of onlookers paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a crowd of onlookers paint",[of]),_20430).


test('?- chat80("a curse of painters paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("a curse of painters paint",[of]),_20430).


test('?- chat80("a fleet of cars paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a fleet of cars paint",[of]),_20428).


test('?- chat80("a pair of shoes paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a pair of shoes paint",[of]),_20428).


test('?- chat80("a fleet of ships paint",[of])',[true(compound(_20428)),nondet]):-call(chat80("a fleet of ships paint",[of]),_20428).


test('?- chat80("an anthology of stories paint",[of])',[true(compound(_20430)),nondet]):-call(chat80("an anthology of stories paint",[of]),_20430).


test('?- chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_103786)),nondet]):-call(chat80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_103786).


test('?- chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_103756)),nondet]):-call(chat80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_103756).


test('?- chat80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_103894)),nondet]):-call(chat80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_103894).


test('?- chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_103738)),nondet]):-call(chat80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_103738).


test('?- chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_103786)),nondet]):-call(chat80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_103786).


test('?- chat80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_103882)),nondet]):-call(chat80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_103882).


test('?- chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_103840)),nondet]):-call(chat80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_103840).


test('?- chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_104032)),nondet]):-call(chat80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_104032).


test('?- chat80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_103804)),nondet]):-call(chat80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_103804).


test('?- chat80("Logged on player character",[descriptionTest])',[true(compound(_103612)),nondet]):-call(chat80("Logged on player character",[descriptionTest]),_103612).


test('?- chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_103870)),nondet]):-call(chat80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_103870).


test('?- chat80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_103816)),nondet]):-call(chat80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_103816).


test('?- chat80("Wesley is her son",[descriptionTest])',[true(compound(_103558)),nondet]):-call(chat80("Wesley is her son",[descriptionTest]),_103558).


test('?- chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_104206)),nondet]):-call(chat80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_104206).


test('?- chat80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_103636)),nondet]):-call(chat80("Counselor Deanna Troi is here",[descriptionTest]),_103636).


test('?- chat80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_103732)),nondet]):-call(chat80("Counselor Troi is the ship's main counselor",[descriptionTest]),_103732).


test('?- chat80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_103888)),nondet]):-call(chat80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_103888).


test('?- chat80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_103762)),nondet]):-call(chat80("Commander William Riker is here, staring at you",[descriptionTest]),_103762).


test('?- chat80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_103768)),nondet]):-call(chat80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_103768).


test('?- chat80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_103738)),nondet]):-call(chat80("He's in charge of keeping the crew in line",[descriptionTest]),_103738).


test('?- chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_103804)),nondet]):-call(chat80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_103804).


test('?- chat80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_103702)),nondet]):-call(chat80("Captain Picard is a very important man",[descriptionTest]),_103702).


test('?- chat80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_103804)),nondet]):-call(chat80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_103804).


test('?- chat80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_103648)),nondet]):-call(chat80("He's very smart, and very wise",[descriptionTest]),_103648).


test('?- chat80("Don\'t mess with him!",[descriptionTest])',[true(compound(_103576)),nondet]):-call(chat80("Don't mess with him!",[descriptionTest]),_103576).


test('?- chat80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_103654)),nondet]):-call(chat80("Guinan is here, tending the bar",[descriptionTest]),_103654).


test('?- chat80("Guinan is a strange being",[descriptionTest])',[true(compound(_103612)),nondet]):-call(chat80("Guinan is a strange being",[descriptionTest]),_103612).


test('?- chat80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_104320)),nondet]):-call(chat80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_104320).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_103822)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_103822).


test('?- chat80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_103822)),nondet]):-call(chat80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_103822).


test('?- chat80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_104122)),nondet]):-call(chat80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_104122).


test('?- chat80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_103816)),nondet]):-call(chat80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_103816).


test('?- chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_103840)),nondet]):-call(chat80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_103840).


test('?- chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_104110)),nondet]):-call(chat80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_104110).


test('?- chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_104032)),nondet]):-call(chat80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_104032).


test('?- chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_103822)),nondet]):-call(chat80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_103822).


test('?- chat80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_103702)),nondet]):-call(chat80("Livingston is Captain Picard's pet fish",[descriptionTest]),_103702).


test('?- chat80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_103954)),nondet]):-call(chat80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_103954).


test('?- chat80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_103804)),nondet]):-call(chat80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_103804).


test('?- chat80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_103672)),nondet]):-call(chat80("Spot is Data's orange coloured cat",[descriptionTest]),_103672).


test('?- chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_104194)),nondet]):-call(chat80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_104194).


test('?- chat80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_103816)),nondet]):-call(chat80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_103816).


test('?- chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_103798)),nondet]):-call(chat80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_103798).


test('?- chat80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_104140)),nondet]):-call(chat80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_104140).


test('?- chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_103786)),nondet]):-call(chat80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_103786).


test('?- chat80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_103654)),nondet]):-call(chat80("Alexander Rozhenko is Worf's son",[descriptionTest]),_103654).


test('?- chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_103936)),nondet]):-call(chat80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_103936).


test('?- chat80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_103852)),nondet]):-call(chat80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_103852).


test('?- chat80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_103798)),nondet]):-call(chat80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_103798).


test('?- chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_104200)),nondet]):-call(chat80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_104200).


test('?- chat80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_103678)),nondet]):-call(chat80("A large phaser rifle is lying here",[descriptionTest]),_103678).


test('?- chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_104272)),nondet]):-call(chat80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_104272).


test('?- chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_103876)),nondet]):-call(chat80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_103876).


test('?- chat80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104224)),nondet]):-call(chat80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104224).


test('?- chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_103876)),nondet]):-call(chat80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_103876).


test('?- chat80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104248)),nondet]):-call(chat80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104248).


test('?- chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_103852)),nondet]):-call(chat80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_103852).


test('?- chat80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104224)),nondet]):-call(chat80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104224).


test('?- chat80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_103774)),nondet]):-call(chat80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_103774).


test('?- chat80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_104314)),nondet]):-call(chat80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_104314).


test('?- chat80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_103744)),nondet]):-call(chat80("A Starfleet communication badge is lying here",[descriptionTest]),_103744).


test('?- chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_104782)),nondet]):-call(chat80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_104782).


test('?- chat80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_103738)),nondet]):-call(chat80("Worf's silver chain sash has been left here",[descriptionTest]),_103738).


test('?- chat80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_104350)),nondet]):-call(chat80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_104350).


test('?- chat80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_103630)),nondet]):-call(chat80("Geordi's VISOR is lying here",[descriptionTest]),_103630).


test('?- chat80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_105022)),nondet]):-call(chat80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_105022).


test('?- chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_103798)),nondet]):-call(chat80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_103798).


test('?- chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_104584)),nondet]):-call(chat80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_104584).


test('?- chat80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_103732)),nondet]):-call(chat80("A shard of dilithium crystal is lying here",[descriptionTest]),_103732).


test('?- chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_104386)),nondet]):-call(chat80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_104386).


test('?- chat80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_103744)),nondet]):-call(chat80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_103744).


test('?- chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_104356)),nondet]):-call(chat80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_104356).


test('?- chat80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_103756)),nondet]):-call(chat80("Commander Riker's trombone has been placed here",[descriptionTest]),_103756).


test('?- chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_104188)),nondet]):-call(chat80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_104188).


test('?- chat80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_103684)),nondet]):-call(chat80("A small cup of tea is sitting here",[descriptionTest]),_103684).


test('?- chat80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_103702)),nondet]):-call(chat80("A bottle of synthehol is standing here",[descriptionTest]),_103702).


test('?- chat80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_103714)),nondet]):-call(chat80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_103714).


test('?- chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_103738)),nondet]):-call(chat80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_103738).


test('?- chat80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_103750)),nondet]):-call(chat80("A small glass of prune juice is sitting here",[descriptionTest]),_103750).


test('?- chat80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_103720)),nondet]):-call(chat80("A bottle of Vulcan beer is standing here",[descriptionTest]),_103720).


test('?- chat80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_103792)),nondet]):-call(chat80("You find yourself in the middle of main engineering",[descriptionTest]),_103792).


test('?- chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_103912)),nondet]):-call(chat80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_103912).


test('?- chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_104212)),nondet]):-call(chat80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_104212).


test('?- chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_104020)),nondet]):-call(chat80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_104020).


test('?- chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_103948)),nondet]):-call(chat80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_103948).


test('?- chat80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_104128)),nondet]):-call(chat80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_104128).


test('?- chat80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_103720)),nondet]):-call(chat80("You're in the middle of Geordi's quarters",[descriptionTest]),_103720).


test('?- chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_103918)),nondet]):-call(chat80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_103918).


test('?- chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_104242)),nondet]):-call(chat80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_104242).


test('?- chat80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_103852)),nondet]):-call(chat80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_103852).


test('?- chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_103822)),nondet]):-call(chat80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_103822).


test('?- chat80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_103708)),nondet]):-call(chat80("You're in the middle of Data's quarters",[descriptionTest]),_103708).


test('?- chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_104770)),nondet]):-call(chat80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_104770).


test('?- chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_103984)),nondet]):-call(chat80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_103984).


test('?- chat80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_104008)),nondet]):-call(chat80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_104008).


test('?- chat80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_103636)),nondet]):-call(chat80("You're in the dimly lit Brig",[descriptionTest]),_103636).


test('?- chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_104026)),nondet]):-call(chat80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_104026).


test('?- chat80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_104104)),nondet]):-call(chat80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_104104).


test('?- chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_104398)),nondet]):-call(chat80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_104398).


test('?- chat80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_110626)),nondet]):-call(chat80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_110626).


test('?- chat80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_104110)),nondet]):-call(chat80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_104110).


test('?- chat80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_103714)),nondet]):-call(chat80("You're in the Enterprise transporter room",[descriptionTest]),_103714).


test('?- chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_104200)),nondet]):-call(chat80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_104200).


test('?- chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_104170)),nondet]):-call(chat80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_104170).


test('?- chat80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_103708)),nondet]):-call(chat80("You find yourself in a transporter beam",[descriptionTest]),_103708).


test('?- chat80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_103708)),nondet]):-call(chat80("All you can see is blue flashing light",[descriptionTest]),_103708).


test('?- chat80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_103864)),nondet]):-call(chat80("It feels as though your body is racing around at high speeds",[descriptionTest]),_103864).


test('?- chat80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_103984)),nondet]):-call(chat80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_103984).


test('?- chat80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_103912)),nondet]):-call(chat80("You step through the doors and find yourself in a large school room",[descriptionTest]),_103912).


test('?- chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_104290)),nondet]):-call(chat80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_104290).


test('?- chat80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_104044)),nondet]):-call(chat80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_104044).


test('?- chat80("You\'re in the turbolift",[descriptionTest])',[true(compound(_103594)),nondet]):-call(chat80("You're in the turbolift",[descriptionTest]),_103594).


test('?- chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_103972)),nondet]):-call(chat80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_103972).


test('?- chat80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_103864)),nondet]):-call(chat80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_103864).


test('?- chat80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_103852)),nondet]):-call(chat80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_103852).


test('?- chat80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_103606)),nondet]):-call(chat80("You're now on Holodeck 2",[descriptionTest]),_103606).


test('?- chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_104290)),nondet]):-call(chat80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_104290).


test('?- chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_104038)),nondet]):-call(chat80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_104038).


test('?- chat80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_103732)),nondet]):-call(chat80("Right now, this holodeck is not functioning",[descriptionTest]),_103732).


test('?- chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_103840)),nondet]):-call(chat80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_103840).


test('?- chat80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_103762)),nondet]):-call(chat80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_103762).


test('?- chat80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_103972)),nondet]):-call(chat80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_103972).


test('?- chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_104290)),nondet]):-call(chat80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_104290).


test('?- chat80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_103666)),nondet]):-call(chat80("You've arrived in Riker's quarters",[descriptionTest]),_103666).


test('?- chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_104242)),nondet]):-call(chat80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_104242).


test('?- chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_104176)),nondet]):-call(chat80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_104176).


test('?- chat80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_103780)),nondet]):-call(chat80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_103780).


test('?- chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_104416)),nondet]):-call(chat80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_104416).


test('?- chat80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_104212)),nondet]):-call(chat80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_104212).


test('?- chat80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_103684)),nondet]):-call(chat80("You emerge into a dark narrow alley",[descriptionTest]),_103684).


test('?- chat80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_103828)),nondet]):-call(chat80("Tall dark brick buildings block your way north and south",[descriptionTest]),_103828).


test('?- chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_104092)),nondet]):-call(chat80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_104092).


test('?- chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_104128)),nondet]):-call(chat80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_104128).


test('?- chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_103864)),nondet]):-call(chat80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_103864).


test('?- chat80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_103768)),nondet]):-call(chat80("The archway leading out of the holodeck is west",[descriptionTest]),_103768).


test('?- chat80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_103672)),nondet]):-call(chat80("You're in Doctor Crusher's quarters",[descriptionTest]),_103672).


test('?- chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_104068)),nondet]):-call(chat80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_104068).


test('?- chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_104158)),nondet]):-call(chat80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_104158).


test('?- chat80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_103900)),nondet]):-call(chat80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_103900).


test('?- chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_104524)),nondet]):-call(chat80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_104524).


test('?- chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_103996)),nondet]):-call(chat80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_103996).


test('?- chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_104392)),nondet]):-call(chat80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_104392).


test('?- chat80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_103864)),nondet]):-call(chat80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_103864).


test('?- chat80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_103792)),nondet]):-call(chat80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_103792).


test('?- chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_104686)),nondet]):-call(chat80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_104686).


test('?- chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_103864)),nondet]):-call(chat80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_103864).


test('?- chat80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_103774)),nondet]):-call(chat80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_103774).


test('?- chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_103966)),nondet]):-call(chat80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_103966).


test('?- chat80("A large grey door leads into space",[descriptionTest])',[true(compound(_103678)),nondet]):-call(chat80("A large grey door leads into space",[descriptionTest]),_103678).


test('?- chat80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_103864)),nondet]):-call(chat80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_103864).


test('?- chat80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_103936)),nondet]):-call(chat80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_103936).


test('?- chat80("You feel very cold",[descriptionTest])',[true(compound(_103564)),nondet]):-call(chat80("You feel very cold",[descriptionTest]),_103564).


test('?- chat80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_103834)),nondet]):-call(chat80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_103834).


test('?- chat80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_103720)),nondet]):-call(chat80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_103720).


test('?- chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_104332)),nondet]):-call(chat80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_104332).


test('?- chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_104056)),nondet]):-call(chat80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_104056).


test('?- chat80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_103606)),nondet]):-call(chat80("You're in Worf's quarters",[descriptionTest]),_103606).


test('?- chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_104050)),nondet]):-call(chat80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_104050).


test('?- chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_104464)),nondet]):-call(chat80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_104464).


test('?- chat80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_103672)),nondet]):-call(chat80("You emerge into the Enterprise gym",[descriptionTest]),_103672).


test('?- chat80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_103774)),nondet]):-call(chat80("The room is quite large, with a soft grey floor",[descriptionTest]),_103774).


test('?- chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_104182)),nondet]):-call(chat80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_104182).


test('?- chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_104146)),nondet]):-call(chat80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_104146).


test('?- chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_103834)),nondet]):-call(chat80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_103834).


test('?- chat80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_103900)),nondet]):-call(chat80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_103900).


test('?- chat80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_103990)),nondet]):-call(chat80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_103990).


test('?- chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_104284)),nondet]):-call(chat80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_104284).


test('?- chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_104302)),nondet]):-call(chat80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_104302).


test('?- chat80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_103756)),nondet]):-call(chat80("Two large windows offer a great view of space",[descriptionTest]),_103756).


test('?- chat80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_104008)),nondet]):-call(chat80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_104008).


test('?- chat80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_103684)),nondet]):-call(chat80("You're in the Enterprise science lab",[descriptionTest]),_103684).


test('?- chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_104074)),nondet]):-call(chat80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_104074).


test('?- chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_104572)),nondet]):-call(chat80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_104572).


test('?- chat80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_103828)),nondet]):-call(chat80("A complex looking computer console is facing this machine",[descriptionTest]),_103828).


test('?- chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_103984)),nondet]):-call(chat80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_103984).


test('?- chat80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_103744)),nondet]):-call(chat80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_103744).


test('?- chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_103978)),nondet]):-call(chat80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_103978).


test('?- chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_104350)),nondet]):-call(chat80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_104350).


test('?- chat80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_104152)),nondet]):-call(chat80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_104152).


test('?- chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_104548)),nondet]):-call(chat80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_104548).


test('?- chat80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_103750)),nondet]):-call(chat80("You're standing in Captain Picard's ready room",[descriptionTest]),_103750).


test('?- chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_104188)),nondet]):-call(chat80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_104188).


test('?- chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_104092)),nondet]):-call(chat80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_104092).


test('?- chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_104290)),nondet]):-call(chat80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_104290).


test('?- chat80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_103870)),nondet]):-call(chat80("This is where the Captain makes all of his important decisions",[descriptionTest]),_103870).


test('?- chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_103978)),nondet]):-call(chat80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_103978).


test('?- chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_104290)),nondet]):-call(chat80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_104290).


test('?- chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_104098)),nondet]):-call(chat80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_104098).


test('?- chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_103894)),nondet]):-call(chat80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_103894).


test('?- chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_104242)),nondet]):-call(chat80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_104242).


test('?- chat80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_103840)),nondet]):-call(chat80("This is where the ship's pilot and information officer sit",[descriptionTest]),_103840).


test('?- chat80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_103762)),nondet]):-call(chat80("You're in the conference room of the Enterprise",[descriptionTest]),_103762).


test('?- chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_104308)),nondet]):-call(chat80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_104308).


test('?- chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_103930)),nondet]):-call(chat80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_103930).


test('?- chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_104026)),nondet]):-call(chat80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_104026).


test('?- chat80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_103858)),nondet]):-call(chat80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_103858).


test('?- chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_20438)),nondet]):-call(chat80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_20438).


test('?- chat80("no two owners eat pizza",[sanity])',[true(compound(_20430)),nondet]):-call(chat80("no two owners eat pizza",[sanity]),_20430).


test('?- chat80("no three owners eat pizza",[sanity])',[true(compound(_20430)),nondet]):-call(chat80("no three owners eat pizza",[sanity]),_20430).


test('?- chat80("no three owners eat the same pizza",[sanity])',[true(compound(_20432)),nondet]):-call(chat80("no three owners eat the same pizza",[sanity]),_20432).


test('?- chat80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_20434)),nondet]):-call(chat80("no three owners eat the same kind of pizza",[sanity]),_20434).


test('?- chat80("no owners eat the same pizza",[sanity])',[true(compound(_20430)),nondet]):-call(chat80("no owners eat the same pizza",[sanity]),_20430).


test('?- chat80("no owners eat the same kind of pizza",[sanity])',[true(compound(_20432)),nondet]):-call(chat80("no owners eat the same kind of pizza",[sanity]),_20432).


test('?- chat80("there are 5 houses",[sanity])',[true(compound(_20428)),nondet]):-call(chat80("there are 5 houses",[sanity]),_20428).


test('?- chat80("there are not 5 houses",[sanity])',[true(compound(_20428)),nondet]):-call(chat80("there are not 5 houses",[sanity]),_20428).


test('?- chat80("there are not zero houses",[sanity])',[true(compound(_20430)),nondet]):-call(chat80("there are not zero houses",[sanity]),_20430).


test('?- chat80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_20438)),nondet]):-call(chat80(noun_phrase("less than 2 owners"),[sanity,bug]),_20438).


test('?- chat80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_20432)),nondet]):-call(chat80(noun_phrase("at most the 5 owners"),[sanity]),_20432).


test('?- chat80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_20432)),nondet]):-call(chat80(noun_phrase("at most 5 owners"),[sanity]),_20432).


test('?- chat80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_20432)),nondet]):-call(chat80(noun_phrase("less than 3 owners"),[sanity]),_20432).


test('?- chat80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_20434)),nondet]):-call(chat80(noun_phrase("at most 50 percent of owners"),[sanity]),_20434).


test('?- chat80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_20438)),nondet]):-call(chat80(noun_phrase("no three owners"),[sanity,no_working]),_20438).


test('?- chat80("terry writes a non-program.",[tell])',[true(compound(_20430)),nondet]):-call(chat80("terry writes a non-program.",[tell]),_20430).


test('?- chat80("every nonhuman programmer writes a program.",[tell])',[true(compound(_20434)),nondet]):-call(chat80("every nonhuman programmer writes a program.",[tell]),_20434).


test('?- chat80("every human programmer writes a not a program.",[tell])',[true(compound(_20434)),nondet]):-call(chat80("every human programmer writes a not a program.",[tell]),_20434).


test('?- chat80("every human programmer happily writes a not a program.",[tell])',[true(compound(_20436)),nondet]):-call(chat80("every human programmer happily writes a not a program.",[tell]),_20436).


:- end_tests(chat80).



:- begin_tests(curt80).



test('?- curt80("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_20480)),nondet]):-call(curt80("His friends are liked by hers.",[bad_juju,sanity]),_20480).


test('?- curt80("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_20482)),nondet]):-call(curt80("Her friends are not liked by his.",[bad_juju,sanity]),_20482).


test('?- curt80("Do their friends like each other?",[bad_juju,feature])',[true(compound(_20482)),nondet]):-call(curt80("Do their friends like each other?",[bad_juju,feature]),_20482).


test('?- curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_20424),sanity])',[true(compound(_20486)),nondet]):-call(curt80("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_20424),sanity]),_20486).


test('?- curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_20422),sanity])',[true(compound(_20484)),nondet]):-call(curt80("If ?X keeps ?Y then ?X has ?Y.",[riddle(_20422),sanity]),_20484).


test('?- curt80("There are 5 houses with five different colors.",[riddle(_20426),sanity])',[true(compound(_20488)),nondet]):-call(curt80("There are 5 houses with five different colors.",[riddle(_20426),sanity]),_20488).


test('?- curt80("There are 5 houses",[riddle_prep,sanity])',[true(compound(_20478)),nondet]):-call(curt80("There are 5 houses",[riddle_prep,sanity]),_20478).


test('?- curt80("Each house has a different color",[riddle_prep,sanity])',[true(compound(_20482)),nondet]):-call(curt80("Each house has a different color",[riddle_prep,sanity]),_20482).


test('?- curt80("In each house lives a person with a different nationality.",[riddle(_20430),sanity])',[true(compound(_20492)),nondet]):-call(curt80("In each house lives a person with a different nationality.",[riddle(_20430),sanity]),_20492).


test('?- curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_20504)),nondet]):-call(curt80("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_20504).


test('?- curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_20492)),nondet]):-call(curt80("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_20492).


test('?- curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_20490)),nondet]):-call(curt80("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_20490).


test('?- curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_20494)),nondet]):-call(curt80("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_20494).


test('?- curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_20498)),nondet]):-call(curt80("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_20498).


test('?- curt80("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_20490)),nondet]):-call(curt80("No owners have the same pet.",[riddle(1),sanity,regression]),_20490).


test('?- curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_20494)),nondet]):-call(curt80("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_20494).


test('?- curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_20488)),nondet]):-call(curt80("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_20488).


test('?- curt80("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_20492)),nondet]):-call(curt80("No two owners have the same pet.",[riddle(1),sanity,regression]),_20492).


test('?- curt80("The brit lives in the red house.",[riddle(_20424),sanity])',[true(compound(_20486)),nondet]):-call(curt80("The brit lives in the red house.",[riddle(_20424),sanity]),_20486).


test('?- curt80("The swede keeps dogs as pets.",[riddle(_20422),sanity])',[true(compound(_20484)),nondet]):-call(curt80("The swede keeps dogs as pets.",[riddle(_20422),sanity]),_20484).


test('?- curt80("A dane drinks tea.",[riddle(_20420),sanity])',[true(compound(_20482)),nondet]):-call(curt80("A dane drinks tea.",[riddle(_20420),sanity]),_20482).


test('?- curt80("The green house is on the left of the white house.",[riddle(_20428),sanity])',[true(compound(_20490)),nondet]):-call(curt80("The green house is on the left of the white house.",[riddle(_20428),sanity]),_20490).


test('?- curt80("The green house\'s owner drinks coffee.",[riddle(_20424),sanity])',[true(compound(_20486)),nondet]):-call(curt80("The green house's owner drinks coffee.",[riddle(_20424),sanity]),_20486).


test('?- curt80("The person who smokes Pall Mall rears birds.",[riddle(_20426),sanity,regression])',[true(compound(_20494)),nondet]):-call(curt80("The person who smokes Pall Mall rears birds.",[riddle(_20426),sanity,regression]),_20494).


test('?- curt80("The owner of the yellow house smokes Dunhill.",[riddle(_20426),sanity])',[true(compound(_20488)),nondet]):-call(curt80("The owner of the yellow house smokes Dunhill.",[riddle(_20426),sanity]),_20488).


test('?- curt80("The man living in the center house drinks milk.",[riddle(_20428),sanity])',[true(compound(_20490)),nondet]):-call(curt80("The man living in the center house drinks milk.",[riddle(_20428),sanity]),_20490).


test('?- curt80("The Norwegian lives in the first house .",[riddle(_20426),sanity])',[true(compound(_20488)),nondet]):-call(curt80("The Norwegian lives in the first house .",[riddle(_20426),sanity]),_20488).


test('?- curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_20432),sanity])',[true(compound(_20494)),nondet]):-call(curt80("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_20432),sanity]),_20494).


test('?- curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_20432),sanity])',[true(compound(_20494)),nondet]):-call(curt80("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_20432),sanity]),_20494).


test('?- curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_20426),sanity])',[true(compound(_20488)),nondet]):-call(curt80("The owner who smokes BlueMaster drinks beer.",[riddle(_20426),sanity]),_20488).


test('?- curt80("The German smokes Prince.",[riddle(_20422),sanity])',[true(compound(_20484)),nondet]):-call(curt80("The German smokes Prince.",[riddle(_20422),sanity]),_20484).


test('?- curt80("The Norwegian lives next to the blue house.",[riddle(_20426),sanity])',[true(compound(_20488)),nondet]):-call(curt80("The Norwegian lives next to the blue house.",[riddle(_20426),sanity]),_20488).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_20430),sanity])',[true(compound(_20492)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[riddle(_20430),sanity]),_20492).


test('?- curt80("Who owns the fish?",[riddle(_20420),sanity])',[true(compound(_20482)),nondet]):-call(curt80("Who owns the fish?",[riddle(_20420),sanity]),_20482).


test('?- curt80("One woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("One woman paints.",[quants]),_20472).


test('?- curt80("No woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("No woman paints.",[quants]),_20472).


test('?- curt80("Some woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Some woman paints.",[quants]),_20472).


test('?- curt80("Every woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Every woman paints.",[quants]),_20472).


test('?- curt80("Each woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Each woman paints.",[quants]),_20472).


test('?- curt80("Any woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Any woman paints.",[quants]),_20472).


test('?- curt80("The woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("The woman paints.",[quants]),_20472).


test('?- curt80("The not woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("The not woman paints.",[quants]),_20472).


test('?- curt80("Not a woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Not a woman paints.",[quants]),_20472).


test('?- curt80("Not one woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Not one woman paints.",[quants]),_20472).


test('?- curt80("Not no woman paints.",[quants_neg_postcond])',[true(compound(_20472)),nondet]):-call(curt80("Not no woman paints.",[quants_neg_postcond]),_20472).


test('?- curt80("Not some woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Not some woman paints.",[quants]),_20472).


test('?- curt80("Not every woman paints.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("Not every woman paints.",[quants]),_20474).


test('?- curt80("Not each woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Not each woman paints.",[quants]),_20472).


test('?- curt80("Not any woman paints.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Not any woman paints.",[quants]),_20472).


test('?- curt80("The women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("The women paint.",[quants]),_20472).


test('?- curt80("Women paint.",[quants])',[true(compound(_20470)),nondet]):-call(curt80("Women paint.",[quants]),_20470).


test('?- curt80("Some women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Some women paint.",[quants]),_20472).


test('?- curt80("No women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("No women paint.",[quants]),_20472).


test('?- curt80("All women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("All women paint.",[quants]),_20472).


test('?- curt80("Any women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Any women paint.",[quants]),_20472).


test('?- curt80("Not women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Not women paint.",[quants]),_20472).


test('?- curt80("Not no women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Not no women paint.",[quants]),_20472).


test('?- curt80("Not all women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Not all women paint.",[quants]),_20472).


test('?- curt80("Not any women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Not any women paint.",[quants]),_20472).


test('?- curt80("The three women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("The three women paint.",[quants]),_20472).


test('?- curt80("Three women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Three women paint.",[quants]),_20472).


test('?- curt80("Some three women paint.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("Some three women paint.",[quants]),_20474).


test('?- curt80("No three women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("No three women paint.",[quants]),_20472).


test('?- curt80("Every three women paint.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("Every three women paint.",[quants]),_20474).


test('?- curt80("All three women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("All three women paint.",[quants]),_20472).


test('?- curt80("Any three women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Any three women paint.",[quants]),_20472).


test('?- curt80("Not three women paint.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("Not three women paint.",[quants]),_20472).


test('?- curt80("Not some three women paint.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("Not some three women paint.",[quants]),_20474).


test('?- curt80("Not no three women paint.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("Not no three women paint.",[quants]),_20474).


test('?- curt80("Not all three women paint.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("Not all three women paint.",[quants]),_20474).


test('?- curt80("Not every three women paint.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("Not every three women paint.",[quants]),_20474).


test('?- curt80("Not any three women paint.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("Not any three women paint.",[quants]),_20474).


test('?- curt80("Not three of the women paint.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("Not three of the women paint.",[quants]),_20474).


test('?- curt80("Not some of the three women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("Not some of the three women paint.",[quants]),_20476).


test('?- curt80("Not no three of the women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("Not no three of the women paint.",[quants]),_20476).


test('?- curt80("Not all three of the women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("Not all three of the women paint.",[quants]),_20476).


test('?- curt80("Not every three of the women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("Not every three of the women paint.",[quants]),_20476).


test('?- curt80("Not any three of the women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("Not any three of the women paint.",[quants]),_20476).


test('?- curt80("Not three of the four women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("Not three of the four women paint.",[quants]),_20476).


test('?- curt80("Not none of three out of the four women paint.",[quants])',[true(compound(_20478)),nondet]):-call(curt80("Not none of three out of the four women paint.",[quants]),_20478).


test('?- curt80("Not all three of the four women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("Not all three of the four women paint.",[quants]),_20476).


test('?- curt80("Not any three of the four women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("Not any three of the four women paint.",[quants]),_20476).


test('?- curt80("Three of the four women paint.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("Three of the four women paint.",[quants]),_20474).


test('?- curt80("Three out of the four women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("Three out of the four women paint.",[quants]),_20476).


test('?- curt80("All three of the four women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("All three of the four women paint.",[quants]),_20476).


test('?- curt80("Any three of the four women paint.",[quants])',[true(compound(_20476)),nondet]):-call(curt80("Any three of the four women paint.",[quants]),_20476).


test('?- curt80("I paint",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("I paint",[pronoun]),_20470).


test('?- curt80("you paint",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("you paint",[pronoun]),_20470).


test('?- curt80("We paint",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("We paint",[pronoun]),_20470).


test('?- curt80("None paint",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("None paint",[pronoun]),_20470).


test('?- curt80("They paint",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("They paint",[pronoun]),_20470).


test('?- curt80("Some paint",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("Some paint",[pronoun]),_20470).


test('?- curt80("It paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("It paints",[pronoun]),_20470).


test('?- curt80("he paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("he paints",[pronoun]),_20470).


test('?- curt80("She paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("She paints",[pronoun]),_20470).


test('?- curt80("Someone paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("Someone paints",[pronoun]),_20470).


test('?- curt80("Anybody paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("Anybody paints",[pronoun]),_20470).


test('?- curt80("Anyone paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("Anyone paints",[pronoun]),_20470).


test('?- curt80("Anything paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Anything paints",[pronoun]),_20472).


test('?- curt80("Everybody paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Everybody paints",[pronoun]),_20472).


test('?- curt80("Everyone paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Everyone paints",[pronoun]),_20472).


test('?- curt80("Everything paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Everything paints",[pronoun]),_20472).


test('?- curt80("Nobody paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("Nobody paints",[pronoun]),_20470).


test('?- curt80("No one paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("No one paints",[pronoun]),_20470).


test('?- curt80("Nothing paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("Nothing paints",[pronoun]),_20470).


test('?- curt80("One paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("One paints",[pronoun]),_20470).


test('?- curt80("Somebody paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Somebody paints",[pronoun]),_20472).


test('?- curt80("Something paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Something paints",[pronoun]),_20472).


test('?- curt80("Not anybody paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Not anybody paints",[pronoun]),_20472).


test('?- curt80("Not anyone paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Not anyone paints",[pronoun]),_20472).


test('?- curt80("Not anything paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Not anything paints",[pronoun]),_20472).


test('?- curt80("Not everybody paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Not everybody paints",[pronoun]),_20472).


test('?- curt80("Not everyone paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Not everyone paints",[pronoun]),_20472).


test('?- curt80("Not everything paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Not everything paints",[pronoun]),_20472).


test('?- curt80("Not nothing paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Not nothing paints",[pronoun]),_20472).


test('?- curt80("Not one paints",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("Not one paints",[pronoun]),_20470).


test('?- curt80("Not somebody paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Not somebody paints",[pronoun]),_20472).


test('?- curt80("Not something paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("Not something paints",[pronoun]),_20472).


test('?- curt80("She likes i",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("She likes i",[pronoun]),_20470).


test('?- curt80("She likes me",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("She likes me",[pronoun]),_20470).


test('?- curt80("She likes you",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("She likes you",[pronoun]),_20470).


test('?- curt80("She likes it",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("She likes it",[pronoun]),_20470).


test('?- curt80("She likes us",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("She likes us",[pronoun]),_20470).


test('?- curt80("She likes them",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("She likes them",[pronoun]),_20470).


test('?- curt80("She likes no one",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("She likes no one",[pronoun]),_20472).


test('?- curt80("She likes none",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("She likes none",[pronoun]),_20470).


test('?- curt80("She likes him",[pronoun])',[true(compound(_20470)),nondet]):-call(curt80("She likes him",[pronoun]),_20470).


test('?- curt80("She likes herself",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("She likes herself",[pronoun]),_20472).


test('?- curt80("She likes himself",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("She likes himself",[pronoun]),_20472).


test('?- curt80("It is us that paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("It is us that paints",[pronoun]),_20472).


test('?- curt80("It is them that paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("It is them that paints",[pronoun]),_20472).


test('?- curt80("It is he that paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("It is he that paints",[pronoun]),_20472).


test('?- curt80("It is she that paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("It is she that paints",[pronoun]),_20472).


test('?- curt80("It is her that paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("It is her that paints",[pronoun]),_20472).


test('?- curt80("It is him that paints",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("It is him that paints",[pronoun]),_20472).


test('?- curt80("We are us that paint",[pronoun])',[true(compound(_20472)),nondet]):-call(curt80("We are us that paint",[pronoun]),_20472).


test('?- curt80("We are all of us that paint",[pronoun])',[true(compound(_20474)),nondet]):-call(curt80("We are all of us that paint",[pronoun]),_20474).


test('?- curt80("It is everybody that paints",[pronoun])',[true(compound(_20474)),nondet]):-call(curt80("It is everybody that paints",[pronoun]),_20474).


test('?- curt80("Every man that paints likes monet.",[bratko])',[true(compound(_20476)),nondet]):-call(curt80("Every man that paints likes monet.",[bratko]),_20476).


test('?- curt80("A woman that admires John paints.",[bratko])',[true(compound(_20476)),nondet]):-call(curt80("A woman that admires John paints.",[bratko]),_20476).


test('?- curt80("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_20482)),nondet]):-call(curt80("Every woman that likes a man that admires monet paints.",[bratko]),_20482).


test('?- curt80("John likes Annie.",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("John likes Annie.",[bratko]),_20472).


test('?- curt80("Annie likes a man that admires monet.",[bratko])',[true(compound(_20476)),nondet]):-call(curt80("Annie likes a man that admires monet.",[bratko]),_20476).


test('?- curt80("Bertrand Russell wrote principia.",[bratko])',[true(compound(_20476)),nondet]):-call(curt80("Bertrand Russell wrote principia.",[bratko]),_20476).


test('?- curt80("An author wrote principia.",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("An author wrote principia.",[bratko]),_20474).


test('?- curt80("Iraq is a country.",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("Iraq is a country.",[bratko]),_20472).


test('?- curt80("A happy author wrote principia.",[bratko])',[true(compound(_20476)),nondet]):-call(curt80("A happy author wrote principia.",[bratko]),_20476).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_20472).


test('?- curt80("Bertrand is an author.",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("Bertrand is an author.",[bratko]),_20472).


test('?- curt80("Is Bertrand an author?",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("Is Bertrand an author?",[bratko]),_20472).


test('?- curt80("Every author is a programmer.",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("Every author is a programmer.",[bratko]),_20474).


test('?- curt80("Is Bertrand an programmer?",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("Is Bertrand an programmer?",[bratko]),_20474).


test('?- curt80("What is a author?",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("What is a author?",[bratko]),_20472).


test('?- curt80("What did Bertrand write?",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("What did Bertrand write?",[bratko]),_20474).


test('?- curt80("What is a book?",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("What is a book?",[bratko]),_20472).


test('?- curt80("Principia is a book.",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("Principia is a book.",[bratko]),_20472).


test('?- curt80("Bertrand is Bertrand.",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("Bertrand is Bertrand.",[bratko]),_20472).


test('?- curt80("Shrdlu halts.",[bratko])',[true(compound(_20470)),nondet]):-call(curt80("Shrdlu halts.",[bratko]),_20470).


test('?- curt80("Every student wrote a program.",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("Every student wrote a program.",[bratko]),_20474).


test('?- curt80("Terry writes a program.",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("Terry writes a program.",[bratko]),_20474).


test('?- curt80("Terry writes a program that halts.",[bratko])',[true(compound(_20476)),nondet]):-call(curt80("Terry writes a program that halts.",[bratko]),_20476).


test('?- curt80("An author of every book wrote a program.",[bratko])',[true(compound(_20478)),nondet]):-call(curt80("An author of every book wrote a program.",[bratko]),_20478).


test('?- curt80("A man hapilly maried paints.",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("A man hapilly maried paints.",[bratko]),_20474).


test('?- curt80("A hapilly maried man paints.",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("A hapilly maried man paints.",[bratko]),_20474).


test('?- curt80("A man who knows paints.",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("A man who knows paints.",[bratko]),_20474).


test('?- curt80("A man gives something.",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("A man gives something.",[bratko]),_20472).


test('?- curt80("A man gives his word.",[bratko])',[true(compound(_20472)),nondet]):-call(curt80("A man gives his word.",[bratko]),_20472).


test('?- curt80("A man of his word paints.",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("A man of his word paints.",[bratko]),_20474).


test('?- curt80("A man paints.",[bratko])',[true(compound(_20470)),nondet]):-call(curt80("A man paints.",[bratko]),_20470).


test('?- curt80("A man that paints paints.",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("A man that paints paints.",[bratko]),_20474).


test('?- curt80("A man walks.",[bratko])',[true(compound(_20470)),nondet]):-call(curt80("A man walks.",[bratko]),_20470).


test('?- curt80("A man that walks paints.",[bratko])',[true(compound(_20474)),nondet]):-call(curt80("A man that walks paints.",[bratko]),_20474).


test('?- curt80("It halts.",[bratko])',[true(compound(_20470)),nondet]):-call(curt80("It halts.",[bratko]),_20470).


test('?- curt80("A man of his word that walks paints.",[bratko])',[true(compound(_20476)),nondet]):-call(curt80("A man of his word that walks paints.",[bratko]),_20476).


test('?- curt80("The cost of what the product is changes.",[bratko])',[true(compound(_20478)),nondet]):-call(curt80("The cost of what the product is changes.",[bratko]),_20478).


test('?- curt80("We need a virtual machine server.",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("We need a virtual machine server.",[aindy]),_20476).


test('?- curt80("The virtual machine server should have several VMs.",[aindy])',[true(compound(_20480)),nondet]):-call(curt80("The virtual machine server should have several VMs.",[aindy]),_20480).


test('?- curt80("One VM should be the POSI VM.",[aindy])',[true(compound(_20474)),nondet]):-call(curt80("One VM should be the POSI VM.",[aindy]),_20474).


test('?- curt80("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("One VM should be the FRDCSA.org VM.",[aindy]),_20476).


test('?- curt80("One VM should be the mail server.",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("One VM should be the mail server.",[aindy]),_20476).


test('?- curt80("One computer should be the backup server.",[aindy])',[true(compound(_20478)),nondet]):-call(curt80("One computer should be the backup server.",[aindy]),_20478).


test('?- curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_20494)),nondet]):-call(curt80("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_20494).


test('?- curt80("I need a fast computer for work.",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("I need a fast computer for work.",[aindy]),_20476).


test('?- curt80("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_20486)),nondet]):-call(curt80("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_20486).


test('?- curt80("I need a dedicated computer for network security research.",[aindy])',[true(compound(_20482)),nondet]):-call(curt80("I need a dedicated computer for network security research.",[aindy]),_20482).


test('?- curt80("I need a machine to run Tails on.",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("I need a machine to run Tails on.",[aindy]),_20476).


test('?- curt80("I need a machine off the network for airgap security.",[aindy])',[true(compound(_20480)),nondet]):-call(curt80("I need a machine off the network for airgap security.",[aindy]),_20480).


test('?- curt80("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_20486)),nondet]):-call(curt80("One VM should be the game server for running game development projects.",[aindy]),_20486).


test('?- curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_20480)),nondet]):-call(curt80("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_20480).


test('?- curt80("I could read about how to build a private watson.",[aindy])',[true(compound(_20480)),nondet]):-call(curt80("I could read about how to build a private watson.",[aindy]),_20480).


test('?- curt80("Need backups.",[aindy])',[true(compound(_20470)),nondet]):-call(curt80("Need backups.",[aindy]),_20470).


test('?- curt80("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_20484)),nondet]):-call(curt80("Practice setting up backups of a machine to a different machine.",[aindy]),_20484).


test('?- curt80("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_20482)),nondet]):-call(curt80("Set up schedules for updating the software on all machines.",[aindy]),_20482).


test('?- curt80("Read books on server room layout.",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("Read books on server room layout.",[aindy]),_20476).


test('?- curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_20484)),nondet]):-call(curt80("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_20484).


test('?- curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_20486)),nondet]):-call(curt80("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_20486).


test('?- curt80("I want a gaming computer.  Do I?",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("I want a gaming computer.  Do I?",[aindy]),_20476).


test('?- curt80("I want a windows 7 computer for work.",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("I want a windows 7 computer for work.",[aindy]),_20476).


test('?- curt80("I want a fast linux computer for work.",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("I want a fast linux computer for work.",[aindy]),_20476).


test('?- curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_20496)),nondet]):-call(curt80("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_20496).


test('?- curt80("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_20482)),nondet]):-call(curt80("I could install a fresh operating system on justin for work.",[aindy]),_20482).


test('?- curt80("I probably want a separate git computer.",[aindy])',[true(compound(_20478)),nondet]):-call(curt80("I probably want a separate git computer.",[aindy]),_20478).


test('?- curt80("I need to start buying servers.",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("I need to start buying servers.",[aindy]),_20476).


test('?- curt80("I want a rackmount case for servers.",[aindy])',[true(compound(_20476)),nondet]):-call(curt80("I want a rackmount case for servers.",[aindy]),_20476).


test('?- curt80("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_20482)),nondet]):-call(curt80("Each african country is bordered by 2 oceans.",[chat80(tell)]),_20482).


test('?- curt80("2 oceans border each african country.",[chat80(tell)])',[true(compound(_20480)),nondet]):-call(curt80("2 oceans border each african country.",[chat80(tell)]),_20480).


test('?- curt80("There are 10 large cars.",[quants])',[true(compound(_20474)),nondet]):-call(curt80("There are 10 large cars.",[quants]),_20474).


test('?- curt80("There are 10 oceans.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("There are 10 oceans.",[quants]),_20472).


test('?- curt80("There are 10 women.",[quants])',[true(compound(_20472)),nondet]):-call(curt80("There are 10 women.",[quants]),_20472).


test('?- curt80("An ocean borders an African country.",[chat80(tell)])',[true(compound(_20480)),nondet]):-call(curt80("An ocean borders an African country.",[chat80(tell)]),_20480).


test('?- curt80("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_20488)),nondet]):-call(curt80("What is the ocean that borders african countries and that borders asian countries?",[tell]),_20488).


test('?- curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_20490)),nondet]):-call(curt80("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_20490).


test('?- curt80("Bertrand wrote a book.",[bratko(book)])',[true(compound(_20476)),nondet]):-call(curt80("Bertrand wrote a book.",[bratko(book)]),_20476).


test('?- curt80("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_20478)),nondet]):-call(curt80("Bertrand wrote nothing.",[bratko(book)]),_20478).


test('?- curt80("Bertrand wrote.",[bratko(book)])',[true(compound(_20476)),nondet]):-call(curt80("Bertrand wrote.",[bratko(book)]),_20476).


test('?- curt80("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_20480)),nondet]):-call(curt80("Bertrand wrote a book about Gottlob.",[bratko(book)]),_20480).


test('?- curt80("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_20478)),nondet]):-call(curt80("Bertrand wrote about Gottlob.",[bratko(book)]),_20478).


test('?- curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_20480)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_20480).


test('?- curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_20482)),nondet]):-call(curt80("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_20482).


test('?- curt80("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_20480)),nondet]):-call(curt80("What did alfred write to Bertrand?",[bratko(book)]),_20480).


test('?- curt80("Alfred wrote a letter.",[bratko(book)])',[true(compound(_20476)),nondet]):-call(curt80("Alfred wrote a letter.",[bratko(book)]),_20476).


test('?- curt80("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_20480)),nondet]):-call(curt80("Alfred wrote a letter to Bertrand.",[bratko(book)]),_20480).


test('?- curt80("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_20480)),nondet]):-call(curt80("Alfred wrote something to Bertrand.",[bratko(book)]),_20480).


test('?- curt80("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_20478)),nondet]):-call(curt80("Alfred wrote to Bertrand.",[bratko(book)]),_20478).


test('?- curt80("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_20480)),nondet]):-call(curt80("Alfred wrote to Bertrand a letter.",[bratko(book)]),_20480).


test('?- curt80("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_20480)),nondet]):-call(curt80("Alfred wrote Bertrand a letter.",[bratko(book)]),_20480).


test('?- curt80("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_20480)),nondet]):-call(curt80("Who did alfred write a letter to?",[bratko(book)]),_20480).


test('?- curt80("Alfred gave it.",[bratko(book)])',[true(compound(_20476)),nondet]):-call(curt80("Alfred gave it.",[bratko(book)]),_20476).


test('?- curt80("Alfred gave a book.",[bratko(book)])',[true(compound(_20476)),nondet]):-call(curt80("Alfred gave a book.",[bratko(book)]),_20476).


test('?- curt80("a pride of lions paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a pride of lions paint",[of]),_20472).


test('?- curt80("a flock of birds paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a flock of birds paint",[of]),_20472).


test('?- curt80("a litter of pups paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a litter of pups paint",[of]),_20472).


test('?- curt80("a prickle of porcupines paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a prickle of porcupines paint",[of]),_20474).


test('?- curt80("a litter of cubs paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a litter of cubs paint",[of]),_20472).


test('?- curt80("a pack of dogs paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a pack of dogs paint",[of]),_20472).


test('?- curt80("a colony of beavers paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a colony of beavers paint",[of]),_20474).


test('?- curt80("a gaggle of geese paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a gaggle of geese paint",[of]),_20474).


test('?- curt80("a family of otters paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a family of otters paint",[of]),_20474).


test('?- curt80("a huddle of walruses paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a huddle of walruses paint",[of]),_20474).


test('?- curt80("a herd of deer paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a herd of deer paint",[of]),_20472).


test('?- curt80("a culture of bacteria paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a culture of bacteria paint",[of]),_20474).


test('?- curt80("a swarm of bees paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a swarm of bees paint",[of]),_20472).


test('?- curt80("a bed of clams paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a bed of clams paint",[of]),_20472).


test('?- curt80("a school of cod paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a school of cod paint",[of]),_20472).


test('?- curt80("a herd of dinosaurs paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a herd of dinosaurs paint",[of]),_20474).


test('?- curt80("a mess of iguanas paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a mess of iguanas paint",[of]),_20474).


test('?- curt80("a mob of wombats paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a mob of wombats paint",[of]),_20472).


test('?- curt80("a pod of pelicans paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a pod of pelicans paint",[of]),_20474).


test('?- curt80("a troop of boy scouts paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a troop of boy scouts paint",[of]),_20474).


test('?- curt80("a team of athletes paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a team of athletes paint",[of]),_20474).


test('?- curt80("a panel of experts paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a panel of experts paint",[of]),_20474).


test('?- curt80("a crew of sailors paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a crew of sailors paint",[of]),_20474).


test('?- curt80("a band of robbers paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a band of robbers paint",[of]),_20474).


test('?- curt80("a troupe of performers paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a troupe of performers paint",[of]),_20474).


test('?- curt80("a crowd of onlookers paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a crowd of onlookers paint",[of]),_20474).


test('?- curt80("a curse of painters paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("a curse of painters paint",[of]),_20474).


test('?- curt80("a fleet of cars paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a fleet of cars paint",[of]),_20472).


test('?- curt80("a pair of shoes paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a pair of shoes paint",[of]),_20472).


test('?- curt80("a fleet of ships paint",[of])',[true(compound(_20472)),nondet]):-call(curt80("a fleet of ships paint",[of]),_20472).


test('?- curt80("an anthology of stories paint",[of])',[true(compound(_20474)),nondet]):-call(curt80("an anthology of stories paint",[of]),_20474).


test('?- curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_103830)),nondet]):-call(curt80("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_103830).


test('?- curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_103800)),nondet]):-call(curt80("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_103800).


test('?- curt80("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_103938)),nondet]):-call(curt80("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_103938).


test('?- curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_103782)),nondet]):-call(curt80("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_103782).


test('?- curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_103830)),nondet]):-call(curt80("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_103830).


test('?- curt80("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_103926)),nondet]):-call(curt80("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_103926).


test('?- curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_103884)),nondet]):-call(curt80("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_103884).


test('?- curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_104076)),nondet]):-call(curt80("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_104076).


test('?- curt80("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_103848)),nondet]):-call(curt80("He stowed super-human strength, and is extremely tough",[descriptionTest]),_103848).


test('?- curt80("Logged on player character",[descriptionTest])',[true(compound(_103656)),nondet]):-call(curt80("Logged on player character",[descriptionTest]),_103656).


test('?- curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_103914)),nondet]):-call(curt80("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_103914).


test('?- curt80("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_103860)),nondet]):-call(curt80("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_103860).


test('?- curt80("Wesley is her son",[descriptionTest])',[true(compound(_103602)),nondet]):-call(curt80("Wesley is her son",[descriptionTest]),_103602).


test('?- curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_104250)),nondet]):-call(curt80("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_104250).


test('?- curt80("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_103680)),nondet]):-call(curt80("Counselor Deanna Troi is here",[descriptionTest]),_103680).


test('?- curt80("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_103776)),nondet]):-call(curt80("Counselor Troi is the ship's main counselor",[descriptionTest]),_103776).


test('?- curt80("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_103932)),nondet]):-call(curt80("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_103932).


test('?- curt80("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_103806)),nondet]):-call(curt80("Commander William Riker is here, staring at you",[descriptionTest]),_103806).


test('?- curt80("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_103812)),nondet]):-call(curt80("Commander Riker is the Enterprise's first officer",[descriptionTest]),_103812).


test('?- curt80("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_103782)),nondet]):-call(curt80("He's in charge of keeping the crew in line",[descriptionTest]),_103782).


test('?- curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_103848)),nondet]):-call(curt80("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_103848).


test('?- curt80("Captain Picard is a very important man",[descriptionTest])',[true(compound(_103746)),nondet]):-call(curt80("Captain Picard is a very important man",[descriptionTest]),_103746).


test('?- curt80("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_103848)),nondet]):-call(curt80("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_103848).


test('?- curt80("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_103692)),nondet]):-call(curt80("He's very smart, and very wise",[descriptionTest]),_103692).


test('?- curt80("Don\'t mess with him!",[descriptionTest])',[true(compound(_103620)),nondet]):-call(curt80("Don't mess with him!",[descriptionTest]),_103620).


test('?- curt80("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_103698)),nondet]):-call(curt80("Guinan is here, tending the bar",[descriptionTest]),_103698).


test('?- curt80("Guinan is a strange being",[descriptionTest])',[true(compound(_103656)),nondet]):-call(curt80("Guinan is a strange being",[descriptionTest]),_103656).


test('?- curt80("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_104364)),nondet]):-call(curt80("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_104364).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_103866)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_103866).


test('?- curt80("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_103866)),nondet]):-call(curt80("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_103866).


test('?- curt80("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_104166)),nondet]):-call(curt80("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_104166).


test('?- curt80("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_103860)),nondet]):-call(curt80("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_103860).


test('?- curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_103884)),nondet]):-call(curt80("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_103884).


test('?- curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_104154)),nondet]):-call(curt80("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_104154).


test('?- curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_104076)),nondet]):-call(curt80("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_104076).


test('?- curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_103866)),nondet]):-call(curt80("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_103866).


test('?- curt80("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_103746)),nondet]):-call(curt80("Livingston is Captain Picard's pet fish",[descriptionTest]),_103746).


test('?- curt80("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_103998)),nondet]):-call(curt80("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_103998).


test('?- curt80("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_103848)),nondet]):-call(curt80("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_103848).


test('?- curt80("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_103716)),nondet]):-call(curt80("Spot is Data's orange coloured cat",[descriptionTest]),_103716).


test('?- curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_104238)),nondet]):-call(curt80("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_104238).


test('?- curt80("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_103860)),nondet]):-call(curt80("A nervous looking ensign is standing here, watching you",[descriptionTest]),_103860).


test('?- curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_103842)),nondet]):-call(curt80("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_103842).


test('?- curt80("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_104184)),nondet]):-call(curt80("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_104184).


test('?- curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_103830)),nondet]):-call(curt80("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_103830).


test('?- curt80("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_103698)),nondet]):-call(curt80("Alexander Rozhenko is Worf's son",[descriptionTest]),_103698).


test('?- curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_103980)),nondet]):-call(curt80("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_103980).


test('?- curt80("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_103896)),nondet]):-call(curt80("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_103896).


test('?- curt80("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_103842)),nondet]):-call(curt80("A standard issue Starfleet phaser has been left here",[descriptionTest]),_103842).


test('?- curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_104244)),nondet]):-call(curt80("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_104244).


test('?- curt80("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_103722)),nondet]):-call(curt80("A large phaser rifle is lying here",[descriptionTest]),_103722).


test('?- curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_104316)),nondet]):-call(curt80("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_104316).


test('?- curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_103920)),nondet]):-call(curt80("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_103920).


test('?- curt80("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104268)),nondet]):-call(curt80("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104268).


test('?- curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_103920)),nondet]):-call(curt80("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_103920).


test('?- curt80("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104292)),nondet]):-call(curt80("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104292).


test('?- curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_103896)),nondet]):-call(curt80("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_103896).


test('?- curt80("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104268)),nondet]):-call(curt80("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104268).


test('?- curt80("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_103818)),nondet]):-call(curt80("A pair of Starfleet black boots are sitting here",[descriptionTest]),_103818).


test('?- curt80("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_104358)),nondet]):-call(curt80("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_104358).


test('?- curt80("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_103788)),nondet]):-call(curt80("A Starfleet communication badge is lying here",[descriptionTest]),_103788).


test('?- curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_104826)),nondet]):-call(curt80("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_104826).


test('?- curt80("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_103782)),nondet]):-call(curt80("Worf's silver chain sash has been left here",[descriptionTest]),_103782).


test('?- curt80("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_104394)),nondet]):-call(curt80("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_104394).


test('?- curt80("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_103674)),nondet]):-call(curt80("Geordi's VISOR is lying here",[descriptionTest]),_103674).


test('?- curt80("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_105066)),nondet]):-call(curt80("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_105066).


test('?- curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_103842)),nondet]):-call(curt80("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_103842).


test('?- curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_104628)),nondet]):-call(curt80("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_104628).


test('?- curt80("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_103776)),nondet]):-call(curt80("A shard of dilithium crystal is lying here",[descriptionTest]),_103776).


test('?- curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_104430)),nondet]):-call(curt80("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_104430).


test('?- curt80("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_103788)),nondet]):-call(curt80("Captain Picard's wooden flute is sitting here",[descriptionTest]),_103788).


test('?- curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_104400)),nondet]):-call(curt80("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_104400).


test('?- curt80("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_103800)),nondet]):-call(curt80("Commander Riker's trombone has been placed here",[descriptionTest]),_103800).


test('?- curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_104232)),nondet]):-call(curt80("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_104232).


test('?- curt80("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_103728)),nondet]):-call(curt80("A small cup of tea is sitting here",[descriptionTest]),_103728).


test('?- curt80("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_103746)),nondet]):-call(curt80("A bottle of synthehol is standing here",[descriptionTest]),_103746).


test('?- curt80("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_103758)),nondet]):-call(curt80("A bottle of Ferengi ale is sitting here",[descriptionTest]),_103758).


test('?- curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_103782)),nondet]):-call(curt80("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_103782).


test('?- curt80("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_103794)),nondet]):-call(curt80("A small glass of prune juice is sitting here",[descriptionTest]),_103794).


test('?- curt80("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_103764)),nondet]):-call(curt80("A bottle of Vulcan beer is standing here",[descriptionTest]),_103764).


test('?- curt80("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_103836)),nondet]):-call(curt80("You find yourself in the middle of main engineering",[descriptionTest]),_103836).


test('?- curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_103956)),nondet]):-call(curt80("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_103956).


test('?- curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_104256)),nondet]):-call(curt80("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_104256).


test('?- curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_104064)),nondet]):-call(curt80("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_104064).


test('?- curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_103992)),nondet]):-call(curt80("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_103992).


test('?- curt80("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_104172)),nondet]):-call(curt80("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_104172).


test('?- curt80("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_103764)),nondet]):-call(curt80("You're in the middle of Geordi's quarters",[descriptionTest]),_103764).


test('?- curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_103962)),nondet]):-call(curt80("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_103962).


test('?- curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_104286)),nondet]):-call(curt80("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_104286).


test('?- curt80("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_103896)),nondet]):-call(curt80("A neatly made bed has been placed against the northern wall",[descriptionTest]),_103896).


test('?- curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_103866)),nondet]):-call(curt80("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_103866).


test('?- curt80("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_103752)),nondet]):-call(curt80("You're in the middle of Data's quarters",[descriptionTest]),_103752).


test('?- curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_104814)),nondet]):-call(curt80("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_104814).


test('?- curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_104028)),nondet]):-call(curt80("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_104028).


test('?- curt80("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_104052)),nondet]):-call(curt80("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_104052).


test('?- curt80("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_103680)),nondet]):-call(curt80("You're in the dimly lit Brig",[descriptionTest]),_103680).


test('?- curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_104070)),nondet]):-call(curt80("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_104070).


test('?- curt80("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_104148)),nondet]):-call(curt80("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_104148).


test('?- curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_104442)),nondet]):-call(curt80("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_104442).


test('?- curt80(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_110670)),nondet]):-call(curt80('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_110670).


test('?- curt80("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_104154)),nondet]):-call(curt80("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_104154).


test('?- curt80("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_103758)),nondet]):-call(curt80("You're in the Enterprise transporter room",[descriptionTest]),_103758).


test('?- curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_104244)),nondet]):-call(curt80("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_104244).


test('?- curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_104214)),nondet]):-call(curt80("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_104214).


test('?- curt80("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_103752)),nondet]):-call(curt80("You find yourself in a transporter beam",[descriptionTest]),_103752).


test('?- curt80("All you can see is blue flashing light",[descriptionTest])',[true(compound(_103752)),nondet]):-call(curt80("All you can see is blue flashing light",[descriptionTest]),_103752).


test('?- curt80("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_103908)),nondet]):-call(curt80("It feels as though your body is racing around at high speeds",[descriptionTest]),_103908).


test('?- curt80("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_104028)),nondet]):-call(curt80("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_104028).


test('?- curt80("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_103956)),nondet]):-call(curt80("You step through the doors and find yourself in a large school room",[descriptionTest]),_103956).


test('?- curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_104334)),nondet]):-call(curt80("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_104334).


test('?- curt80("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_104088)),nondet]):-call(curt80("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_104088).


test('?- curt80("You\'re in the turbolift",[descriptionTest])',[true(compound(_103638)),nondet]):-call(curt80("You're in the turbolift",[descriptionTest]),_103638).


test('?- curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_104016)),nondet]):-call(curt80("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_104016).


test('?- curt80("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_103908)),nondet]):-call(curt80("Several vertical rows of lights make this place very well lit",[descriptionTest]),_103908).


test('?- curt80("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_103896)),nondet]):-call(curt80("From here, you can access the other decks on the Enterprise",[descriptionTest]),_103896).


test('?- curt80("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_103650)),nondet]):-call(curt80("You're now on Holodeck 2",[descriptionTest]),_103650).


test('?- curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_104334)),nondet]):-call(curt80("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_104334).


test('?- curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_104082)),nondet]):-call(curt80("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_104082).


test('?- curt80("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_103776)),nondet]):-call(curt80("Right now, this holodeck is not functioning",[descriptionTest]),_103776).


test('?- curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_103884)),nondet]):-call(curt80("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_103884).


test('?- curt80("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_103806)),nondet]):-call(curt80("You're in the main cargo bay of the Enterprise",[descriptionTest]),_103806).


test('?- curt80("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_104016)),nondet]):-call(curt80("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_104016).


test('?- curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_104334)),nondet]):-call(curt80("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_104334).


test('?- curt80("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_103710)),nondet]):-call(curt80("You've arrived in Riker's quarters",[descriptionTest]),_103710).


test('?- curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_104286)),nondet]):-call(curt80("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_104286).


test('?- curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_104220)),nondet]):-call(curt80("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_104220).


test('?- curt80("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_103824)),nondet]):-call(curt80("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_103824).


test('?- curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_104460)),nondet]):-call(curt80("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_104460).


test('?- curt80("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_104256)),nondet]):-call(curt80("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_104256).


test('?- curt80("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_103728)),nondet]):-call(curt80("You emerge into a dark narrow alley",[descriptionTest]),_103728).


test('?- curt80("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_103872)),nondet]):-call(curt80("Tall dark brick buildings block your way north and south",[descriptionTest]),_103872).


test('?- curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_104136)),nondet]):-call(curt80("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_104136).


test('?- curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_104172)),nondet]):-call(curt80("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_104172).


test('?- curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_103908)),nondet]):-call(curt80("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_103908).


test('?- curt80("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_103812)),nondet]):-call(curt80("The archway leading out of the holodeck is west",[descriptionTest]),_103812).


test('?- curt80("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_103716)),nondet]):-call(curt80("You're in Doctor Crusher's quarters",[descriptionTest]),_103716).


test('?- curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_104112)),nondet]):-call(curt80("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_104112).


test('?- curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_104202)),nondet]):-call(curt80("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_104202).


test('?- curt80("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_103944)),nondet]):-call(curt80("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_103944).


test('?- curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_104568)),nondet]):-call(curt80("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_104568).


test('?- curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_104040)),nondet]):-call(curt80("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_104040).


test('?- curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_104436)),nondet]):-call(curt80("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_104436).


test('?- curt80("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_103908)),nondet]):-call(curt80("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_103908).


test('?- curt80("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_103836)),nondet]):-call(curt80("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_103836).


test('?- curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_104730)),nondet]):-call(curt80("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_104730).


test('?- curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_103908)),nondet]):-call(curt80("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_103908).


test('?- curt80("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_103818)),nondet]):-call(curt80("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_103818).


test('?- curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_104010)),nondet]):-call(curt80("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_104010).


test('?- curt80("A large grey door leads into space",[descriptionTest])',[true(compound(_103722)),nondet]):-call(curt80("A large grey door leads into space",[descriptionTest]),_103722).


test('?- curt80("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_103908)),nondet]):-call(curt80("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_103908).


test('?- curt80("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_103980)),nondet]):-call(curt80("You can see stars in every direction, which provide the only light here",[descriptionTest]),_103980).


test('?- curt80("You feel very cold",[descriptionTest])',[true(compound(_103608)),nondet]):-call(curt80("You feel very cold",[descriptionTest]),_103608).


test('?- curt80("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_103878)),nondet]):-call(curt80("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_103878).


test('?- curt80("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_103764)),nondet]):-call(curt80("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_103764).


test('?- curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_104376)),nondet]):-call(curt80("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_104376).


test('?- curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_104100)),nondet]):-call(curt80("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_104100).


test('?- curt80("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_103650)),nondet]):-call(curt80("You're in Worf's quarters",[descriptionTest]),_103650).


test('?- curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_104094)),nondet]):-call(curt80("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_104094).


test('?- curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_104508)),nondet]):-call(curt80("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_104508).


test('?- curt80("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_103716)),nondet]):-call(curt80("You emerge into the Enterprise gym",[descriptionTest]),_103716).


test('?- curt80("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_103818)),nondet]):-call(curt80("The room is quite large, with a soft grey floor",[descriptionTest]),_103818).


test('?- curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_104226)),nondet]):-call(curt80("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_104226).


test('?- curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_104190)),nondet]):-call(curt80("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_104190).


test('?- curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_103878)),nondet]):-call(curt80("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_103878).


test('?- curt80("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_103944)),nondet]):-call(curt80("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_103944).


test('?- curt80("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_104034)),nondet]):-call(curt80("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_104034).


test('?- curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_104328)),nondet]):-call(curt80("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_104328).


test('?- curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_104346)),nondet]):-call(curt80("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_104346).


test('?- curt80("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_103800)),nondet]):-call(curt80("Two large windows offer a great view of space",[descriptionTest]),_103800).


test('?- curt80("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_104052)),nondet]):-call(curt80("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_104052).


test('?- curt80("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_103728)),nondet]):-call(curt80("You're in the Enterprise science lab",[descriptionTest]),_103728).


test('?- curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_104118)),nondet]):-call(curt80("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_104118).


test('?- curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_104616)),nondet]):-call(curt80("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_104616).


test('?- curt80("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_103872)),nondet]):-call(curt80("A complex looking computer console is facing this machine",[descriptionTest]),_103872).


test('?- curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_104028)),nondet]):-call(curt80("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_104028).


test('?- curt80("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_103788)),nondet]):-call(curt80("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_103788).


test('?- curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_104022)),nondet]):-call(curt80("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_104022).


test('?- curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_104394)),nondet]):-call(curt80("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_104394).


test('?- curt80("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_104196)),nondet]):-call(curt80("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_104196).


test('?- curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_104592)),nondet]):-call(curt80("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_104592).


test('?- curt80("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_103794)),nondet]):-call(curt80("You're standing in Captain Picard's ready room",[descriptionTest]),_103794).


test('?- curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_104232)),nondet]):-call(curt80("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_104232).


test('?- curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_104136)),nondet]):-call(curt80("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_104136).


test('?- curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_104334)),nondet]):-call(curt80("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_104334).


test('?- curt80("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_103914)),nondet]):-call(curt80("This is where the Captain makes all of his important decisions",[descriptionTest]),_103914).


test('?- curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_104022)),nondet]):-call(curt80("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_104022).


test('?- curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_104334)),nondet]):-call(curt80("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_104334).


test('?- curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_104142)),nondet]):-call(curt80("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_104142).


test('?- curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_103938)),nondet]):-call(curt80("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_103938).


test('?- curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_104286)),nondet]):-call(curt80("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_104286).


test('?- curt80("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_103884)),nondet]):-call(curt80("This is where the ship's pilot and information officer sit",[descriptionTest]),_103884).


test('?- curt80("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_103806)),nondet]):-call(curt80("You're in the conference room of the Enterprise",[descriptionTest]),_103806).


test('?- curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_104352)),nondet]):-call(curt80("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_104352).


test('?- curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_103974)),nondet]):-call(curt80("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_103974).


test('?- curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_104070)),nondet]):-call(curt80("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_104070).


test('?- curt80("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_103902)),nondet]):-call(curt80("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_103902).


test('?- curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_20482)),nondet]):-call(curt80("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_20482).


test('?- curt80("no two owners eat pizza",[sanity])',[true(compound(_20474)),nondet]):-call(curt80("no two owners eat pizza",[sanity]),_20474).


test('?- curt80("no three owners eat pizza",[sanity])',[true(compound(_20474)),nondet]):-call(curt80("no three owners eat pizza",[sanity]),_20474).


test('?- curt80("no three owners eat the same pizza",[sanity])',[true(compound(_20476)),nondet]):-call(curt80("no three owners eat the same pizza",[sanity]),_20476).


test('?- curt80("no three owners eat the same kind of pizza",[sanity])',[true(compound(_20478)),nondet]):-call(curt80("no three owners eat the same kind of pizza",[sanity]),_20478).


test('?- curt80("no owners eat the same pizza",[sanity])',[true(compound(_20474)),nondet]):-call(curt80("no owners eat the same pizza",[sanity]),_20474).


test('?- curt80("no owners eat the same kind of pizza",[sanity])',[true(compound(_20476)),nondet]):-call(curt80("no owners eat the same kind of pizza",[sanity]),_20476).


test('?- curt80("there are 5 houses",[sanity])',[true(compound(_20472)),nondet]):-call(curt80("there are 5 houses",[sanity]),_20472).


test('?- curt80("there are not 5 houses",[sanity])',[true(compound(_20472)),nondet]):-call(curt80("there are not 5 houses",[sanity]),_20472).


test('?- curt80("there are not zero houses",[sanity])',[true(compound(_20474)),nondet]):-call(curt80("there are not zero houses",[sanity]),_20474).


test('?- curt80(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_20482)),nondet]):-call(curt80(noun_phrase("less than 2 owners"),[sanity,bug]),_20482).


test('?- curt80(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_20476)),nondet]):-call(curt80(noun_phrase("at most the 5 owners"),[sanity]),_20476).


test('?- curt80(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_20476)),nondet]):-call(curt80(noun_phrase("at most 5 owners"),[sanity]),_20476).


test('?- curt80(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_20476)),nondet]):-call(curt80(noun_phrase("less than 3 owners"),[sanity]),_20476).


test('?- curt80(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_20478)),nondet]):-call(curt80(noun_phrase("at most 50 percent of owners"),[sanity]),_20478).


test('?- curt80(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_20482)),nondet]):-call(curt80(noun_phrase("no three owners"),[sanity,no_working]),_20482).


test('?- curt80("terry writes a non-program.",[tell])',[true(compound(_20474)),nondet]):-call(curt80("terry writes a non-program.",[tell]),_20474).


test('?- curt80("every nonhuman programmer writes a program.",[tell])',[true(compound(_20478)),nondet]):-call(curt80("every nonhuman programmer writes a program.",[tell]),_20478).


test('?- curt80("every human programmer writes a not a program.",[tell])',[true(compound(_20478)),nondet]):-call(curt80("every human programmer writes a not a program.",[tell]),_20478).


test('?- curt80("every human programmer happily writes a not a program.",[tell])',[true(compound(_20480)),nondet]):-call(curt80("every human programmer happily writes a not a program.",[tell]),_20480).


:- end_tests(curt80).



:- begin_tests(e2c).



test('?- e2c("His friends are liked by hers.",[bad_juju,sanity])',[true(compound(_20524)),nondet]):-call(e2c("His friends are liked by hers.",[bad_juju,sanity]),_20524).


test('?- e2c("Her friends are not liked by his.",[bad_juju,sanity])',[true(compound(_20526)),nondet]):-call(e2c("Her friends are not liked by his.",[bad_juju,sanity]),_20526).


test('?- e2c("Do their friends like each other?",[bad_juju,feature])',[true(compound(_20526)),nondet]):-call(e2c("Do their friends like each other?",[bad_juju,feature]),_20526).


test('?- e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_20468),sanity])',[true(compound(_20530)),nondet]):-call(e2c("If ?X is rearing ?Y then ?X has ?Y.",[riddle(_20468),sanity]),_20530).


test('?- e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_20466),sanity])',[true(compound(_20528)),nondet]):-call(e2c("If ?X keeps ?Y then ?X has ?Y.",[riddle(_20466),sanity]),_20528).


test('?- e2c("There are 5 houses with five different colors.",[riddle(_20470),sanity])',[true(compound(_20532)),nondet]):-call(e2c("There are 5 houses with five different colors.",[riddle(_20470),sanity]),_20532).


test('?- e2c("There are 5 houses",[riddle_prep,sanity])',[true(compound(_20522)),nondet]):-call(e2c("There are 5 houses",[riddle_prep,sanity]),_20522).


test('?- e2c("Each house has a different color",[riddle_prep,sanity])',[true(compound(_20526)),nondet]):-call(e2c("Each house has a different color",[riddle_prep,sanity]),_20526).


test('?- e2c("In each house lives a person with a different nationality.",[riddle(_20474),sanity])',[true(compound(_20536)),nondet]):-call(e2c("In each house lives a person with a different nationality.",[riddle(_20474),sanity]),_20536).


test('?- e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity])',[true(compound(_20548)),nondet]):-call(e2c("These five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet.",[riddle(3),sanity]),_20548).


test('?- e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity])',[true(compound(_20536)),nondet]):-call(e2c("These five owners each drink a certain type of beverage.",[riddle(1),sanity]),_20536).


test('?- e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression])',[true(compound(_20534)),nondet]):-call(e2c("These five owners each smoke a certain brand of cigar.",[riddle(1),regression]),_20534).


test('?- e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression])',[true(compound(_20538)),nondet]):-call(e2c("These five owners each keep a certain pet.",[riddle(1),sanity,regression]),_20538).


test('?- e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity])',[true(compound(_20542)),nondet]):-call(e2c("No owners have the same pet, smoke the same brand of cigar or drink the same beverage.",[riddle(3),sanity]),_20542).


test('?- e2c("No owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_20534)),nondet]):-call(e2c("No owners have the same pet.",[riddle(1),sanity,regression]),_20534).


test('?- e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression])',[true(compound(_20538)),nondet]):-call(e2c("No owners smoke the same brand of cigar",[riddle(1),sanity,regression]),_20538).


test('?- e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity])',[true(compound(_20532)),nondet]):-call(e2c("No two owners drink the same kind of beverage.",[riddle(1),sanity]),_20532).


test('?- e2c("No two owners have the same pet.",[riddle(1),sanity,regression])',[true(compound(_20536)),nondet]):-call(e2c("No two owners have the same pet.",[riddle(1),sanity,regression]),_20536).


test('?- e2c("The brit lives in the red house.",[riddle(_20468),sanity])',[true(compound(_20530)),nondet]):-call(e2c("The brit lives in the red house.",[riddle(_20468),sanity]),_20530).


test('?- e2c("The swede keeps dogs as pets.",[riddle(_20466),sanity])',[true(compound(_20528)),nondet]):-call(e2c("The swede keeps dogs as pets.",[riddle(_20466),sanity]),_20528).


test('?- e2c("A dane drinks tea.",[riddle(_20464),sanity])',[true(compound(_20526)),nondet]):-call(e2c("A dane drinks tea.",[riddle(_20464),sanity]),_20526).


test('?- e2c("The green house is on the left of the white house.",[riddle(_20472),sanity])',[true(compound(_20534)),nondet]):-call(e2c("The green house is on the left of the white house.",[riddle(_20472),sanity]),_20534).


test('?- e2c("The green house\'s owner drinks coffee.",[riddle(_20468),sanity])',[true(compound(_20530)),nondet]):-call(e2c("The green house's owner drinks coffee.",[riddle(_20468),sanity]),_20530).


test('?- e2c("The person who smokes Pall Mall rears birds.",[riddle(_20470),sanity,regression])',[true(compound(_20538)),nondet]):-call(e2c("The person who smokes Pall Mall rears birds.",[riddle(_20470),sanity,regression]),_20538).


test('?- e2c("The owner of the yellow house smokes Dunhill.",[riddle(_20470),sanity])',[true(compound(_20532)),nondet]):-call(e2c("The owner of the yellow house smokes Dunhill.",[riddle(_20470),sanity]),_20532).


test('?- e2c("The man living in the center house drinks milk.",[riddle(_20472),sanity])',[true(compound(_20534)),nondet]):-call(e2c("The man living in the center house drinks milk.",[riddle(_20472),sanity]),_20534).


test('?- e2c("The Norwegian lives in the first house .",[riddle(_20470),sanity])',[true(compound(_20532)),nondet]):-call(e2c("The Norwegian lives in the first house .",[riddle(_20470),sanity]),_20532).


test('?- e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_20476),sanity])',[true(compound(_20538)),nondet]):-call(e2c("The man who smokes Blends lives next to the one who keeps cats   .",[riddle(_20476),sanity]),_20538).


test('?- e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_20476),sanity])',[true(compound(_20538)),nondet]):-call(e2c("The man who keeps horses lives next to the man who smokes Dunhill.",[riddle(_20476),sanity]),_20538).


test('?- e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_20470),sanity])',[true(compound(_20532)),nondet]):-call(e2c("The owner who smokes BlueMaster drinks beer.",[riddle(_20470),sanity]),_20532).


test('?- e2c("The German smokes Prince.",[riddle(_20466),sanity])',[true(compound(_20528)),nondet]):-call(e2c("The German smokes Prince.",[riddle(_20466),sanity]),_20528).


test('?- e2c("The Norwegian lives next to the blue house.",[riddle(_20470),sanity])',[true(compound(_20532)),nondet]):-call(e2c("The Norwegian lives next to the blue house.",[riddle(_20470),sanity]),_20532).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_20474),sanity])',[true(compound(_20536)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[riddle(_20474),sanity]),_20536).


test('?- e2c("Who owns the fish?",[riddle(_20464),sanity])',[true(compound(_20526)),nondet]):-call(e2c("Who owns the fish?",[riddle(_20464),sanity]),_20526).


test('?- e2c("One woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("One woman paints.",[quants]),_20516).


test('?- e2c("No woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("No woman paints.",[quants]),_20516).


test('?- e2c("Some woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Some woman paints.",[quants]),_20516).


test('?- e2c("Every woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Every woman paints.",[quants]),_20516).


test('?- e2c("Each woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Each woman paints.",[quants]),_20516).


test('?- e2c("Any woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Any woman paints.",[quants]),_20516).


test('?- e2c("The woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("The woman paints.",[quants]),_20516).


test('?- e2c("The not woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("The not woman paints.",[quants]),_20516).


test('?- e2c("Not a woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Not a woman paints.",[quants]),_20516).


test('?- e2c("Not one woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Not one woman paints.",[quants]),_20516).


test('?- e2c("Not no woman paints.",[quants_neg_postcond])',[true(compound(_20516)),nondet]):-call(e2c("Not no woman paints.",[quants_neg_postcond]),_20516).


test('?- e2c("Not some woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Not some woman paints.",[quants]),_20516).


test('?- e2c("Not every woman paints.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("Not every woman paints.",[quants]),_20518).


test('?- e2c("Not each woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Not each woman paints.",[quants]),_20516).


test('?- e2c("Not any woman paints.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Not any woman paints.",[quants]),_20516).


test('?- e2c("The women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("The women paint.",[quants]),_20516).


test('?- e2c("Women paint.",[quants])',[true(compound(_20514)),nondet]):-call(e2c("Women paint.",[quants]),_20514).


test('?- e2c("Some women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Some women paint.",[quants]),_20516).


test('?- e2c("No women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("No women paint.",[quants]),_20516).


test('?- e2c("All women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("All women paint.",[quants]),_20516).


test('?- e2c("Any women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Any women paint.",[quants]),_20516).


test('?- e2c("Not women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Not women paint.",[quants]),_20516).


test('?- e2c("Not no women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Not no women paint.",[quants]),_20516).


test('?- e2c("Not all women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Not all women paint.",[quants]),_20516).


test('?- e2c("Not any women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Not any women paint.",[quants]),_20516).


test('?- e2c("The three women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("The three women paint.",[quants]),_20516).


test('?- e2c("Three women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Three women paint.",[quants]),_20516).


test('?- e2c("Some three women paint.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("Some three women paint.",[quants]),_20518).


test('?- e2c("No three women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("No three women paint.",[quants]),_20516).


test('?- e2c("Every three women paint.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("Every three women paint.",[quants]),_20518).


test('?- e2c("All three women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("All three women paint.",[quants]),_20516).


test('?- e2c("Any three women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Any three women paint.",[quants]),_20516).


test('?- e2c("Not three women paint.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("Not three women paint.",[quants]),_20516).


test('?- e2c("Not some three women paint.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("Not some three women paint.",[quants]),_20518).


test('?- e2c("Not no three women paint.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("Not no three women paint.",[quants]),_20518).


test('?- e2c("Not all three women paint.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("Not all three women paint.",[quants]),_20518).


test('?- e2c("Not every three women paint.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("Not every three women paint.",[quants]),_20518).


test('?- e2c("Not any three women paint.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("Not any three women paint.",[quants]),_20518).


test('?- e2c("Not three of the women paint.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("Not three of the women paint.",[quants]),_20518).


test('?- e2c("Not some of the three women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("Not some of the three women paint.",[quants]),_20520).


test('?- e2c("Not no three of the women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("Not no three of the women paint.",[quants]),_20520).


test('?- e2c("Not all three of the women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("Not all three of the women paint.",[quants]),_20520).


test('?- e2c("Not every three of the women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("Not every three of the women paint.",[quants]),_20520).


test('?- e2c("Not any three of the women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("Not any three of the women paint.",[quants]),_20520).


test('?- e2c("Not three of the four women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("Not three of the four women paint.",[quants]),_20520).


test('?- e2c("Not none of three out of the four women paint.",[quants])',[true(compound(_20522)),nondet]):-call(e2c("Not none of three out of the four women paint.",[quants]),_20522).


test('?- e2c("Not all three of the four women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("Not all three of the four women paint.",[quants]),_20520).


test('?- e2c("Not any three of the four women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("Not any three of the four women paint.",[quants]),_20520).


test('?- e2c("Three of the four women paint.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("Three of the four women paint.",[quants]),_20518).


test('?- e2c("Three out of the four women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("Three out of the four women paint.",[quants]),_20520).


test('?- e2c("All three of the four women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("All three of the four women paint.",[quants]),_20520).


test('?- e2c("Any three of the four women paint.",[quants])',[true(compound(_20520)),nondet]):-call(e2c("Any three of the four women paint.",[quants]),_20520).


test('?- e2c("I paint",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("I paint",[pronoun]),_20514).


test('?- e2c("you paint",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("you paint",[pronoun]),_20514).


test('?- e2c("We paint",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("We paint",[pronoun]),_20514).


test('?- e2c("None paint",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("None paint",[pronoun]),_20514).


test('?- e2c("They paint",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("They paint",[pronoun]),_20514).


test('?- e2c("Some paint",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("Some paint",[pronoun]),_20514).


test('?- e2c("It paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("It paints",[pronoun]),_20514).


test('?- e2c("he paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("he paints",[pronoun]),_20514).


test('?- e2c("She paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("She paints",[pronoun]),_20514).


test('?- e2c("Someone paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("Someone paints",[pronoun]),_20514).


test('?- e2c("Anybody paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("Anybody paints",[pronoun]),_20514).


test('?- e2c("Anyone paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("Anyone paints",[pronoun]),_20514).


test('?- e2c("Anything paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Anything paints",[pronoun]),_20516).


test('?- e2c("Everybody paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Everybody paints",[pronoun]),_20516).


test('?- e2c("Everyone paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Everyone paints",[pronoun]),_20516).


test('?- e2c("Everything paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Everything paints",[pronoun]),_20516).


test('?- e2c("Nobody paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("Nobody paints",[pronoun]),_20514).


test('?- e2c("No one paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("No one paints",[pronoun]),_20514).


test('?- e2c("Nothing paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("Nothing paints",[pronoun]),_20514).


test('?- e2c("One paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("One paints",[pronoun]),_20514).


test('?- e2c("Somebody paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Somebody paints",[pronoun]),_20516).


test('?- e2c("Something paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Something paints",[pronoun]),_20516).


test('?- e2c("Not anybody paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Not anybody paints",[pronoun]),_20516).


test('?- e2c("Not anyone paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Not anyone paints",[pronoun]),_20516).


test('?- e2c("Not anything paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Not anything paints",[pronoun]),_20516).


test('?- e2c("Not everybody paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Not everybody paints",[pronoun]),_20516).


test('?- e2c("Not everyone paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Not everyone paints",[pronoun]),_20516).


test('?- e2c("Not everything paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Not everything paints",[pronoun]),_20516).


test('?- e2c("Not nothing paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Not nothing paints",[pronoun]),_20516).


test('?- e2c("Not one paints",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("Not one paints",[pronoun]),_20514).


test('?- e2c("Not somebody paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Not somebody paints",[pronoun]),_20516).


test('?- e2c("Not something paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("Not something paints",[pronoun]),_20516).


test('?- e2c("She likes i",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("She likes i",[pronoun]),_20514).


test('?- e2c("She likes me",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("She likes me",[pronoun]),_20514).


test('?- e2c("She likes you",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("She likes you",[pronoun]),_20514).


test('?- e2c("She likes it",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("She likes it",[pronoun]),_20514).


test('?- e2c("She likes us",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("She likes us",[pronoun]),_20514).


test('?- e2c("She likes them",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("She likes them",[pronoun]),_20514).


test('?- e2c("She likes no one",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("She likes no one",[pronoun]),_20516).


test('?- e2c("She likes none",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("She likes none",[pronoun]),_20514).


test('?- e2c("She likes him",[pronoun])',[true(compound(_20514)),nondet]):-call(e2c("She likes him",[pronoun]),_20514).


test('?- e2c("She likes herself",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("She likes herself",[pronoun]),_20516).


test('?- e2c("She likes himself",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("She likes himself",[pronoun]),_20516).


test('?- e2c("It is us that paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("It is us that paints",[pronoun]),_20516).


test('?- e2c("It is them that paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("It is them that paints",[pronoun]),_20516).


test('?- e2c("It is he that paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("It is he that paints",[pronoun]),_20516).


test('?- e2c("It is she that paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("It is she that paints",[pronoun]),_20516).


test('?- e2c("It is her that paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("It is her that paints",[pronoun]),_20516).


test('?- e2c("It is him that paints",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("It is him that paints",[pronoun]),_20516).


test('?- e2c("We are us that paint",[pronoun])',[true(compound(_20516)),nondet]):-call(e2c("We are us that paint",[pronoun]),_20516).


test('?- e2c("We are all of us that paint",[pronoun])',[true(compound(_20518)),nondet]):-call(e2c("We are all of us that paint",[pronoun]),_20518).


test('?- e2c("It is everybody that paints",[pronoun])',[true(compound(_20518)),nondet]):-call(e2c("It is everybody that paints",[pronoun]),_20518).


test('?- e2c("Every man that paints likes monet.",[bratko])',[true(compound(_20520)),nondet]):-call(e2c("Every man that paints likes monet.",[bratko]),_20520).


test('?- e2c("A woman that admires John paints.",[bratko])',[true(compound(_20520)),nondet]):-call(e2c("A woman that admires John paints.",[bratko]),_20520).


test('?- e2c("Every woman that likes a man that admires monet paints.",[bratko])',[true(compound(_20526)),nondet]):-call(e2c("Every woman that likes a man that admires monet paints.",[bratko]),_20526).


test('?- e2c("John likes Annie.",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("John likes Annie.",[bratko]),_20516).


test('?- e2c("Annie likes a man that admires monet.",[bratko])',[true(compound(_20520)),nondet]):-call(e2c("Annie likes a man that admires monet.",[bratko]),_20520).


test('?- e2c("Bertrand Russell wrote principia.",[bratko])',[true(compound(_20520)),nondet]):-call(e2c("Bertrand Russell wrote principia.",[bratko]),_20520).


test('?- e2c("An author wrote principia.",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("An author wrote principia.",[bratko]),_20518).


test('?- e2c("Iraq is a country.",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("Iraq is a country.",[bratko]),_20516).


test('?- e2c("A happy author wrote principia.",[bratko])',[true(compound(_20520)),nondet]):-call(e2c("A happy author wrote principia.",[bratko]),_20520).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_20516).


test('?- e2c("Bertrand is an author.",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("Bertrand is an author.",[bratko]),_20516).


test('?- e2c("Is Bertrand an author?",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("Is Bertrand an author?",[bratko]),_20516).


test('?- e2c("Every author is a programmer.",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("Every author is a programmer.",[bratko]),_20518).


test('?- e2c("Is Bertrand an programmer?",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("Is Bertrand an programmer?",[bratko]),_20518).


test('?- e2c("What is a author?",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("What is a author?",[bratko]),_20516).


test('?- e2c("What did Bertrand write?",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("What did Bertrand write?",[bratko]),_20518).


test('?- e2c("What is a book?",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("What is a book?",[bratko]),_20516).


test('?- e2c("Principia is a book.",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("Principia is a book.",[bratko]),_20516).


test('?- e2c("Bertrand is Bertrand.",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("Bertrand is Bertrand.",[bratko]),_20516).


test('?- e2c("Shrdlu halts.",[bratko])',[true(compound(_20514)),nondet]):-call(e2c("Shrdlu halts.",[bratko]),_20514).


test('?- e2c("Every student wrote a program.",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("Every student wrote a program.",[bratko]),_20518).


test('?- e2c("Terry writes a program.",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("Terry writes a program.",[bratko]),_20518).


test('?- e2c("Terry writes a program that halts.",[bratko])',[true(compound(_20520)),nondet]):-call(e2c("Terry writes a program that halts.",[bratko]),_20520).


test('?- e2c("An author of every book wrote a program.",[bratko])',[true(compound(_20522)),nondet]):-call(e2c("An author of every book wrote a program.",[bratko]),_20522).


test('?- e2c("A man hapilly maried paints.",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("A man hapilly maried paints.",[bratko]),_20518).


test('?- e2c("A hapilly maried man paints.",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("A hapilly maried man paints.",[bratko]),_20518).


test('?- e2c("A man who knows paints.",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("A man who knows paints.",[bratko]),_20518).


test('?- e2c("A man gives something.",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("A man gives something.",[bratko]),_20516).


test('?- e2c("A man gives his word.",[bratko])',[true(compound(_20516)),nondet]):-call(e2c("A man gives his word.",[bratko]),_20516).


test('?- e2c("A man of his word paints.",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("A man of his word paints.",[bratko]),_20518).


test('?- e2c("A man paints.",[bratko])',[true(compound(_20514)),nondet]):-call(e2c("A man paints.",[bratko]),_20514).


test('?- e2c("A man that paints paints.",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("A man that paints paints.",[bratko]),_20518).


test('?- e2c("A man walks.",[bratko])',[true(compound(_20514)),nondet]):-call(e2c("A man walks.",[bratko]),_20514).


test('?- e2c("A man that walks paints.",[bratko])',[true(compound(_20518)),nondet]):-call(e2c("A man that walks paints.",[bratko]),_20518).


test('?- e2c("It halts.",[bratko])',[true(compound(_20514)),nondet]):-call(e2c("It halts.",[bratko]),_20514).


test('?- e2c("A man of his word that walks paints.",[bratko])',[true(compound(_20520)),nondet]):-call(e2c("A man of his word that walks paints.",[bratko]),_20520).


test('?- e2c("The cost of what the product is changes.",[bratko])',[true(compound(_20522)),nondet]):-call(e2c("The cost of what the product is changes.",[bratko]),_20522).


test('?- e2c("We need a virtual machine server.",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("We need a virtual machine server.",[aindy]),_20520).


test('?- e2c("The virtual machine server should have several VMs.",[aindy])',[true(compound(_20524)),nondet]):-call(e2c("The virtual machine server should have several VMs.",[aindy]),_20524).


test('?- e2c("One VM should be the POSI VM.",[aindy])',[true(compound(_20518)),nondet]):-call(e2c("One VM should be the POSI VM.",[aindy]),_20518).


test('?- e2c("One VM should be the FRDCSA.org VM.",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("One VM should be the FRDCSA.org VM.",[aindy]),_20520).


test('?- e2c("One VM should be the mail server.",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("One VM should be the mail server.",[aindy]),_20520).


test('?- e2c("One computer should be the backup server.",[aindy])',[true(compound(_20522)),nondet]):-call(e2c("One computer should be the backup server.",[aindy]),_20522).


test('?- e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy])',[true(compound(_20538)),nondet]):-call(e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.",[aindy]),_20538).


test('?- e2c("I need a fast computer for work.",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("I need a fast computer for work.",[aindy]),_20520).


test('?- e2c("I wouldn\'t mind a windows computer for various tasks, but it\'s not necessary.",[aindy])',[true(compound(_20530)),nondet]):-call(e2c("I wouldn't mind a windows computer for various tasks, but it's not necessary.",[aindy]),_20530).


test('?- e2c("I need a dedicated computer for network security research.",[aindy])',[true(compound(_20526)),nondet]):-call(e2c("I need a dedicated computer for network security research.",[aindy]),_20526).


test('?- e2c("I need a machine to run Tails on.",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("I need a machine to run Tails on.",[aindy]),_20520).


test('?- e2c("I need a machine off the network for airgap security.",[aindy])',[true(compound(_20524)),nondet]):-call(e2c("I need a machine off the network for airgap security.",[aindy]),_20524).


test('?- e2c("One VM should be the game server for running game development projects.",[aindy])',[true(compound(_20530)),nondet]):-call(e2c("One VM should be the game server for running game development projects.",[aindy]),_20530).


test('?- e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy])',[true(compound(_20524)),nondet]):-call(e2c("I can repurpose justin.frdcsa.org to do AI work.",[aindy]),_20524).


test('?- e2c("I could read about how to build a private watson.",[aindy])',[true(compound(_20524)),nondet]):-call(e2c("I could read about how to build a private watson.",[aindy]),_20524).


test('?- e2c("Need backups.",[aindy])',[true(compound(_20514)),nondet]):-call(e2c("Need backups.",[aindy]),_20514).


test('?- e2c("Practice setting up backups of a machine to a different machine.",[aindy])',[true(compound(_20528)),nondet]):-call(e2c("Practice setting up backups of a machine to a different machine.",[aindy]),_20528).


test('?- e2c("Set up schedules for updating the software on all machines.",[aindy])',[true(compound(_20526)),nondet]):-call(e2c("Set up schedules for updating the software on all machines.",[aindy]),_20526).


test('?- e2c("Read books on server room layout.",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("Read books on server room layout.",[aindy]),_20520).


test('?- e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy])',[true(compound(_20528)),nondet]):-call(e2c("I need a computer to set hadoop on and run NLP virtual machines on.",[aindy]),_20528).


test('?- e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy])',[true(compound(_20530)),nondet]):-call(e2c("I need a computer to run all of the responsibilities of my private computers.",[aindy]),_20530).


test('?- e2c("I want a gaming computer.  Do I?",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("I want a gaming computer.  Do I?",[aindy]),_20520).


test('?- e2c("I want a windows 7 computer for work.",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("I want a windows 7 computer for work.",[aindy]),_20520).


test('?- e2c("I want a fast linux computer for work.",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("I want a fast linux computer for work.",[aindy]),_20520).


test('?- e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy])',[true(compound(_20540)),nondet]):-call(e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!",[aindy]),_20540).


test('?- e2c("I could install a fresh operating system on justin for work.",[aindy])',[true(compound(_20526)),nondet]):-call(e2c("I could install a fresh operating system on justin for work.",[aindy]),_20526).


test('?- e2c("I probably want a separate git computer.",[aindy])',[true(compound(_20522)),nondet]):-call(e2c("I probably want a separate git computer.",[aindy]),_20522).


test('?- e2c("I need to start buying servers.",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("I need to start buying servers.",[aindy]),_20520).


test('?- e2c("I want a rackmount case for servers.",[aindy])',[true(compound(_20520)),nondet]):-call(e2c("I want a rackmount case for servers.",[aindy]),_20520).


test('?- e2c("Each african country is bordered by 2 oceans.",[chat80(tell)])',[true(compound(_20526)),nondet]):-call(e2c("Each african country is bordered by 2 oceans.",[chat80(tell)]),_20526).


test('?- e2c("2 oceans border each african country.",[chat80(tell)])',[true(compound(_20524)),nondet]):-call(e2c("2 oceans border each african country.",[chat80(tell)]),_20524).


test('?- e2c("There are 10 large cars.",[quants])',[true(compound(_20518)),nondet]):-call(e2c("There are 10 large cars.",[quants]),_20518).


test('?- e2c("There are 10 oceans.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("There are 10 oceans.",[quants]),_20516).


test('?- e2c("There are 10 women.",[quants])',[true(compound(_20516)),nondet]):-call(e2c("There are 10 women.",[quants]),_20516).


test('?- e2c("An ocean borders an African country.",[chat80(tell)])',[true(compound(_20524)),nondet]):-call(e2c("An ocean borders an African country.",[chat80(tell)]),_20524).


test('?- e2c("What is the ocean that borders african countries and that borders asian countries?",[tell])',[true(compound(_20532)),nondet]):-call(e2c("What is the ocean that borders african countries and that borders asian countries?",[tell]),_20532).


test('?- e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell])',[true(compound(_20534)),nondet]):-call(e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.",[tell]),_20534).


test('?- e2c("Bertrand wrote a book.",[bratko(book)])',[true(compound(_20520)),nondet]):-call(e2c("Bertrand wrote a book.",[bratko(book)]),_20520).


test('?- e2c("Bertrand wrote nothing.",[bratko(book)])',[true(compound(_20522)),nondet]):-call(e2c("Bertrand wrote nothing.",[bratko(book)]),_20522).


test('?- e2c("Bertrand wrote.",[bratko(book)])',[true(compound(_20520)),nondet]):-call(e2c("Bertrand wrote.",[bratko(book)]),_20520).


test('?- e2c("Bertrand wrote a book about Gottlob.",[bratko(book)])',[true(compound(_20524)),nondet]):-call(e2c("Bertrand wrote a book about Gottlob.",[bratko(book)]),_20524).


test('?- e2c("Bertrand wrote about Gottlob.",[bratko(book)])',[true(compound(_20522)),nondet]):-call(e2c("Bertrand wrote about Gottlob.",[bratko(book)]),_20522).


test('?- e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)])',[true(compound(_20524)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob.",[bratko(book)]),_20524).


test('?- e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)])',[true(compound(_20526)),nondet]):-call(e2c("Bertrand wrote nothing about Gottlob to Fred.",[bratko(book)]),_20526).


test('?- e2c("What did alfred write to Bertrand?",[bratko(book)])',[true(compound(_20524)),nondet]):-call(e2c("What did alfred write to Bertrand?",[bratko(book)]),_20524).


test('?- e2c("Alfred wrote a letter.",[bratko(book)])',[true(compound(_20520)),nondet]):-call(e2c("Alfred wrote a letter.",[bratko(book)]),_20520).


test('?- e2c("Alfred wrote a letter to Bertrand.",[bratko(book)])',[true(compound(_20524)),nondet]):-call(e2c("Alfred wrote a letter to Bertrand.",[bratko(book)]),_20524).


test('?- e2c("Alfred wrote something to Bertrand.",[bratko(book)])',[true(compound(_20524)),nondet]):-call(e2c("Alfred wrote something to Bertrand.",[bratko(book)]),_20524).


test('?- e2c("Alfred wrote to Bertrand.",[bratko(book)])',[true(compound(_20522)),nondet]):-call(e2c("Alfred wrote to Bertrand.",[bratko(book)]),_20522).


test('?- e2c("Alfred wrote to Bertrand a letter.",[bratko(book)])',[true(compound(_20524)),nondet]):-call(e2c("Alfred wrote to Bertrand a letter.",[bratko(book)]),_20524).


test('?- e2c("Alfred wrote Bertrand a letter.",[bratko(book)])',[true(compound(_20524)),nondet]):-call(e2c("Alfred wrote Bertrand a letter.",[bratko(book)]),_20524).


test('?- e2c("Who did alfred write a letter to?",[bratko(book)])',[true(compound(_20524)),nondet]):-call(e2c("Who did alfred write a letter to?",[bratko(book)]),_20524).


test('?- e2c("Alfred gave it.",[bratko(book)])',[true(compound(_20520)),nondet]):-call(e2c("Alfred gave it.",[bratko(book)]),_20520).


test('?- e2c("Alfred gave a book.",[bratko(book)])',[true(compound(_20520)),nondet]):-call(e2c("Alfred gave a book.",[bratko(book)]),_20520).


test('?- e2c("a pride of lions paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a pride of lions paint",[of]),_20516).


test('?- e2c("a flock of birds paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a flock of birds paint",[of]),_20516).


test('?- e2c("a litter of pups paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a litter of pups paint",[of]),_20516).


test('?- e2c("a prickle of porcupines paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a prickle of porcupines paint",[of]),_20518).


test('?- e2c("a litter of cubs paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a litter of cubs paint",[of]),_20516).


test('?- e2c("a pack of dogs paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a pack of dogs paint",[of]),_20516).


test('?- e2c("a colony of beavers paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a colony of beavers paint",[of]),_20518).


test('?- e2c("a gaggle of geese paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a gaggle of geese paint",[of]),_20518).


test('?- e2c("a family of otters paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a family of otters paint",[of]),_20518).


test('?- e2c("a huddle of walruses paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a huddle of walruses paint",[of]),_20518).


test('?- e2c("a herd of deer paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a herd of deer paint",[of]),_20516).


test('?- e2c("a culture of bacteria paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a culture of bacteria paint",[of]),_20518).


test('?- e2c("a swarm of bees paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a swarm of bees paint",[of]),_20516).


test('?- e2c("a bed of clams paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a bed of clams paint",[of]),_20516).


test('?- e2c("a school of cod paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a school of cod paint",[of]),_20516).


test('?- e2c("a herd of dinosaurs paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a herd of dinosaurs paint",[of]),_20518).


test('?- e2c("a mess of iguanas paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a mess of iguanas paint",[of]),_20518).


test('?- e2c("a mob of wombats paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a mob of wombats paint",[of]),_20516).


test('?- e2c("a pod of pelicans paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a pod of pelicans paint",[of]),_20518).


test('?- e2c("a troop of boy scouts paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a troop of boy scouts paint",[of]),_20518).


test('?- e2c("a team of athletes paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a team of athletes paint",[of]),_20518).


test('?- e2c("a panel of experts paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a panel of experts paint",[of]),_20518).


test('?- e2c("a crew of sailors paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a crew of sailors paint",[of]),_20518).


test('?- e2c("a band of robbers paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a band of robbers paint",[of]),_20518).


test('?- e2c("a troupe of performers paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a troupe of performers paint",[of]),_20518).


test('?- e2c("a crowd of onlookers paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a crowd of onlookers paint",[of]),_20518).


test('?- e2c("a curse of painters paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("a curse of painters paint",[of]),_20518).


test('?- e2c("a fleet of cars paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a fleet of cars paint",[of]),_20516).


test('?- e2c("a pair of shoes paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a pair of shoes paint",[of]),_20516).


test('?- e2c("a fleet of ships paint",[of])',[true(compound(_20516)),nondet]):-call(e2c("a fleet of ships paint",[of]),_20516).


test('?- e2c("an anthology of stories paint",[of])',[true(compound(_20518)),nondet]):-call(e2c("an anthology of stories paint",[of]),_20518).


test('?- e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest])',[true(compound(_103874)),nondet]):-call(e2c("Lieutenant Commander Geordi LaForge is standing here",[descriptionTest]),_103874).


test('?- e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest])',[true(compound(_103844)),nondet]):-call(e2c("Geordi is the Chief Engineer of the Enterprise",[descriptionTest]),_103844).


test('?- e2c("He\'s blind, so he wears a special VISOR that lets him see things",[descriptionTest])',[true(compound(_103982)),nondet]):-call(e2c("He's blind, so he wears a special VISOR that lets him see things",[descriptionTest]),_103982).


test('?- e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest])',[true(compound(_103826)),nondet]):-call(e2c("Lieutenant Worf is here, looking pretty mean",[descriptionTest]),_103826).


test('?- e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest])',[true(compound(_103874)),nondet]):-call(e2c("Worf is the first Klingon to have joined Starfleet",[descriptionTest]),_103874).


test('?- e2c("He\'s Chief of Security of the Enterprise, and he\'s plenty strong",[descriptionTest])',[true(compound(_103970)),nondet]):-call(e2c("He's Chief of Security of the Enterprise, and he's plenty strong",[descriptionTest]),_103970).


test('?- e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest])',[true(compound(_103928)),nondet]):-call(e2c("Lieutenant Commander Data is here, trying to be more human",[descriptionTest]),_103928).


test('?- e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest])',[true(compound(_104120)),nondet]):-call(e2c("Data is the only android on the Enterprise, and the only android in all of Starfleet",[descriptionTest]),_104120).


test('?- e2c("He stowed super-human strength, and is extremely tough",[descriptionTest])',[true(compound(_103892)),nondet]):-call(e2c("He stowed super-human strength, and is extremely tough",[descriptionTest]),_103892).


test('?- e2c("Logged on player character",[descriptionTest])',[true(compound(_103700)),nondet]):-call(e2c("Logged on player character",[descriptionTest]),_103700).


test('?- e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest])',[true(compound(_103958)),nondet]):-call(e2c("Lieutenant Beverly Crusher is here, looking for someone to heal",[descriptionTest]),_103958).


test('?- e2c("Doctor Crusher is the Enterprise\'s Chief Medical Officer",[descriptionTest])',[true(compound(_103904)),nondet]):-call(e2c("Doctor Crusher is the Enterprise's Chief Medical Officer",[descriptionTest]),_103904).


test('?- e2c("Wesley is her son",[descriptionTest])',[true(compound(_103646)),nondet]):-call(e2c("Wesley is her son",[descriptionTest]),_103646).


test('?- e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest])',[true(compound(_104294)),nondet]):-call(e2c("Her husband was killed years ago in an accident on another starship which was also commanded by Captain Picard",[descriptionTest]),_104294).


test('?- e2c("Counselor Deanna Troi is here",[descriptionTest])',[true(compound(_103724)),nondet]):-call(e2c("Counselor Deanna Troi is here",[descriptionTest]),_103724).


test('?- e2c("Counselor Troi is the ship\'s main counselor",[descriptionTest])',[true(compound(_103820)),nondet]):-call(e2c("Counselor Troi is the ship's main counselor",[descriptionTest]),_103820).


test('?- e2c("She\'s half betazoid, which means that she can read people\'s minds",[descriptionTest])',[true(compound(_103976)),nondet]):-call(e2c("She's half betazoid, which means that she can read people's minds",[descriptionTest]),_103976).


test('?- e2c("Commander William Riker is here, staring at you",[descriptionTest])',[true(compound(_103850)),nondet]):-call(e2c("Commander William Riker is here, staring at you",[descriptionTest]),_103850).


test('?- e2c("Commander Riker is the Enterprise\'s first officer",[descriptionTest])',[true(compound(_103856)),nondet]):-call(e2c("Commander Riker is the Enterprise's first officer",[descriptionTest]),_103856).


test('?- e2c("He\'s in charge of keeping the crew in line",[descriptionTest])',[true(compound(_103826)),nondet]):-call(e2c("He's in charge of keeping the crew in line",[descriptionTest]),_103826).


test('?- e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest])',[true(compound(_103892)),nondet]):-call(e2c("Captain Jean-Luc Picard is standing here, watching you",[descriptionTest]),_103892).


test('?- e2c("Captain Picard is a very important man",[descriptionTest])',[true(compound(_103790)),nondet]):-call(e2c("Captain Picard is a very important man",[descriptionTest]),_103790).


test('?- e2c("He\'s in charge of Starfleet\'s flagship, the Enterprise",[descriptionTest])',[true(compound(_103892)),nondet]):-call(e2c("He's in charge of Starfleet's flagship, the Enterprise",[descriptionTest]),_103892).


test('?- e2c("He\'s very smart, and very wise",[descriptionTest])',[true(compound(_103736)),nondet]):-call(e2c("He's very smart, and very wise",[descriptionTest]),_103736).


test('?- e2c("Don\'t mess with him!",[descriptionTest])',[true(compound(_103664)),nondet]):-call(e2c("Don't mess with him!",[descriptionTest]),_103664).


test('?- e2c("Guinan is here, tending the bar",[descriptionTest])',[true(compound(_103742)),nondet]):-call(e2c("Guinan is here, tending the bar",[descriptionTest]),_103742).


test('?- e2c("Guinan is a strange being",[descriptionTest])',[true(compound(_103700)),nondet]):-call(e2c("Guinan is a strange being",[descriptionTest]),_103700).


test('?- e2c("She\'s lived for thousands of years and experienced many things, but now she\'s decided to work on the Enterprise as a bartender",[descriptionTest])',[true(compound(_104408)),nondet]):-call(e2c("She's lived for thousands of years and experienced many things, but now she's decided to work on the Enterprise as a bartender",[descriptionTest]),_104408).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somewhere",[descriptionTest])',[true(compound(_103910)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somewhere",[descriptionTest]),_103910).


test('?- e2c("Chief O\'Brien is the transporter chief on the Enterprise",[descriptionTest])',[true(compound(_103910)),nondet]):-call(e2c("Chief O'Brien is the transporter chief on the Enterprise",[descriptionTest]),_103910).


test('?- e2c("It\'s his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest])',[true(compound(_104210)),nondet]):-call(e2c("It's his job to make sure everyone arrives(and leaves) in one piece, instead of trillions of atoms",[descriptionTest]),_104210).


test('?- e2c("Chief O\'Brien is here, waiting to teleport you somwhere",[descriptionTest])',[true(compound(_103904)),nondet]):-call(e2c("Chief O'Brien is here, waiting to teleport you somwhere",[descriptionTest]),_103904).


test('?- e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest])',[true(compound(_103928)),nondet]):-call(e2c("Wesley Crusher is here, eagerly trying to earn your praise",[descriptionTest]),_103928).


test('?- e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest])',[true(compound(_104198)),nondet]):-call(e2c("Wesley Crusher is not even an official officer, but he serves as an acting Ensign on the bridge",[descriptionTest]),_104198).


test('?- e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest])',[true(compound(_104120)),nondet]):-call(e2c("He got this position only because Captain Picard feels guilty about killing his father",[descriptionTest]),_104120).


test('?- e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest])',[true(compound(_103910)),nondet]):-call(e2c("Livingston the fish is here, swimming about in his tank",[descriptionTest]),_103910).


test('?- e2c("Livingston is Captain Picard\'s pet fish",[descriptionTest])',[true(compound(_103790)),nondet]):-call(e2c("Livingston is Captain Picard's pet fish",[descriptionTest]),_103790).


test('?- e2c("He\'s some sort of exotic breed, and he\'s expensive to feed and keep alive",[descriptionTest])',[true(compound(_104042)),nondet]):-call(e2c("He's some sort of exotic breed, and he's expensive to feed and keep alive",[descriptionTest]),_104042).


test('?- e2c("Spot, Data\'s pet cat, is sitting here looking at you",[descriptionTest])',[true(compound(_103892)),nondet]):-call(e2c("Spot, Data's pet cat, is sitting here looking at you",[descriptionTest]),_103892).


test('?- e2c("Spot is Data\'s orange coloured cat",[descriptionTest])',[true(compound(_103760)),nondet]):-call(e2c("Spot is Data's orange coloured cat",[descriptionTest]),_103760).


test('?- e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest])',[true(compound(_104282)),nondet]):-call(e2c("Data is always trying to become more human, so he thinks that having a pet might help him achieve his goal",[descriptionTest]),_104282).


test('?- e2c("A nervous looking ensign is standing here, watching you",[descriptionTest])',[true(compound(_103904)),nondet]):-call(e2c("A nervous looking ensign is standing here, watching you",[descriptionTest]),_103904).


test('?- e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest])',[true(compound(_103886)),nondet]):-call(e2c("These ensigns make up the backbone of the Enterprise",[descriptionTest]),_103886).


test('?- e2c("They clean things, do jobs the higher ups won\'t even consider doing, and get yelled at all the time",[descriptionTest])',[true(compound(_104228)),nondet]):-call(e2c("They clean things, do jobs the higher ups won't even consider doing, and get yelled at all the time",[descriptionTest]),_104228).


test('?- e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest])',[true(compound(_103874)),nondet]):-call(e2c("Alexander Rozhenko is here, practicing laughing hour",[descriptionTest]),_103874).


test('?- e2c("Alexander Rozhenko is Worf\'s son",[descriptionTest])',[true(compound(_103742)),nondet]):-call(e2c("Alexander Rozhenko is Worf's son",[descriptionTest]),_103742).


test('?- e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest])',[true(compound(_104024)),nondet]):-call(e2c("His mother was half human and half Klingon, so Alexander is 3/4 Klingon",[descriptionTest]),_104024).


test('?- e2c("He\'s quite small, but since he\'s a Klingon he\'s very strong",[descriptionTest])',[true(compound(_103940)),nondet]):-call(e2c("He's quite small, but since he's a Klingon he's very strong",[descriptionTest]),_103940).


test('?- e2c("A standard issue Starfleet phaser has been left here",[descriptionTest])',[true(compound(_103886)),nondet]):-call(e2c("A standard issue Starfleet phaser has been left here",[descriptionTest]),_103886).


test('?- e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest])',[true(compound(_104288)),nondet]):-call(e2c("These phasers are the standard weapon of Starfleet officers. It offers decent damage for its fairly small size",[descriptionTest]),_104288).


test('?- e2c("A large phaser rifle is lying here",[descriptionTest])',[true(compound(_103766)),nondet]):-call(e2c("A large phaser rifle is lying here",[descriptionTest]),_103766).


test('?- e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest])',[true(compound(_104360)),nondet]):-call(e2c("This phaser rifle looks pretty powerful. These weapons are used mainly on assault type missions, where power is important",[descriptionTest]),_104360).


test('?- e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest])',[true(compound(_103964)),nondet]):-call(e2c("A neatly folded burgandy Starfleet command uniform is lying here",[descriptionTest]),_103964).


test('?- e2c("These uniforms are worn by command officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104312)),nondet]):-call(e2c("These uniforms are worn by command officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104312).


test('?- e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest])',[true(compound(_103964)),nondet]):-call(e2c("A neatly folded gold Starfleet engineering uniform is lying here",[descriptionTest]),_103964).


test('?- e2c("These uniforms are worn by engineering officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104336)),nondet]):-call(e2c("These uniforms are worn by engineering officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104336).


test('?- e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest])',[true(compound(_103940)),nondet]):-call(e2c("A neatly folded blue Starfleet medical uniform is lying here",[descriptionTest]),_103940).


test('?- e2c("These uniforms are worn by medical officers on Federation starships. It\'s kind of tight, but it looks pretty good",[descriptionTest])',[true(compound(_104312)),nondet]):-call(e2c("These uniforms are worn by medical officers on Federation starships. It's kind of tight, but it looks pretty good",[descriptionTest]),_104312).


test('?- e2c("A pair of Starfleet black boots are sitting here",[descriptionTest])',[true(compound(_103862)),nondet]):-call(e2c("A pair of Starfleet black boots are sitting here",[descriptionTest]),_103862).


test('?- e2c("These boots must be worn by all Starfleet officers while on duty. They\'re quite light, and offer good protection for the feet",[descriptionTest])',[true(compound(_104402)),nondet]):-call(e2c("These boots must be worn by all Starfleet officers while on duty. They're quite light, and offer good protection for the feet",[descriptionTest]),_104402).


test('?- e2c("A Starfleet communication badge is lying here",[descriptionTest])',[true(compound(_103832)),nondet]):-call(e2c("A Starfleet communication badge is lying here",[descriptionTest]),_103832).


test('?- e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\\\ ",[descriptionTest])',[true(compound(_104870)),nondet]):-call(e2c("These communication badges must be worn by all officers while on a starship. It looks like a silver arrow head on top of a golden coloured oval: ____/____ / /   | /  | _/ _/_ _/ // \\ ",[descriptionTest]),_104870).


test('?- e2c("Worf\'s silver chain sash has been left here",[descriptionTest])',[true(compound(_103826)),nondet]):-call(e2c("Worf's silver chain sash has been left here",[descriptionTest]),_103826).


test('?- e2c("Worf\'s sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest])',[true(compound(_104438)),nondet]):-call(e2c("Worf's sash is some sort of Klingon clothing. Worf always wears it, which makes you wonder how you managed to get a hold of it..",[descriptionTest]),_104438).


test('?- e2c("Geordi\'s VISOR is lying here",[descriptionTest])',[true(compound(_103718)),nondet]):-call(e2c("Geordi's VISOR is lying here",[descriptionTest]),_103718).


test('?- e2c("Geordi\'s VISOR was made specially for him, because he\'s blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you\'ve stolen his only way of seeing?",[descriptionTest])',[true(compound(_105110)),nondet]):-call(e2c("Geordi's VISOR was made specially for him, because he's blind. This piece of equipment allows him to see things, but differently than normal eyes. I wonder how Geordi is managing, now that you've stolen his only way of seeing?",[descriptionTest]),_105110).


test('?- e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest])',[true(compound(_103886)),nondet]):-call(e2c("A medical Tricorder is lying here, ready to be used",[descriptionTest]),_103886).


test('?- e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn\'t made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest])',[true(compound(_104672)),nondet]):-call(e2c("This medical Tricorder is used to heal small wounds and cuts. While it isn't made for major injuries, it can help you limp home. To use, hold it and then use it",[descriptionTest]),_104672).


test('?- e2c("A shard of dilithium crystal is lying here",[descriptionTest])',[true(compound(_103820)),nondet]):-call(e2c("A shard of dilithium crystal is lying here",[descriptionTest]),_103820).


test('?- e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest])',[true(compound(_104474)),nondet]):-call(e2c("Dilithium crystals are used to power warp cores of starships. This particular crystal is glowing brightly, and gives off a blue-ish tinge",[descriptionTest]),_104474).


test('?- e2c("Captain Picard\'s wooden flute is sitting here",[descriptionTest])',[true(compound(_103832)),nondet]):-call(e2c("Captain Picard's wooden flute is sitting here",[descriptionTest]),_103832).


test('?- e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest])',[true(compound(_104444)),nondet]):-call(e2c("Captain Picard recieved this flute when he lost his memory and was stuck on some strange world. Now, he plays it to relieve stress",[descriptionTest]),_104444).


test('?- e2c("Commander Riker\'s trombone has been placed here",[descriptionTest])',[true(compound(_103844)),nondet]):-call(e2c("Commander Riker's trombone has been placed here",[descriptionTest]),_103844).


test('?- e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest])',[true(compound(_104276)),nondet]):-call(e2c("Commander Riker considers himself to be a talented jazz musician. He practices on this trombone all the time",[descriptionTest]),_104276).


test('?- e2c("A small cup of tea is sitting here",[descriptionTest])',[true(compound(_103772)),nondet]):-call(e2c("A small cup of tea is sitting here",[descriptionTest]),_103772).


test('?- e2c("A bottle of synthehol is standing here",[descriptionTest])',[true(compound(_103790)),nondet]):-call(e2c("A bottle of synthehol is standing here",[descriptionTest]),_103790).


test('?- e2c("A bottle of Ferengi ale is sitting here",[descriptionTest])',[true(compound(_103802)),nondet]):-call(e2c("A bottle of Ferengi ale is sitting here",[descriptionTest]),_103802).


test('?- e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest])',[true(compound(_103826)),nondet]):-call(e2c("A bottle of Romulan whiskey is sitting here",[descriptionTest]),_103826).


test('?- e2c("A small glass of prune juice is sitting here",[descriptionTest])',[true(compound(_103838)),nondet]):-call(e2c("A small glass of prune juice is sitting here",[descriptionTest]),_103838).


test('?- e2c("A bottle of Vulcan beer is standing here",[descriptionTest])',[true(compound(_103808)),nondet]):-call(e2c("A bottle of Vulcan beer is standing here",[descriptionTest]),_103808).


test('?- e2c("You find yourself in the middle of main engineering",[descriptionTest])',[true(compound(_103880)),nondet]):-call(e2c("You find yourself in the middle of main engineering",[descriptionTest]),_103880).


test('?- e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest])',[true(compound(_104000)),nondet]):-call(e2c("The room is longer than it is wide, and it has fairly low ceilings",[descriptionTest]),_104000).


test('?- e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest])',[true(compound(_104300)),nondet]):-call(e2c("Computer terminals cover all the walls, and a large table built into the floor sits in the middle of the room",[descriptionTest]),_104300).


test('?- e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest])',[true(compound(_104108)),nondet]):-call(e2c("At the far end of the room you see the warp core, a large pulsating vertical tube",[descriptionTest]),_104108).


test('?- e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest])',[true(compound(_104036)),nondet]):-call(e2c("You find yourself in the middle of a well lit corridor on the Enterprise",[descriptionTest]),_104036).


test('?- e2c("It isn\'t very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest])',[true(compound(_104216)),nondet]):-call(e2c("It isn't very wide, and the light beige walls have been rounded, making the corridor an oval shape",[descriptionTest]),_104216).


test('?- e2c("You\'re in the middle of Geordi\'s quarters",[descriptionTest])',[true(compound(_103808)),nondet]):-call(e2c("You're in the middle of Geordi's quarters",[descriptionTest]),_103808).


test('?- e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest])',[true(compound(_104006)),nondet]):-call(e2c("The room is sparsely decorated, due to the fact that Geordi is blind",[descriptionTest]),_104006).


test('?- e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest])',[true(compound(_104330)),nondet]):-call(e2c("A small personal computer sits on a desk against the western wall, in between two windows that look out into space",[descriptionTest]),_104330).


test('?- e2c("A neatly made bed has been placed against the northern wall",[descriptionTest])',[true(compound(_103940)),nondet]):-call(e2c("A neatly made bed has been placed against the northern wall",[descriptionTest]),_103940).


test('?- e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest])',[true(compound(_103910)),nondet]):-call(e2c("You notice a tiny computer panel embedded into the wall",[descriptionTest]),_103910).


test('?- e2c("You\'re in the middle of Data\'s quarters",[descriptionTest])',[true(compound(_103796)),nondet]):-call(e2c("You're in the middle of Data's quarters",[descriptionTest]),_103796).


test('?- e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest])',[true(compound(_104858)),nondet]):-call(e2c("Some easils and paintings have been left scattered around the southern part of the room, while a huge computer screen showing a cross section of the Enterprise covers the entire northern wall",[descriptionTest]),_104858).


test('?- e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest])',[true(compound(_104072)),nondet]):-call(e2c("In front of the screen is a large desk, which is covered in computer controls",[descriptionTest]),_104072).


test('?- e2c("You can\'t see a bed in this room, but you figure it\'s because Data doesn\'t sleep",[descriptionTest])',[true(compound(_104096)),nondet]):-call(e2c("You can't see a bed in this room, but you figure it's because Data doesn't sleep",[descriptionTest]),_104096).


test('?- e2c("You\'re in the dimly lit Brig",[descriptionTest])',[true(compound(_103724)),nondet]):-call(e2c("You're in the dimly lit Brig",[descriptionTest]),_103724).


test('?- e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest])',[true(compound(_104114)),nondet]):-call(e2c("This is where all the criminals and prisoners are kept while on board the Enterprise",[descriptionTest]),_104114).


test('?- e2c("Three fairly large cells can been seen in the southern part of the room, and they\'re all empty",[descriptionTest])',[true(compound(_104192)),nondet]):-call(e2c("Three fairly large cells can been seen in the southern part of the room, and they're all empty",[descriptionTest]),_104192).


test('?- e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest])',[true(compound(_104486)),nondet]):-call(e2c("A computer control panel is situated in the northwestern corner of the room, which is where the force fields for the cells are controlled",[descriptionTest]),_104486).


test('?- e2c(\'The panel says:\\n\\n***************************************************\\n*                                                 *\\n*            NCC-1701-D - ENTERPRISE              *\\n*                                                 *\\n*              *****                              *\\n*      **********************                     *\\n*      ***********************  _________         *\\n*              *****        ***(___  ____(        *\\n*                            ***** \\\\ \\\\*           *\\n*                             **********          *\\n*                                                 *\\n*          You are currently on deck 1            *\\n*                                                 *\\n***************************************************\\n\',[descriptionTest])',[true(compound(_110714)),nondet]):-call(e2c('The panel says:\n\n***************************************************\n*                                                 *\n*            NCC-1701-D - ENTERPRISE              *\n*                                                 *\n*              *****                              *\n*      **********************                     *\n*      ***********************  _________         *\n*              *****        ***(___  ____(        *\n*                            ***** \\ \\*           *\n*                             **********          *\n*                                                 *\n*          You are currently on deck 1            *\n*                                                 *\n***************************************************\n',[descriptionTest]),_110714).


test('?- e2c("You see the holodeck\'s control panel beside the holodeck door, and it has some information on it",[descriptionTest])',[true(compound(_104198)),nondet]):-call(e2c("You see the holodeck's control panel beside the holodeck door, and it has some information on it",[descriptionTest]),_104198).


test('?- e2c("You\'re in the Enterprise transporter room",[descriptionTest])',[true(compound(_103802)),nondet]):-call(e2c("You're in the Enterprise transporter room",[descriptionTest]),_103802).


test('?- e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest])',[true(compound(_104288)),nondet]):-call(e2c("A computer terminal is sitting near the southern wall, where the transporter chief can control the transporters",[descriptionTest]),_104288).


test('?- e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest])',[true(compound(_104258)),nondet]):-call(e2c("Eight round transport pads have been arranged in a circle, on a raised platform against the northern wall",[descriptionTest]),_104258).


test('?- e2c("You find yourself in a transporter beam",[descriptionTest])',[true(compound(_103796)),nondet]):-call(e2c("You find yourself in a transporter beam",[descriptionTest]),_103796).


test('?- e2c("All you can see is blue flashing light",[descriptionTest])',[true(compound(_103796)),nondet]):-call(e2c("All you can see is blue flashing light",[descriptionTest]),_103796).


test('?- e2c("It feels as though your body is racing around at high speeds",[descriptionTest])',[true(compound(_103952)),nondet]):-call(e2c("It feels as though your body is racing around at high speeds",[descriptionTest]),_103952).


test('?- e2c("As you try to look down at your body, you realize that there\'s nothing there!",[descriptionTest])',[true(compound(_104072)),nondet]):-call(e2c("As you try to look down at your body, you realize that there's nothing there!",[descriptionTest]),_104072).


test('?- e2c("You step through the doors and find yourself in a large school room",[descriptionTest])',[true(compound(_104000)),nondet]):-call(e2c("You step through the doors and find yourself in a large school room",[descriptionTest]),_104000).


test('?- e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest])',[true(compound(_104378)),nondet]):-call(e2c("Various tables and chairs are set up all around the room, and many paintings and drawings have been attached to the walls",[descriptionTest]),_104378).


test('?- e2c("Several computer consoles with a children\'s interface on them can be seen on the tables",[descriptionTest])',[true(compound(_104132)),nondet]):-call(e2c("Several computer consoles with a children's interface on them can be seen on the tables",[descriptionTest]),_104132).


test('?- e2c("You\'re in the turbolift",[descriptionTest])',[true(compound(_103682)),nondet]):-call(e2c("You're in the turbolift",[descriptionTest]),_103682).


test('?- e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest])',[true(compound(_104060)),nondet]):-call(e2c("The turbolift walls have been rounded off, making it in the shape of a tube",[descriptionTest]),_104060).


test('?- e2c("Several vertical rows of lights make this place very well lit",[descriptionTest])',[true(compound(_103952)),nondet]):-call(e2c("Several vertical rows of lights make this place very well lit",[descriptionTest]),_103952).


test('?- e2c("From here, you can access the other decks on the Enterprise",[descriptionTest])',[true(compound(_103940)),nondet]):-call(e2c("From here, you can access the other decks on the Enterprise",[descriptionTest]),_103940).


test('?- e2c("You\'re now on Holodeck 2",[descriptionTest])',[true(compound(_103694)),nondet]):-call(e2c("You're now on Holodeck 2",[descriptionTest]),_103694).


test('?- e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest])',[true(compound(_104378)),nondet]):-call(e2c("The room is just a large cube, with jet black walls and a yellow grid painted on the floors, the walls, and the ceiling",[descriptionTest]),_104378).


test('?- e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest])',[true(compound(_104126)),nondet]):-call(e2c("This is where different programs can be loaded and experienced, which seem totally real",[descriptionTest]),_104126).


test('?- e2c("Right now, this holodeck is not functioning",[descriptionTest])',[true(compound(_103820)),nondet]):-call(e2c("Right now, this holodeck is not functioning",[descriptionTest]),_103820).


test('?- e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest])',[true(compound(_103928)),nondet]):-call(e2c("From here, you can accessthe other decks on the Enterprise",[descriptionTest]),_103928).


test('?- e2c("You\'re in the main cargo bay of the Enterprise",[descriptionTest])',[true(compound(_103850)),nondet]):-call(e2c("You're in the main cargo bay of the Enterprise",[descriptionTest]),_103850).


test('?- e2c("It\'s quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest])',[true(compound(_104060)),nondet]):-call(e2c("It's quite a large room, with a very high ceiling and a lot of floor space",[descriptionTest]),_104060).


test('?- e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest])',[true(compound(_104378)),nondet]):-call(e2c("You can see several hundred plastic crates and barrels with the Starfleet insignia on them stacked right up to the ceiling",[descriptionTest]),_104378).


test('?- e2c("You\'ve arrived in Riker\'s quarters",[descriptionTest])',[true(compound(_103754)),nondet]):-call(e2c("You've arrived in Riker's quarters",[descriptionTest]),_103754).


test('?- e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest])',[true(compound(_104330)),nondet]):-call(e2c("The room is very neat and tidy, with a couch and several chairs aranged around a coffee table by the eastern wall",[descriptionTest]),_104330).


test('?- e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest])',[true(compound(_104264)),nondet]):-call(e2c("A small partition at the northern part of the room seperates his sleeping area with the rest of the room",[descriptionTest]),_104264).


test('?- e2c("You\'re in the middle of the Enterprise\'s Sick Bay",[descriptionTest])',[true(compound(_103868)),nondet]):-call(e2c("You're in the middle of the Enterprise's Sick Bay",[descriptionTest]),_103868).


test('?- e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest])',[true(compound(_104504)),nondet]):-call(e2c("About a dozen beds are arranged along the walls of the room, while several carts covered with medical supplies are scattered around the room",[descriptionTest]),_104504).


test('?- e2c("A large glass window in the northern part of the room separates the doctor\'s office with the rest of the room",[descriptionTest])',[true(compound(_104300)),nondet]):-call(e2c("A large glass window in the northern part of the room separates the doctor's office with the rest of the room",[descriptionTest]),_104300).


test('?- e2c("You emerge into a dark narrow alley",[descriptionTest])',[true(compound(_103772)),nondet]):-call(e2c("You emerge into a dark narrow alley",[descriptionTest]),_103772).


test('?- e2c("Tall dark brick buildings block your way north and south",[descriptionTest])',[true(compound(_103916)),nondet]):-call(e2c("Tall dark brick buildings block your way north and south",[descriptionTest]),_103916).


test('?- e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest])',[true(compound(_104180)),nondet]):-call(e2c("You can see that the windows on the buildings are fairly high, and some have been boarded up",[descriptionTest]),_104180).


test('?- e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest])',[true(compound(_104216)),nondet]):-call(e2c("The smell from the rotting food and garbage mixing with the foul water on the ground is unbearable",[descriptionTest]),_104216).


test('?- e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest])',[true(compound(_103952)),nondet]):-call(e2c("You can hear the sounds of a bustling marketpace to the east",[descriptionTest]),_103952).


test('?- e2c("The archway leading out of the holodeck is west",[descriptionTest])',[true(compound(_103856)),nondet]):-call(e2c("The archway leading out of the holodeck is west",[descriptionTest]),_103856).


test('?- e2c("You\'re in Doctor Crusher\'s quarters",[descriptionTest])',[true(compound(_103760)),nondet]):-call(e2c("You're in Doctor Crusher's quarters",[descriptionTest]),_103760).


test('?- e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest])',[true(compound(_104156)),nondet]):-call(e2c("Several different paintings are attached to the walls, and you also notice a few sculptures",[descriptionTest]),_104156).


test('?- e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest])',[true(compound(_104246)),nondet]):-call(e2c("A neatly made bed is located by the northern wall, in between two large windows looking out into space",[descriptionTest]),_104246).


test('?- e2c("You\'re now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest])',[true(compound(_103988)),nondet]):-call(e2c("You're now in Ten Forward, the entertainment room of the Enterprise",[descriptionTest]),_103988).


test('?- e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest])',[true(compound(_104612)),nondet]):-call(e2c("The entire northern wall is covered with windows looking out into space, while two large wooden doors with the Starfleet insignia stamped on them face south",[descriptionTest]),_104612).


test('?- e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest])',[true(compound(_104084)),nondet]):-call(e2c("Many round metal tables are scattered around the room, surrounded by metal chairs",[descriptionTest]),_104084).


test('?- e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest])',[true(compound(_104480)),nondet]):-call(e2c("A long bar spans almost the entire length of the southern part of the room, and about two dozen bar stools are sitting in front of it",[descriptionTest]),_104480).


test('?- e2c("It\'s very noisy in here, due to all the talking and laughing",[descriptionTest])',[true(compound(_103952)),nondet]):-call(e2c("It's very noisy in here, due to all the talking and laughing",[descriptionTest]),_103952).


test('?- e2c("You\'re standing in the dimly lit Enterprise Security",[descriptionTest])',[true(compound(_103880)),nondet]):-call(e2c("You're standing in the dimly lit Enterprise Security",[descriptionTest]),_103880).


test('?- e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest])',[true(compound(_104774)),nondet]):-call(e2c("Weapons lockers cover all of the walls, except along the northern wall, where a large glass window protects dozens of different phasors, blaster rifles, and other high tech weapons",[descriptionTest]),_104774).


test('?- e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest])',[true(compound(_103952)),nondet]):-call(e2c("Three long tables surrounded by chairs stretch across the room",[descriptionTest]),_103952).


test('?- e2c("You\'re in the main shuttle bay of the Enterprise",[descriptionTest])',[true(compound(_103862)),nondet]):-call(e2c("You're in the main shuttle bay of the Enterprise",[descriptionTest]),_103862).


test('?- e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest])',[true(compound(_104054)),nondet]):-call(e2c("You can see three different shuttle crafts sitting here, waiting to be flown",[descriptionTest]),_104054).


test('?- e2c("A large grey door leads into space",[descriptionTest])',[true(compound(_103766)),nondet]):-call(e2c("A large grey door leads into space",[descriptionTest]),_103766).


test('?- e2c("You\'re floating in outer space right beside the USS Enterprise",[descriptionTest])',[true(compound(_103952)),nondet]):-call(e2c("You're floating in outer space right beside the USS Enterprise",[descriptionTest]),_103952).


test('?- e2c("You can see stars in every direction, which provide the only light here",[descriptionTest])',[true(compound(_104024)),nondet]):-call(e2c("You can see stars in every direction, which provide the only light here",[descriptionTest]),_104024).


test('?- e2c("You feel very cold",[descriptionTest])',[true(compound(_103652)),nondet]):-call(e2c("You feel very cold",[descriptionTest]),_103652).


test('?- e2c("A large grey door leads into the Enterprise\'s Shuttle Bay",[descriptionTest])',[true(compound(_103922)),nondet]):-call(e2c("A large grey door leads into the Enterprise's Shuttle Bay",[descriptionTest]),_103922).


test('?- e2c("You\'re in Counselor Deanna Troi\'s quarters",[descriptionTest])',[true(compound(_103808)),nondet]):-call(e2c("You're in Counselor Deanna Troi's quarters",[descriptionTest]),_103808).


test('?- e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest])',[true(compound(_104420)),nondet]):-call(e2c("Several different paintings have been hung from the walls, and a small couch and a recliner are positioned around a coffee table",[descriptionTest]),_104420).


test('?- e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest])',[true(compound(_104144)),nondet]):-call(e2c("A neatly made bed is partially hidden behind a curtain at the northern part of the room",[descriptionTest]),_104144).


test('?- e2c("You\'re in Worf\'s quarters",[descriptionTest])',[true(compound(_103694)),nondet]):-call(e2c("You're in Worf's quarters",[descriptionTest]),_103694).


test('?- e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest])',[true(compound(_104138)),nondet]):-call(e2c("A small table is sitting in the southeastern corner, and on it is a small potted plant",[descriptionTest]),_104138).


test('?- e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf\'s bedroom to the east",[descriptionTest])',[true(compound(_104552)),nondet]):-call(e2c("An impressive selection of Klingon weapons have been mounted on the northern wall, and a partition splits this room with Worf's bedroom to the east",[descriptionTest]),_104552).


test('?- e2c("You emerge into the Enterprise gym",[descriptionTest])',[true(compound(_103760)),nondet]):-call(e2c("You emerge into the Enterprise gym",[descriptionTest]),_103760).


test('?- e2c("The room is quite large, with a soft grey floor",[descriptionTest])',[true(compound(_103862)),nondet]):-call(e2c("The room is quite large, with a soft grey floor",[descriptionTest]),_103862).


test('?- e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest])',[true(compound(_104270)),nondet]):-call(e2c("A set of lockers against the southern wall contain all of the necessary equipment needed for using the gym",[descriptionTest]),_104270).


test('?- e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest])',[true(compound(_104234)),nondet]):-call(e2c("A thick stack of mats have been piled high in one corner, which can be used for different activities",[descriptionTest]),_104234).


test('?- e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest])',[true(compound(_103922)),nondet]):-call(e2c("Captain Picard likes to come here to practice his fencing",[descriptionTest]),_103922).


test('?- e2c("You find yourself standing by the door of Captain Picard\'s quarters",[descriptionTest])',[true(compound(_103988)),nondet]):-call(e2c("You find yourself standing by the door of Captain Picard's quarters",[descriptionTest]),_103988).


test('?- e2c("He isn\'t very fond of visitors, but you decide to stay and have a look around",[descriptionTest])',[true(compound(_104078)),nondet]):-call(e2c("He isn't very fond of visitors, but you decide to stay and have a look around",[descriptionTest]),_104078).


test('?- e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest])',[true(compound(_104372)),nondet]):-call(e2c("You can see several different ancient artifacts on tables and small pedestals, and a large wooden wardrobe is facing south",[descriptionTest]),_104372).


test('?- e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest])',[true(compound(_104390)),nondet]):-call(e2c("A comfortable looking recliner with a matching footrest sits beside the door, along with a bright reading lamp and end table",[descriptionTest]),_104390).


test('?- e2c("Two large windows offer a great view of space",[descriptionTest])',[true(compound(_103844)),nondet]):-call(e2c("Two large windows offer a great view of space",[descriptionTest]),_103844).


test('?- e2c("A small partition at the northern part of the room contains Picard\'s sleeping area",[descriptionTest])',[true(compound(_104096)),nondet]):-call(e2c("A small partition at the northern part of the room contains Picard's sleeping area",[descriptionTest]),_104096).


test('?- e2c("You\'re in the Enterprise science lab",[descriptionTest])',[true(compound(_103772)),nondet]):-call(e2c("You're in the Enterprise science lab",[descriptionTest]),_103772).


test('?- e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest])',[true(compound(_104162)),nondet]):-call(e2c("A strange looking machine sits in the middle of the room, up on a slightly raised platform",[descriptionTest]),_104162).


test('?- e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest])',[true(compound(_104660)),nondet]):-call(e2c("It looks as though something(or someone) could be placed inside, hooked up to the multitude of wires and cables, and have scientific tests performed on it(or them)",[descriptionTest]),_104660).


test('?- e2c("A complex looking computer console is facing this machine",[descriptionTest])',[true(compound(_103916)),nondet]):-call(e2c("A complex looking computer console is facing this machine",[descriptionTest]),_103916).


test('?- e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest])',[true(compound(_104072)),nondet]):-call(e2c("Around the rest of the room are counterops with with the odd computer terminal",[descriptionTest]),_104072).


test('?- e2c("You\'re in the cargo bay 2 of the Enterprise",[descriptionTest])',[true(compound(_103832)),nondet]):-call(e2c("You're in the cargo bay 2 of the Enterprise",[descriptionTest]),_103832).


test('?- e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_104066)),nondet]):-call(e2c("You find yourself on the upper half of the main bridge of the USS Enterprise",[descriptionTest]),_104066).


test('?- e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest])',[true(compound(_104438)),nondet]):-call(e2c("Directly in front of you is a thick railing that contains many different computer panels used for the tactical systems of the ship",[descriptionTest]),_104438).


test('?- e2c("The entire southern wall is covered with computer consoles, where the ship\'s main systems are controlled",[descriptionTest])',[true(compound(_104240)),nondet]):-call(e2c("The entire southern wall is covered with computer consoles, where the ship's main systems are controlled",[descriptionTest]),_104240).


test('?- e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest])',[true(compound(_104636)),nondet]):-call(e2c("Two small curved ramps on either side of the room lead north to the lower part of the bridge, and a large circular skylight shows the space outside the ship",[descriptionTest]),_104636).


test('?- e2c("You\'re standing in Captain Picard\'s ready room",[descriptionTest])',[true(compound(_103838)),nondet]):-call(e2c("You're standing in Captain Picard's ready room",[descriptionTest]),_103838).


test('?- e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest])',[true(compound(_104276)),nondet]):-call(e2c("A long couch has been placed beside the door, while a large U shaped desk is located by the northern wall",[descriptionTest]),_104276).


test('?- e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest])',[true(compound(_104180)),nondet]):-call(e2c("A small computer screen is sitting on the desk, as well as several other papers and documents",[descriptionTest]),_104180).


test('?- e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest])',[true(compound(_104378)),nondet]):-call(e2c("A single high window beside the desk looks into space, and a fish tank is located in the northwestern corner of the room",[descriptionTest]),_104378).


test('?- e2c("This is where the Captain makes all of his important decisions",[descriptionTest])',[true(compound(_103958)),nondet]):-call(e2c("This is where the Captain makes all of his important decisions",[descriptionTest]),_103958).


test('?- e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest])',[true(compound(_104066)),nondet]):-call(e2c("You find yourself on the lower half of the main bridge of the USS Enterprise",[descriptionTest]),_104066).


test('?- e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest])',[true(compound(_104378)),nondet]):-call(e2c("An enormous view screen covers almost the entire northern wall, and is currently displaying a view of the stars rushing by",[descriptionTest]),_104378).


test('?- e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest])',[true(compound(_104186)),nondet]):-call(e2c("Three large chairs in the northern part of the room, in front of the railing, face the screen",[descriptionTest]),_104186).


test('?- e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest])',[true(compound(_103982)),nondet]):-call(e2c("This is where the Captain, Commander Riker, and Counselor Troi sit",[descriptionTest]),_103982).


test('?- e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest])',[true(compound(_104330)),nondet]):-call(e2c("Two computer consoles with built in chairs rest about ten feet in front of the chairs, also facing the view screen",[descriptionTest]),_104330).


test('?- e2c("This is where the ship\'s pilot and information officer sit",[descriptionTest])',[true(compound(_103928)),nondet]):-call(e2c("This is where the ship's pilot and information officer sit",[descriptionTest]),_103928).


test('?- e2c("You\'re in the conference room of the Enterprise",[descriptionTest])',[true(compound(_103850)),nondet]):-call(e2c("You're in the conference room of the Enterprise",[descriptionTest]),_103850).


test('?- e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest])',[true(compound(_104396)),nondet]):-call(e2c("A large glass rectangular table sits in the middle of the room, surrounded by about a dozen comfortable looking office chairs",[descriptionTest]),_104396).


test('?- e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest])',[true(compound(_104018)),nondet]):-call(e2c("The entire eastern wall is covered with windows, looking out into space",[descriptionTest]),_104018).


test('?- e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest])',[true(compound(_104114)),nondet]):-call(e2c("This is where the senior officers of the Enterprise meet and discuss important issues",[descriptionTest]),_104114).


test('?- e2c("You\'re floating in outer space right above the USS Enterprise",[descriptionTest])',[true(compound(_103946)),nondet]):-call(e2c("You're floating in outer space right above the USS Enterprise",[descriptionTest]),_103946).


test('?- e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity])',[true(compound(_20526)),nondet]):-call(e2c("The man who smokes Blends has a neighbor who drinks water.",[sanity]),_20526).


test('?- e2c("no two owners eat pizza",[sanity])',[true(compound(_20518)),nondet]):-call(e2c("no two owners eat pizza",[sanity]),_20518).


test('?- e2c("no three owners eat pizza",[sanity])',[true(compound(_20518)),nondet]):-call(e2c("no three owners eat pizza",[sanity]),_20518).


test('?- e2c("no three owners eat the same pizza",[sanity])',[true(compound(_20520)),nondet]):-call(e2c("no three owners eat the same pizza",[sanity]),_20520).


test('?- e2c("no three owners eat the same kind of pizza",[sanity])',[true(compound(_20522)),nondet]):-call(e2c("no three owners eat the same kind of pizza",[sanity]),_20522).


test('?- e2c("no owners eat the same pizza",[sanity])',[true(compound(_20518)),nondet]):-call(e2c("no owners eat the same pizza",[sanity]),_20518).


test('?- e2c("no owners eat the same kind of pizza",[sanity])',[true(compound(_20520)),nondet]):-call(e2c("no owners eat the same kind of pizza",[sanity]),_20520).


test('?- e2c("there are 5 houses",[sanity])',[true(compound(_20516)),nondet]):-call(e2c("there are 5 houses",[sanity]),_20516).


test('?- e2c("there are not 5 houses",[sanity])',[true(compound(_20516)),nondet]):-call(e2c("there are not 5 houses",[sanity]),_20516).


test('?- e2c("there are not zero houses",[sanity])',[true(compound(_20518)),nondet]):-call(e2c("there are not zero houses",[sanity]),_20518).


test('?- e2c(noun_phrase("less than 2 owners"),[sanity,bug])',[true(compound(_20526)),nondet]):-call(e2c(noun_phrase("less than 2 owners"),[sanity,bug]),_20526).


test('?- e2c(noun_phrase("at most the 5 owners"),[sanity])',[true(compound(_20520)),nondet]):-call(e2c(noun_phrase("at most the 5 owners"),[sanity]),_20520).


test('?- e2c(noun_phrase("at most 5 owners"),[sanity])',[true(compound(_20520)),nondet]):-call(e2c(noun_phrase("at most 5 owners"),[sanity]),_20520).


test('?- e2c(noun_phrase("less than 3 owners"),[sanity])',[true(compound(_20520)),nondet]):-call(e2c(noun_phrase("less than 3 owners"),[sanity]),_20520).


test('?- e2c(noun_phrase("at most 50 percent of owners"),[sanity])',[true(compound(_20522)),nondet]):-call(e2c(noun_phrase("at most 50 percent of owners"),[sanity]),_20522).


test('?- e2c(noun_phrase("no three owners"),[sanity,no_working])',[true(compound(_20526)),nondet]):-call(e2c(noun_phrase("no three owners"),[sanity,no_working]),_20526).


test('?- e2c("terry writes a non-program.",[tell])',[true(compound(_20518)),nondet]):-call(e2c("terry writes a non-program.",[tell]),_20518).


test('?- e2c("every nonhuman programmer writes a program.",[tell])',[true(compound(_20522)),nondet]):-call(e2c("every nonhuman programmer writes a program.",[tell]),_20522).


test('?- e2c("every human programmer writes a not a program.",[tell])',[true(compound(_20522)),nondet]):-call(e2c("every human programmer writes a not a program.",[tell]),_20522).


test('?- e2c("every human programmer happily writes a not a program.",[tell])',[true(compound(_20524)),nondet]):-call(e2c("every human programmer happily writes a not a program.",[tell]),_20524).


:- end_tests(e2c).

