* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable     X[I], f    ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..    -2*sqr(x['1'])   + power(x['1'],3)     + x['2']   =g= 0;
Eq_2..    -2*sqr(1-x['1']) + power((1-x['1']),3) + x['2']   =g= 0;
Def_obj..  f =e= x['2']    ;

x.l['1'] = 0   ;
x.l['2'] = 0   ;

Model s230 /all/;

Solve s230 using nlp minimize f;

display x.l;
display f.l;
