* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Variable  x[I],Obj;

Equation Eq_1,Def_obj;

Eq_1..    (1 + sqr(x['2']))*x['1'] + sqr(sqr(x['3']))  =e=      3;
Def_obj.. Obj =e=sqr(x['1'] - x['2']) + sqr(sqr(x['2'] - x['3']));

x.l['1'] =  -2.6;
x.l['2'] =   2  ;
x.l['3'] =   2  ;

*       "optimal solution as starting point   ";
*x.l['1'] =   1;
*x.l['2'] =   1;
*x.l['3'] =   1;

Model hs026 /all/;
Solve hs026 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =  + 0;
