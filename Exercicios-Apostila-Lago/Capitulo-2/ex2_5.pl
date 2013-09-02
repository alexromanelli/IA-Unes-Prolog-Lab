% pessoa(Nome, Sexo, Idade, Altura, Peso)

pessoa(ana, fem, 23, 1.55, 56.0).
pessoa(bia, fem, 19, 1.71, 61.3).
pessoa(ivo, masc, 22, 1.80, 70.5).
pessoa(lia, fem, 17, 1.85, 57.3).
pessoa(eva, fem, 28, 1.75, 68.7).
pessoa(ary, masc, 25, 1.72, 68.9).

modelo(X) :- pessoa(X, fem, I, A, P),
             P =< 62.1 * A - 44.7,
             A > 1.70,
             I < 25.
