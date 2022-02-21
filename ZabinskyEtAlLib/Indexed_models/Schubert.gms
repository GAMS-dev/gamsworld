
Set j /0*1/;
Set i /i1*i5/;


Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] = -10 ;
x.up['0'] =  10 ;
x.lo['1'] = -10 ;
x.up['1'] =  10 ;

$macro objdef Prod{j,Sum{i,ord(i)*cos((ord(i)+1)*x[j]+ord(i))}}

Equation
         Def_obj;
Def_obj..
    z =e= objdef  ;

Model m /all/;

Solve m min z using nlp;

$onDotL

File fx / Schubert.txt /; fx.nd=12; fx.nw=22; put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef  ;

loop(j, put x.l(j)); put z.l /);
