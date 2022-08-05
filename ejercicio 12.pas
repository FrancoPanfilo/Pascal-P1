program ejercicio12 ;
var
 max,n,x,y,i,quenotermine : integer ;
begin
  read(n) ;
  max:=0     ;

for x:=-n to n do
  begin
    for y:=-n to n do
      begin
       i:=sqr(x)-9*(x)*(y)+sqr(y) ;
       if i>max  then
       max:=i ;
       end;
  end;
write(max)     ;
read(quenotermine)
end.

