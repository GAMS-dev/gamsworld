* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Positive Variable x[i]  ;
         Variable   obj ;

Equation  constr1 , Def_obj ;

constr1.. x['i1'] + x['i2'] + 2*x['i3'] =l= 3;

Def_obj.. obj=e= 9 - 8*    x['i1']  - 6*    x['i2']  -  4*x['i3']  +
                     2*sqr(x['i1']) + 2*sqr(x['i2']) +sqr(x['i3']) +

                         2*x['i1']*x['i2']                         +
                         2*x['i1']*x['i3']                          ;
x.l['i1'] = 0.5;
x.l['i2'] = 0.5;
x.l['i3'] = 0.5;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 4/3;
*x.l['i2'] = 7/9;
*x.l['i3'] = 4/9;

Model hs035  /all/;

Solve hs035 using nlp minimize obj;

display   x.l        ;

obj.l  =  obj.l -1/9 ;
display obj.l        ;
