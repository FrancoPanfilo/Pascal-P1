program HOLA;
TYPE
   Complejo = RECORD
                  re, im : REAL;
              END;

    operacion=(suma,multiplicacion);

Var c1,c2,c3:Complejo;
    Accion:operacion;

procedure Sum(var c3:Complejo;c1,c2:Complejo);
    begin
        c3.re:=c1.re+c2.re;
        c3.im:=c2.im+c1.im;
    end;    

 procedure Mult(var c3:Complejo;c1,c2:Complejo);
    begin 
         c3.re := c1.re * c2.re - c1.im * c2.im ;
         c3.im := c1.re * c2.im + c1.im * c2.re ;
    end;     

 procedure LeerResultados(c1,c2,c3:Complejo);
 begin 
    writeLn('c1= ','( ',c1.re,' , ',c1.im,' )');
    writeLn('c2= ','( ',c2.re,' , ',c2.im,' )');
    writeLn('c3= ','( ',c3.re,' , ',c3.im,' )');  
 end;

begin 
    write('ingrese parte real c1: ') ;
    readLn(c1.re)  ; 
    write('ingrese parte imaginaria c1: ');
    readLn(c1.im);
    write('ingrese parte real c2: ') ;
    readLn(c2.re)  ; 
    write('ingrese parte imaginaria c2: ');
    readLn(c2.im);
    write('ingrese parte real c3: ') ;
    readLn(c3.re)  ; 
    write('ingrese parte imaginaria c3: ');
    readLn(c3.im);
    LeerResultados(c1,c2,c3);
    WriteLn('-');
    Write('ingrese la accion que desee utilizar: ');
    readLn(Accion);
    WriteLn('Operacion es ',Accion);
    if Accion=suma then
        begin
            Sum(c3,c1,c2);
            LeerResultados(c1,c2,c3)
        end
    else
        begin 
            Mult(c3,c1,c2);
            LeerResultados(c1,c2,c3)
        end;
    read(Accion);
end.   
        