% Additional for dups
dups_help([], _, _, ResultA, ResultA).
dups_help([_|T], NumberU, 0, ResultA, Result) :-
	dups_help(T, NumberU, NumberU, ResultA, Result).
dups_help([H|T], NumberU, NumbersLeft, ResultA, Result) :-
    NumbersLeft =\= 0,
	NumbersLeft_1 is NumbersLeft - 1,
    dups_help([H|T], NumberU, NumbersLeft_1, [H|ResultA], Result).
    

% Reverses list <[H|T>
% 	(list, list-accumulator, ?)
rev([], A, A).
rev([H|T], A, Result) :-
    rev(T, [H|A], Result).

% Duplicates each member of <List> <Number> times
% 	(list, int, ?)
dups(List, Number, Result) :-
    dups_help(List, Number, Number, [], Result1),
    rev(Result1, [], Result).
