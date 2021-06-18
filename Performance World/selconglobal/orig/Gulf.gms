Set j /0*2/, i / 0*98/


Scalar PI / 3.14159265359 / ;

Variable
         x[j]    ,
         z       ;


x.lo['0'] =  0.1      ;
x.up['0'] =  100      ;
x.lo['1'] =  0        ;
x.up['1'] =  25.6     ;
x.lo['2'] =  0        ;
x.up['2'] =  5        ;

$macro u      25.0 + rpower(-50*log(0.01*(ord(i)-1)),0.66666)
$macro subsum exp(-rpower(u-x['1'],x['2'])/x['0'])-0.01*(ord(i)-1)
$macro defobj Sum{i$(ord(i)>1),sqr(subsum)}

Equation Def_Obj ;

Def_Obj.. z =e= defobj ;

model m /all/;
Solve m min z using nlp;

$onDotL
file fx / Gulf.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj ;
loop(j, put x.l(j)); put z.l /);
