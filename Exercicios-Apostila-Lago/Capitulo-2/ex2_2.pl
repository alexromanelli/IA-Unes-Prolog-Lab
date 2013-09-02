/* funcionario: func(Codigo, Nome, Salario). */
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50).
func(4, leo, 2500.35).
func(5, clo, 1800.00).
func(6, gil, 1100.00).

/* dependente: dep(Codigo, Nome) */
dep(1, ary).
dep(3, rai).
dep(3, eva).
dep(4, lia).
dep(4, noe).
dep(5, eli).

/* consultas: 

func(Cod, Nome, Salario), Salario >= 1500.00, Salario =< 3000.00.

func(Cod, Nome, Salario), \+ dep(Cod,_), Salario < 1200.00.

dep(CodFunc, NomeDep), func(CodFunc, NomeFunc, Salario), Salario > 1700.00.

*/