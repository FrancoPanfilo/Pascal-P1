program eje12_5 ;
var n,valor,num,potencia,quenotermine : integer ;
 begin
  read(num);
  n:=0     ;
  potencia:=1 ;
  While (num mod (potencia*2) = 0) and (num >= (potencia*2) ) do
   begin potencia := potencia*2 ;
         n:=n+1                 ;
   end;
  valor:=num div potencia ;
  writeLn(num)  ;
  writeLn(num)  ;
  writeLn(n)     ;
  writeLn(valor) ;
  read(quenotermine)  ;
 end.
