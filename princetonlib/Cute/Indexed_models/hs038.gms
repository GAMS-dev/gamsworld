* Cute AMPL model  (translation to GAMS)
*

$Set N 4
Set i /i1*i%N%/;

Variable x[i] , obj   ;

Equation
*        constr1 ,
*        constr2 ,
         Def_obj  ;

Def_obj..  obj =e= 100   *   sqr(x['i2']-sqr(x['i1'])) + sqr(1-x['i1'])   +
                    90   *   sqr(x['i4']-sqr(x['i3'])) + sqr(1-x['i3'])   +
                    10.1 *  (sqr(x['i2']-1)            + sqr(x['i4']-1))  +
                    19.8 *  (x['i2']-1)*(x['i4']-1)                      ;

* constr1.. x['i1'] + 2*x['i2'] + 2*x['i3'] =l= 72;
* constr2.. x['i1'] + 2*x['i2'] + 2*x['i3'] =g=  0;

x.lo['i1'] = -10 ; x.up['i1'] =  10 ;

x.l['i1'] = -3;
x.l['i2'] = -1;
x.l['i3'] = -3;
x.l['i4'] = -1;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 1;
*x.l['i2'] = 1;
*x.l['i3'] = 1;
*x.l['i4'] = 1;

Model hs038  /all/;

Solve hs038 using nlp minimize obj;

display   x.l          ;

display obj.l          ;
