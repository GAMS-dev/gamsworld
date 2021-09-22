Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = 0 ;
x.up['0'] = 5 ;
x.lo['1'] = 0 ;
x.up['1'] = 6 ;

$macro defobj (1.0-8.0*x['0']+7.0*x['0']*x['0']-7.0/3*x['0']*x['0']*x['0']+1.0/4*x['0']*x['0']*x['0']*x['0'])*x['1']*x['1']*exp(-x['1'])

Equation
         Def_obj;
Def_obj..
    z =e= defobj  ;

Model m /all/;

Solve m min z using nlp;
$onDotL
File fx / Hosaki.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;

Loop(j, Put x.l(j)); Put z.l /);
