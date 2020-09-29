male(alan).
male(oscar).
male(jose).
male(felipe).

female(andrea).
female(josefina).
female(trinidad). 
female(sandra).

loves(romeo, julieta).
loves(fernanda, romeo).
loves(maria,jose).
loves(jose,maria).
loves(juan,jaimito).
loves(fernando, lurdes).
loves(alan,vania).

loves(X, Y) :- loves(Y, X).

