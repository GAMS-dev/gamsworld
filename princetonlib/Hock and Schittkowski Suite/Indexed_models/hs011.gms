
* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Def_obj;

Def_obj.. Obj        =e= sqr(x['1']-5)+sqr(x['2'])-25;
Eq_1..    sqr(x['1'])=l= x['2']                      ;

x.l['1'] = 4.9;
x.l['2'] = 0.1;

* x.l['1'] = 1.23477;
* x.l['2'] = 1.52466;

Model hs011 /all/;
Solve hs011 using nlp minimaze obj;

display x.l  ;
display obj.l;

* obj = 8.498464223;
