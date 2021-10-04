* Shitkovski AMPL model  (translation to GAMS)

Set I /1*4/;

Positive Variable  x[I];
         Variable   Obj;

Equation Eq_1,
         Def_obj;
Eq_1..    x['1']+2*x['2']+2*x['3']-x['4'] =e= 0;
Def_obj.. Obj   =e=2-x['1']*x['2']*x['3']      ;

* string below important for GAMS version of model
x.lo['1'] = 0.000001;

x.up['1'] = 1;
x.up['2'] = 1;
x.up['3'] = 1;
x.up['4'] = 2;

x.l['1'] =  2;
x.l['2'] =  2;
x.l['3'] =  2;
x.l['4'] =  2;

* "optimal solution as starting point ";
*x.l['1'] =  2/3;
*x.l['2'] =  1/3;
*x.l['3'] =  1/3;
*x.l['4'] =  2  ;

Model hs041 /all/;
Solve hs041 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =   52/27

parameter a; a=52/27;
 display  a;
