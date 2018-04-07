 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%

% à completer

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


main :- % exemple de programme principal
  writeln('Donner un terme, un prédicat ? (avec un point à la fin de la ligne) '),
  read(Entree),
  % exécuter un prédicat avec ce terme (ex. monPredicat(Entree,Sortie). ), ou ce prédicat (ex. findall(Entree,Entree,Sortie). )
  writeln(Sortie).

:- main, halt.