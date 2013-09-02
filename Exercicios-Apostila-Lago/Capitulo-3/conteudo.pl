d(0).
d(1).
b([A,B,C]) :- d(A), d(B), d(C).
bin([A,B,C]) :- d(A), !, d(B), d(C).

f(X,0) :- X < 5.
f(X,1) :- X >= 5, X =< 9.0.
f(X,2) :- X > 9.0.

f1(X,0) :- X < 5, !.
f1(X,1) :- X >= 5, X =< 9, !.
f1(X,2) :- X > 9.

if(Condition,Then,_) :- Condition, !, Then.
if(_,_,Else) :- Else.

bin2([A,B,C]) :- d(A), d(B), d(C), write([A,B,C]), nl, fail.
