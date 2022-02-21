* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr1 , constr2 , Def_obj ;

constr1.. x['i1'] *     x['i2']  =g= 1 ;
constr2.. x['i1'] + sqr(x['i2']) =g= 0 ;

Def_obj.. obj =e= 100*sqr(x['i2'] - sqr(x['i1'])) + sqr(1 - x['i1']);


x.up['i1'] = 1/2;


x.l['i1'] = -2.0 ;
x.l['i2'] = -1.0 ;


*printf "optimal solution as starting point \n";
*x.l['i1'] = 0.5;
*x.l['i2'] = 2;

Model hs015  /all/;

Solve hs015 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l - 306.5 ;
display obj.l         ;
