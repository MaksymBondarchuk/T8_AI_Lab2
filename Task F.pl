% Duplicates each member of <List> <Number> times
% 	(list, int, ?)
dups(List, Number, Result) :-
    dups(List, Number, Number, [], Result1),
    rev(Result1, [], Result).
dups([], _, _, ResultA, ResultA).
dups([_|T], NumberU, 0, ResultA, Result) :-
	dups(T, NumberU, NumberU, ResultA, Result).
dups([H|T], NumberU, NumbersLeft, ResultA, Result) :-
    NumbersLeft =\= 0,
	NumbersLeft_1 is NumbersLeft - 1,
    dups([H|T], NumberU, NumbersLeft_1, [H|ResultA], Result).
    

% Reverses list <[H|T>
% 	(list, list, ?)
rev([], A, A).
rev([H|T], A, Result) :-
    rev(T, [H|A], Result).
