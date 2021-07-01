Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -5 ;
x.up['0'] =  5 ;
x.lo['1'] = -5 ;
x.up['1'] =  5 ;

$macro defobj 100.0*power((x['1']-x['0']*x['0']),2 )+power((6.4*power(x['1']-0.5 ,2 )-x['0']-0.6),2)

Equation
         Def_obj;
Def_obj..
        z =e= defobj ;
Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / ModRosenbrock.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;
Loop(j, Put x.l(j)); Put z.l /);
