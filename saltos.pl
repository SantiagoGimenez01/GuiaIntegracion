/*
En una competencia de saltos, cada competidor puede hacer hasta 5 saltos; a cada salto se le asigna un puntaje de 0 a 10. Se define el predicado puntajes 
que relaciona cada competidor con los puntajes de sus saltos, p.ej.
*/
puntajes(hernan,[3,5,8,6,9]).
puntajes(julio,[9,7,3,9,10,2]).
puntajes(ruben,[3,5,3,8,3]).
puntajes(roque,[7,10,10]).

% Punto 1
% Qué puntaje obtuvo un competidor en un salto, p.ej. qué puntaje obtuvo Hernán en el salto 4 (respuesta: 6)
puntajeEnUnSalto(Competidor, Salto, Puntaje):-
    puntajes(Competidor, Saltos),
    nth1(Salto, Saltos, Puntaje).

% Punto 2
% Si un competidor está descalificado o no. Un competidor está descalificado si hizo más de 5 saltos. En el ejemplo, Julio está descalificado.
estaDescalificado(Competidor):-
    puntajes(Competidor, Saltos),
    length(Saltos, Cantidad),
    Cantidad > 5.

% Punto 3
% Si un competidor clasifica a la final. Un competidor clasifica a la final si la suma de sus puntajes es mayor o igual a 28, o si tiene dos saltos de 8 
% o más puntos.

clasificaAFinal(Competidor):-
    sumaDePuntajesAlta(Competidor),
    not(estaDescalificado(Competidor)).
clasificaAFinal(Competidor):-
    saltosConBuenPuntaje(Competidor),
    not(estaDescalificado(Competidor)).

sumaDePuntajesAlta(Competidor):-
    puntajes(Competidor, Saltos),
    sumlist(Saltos, PuntajeTotal),
    PuntajeTotal >= 28.

saltosConBuenPuntaje(Competidor):-
    puntajes(Competidor, Saltos), 
    findall(Salto, (member(Salto, Saltos), Salto >= 8), Puntajes),
    length(Puntajes, Cantidad),
    Cantidad >= 2.

    
    

