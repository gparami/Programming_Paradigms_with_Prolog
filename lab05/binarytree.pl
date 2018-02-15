% Write a program that finds all nodes in a binary tree that have a left subtree but no right subtree (nil).
% The program is to return these nodes in a inorder list.

leftNodes(T,L) :- leftNodes(T,[],L).

leftNodes(nil,LA,LA) :- !.

leftNodes(t(Root,Left,nil),LA,L) :- 
    ______________________,
    ______________________,
    leftNodes(Left,LA,LL),
    ______________________.

leftNodes(t(_,Left,Right),LA,L) :-
    leftNodes(Left,LA,LL),
    leftNodes(Right,LA,LR),
    append(LL,LR,L).