ultimo([X],X).
ultimo([_|Y],A) :- ultimo(Y,A).
