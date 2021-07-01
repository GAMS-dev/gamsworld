Set j /0*9/;
Alias (j,k);

Scalar PI / 3.14159265359 / ;

Variable  x[j]
          z       ;


x.lo['0'] = -30;
x.up['0'] =  30;
x.lo['1'] = -30;
x.up['1'] =  30;
x.lo['2'] = -30;
x.up['2'] =  30;
x.lo['3'] = -30;
x.up['3'] =  30;
x.lo['4'] = -30;
x.up['4'] =  30;
x.lo['5'] = -30;
x.up['5'] =  30;
x.lo['6'] = -30;
x.up['6'] =  30;
x.lo['7'] = -30;
x.up['7'] =  30;
x.lo['8'] = -30;
x.up['8'] =  30;
x.lo['9'] = -30;
x.up['9'] =  30;

$macro subsum1 Sum{j,power(x[j],2)}
$macro subsum2 Sum{j,cos(2*PI*x[j])}
$macro defobj -20.0*exp(-0.02*sqrt(subsum1/10))-exp(subsum2/10)+20.0+exp(1)


Equation
         Def_Obj ;


Def_Obj..
    z =e= defobj ;

$onDotL
model m /all/;
Solve m min z using nlp;

file fx / Ackleys.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj ;
loop(j, put x.l(j)); put z.l /);
