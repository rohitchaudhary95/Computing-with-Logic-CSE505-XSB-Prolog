% Shortest path when weights are equal between edges
:- table sp(_,_,po('<'/2)).

sp(X,Y,1):- 
	nwedge(X,Y).
sp(X,Z,N):- 
	sp(X,Y,N1),
	nwedge(Y,Z),
	N is N1 + 1.

nwedge(1,2).
nwedge(2,3).
nwedge(1,4).
nwedge(3,4).
nwedge(4,5).