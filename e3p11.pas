program salvaronada;
Const
MAX=20;
type Cadena=Record 
                    elementos:array [1..MAX] of char;
                    tope:0..MAX;
                    end;

procedure cargarCadena (var frase : Cadena);
var i:integer; palabra:char;
begin
    i:=0;
    writeLn('Ingrese Frase: ');
    Read(palabra);
    while (i<MAX) and (palabra<>'.') do
        begin
            i:=i+1;
            frase.elementos[i]:=palabra;
            read(palabra)
        end;
    frase.tope:=i;
    ReadLn (* descarto cualquier carácter sobrante no cargado en la cadena *)
end; 

 function ContarOcurrencias(frase:cadena; letra:char):integer;
var i,n:integer;
begin
    n:=0;
    i:=1;
    for i:=1 to frase.tope do
        if letra=frase.elementos[i] then
            n:=n+1;
    ContarOcurrencias:=n;
end;

function existeVocal(frase:cadena):boolean;
begin
    existeVocal:=true;
    if ContarOcurrencias(frase,'a')+ContarOcurrencias(frase,'e')+ContarOcurrencias(frase,'i')+ContarOcurrencias(frase,'o')+ContarOcurrencias(frase,'u')=0 then
        existeVocal:=false
end;

VAR
  car: Char;
  cad: Cadena;

begin (* Programa principal, prueba las operaciones anteriores *)
        WriteLn('Ingrese una cadena de caracteres. Termine con un punto: ');
        cargarCadena(cad);
        WriteLn('Ingrese una letra: ');
        Readln (car);
        Writeln ('Su letra ocurre ', contarOcurrencias(cad, car), ' veces en la cadena.');
        if existeVocal(cad) then
                WriteLn('La cadena ingresada contiene al menos una letra vocal.')
        else
                writeLn ('La cadena ingresada NO contiene ninguna letra vocal.');
        writeLn(car)
end.