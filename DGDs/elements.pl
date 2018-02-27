firstElement([H|_], H).


lastElement([], X, X).
lastElement([H|T], X) :- lastElement(T, H, X).
lastElement([H|T], _, X) :- lastElement(T, H, X).

countElements([], X, X).
countElements([H|T], X) :-  countElements( T, 1, X).
countElements([H|T], X1, X) :-  countElements(T, X1, X),
                                X is X1 + 1.