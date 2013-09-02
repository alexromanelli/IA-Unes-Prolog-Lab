animal(cao).
animal(canario).
animal(cobra).
animal(morcego).
animal(gaivota).

voa(canario).
voa(morcego).
voa(gaivota).

dif(X,X) :- !, fail.
dif(_,_).

passaro(X) :- animal(X), voa(X), dif(X,morcego).

/*

 + passaro(X)
 |
 +--+ animal(X), voa(X), dif(X,morcego)
    |
    +--+ animal(cao)
    |  |
    |  +--+ voa(cao), dif(cao,morcego)
    |     |
    |     +-- voa(cao) -> falha
    |  
    +--+ animal(canario)
    |  |
    |  +--+ voa(canario), dif(canario,morcego)
    |     |
    |     +--+ dif(canario,morcego)
    |        |
    |        +-- verdade
    |
    +--+ animal(cobra)
    |  |
    |  +--+ voa(cobra), dif(cobra,morcego)
    |     |
    |     +-- voa(cobra) -> falha
    |  
    +--+ animal(morcego)
    |  |
    |  +--+ voa(morcego), dif(morcego,morcego)
    |     |
    |     +--+ dif(morcego,morcego)
    |        |
    |        +--+ !, fail
    |           |
    |           +-- fail -> falha
    |  
    +--+ animal(gaivota)
       |
       +--+ voa(gaivota), dif(gaivota,morcego)
          |
          +--+ dif(gaivota,morcego)
             |
             +-- verdade
    

*/