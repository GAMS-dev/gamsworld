* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set I /1*%N%/;

Variable X[I],f;

Equation Eq_1,Eq_2,Eq_3,Def_obj;

Eq_1..     1 -   2*x['2']  +     x['1']    =g=0       ;
Eq_2..     1 - sqr(x['1']) - sqr(x['2'])   =g=0       ;
Eq_3..         sqr(x['1']) + sqr(x['2'])   =g=0       ;
Def_obj..                                f =e= -x['2'];

* solutions must be inside circle with R=1
x.up[i]   =   1 ;
x.lo[i]   =  -1 ;

x.l['1']  =  -0.1;
x.l['2']  =  -0.9;
Model s315 /all/;

Solve s315 using nlp minimize f;

display x.l;
display f.l;
