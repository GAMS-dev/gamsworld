* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable     x[I], f    ;

Equation Eq_1,Def_obj;

Eq_1..           -1*sqr(x['1']) - sqr(x['2']) + 1 =g= 0;
Def_obj..  f =e= power((x['2'] - x['1']),4) - (1-x['1']);

x.lo[I] = 0.2 ;
x.up[I] = 2.0 ;

x.l['1'] = 0   ;
x.l['2'] = 0   ;

Model s234 /all/;

Solve s234 using nlp minimize f;

display x.l;
display f.l;
