% pais(Nome, Area, Populacao)
pais(brasil,9,130).
pais(china,12,1800).
pais(eua,9,230).
pais(india,3,450).

/* a) */
densidade(Pais,Densidade) :- pais(Pais,A,P), Densidade is P/A.

/* b) */
% pais(china,_,X), pais(india,_,Y), Y > X.
