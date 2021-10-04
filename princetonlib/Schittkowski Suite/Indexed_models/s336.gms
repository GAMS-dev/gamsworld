* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Def_obj;
Eq_1..               5*x['1']  +     5*x['2']  -     3*x['3']  - 6 =e= 0;
Eq_2..             sqr(x['1']) + 2*sqr(x['2']) + 3*sqr(x['3']) - 1 =e= 0;
Def_obj..    f =e=   7*x['1']  -     6*x['2']  +     4*x['3'];

x.l['1']  =   0.0      ;
x.l['2']  =   0.0      ;
x.l['3']  =   0.0      ;
Model s336 /all/;

Solve s336 using nlp minimize f;

display x.l;
display f.l;
