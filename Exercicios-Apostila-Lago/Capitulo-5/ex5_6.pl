anexa([], B, B).
anexa([X|A], B, [X|C]) :- anexa(A, B, C).

inv([],[]).
inv([X|Y],R) :- inv(Y,Z), anexa(Z,[X],R).

sim([]).
sim([_]).
sim([X|Y]) :- inv(Y,[A|B]), A=X, sim(B).
