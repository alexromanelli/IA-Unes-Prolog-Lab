tam([],0).
tam([_|Y],N) :-
    tam(Y,M),
    N is 1+M.
