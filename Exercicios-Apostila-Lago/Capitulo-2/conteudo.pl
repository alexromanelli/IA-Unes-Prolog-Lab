% pais(Nome, Area, Populacao)
pais(brasil,9,130).
pais(china,12,1800).
pais(eua,9,230).
pais(india,3,450).

/* funcionario: func(Codigo, Nome, Salario). */
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50).

/* dependente: dep(Codigo, Nome) */
dep(1, ary).
dep(3, rai).
dep(3, eva).

/* Gnu Prolog: not (negação por falha) usa a token \+ */
%func(C,N,_), \+ dep(C,_).

/* filme(Titulo, Genero, Ano, Duracao) */
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor purpura', drama, 1985, 152).
filme('Copacabana', comedia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

classico(T,G,A,D) :- filme(T,G,A,D), A =< 1985.
classico(T,G) :- filme(T,G,A,_), A =< 1985.