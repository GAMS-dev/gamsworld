Set j /0*9/;

Scalar PI / 3.14159265359 / ;

Variable
         x[j]    ,
         z       ;

x.lo['0'] = -1 ;
x.up['0'] =  1 ;
x.lo['1'] = -1 ;
x.up['1'] =  1 ;
x.lo['2'] = -1 ;
x.up['2'] =  1 ;
x.lo['3'] = -1 ;
x.up['3'] =  1 ;
x.lo['4'] = -1 ;
x.up['4'] =  1 ;
x.lo['5'] = -1 ;
x.up['5'] =  1 ;
x.lo['6'] = -1 ;
x.up['6'] =  1 ;
x.lo['7'] = -1 ;
x.up['7'] =  1 ;
x.lo['8'] = -1 ;
x.up['8'] =  1 ;
x.lo['9'] = -1 ;
x.up['9'] =  1 ;

$macro sum1    Sum{j,x[j]*x[j]}
$macro defobj  -exp(-0.5*sum1)

Equation Def_Obj ;
Def_Obj.. z =e= defobj ;

model m /all/;
Solve m min z using dnlp;

$onDotL
file fx / Expo.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj ;
loop(j, put x.l(j)); put z.l /);
