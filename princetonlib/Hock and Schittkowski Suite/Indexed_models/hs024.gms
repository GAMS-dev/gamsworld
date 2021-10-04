* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Eq_1,Eq_2,Eq_3,Def_obj;

Eq_1..  x['1']/sqrt(3) - x['2'] =g= 0;
Eq_2..  x['1'] + sqrt(3)*x['2'] =g= 0;
Eq_3.. -x['1'] - sqrt(3)*x['2'] =g= -6;

Def_obj.. Obj=e=(sqr(x['1']-3)-9)*power(x['2'],3)/(27*sqrt(3));

x.l['1'] =  1;
x.l['2'] =  1/2;

* "optimal solution as starting point ";
*x.l['1'] =  3;
*x.l['2'] =  1.73205;

Model hs024 /all/;
Solve hs024 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =   -1;
