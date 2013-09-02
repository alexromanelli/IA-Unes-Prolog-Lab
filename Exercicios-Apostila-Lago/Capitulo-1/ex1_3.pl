/* a) todo mundo que tem filhos é feliz */
feliz(X) :- filho(_,X).
feliz(X) :- filha(_,X).

/* b) um casal é formado por duas pessoas que têm filhos em comum */
casal(X,Y) :- gerou(X,Z), gerou(Y,Z).
