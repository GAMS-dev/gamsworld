* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Positive Variable  X[I] ;
Variable           f    ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..    sqr(x['1']) + sqr(x['2']) =g= 0;
Eq_2..    1-sqr(x['1'])-sqr(x['2']) =g= 0;
Def_obj.. f =e= -x['1']*x['2'] ;

x.l['1'] = 0.8 ;
x.l['2'] = 0.05;

Model s226 /all/;

Solve s226 using nlp minimize f;

display x.l;
display f.l;
