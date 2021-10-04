* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;

Positive Variable  x[I];
Variable            Obj;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..       x['1'] + 2*x['2'] + 2*x['3'] =l= 72;
Eq_2..       x['1'] + 2*x['2'] + 2*x['3'] =g=  0;
Def_obj..    Obj=e=-x['1']*x['2']*x['3']        ;


x.l['1'] =  10;
x.l['2'] =  10;
x.l['3'] =  10;

* "optimal solution as starting point ";
*x.l['1'] =  24;
*x.l['2'] =  12;
*x.l['3'] =  12;

Model hs037 /all/;
Solve hs037 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =-3456
