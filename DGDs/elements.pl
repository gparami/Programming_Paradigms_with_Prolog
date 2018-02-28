firstElement([H|_], H).


lastElement([], X, X).
lastElement([H|T], X) :- lastElement(T, H, X).
lastElement([H|T], _, X) :- lastElement(T, H, X).

% countElements([], 0).
% countElements([E], _, 1).
% countElements(L, X) :-  countElements(L, X, 0).
% countElements([_|T], X, C) = C1 is C + 1, countElements(T, X, C1), X is C1.


countElements([], 0).
countElements([_|T], X) :-  countElements(T, X1), X is X1 + 1.

listInsert(X,L,R) :- R = [X|L].