:- include('../ec_test_incl').
/*

   Formulae for the mail delivery domain.

   Example queries:


*/

do_test(mail1)   :- abdemo_special(loops,[holds_at(inRoom(p1,r2),t)],R).
do_test(mail2)   :- abdemo_special(loops,[holds_at(inRoom(p1,r3),t)],R).

/* Compound actions */


fluent(atRoom(agent,room)).
fluent(inRoom(package,room)).

axiom(happens(shift_pack(Agnt,P,R1,R2,R3),T1,T6),
     [happens(go_to_room(Agnt,R1,R2),T1,T2),
     before(T2,T3), not(clipped(T2,atRoom(Agnt,R2),T3)), not(clipped(T1,inRoom(P,R2),T3)),
     happens(pick_up(Agnt,P),T3), before(T3,T4), happens(go_to_room(Agnt,R2,R3),T4,T5),
     before(T5,T6), not(clipped(T3,got(Agnt,P),T6)), not(clipped(T5,atRoom(Agnt,R3),T6)),
     happens(put_down(Agnt,P),T6)]).

<-(initiates(shift_pack(Agnt,P,R1,R2,R3),inRoom(P,R3)),
     &(atRoom(Agnt,R1),inRoom(P,R2))).

                                            
axiom(happens(go_to_room(Agnt,R,R),T,T),[]).

axiom(happens(go_to_room(Agnt,R1,R3),T1,T3),
     [connects(D,R1,R2), towards(R2,R3,R1),
     happens(go_to_room(Agnt,R2,R3),T2,T3), before(T1,T2), happens(go_through(Agnt,D),T1),
     not(clipped(T1,atRoom(Agnt,R2),T2))]).

axiom(happens(go_to_room(Agnt,R1,R3),T1,T3),
     [connects(D,R1,R2), happens(go_through(Agnt,D),T1),
     happens(go_to_room(Agnt,R2,R3),T2,T3), before(T1,T2),
     not(clipped(T1,atRoom(Agnt,R2),T2))]).

axiom(initiates(go_to_room(Agnt,R1,R2),atRoom(Agnt,R2),T),[holds_at(atRoom(Agnt,R1),T)]).



/* Primitive actions */


axiom(initiates(pick_up(Agnt,P),got(Agnt,P),T),
     [diff(P,robot), holds_at(inRoom(P,R),T), holds_at(atRoom(Agnt,R),T)]).

axiom(releases(pick_up(Agnt,P),inRoom(P,R),T),
     [diff(P,robot), holds_at(inRoom(P,R),T), holds_at(atRoom(Agnt,R),T)]).


axiom(initiates(put_down(Agnt,P),inRoom(P,R),T),
     [diff(P,robot), holds_at(got(Agnt,P),T), holds_at(atRoom(Agnt,R),T)]).

axiom(terminates(put_down(Agnt,P),got(Agnt,P),T),[]).


axiom(initiates(go_through(Agnt,D),atRoom(Agnt,R1),T),
     [connects(D,R2,R1), holds_at(atRoom(Agnt,R2),T)]).

axiom(terminates(go_through(Agnt,D),atRoom(Agnt,R),T),[holds_at(atRoom(Agnt,R),T)]).




/* Narrative */


axiom(initially(atRoom(a1,r3)),[]).

axiom(initially(neg(atRoom(a1,r1))),[]).

axiom(initially(neg(atRoom(a1,r2))),[]).

axiom(initially(inRoom(p1,r1)),[]).

axiom(initially(neg(inRoom(p1,r2))),[]).

axiom(initially(neg(inRoom(p1,r3))),[]).



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


executable(pick_up(Agnt,P)).

executable(put_down(Agnt,P)).

executable(go_through(Agnt,D)).


