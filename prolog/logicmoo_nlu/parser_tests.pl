
:- multifile(test_e2c/2).
:- dynamic(test_e2c/2).

test_e2c("One woman paints.", [ quants]).
test_e2c("No woman paints.", [ quants]).
test_e2c("Some woman paints.", [ quants]).
test_e2c("Every woman paints.", [ quants]).
test_e2c("Each woman paints.", [ quants]).
test_e2c("Any woman paints.", [ quants]).
test_e2c("The woman paints.", [ quants]).

% ;W:\opt\logicmoo_workspace\packs_sys\logicmoo_nlu\ext\candc;W:\opt\logicmoo_workspace\packs_sys\logicmoo_nlu\ext\ape;W:\opt\logicmoo_workspace\packs_sys\logicmoo_nlu\prolog

% test_e2c(S, _T) :- \+ ground(S), !, fail.

test_e2c("The not woman paints.", [ quants]).  % ? The Good Place "the not a girl"

test_e2c("Not a woman paints.", [ quants]).
test_e2c("Not one woman paints.", [ quants]).
test_e2c("Not no woman paints.", [ quants_neg_postcond]).
test_e2c("Not some woman paints.", [ quants]).   % ? not just some woman paints
test_e2c("Not every woman paints.", [ quants]).
test_e2c("Not each woman paints.", [ quants]).
test_e2c("Not any woman paints.", [ quants]).



test_e2c("The women paint.", [ quants]).

test_e2c("Women paint.", [ quants]).
test_e2c("Some women paint.", [ quants]).
test_e2c("No women paint.", [ quants]).
test_e2c("All women paint.", [ quants]).
test_e2c("Any women paint.", [ quants]).

test_e2c("Not women paint.", [ quants]).
test_e2c("Not some women paint.", [ quants]).
test_e2c("Not no women paint.", [ quants]).
test_e2c("Not all women paint.", [ quants]).
test_e2c("Not any women paint.", [ quants]).


test_e2c("The three women paint.", [ quants]).

test_e2c("Three women paint.", [ quants]).
test_e2c("Some three women paint.", [ quants]).
test_e2c("No three women paint.", [ quants]).
test_e2c("Every three women paint.", [ quants]).
test_e2c("All three women paint.", [ quants]).
test_e2c("Any three women paint.", [ quants]).

test_e2c("Not three women paint.", [ quants]).
test_e2c("Not some three women paint.", [ quants]).
test_e2c("Not no three women paint.", [ quants]).
test_e2c("Not all three women paint.", [ quants]).
test_e2c("Not every three women paint.", [ quants]).
test_e2c("Not any three women paint.", [ quants]).

test_e2c("I paint", [ pronoun]).
test_e2c("you paint", [ pronoun]).
test_e2c("We paint", [ pronoun]).
test_e2c("None paint", [ pronoun]).
test_e2c("They paint", [ pronoun]).
test_e2c("Some paint", [ pronoun]).

test_e2c("It paints", [ pronoun]).
test_e2c("he paints", [ pronoun]).
test_e2c("She paints", [ pronoun]).
test_e2c("Someone paints", [ pronoun]).

test_e2c("Anybody paints", [ pronoun]).
test_e2c("Anyone paints", [ pronoun]).
test_e2c("Anything paints", [ pronoun]).
test_e2c("Everybody paints", [ pronoun]).
test_e2c("Everyone paints", [ pronoun]).
test_e2c("Everything paints", [ pronoun]).
test_e2c("Nobody paints", [ pronoun]).
test_e2c("No one paints", [ pronoun]).
test_e2c("Nothing paints", [ pronoun]).
test_e2c("One paints", [ pronoun]).
test_e2c("Somebody paints", [ pronoun]).
test_e2c("Something paints", [ pronoun]).

