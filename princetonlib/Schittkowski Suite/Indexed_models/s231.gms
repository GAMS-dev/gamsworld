* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..          x['1']/3 + x['2'] + 0.1 =g= 0;
Eq_2..       -1*x['1']/3 + x['2'] + 0.1 =g= 0;
Def_obj..       f =e= 100*sqr(x['2']-sqr(x['1'])) + sqr(1-x['1']);

x.l['1'] = -1.2;
x.l['2'] =  1  ;

Model s231 /all/;

Solve s231 using nlp minimize f;

display x.l;
display f.l;
