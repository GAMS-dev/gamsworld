* Shitkovski AMPL model  (translation to GAMS)

Set I /1*4/;

Variable  x[I],
           Obj;

Equation
*        Eq_1,
*        Eq_2,
         Def_obj;

         Def_obj.. Obj=e= 100*sqr(x['2']-sqr(x['1']))
                              +sqr(1-x['1'])
                              +90*sqr(x['4']-sqr(x['3']))
                              +sqr(1-x['3'])
                              +10.1*( sqr(x['2']-1)
                              +sqr(x['4']-1))
                              +19.8*(x['2']-1)*(x['4']-1)   ;

*Eq_1..  x['1'] + 2*x['2'] + 2*x['3'] =l= 72;
*Eq_2..  x['1'] + 2*x['2'] + 2*x['3'] =g=  0;


x.lo[I] =-10;
x.up[I] = 10;

x.l['1'] =  -3;
x.l['2'] =  -1;
x.l['3'] =  -3;
x.l['4'] =  -1;

* "optimal solution as starting point ";
*x.l['1'] =  1;
*x.l['2'] =  1;
*x.l['3'] =  1;
*x.l['4'] =  1;

Model hs038 /all/;
Solve hs038 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =    0
