program prueba1;
var partidos,W,L,T,puntos:integer; promedio:real;

function promedios(x,y:integer);real;
    var c : real;
    begin 
        c:=x div y;
        promedios:=c;
    end;

begin
    Write('ingresar partidos ganados: ');
    readLn(W);
    Write('ingresar partidos perdidos: ');
    readLn(L); 
    Write('ingresar partidos empatados: ');
    readLn(T);
    puntos:=W*3+T;
    partidos:=W+T+L;
    promedio:=promedios(puntos,partidos);
    WriteLn('El equipo tiene ',puntos,' puntos en ',partidos,' partidos promediando ',promedio,' puntos por partido')
end.    