%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%

derivOne([X,Y,X,Y],[X,Y]).
derivOne([X,X,X,X],[X,X]).
derivOne([A,B,C,D],[X,Y]):-

LogSuit([A,B,C,D,E],Y):-
    {A = B-A},
    {B = C-B},
    {C = D-C},
    {D = E-D },
    dervOne([A,B,C,D],[X1,X2]),
    {Y = E + X2 }.


  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


main :- % exemple de programme principal
  writeln('Donner un terme, un prédicat ? (avec un point à la fin de la ligne) '),
  read(Entree),
  LogSuit(Entree,Sortie),
  writeln(Sortie).

:- main, halt.