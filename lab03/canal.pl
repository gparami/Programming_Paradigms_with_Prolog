%Exercise 3: Cut-Fail

%Consider the following database:
canalOpen( saturday ).
canalOpen( monday ).
canalOpen( tuesday ).
raining( saturday ).
melting( saturday ).
melting( sunday ).
melting( monday ).

%Write a Prolog predicate to return true if it is advisable to go to winterlude.
%It should return true if the Canal is open, it is not raining and not melting You must use cut-fail in your solution.
weather(X) :-   melting(X),
                !, fail.
weather(X) :-   raining(X),
                !, fail.
weather(_).

winterlude(X) :-canalOpen(X),
                weather(X).