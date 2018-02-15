leafNodes(T,L) :- leafNodes(T,[],L).

leafNodes(nil,L,L) :- !.

leafNodes(t(Root,nil,nil),LT,[Root|LT]) :- !.

leafNodes(t(_,Left,Right),LA,L) :-
    leafNodes(Left,LA,LL),
    leafNodes(Right,LA,LR).
    append(LL,LR,L).