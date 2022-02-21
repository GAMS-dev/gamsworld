* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Eq_3,Def_obj;
Eq_1..   -(x['1']  +     x['2'] ) + 1 =g= 0;
Eq_2..   -(x['1']  + sqr(x['2'])) + 1 =g= 0;
Eq_3.. sqr(x['1']) + sqr(x['2'])  - 9 =e= 0;
Def_obj..    f =e= sqr(x['1']) + x['2']    ;

x.l['1']  =  -3            ;
x.l['2']  =   0            ;
Model s325 /all/;

Solve s325 using nlp minimize f;

display x.l;
display f.l;
