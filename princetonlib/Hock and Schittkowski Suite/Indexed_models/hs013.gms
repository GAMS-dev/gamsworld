* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Positive variable  x[I];
Variable            Obj;

Equation Eq_1,Def_obj;

Eq_1..    (1-x['1'])*(1-x['1'])*(1-x['1']) =g= x['2'];
Def_obj.. Obj=e=sqr(x['1']-2)+sqr(x['2']);

x.l['1'] = -2;
x.l['2'] = -2;

* x.l['1'] = 1;
* x.l['2'] = 0;

Model hs013 /all/;
Solve hs013 using nlp minimaze obj;

display x.l  ;
display obj.l;
*optimal obj =  1
