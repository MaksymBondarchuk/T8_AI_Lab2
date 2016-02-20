% Returns list of multipliers of <X>
% 	(int, ?)
multipliers(X, Result) :-
    X_1 is X - 1,
	multipliers(X, X_1, [], Result).
multipliers(_, 1, A, A).
multipliers(X, XA, A, Result) :-
    X mod XA =:= 0,
    XA_1 is XA - 1,
    multipliers(X, XA_1, [XA|A], Result).
multipliers(X, XA, A, Result) :-
    XA_1 is XA - 1,
    multipliers(X, XA_1, A, Result).
