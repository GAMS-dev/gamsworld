* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr , Def_obj ;

constr..  10*(x['i2'] - sqr(x['i1'])) =e= 0;
Def_obj.. obj =e= sqr(1-x['i1']) ;


x.l['i1'] = -1.2 ;
x.l['i2'] =  1.0 ;

*printf "optimal x as starting point \n";
* x.l['i1'] = 1;
* x.l['i2'] = 1;


Model hs006  /all/;

Solve hs006 using nlp minimize obj;

display   x.l         ;

display obj.l         ;
