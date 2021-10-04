* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable x(i) , obj ;

Equation Def_obj  ;

Def_obj.. obj =e= power((x['i1']+1),3)/3 + x['i2'];

x.lo['i1'] := 1.0 ;
x.lo['i2'] := 0.0 ;

x.l['i1'] := 1.125;
x.l['i2'] := 0.125;

Model hs004 /all/;

Solve hs004 using nlp minimize obj;

display x.l;

obj.l=obj.l-8/3;

display obj.l;
