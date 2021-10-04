* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Positive Variable  x[i] ;
Variable            obj ;

Equation constr1 , Def_obj ;

constr1..  power((1-x['i1']),3)  =g=  x['i2']      ;
Def_obj..  obj =e= sqr(x['i1'] - 2) + sqr(x['i2']) ;

x.l['i1'] = -2;
x.l['i2'] = -2;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 1;
*x.l['i2'] = 0;


Model hs013  /all/;

Solve hs013 using nlp minimize obj;

display   x.l     ;

obj.l = obj.l - 1 ;
display obj.l     ;
