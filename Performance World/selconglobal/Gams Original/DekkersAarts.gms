Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -20 ;
x.up['0'] =  20 ;
x.lo['1'] = -20 ;
x.up['1'] =  20 ;

$macro defobj 100000.0*x['0']*x['0']+x['1']*x['1']-power((x['0']*x['0']+ x['1']*x['1']),2)+power((x['0']*x['0']+ x['1']*x['1']),4)/100000

Equation
         Def_obj;
Def_obj..
    z =e=  defobj ;


Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / DekkersAarts.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj

Loop(j, Put x.l(j)); Put z.l /);
