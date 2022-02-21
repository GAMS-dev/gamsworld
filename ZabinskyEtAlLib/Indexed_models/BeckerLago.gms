Set j /0*1/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -10 ;
x.up['0'] =  10 ;
x.lo['1'] = -10 ;
x.up['1'] =  10 ;

$macro defobj (SQRT(SQR(x['0']))-5.0)*(SQRT(SQR(x['0']))-5.0)+(SQRT(SQR(x['1']))-5.0)*(SQRT(SQR(x['1']))-5.0)

Equation
         Def_obj;
Def_obj..

z =e= defobj   ;

model m /all/;

solve m min z using nlp;

$onDotL
file fx / BeckerLago.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj   ;

loop(j, put x.l(j)); put z.l /);
