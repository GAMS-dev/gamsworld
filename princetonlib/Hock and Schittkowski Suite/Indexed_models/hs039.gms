* Shitkovski AMPL model  (translation to GAMS)

Set I /1*4/;

Variable  x[I],
           Obj;

Equation Eq_1,
         Eq_2,
         Def_obj;

Eq_1..       x['2'] - power(x['1'],3) - sqr(x['3']) =e= 0;
Eq_2..       sqr(x['1']) - x['2'] - sqr(x['4'])     =e= 0;
Def_obj..    Obj=e=-x['1'];


x.l['1'] =  2;
x.l['2'] =  2;
x.l['3'] =  2;
x.l['4'] =  2;

*"optimal solution as starting point ";
*x.l['1'] =  1;
*x.l['2'] =  1;
*x.l['3'] =  0;
*x.l['4'] =  0;

Model hs039 /all/;
Solve hs039 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =   -1
