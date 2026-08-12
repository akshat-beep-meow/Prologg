male(amir).
male(narayan).
male(akshat).

female(jyoti).
female(vineeta).
female(aashna).

parent(amir,narayan).
parent(jyoti,narayan).

parent(narayan,akshat).
parent(vineeta,akshat).
parent(narayan,aashna).
parent(vineeta,aashna).

father(X,Y):-
    male(X),
    parent(X,Y).
mother(X,Y):-
    female(X),
    parent(X,Y).
brother(X,Y):-
    male(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.
sister(X,Y):-
    female(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.
grandparent(X,Y):-
    parent(X,Z),
    parent(Z,Y).    
grandfather(X,Y):-
    male(X),
    grandparent(X,Y).
grandmother(X,Y):-
    female(X),
    grandparent(X,Y).

