* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Eq_5,Def_obj;

Eq_1..       x['1']  + x['2']        =g= 1;
Eq_2..   sqr(x['1']) + sqr(x['2'])   =g= 1;
Eq_3.. 9*sqr(x['1']) + sqr(x['2'])   =g= 9;
Eq_4..   sqr(x['1']) - x['2']        =g= 0;
Eq_5..   sqr(x['2']) - x['1']        =g= 0;

Def_obj.. Obj =e=sqr(x['1']) + sqr(x['2']);


x.lo[I] = -50;
x.up[I] =  50;
x.l['1'] =  3;
x.l['2'] =  1;

* "optimal solution as starting point ";
*x.l['1'] =  1;
*x.l['2'] =  1;

Model hs023 /all/;
Solve hs023 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =  + 2;
