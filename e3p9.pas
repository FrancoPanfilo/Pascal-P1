{CONST
   N = ...;
TYPE
   Arreglo = ARRAY [1..N] OF Integer;
a) Escriba un procedimiento en Pascal llamado Carga que cargue un arreglo de enteros con valores leídos desde la entrada estándar. Determine si el arreglo debe ser pasado por valor o por referencia.


b) Escriba una función en Pascal llamada CantMayores que, dados un arreglo de enteros y un entero num, devuelva la cantidad de valores almacenados en el arreglo que son mayores que num.

c) Escriba una función en Pascal llamada Ordenado que, dado un arreglo de enteros, devuelva true si el arreglo está ordenado en forma ascendente y false en caso contrario.

d) Escriba un procedimiento en Pascal llamado MaxPos que, dado un arreglo de enteros, devuelva el valor más grande (máximo) y el primer índice (posición) en que éste ocurre. Determine qué parámetros deben ser pasados por valor y qué parámetros deben ser pasados por referencia.
e) Escriba un programa principal que permita probar los subprogramas anteriores. Dicho programa debe realizar las siguientes acciones (declare toda variable que sea necesaria):
Cargar por la entrada estándar un arreglo de enteros (utilizando el procedimiento Carga).
Pida un valor por teclado y cuente cuántos valores mayores que él hay en el arreglo (utilizando la función CantMayores).
Determine si el arreglo está o no ordenado en forma ascendente (utilizando la función Ordenado).
Obtener el máximo valor del arreglo y el primer índice donde ocurre (utilizando el procedimiento MaxPos).
Exhibir por la salida estándar todos los resultados.
}
Program ejercicio3p9;
const 
N=22;
TYPE
   Arreglo = ARRAY [1..N] OF Integer;   

procedure Carga(var Arreglo:array OF integer);
Var i:integer;   
begin
i:=1;
    for i:=1 to N do
      begin
        write('Entrada ',i,'=');
        readLn(Arreglo[i]);
      end;  
end;

function CantMayores(var arreglo:array OF integer;num:integer):integer;
    var i,y:integer;
begin 
y:=0;    
for i:=1 to N do
    If arreglo[i] > num then 
    y:=y+1;
CantMayores:=y;
end;

function Ordenado(var arreglo: array OF Integer):boolean;
Var ord:boolean;i:integer;
begin 
ord:=true ;
i:=2;
for i:=2 to N do
   if arreglo[i]<arreglo[i-1] then
      ord:=false;
Ordenado:=ord;
end;      

procedure MaxPos(var arreglo: array OF Integer);
var i,f,ent:integer;
begin
i:=1;
   for i:=1 to N do
   IF arreglo[i]>f then
      begin
      f:=arreglo[i];
      ent:=i;
      end;
WriteLn('max es ',f,' su entrada es ',ent)      
end;

var p:Arreglo;
    m:integer;
begin 
   Carga(p);
   Write('ingresar valor del cual queremos saber cuantas entradas mayores hay en el arreglo=');
   ReadLn(m);
   WriteLn('Cantidad de numeros mayores al ingresado= ',CantMayores(p,m));
   If ordenado(p) then
      writeLn('El arreglo esta ordenado')
   else 
      writeLn('El arreglo esta desordenado');
   WriteLn('Valor maximo es y su correspondiente entrada ');
   MaxPos(p);
end.         





        
