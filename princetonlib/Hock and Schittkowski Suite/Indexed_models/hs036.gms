* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Positive Variable  x[I];
Variable            Obj;

Equation Eq_1,Def_obj;

Eq_1..     x['1'] + 2*x['2'] + 2*x['3'] =l= 72;
Def_obj..  Obj=e=-x['1']*x['2']*x['3']        ;


x.up['1'] = 20;
x.up['2'] = 11;
x.up['3'] = 42;

x.l['1'] = 10;
x.l['2'] = 10;
x.l['3'] = 10;

* "optimal solution as starting point ";
*x.l['1'] = 20;
*x.l['2'] = 11;
*x.l['3'] = 15;

Model hs036 /all/;
Solve hs036 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =-3300
