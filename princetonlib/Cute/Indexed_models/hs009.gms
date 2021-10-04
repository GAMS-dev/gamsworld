* Cute AMPL model  (translation to GAMS)
*

$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;

parameter pi ; pi = 3.14159;

Variable x[i]    , obj     ;
Equation constr1 , Def_obj ;

constr1.. 4*x['i1'] - 3*x['i2'] =e= 0;
Def_obj.. obj=e=sin(pi * x['i1']/12) * cos(pi * x['i2']/16);


x.l['i1'] = 0;
x.l['i2'] = 0;

Model hs009  /all/;

Solve hs009 using nlp minimize obj;

display   x.l       ;

obj.l = obj.l + 0.5 ;
display obj.l       ;
