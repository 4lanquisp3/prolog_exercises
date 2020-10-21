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

/* 1. Calcular el perimetro y el area de un rectangulo */
/* Emplear un unico empleado */
per_area(L1,L2,Perimetro,Area):-write('Perimetro y Area:'),
    							Perimetro is L1*2 + L2*2,
    							Area is L1 * L2.


/* 2. Obtener el producto de la tabla del 6 */
/* P es el producto de 6 * X */
producto(X,P) :- P is 6 * X, write('El producto es:').

/* 3. Calcular el perimetro y area de un triangulo rectangulo */
/* P es el perimetro, A es el Area*/
per_area_tri(B,A,Perimetro,Area):- write('Perimetro y Area:'),
    					  Area is (B * A)/2,
    					  Perimetro is B + A + sqrt(B*B + A*A). 


/* 4. Mostrar el mayor de 3 numeros */
mayor2(X,Y,Z):- (X > Y, Z is X);(Y > X, Z is Y).
mayor3(X,Y,Z,M):- write('El mayor es:'),
    				X \= Y, Y \= Z, X \= Z,
    				mayor2(X,Y,J),
    				mayor2(Z,J,K), 
    				M is K.

/* 4. Otra forma */
mayor(A,B,C,M):- A\=B,B\=C,A\=C,
    			 (M is A, A>B,A>C);
    			 (M is B, B>A,B>C);
    			 (M is C, C>B,C>A).

/* 5. Determinar si un # es Par */
es_par(X):- 0 is (X mod 2).

/* 6. Determinar si un # es inPar */
es_impar(X):- 1 is (X mod 2).
