%inserting at right place.
insertion(X,[],[X]).
insertion(X,[H|T],[X,H|T]) :- X <= H.
insertion(X,[H|T],[H|LI]):- X>H, insertion(X,T,LI). 

%insertion Sort using insert
insertionSort(L,LS).
insertionSort([],[]).
insertionSort([H|T], LS) :- insertionSort (T,TS), insertion (H,TS,LS).

%get all permutations from a list
permute(L,LP).