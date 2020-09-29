man(abraham).
man(herbert).
man(homero).
man(bart).
man(clancy).

woman(mona).
woman(jacqueline).
woman(marge).
woman(patty).
woman(selma).
woman(lisa).
woman(maggie).
woman(ling).

parent(abraham,herbert).
parent(abraham,homero).
parent(mona,herbert).
parent(mona,homero).
parent(homero,bart).
parent(homero,lisa).
parent(homero,maggie).
parent(marge,bart).
parent(marge,lisa).
parent(marge,maggie).
parent(clancy,marge).
parent(clancy,patty).
parent(clancy,selma).
parent(jacqueline,marge).
parent(jacqueline,patty).
parent(jacqueline,selma).
parent(selma,ling).

partner(abraham,mona).
partner(mona,abraham).
partner(clancy,jacqueline).
partner(jacqueline,clancy).
partner(homero,marge).
partner(marge,homero).

/* Definición de reglas */

father(X,Y):-man(X),parent(X,Y).
mother(X,Y):-woman(X),parent(X,Y).
siblings(X,Y):-parent(Z,X),parent(Z,Y),not(X==Y).
brother(X,Y):-man(X),siblings(X,Y).
sister(X,Y):-woman(X),siblings(X,Y).
husband(X,Y):-partner(X,Y),man(X).
wife(X,Y):-partner(X,Y),woman(X).
father_in_law(X,Y):-partner(Z,Y),father(X,Z).
mother_in_law(X,Y):-partner(Z,Y),mather(X,Z).
son_in_law(X,Y):-father_in_law(Y,X);mother_in_law(Y,X),man(X).
daughter_in_law(X,Y):-father_in_law(Y,X);mother_in_law(Y,X), woman(X).
siblings_in_law(X,Y):-((partner(X,Z),siblings(Z,Y));(partner(Y,Z),siblings(Z,X))).
brother_in_law(X,Y):-siblings_in_law(X,Y),man(X).
sister_in_law(X,Y):-siblings_in_law(X,Y),woman(X).
grandfather(X,Y):-parent(Z,Y),parent(X,Z).
grandmother(X,Y):-parent(Z,Y),parent(X,Z).
grandson(X,Y):-parent(Y,Z),parent(Z,X),man(X).
granddaughter(X,Y):-parent(Y,Z),paret(Z,X),woman(X).
uncle(X,Y):-parent(Z,Y),(brother(X,Z);brother_in_law(X,Z)).
aunt(X,Y):-parent(Z,Y),(sister(X,Z);sister_in_law(X,Z)).
cousin(X,Y):-parent(Z,X),parent(W,Y),siblings(Z,W).

