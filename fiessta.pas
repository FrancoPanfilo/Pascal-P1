program fiessta;
const maxgente=18;
type
rangogente=1..maxgente ;
arreglo1=array [rangogente] of integer;
var
invitados,qnt,i:integer;
gente:arreglo1;
begin
       gente[1] {terra}:=8;
       gente[2] {ponfilio}:=5;
       gente[3] {gaggero}:=6;
       gente[4] {rodri}:=6;
       gente[5] {calza}:=11;
       gente[6] {trillo}:=6;
       gente[7] {ramos}:=7;
       gente[8] {bidault}:=8;
       gente[9] {formento}:=5;
       gente[10] {abuelas}:=4;
       gente[11] {tio_osvaldo}:=8;
       gente[12] {primos}:=6;
       gente[13] {rugbiers}:=26;
       gente[14] {palito_y_jacky}:=2;
       gente[15] {los_agro}:=10;
       gente[16] {las_divinas}:=20;
       gente[17] {amigos_max}:=50;
       gente[18] {amigos_sofi}:=9;
        for i:=1 to maxgente do
         invitados:=invitados+gente[i];
        writeLn('invitados= ',invitados) ;
        read(qnt)
end.




