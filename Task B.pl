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
isCoprime(X, Y) :-
	gcd(X, Y, D),
	D =:= 1.
