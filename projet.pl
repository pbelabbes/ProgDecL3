%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
sub(A,B,X):-
    X is A - B.

add(A,B,X):-
    X is A + B.

div(A,B,X):-
    X is A / B.

mult(A,B,X):-
    X is A * B.

derivSec([X,X,X],X).
derivSec([X,Y,X],Y).

derivMult([X,X,X],X).
derivMult([X,Y,X],Y).

derivOne([X,Y,X,Y],X).
derivOne([X,X,X,X],X).


%deriveSeconde
derivOne([A,B,C,D],X):-
	sub(B,A,E),
    sub(C,B,F),
    sub(D,C,G),
    derivSec([E,F,G],Y),
	add(Y,D,X).	
             
%derivermultiple
derivOne([A,B,C,D],X):-
	div(B,A,E),
    div(C,B,F),
    div(D,C,G),
    derivMult([E,F,G],Y),
    mult(D,Y,X).

logSuit([_|R],Y):-
    logSuit(R,Y).

logSuit([A,B,C,D,E],Y):-
    sub(B,A,F),
    sub(C,B,G),
    sub(D,C,H),
    sub(E,D,I),
    derivOne([F,G,H,I],X),
   	add(E,X,Y).


  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

main :- % exemple de programme principal
  writeln('Donner un terme, un prédicat ? (avec un point à la fin de la ligne) '),
  read(Entree),
  logSuit(Entree,Sortie),
  writeln(Sortie).

:- main, halt.