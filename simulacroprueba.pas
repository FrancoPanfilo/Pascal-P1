program simulacroprueba ;
 var num,suma,qnt : integer ;

 begin
   suma:=0 ;
   read(num);

  While num<>-1 do
   begin
   If (num mod 2 = 0) then  ;
    suma:= suma + num ;
   read(num) ;
   end;
  writeLn('la suma de los numeros es ',suma) ;
   readLn(qnt);
 end.


