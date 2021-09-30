Set j /0*9/;

Scalar PI / 3.14159265359 / ;

Variable
         x[j]    ,
         z       ;


x.lo['0'] = -500 ;
x.up['0'] =  500 ;
x.lo['1'] = -500 ;
x.up['1'] =  500 ;
x.lo['2'] = -500 ;
x.up['2'] =  500 ;
x.lo['3'] = -500 ;
x.up['3'] =  500 ;
x.lo['4'] = -500 ;
x.up['4'] =  500 ;
x.lo['5'] = -500 ;
x.up['5'] =  500 ;
x.lo['6'] = -500 ;
x.up['6'] =  500 ;
x.lo['7'] = -500 ;
x.up['7'] =  500 ;
x.lo['8'] = -500 ;
x.up['8'] =  500 ;
x.lo['9'] = -500 ;
x.up['9'] =  500 ;

$macro defobj  -sum(j,{x[j]*sin(sqrt(abs(x[j])))})

Equation Def_Obj ;
Def_Obj.. z =e= defobj ;

model m /all/;
Solve m min z using dnlp;

$onDotL
file fx / Schwefel.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj ;
loop(j, put x.l(j)); put z.l /);
