% Write a predicate to add up all the numbers in a list but uses an alternating sign.

addAlternate(L,S) :- addAlternate(L,0,p,S).

addAlternate([],S,_,S).

addAlternate([H|T],A,p,S) :- !,
	AA is A + H,
	addAlternate(T,AA,m,S).

addAlternate([H|T],A,m,S) :- !, 
	AA is A - H,
        addAlternate(T,AA,p,S).