* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I], Obj     ;
Equation  Eq_1, Def_obj ;

Def_obj.. Obj=e=x['1']-x['2'];

Eq_1..    -3*sqr(x['1'])+2*x['1']*x['2']-sqr(x['2']) =g= -1;

x.l['1'] =  -10;
x.l['2'] =   10;

* x.l['1'] = 0;
* x.l['2'] = 1;

Model hs010 /all/;
Solve hs010 using nlp minimaze obj;

display x.l  ;
display obj.l;
