% Reverses list <[H|T>
% 	(list, list-accumulator, ?)
rev([], A, A).
rev([H|T], A, Result) :-
    rev(T, [H|A], Result).

% Splits list onto two list: 
% 	<L1> where each element is lesser than <Middle> and
% 	<L2> where each element is bigger than <Middle>
% 		(int, list, ?, ?)
split(Middle, L, L1, L2) :-
    split(Middle, L, [], [], L1T, L2T),
    rev(L1T, [], L1),
    rev(L2T, [], L2).
split(_, [], L1A, L2A, L1A, L2A).
split(Middle, [H|T], L1A, L2A, L1, L2) :- 
	H < Middle,
    split(Middle, T, [H|L1A], L2A, L1, L2).
split(Middle, [H|T], L1A, L2A, L1, L2) :- 
	Middle < H,
    split(Middle, T, L1A, [H|L2A], L1, L2).
split(Middle, [_|T], L1A, L2A, L1, L2) :- 
    split(Middle, T, L1A, L2A, L1, L2).
