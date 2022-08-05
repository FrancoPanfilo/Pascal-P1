Program Febrero;
var x, y, z: integer;
Procedure uno (a : integer; var b : integer);
 Function tres (a, b : integer) : integer;
 var i : integer;
 begin
 for i := 1 to 3 do
 a := a + b;
 tres := a
 end;
 begin
 b := tres ( b, b);
 a := x * 3;
 writeln (a, b);
 z := a + 3
 end;
 Function dos (b : boolean): integer;
 begin
 if b then
 dos := 5
 else
 dos := 3
 end;
begin
 readln(x);
 y := dos ( x > 5 );
 z := dos ( y > 3 );
 uno (x, y);
 writeln(x, y, z)
end.