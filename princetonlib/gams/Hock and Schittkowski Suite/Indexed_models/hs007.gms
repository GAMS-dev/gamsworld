* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;
Equation  Eq_1,Def_obj;

Eq_1..    sqr(1+ sqr(x['1'])) + sqr(x['2']) =e= 4;
Def_obj.. Obj =e= log(1+ sqr(x['1'])) - x['2']   ;

x.l['1'] = 2;
x.l['2'] = 2;

Model hs007 /all/;
Solve hs007 using nlp minimaze obj;

display x.l  ;
display obj.l;

*optimal obj = sqrt(3);
