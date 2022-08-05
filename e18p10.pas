program salvaronada;
CONST
   CANT_SALONES = 5;
   MAX_PIZARRONES = 3;

TYPE
   TSalon = RECORD
                asientos : Integer;
                pizarrones : 1..MAX_PIZARRONES;
                hayProyector : Boolean;
            END;

   TFacultad = ARRAY [1..CANT_SALONES] OF TSalon;

procedure informeSalones (facu: TFacultad);
var i:integer;
begin 
    for i:=1 to CANT_SALONES do
        begin
            WriteLn('Informe salon ',i,' de la facultad');
            writeLn('Cantidad de asientos: ',facu[i].asientos);
            writeLn('Cantidad pizarrones: ',facu[i].pizarrones);
            If facu[i].hayProyector then
                 WriteLn('Hay proyector')
            else
                 WriteLn('No hay proyector');
        end;
end;

procedure salonMasAsientos (facu: TFacultad; VAR indSalon: Integer; VAR maxAsientos: Integer);
var i:integer;
begin
    i:=1;
    maxasientos:=1;
    indSalon:=1;
    for i:=1 to CANT_SALONES do
        if facu[i].asientos>maxasientos then
            begin
                maxasientos:=facu[i].asientos;
                indSalon:=i;
            end;
end;

function primerSalonSinAsientos (facu: TFacultad) : Integer;
var i,n:integer;
begin
    i:=1;
    n:=0;
    for i:=1 to CANT_SALONES do 
        if facu[i].asientos=0 then
            n:=i;
    primerSalonSinAsientos:=n;
end;
VAR
    f	      : TFacultad;
    ind, cant : integer;

BEGIN
   f[1].asientos := 40;  f[1].pizarrones := 2; f[1].hayProyector := true;
   f[2].asientos := 120; f[2].pizarrones := 2; f[2].hayProyector := true;
   f[3].asientos := 20;  f[3].pizarrones := 1; f[3].hayProyector := true;
   f[4].asientos := 0;   f[4].pizarrones := 1; f[4].hayProyector := false;
   f[5].asientos := 60;  f[5].pizarrones := 2; f[5].hayProyector := true;

   salonMasAsientos(f,ind,cant);
   Writeln('Salon ', ind:2, ' con mas asientos: ', cant:3);
   Writeln;
   Writeln('Primer salon sin asientos: ',primerSalonSinAsientos(f))
END.