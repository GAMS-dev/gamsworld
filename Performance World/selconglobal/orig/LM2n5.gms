$set N 5
$set N1 4
Set j /  0* 4 / ;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] =-5 ;
x.up['0'] = 5 ;
x.lo['1'] =-5 ;
x.up['1'] = 5 ;
x.lo['2'] =-5 ;
x.up['2'] = 5 ;
x.lo['3'] =-5 ;
x.up['3'] = 5 ;
x.lo['4'] =-5 ;
x.up['4'] = 5 ;

$macro zw1  power(sin(3*PI*x['0']),2)
$macro zw2  power(x['%N1%']-1,2)*(1+power(sin(2*PI*x['%N1%']),2))
$macro zw1s Sum{j$(ord(j)lt card(j)),power(x[j]-1,2)*(1+power(sin(3*PI*x[j+1]),2))}+zw1
$macro objdef 0.1*(zw1s+zw2)

Equation
         Def_Obj;
Def_Obj..
    z =e= objdef;

Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / LM2n5.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; For (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef ;

Loop(j, Put x.l(j)); Put z.l /);
