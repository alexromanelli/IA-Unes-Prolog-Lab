max([X],X).
max([X|Y],X) :- max(Y,Z), X>=Z.
max([X|Y],Z) :- max(Y,Z), X<Z.
