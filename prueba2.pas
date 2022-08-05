program prueba2 ;
var p,i,j,quenotermine :integer;
begin
 for i:=1 to 3 do
 begin
 p:=1;
  for j:=i downto 1 do
  begin
   writeln(p);
   p:=p*i;
  end;
 end;
 read(quenotermine)
end.
