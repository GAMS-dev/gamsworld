Set j /0*9/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -512 ;
x.up['0'] =  512 ;
x.lo['1'] = -512 ;
x.up['1'] =  512 ;
x.lo['2'] = -512 ;
x.up['2'] =  512 ;
x.lo['3'] = -512 ;
x.up['3'] =  512 ;
x.lo['4'] = -512 ;
x.up['4'] =  512 ;
x.lo['5'] = -512 ;
x.up['5'] =  512 ;
x.lo['6'] = -512 ;
x.up['6'] =  512 ;
x.lo['7'] = -512 ;
x.up['7'] =  512 ;
x.lo['8'] = -512 ;
x.up['8'] =  512 ;
x.lo['9'] = -512 ;
x.up['9'] =  512 ;

$macro objdef Sum{j,(x[j]*x[j]-10.0*cos(2.*PI*x[j])+10.0)}

Equation
         Def_Obj;
Def_Obj..
    z =e= objdef  ;

Model m /all/;

Solve m min z using nlp;

$onDotL

File fx / Rastrigin.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; For (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef  ;

Loop(j, Put x.l(j)); Put z.l /);
