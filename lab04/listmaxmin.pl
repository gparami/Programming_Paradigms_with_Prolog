
maxmin(L,Max,Min) :- 
maxmin([],0,0).
maxmin([X|L],H,L) :-    maxmin(L,HH,LL),
                        H is HH,