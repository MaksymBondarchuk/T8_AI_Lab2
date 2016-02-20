% Greatest common divisor
gcd(X,X,X).
gcd(X,Y,D):- 
	X < Y,
	Y1 is Y - X,
	gcd(X, Y1, D).
gcd(X,Y,D):- 
	Y < X,
	X1 is X - Y,
	gcd(X1, Y, D).
%:- arithmetic_function(gcd/2).

% Checks if X and Y is coprime integers
is_coprime(X, Y) :-
	gcd(X, Y, D),
	D =:= 1.

% Calculates Euler's totient function
% 	(int, int, int, int) 
euler(_, 0, _, 1).
euler(_, 1, Phi, Phi).
euler(M, R, Phi, Res) :-
	is_coprime(M, R),
	Rm1 is R - 1,
	New_phi is Phi + 1,
	euler(M, Rm1, New_phi, Res).
euler(M, R, Phi, Res) :-
	Rm1 is R - 1,
	euler(M, Rm1, Phi, Res).

phi(M, Y) :-
    R is M - 1,
    euler(M, R, 1, Y).
