% prod(A,B,X) -> X = A * B

prod(_,0,0).
prod(0,_,0).
prod(A,B,P) :-
    A>0,
    B>0,
    C is B-1,
    prod(A,C,R),
    P is A+R.
