* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Def_obj;
Eq_1..       x['1']*x['2'] - 1 =g= 0;
Def_obj..    f =e=  9*sqr(x['1']) + sqr(x['2']) + 9*sqr(x['3']);

x.lo['2'] =   1.0      ;
x.up['3'] =   1.0      ;

x.l['1']  =   1.0      ;
x.l['2']  =   1.0      ;
x.l['3']  =   1.0      ;
Model s337 /all/;

Solve s337 using nlp minimize f;

display x.l;
display f.l;
