% This is an ACE text set (i.e. APE regression testset and bug database).
%
% Each text is contained in a Prolog fact 
%
% text_drs_eval(Evaluation, Id, Text, DRS, Trees, Timestamp, Author, Comment)
%
% where
% Evaluation is either 0 (correct analysis i.e. a regression testcase) or 1 (incorrect analysis i.e. a bug),
% Id is an id-number of the ACE text,
% Text is an ACE text,
% DRS its corresponding DRS,
% Trees are its corresponding syntax trees,
% Timestamp shows the time when the entry was added,
% Author shows the IP of the author of the evaluation,
% Comment shows the comment by the author.
%
% The facts are not in any particular order.
%
% Those texts are based on data sent by the XMLHttpRequest client.
% The users of the client have been instructed to send the data only if they
% are sure that the Text-DRS pair is either correct (0) or incorrect (1).
% In case the DRS for a given Text has been sent more than once, then only the most
% recently sent DRS is included in the text set.

:- op(400, fx, -).
:- op(400, fx, ~).
:- op(500, xfx, =>).
:- op(500, xfx, v).

:- encoding(utf8).

text_drs_eval(0, 1, 'there is a man.', drs([A], [object(A, man, countable, na, eq, 1)-1]), [[specification, [top_s, [topic, [quant, ['{there is}']], [np, [det, [a]], [nbar, [n, [man]]]]]], ['.']]], '2006-07-26-16-15-20', amadeus, '').
text_drs_eval(0, 2, 'a flat mate runs.', drs([A, B], [object(A, mate, countable, na, eq, 1)-1, property(A, flat, pos)-1, predicate(B, run, A)-1]), [[specification, [s, [np, [det, [a]], [nbar, [adj, [flat]], [nbar, [n, [mate]]]]], [vp, [vbar, [v, [runs]]]]], ['.']]], '2005-08-03-12-55-49', blade17, '').
text_drs_eval(0, 3, 'a dog is good.', drs([A, B, C], [object(B, dog, countable, na, eq, 1)-1, predicate(C, be, B, A)-1, property(A, good, pos)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [dog]]]], [vp, [vbar, [v, [is]], [ap_coord, [ap, [adj, [good]]]]]]], ['.']]], '2005-04-20-16-32-33', 'ifidyn146.ifi.unizh.ch', '').
text_drs_eval(0, 4, 'A man waits in a bank.', drs([A, B, C], [object(A, bank, countable, na, eq, 1)-1, object(B, man, countable, na, eq, 1)-1, predicate(C, wait, B)-1, modifier_pp(C, in, A)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]]]], [vp, [vbar, [vbar, [v, [waits]]], [pp, [prep, [in]], [np, [det, [a]], [nbar, [n, [bank]]]]]]]], ['.']]], '2005-07-22-12-14-55', '80-218-104-121.dclient.hispeed.ch', '').
text_drs_eval(0, 5, 'A dummy Dummy dummy a dummy.', drs([], []), [], '2005-08-31-20-09-30', blade17, '').
text_drs_eval(0, 6, 'a man Kaarel works hard.', drs([], []), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]], [appos_coord, [appos, [var, ['Kaarel']]]]]], [vp, [vbar, [vbar, [v, [works]]], [adv, [hard]]]]], ['.']]], '2006-08-12-18-09-32', amadeus, '').
text_drs_eval(0, 7, 'a man Kaarel works extremely fast.', drs([], []), [], '2005-08-10-12-07-22', 'ifidyn186.ifi.unizh.ch', '').
text_drs_eval(0, 8, 'There is a man John. A man Bob brings him his pencil and his own computer.', drs([], []), [], '2005-08-31-20-18-04', blade17, '').
text_drs_eval(0, 9, 'A man runs and walks or sleeps.', drs([A], [drs([B, C], [predicate(B, walk, A)-1, predicate(C, run, A)-1])v drs([D], [predicate(D, sleep, A)-1]), object(A, man, countable, na, eq, 1)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]]]], [vp_coord, [vp_coord, [vp, [vbar, [v, [runs]]]], [coord, [and]], [vp, [vbar, [v, [walks]]]]], [coord, [or]], [vp, [vbar, [v, [sleeps]]]]]], ['.']]], '2005-06-09-11-17-11', 'ifidyn146.ifi.unizh.ch', '').
text_drs_eval(0, 10, 'there is some absinth.', drs([A], [object(A, absinth, mass, na, na, na)-1]), [[specification, [top_s, [topic, [quant, ['{there is}']], [np, [det, [some]], [nbar, [n, [absinth]]]]]], ['.']]], '2005-10-04-17-09-46', blade17, '').
text_drs_eval(0, 11, 'is there some absinth?', drs([], [question(drs([A], [object(A, absinth, mass, na, na, na)-1/4]))]), [[sentence, [query, [question, [topic, [quant, 'is there'], [np, [det, some], [nbar, [n, absinth]]]]], ?], '.']], '2009-05-13-13-30-23', '130.60.155.177', '').
text_drs_eval(0, 12, 'a n:sdfsdfsdfsdfsdf waits.', drs([A, B], [object(A, sdfsdfsdfsdfsdf, countable, na, eq, 1)-1, predicate(B, wait, A)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [sdfsdfsdfsdfsdf]]]], [vp, [vbar, [v, [waits]]]]], ['.']]], '2005-04-20-15-47-57', 'ifidyn146.ifi.unizh.ch', '').
text_drs_eval(0, 13, 'a /* man */ dog barks.', drs([A, B], [object(A, dog, countable, na, eq, 1)-1, predicate(B, bark, A)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [dog]]]], [vp, [vbar, [v, [barks]]]]], ['.']]], '2005-04-20-15-50-34', 'ifidyn146.ifi.unizh.ch', '').
text_drs_eval(0, 14, '/** * This ACE text tests APE\'s comment support. */ #The program APE supports the comments of language Perl. /* The program APE supports the comments of language C. */ A /* big */ man walks. #fast. A woman /* who sees him */ smiles. A dog /* who # sees her */ barks. A cat # /* who sees her eats a cake. A rat # */ who sees her eats a cheese. /* /* C-comment inside a C-comment */ */ /* # Perl-comment inside a C-comment */ /* This is a large ACE text, which has been commented out. This is a large ACE text, which has been commented out. This is a large ACE text, which has been commented out. */', drs([], []), [], '2007-12-20-12-20-38', '130.60.155.177', '').
text_drs_eval(0, 15, 'is there a man?', drs([], [question(drs([A], [object(A, man, countable, na, eq, 1)-1/4]))]), [[sentence, [query, [question, [topic, [quant, 'is there'], [np, [det, a], [nbar, [n, man]]]]], ?], '.']], '2009-05-13-13-30-33', '130.60.155.177', '').
text_drs_eval(0, 16, 'are there some men?', drs([], [question(drs([A], [object(A, man, countable, na, geq, 2)-1/4]))]), [[sentence, [query, [question, [topic, [quant, 'are there'], [np, [det, some], [nbar, [n, men]]]]], ?], '.']], '2009-05-13-13-30-43', '130.60.155.177', '').
text_drs_eval(0, 17, 'does a man wait?', drs([], [question(drs([A, B], [object(A, man, countable, na, eq, 1)-1/3, predicate(B, wait, A)-1/4]))]), [[sentence, [query, [question, does, [np, [det, a], [nbar, [n, man]]], [vp, [vbar, [vbar, [v, wait]]]]], ?], '.']], '2009-05-13-13-30-54', '130.60.155.177', '').
text_drs_eval(0, 18, 'do some men wait?', drs([], [question(drs([A, B], [object(A, man, countable, na, geq, 2)-1/3, predicate(B, wait, A)-1/4]))]), [[sentence, [query, [question, do, [np, [det, some], [nbar, [n, men]]], [vp, [vbar, [vbar, [v, wait]]]]], ?], '.']], '2009-05-13-13-31-04', '130.60.155.177', '').
text_drs_eval(0, 19, 'a man does not wait in a bank.', drs([A], [-drs([B, C], [object(B, bank, countable, na, eq, 1)-1, modifier_pp(C, in, B)-1, predicate(C, wait, A)-1]), object(A, man, countable, na, eq, 1)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]]]], [neg_vp, [aux, [does]], [neg, [not]], [vbar, [vbar, [v, [wait]]], [pp, [prep, [in]], [np, [det, [a]], [nbar, [n, [bank]]]]]]]], ['.']]], '2005-04-20-17-09-39', blade17, '').
text_drs_eval(0, 20, 'a man is happy a dog.', drs([], []), [], '2005-06-11-22-39-53', unknown, '').
text_drs_eval(0, 21, 'where does a man wait?', drs([], [question(drs([A, B], [object(A, man, countable, na, eq, 1)-1/4, predicate(B, wait, A)-1/5, query(B, where)-1/1]))]), [[sentence, [query, [question, [qpn, where], does, [np, [det, a], [nbar, [n, man]]], [vp, [vbar, [vbar, [v, wait]]]]], ?], '.']], '2009-05-13-13-31-38', '130.60.155.177', '').
text_drs_eval(0, 22, 'John waits.', drs([A, B], [object(B, 'John', named, na, eq, 1)-1, predicate(A, wait, B)-1]), [[specification, [s, [np, [pname, ['John']]], [vp, [vbar, [v, [waits]]]]], ['.']]], '2005-06-28-15-18-23', 'ifidyn231.ifi.unizh.ch', '').
text_drs_eval(0, 23, 'The flat mate of John is a clerk.', drs([A, B, C, D], [object(A, clerk, countable, na, eq, 1)-1, object(C, mate, countable, na, eq, 1)-1, object(D, 'John', named, na, eq, 1)-1, relation(C, of, D)-1, property(C, flat, pos)-1, predicate(B, be, C, A)-1]), [[specification, [s, [np, [det, [the]], [nbar, [adj, [flat]], [nbar, [n, [mate]], [pp, [prep, [of]], [np, [pname, ['John']]]]]]], [vp, [vbar, [v, [is]], [np, [det, [a]], [nbar, [n, [clerk]]]]]]], ['.']]], '2005-08-04-15-03-44', blade17, '').
text_drs_eval(0, 24, 'the customer John enters a card.', drs([], []), [], '2005-08-31-20-19-37', blade17, '').
text_drs_eval(0, 25, 'the screen blinks and John waits.', drs([A, B, C, D], [object(A, screen, countable, na, eq, 1)-1, object(C, 'John', named, na, eq, 1)-1, predicate(B, wait, C)-1, predicate(D, blink, A)-1]), [[specification, [s_coord, [s, [np, [det, [the]], [nbar, [n, [screen]]]], [vp, [vbar, [v, [blinks]]]]], [coord, [and]], [s, [np, [pname, ['John']]], [vp, [vbar, [v, [waits]]]]]], ['.']]], '2005-04-22-17-48-24', blade17, '').
text_drs_eval(0, 26, 'the surface of the card has a green color.', drs([A, B, C, D], [object(C, color, countable, na, eq, 1)-1, object(D, surface, countable, na, eq, 1)-1, object(A, card, countable, na, eq, 1)-1, relation(D, of, A)-1, predicate(B, have, D, C)-1, property(C, green, pos)-1]), [[specification, [s, [np, [det, [the]], [nbar, [n, [surface]], [pp, [prep, [of]], [np, [det, [the]], [nbar, [n, [card]]]]]]], [vp, [vbar, [v, [has]], [np, [det, [a]], [nbar, [adj, [green]], [nbar, [n, [color]]]]]]]], ['.']]], '2005-04-22-17-49-23', blade17, '').
text_drs_eval(0, 27, 'John \' s car is fast.', drs([A, B, C, D], [object(B, car, countable, na, eq, 1)-1, object(D, 'John', named, na, eq, 1)-1, predicate(C, be, B, A)-1, property(A, fast, pos)-1, relation(B, of, D)-1]), [[specification, [s, [np, [poss_np, [pname, ['John']], ['|', [gen_marker, ['\'s']]]], [nbar, [n, [car]]]], [vp, [vbar, [v, [is]], [ap_coord, [ap, [adj, [fast]]]]]]], ['.']]], '2005-04-23-15-36-24', 'ifidyn146.ifi.unizh.ch', '').
text_drs_eval(0, 28, 'John\'s car is fast.', drs([A, B, C, D], [object(A, 'John', named, na, eq, 1)-1, relation(B, of, A)-1, object(B, car, countable, na, eq, 1)-1, property(C, fast, pos)-1, predicate(D, be, B, C)-1]), [[specification, [s, [np, [poss_np, [pname, ['John']], ['|', [gen_marker, ['\'s']]]], [nbar, [n, [car]]]], [vp, [vbar, [v, [is]], [ap_coord, [ap, [adj, [fast]]]]]]], ['.']]], '2006-12-20-17-32-54', '130.60.155.211', '').
text_drs_eval(0, 29, 'A n:aaa v:bbb the n:ccc.', drs([A, B, C], [object(B, aaa, countable, na, eq, 1)-1, object(C, ccc, countable, na, eq, 1)-1, predicate(A, bbb, B, C)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [aaa]]]], [vp, [vbar, [v, [bbb]], [np, [det, [the]], [nbar, [n, [ccc]]]]]]], ['.']]], '2005-04-23-15-38-54', 'ifidyn146.ifi.unizh.ch', '').
text_drs_eval(0, 30, 'a man waits.', drs([A, B], [object(A, man, countable, na, eq, 1)-1, predicate(B, wait, A)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]]]], [vp, [vbar, [v, [waits]]]]], ['.']]], '2005-04-23-15-50-19', 'ifidyn146.ifi.unizh.ch', '').
text_drs_eval(0, 31, 'A man X waits.', drs([A, B], [object(A, man, countable, na, eq, 1)-1, predicate(B, wait, A)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]], [appos_coord, [appos, [var, ['X']]]]]], [vp, [vbar, [v, [waits]]]]], ['.']]], '2005-08-26-18-59-46', blade17, '').
text_drs_eval(0, 32, 'John beats the donkey of his own wife\'s brother.', drs([], []), [], '2008-08-12-10-09-49', '130.60.206.55', '').
text_drs_eval(0, 33, 'some money is green.', drs([A, B, C], [object(A, money, mass, na, na, na)-1, property(B, green, pos)-1, predicate(C, be, A, B)-1]), [[specification, [s, [np, [det, [some]], [nbar, [n, [money]]]], [vp, [vbar, [v, [is]], [ap_coord, [ap, [adj, [green]]]]]]], ['.']]], '2005-10-04-17-10-16', blade17, '').
text_drs_eval(0, 34, 'A man hits a dog that runs in a park.', drs([A, B, C, D, E], [predicate(E, hit, A, B)-1, modifier_pp(D, in, C)-1, predicate(D, run, B)-1, object(C, park, countable, na, eq, 1)-1, object(B, dog, countable, na, eq, 1)-1, object(A, man, countable, na, eq, 1)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]]]], [vp, [vbar, [v, [hits]], [np, [det, [a]], [nbar, [n, [dog]], [rel_cl, [comp, [that]], [vp, [vbar, [vbar, [v, [runs]]], [pp, [prep, [in]], [np, [det, [a]], [nbar, [n, [park]]]]]]]]]]]]], ['.']]], '2007-11-13-15-00-18', '130.60.155.161', '').
text_drs_eval(0, 35, 'A man gives a cat which gives a bone to a dog.', drs([A, B, C, D, E, F], [object(A, man, countable, na, eq, 1)-1, object(B, cat, countable, na, eq, 1)-1, object(C, bone, countable, na, eq, 1)-1, predicate(D, give, B, C)-1, object(E, dog, countable, na, eq, 1)-1, predicate(F, give, A, B, E)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]]]], [vp, [vbar, [v, [gives]], [np, [det, [a]], [nbar, [n, [cat]], [rel_cl, [comp, [which]], [vp, [vbar, [v, [gives]], [np, [det, [a]], [nbar, [n, [bone]]]]]]]]], [pp, [prep, [to]], [np, [det, [a]], [nbar, [n, [dog]]]]]]]], ['.']]], '2006-08-14-18-41-12', amadeus, '').
text_drs_eval(0, 36, 'a man is taller than a woman.', drs([A, B, C, D], [object(A, man, countable, na, eq, 1)-1, object(B, woman, countable, na, eq, 1)-1, property(C, tall, comp_than, B)-1, predicate(D, be, A, C)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]]]], [vp, [vbar, [v, [is]], [ap_coord, [ap, [adj, [taller]], [conj, [than]], [np, [det, [a]], [nbar, [n, [woman]]]]]|E]]]], ['.']]], '2007-05-09-12-11-46', '130.60.156.229', '').
text_drs_eval(0, 37, 'a man hits a dog that is smaller than a cat.', drs([A, B, C, D, E, F], [object(A, man, countable, na, eq, 1)-1, object(B, dog, countable, na, eq, 1)-1, object(C, cat, countable, na, eq, 1)-1, property(D, small, comp_than, C)-1, predicate(E, be, B, D)-1, predicate(F, hit, A, B)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]]]], [vp, [vbar, [v, [hits]], [np, [det, [a]], [nbar, [n, [dog]], [rel_cl, [comp, [that]], [vp, [vbar, [v, [is]], [ap_coord, [ap, [adj, [smaller]], [conj, [than]], [np, [det, [a]], [nbar, [n, [cat]]]]]|G]]]]]]]]], ['.']]], '2007-05-09-12-11-54', '130.60.156.229', '').
text_drs_eval(0, 38, 'An animal X eats an animal Y that is smaller than X.', drs([A, B, C, D, E], [object(A, animal, countable, na, eq, 1)-1, object(B, animal, countable, na, eq, 1)-1, property(C, small, comp_than, A)-1, predicate(D, be, B, C)-1, predicate(E, eat, A, B)-1]), [[specification, [s, [np, [det, an], [nbar, [n, animal], [appos, [var, 'X']]]], [vp, [vbar, [v, eats], [np, [det, an], [nbar, [n, animal], [appos, [var, 'Y']], [rel_cl, [comp, that], [vp, [aux, is], [vbar, [ap_coord, [ap, [adj, smaller], [conj, than], [np, [var, 'X']]]]]]]]]]]], '.']], '2008-08-15-20-36-40', '130.60.204.15', '').
text_drs_eval(0, 39, 'Every animal X eats an animal Y that is smaller than X.', drs([], [drs([A], [object(A, animal, countable, na, eq, 1)-1])=>drs([B, C, D, E], [object(B, animal, countable, na, eq, 1)-1, property(C, small, comp_than, A)-1, predicate(D, be, B, C)-1, predicate(E, eat, A, B)-1])]), [[specification, [s, [np, [det, every], [nbar, [n, animal], [appos, [var, 'X']]]], [vp, [vbar, [v, eats], [np, [det, an], [nbar, [n, animal], [appos, [var, 'Y']], [rel_cl, [comp, that], [vp, [aux, is], [vbar, [ap_coord, [ap, [adj, smaller], [conj, than], [np, [var, 'X']]]]]]]]]]]], '.']], '2008-08-15-20-36-56', '130.60.204.15', '').
text_drs_eval(0, 40, 'A man is a:reich-an a dog.', drs([A, B, C, D], [object(A, man, countable, na, eq, 1)-1, object(B, dog, countable, na, eq, 1)-1, property(C, 'reich-an', pos, B)-1, predicate(D, be, A, C)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]]]], [vp, [vbar, [v, [is]], [ap_coord, [ap, [adj, ['reich-an']], [np, [det, [a]], [nbar, [n, [dog]]]]]|E]]]], ['.']]], '2007-06-12-09-55-01', '130.60.156.66', '').
text_drs_eval(0, 41, '5 clerks\' codes are valid.', drs([A, B, C, D], [object(A, clerk, countable, na, eq, 5)-1, relation(B, of, A)-1, object(B, code, countable, na, geq, 2)-1, property(C, valid, pos)-1, predicate(D, be, B, C)-1]), [[specification, [s, [np, [poss_np, [numberp, [gen_quant, [[]]], [number, [5]]], [nbar, [n, [clerks]]], ['|', [gen_marker, ['\'']]]], [nbar, [n, [codes]]]], [vp, [vbar, [v, [are]], [ap_coord, [ap, [adj, [valid]]]]]]], ['.']]], '2006-12-20-17-34-40', '130.60.155.211', '').
text_drs_eval(0, 42, 'each of 5 clerks\' codes is valid.', drs([A, B], [object(B, clerk, countable, na, eq, 5)-1, relation(A, of, B)-1, object(A, code, countable, na, geq, 2)-1, drs([C], [has_part(A, C)-1])=>drs([D, E], [property(D, valid, pos)-1, predicate(E, be, C, D)-1])]), [[specification, [s, [np, [quant, ['{each of}']], [np, [poss_np, [numberp, [gen_quant, [[]]], [number, [5]]], [nbar, [n, [clerks]]], ['|', [gen_marker, ['\'']]]], [nbar, [n, [codes]]]]], [vp, [vbar, [v, [is]], [ap_coord, [ap, [adj, [valid]]]]]]], ['.']]], '2006-04-06-21-42-49', 'ifidyn175.ifi.unizh.ch', '').
text_drs_eval(0, 43, 'A man A waits.', drs([A, B], [object(A, man, countable, na, eq, 1)-1, predicate(B, wait, A)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]], [appos_coord, [appos, [var, ['A']]]]]], [vp, [vbar, [v, [waits]]]]], ['.']]], '2005-08-26-19-00-06', blade17, '').
text_drs_eval(0, 44, 'A man John gives an apple to a woman Mary. Mary accepts the apple and eats it. She is happy and he has no apples.', drs([], []), [], '2005-08-31-21-09-44', blade17, '').
text_drs_eval(0, 45, 'A man John waits.', drs([], []), [], '2005-08-31-20-19-55', blade17, '').
text_drs_eval(0, 46, 'There is a man B. B waits.', drs([A, B], [object(A, man, countable, na, eq, 1)-1, predicate(B, wait, A)-2]), [[specification, [top_s, [topic, [quant, ['{there is}']], [np, [det, [a]], [nbar, [n, [man]], [appos_coord, [appos, [var, ['B']]]]]]]], ['.']], [specification, [s, [np, [np, [var, ['B']]]], [vp, [vbar, [v, [waits]]]]], ['.']]], '2005-08-26-19-00-23', blade17, '').
text_drs_eval(0, 47, 'A man waits. He is happy.', drs([A, B, C, D], [object(C, man, countable, na, eq, 1)-1, predicate(D, be, C, A)-2, property(A, happy, pos)-2, predicate(B, wait, C)-1]), [[specification, [s, [np, [det, [a]], [nbar, [n, [man]]]], [vp, [vbar, [v, [waits]]]]], ['.']], [specification, [s, [np, [pn, [he]]], [vp, [vbar, [v, [is]], [ap_coord, [ap, [adj, [happy]]]]]]], ['.']]], '2005-04-27-11-22-22', 'ifidyn146.ifi.unizh.ch', '').
text_drs_eval(0, 48, 'Some men wait. They are happy.', drs([A, B, C, D], [object(A, man, countable, na, geq, 2)-1, predicate(B, wait, A)-1, property(C, happy, pos)-2, predicate(D, be, A, C)-2]), [[specification, [s, [np, [det, [some]], [nbar, [n, [men]]]], [vp, [vbar, [v, [wait]]]]], ['.']], [specification, [s, [np, [pn, [they]]], [vp, [vbar, [v, [are]], [ap_coord, [ap, [adj, [happy]]]]]]], ['.']]], '2006-04-07-14-41-11', 'ifidyn175.ifi.unizh.ch', '').
text_drs_eval(0, 49, 'There is 1 man D. There is 1 park B. D waits in B.', drs([A, B, C], [object(A, park, countable, na, eq, 1)-2, object(B, man, countable, na, eq, 1)-1, predicate(C, wait, B)-3, modifier_pp(C, in, A)-3]), [[specification, [top_s, [topic, [quant, ['{there is}']], [np, [numberp, [gen_quant, [[]]], [number, [1]]], [nbar, [n, [man]], [appos_coord, [appos, [var, ['D']]]]]]]], ['.']], [specification, [top_s, [topic, [quant, ['{there is}']], [np, [numberp, [gen_quant, [[]]], [number, [1]]], [nbar, [n, [park]], [appos_coord, [appos, [var, ['B']]]]]]]], ['.']], [specification, [s, [np, [np, [var, ['D']]]], [vp, [vbar, [vbar, [v, [waits]]], [pp, [prep, [in]], [np, [np, [var, ['B']]]]]]]], ['.']]], '2005-08-26-19-00-46', blade17, '').
text_drs_eval(0, 50, 'Every man waits-for some women who are happy or are sad.', drs([], []), [], '2005-08-17-18-45-14', blade17, '').

:- include('acetexts.nldata').
