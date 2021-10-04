* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr1 , Def_obj ;

constr1..     10*x['i1'] - x['i2'] =g= 10 ;
Def_obj..     obj =e= sqr(x['i1'])/100 + sqr(x['i2']) - 100 ;

x.lo['i1'] =   2.0 ; x.up['i1'] = 50.0 ;
x.lo['i2'] = -50.0 ; x.up['i2'] = 50.0 ;

x.l['i1'] = -1;
x.l['i2'] = -1;



Model hs021  /all/;

Solve hs021 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l + 99.96 ;
display obj.l         ;
