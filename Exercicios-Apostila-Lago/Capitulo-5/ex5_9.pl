regular(retangulo(ponto(X1,Y1),ponto(X1,Y2),ponto(X2,Y2),ponto(X2,Y1))).
regular(retangulo(ponto(X1,Y1),ponto(X2,Y1),ponto(X2,Y2),ponto(X1,Y2))).

raiz(X,Y) :- Y is sqrt(X).

quadrado(retangulo(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3),ponto(X4,Y4))) :-
    L1 is sqrt((X2-X1)**2 + (Y2-Y1)**2),
    L2 is sqrt((X3-X2)**2 + (Y3-Y2)**2),
    L3 is sqrt((X4-X3)**2 + (Y4-Y3)**2),
    L4 is sqrt((X1-X4)**2 + (Y1-Y4)**2),
    % write(L1),write(-),write(L2),write(-),write(L3),write( - ),write(L4),nl,
    L1=L2,
    L2=L3,
    L3=L4.
    
/*

regular(retangulo(ponto(0,0),ponto(0,1),ponto(2,1),ponto(2,0))). -> yes
regular(retangulo(ponto(1,0),ponto(2,1),ponto(1,2),ponto(0,1))). -> no

quadrado(retangulo(ponto(1,0),ponto(2,1),ponto(1,2),ponto(0,1))). -> yes
quadrado(retangulo(ponto(0,0),ponto(0,1),ponto(2,1),ponto(2,0))). -> no

 */