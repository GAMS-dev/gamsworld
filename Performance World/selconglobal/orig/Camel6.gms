Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -5 ;
x.up['0'] =  5 ;
x.lo['1'] = -5 ;
x.up['1'] =  5 ;

$macro defobj (4-2.1*x['0']*x['0']+power(x['0'],4)/3)*x['0']*x['0']+x['0']*x['1']+(-4 + 4*x['1']*x['1'])*x['1']*x['1']
Equation
         Def_obj;
Def_obj..

z =e= defobj;

Model m /all/;

Solve m min z using nlp;
$onDotL
File fx / Camel6.txt /; fx.nd=12; fx.nw=22; put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;

loop(j, put x.l(j)); put z.l /);
