% Time of day is given in hours, minutes and seconds, as c(H, M, S).
% We need a predicate which produces precisely one solution: the time one second later. A few examples :
% ?- clockNextS(c(21, 54, 25), N). N =c(21, 54, 26).
% ?- clockNextS(c(21 , 54, 59), N). N = c(21, 55, 0) .
% ?- clockNextS(c(21, 59,59),N). N=c(22, 0,0) .
% ?- clockNextS (c(23, 59, 59), N). N =c(O, 0, 0).

clockNextS( c(H, M, S), c(H, M, SN) ) :- S < 59, SN is S+1.
clockNextS( c(H, M, S), c(H, MN, 0) ) :- M < 59, S = 59, MN is M+1.
clockNextS( c(H, M, S), c(HN, 0, 0) ) :- H < 23, M = 59, S = 59, HN is H+1.
clockNextS( c(H, M, S), c(0, 0, 0) ) :- H = 23, M = 59, S = 59.
