PROGRAM cadenaCaracteres (input, output);

CONST
  MAX = 20;
    FIN = '.';

(* Parte a) Tipo de datos para almacenar una cadena, representado mediante arreglo con tope *)
TYPE
   Cadena = record
               letras : array [1..MAX] of Char;
               tope : 0..MAX;
            end;
VAR
  car: Char;
  cad: Cadena;

(* Parte b) Procedimiento que carga una cadena por teclado *)
procedure cargarCadena (var frase : Cadena);
var
        i : Integer;
        car : Char;
begin
        i := 0;
        Read(car);
        while (i < MAX) and (car <> FIN) do
        begin
                i := i + 1;
                frase.letras[i] := car;
                Read(car)
        end;
        frase.tope := i;
        ReadLn (* descarto cualquier carácter sobrante no cargado en la cadena *)
end;

(* Parte c) Función que cuenta el numero de apariciones de un carácter en una frase. *)
function contarOcurrencias (frase : Cadena; letra : Char): Integer;
var
  i, cont: Integer;
begin
        cont := 0;
        for i := 1 to frase.tope do
                if frase.letras[i] = letra then
                        cont := cont + 1;
        contarOcurrencias := cont
end;

(* Parte d) Funcion que determina si existe una letra vocal en una frase. *)
function existeVocal (frase : Cadena): Boolean;
var
  i : Integer;
        (* funcion auxiliar que determina si una letra es vocal *)
        function esVocal (letra: Char): Boolean;
        var
          es : Boolean;
        begin
          es := false;
          case letra of
                'A', 'E', 'I', 'O', 'U',
                'a', 'e', 'i', 'o', 'u' : es := true
          end;
          esVocal := es
        end;
begin
        i := 1;
        while (i <= frase.tope) and not esVocal(frase.letras[i]) do
                i := i + 1;
        existeVocal := i <= frase.tope
end;

begin (* Programa principal, prueba las operaciones anteriores *)
        Write('Ingrese una cadena de caracteres. Termine con un punto: ');
        cargarCadena(cad);
        Write('Ingrese una letra: ');
        Readln (car);
        Writeln ('Su letra ocurre ', contarOcurrencias(cad, car)h, ' veces en la cadena.');
        if existeVocal(cad) then
                WriteLn('La cadena ingresada contiene al menos una letra vocal.')
        else
                writeLn ('La cadena ingresada NO contiene ninguna letra vocal.')
end.