% Reverses list
% 	(list, list, ?)
rev([], A, A).
rev([H|T], A, Result) :-
    rev(T, [H|A], Result).

% Checks is <X> member of list
% 	(atom, list)
member(X, [X|_]).
member(X, [_|T]) :-
	member(X, T).

% Returns intersection sets <Set1> and <Set2>
% 	(list, list, ?)
intersection(Set1, Set2, Result) :-
    intersection(Set1, Set2, [], ResultT),
    rev(ResultT, [], Result).
intersection([], _, A, A).
intersection([H1|T1], Set2, A, Result) :-
    member(H1, Set2),
    intersection(T1, Set2, [H1|A], Result).
intersection([_|T1], Set2, A, Result) :-
    intersection(T1, Set2, A, Result).
