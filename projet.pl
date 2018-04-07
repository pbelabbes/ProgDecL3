%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%

derivSec([X,X,X],[X,X]).
derivSec([X,Y,X],[Y,X]).
derivOne([X,Y,X,Y],[X,Y]).
derivOne([X,X,X,X],[X,X]).

%deriveSeconde
derivOne([A,B,C,D],[X,Y]):-
	{A = B-A},
    {B = B-C},
    {C = D-C},
    derivSec([A,B,C],[Y,X]).
             
%derivermultiple
derivOne([A,B,C,D],[X,Y]):-
	{A = B/A},
    {B = C/A},
    {C = D/C},
    derivMult([A,B,C],[V,W]),
	    
    .

LogSuit([A,B,C,D,E],Y):-
    {A = B-A},
    {B = C-B},
    {C = D-C},
    {D = E-D },
    derivOne([A,B,C,D],[X1,X2]),
    {Y = E + X2 }.


  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


main :- % exemple de programme principal
  writeln('Donner un terme, un prédicat ? (avec un point à la fin de la ligne) '),
  read(Entree),
  LogSuit(Entree,Sortie),
  writeln(Sortie).

:- main, halt.