* Shitkovski AMPL model  (translation to GAMS)

Set I /1*5/;

Variable  x[I], Obj;

Equation Eq_1,Eq_2,Eq_3,Def_obj;

Eq_1.. x['1'] + sqr(x['2']) + power(x['3'],3) =e= 3;
Eq_2.. x['2'] - sqr(x['3']) + x['4']          =e= 1;
Eq_3.. x['1']*x['5']                          =e= 1;

Def_obj..
Obj=e= sqr(x['1']-x['2'])
      +power((x['2'] -x['3']),3)
      +sqr(sqr(x['3']-x['4']))
      +sqr(sqr(x['4']-x['5']));


x.l['1'] = 2        ;
x.l['2'] = sqrt(2)  ;
x.l['3'] = -1       ;
x.l['4'] = 2-sqrt(2);
x.l['5'] = 1/2      ;

Model hs047 /all/;
Solve hs047 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =  0
