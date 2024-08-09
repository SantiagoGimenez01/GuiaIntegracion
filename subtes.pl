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

% Punto 2
% Dadas dos estaciones de la misma línea, cuántas estaciones hay entre ellas, p.ej. entre Perú y Primera Junta hay 5 estaciones. 
% Predicado distancia/3 (relaciona las dos estaciones y la distancia).



