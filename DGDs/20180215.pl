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


%% Removal of minimum (removal of root in minHeap)

% Helper predicate to find tree depth
depth(nil,0) :- !.

depth(t(_,nil,nil),1) :- !.

depth(t(_,Left,Right),D) :-
    depth(Left,DLeft),
    depth(Right,DRight),
    D is max(DLeft,DRight) + 1.

% Remove last node from heap
removeLast(t(L,nil,nil),L,nil) :- !.

removeLast(t(K,Left,Right),L,t(K,LLeft,Right)) :- %see which side is bigger and remove last (Left)
    depth(Left,DL),
    depth(Right,DR),
    DL > DR,
    removeLast (Left,L,LLeft),!.

removeLast(t(K,Left,Right),L,t(K,Left,RRight)) :- %see which side is bigger and remove last (Right)
    depth(Left,DL),
    depth(Right,DR),
    DL =:= DR,
    removeLast (Right,L,RRight),!.

% Down Heap
downHeap(t(K,nil,nil),t(K,Left,Right)) :- !. %heap with one element

downHeap(t(K,Left,nil),t(LeftKey,t(K,nil,nil),nil)) :- %only one element after root to left (need swap)
    Left = t(LeftKey,_,_),
    LeftKey < K, !.

downHeap(t(K,Left,nil),t(K,Left,nil)) :- %only one element after root to left (no swap)
    Left = t(LeftKey,_,_),
    LeftKey >= K, !.

downHeap(t(K,Left,Right),t(K,Left,Right)) :- %normal case but already min heap
    Left = t(LeftKey,_,_),
    Right = t(RightKey,_,_),
    K < LeftKey,
    K < RightLey, !.

downHeap(t(K,Left,Right),t(LeftKey,NLeft,Right)) :- %normal case swap with left
    Left = t(LeftKey,LLeft,LRight),
    Right = t(RightKey,_,_),
    LeftKey < RightKey,
    downHeap (t(K,LLeft,LRight),NLeft).

downHeap(t(K,Left,Right),t(RightKey,Left,NRight)) :- %normal case swap with right
    Left = t(LeftKey,_,_),
    Right = t(RightKey,RLeft,RRight),
    LeftKey > RightKey,
    downHeap (t(K,RLeft,RRight),NRight).

% H is Heap in, M is min, HH is modified Heap
removeMin(t(M,nil,nil),M,nil) :- !.
removeMin(t(M,Left,Right),M,HH) :-
    removeLast(t(M,Left,Right),K,t(_,LLeft,RRight)),
    downHeap(t(K,LLeft,RRight),HH).
