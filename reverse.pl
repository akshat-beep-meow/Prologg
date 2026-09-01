lreversed(L,R):-
  lst_reverse_acc(L,[],R).

lst_reverse_acc([],Ac,Ac).

lst_reverse_acc([H|T],Ac,R):-
  lst_reverse_acc(T,[H|Ac],R).
