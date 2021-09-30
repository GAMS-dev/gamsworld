Set j /0*2/;

Scalar PI / 3.14159265359 / ;

Variable
         x[j]    ,
         z       ;

Loop{j, x.lo[j] = -10 ;
        x.up[j] =  10 ;  };

$macro theta (1/2/PI*arctan2(x['1'],x['0']) + ifthen(x['0']<=0,0.5,0))

$macro subsum         power(sqrt(x['0']*x['0'] + x['1']*x['1']) - 1.0,2)
$macro defobj    100*(power(x['1']-10*theta,2) + subsum ) + x['2']*x['2']

Equation Def_Obj ;
Def_Obj.. z =e= defobj ;

model m /all/;
x.l['1'] = 1;
Solve m min z using dnlp;

$onDotL
file fx / Helical.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj ;
loop(j, put x.l(j)); put z.l /);


