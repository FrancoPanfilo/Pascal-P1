program ej2p11;

CONST
    MAXPERSONAS = 1000;
    MAXCAD      = 20;

TYPE
   Cadena = RECORD
                letras : ARRAY [1..MAXCAD] OF Char;
                largo : 0..MAXCAD;
            END;
   Fecha = RECORD
               dia : 1..31;
               mes : 1..12;
               anio : 0..MAXINT; 
           END;
   UnaPersona = RECORD
                    nombre : Cadena;
                    FechNac : Fecha;
                    IndMadre, IndPadre : 0..MAXPERSONAS;
                END;
   Familia = RECORD
                 pers : ARRAY[1..MAXPERSONAS] OF UnaPersona;
                 tope : 0..MAXPERSONAS;
             END;

{a) Escriba la función cadenasIguales que, dadas dos cadenas, determina si son iguales.
 function cadenasIguales (cad1, cad2 : Cadena): Boolean;}

 function cadenasIguales (cad1, cad2 : Cadena): Boolean;
 var igualdad:boolean;
    i:integer;
 begin
    igualdad:=true;
     for i:=1 to MAXCAD do
        if cad1.letras[i]<>cad2.letras[i] then
            igualdad:=false;
    cadenasIguales:=igualdad;
 end;

{b) Escriba el procedimiento desplegarCadena que, dada una cadena, la despliega en la salida estándar.

 procedure desplegarCadena (cad: Cadena);}

 procedure desplegarCadena (cad: Cadena);
 var i:integer;
 begin
     for i:=1 to MAXCAD do
        write(cad.letras[i])
 end;

{c) Escriba el procedimiento antepasados que, dado el nombre
 de una persona en el parámetro usted y una familia en el parámetro 
 historia, despliegue en la salida estándar los nombres y fechas de 
 nacimiento del padre y de la madre de la persona de nombre usted 
 (si es que se se dispone de la información correspondiente). En caso
  de que la persona de nombre usted no esté registrada, no se desplegará nada.

procedure antepasados (usted : Cadena; historia : Familia);}

procedure antepasados (usted : Cadena; historia : Familia);
var i : integer;
begin 
    i:=1;
    while (i<=historia.tope)and not(cadenasIguales(usted,historia.pers[i].nombre)) do
        i:=i+1;
    if i<=historia.tope then
       begin
            historia.pers[historia.pers[i].IndPadre]

           
       end;