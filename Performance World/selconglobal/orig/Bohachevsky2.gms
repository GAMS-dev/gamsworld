Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -50 ;
x.up['0'] =  50 ;
x.lo['1'] = -50 ;
x.up['1'] =  50 ;

$macro defobj power(x['0'],2)+2.0*x['1']*x['1']-0.3*cos(3*PI*x['0'])*cos(4*PI*x['1'])+0.3
Equation
         Def_obj;
Def_obj..

z =e= defobj ;

Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / Bohachevsky2.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt;
For (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;

Loop(j, Put x.l(j)); Put z.l /);
