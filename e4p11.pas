type
Raices=(realesdistintas,realdoble,complejas);
TipoRaices=record 
                parteReal1: real;
                parteReal2:real;
                case tipo:Raices of 
                complejas:(parteCompleja1,parteCompleja2:real);
                end;

procedure Raicess(a,b,c : Real; VAR r : TipoRaices);
var n:real;
begin
    n:=sqrt(b*b-4*a*c);
    
       If n<0 then
       begin
        r.tipo:=complejas;
            r.parteReal1:=-b/2*a;
            r.parteReal2:=r.parteReal1;
            r.parteCompleja1:=  sqrt(-1*n)/2*a;
            r.parteCompleja2:=r.parteCompleja1;
            end

        else
            If n=0 then
            begin
               r.tipo:=realdoble;
                r.parteReal1:=-b/2*a;
             r.parteReal2:=r.parteReal1;
             end


        Else 
             begin
            r.tipo:=realesDistintas;
            r.parteReal1:=(-b+sqrt(n))/2*a;
            r.parteReal2:=(-b-sqrt(n))/2*a;
            end;

end;

VAR
    a, b, c: real;
    resu: TipoRaices;

begin (* Programa principal, prueba las operaciones anteriores *)
  Write('Ingrese los coeficientes a, b, c de la ecuacion: ');
  Readln(a,b,c);
  (* Se asume que se ingresan 3 coeficientes válidos *)
  Raicess(a,b,c,resu);
  case resu.tipo of
      realesDistintas: begin
              Writeln ('La ecuación tiene dos raíces reales.');
              Writeln ('Raíz 1: ', resu.parteReal1);
              Writeln ('Raíz 2: ', resu.parteReal2)
            end;
      realdoble: begin
              Writeln('La ecuación tiene una raíz real doble.');
              Writeln('Raíz: ', resu.parteReal1)
            end;
      complejas: begin
              Writeln('La ecuación tiene dos raíces complejas conjugadas.');
              Writeln('Raíz 1: ', resu.parteReal1, ' + ', resu.parteCompleja1, 'i');
              Writeln('Raíz 2: ', resu.parteReal2, ' - ', -resu.parteCompleja2, 'i')
            end
  end
end.
