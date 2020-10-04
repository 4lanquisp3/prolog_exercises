/* verificar si un elemento pertenece a una lista */
pertenece(X,[X|_]).
pertenece(X,[_|Y]):-pertenece(X,Y).

/* X es el ultimo elemento de Y */
ultimo(X,[X]).
ultimo(X,[_|Y]):-ultimo(X,Y).

/* inv(X,Y) la lista y es el resultado de invertir
la lista X */
inv([],[]).
inv([H|T],L):-inv(T,Z), append(Z,[H],L).
