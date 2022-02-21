* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable x(i) , obj ;

Equation Def_obj  ;

Def_obj..  obj=e=x['i2']+0.00001*sqr(x['i2']-x['i1']);

x.lo['i2'] = 0.0 ;



Model hs003 /all/;

Solve hs003 using nlp minimize obj;

display x.l;

display obj.l;
