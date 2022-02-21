* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation  constr1, Def_obj    ;

constr1..   -3*sqr(x['i1']) + 2*x['i1']*x['i2'] - sqr(x['i2']) =g= -1;
Def_obj..   obj =e= x['i1'] - x['i2'] ;

x.l['i1'] = -10;
x.l['i2'] =  10;


Model hs010  /all/;

Solve hs010 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l + 1     ;
display obj.l         ;
