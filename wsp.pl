% Shortest path with different weight edges
:- table sp(_,_,po('<'/2)).

sp(X,Y,D):-
	edge(X,Y,D).
sp(X,Z,D):-
	sp(X,Y,D1),
	edge(Y,Z,D2),
	D is D1 + D2.