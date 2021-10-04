* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Variable  x[I], Obj;

Equation Eq_1,Def_obj;

Eq_1..      sqr(x['1']) + sqr(x['2']) =l= 1;
Def_obj..   Obj      =e=sqr(x['1']) + sqr(x['2']) + sqr(x['3']);

x.lo['1'] =     1;    x.up['1'] =   10;
x.lo['2'] =   -10;    x.up['2'] =   10;
x.lo['3'] =   -10;    x.up['3'] =   10;

x.l['1'] =   1;
x.l['2'] =   1;
x.l['3'] =   1;

*"optimal solution as starting point ";
*x.l['1'] =   1;
*x.l['2'] =   0;
*x.l['3'] =   0;

Model hs030 /all/;
Solve hs030 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =    1          ;
