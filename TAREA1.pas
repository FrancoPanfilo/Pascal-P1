function f(x : real): real;
var i:real;

begin
i:=x*(2+sqrt((pi*x+25)/10)) ;
f:=i;
end;

function sumaRiemann(izq, der : real; subintervalos : integer): real;
var
 area,i,base: real ;
begin
 base:=(der-izq)/subintervalos;
area:=0;
i:=izq;
 repeat
  begin                                                           

  area:=area+f(i)*base ;
  i:=i+base ;
  end;
  Until i=der-base;
 sumaRiemann:=area;
end;

function riemannHasta(izq,der : real; delta :real):integer;
var
i,sum1,sum2:real;x:integer ;
begin
sum2:=0;
x:=1;
 While abs(i)<delta do
  begin
   sum1:=sumaRiemann(izq,der,x);
   i:=sum2-sum1;
   sum2:=sum1;
   x:=x+1;
  end;
 riemannHasta:=x
end;     function f(x : real): real;
var i:real;

begin
i:=x*(2+sqrt((pi*x+25)/10)) ;
f:=i;
end;

function sumaRiemann(izq, der : real; subintervalos : integer): real;
var
 area,i,base: real ;
begin
 base:=(der-izq)/subintervalos;
area:=0;
i:=izq;
 repeat
  begin
  area:=area+f(i)*base ;
  i:=i+base ;
  end;
  Until i=der-base;
 sumaRiemann:=area;
end;

function riemannHasta(izq,der : real; delta :real):integer;
var
i,sum1,sum2:real;x:integer ;
begin
sum2:=0;
x:=1;
 While abs(i)<delta do
  begin
   sum1:=sumaRiemann(izq,der,x);
   i:=sum2-sum1;
   sum2:=sum1;
   x:=x+1;
  end;
 riemannHasta:=x
end;function f(x : real): real;
var i:real;

begin
i:=x*(2+sqrt((pi*x+25)/10)) ;
f:=i;
end;

function sumaRiemann(izq, der : real; subintervalos : integer): real;
var
 area,i,base: real ;
begin
 base:=(der-izq)/subintervalos;
area:=0;
i:=izq;
 repeat
  begin
  area:=area+f(i)*base ;
  i:=i+base ;
  end;
  Until i=der-base;
 sumaRiemann:=area;
end;

function riemannHasta(izq,der : real; delta :real):integer;
var
i,sum1,sum2:real;x:integer ;
begin
sum2:=0;
x:=1;
 While abs(i)<delta do
  begin
   sum1:=sumaRiemann(izq,der,x);
   i:=sum2-sum1;
   sum2:=sum1;
   x:=x+1;
  end;
 riemannHasta:=x
end;     function f(x : real): real;
var i:real;

begin
i:=x*(2+sqrt((pi*x+25)/10)) ;
f:=i;
end;

function sumaRiemann(izq, der : real; subintervalos : integer): real;
var
 area,i,base: real ;
begin
 base:=(der-izq)/subintervalos;
area:=0;
i:=izq;
 repeat
  begin
  area:=area+f(i)*base ;
  i:=i+base ;
  end;
  Until i=der-base;
 sumaRiemann:=area;
end;

function riemannHasta(izq,der : real; delta :real):integer;
var
i,sum1,sum2:real;x:integer ;
begin
sum2:=0;
x:=1;
 While abs(i)<delta do
  begin
   sum1:=sumaRiemann(izq,der,x);
   i:=sum2-sum1;
   sum2:=sum1;
   x:=x+1;
  end;
 riemannHasta:=x
end;









