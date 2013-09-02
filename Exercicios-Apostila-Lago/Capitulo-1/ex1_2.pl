/* a) */
pai(ivo,eva).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
pai(rai,noe).
pai(ary,gal).

/* a) */
mae(ana,eva).
mae(bia,rai).
mae(bia,clo).
mae(bia,ary).
mae(eva,noe).
mae(lia,gal).

/* b) */
homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).

/* b) */
mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).

/* c) */
gerou(X,Y) :- pai(X,Y).
gerou(X,Y) :- mae(X,Y).

/* d) */
filho(X,Y) :- gerou(Y,X), homem(X).
filha(X,Y) :- gerou(Y,X), mulher(X).
irmao(X,Y) :- gerou(Z,X), gerou(Z,Y), homem(X), X\=Y.
irma(X,Y) :- gerou(Z,X), gerou(Z,Y), mulher(X), X\=Y.
tio(X,Y) :- gerou(Z,Y), irmao(X,Z).
tia(X,Y) :- gerou(Z,Y), irma(X,Z).
primo(X,Y) :- gerou(U,X), gerou(W,U), gerou(W,Z), gerou(Z,Y), homem(X).
prima(X,Y) :- gerou(U,X), gerou(W,U), gerou(W,Z), gerou(Z,Y), mulher(X).
avo(X,Y) :- gerou(Z,Y), pai(X,Z).
avoh(X,Y) :- gerou(Z,Y), mae(X,Z).
