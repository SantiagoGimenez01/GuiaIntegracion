% Tenemos un modelo de la red de subtes, por medio de un predicado linea que relaciona el nombre de la linea con la lista de sus estaciones, en orden. 
% P.ej. (reduciendo las lineas)

linea(a,[plazaMayo,peru,lima,congreso,miserere,rioJaneiro,primeraJunta,nazca]).
linea(b,[alem,pellegrini,callao,pueyrredonB,gardel,medrano,malabia,lacroze,losIncas,urquiza]).
linea(c,[retiro,diagNorte,avMayo,independenciaC,plazaC]).
linea(d,[catedral,nueveJulio,medicina,pueyrredonD,plazaItalia,carranza,congresoTucuman]).
linea(e,[bolivar,independenciaE,pichincha,jujuy,boedo,varela,virreyes]).
linea(h,[lasHeras,santaFe,corrientes,once,venezuela,humberto1ro,inclan,caseros]).
combinacion([lima, avMayo]).
combinacion([once, miserere]).
combinacion([pellegrini, diagNorte, nueveJulio]).
combinacion([independenciaC, independenciaE]).
combinacion([jujuy, humberto1ro]).
combinacion([santaFe, pueyrredonD]).
combinacion([corrientes, pueyrredonB]).

% Punto 1
% En qué linea está una estación, predicado estaEn/2.
estaEn(Estacion, Linea):-
    linea(Linea, Estaciones),
    member(Estacion, Estaciones).

% Punto 2
% Dadas dos estaciones de la misma línea, cuántas estaciones hay entre ellas, p.ej. entre Perú y Primera Junta hay 5 estaciones. 
% Predicado distancia/3 (relaciona las dos estaciones y la distancia).
distancia(EstacionOrigen, EstacionDestino, Distancia):-
    linea(Linea, Estaciones),
    estaEn(EstacionOrigen, Linea),
    estaEn(EstacionDestino, Linea),
    nth1(IndiceOrigen, Estaciones, EstacionOrigen),
    nth1(IndiceDestino, Estaciones, EstacionDestino),
    Distancia is abs(IndiceDestino - IndiceOrigen).


% Punto 3
% Dadas dos estaciones de distintas líneas, si están a la misma altura (o sea, las dos terceras, las dos quintas, etc.), p.ej. Independencia C y Jujuy 
% que están las dos cuartas. Predicado mismaAltura/2.

% Punto 4
% Dadas dos estaciones, si puedo llegar fácil de una a la otra, esto es, si están en la misma línea, o bien puedo llegar con una sola combinación. 
% Predicado viajeFacil/2.



