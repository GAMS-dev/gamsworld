Set j /0*3/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -10 ;
x.up['0'] =  10 ;
x.lo['1'] = -10 ;
x.up['1'] =  10 ;
x.lo['2'] = -10 ;
x.up['2'] =  10 ;
x.lo['3'] = -10 ;
x.up['3'] =  10 ;

$macro objdef1 (x['0']+10.0*x['0'])*(x['0']+10.0*x['0'])
$macro objdef2 5.0*(x['2']-     x['3'])*(x['2']-     x['3'])
$macro objdef3 power((x['1']-2.0*x['2']),4 )
$macro objdef4 10.0*power((x['0']-x['3']),4     )


Equation
         Def_obj;
Def_obj..
    z =e=   objdef1 +  objdef2 +  objdef3 +  objdef4  ;

Model m /all/;

Solve m min z using nlp;

$onDotL

File fx / PowellQ.txt /; fx.nd=12; fx.nw=22; put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l =   objdef1 +  objdef2 +  objdef3 +  objdef4    ;

loop(j, put x.l(j)); put z.l /);
