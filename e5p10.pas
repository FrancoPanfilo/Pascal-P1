program ej5p10;
type mes=(enero,febrero,marzo,abril,mayo,junio,julio,agosto,setiembre,octubre,noviembre,diciembre);
    
procedure ej5(var a:mes);
var n:mes;
begin
    n:=a;
    writeLn(n);
end;

var m1,m2:mes;
begin 
    m1:=enero;
    m2:=diciembre;
    ej5(m1);
    ej5(m2)
end.
