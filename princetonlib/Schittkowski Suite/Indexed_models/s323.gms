* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set I /1*%N%/;

Positive Variable X[I];
Variable          f   ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..            x['1']  - x['2'] + 2         =g= 0;
Eq_2..       -sqr(x['1']) + x['2'] - 1         =g= 0;
Def_obj..   f =e= sqr(x['1'])+sqr(x['2'])-4*x['1']+4;


x.l['1']  =   0.0;
x.l['2']  =   1.0;
Model s323 /all/;

Solve s323 using nlp minimize f;

display x.l;
display f.l;
