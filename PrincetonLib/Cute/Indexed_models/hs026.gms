* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation  constr1 , Def_obj ;

constr1.. (1 + sqr(x['i2']))*x['i1'] + power(x['i3'],4) =e= 3 ;

Def_obj.. obj=e=sqr(x['i1'] - x['i2']) + ( power((x['i2'] -x['i3']),4) );

x.l['i1'] = -2.6;
x.l['i2'] =  2;
x.l['i3'] =  2;

*printf "optimal solution as starting point \n";
*x.l['i1'] =  1;
*x.l['i2'] =  1;
*x.l['i3'] =  1;

Model hs026  /all/;

Solve hs026 using nlp minimize obj;

display   x.l         ;

display obj.l         ;
