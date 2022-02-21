* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Def_obj;
Eq_1..        x['1']*x['2']      - 25 =g= 0;
Eq_2.. sqr(x['1']) + sqr(x['2']) - 25 =g= 0;
Def_obj..  f =e= 0.01*sqr(x['1']) + sqr(x['2']);


x.lo['1'] =   2            ;
x.l['1']  =   2            ;
x.l['2']  =   2            ;
Model s324 /all/;

Solve s324 using nlp minimize f;

display x.l;
display f.l;
