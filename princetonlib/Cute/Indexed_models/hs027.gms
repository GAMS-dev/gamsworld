* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation  constr1 , Def_obj ;

constr1..  x['i1'] + sqr(x['i3']) =e= -1;
Def_obj..  obj =e= sqr(x['i1'] - 1)/100 + sqr(x['i2'] - sqr(x['i1'])) ;

x.l['i1'] = 2;
x.l['i2'] = 2;
x.l['i3'] = 2;

*printf "optimal solution as starting point \n";
*x.l['i1'] = -1;
*x.l['i2'] =  1;
*x.l['i3'] =  0;

Model hs027  /all/;

Solve hs027 using nlp minimize obj;

display   x.l         ;
obj.l = obj.l  - 0.04 ;
display obj.l         ;
