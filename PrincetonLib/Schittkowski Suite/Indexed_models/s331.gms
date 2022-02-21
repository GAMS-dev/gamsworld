* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Def_obj;
Eq_1..       1 - x['1'] - x['2'] =g= 0;
Def_obj..    f =e= (1/x['1'])*log(2*log(x['2'])/(0.001+log(x['1']+x['2'])));


x.lo[i]   =   0.01  ;
x.up[i]   =   1.00  ;
x.l['1']  =   0.5   ;
x.l['2']  =   0.1   ;
Model s331 /all/;

Solve s331 using nlp minimize f;

display x.l;
display f.l;
