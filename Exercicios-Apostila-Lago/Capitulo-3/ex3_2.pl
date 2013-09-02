num(N,positivo) :- N>0, !.
num(N,nulo) :- N=0, !.
num(N,negativo) :- N<0.

/*

A versão original está declarada abaixo:

num(N,positivo) :- N>0.
num(0,nulo).
num(N,negativo) :- N<0.

Nesta versão, há retrocesso desnecessário para avaliar se existe alguma outra possibilidade mesmo após
encontrar uma verdade. Por exemplo, para avaliar num(X,nulo) é feita uma análise da cláusula num(0,nulo),
e é encontrado o resultado X=0. Em seguida, é feita nova análise da mesma cláusula, em busca de 
outra possibilidade, mas não é encontrada, resultando em falha. Não seria necessário fazer este retrocesso,
pois só há um valor possível para esta cláusula.

Para evitar este tipo de retrocesso, as cláusulas são modificadas pela inclusão de cortes.

num(N,positivo) :- N>0, !.
num(N,nulo) :- N=0, !.
num(N,negativo) :- N<0.

*/