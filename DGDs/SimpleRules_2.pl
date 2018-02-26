parent(marie, robert).
parent(paul, robert).
parent(paul, emma).
parent(robert, vickie).
parent(robert, anne).
parent(robert, gail).
parent(robert, stan).
parent(stan, jack).
female(marie).
female(emma).
female(gail).
female(anne).
female(vickie).

sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X).

% Give all solutions and explain how and in which order they are obtained in response to the foloowing query: ?- sister(X, gail).
% parent(Z, X), parent(Z, gail), female(X).
% parent(marie, robert)= true, parent(marie, gail) = fail, female(robert) = fail
% parent(paul, robert) = true, parent(paul, gail) = fail, female(robert) = fail
% parent(paul, emma) = true, parent(paul, gail) = fail, female(emma) = true
% parent(robert, vickie) = true, parent(robert, gail) = true, female(vickie) = true <-- result
% parent(robert, anne) = true, parent(robert, gail) = true, female(anne) = true <-- result
% parent(robert, gail) = true, parent(robert, gail) = true, female(gail) = true <-- result
% parent(robert, stan) = true, parent(robert, gail) = true, female(stan) = fail
% parent(stan, jack) = true, parent(stan, gail) = false, female(jack) = fail