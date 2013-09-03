anexa([], B, B).
anexa([X|A], B, [X|C]) :- anexa(A, B, C).

inv([],[]).
inv([X|Y],R) :- inv(Y,Z), anexa(Z,[X],R).

