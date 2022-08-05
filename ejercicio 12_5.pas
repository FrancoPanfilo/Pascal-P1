program ejercicio12_5     ;
var num, valor, n, potencia, quenotermine : begin
 read(num)    ;
 potencia:=1  ;
 n:=0;
 repeat   ;
 begin
 potencia:= potencia*2  ;
 n:=n+1 ;
 end ;
 until num < potencia*2      ;
  Valor:=num div potencia ;
 writeLn(n)  ;
 WriteLn(valor)  ;
 Read(quenotermine) ;
end.

