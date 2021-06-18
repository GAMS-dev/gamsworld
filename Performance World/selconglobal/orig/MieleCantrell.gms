
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

$macro objdef1 power(exp(x['0'])-x['1'] ,4) + 100.0*power(x['1']-x['2'],6)
$macro objdef2 power(tan(x['2'] -x['3']),4) +       power(x['0'],8       )

Equation
         Def_obj;
Def_obj..
    z =e= objdef1 + objdef2 ;

Model m /all/;

Solve m min z using nlp;

$onDotL

File fx / MieleCantrell.txt /; fx.nd=12; fx.nw=22; put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef1 + objdef2  ;


loop(j, put x.l(j)); put z.l /);
