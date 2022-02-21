* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..  sqr(x['1'] - 5) + sqr(x['2'] - 5) =g= 100  ;
Eq_2..  sqr(x['2'] - 5) + sqr(x['1'] - 6) =l= 82.81;

Def_obj..
Obj =e=(x['1']-10)*(x['1']-10)*(x['1']-10)+(x['2']-20)*(x['2']-20)*(x['2']-20);

x.lo['1'] =  13  ;
x.up['1'] = 100  ;
x.lo['2'] =   0  ;
x.up['2'] = 100  ;

x.l['1'] =  20.1;
x.l['2'] =   5.84;

* "optimal solution as starting point \n";
*x.l['1'] =  14.095;
*x.l['2'] =   0.84296079;

Model hs019 /all/;
Solve hs019 using nlp minimaze obj;

display x.l  ;
display obj.l;

*optimal obj = -6961.81381  ;
