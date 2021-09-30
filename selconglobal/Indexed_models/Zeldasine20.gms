Set j /0*19/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo[j] =  0 ;
x.up[j] = PI ;

Scalar A / 2.5 / ;
Scalar B / 5.0 / ;
Scalar Sz ; Sz=PI/6;

$macro defobj -(A*Prod{j,(sin(x[j]-Sz))} + Prod{j,(sin(B*(x[j]-Sz)))})
Equation
         Def_obj;
Def_obj..

    z =e= defobj  ;


model m /all/;

solve m min z using nlp;

$onDotL
file fx / Zeldasine20.txt /; fx.pw=4096; fx.nd=12; fx.nw=22; put fx; 
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;

loop(j, put x.l(j)); put z.l /);
