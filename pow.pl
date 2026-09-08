power(_, 0, 1) :- !.
power(Base, Exp, Res) :-
    Exp > 0,
    NxtE is Exp - 1,
    power(Base, NxtE, SubRes),
    Res is Base * SubRes.