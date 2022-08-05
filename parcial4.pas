program segundoparcial;
var w,z:integer;

procedure primera(var a:integer; var b:integer);
var z : integer;
begin
    z:=a;
    a:=z;
    b:=z*2;
end;

procedure segunda(a:integer;b:integer);
begin
    a:=a+1;
    b:=b*2;
    writeLn(a,' ',b,' ',z);
end;

function tercera(a:integer):integer;
var b : integer;
begin
    a:=a+1;
    primera(a,b);
    b:=b*2;
    writeLn(a,' ',b,' ',z);
    tercera:=b;
end;

begin
    z:=7;
    w:=tercera(z);
    segunda(w,z);
end.