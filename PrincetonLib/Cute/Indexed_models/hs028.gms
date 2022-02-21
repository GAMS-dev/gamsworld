* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation  constr1 , Def_obj ;

constr1..  x['i1'] + 2*x['i2'] + 3*x['i3'] =e= 1;
Def_obj..  obj=e=sqr(x['i1'] + x['i2']) + sqr(x['i2'] + x['i3']);


x.l['i1'] = -4;
x.l['i2'] =  1;
x.l['i3'] =  1;



Model hs028  /all/;

Solve hs028 using nlp minimize obj;

display   x.l         ;

display obj.l         ;
