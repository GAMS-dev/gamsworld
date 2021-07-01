Set j /  0* 9 / ;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] =-500 ;
x.up['0'] = 500 ;
x.lo['1'] =-500 ;
x.up['1'] = 500 ;
x.lo['2'] =-500 ;
x.up['2'] = 500 ;
x.lo['3'] =-500 ;
x.up['3'] = 500 ;
x.lo['4'] =-500 ;
x.up['4'] = 500 ;
x.lo['5'] =-500 ;
x.up['5'] = 500 ;
x.lo['6'] =-500 ;
x.up['6'] = 500 ;
x.lo['7'] =-500 ;
x.up['7'] = 500 ;
x.lo['8'] =-500 ;
x.up['8'] = 500 ;
x.lo['9'] =-500 ;
x.up['9'] = 500 ;

$macro objdef Sum{j,x[j]*x[j]}/4000.0-Prod{j,(cos(x[j]/Sqrt((ord(j)-1+1))))}+1.0

Equation
         Def_Obj;
Def_Obj..
    z =e= objdef;

Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / Griewank.txt /; fx.nd=6; fx.nw=14; Put fx;
Scalar cnt; For (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef ;

Loop(j, Put x.l(j)); Put z.l /);
