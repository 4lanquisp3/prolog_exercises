/* suma(X,Y,Z) Z es la suma de X+Y */
suma(X,Y,Z):- write('La suma es: '), Z is X + Y.

/* Calcular el promedio de tres numeros X es promedio de A,B,C */
promedio(A,B,C,X):- X is (A+B+C)/3, write('El promedio es:').


director(clavijo,2014,2017).
director(morales,2011,2014).
director(llanque,2008,2014).
director(silva,2005,2008).
director(cl0avijo,2002,2005).
director(silva,1999,2002).

/* Docente X estuvo de direcrtor la gestion Y */
gestion(X,Y):-director(X,A,B), Y>=A, Y=<B.