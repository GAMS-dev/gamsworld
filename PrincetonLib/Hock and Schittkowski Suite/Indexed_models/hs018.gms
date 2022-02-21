* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Eq_2,Def_obj;
Def_obj..     Obj =e=sqr(x['1'])/100 + sqr(x['2']);

Eq_1..   x['1']*x['2'] =g= 25;
Eq_2..   sqr(x['1']) + sqr(x['2']) =g= 25;



x.lo['1'] =   2  ;
x.up['1'] =  50  ;
x.lo['2'] =   0  ;
x.up['2'] =  50  ;


x.l['1'] =  2;
x.l['2'] =  2;

*"optimal solution as starting point \n";
*x.l['1'] =  15.8114;
*x.l['2'] =   1.58114;

Model hs018 /all/;
Solve hs018 using nlp minimaze obj;

display x.l  ;
display obj.l;

*optimal obj =  5  ;
