* Shitkovski AMPL model  (translation to GAMS)
parameter pi; pi = 3.14159;
Set I /1,2/;

Variable  x[I],Obj;
Equation Eq_1, Def_obj;

Def_obj.. obj =e= sin(pi*x['1']/12)*cos(pi*x['2']/16);
Eq_1..      0 =e= 4*x['1']-3*x['2']                  ;

x.l['1'] = 0;
x.l['2'] = 0;

* x.l['1'] = -3;
* x.l['2'] = -4;

Model hs009 /all/;
Solve hs009 using nlp minimaze obj;

display x.l  ;
display obj.l;
