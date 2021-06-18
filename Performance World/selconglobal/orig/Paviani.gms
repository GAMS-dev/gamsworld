Set j /  0* 9 / ;

Scalar PI / 3.14159265359 / ;

Scalar epsi /0.000001/;
Variable x(j), z;

Loop{j, x.lo[j] =  2+epsi ;
        x.up[j] = 10-epsi ;    } ;

$macro   prod1  prod{j,x[j]}
$macro   sum1   Sum{j,(power(log(x[j]-2),2) + power(log(10-x[j]),2)) }
$macro   prod2  Exp(log(prod1)*0.2)
$macro   objdef sum1-prod2

Equation
         Def_Obj;
Def_Obj..
    z =e= objdef;

Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / Paviani.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; For (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef ;

Loop(j, Put x.l(j)); Put z.l /);
