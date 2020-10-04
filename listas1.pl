/* verificar si un elemento pertenece a una lista */
pertenece(X,[X|_]).
pertenece(X,[_|Y]):-pertenece(X,Y).
