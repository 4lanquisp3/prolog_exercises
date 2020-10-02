/* 1. tu amas las bananas */
/* R. yo no amo  las bananas */
cambiar(tu,yo).
cambiar(amas,[no,amo]).

/* 2. como te llamas */
/* R. me llamo alan quispe */
cambiar(como,me).
cambiar(te,llamo).
cambiar(llamas,[alan,quispe]).

cambiar(X,X).
alterar([],[]).
alterar([H|T],[X|Y]):-cambiar(H,X),alterar(T,Y).


