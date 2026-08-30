concatinate([],L2,L2).
concatinate([H|T],L2,[H|R]):-
  concatinate(T,L2,R).
