* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation Def_obj ;

Def_obj..

 obj =e= sin(x['i1']+x['i2'])+sqr(x['i1']-x['i2'])-1.5*x['i1']+2.5*x['i2']+1;

x.lo['i1'] = -1.5 ;    x.up['i1'] = 4 ;
x.lo['i2'] = -3.0 ;    x.up['i2'] = 3 ;

x.l['i1'] = 0 ;
x.l['i2'] = 0 ;

Model hs005  /all/;

Solve hs005 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l + sqrt(3)/2 + 3.14159/3;
display obj.l         ;