test_e2c("Not anybody paints", [ pronoun]).
test_e2c("Not anyone paints", [ pronoun]).
test_e2c("Not anything paints", [ pronoun]).
test_e2c("Not everybody paints", [ pronoun]).
test_e2c("Not everyone paints", [ pronoun]).
test_e2c("Not everything paints", [ pronoun]).
test_e2c("Not nothing paints", [ pronoun]).
test_e2c("Not one paints", [ pronoun]).
test_e2c("Not somebody paints", [ pronoun]).
test_e2c("Not something paints", [ pronoun]).

test_e2c("She likes i", [ pronoun]).
test_e2c("She likes me", [ pronoun]).
test_e2c("She likes you", [ pronoun]).
test_e2c("She likes it", [ pronoun]).
test_e2c("She likes us", [ pronoun]).
test_e2c("She likes them", [ pronoun]).
test_e2c("She likes no one", [ pronoun]).
%test_e2c("She likes noone", [ pronoun]).
test_e2c("She likes none", [ pronoun]).


% test_e2c("She likes her", [ pronoun]).
test_e2c("She likes him", [ pronoun]).
test_e2c("She likes herself", [ pronoun]).
test_e2c("She likes himself", [ pronoun]).  % Maybe

test_e2c("It is us that paints", [ pronoun]).
test_e2c("It is them that paints", [ pronoun]).
test_e2c("It is he that paints", [ pronoun]).
test_e2c("It is she that paints", [ pronoun]).
test_e2c("It is her that paints", [ pronoun]).
test_e2c("It is him that paints", [ pronoun]).




test_e2c("We are us that paint", [ pronoun]).
test_e2c("It is everybody that paints", [ pronoun]).

test_e2c("Every man that paints likes monet.", [ bratko]).
test_e2c("A woman that admires John paints.", [ bratko]).
test_e2c("Every woman that likes a man that admires monet paints.", [ bratko]).
test_e2c("John likes Annie.", [ bratko]).
test_e2c("Annie likes a man that admires monet.", [ bratko]).
test_e2c("Bertrand Russell wrote principia.", [ bratko]).
test_e2c("An author wrote principia.", [ bratko]).
test_e2c("Iraq is a country.", [ bratko]).
test_e2c("A happy author wrote principia.", [ bratko]).
test_e2c("Is Bertrand an author?", [ bratko]).
test_e2c("Bertrand is an author.", [ bratko]).
test_e2c("Is Bertrand an author?", [ bratko]).
test_e2c("Every author is a programmer.", [ bratko]).
test_e2c("Is Bertrand an programmer?", [ bratko]).  % Just a sanity test
test_e2c("What is a author?", [ bratko]).  % Just a sanity test
test_e2c("What did Bertrand write?", [ bratko]).
test_e2c("What is a book?", [ bratko]).
test_e2c("Principia is a book.", [ bratko]).
test_e2c("Bertrand is Bertrand.", [ bratko]).
test_e2c("Shrdlu halts.", [ bratko]).
test_e2c("Every student wrote a program.", [ bratko]).
test_e2c("Terry writes a program.", [ bratko]).
test_e2c("Terry writes a program that halts.", [ bratko]).

test_e2c("An author of every book wrote a program.", [ bratko]).
test_e2c("A man hapilly maried paints.", [ bratko]).
test_e2c("A hapilly maried man paints.", [ bratko]).
test_e2c("A man who knows paints.", [ bratko]).
test_e2c("A man gives something.", [ bratko]).
test_e2c("A man gives his word.", [ bratko]).

test_e2c("A man of his word paints.", [ bratko]).
test_e2c("A man paints.", [ bratko]).
test_e2c("A man that paints paints.", [ bratko]).
test_e2c("A man walks.", [ bratko]).
test_e2c("A man that walks paints.", [ bratko]).
test_e2c("It halts.", [ bratko]).

test_e2c("A man of his word that walks paints.", [ bratko]).
test_e2c("The cost of what the product is changes.", [ bratko]).



