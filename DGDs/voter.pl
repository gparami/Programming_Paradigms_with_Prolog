name(joe).
name(jane).
citizen(jane).
citizen(joe).
adult(jane).
voter(X):- name(X), citizen(X), adult(X).


p(X) :- b(X), c(Y).
p(X) :- a(X).
c(X) :- d(X).
a(1).
a(2).
a(3).
b(4).
b(5).
d(6).
d(7).