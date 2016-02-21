% Returns element on <N> position in list <lst>
% 	(int, list, ?)
get_n(N, Lst, ThatEl) :-
    0 < N,
    get_n(N, 1, Lst, ThatEl).
get_n(N, I, [H|_], ThatEl) :-
    I =:= N,
    ThatEl = H.
get_n(N, I, [_|T], ThatEl) :-
    Ip1 is I + 1,
    get_n(N, Ip1, T, ThatEl).
