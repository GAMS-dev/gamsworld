* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Positive Variable X[I] ;
Variable f             ;

Equation Eq_1,Def_obj;

Def_obj.. f =e= -x['1']                         ;
Eq_1..    0.125+power((1-x['1']),3)-x['2'] =g= 0;

x.l['1'] =  1.3;
x.l['2'] =  0.2;

Model s222 /all/;

Solve s222 using nlp minimize f;

display x.l;
display f.l;
