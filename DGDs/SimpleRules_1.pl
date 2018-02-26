color(snow, white). % color of snow is white
size(mountains, tall). % size of mountains is tall
weight(snow, light). % weight of snow is light
color(mountains, grey).
color(grass, green).
color(trees, green).
grow(grass, mountains). % grass grows on mountains
grow(trees, mountains).
size(trees, tall).
size(grass, low).
color(plains, brown).
grow(wheat, plains).
color(wheat, yellow).
size(wheat, low).

% To the above database add a rule native2BC which says if something grows on mountains and is green then it is native to BC.
native2BC(X) :- grow(X, mountains), color(X, green).

% To the above database add a rule likedByCows which says if something grows and it is low then it is like by cows.
likedByCows(X) :- grow(X, _), size(X, low).

% Add another rule likedByGoats which says if something grows in mountains then it is liked by goats.
likedByGoats(X) :- grow(X, mountains).

% And finally if something is likedByGoats and likedByCows as well as native2BC than it is feed4Animals.
feed4Animals(X) :- likedByGoats(X), likedByCows(X), native2BC(X).