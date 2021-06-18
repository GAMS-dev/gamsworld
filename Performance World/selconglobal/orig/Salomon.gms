Set j /0*4/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -100 ;
x.up['0'] =  100 ;
x.lo['1'] = -100 ;
x.up['1'] =  100 ;
x.lo['2'] = -100 ;
x.up['2'] =  100 ;
x.lo['3'] = -100 ;
x.up['3'] =  100 ;
x.lo['4'] = -100 ;
x.up['4'] =  100 ;

$macro defobj -cos(2.0*PI*Sqrt(Sum{j,x[j]*x[j]}))+0.1*Sqrt(Sum{j,x[j]*x[j]})+1.0

Equation
         Def_obj;
Def_obj..

z =e= defobj ;

model m /all/;

solve m min z using nlp;

$onDotL 
file fx / Salomon.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;

loop(j, put x.l(j)); put z.l /);
