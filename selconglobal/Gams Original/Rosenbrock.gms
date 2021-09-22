Set j /0*9/;

Scalar PI / 3.14159265359 / ;

Variable
         x[j]    ,
         z       ;


x.lo['0'] = -30 ;
x.up['0'] =  30 ;
x.lo['1'] = -30 ;
x.up['1'] =  30 ;
x.lo['2'] = -30 ;
x.up['2'] =  30 ;
x.lo['3'] = -30 ;
x.up['3'] =  30 ;
x.lo['4'] = -30 ;
x.up['4'] =  30 ;
x.lo['5'] = -30 ;
x.up['5'] =  30 ;
x.lo['6'] = -30 ;
x.up['6'] =  30 ;
x.lo['7'] = -30 ;
x.up['7'] =  30 ;
x.lo['8'] = -30 ;
x.up['8'] =  30 ;
x.lo['9'] = -30 ;
x.up['9'] =  30 ;

$macro a       x[j]*x[j]-x[j+1]
$macro b       1.0-x[j]
$macro defobj  Sum{j$(ord(j) lt card(j)),(100.0*(a)*(a)+(b)*(b))}

Equation Def_Obj ;
Def_Obj.. z =e= defobj ;

model m /all/;
Solve m min z using dnlp;

$onDotL
file fx / Rosenbrock.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj ;
loop(j, put x.l(j)); put z.l /);
