program p6ej12 ;

var n,m,i,f,t : integer ;
begin
 Write('Elija un n: ')  ;
 Read(n);
 Write('Elija un n: ',n,' Elija un m: ');
 Read(m);
 Write(' ');
 Write('Las entradas seleccionadas son n= ',n,' y m= ',m);
   For i:=n to m do
    begin
      for f:=(i div 2) downto 2  do
       begin
       if i mod f =0 then
       begin
        for t:=((i+2) div 2) downto 2  do
         begin
          if (i+2) mod t=0 then
          writeln(i,' y ',(i+2));
         end;
       end;
       end;
    end;
    read(n);
   end.
       end;


