Set j /0*3/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -1 ;
x.up['0'] =  1 ;
x.lo['1'] = -1 ;
x.up['1'] =  1 ;
x.lo['2'] = -1 ;
x.up['2'] =  1 ;
x.lo['3'] = -1 ;
x.up['3'] =  1 ;

$macro defobj -0.1*Sum{j,cos(5*PI*x[j])} + Sum{j,power(x[j],2)}
Equation
         Def_obj;
Def_obj..

z =e= defobj  ;

Model m /all/;

Solve m min z using nlp;

$onDotL
file fx / CosMix4.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;

Loop(j, Put x.l(j)); Put z.l /);
