$set N 3
$set N1 2
Set j /  0* 2 / ;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] =-10 ;
x.up['0'] = 10 ;
x.lo['1'] =-10 ;
x.up['1'] = 10 ;
x.lo['2'] =-10 ;
x.up['2'] = 10 ;

$macro zw1  10*power(sin(PI*(1+0.25*(x['0']+1))),2)
$macro zw2  power(0.25*(x['%N1%']+1),2)
$macro zw1s Sum{j$(ord(j)lt card(j)),power(0.25*(x[j]+1),2)*(1+power(sin(PI*(0.25*x[j+1])),2))}+zw1
$macro objdef PI/%N%*(zw1s+zw2)

Equation
         Def_Obj;
Def_Obj..
    z =e= objdef;

Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / LM1.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; For (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef ;

Loop(j, Put x.l(j)); Put z.l /);
