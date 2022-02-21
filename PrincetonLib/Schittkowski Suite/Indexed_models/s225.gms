* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable  X[I], f    ;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Eq_5,Def_obj;

Eq_1..    x['1']+x['2']-1             =g= 0;
Eq_2..    sqr(x['1'])+sqr(x['2'])-1   =g= 0;
Eq_3..    sqr(9*x['1'])+sqr(x['2'])-9 =g= 0;
Eq_4..    sqr(x['1'])-x['2']          =g= 0;
Eq_5..    sqr(x['2'])-x['1']          =g= 0;
Def_obj.. f =e=  sqr(x['1']) + sqr(x['2']) ;

x.l['1'] =  3  ;
x.l['2'] =  1  ;

Model s225 /all/;

Solve s225 using nlp minimize f;

display x.l;
display f.l;
