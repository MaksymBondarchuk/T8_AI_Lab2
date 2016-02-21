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

% Checks if X and Y is coprime integers
is_coprime(X, Y) :-
	gcd(X, Y, D),
	D =:= 1.

% Calculates Euler's totient function
% 	(int, ?) 
phi(M, Y) :-
    R is M - 1,
    phi(M, R, 1, Y).
phi(_, 0, _, 1).
phi(_, 1, Phi, Phi).
phi(M, R, Phi, Res) :-
	is_coprime(M, R),
	Rm1 is R - 1,
	New_phi is Phi + 1,
	phi(M, Rm1, New_phi, Res).
phi(M, R, Phi, Res) :-
	Rm1 is R - 1,
	phi(M, Rm1, Phi, Res).
