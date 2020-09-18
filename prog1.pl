% trabaja(X,Y): la persona X trabaja en el lugar Y
trabaja(juan,alcaldia).
trabaja(walter,alcaldia).
trabaja(fatima,universidad).
trabaja(maria,caja).

% padres(X,M,P): padres de X son M(mamá) y P(papá).

padres(bart,marge,homero).
padres(lisa,marge,homero).

% dos personas son hermanos si tienen los mismos padres

hermanos(A,B) :- padres(A,M,P), padres(B,M,P).

% hermano(A,B) <-- padres(A,M,P) pares(B,M,P)
