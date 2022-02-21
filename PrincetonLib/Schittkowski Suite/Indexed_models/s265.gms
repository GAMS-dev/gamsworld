* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;
SET II(I) /1,2/;
Variable     X[I], f   ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..         x['1'] + x['2'] - 1 =e= 0;
Eq_2..         x['3'] + x['4'] - 1 =e= 0;

Def_obj.. f =e= sum{I$II(I),(1-exp(-10*x[I]*exp(-x[I+2]) ) ) };

x.lo[I]  =  0  ;
x.up[I]  =  1  ;
x.l['1'] =  0  ;
x.l['2'] =  0  ;
x.l['3'] =  0  ;
x.l['4'] =  0  ;

Model s264 /all/;

Solve s264 using nlp minimize f;

display x.l;
display f.l;
