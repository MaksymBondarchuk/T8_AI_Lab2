% Checks <X> for a prime number
% 	(int)
is_prime(2).
is_prime(X) :-
    sqrt(X, SqrtOfX),
    ceiling(SqrtOfX, CeiledSqrtOfX),
    is_prime(X, CeiledSqrtOfX).
is_prime(_, 1).
is_prime(X, CX) :-
    X mod CX =\= 0,
    CXm1 is CX - 1,
    is_prime(X, CXm1).

% Goldbach's conjecture (N should be not odd)
% 	(int, ?, ?)
% 	Result: X1 + X2 =:= N
goldbach(N, X1, X2) :-
    goldbach(N, 2, X1, X2).
goldbach(N, X, X1, X2) :-
    X < N,
    is_prime(X),
    NmX is N - X,
    is_prime(NmX),
    X1 is X,
    X2 is NmX.
goldbach(N, X, X1, X2) :-
    X < N,
    Xp1 is X + 1,
    goldbach(N, Xp1, X1, X2).
