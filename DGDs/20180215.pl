% Friday 2:00pm & Tuesday 2-3PM @ CBY B405 [MIDTERM REVIEW]

% A minHeap

% Checking heap property --> is full binary tree?
full(nil, 0) :- !. %depth zero empty tree
full(t(_,nill,nill),1) :- !. %tree with a single node

full(t(_,Left,Right),D) :- %recursive case
    full(Left,DLeft),
    full(Right,DRight),
    DLeft >= DRight,
    D is DLeft + 1.

% Checking heap property --> is key(parent) <= key(child)
checkOrder(t(_,nill,nill)) :- !. %tree with just the root
checkOrder(t(_,nil,_)) :- !,fail. %tree without a left tree, void's the fullness

checkOrder(t(Key,Left,nil)) :- %recursive for the left tree (only left depth could be 2)
    Left = t(LeftKey,_,_),
    Key < LeftKey,
    checkOrder(Left).

checkOrder(t(Key,Left,Right)) :- %recursive for the all other posibilities (big heap)
    Left = t(LeftKey,_,_),
    Key < LeftKey,
    checkOrder(Left),
    Right = t(RightKey,_,_),
    Key < RightKey,
    checkOrder(Right).

isHeap(T) :-    full(T,_), %check full tree
                checkOrder(T),!. %check heap property for each node
