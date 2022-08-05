program parcial1;

const 
       Max = 5;
       
type 
    Rango =1..Max;

    Matriz= array [rango,rango] of rango;

function esUnoMax(i:Rango; M:matriz):boolean;
var n:rango; b:boolean;
begin
    n:=1;
    b:=true;
    for n:=1 to Max do 
        If M[i,n]<>n then
            b:=false;
    esUnoMax:=b
end;

var i,n,y:rango ; M:matriz;

begin 
    i:=1;
    for n:=1 to 5 do 
        for y:=1 to 5 do
            readLn(M[n,y]);
    write(esUnoMax(i,M))
end.



