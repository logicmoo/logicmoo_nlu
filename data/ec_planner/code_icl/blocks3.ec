% Pesky Blocks world
%
% We assume the following relations:
%
%    holds(P,S) is true if P is true in state S
%
%    poss(A,S) is true if action A is possible in state S
%
%    clips(P,A,S) is true if action A prevents proposition P from persisting in
%                 state S.
%
%    do(A,S) is true if action A is carried out in state S
:- expects_dialect(icl).


% The following are the actions that can occur. The priors represent what 
%  happens if we don't intervene.

random([do(puton(X,Z),S):0.0,
              do(careful(X,Z),S):0.0,
              do(clamp(X),S):0.1,
              do(nothing(X),S):0.9]).


% Some derived relations
%

% holds(clear(X),S) is true if there is nothing on X in state S, or
%  X is the table.

holds(clear(X),S) <- ~ holds(somethingon(X),S) & X\= table.
holds(clear(table),_) <- true.

holds(somethingon(X),S) <- holds(on(Z,X),S).

%------------------%
%  puton(X,Z,S)  %
%------------------%

% preconds true
%
% If the preconditions are true, then one of these happen.

random([holds(puton_success(X),S): 0.8,
        holds(puton_topple(X),S): 0.05,
        holds(puton_drop(X),S): 0.15]).

% preconditions are true

holds(puton_preconds(X,Z),S) <- 
     holds(clear(X),S) & 
     holds(clear(Z),S) & 
     X \= Z & 
     X\= table.

holds(on(X,Z),S+1) <- do(puton(X,Z),S) & holds(puton_success(X),S)
        & holds(puton_preconds(X,Z),S).

holds(on(W,table),S+1) <- do(puton(X,Z),S) 
        & holds(puton_topple(X),S)
        & holds(puton_preconds(X,Z),S)
        & holds(below_unclamped(W,Z),S).

holds(on(X,table),S+1) <- do(puton(X,Z),S) & holds(puton_topple(X),S)
        & holds(puton_preconds(X,Z),S).

% holds(below_unclamped(U,V),S) is true if U is V or is below V and is not
%   clamped and there are no clamped blocks inbetween.
holds(below_unclamped(U,U),S) <- 
        ~ do(clamp(U),S) & U \= table.
holds(below_unclamped(U,V),S) <- 
        holds(on(V,W),S) 
        & ~ holds(clamped(W),S)
        & holds(below_unclamped(U,W),S).

% preconds true, drop
%
% Drop means that we drop the block.  That's it.

holds(on(X,table),S+1) <- do(puton(X,Z),S) & holds(puton_drop(X),S)
        & holds(puton_preconds(X,Z),S).

clipped(on(X,Y),S) <-
   do(puton(X,Z),S)
   & holds(puton_preconds(X,Z),S).
clipped(on(A,B),S) <-
   do(puton(X,Z),S)
   & holds(puton_preconds(X,Z),S)
   & holds(puton_topple(X),S)
   & holds(below_unclamped(A,Z),S).




% Frame Axiom
% relation on holds in the next state if it held in the previous 
% state and there was no action to clip it. 

holds(on(X,Y),S+1) <-
   holds(on(X,Y),S) &
   ~ clipped(on(X,Y),S).

% preconds false
%
% If the preconditions are false, then either nothing happens, or the
% whole tower above X is toppled, and those below X are toppled unless held.

random([holds(puton_same(X),S): 0.8,
        holds(puton_messup(X),S): 0.2]).

clipped(on(A,B),S) <-
   do(puton(X,Z),S)
   & ~ holds(puton_preconds(X,Z),S)
   & holds(puton_messup(X),S)
   & (holds(below_unclamped(A,X),S) 
%     ; A=X
     ; holds(above(on(A,B),X),S) ).

holds(above(on(A,B),B),S) <-
   holds(on(A,B),S).

holds(above(on(A,B),X),S) <-
   holds(on(Y,X),S) &
   holds(above(on(A,B),Y),S).

holds(on(A,table),S+1) <-
   do(puton(X,Z),S)
   & ~ holds(puton_preconds(X,Z),S)
   & holds(puton_messup(X),S)
   & (holds(below_unclamped(A,X),S) 
%     ; A=Z
     ; holds(above(on(A,B),X),S) ).

%  Initial state:
%
%                 b
%                 c      e
%          a      d      f
%      ----------------------

holds(on(a,table),0) <- true.
holds(on(b,c),0) <- true.
holds(on(c,d),0) <- true.
holds(on(d,table),0) <- true.
holds(on(e,f),0) <- true.
holds(on(f,table),0) <- true.

% explain(holds(on(b,a),0+1+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(holds(on(b,table),0+1+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(holds(on(b,X),0+1+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(~((holds(on(b,table),0+1+1) ; holds(on(b,a),0+1+1) )), [], [do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(holds(clear(b),0+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(holds(on(a,X),0+1+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(holds(on(b,X),0+1),[],[do(puton(b,a),0)]).
% explain(~((holds(on(b,a),0+1);holds(on(b,table),0+1))),[],[do(puton(b,a),0)]).
% explain(holds(on(d,X),0+1+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(~ holds(on(d,table),0+1+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(holds(on(e,X),0+1+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(~ holds(on(e,f),0+1+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(holds(on(f,X),0+1+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(~ holds(on(f,table),0+1+1),[],[do(puton(b,a),0),do(puton(c,b),0+1)]).
% explain(holds(on(X,table),0+1),[],[do(puton(c,a),0)]).