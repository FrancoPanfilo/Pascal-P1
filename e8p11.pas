program salvaronadaa;
CONST
	MaxDig = 100;
TYPE
   Digito = 0..9;
   Natural = RECORD
               digitos : ARRAY[1..MaxDig] OF Digito;
               tope : 0..MaxDig;
             END;

Procedure SumaNaturales (a, b : Natural; Var c : Natural);
var i,n,m:integer;
begin
    for i:=1 to MaxDig do
        begin
        m:=a.digitos[i]+b.digitos[i];
        while m>9 do
            begin
              m:=m-10;
              c.digitos[i+1]:=c.digitos[i+1]+1;
            end;
        c.digitos[i]:=m;
        end;
    n:=MaxDig;
    while (c.digitos[n]=0) and (n<>0) do
        n:=n-1;
    c.tope:=n
end;

procedure Cargar(var a:Natural);
var dig:Digito; x,i:integer;
begin
    writeLn('ingrese la cant de digitos del numero que ingresara: ');
    Read(x);
    a.tope:=x;
    writeLn('ingrese numero: ');
    ReadLn(dig);
    for i:=1 to a.tope do
        begin
            a.digitos[i]:=dig;
            readLn(dig);
        end;
end;
var num1,num2,num3:Natural; i:integer;
begin 
    Cargar(num1);
    Cargar(num2);
    SumaNaturales(num1,num2,num3);
    for i:=1 to num3.tope do
        write(num3.digitos[i]);
end.