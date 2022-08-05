program 22;
const N=10;

type 
    Tcadena=record
                cars:array[1..N] of char;
                tope : 0..N 
                end;
 
procedure crearPalindromo(var cadena: TCadena);
var i,n:integer;
begin
        If (cadena.tope*2)<=N then
        begin
            i:=1;
            n:=cadena.tope;
            for i:=1 to n do
                begin
                    cadena.cars[i]:=cadena.cars[i+n];
                    cadena:tope:=cadena.tope +1;
                end;
        end;
end;
var cad:TCadena;i:integer;
cad.tope:=4;
cad.cars[1]:='a';
cad.cars[2]:=
cad.cars[3]:=
cad.cars[4]:=