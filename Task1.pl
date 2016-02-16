fib(1, 1).
fib(2, 1).
fib(X, Y) :-
	2 < X,
	X1 is X - 1,
	X2 is X - 2,
	fib(X1 + X2, Y1),
	Y1 is X1 + X2.