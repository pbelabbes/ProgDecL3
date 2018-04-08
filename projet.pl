%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%

derivSec([X,X,X],X).
derivSec([X,Y,X],Y).
derivOne([X,Y,X,Y],X).
derivOne([X,X,X,X],X).

%deriveSeconde
derivOne([A,B,C,D],X):-
	A is B - A,
    B is C - B,
    C is D - C,
    derivSec([A,B,C],X).
             
%derivermultiple
%derivOne([A,B,C,D],[X,Y]):-
%	{A = B/A},
 %   {B = C/A},
 %   {C = D/C},
  %  derivMult([A,B,C],[V,W]).

sub(A,B,X):-
    X is A - B.

logSuit([A,B,C,D,E],Y):-
    sub(B,A,F),
    sub(C,B,G),
    sub(D,C,H),
    sub(E,D,I),
    derivOne([F,G,H,I],X),
   Y is E + X.


  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

main :- % exemple de programme principal
  writeln('Donner un terme, un prédicat ? (avec un point à la fin de la ligne) '),
  read(Entree),
  logSuit(Entree,Sortie),
  writeln(Sortie).

:- main, halt.