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

% What grows on mountains and is green?
% grow(X, mountains), color(X, green).

% What is tall and green?
% size(X, tall), color(X, green).

% What grows that is yellow?
% grow(X, _), color(X, yellow).

% What size do green things have that grow on mountains?
% color(_, green), grow(_, mountains), size(_, X).