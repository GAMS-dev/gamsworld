* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Positive Variable  x[I];
Variable            Obj;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..     6*x['2'] + 4*x['3'] - power(x['1'],3) =g= 3;
Eq_2..     x['1'] + x['2'] + x['3']              =e= 1;
Def_obj..  Obj=e=sqr(x['1']+3*x['2']+x['3'])+4*sqr(x['1']-x['2']);


x.l['1'] =  0.1;
x.l['2'] =  0.7;
x.l['3'] =  0.2;

* "optimal solution as starting point ";
*x.l['1'] =  0;
*x.l['2'] =  0;
*x.l['3'] =  1;

Model hs032 /all/;
Solve hs032 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =    1          ;
