d(0).
d(1).
falha :- 1=2.
bin2([A,B,C]) :- d(A), d(B), d(C), write([A,B,C]), nl, falha.

/* a declaração explícita 1=2 sempre falha, provocando o mesmo resultado do
   predicado fail.
 */