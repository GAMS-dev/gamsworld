* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;

Positive Variable     X[I];
Variable              f   ;

Equation Eq_1,Def_obj;
Eq_1..    10 - 2*x['1']*x['3'] - x['1']*x['2']  =g=    0   ;
Def_obj.. f =e=0.2/(x['1']*x['2']*x['3'])+4/x['1']+3/x['3'];

x.l['1']  =   1.0      ;
x.l['2']  =   1.0      ;
x.l['3']  =   1.0      ;
x.lo[i]   =   0.00001  ;
Model s339 /all/;

Solve s339 using nlp minimize f;

display x.l;
display f.l;
