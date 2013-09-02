% pot(Base,Expoente,Potencia)
pot(_,0,1).
pot(B,N,P) :-
    N>0,
    M is N-1,
    pot(B,M,R),
    P is B*R.
    
% fat(Numero,Fatorial)
fat(0,1).
fat(N,F) :-
    N>0,
    M is N-1,
    fat(M,R),
    F is N*R.

 
pai(adao,cain).
pai(adao,abel).
pai(adao,seth).
pai(seth,enos).

ancestral(X,Y) :- pai(X,Y).
ancestral(X,Y) :- pai(X,Z), ancestral(Z,Y).

sobre(b,a).
sobre(d,b).
sobre(d,c).

acima(X,Y) :- sobre(X,Y).
acima(X,Y) :- sobre(X,Z), acima(Z,Y).

