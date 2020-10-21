/* ultimo(X,Y) X es el ultimo elemento de la lista Y */
ultimo(X,[X]).
ultimo(X,[_|Y]):-ultimo(X,Y).

/* Obtiene el elemento contiguo
 * siguientea(X,Y,Z) los elementos X, Y son contiguos
 * y aparecen en el mismo orden en la lista Z */
siguientea(X,Y,[X,Y|_]).
siguientea(X,Y,[_|Z]):-siguientea(X,Y,Z).

/* pertenexe(X,Y) El elemento X pertenece a la lista Y */
pertenece(X,[X|_]).
pertenece(X,[_|Y]):-pertenece(X,Y).

/* predicado Append concatena 2 listas en una tercera lista */
/* append(X,Y,Z) Z es la concatenacion de X + Y */

/* Invertir los elementos de una lista */
/* inv(X,Y) La lista Y es el resultado de invertir X */
inv([],[]).
inv([H|T],L):-inv(T,Z), append(Z,[H],L).