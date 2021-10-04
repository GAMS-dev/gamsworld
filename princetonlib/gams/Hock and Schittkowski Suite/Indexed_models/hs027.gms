* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Variable  x[I],Obj;

Equation Eq_1,Def_obj;

Eq_1..    x['1'] + sqr(x['3']) =e= -1;
Def_obj.. Obj =e=  sqr(x['1']-1)/100+sqr(x['2']-sqr(x['1']));

x.l['1'] =  2;
x.l['2'] =  2;
x.l['3'] =  2;

* "optimal solution as starting point ";
*x.l['1'] =  -1;
*x.l['2'] =   1;
*x.l['3'] =   0;

Model hs027 /all/;
Solve hs027 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =  + 0.04;
