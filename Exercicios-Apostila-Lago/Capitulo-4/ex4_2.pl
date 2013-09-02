% exibeBin(Numero) -> exibe na tela o número convertido em binário.

exibeBin(0) :- write(0).
exibeBin(1) :- write(1).
exibeBin(N) :-
    N>1,
    R is N mod 2,
    M is N // 2,
    exibeBin(M),
    write(R).