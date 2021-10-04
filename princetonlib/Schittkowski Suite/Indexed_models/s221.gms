* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Positive Variable X[I] ;
Variable          f    ;

Equation Eq_1,Def_obj;
Def_obj.. f =e= -x['1'];
Eq_1..    power((1 - x['1']),3) - x['2'] =g= 0;

x.l['1'] = 0.25;
x.l['2'] = 0.25;

Model s221 /all/;

Solve s221 using nlp minimize f;

display x.l;
display f.l;
