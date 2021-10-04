* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Def_obj;
Eq_1..     11  - sqr(x['1']) + 6*x['1']  - 4*x['2']             =g= 0;
Eq_2..               x['1']*x['2'] - 3*x['2'] - exp(x['1']-3)+1 =g= 0;
Def_obj..  f =e= sqr(x['1'])+sqr(x['2'])-16*x['1']-10*x['2']         ;


x.lo[i]   =   0            ;
x.l['1']  =   4            ;
x.l['2']  =   3            ;
Model s326 /all/;

Solve s326 using nlp minimize f;

display x.l;
display f.l;
