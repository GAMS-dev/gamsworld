


Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -2 ;
x.up['0'] =  2 ;
x.lo['1'] = -2 ;
x.up['1'] =  2 ;

*$macro objdef1 (1+(x['0']+x['1']+1)*(x['0']+x['1']+1)*(19-14*x['0']+3*x['0']*x['0']-14*x['1']+6*x['0']*x['1']+3*x['1']*x['1']))
$macro objdef1 (1+(x['0']+x['1']+1)*(x['0']+x['1']+1)*(19-14*x['0']+3*x['0']*x['0']-14*x['1']+6*x['0']*x['1']+3*x['1']*x['1']))

*$macro objdef2 (30+(2*x['0']-3*x['1'])*(2*x['0']-3*x['1'])*(18-32*x['0']+12*x['0']*x['0']+48*x['1']-36*x['0']*x['1']+27*x['1']*x['1']))
$macro objdef2 (30+(2*x['0']-3*x['1'])*(2*x['0']-3*x['1'])*(18-32*x['0']+12*x['0']*x['0']+48*x['1']-36*x['0']*x['1']+27*x['1']*x['1']))

Equation
         Def_obj;
Def_obj..

z =e= objdef1*objdef2 ;

Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / GoldPrice.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; For (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef1*objdef2 ;


Loop(j, Put x.l(j)); Put z.l /);
