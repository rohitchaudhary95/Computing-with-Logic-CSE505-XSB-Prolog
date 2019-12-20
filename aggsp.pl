:- import bagPO/3 from aggregs.
:- hilog short_path.
:- hilog gt.

gt(X,Y) :- X>Y.
bagMin(Bag,Min):-
	bagPO(Bag,Min,gt).

short_path(X,Y)(D):- 
	edge(X,Y,D).
short_path(X,Y)(D):-
    bagMin(short_path(X,Z),D1),
    edge(Z,Y,D2),
    D is D1 + D2.

% The shortest path is the minimum of the short paths
agg_sp(X,Y,D):-
	bagMin(short_path(X,Y),D).