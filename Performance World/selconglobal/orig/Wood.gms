Set j /0*3/;

Scalar PI / 3.14159265359 / ;

Variable
         x[j]    ,
         z       ;

x.lo['0'] = -10;
x.up['0'] =  10;
x.lo['1'] = -10;
x.up['1'] =  10;
x.lo['2'] = -10;
x.up['2'] =  10;
x.lo['3'] = -10;
x.up['3'] =  10;

$macro defobj1 100*power((x['1']-x['0']*x['0']),2)+(1-x['0'])*(1-x['0'])+90*power((x['3']-x['2']*x['2']),2)
$macro defobj2 (1-x['2'])*(1-x['2'])+10.1*(power((x['1']-1),2)+power((x['3']-1),2))+19.8*(x['1']-1)*(x['3']-1)

Equation Def_Obj ;

Def_Obj.. z =e= defobj1 + defobj2 ;

model m /all/;
Solve m min z using nlp;

$onDotL
file fx / Wood.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj1 + defobj2 ;
loop(j, put x.l(j)); put z.l /);
