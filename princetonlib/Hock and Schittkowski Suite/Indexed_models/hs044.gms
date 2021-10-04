* Shitkovski AMPL model  (translation to GAMS)

Set I /1*4/;

Positive Variable  x[I];
         Variable   Obj;

Equation Eq_1   ,
         Eq_2   ,
         Eq_3   ,
         Eq_4   ,
         Eq_5   ,
         Eq_6   ,
         Def_obj;

Def_obj..  Obj=e= x['1']-x['2']-x['3']
                 -x['1']*x['3']
                 +x['1']*x['4']
                 +x['2']*x['3']
                 -x['2']*x['4']       ;


Eq_1.. x['1']   + 2*x['2'] =l= 8 ;
Eq_2.. 4*x['1'] +   x['2'] =l= 12;
Eq_3.. 3*x['1'] + 4*x['2'] =l= 12;
Eq_4.. 2*x['3'] +   x['4'] =l= 8 ;
Eq_5.. x['3']   + 2*x['4'] =l= 8 ;
Eq_6.. x['3']   +   x['4'] =l= 5 ;

x.l['1'] =  0;
x.l['2'] =  0;
x.l['3'] =  0;
x.l['4'] =  0;

* "optimal solution as starting point ";
*x.l['1'] =  0;
*x.l['2'] =  3;
*x.l['3'] =  0;
*x.l['4'] =  4;

Model hs044 /all/;
Solve hs044 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =  -15
