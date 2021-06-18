Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -10 ;
x.up['0'] =  10 ;
x.lo['1'] = -10 ;
x.up['1'] =  10 ;

$macro defobj -cos(x['0'])*cos(x['1'])*exp(-power(x['0']-PI,2)-power(x['1']-PI,2))
Equation
         Def_obj;
Def_obj..
    z =e= defobj                             ;

Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / Easom.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;

Loop(j, Put x.l(j)); Put z.l /);
