* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Def_obj;
Eq_1..          1000*sqr(x['1'])+100*sqr(x['2'])-x['3']        =e= 0;
Eq_2..           100*sqr(x['1'])+400*sqr(x['2'])+x['3'] - 0.01 =e= 0;
Def_obj..    f =e= -(0.001*x['1']+x['2']);

x.l['1']  =   1.0      ;
x.l['2']  =   1.0      ;
x.l['3']  =   1.0      ;
Model s335 /all/;

Solve s335 using nlp minimize f;

display x.l;
display f.l;