test_e2c("We need a virtual machine server.", [ aindy]).
test_e2c("The virtual machine server should have several VMs.", [ aindy]).
test_e2c("One VM should be the POSI VM.", [ aindy]).
test_e2c("One VM should be the FRDCSA.org VM.", [ aindy]).
test_e2c("One VM should be the mail server.", [ aindy]).
test_e2c("One computer should be the backup server.", [ aindy]).
test_e2c("I should not spend too much money, prefering instead to save money for future technology and emergencies.", [ aindy]).
test_e2c("I need a fast computer for work.", [ aindy]).
test_e2c("I wouldn't mind a windows computer for various tasks, but it's not necessary.", [ aindy]).
test_e2c("I need a dedicated computer for network security research.", [ aindy]).
test_e2c("I need a machine to run Tails on.", [ aindy]).
test_e2c("I need a machine off the network for airgap security.", [ aindy]).
test_e2c("One VM should be the game server for running game development projects.", [ aindy]).
test_e2c("I can repurpose justin.frdcsa.org to do AI work.", [ aindy]).
test_e2c("I could read about how to build a private watson.", [ aindy]).
test_e2c("Need backups.", [ aindy]).
test_e2c("Practice setting up backups of a machine to a different machine.", [ aindy]).
test_e2c("Set up schedules for updating the software on all machines.", [ aindy]).
test_e2c("Read books on server room layout.", [ aindy]).
test_e2c("I need a computer to set hadoop on and run NLP virtual machines on.", [ aindy]).
test_e2c("I need a computer to run all of the responsibilities of my private computers.", [ aindy]).
test_e2c("I want a gaming computer.  Do I?", [ aindy]).
test_e2c("I want a windows 7 computer for work.", [ aindy]).
test_e2c("I want a fast linux computer for work.", [ aindy]).
test_e2c("I want a computer to run AI stuff on, namely justin.frdcsa.org.  I could upgrade justin to have more capabilities!!!", [ aindy]).
test_e2c("I could install a fresh operating system on justin for work.", [ aindy]).
test_e2c("I probably want a separate git computer.", [ aindy]).
test_e2c("I need to start buying servers.", [ aindy]).
test_e2c("I want a rackmount case for servers.", [ aindy]).



test_e2c("Each african country is bordered by 2 oceans.", [ chat80(tell)]).
test_e2c("2 oceans border each african country.", [ chat80(tell)]).
test_e2c("There are 10 large cars.", [ quants]).
test_e2c("There are 10 oceans.", [ quants]).
test_e2c("There are 10 women.", [ quants]).
test_e2c("An ocean borders an African country.", [ chat80(tell)]).
test_e2c("What is the ocean that borders african countries and that borders asian countries?" , tell]).
test_e2c("Indian ocean is the ocean that borders african countries and that borders asian countries.", [ tell]).

test_e2c("Bertrand wrote a book.", [ bratko(book)]).
test_e2c("Bertrand wrote nothing.", [ bratko(book)]).

% passes the above and fails the below
test_e2c("Bertrand wrote.", [ bratko(book)]).
test_e2c("Bertrand wrote a book about Gottlob.", [ bratko(book)]).
test_e2c("Bertrand wrote about Gottlob.", [ bratko(book)]).
test_e2c("Bertrand wrote nothing about Gottlob.", [ bratko(book)]).

test_e2c("What did alfred write to Bertrand?", [ bratko(book)]).
test_e2c("Alfred wrote a letter.", [ bratko(book)]).
test_e2c("Alfred wrote a letter to Bertrand.", [ bratko(book)]).
test_e2c("Alfred wrote something to Bertrand.", [ bratko(book)]).
test_e2c("Alfred wrote to Bertrand.", [ bratko(book)]).
test_e2c("Alfred wrote to Bertrand a letter.", [ bratko(book)]).
test_e2c("Alfred wrote Bertrand a letter.", [ bratko(book)]).
test_e2c("Who did alfred write a letter to?", [ bratko(book)]).

test_e2c("Alfred gave it.", [ bratko(book)]).
test_e2c("Alfred gave a book.", [ bratko(book)]).


