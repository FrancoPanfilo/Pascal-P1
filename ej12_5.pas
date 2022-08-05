program ej12_5         ;
var num , n , valor , potencia , quenotermine : integer   ;
begin
Read(num)   ;
potencia:=1 ;
n:=0        ;
While num >= potencia do
 begin
 potencia=potencia*2 ;
 n:=n+1       ;
 end;
Valor:=num div potencia;
writeLn(n)     ;
WriteLn(Valor) ;
Read(quenotermine) ;
end.