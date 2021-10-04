* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr1 , constr2 , Def_obj ;

constr1..  sqr(x['i1'])/4 + sqr(x['i2']) =l=  1     ;
constr2..      x['i1']    - 2 * x['i2']  =e= -1     ;
Def_obj..  obj   =e=  sqr(x['i1']-2)+sqr(x['i2']-1) ;

x.l['i1'] = 2;
x.l['i2'] = 2;

*printf "optimal solution as starting point \n";
*x.l['i1']= 0.822876;
*x.l['i2']= 0.911438;

Model hs014  /all/;

Solve hs014 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l - 9 + 2.875*sqrt(7) ;
display obj.l         ;
