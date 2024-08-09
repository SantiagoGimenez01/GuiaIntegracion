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
    

