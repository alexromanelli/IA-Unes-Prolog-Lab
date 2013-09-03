soma([],0).
soma([X|Y],S) :- soma(Y,S1), S is X+S1.