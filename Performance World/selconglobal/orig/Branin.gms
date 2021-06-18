Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Scalar a /  1.0 / ;
Scalar d /  6.0 / ;
Scalar e / 10.0 / ;

Scalar b ; b=5.1/(4*PI*PI);
Scalar c ; c=5.0/PI;
Scalar f ; f=1/(8*PI);

Variable x(j), z;

x.lo['0'] = -5 ;
x.up['0'] = 10 ;
x.lo['1'] =  0 ;
x.up['1'] = 15 ;

$macro defobj a*power((x['1']-b*x['0']*x['0']+c*x['0']-d),2)+ e*(1-f)*cos(x['0'])+e
Equation
         Def_obj;
Def_obj..
    z =e= defobj ;

Model m /all/;

Solve m min z using nlp;

$onDotL

File fx / Branin.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;

Loop(j, Put x.l(j)); Put z.l /);
