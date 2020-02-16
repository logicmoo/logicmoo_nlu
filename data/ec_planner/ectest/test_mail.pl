:- include('../ec_test_incl').
/*

   Formulae for the mail delivery domain.

   Example queries:


*/

do_test(mail1)   :- abdemo_special(loops,[holds_at(in(p1,r2),t)],R).
do_test(mail2)   :- abdemo_special(loops,[holds_at(in(p1,r3),t)],R).

/* Compound actions */


axiom(happens(shift_pack(P,R1,R2,R3),T1,T6),
     [happens(go_to_room(R1,R2),T1,T2),
     b(T2,T3), not(clipped(T2,in(R2),T3)), not(clipped(T1,in(P,R2),T3)),
     happens(pick_up(P),T3), b(T3,T4), happens(go_to_room(R2,R3),T4,T5),
     b(T5,T6), not(clipped(T3,got(P),T6)), not(clipped(T5,in(R3),T6)),
     happens(put_down(P),T6)]).

axiom(initiates(shift_pack(P,R1,R2,R3),in(P,R3),T),
     [holds_at(in(R1),T), holds_at(in(P,R2),T)]).


axiom(happens(go_to_room(R,R),T,T),[]).

axiom(happens(go_to_room(R1,R3),T1,T3),
     [connects(D,R1,R2), towards(R2,R3,R1),
     happens(go_to_room(R2,R3),T2,T3), b(T1,T2), happens(go_through(D),T1),
     not(clipped(T1,in(R2),T2))]).

axiom(happens(go_to_room(R1,R3),T1,T3),
     [connects(D,R1,R2), happens(go_through(D),T1),
     happens(go_to_room(R2,R3),T2,T3), b(T1,T2),
     not(clipped(T1,in(R2),T2))]).

axiom(initiates(go_to_room(R1,R2),in(R2),T),[holds_at(in(R1),T)]).



/* Primitive actions */


axiom(initiates(pick_up(P),got(P),T),
     [diff(P,robot), holds_at(in(P,R),T), holds_at(in(R),T)]).

axiom(releases(pick_up(P),in(P,R),T),
     [diff(P,robot), holds_at(in(P,R),T), holds_at(in(R),T)]).


axiom(initiates(put_down(P),in(P,R),T),
     [diff(P,robot), holds_at(got(P),T), holds_at(in(R),T)]).

axiom(terminates(put_down(P),got(P),T),[]).


axiom(initiates(go_through(D),in(R1),T),
     [connects(D,R2,R1), holds_at(in(R2),T)]).

axiom(terminates(go_through(D),in(R),T),[holds_at(in(R),T)]).



/* Narrative */


axiom(initially(in(r3)),[]).

axiom(initially(neg(in(r1))),[]).

axiom(initially(neg(in(r2))),[]).

axiom(initially(in(p1,r1)),[]).

axiom(initially(neg(in(p1,r2))),[]).

axiom(initially(neg(in(p1,r3))),[]).



/* Room connectivity */


axiom(connects(d1,r1,r2),[]).

axiom(connects(d1,r2,r1),[]).

axiom(connects(d2,r2,r3),[]).

axiom(connects(d2,r3,r2),[]).


/* towards(R1,R2,R3) means that room R1 is towards room R2 from room R3. */

axiom(towards(R1,R1,R2),[]).

axiom(towards(r2,r1,r3),[]).

axiom(towards(r2,r3,r1),[]).



/* Abduction policy */


abducible(dummy).


executable(pick_up(P)).

executable(put_down(P)).

executable(go_through(D)).


