* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set I /1*%N%/;

Variable X[I],f;

Equation Eq_1,Def_obj;

Eq_1..      sqr(x['1'])/100+sqr(x['2'])/4  -1 =e= 0;
Def_obj..   f =e= sqr(x['1']-20) + sqr(x['2']+20)  ;


x.l['1']  =   0.0;
x.l['2']  =   0.0;
Model s320 /all/;

Solve s320 using nlp minimize f;

display x.l;
display f.l;
