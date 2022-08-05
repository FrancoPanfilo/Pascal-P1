program ej17p10;
CONST
   CANT_LETRAS = 40;
   CANT_ARTICULOS = 150;

TYPE
   TIdioma = (ay, eo, es);

   TFecha = RECORD
                dia : 1..31;
                mes : 1..12;
                anio : 2001..9999 (* La wikipedia comienza en 2001 *)
            END;

   TNombre = ARRAY [1..CANT_LETRAS] OF Char;

   TArticulo = RECORD
                   nombre : TNombre;
                   idioma : TIdioma;
                   visitas : Integer;
                   ultima_act : TFecha;
               END;

   Wikipedia = ARRAY [1..CANT_ARTICULOS] OF TArticulo;

function EsPosterior(f1, f2: TFecha) : boolean;
var fct:boolean;
begin
    fct:=false;
    if f1.anio>f2.anio then
        fct:=true
    else
        if (f1.mes>f2.mes) and (f1.anio=f2.anio)  then
            fct:=true
        else
            if (f1.dia>f2.dia) and (f1.mes=f2.mes) and (f1.anio=f2.anio)  then
                fct:=true;
EsPosterior:=fct;
end;
              
procedure ArticuloMasReciente (wiki: Wikipedia; idiomat: TIdioma; VAR art: TArticulo);
var ultimafecha:TFecha;
    i:integer;
begin
    ultimafecha.dia:=1;
    ultimafecha.mes:=1;
    ultimafecha.anio:=2001;
    for i:=1 to CANT_ARTICULOS do
        if (wiki[i].idioma=idiomat) and (EsPosterior(wiki[i].ultima_act,ultimafecha)) then
            begin
            ultimafecha:=wiki[i].ultima_act;
            art:=wiki[i]
            end;
end;

procedure imprimirArticulosMasRecientes (wiki: Wikipedia);
var n:TArticulo;
    ig:integer;
begin
    for ig:=0 to 2 do
        begin
            ArticuloMasReciente(wiki,TIdioma(ig),n);
            WriteLn('Ultimo articulo en ',n.idioma,' se llama ',n.nombre,' tiene ',n.visitas,' y su fecha de actualizacion es ',n.ultima_act.dia,' / ',n.ultima_act.mes,' / ',n.ultima_act.anio)
        end;
end;

var fecha1,fecha2:TFecha;
begin
    WriteLn('*Fecha 1*');
    Write('Dia: ');
    ReadLn(fecha1.dia);
    Write('Mes: ');
    ReadLn(fecha1.mes);
    Write('Anio: ');
    ReadLn(fecha1.anio);
    WriteLn('-');
    WriteLn('*Fecha 2*');
    Write('Dia: ');
    ReadLn(fecha2.dia);
    Write('Mes: ');
    ReadLn(fecha2.mes);
    Write('Anio: ');
    ReadLn(fecha2.anio);
    If EsPosterior(fecha1,fecha2) then
        WriteLn('f1 posterior a f2')
    else
        WriteLn('f1 no es posterior a f2')
end.

    