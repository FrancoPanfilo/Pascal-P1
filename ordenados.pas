program ordenados_orden_en_numeros_y_letras;
var n,l:char;
begin
        for n:='0' to '9' do
                writeLn(n,' su ordenado: ',ord(n));
        for l:='a' to 'z' do
                writeLn(l,' su ordenado: ',ord(l));
        read(n)
end.