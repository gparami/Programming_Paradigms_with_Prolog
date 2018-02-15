% Write a program that finds all nodes in a binary tree that have a left subtree but no right subtree (nil).
% The program is to return these nodes in a inorder list.

treeA(X) :- X = t(73, t(31, t(5, nil, nil), nil), t(101, t(83, t(97, nil, nil), nil), nil)).

leftNodes(T,L) :- leftNodes(T,[],L).

leftNodes(nil,LA,LA) :- !.

leftNodes(t(Root,Left,nil),LA,L) :- 
    
    leftNodes(Left,LA,LL),
    append(Root,LA,L).

leftNodes(t(_,Left,Right),LA,L) :-
    leftNodes(Left,LA,LL),
    leftNodes(Right,LA,LR),
    append(LL,LR,L).