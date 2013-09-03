exibe([]) :- nl.
exibe([X|Y]) :- write(X), exibe(Y).

membro(X,[X|_]).
membro(X,[_|Y]) :- membro(X,Y).

anexa([], B, B).
anexa([X|A], B, [X|C]) :- anexa(A, B, C).

% >>>>>>>>>>>>>> Algoritmo Merge Sort:

% distribui(L,A,B) : distribui itens de L entre A e B

distribui([],[],[]).
distribui([X],[X],[]).
distribui([X,Y|Z],[X|A],[Y|B]) :- distribui(Z,A,B).

% intercala(A,B,L) : intercala A e B gerando L

intercala([],B,B).
intercala(A,[],A).
intercala([X|A],[Y|B],[X|C]) :-
    X =< Y,
    intercala(A,[Y|B],C).
intercala([X|A],[Y|B],[Y|C]) :-
    X > Y,
    intercala([X|A],B,C).
    
% ordena(L,S) : ordena a lista L obtendo S

ordena([],[]).
ordena([X],[X]).
ordena([X,Y|Z],S) :-
    distribui([X,Y|Z],A,B),
    ordena(A,As),
    ordena(B,Bs),
    intercala(As,Bs,S).

% >>>>>>>>>>>>>>>> fim do algoritmo Merge Sort.

hist(data(22,abril,1500),'Descobrimento do Brasil').
hist(data(7,setembro,1822),'Declaracao da independencia').
hist(data(15,novembro,1889),'Proclamacao da Republica').

vertical(linha(ponto(X,_),ponto(X,_))).
horizontal(linha(ponto(_,Y),ponto(_,Y))).
