program e5p12;
type
   Positivo = 1..MaxInt;
   ListaInt = ^TCelda;
   TCelda   = record
                info : integer;
                sig  : ListaInt
              end;    

function  suma(l : ListaInt) : integer;
var n:integer; p:ListaInt;
begin
    p:=l;
    n:=0;
    while (p<>nil) do
        begin
             n:=p^.info+n;
             p:=p^.sig;
        end;
    suma:=n;
end;

function minimo(l : ListaInt) : integer;
var n:integer; p:ListaInt;
begin
    p:=l;
    n:=l^.info;
    while p<>nil do
        begin
             if p^.info<n then
                n:=p^.info;
             p:=p^.sig;
        end;
    minimo:=n;
end;


function producto(l : ListaInt) : integer;
var n:integer; p:ListaInt;
begin
    p:=l;
    n:=1;
    while p<>nil do
        begin
             n:=p^.info*n;
             p:=p^.sig;
        end;
    producto:=n;
end;


function cuantosPares(l : ListaInt) : integer;
var n:integer; p:ListaInt;
begin
    p:=l;
    n:=0;
    while p<>nil do
        begin
             if (p^.info mod 2) =0 then
                n:=n+1;
             p:=p^.sig;
        end;
    cuantosPares:=n;
end;

function posicion(valor : integer; l : ListaInt) : integer;
var n:integer; p:ListaInt;
begin
    p:=l;
    n:=1;
    while  (p<>nil) and (p^.info<>valor) do
        begin
            p:=p^.sig;
            n:=n+1;
        end;
    If p<>nil then
        posicion:=n
    Else
        posicion:=-1
end;

type
  PosibleElem = record case ok : boolean of
                  true  : (elem : integer);
                  false : ()
                end;
procedure elemEnPos(pos : Positivo; l : ListaInt; var resultado : PosibleElem);
var i,n:integer; p:ListaInt;
begin
    p:=l;
    n:=1;
    while (p<>nil) and (n<>pos) do
        begin
        i:=p^.info;
        p:=p^.sig;
        n:=n+1;
        end;
    if p=nil then
        resultado.ok:=false
    else
        begin
            resultado.ok:=true;
            resultado.elem:=i;
        end;
end;

function ultimo(l : ListaInt) : integer;
var i:integer; p:ListaInt;
begin
    p:=l;
    i:=0;
    while (p<>nil) do
        begin
             i:=p^.info;
             p:=p^.sig;
        end;
    ultimo:=i;
end;
       
function ordenada(l : ListaInt) : boolean;
var b:boolean; p:ListaInt;
begin
    p:=l;
    b:=true;
    while (p<>nil) and (p^.info<p^.sig^.info) do
        p:=p^.sig;
    if p=nil then
        b:=false;
    ordenada:=b
end;    
        