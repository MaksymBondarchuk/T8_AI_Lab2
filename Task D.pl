% Help for a is_prime
is_prime_help(_, 1).
is_prime_help(X, CX) :-
    X mod CX =\= 0,
    CXm1 is CX - 1,
    is_prime_help(X, CXm1).
  
% Check for a prime number
is_prime(2).
is_prime(X) :-
    sqrt(X, SqrtOfX),
    ceiling(SqrtOfX, CeiledSqrtOfX),
    is_prime_help(X, CeiledSqrtOfX).


% Goldbach's conjecture with additional parameter
% 	(int, int, ?, ?)
% 	Result: X1 + X2 =:= N
goldbach_help(N, X, X1, X2) :-
    X < N,
    is_prime(X),
    NmX is N - X,
    is_prime(NmX),
    X1 is X,
    X2 is NmX.
goldbach_help(N, X, X1, X2) :-
    X < N,
    Xp1 is X + 1,
    goldbach_help(N, Xp1, X1, X2).


% Goldbach's conjecture (N should be not odd)
% 	(int, ?, ?)
% 	Result: X1 + X2 =:= N
goldbach(N, X1, X2) :-
    goldbach_help(N, 2, X1, X2).
