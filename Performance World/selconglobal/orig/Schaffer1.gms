Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -100 ;
x.up['0'] =  100 ;
x.lo['1'] = -100 ;
x.up['1'] =  100 ;

$macro defobj 0.5+(power((sin(sqrt(x['0']*x['0']+x['1']*x['1']))),2)-0.5)/(power((1+.001*(x['0']*x['0']+x['1']*x['1'])),2))
Equation
         Def_obj;
Def_obj..
        z =e= defobj ;

Model m /all/;

Solve m min z using nlp;
$onDotL
File fx / Schaffer1.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;
Loop(j, Put x.l(j)); Put z.l /);
