% pessoa(Nome, Sexo, Idade, Altura, Peso)

pessoa(ana, fem, 23, 1.55, 56.0).
pessoa(bia, fem, 19, 1.71, 61.3).
pessoa(ivo, masc, 22, 1.80, 70.5).
pessoa(lia, fem, 17, 1.85, 57.3).
pessoa(eva, fem, 28, 1.75, 68.7).
pessoa(ary, masc, 25, 1.72, 68.9).

/* consultas:

pessoa(Nome, fem, Idade, _, _), Idade > 20.

pessoa(Nome, _, _, Altura, Peso), Altura >= 1.70, Peso < 65.0.

pessoa(Homem, masc, _, AlturaHomem, _), pessoa(Mulher, fem, _, AlturaMulher, _), AlturaHomem > AlturaMulher.

*/