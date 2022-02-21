* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Variable  x[I], Obj;

Equation Eq_1,Def_obj;

Eq_1..      sqr(x['1'])+2*sqr(x['2'])+4*sqr(x['3']) =l= 48;
Def_obj..   Obj      =e=             -x['1']*x['2']*x['3'];

x.l['1'] =   1;
x.l['2'] =   1;
x.l['3'] =   1;

* "optimal solution as starting point ";
*x.l['1'] =   4;
*x.l['2'] =   2.82843;
*x.l['3'] =   2;

Model hs029 /all/;
Solve hs029 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =  - 16*sqrt(2) ;
parameter a; a =   -16*sqrt(2);
display a;
