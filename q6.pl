facto(0,1).
facto(N,F):-
  N>0,
  N1 is N-1,
  fact(N1,F1),
  F is F1*N.
