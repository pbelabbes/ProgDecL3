%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	PROJET TEST D'INTELIGENCE %
%	   By Pierre BELABBES     %
%	   L3 MIAGE Grenoble      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	        

%SPEC
%sub(A,B,X):true if A-B=X
sub(A,B,X):-
    X is A - B.

%SPEC
%add(A,B,X):true if A+B=X
add(A,B,X):-
    X is A + B.

%SPEC
%div(A;B,X):true if A/B=X
div(A,B,X):-
    X is A / B.

%SPEC
%mult(A,B,X):true if A*B=X
mult(A,B,X):-
    X is A * B.

%SPEC
%derivSec([A,B,C],X): true if A=B=C=X
derivSec([X,X,X],X).

%SPEC
%derivSec([A,B,C],X): true if A=C and B=Y 
derivSec([X,Y,X],Y).

%SPEC
%derivOne([A,B,C,D],X): true if A=B=C=D=X
derivOne([X,X,X,X],X).

%%SPEC
%derivOne([A,B,C,D],X): true if A=C=X and B=D
derivOne([X,Y,X,Y],X).


%SPEC
%derivOne([A,B,C,D],X): true if X is the following element of the A,B,C,D suite thanks to an additionnal derivation
derivOne([A,B,C,D],X):-
	sub(B,A,E),
    sub(C,B,F),
    sub(D,C,G),
    derivSec([E,F,G],Y),
	add(Y,D,X).	
             
%SPEC
%derivOne([A,B,C,D],X): true if X is the following element of the A,B,C,D suite thanks to a product derivation
derivOne([A,B,C,D],X):-
	div(B,A,E),
    div(C,B,F),
    div(D,C,G),
    derivSec([E,F,G],Y),
    mult(D,Y,X).

%SPEC
%logSuit(L,Y): true if Y is the following element of the L logical consequence  
logSuit([_|R],Y):-
    logSuit(R,Y).

%SPEC
%logSuit([A,B,C,D,E],Y): true if Y is the following element of the A,B,C,D,E logical consequence  
logSuit([A,B,C,D,E],Y):-
    sub(B,A,F),
    sub(C,B,G),
    sub(D,C,H),
    sub(E,D,I),
    derivOne([F,G,H,I],X),
   	add(E,X,Y).


main :- % exemple de programme principal
  writeln('Donner un terme, un prédicat ? (avec un point à la fin de la ligne) '),
  read(Entree),
  logSuit(Entree,Sortie),
  writeln(Sortie).

:- main, halt.