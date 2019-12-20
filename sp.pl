% Shortest path when weights are equal between edges
:- table sp(_,_,po('<'/2)).

sp(X,Y,1):- 
	edge(X,Y).
sp(X,Z,N):- 
	sp(X,Y,N1),
	edge(Y,Z),
	N is N1 + 1.