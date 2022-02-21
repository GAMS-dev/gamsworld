* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Variable  x[I], Obj;

Equation Eq_1,Def_obj;

Eq_1..      x['1'] + 2*x['2'] + 3*x['3'] =e= 1;
Def_obj..   Obj =e= sqr(x['1'] + x['2']) + sqr(x['2'] + x['3']);

x.l['1'] =  -4;
x.l['2'] =   1;
x.l['3'] =   1;

* "optimal solution as starting point ";
*x.l['1'] =   0.5;
*x.l['2'] =  -0.5;
*x.l['3'] =   0.5;

Model hs028 /all/;
Solve hs028 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =  + 0.0 ;
