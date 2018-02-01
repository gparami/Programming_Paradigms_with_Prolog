%Exercise 1 - Looping

%Looping cannot be done with repeat this way because there is no statement to call N1 as the next countdown command (ie. coundown(N1)).
%countDown(N):- repeat, writeln(N), N1 is N-1, N1 < 0, !.

%Therefore use recursion
countDown(N) :- N<0, !.
countDown(N) :- writeln(N),
                NN is N-1,
                countDown(NN).