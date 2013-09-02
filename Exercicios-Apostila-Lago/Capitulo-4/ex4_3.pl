% representação: estrada(Origem,Destino,Km)

estrada(a,b,25).
estrada(a,d,23).
estrada(b,c,19).
estrada(b,e,32).
estrada(c,d,14).
estrada(c,f,28).
estrada(d,f,30).
estrada(e,f,26).

% relação transitiva: dist(A,B,D)

dist(A,B,D) :- 
    estrada(A,B,D),
    write(A),write(-),write(B),nl.
dist(A,B,D) :- 
    estrada(A,C,DistAC),
    dist(C,B,DistCB),
    D is DistAC+DistCB,
    write(A),write(-),write(C),write(-),write(B),nl.