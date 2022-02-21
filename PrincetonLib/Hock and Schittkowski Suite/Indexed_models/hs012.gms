* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Def_obj;

Def_obj..    Obj=e=sqr(x['1'])/2+sqr(x['2'])-x['1']*x['2']-7*x['1']-7*x['2'];
Eq_1..       25 =g= 4*sqr(x['1']) + sqr(x['2']) ;

x.l['1'] = 0;
x.l['2'] = 0;

* x.l['1'] = 2;
* x.l['2'] = 3;

Model hs012 /all/;
Solve hs012 using nlp minimaze obj;

display x.l  ;
display obj.l;

*optimal obj = -30 
