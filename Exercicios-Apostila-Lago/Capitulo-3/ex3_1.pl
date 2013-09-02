joga(ana,volei).
joga(bia,tenis).
joga(ivo,basquete).
joga(eva,volei).
joga(leo,tenis).

/* joga(P,X), joga(leo,X), P\=leo.

| ?- joga(P,X), joga(leo,X), P\=leo.
      1    1  Call: joga(_16,_17) ? 
      1    1  Exit: joga(ana,volei) ? 
      2    1  Call: joga(leo,volei) ? 
      2    1  Fail: joga(leo,volei) ? 
      1    1  Redo: joga(ana,volei) ? 
      1    1  Exit: joga(bia,tenis) ? 
      2    1  Call: joga(leo,tenis) ? 
      2    1  Exit: joga(leo,tenis) ? 
      3    1  Call: bia\=leo ? 
      4    2  Call: bia=leo ? 
      4    2  Fail: bia=leo ? 
      3    1  Exit: bia\=leo ? 

P = bia
X = tenis ? ;
      1    1  Redo: joga(bia,tenis) ? 
      1    1  Exit: joga(ivo,basquete) ? 
      2    1  Call: joga(leo,basquete) ? 
      2    1  Fail: joga(leo,basquete) ? 
      1    1  Redo: joga(ivo,basquete) ? 
      1    1  Exit: joga(eva,volei) ? 
      2    1  Call: joga(leo,volei) ? 
      2    1  Fail: joga(leo,volei) ? 
      1    1  Redo: joga(eva,volei) ? 
      1    1  Exit: joga(leo,tenis) ? 
      2    1  Call: joga(leo,tenis) ? 
      2    1  Exit: joga(leo,tenis) ? 
      3    1  Call: leo\=leo ? 
      4    2  Call: leo=leo ? 
      4    2  Exit: leo=leo ? 
      3    1  Fail: leo\=leo ? 

(4 ms) no

--------------------------------------------------

| ?- joga(leo,X), joga(P,X), P\=leo.
      1    1  Call: joga(leo,_16) ? 
      1    1  Exit: joga(leo,tenis) ? 
      2    1  Call: joga(_20,tenis) ? 
      2    1  Exit: joga(bia,tenis) ? 
      3    1  Call: bia\=leo ? 
      4    2  Call: bia=leo ? 
      4    2  Fail: bia=leo ? 
      3    1  Exit: bia\=leo ? 

P = bia
X = tenis ? ;
      2    1  Redo: joga(bia,tenis) ? 
      2    1  Exit: joga(leo,tenis) ? 
      3    1  Call: leo\=leo ? 
      4    2  Call: leo=leo ? 
      4    2  Exit: leo=leo ? 
      3    1  Fail: leo\=leo ? 

no

A segunda consulta é mais eficiente, pois reduz a quantidade de ramificações da árvore
ao resumir a busca apenas a identificar os valores de P que satisfazem joga(P,X) e,
em seguida, comparando P\=leo.

A primeira consulta, de outra forma, provoca a avaliação completa da base de conhecimento
para a primeira cláusula, joga(P,X), gerando várias ramificações desnecessárias na busca.

*/