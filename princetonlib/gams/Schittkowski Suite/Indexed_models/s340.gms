* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Def_obj;
Eq_1..    1.8-x['1']-2*x['2']-2*x['3'] =g=  0;
Def_obj.. f   =e=   -x['1'] * x['2'] * x['3'];

x.up['2'] =   1.0      ;
x.l['1']  =   1.0      ;
x.l['2']  =   1.0      ;
x.l['3']  =   1.0      ;
Model s340 /all/;

Solve s340 using nlp minimize f;

display x.l;
display f.l;
