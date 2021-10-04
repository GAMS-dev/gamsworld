* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Variable  x[I], Obj;

Equation Eq_1,Def_obj;

Eq_1..      x['1']*x['2']  =g= 1;
Def_obj..   Obj  =e=9*sqr(x['1']) + sqr(x['2']) + 9*sqr(x['3']);

x.lo['1'] =   -10;    x.up['1'] =   10;
x.lo['2'] =     1;    x.up['2'] =   10;
x.lo['3'] =   -10;    x.up['3'] =    1;

x.l['1'] =   1   ;
x.l['2'] =   1   ;
x.l['3'] =   1   ;

*"optimal solution as starting point ";
*x.l['1'] =   0.57735;
*x.l['2'] =   1.73205;
*x.l['3'] =   0;

Model hs031 /all/;
Solve hs031 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =    6          ;
