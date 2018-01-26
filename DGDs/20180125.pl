% Q1: predicate to find the time of the next second after a given time.
clockNextS(c(H,M,S),c(H,M,SN)) :-   S < 59,                     SN is S+1.
clockNextS(c(H,M,S),c(H,MN,0)) :-   S =:= 59, M < 59,           MN is M+1.
clockNextS(c(H,M,S),c(HN,0,0)) :-   S =:= 59, M =:= 59, H < 23, HN is H+1.
clockNextS(c(H,M,S),c(0,0,0))  :-   S =:= 59, M =:= 59, H =:= 23.

% Q2: How many times is the predicate factorial/2 called with the following query: ?- factorial (3,W).
factorial (0,1).
factorial (N,F) :-  N>0,
                   N1 is N-1,
                   factorial (N1, F1),
                   F is N * F1.
% W = 6 and predicate will be called 4 times, justify with a tree.

% Q3: Write a program which calculates the Ackermann function
a(0,N,A) :- A is N+1.
a(M,0,A) :- M > 0,
            M1 is M-1,
            a(M1,1, A).
a(M,N,A) :- M > 0,
            N > 0,
            M1 is M-1,
            N1 is N-1,
            a(M,N1,A1),
            a(M1,A1,A).