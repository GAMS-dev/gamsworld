* Shitkovski AMPL model  (translation to GAMS)

Set I /1*4/;

Variable  x[I],
           Obj;

Equation Eq_1,
         Eq_2,
         Eq_3,
         Def_obj;

Eq_1..     power(x['1'],3) + sqr(x['2']) =e= 1;
Eq_2..    sqr(x['1'])*x['4'] - x['3']    =e= 0;
Eq_3..    sqr(x['4']) - x['2']           =e= 0;
Def_obj.. Obj=e= -x['1']*x['2']*x['3']*x['4'];

x.l['1'] =  0.8;
x.l['2'] =  0.8;
x.l['3'] =  0.8;
x.l['4'] =  0.8;

* "optimal solution as starting point ";
*x.l['1'] =  0.793701;
*x.l['2'] =  0.707107;
*x.l['3'] =  0.529732;
*x.l['4'] =  0.840896;

Model hs040 /all/;
Solve hs040 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj = -0.25
