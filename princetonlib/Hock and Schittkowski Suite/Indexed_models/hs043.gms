* Shitkovski AMPL model  (translation to GAMS)

Set I /1*4/;

Variable  x[I],
           Obj;

Equation Eq_1,
         Eq_2,
         Eq_3,
         Def_obj;


Eq_1..  sqr(x['1'])+sqr(x['2'])
       +sqr(x['3'])+sqr(x['4'])
       +x['1']-x['2']+x['3']-x['4'] =l=8;

Eq_2.. sqr(x['1'])+2*sqr(x['2'])+sqr(x['3'])+2*sqr(x['4'])-x['1']-x['4'] =l=10;

Eq_3.. 2*sqr(x['1']) +sqr(x['2'])+sqr(x['3'])+2*x['1']-x['2']-x['4']     =l= 5;

Def_obj..  Obj=e=   sqr(x['1'])+sqr(x['2'])
                 +2*sqr(x['3'])+sqr(x['4'])
                 -5*    x['1']-5*x['2']
                -21*    x['3']+7*x['4'];


x.l['1'] =  0;
x.l['2'] =  0;
x.l['3'] =  0;
x.l['4'] =  0;

* "optimal solution as starting point ";
*x.l['1'] =   0;
*x.l['2'] =   1;
*x.l['3'] =   2;
*x.l['4'] =  -1;

Model hs043 /all/;
Solve hs043 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =   -44
