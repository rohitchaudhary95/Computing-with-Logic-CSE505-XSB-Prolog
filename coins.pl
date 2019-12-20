% minimum number of coins required to reach a value
:- table num(_,po('<'/2)).

coins(2).
coins(3).
coins(5).

num(C,1):-
	coins(C).

num(V,N):-
	coins(C),
	C=<V,
	X is V-C,
	num(X,Y),
	N is Y+1.