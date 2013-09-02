/* filme(Titulo, Genero, Ano, Duracao) */
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor purpura', drama, 1985, 152).
filme('Copacabana', comedia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

longo(X) :- filme(X,_,_,D), D > 150.

lancamento(X,AnoAtual) :- filme(X,_,A,_), AnoAtual - A < 1.
