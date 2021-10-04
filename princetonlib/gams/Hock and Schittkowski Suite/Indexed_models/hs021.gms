* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Def_obj;

Def_obj.. Obj =e=sqr(x['1'])/100 + sqr(x['2']) - 100;

Eq_1..  10*x['1'] - x['2'] =g= 10;

x.lo['1'] =    2 ;
x.up['1'] =   50 ;
x.lo['2'] =  -50 ;
x.up['2'] =   50 ;

x.l['1'] = -1;
x.l['2'] = -1;

* "optimal solution as starting point \n";
*let x[1] := 2.00265;
*let x[2] := 0;

Model hs021 /all/;
Solve hs021 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =  + 99.96;
