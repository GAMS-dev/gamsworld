* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Eq_2,Def_obj;

Def_obj.. Obj=e=-1;

Eq_1.. sqr(x['1']) + sqr(x['2'])  =e= 25;
Eq_2..     x['1']*x['2']          =e=  9;

x.l['1'] = 2;
x.l['2'] = 1;

* x.l['1'] = 4.60159;
* x.l['2'] = 1.95584;

Model hs008 /all/;
Solve hs008 using nlp minimaze obj;

display x.l  ;
display obj.l;
