* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Eq_2,Def_obj;

Def_obj.. Obj =e=sqr(x['1'] - 2) + sqr(x['2'] - 1);

Eq_1..  x['1'] + x['2']      =l= 2;
Eq_2.. -sqr(x['1']) + x['2'] =g= 0;

x.l['1'] = 2;
x.l['2'] = 2;

*printf "optimal solution as starting point \n";
* x.l['1'] = 1;
* x.l['2'] = 1;

Model hs022 /all/;
Solve hs022 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =  + 1;
