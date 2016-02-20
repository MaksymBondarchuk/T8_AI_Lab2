get_n_help(N, I, [H|_], ThatEl) :-
    I == N,
    ThatEl = H.
get_n_help(N, I, [_|T], ThatEl) :-
    Ip1 is I + 1,
    get_n_help(N, Ip1, T, ThatEl).



get_n(N, Lst, ThatEl) :-
    0 < N,
    get_n_help(N, 1, Lst, ThatEl).
