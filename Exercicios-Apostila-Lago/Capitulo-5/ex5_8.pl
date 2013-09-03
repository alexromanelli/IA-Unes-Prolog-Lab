estrada(1,a,b).
estrada(2,a,d).
estrada(3,b,c).
estrada(4,c,d).
estrada(5,b,e).
estrada(6,c,f).
estrada(7,d,f).
estrada(8,e,f).

rota(A,A,[]).
rota(A,B,R) :- estrada(R,A,B).
rota(A,B,[R|S]) :- estrada(R,A,C), rota(C,B,S).
