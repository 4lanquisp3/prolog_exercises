/* 4. Calcular el per�metro y �rea de un tri�ngulo rect�ngulo */
perimetro(A,B,C,P) :- P is ((A+B)+C).
area(B,H,A) :- A is (B*H)/2, write('El Area es:').


/* 5. Mostrar el mayor de tres n�meros */
mayor(A,B,C,M) :- A\=B, B\=C, A\=C,
    (M is A, A>B, A>C);
    (M is B, B>A, B>C);
    (M is C, C>A, C>B).

/* 6. Determinar si un n�mero es impar */
es_impar(X) :- 1 is (X mod 2).


