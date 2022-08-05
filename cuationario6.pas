program c6;
CONST
    MAX = 9;
TYPE 
   Ttipo = (agua, aire);
   Telem = RECORD
              CASE tipo : Ttipo OF
                 agua: (potable : boolean);
                 aire: (indiceContaminada : real);
              END;
   Rango = 1 .. MAX;
   Tcasos = RECORD
               casos: array [Rango] of Telem;
               tope : 0 .. MAX
            END;
VAR 
   recursos : Tcasos;
   i: integer;
begin 
writeLn(recursos.casos[recursos.tope]);
read(i)
end.