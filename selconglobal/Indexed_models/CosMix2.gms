Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -1 ;
x.up['0'] =  1 ;
x.lo['1'] = -1 ;
x.up['1'] =  1 ;

$macro defobj -0.1*Sum{j,cos(5*PI*x[j])} + Sum{j,power(x[j],2)}
Equation
         Def_obj;
Def_obj..

z =e= defobj ;

model m /all/;

solve m min z using nlp;

$onDotL 
file fx / CosMix2.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;

loop(j, put x.l(j)); put z.l /);
