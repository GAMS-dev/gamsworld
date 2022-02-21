* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..  sqr(x['1'])/4 + sqr(x['2']) =l=  1;
Eq_2..      x['1']    - 2*x['2']    =e= -1;
Def_obj..    Obj =e= sqr(x['1']-2)+sqr(x['2']-1);


x.l['1'] =  2;
x.l['2'] =  2;

*x.l['1'] =  0.822876;
*x.l['2'] =  0.911438;

Model hs014 /all/;
Solve hs014 using nlp minimaze obj;

display x.l  ;
display obj.l;

parameter a;  a=  -9 +2.875*sqrt(7);
display a    ;

* optimal obj = -9+2.875*sqrt(7)  or = 1.3934
