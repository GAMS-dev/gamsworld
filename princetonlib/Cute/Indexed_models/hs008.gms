* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation constr1, constr2, Def_obj ;

constr1.. sqr(x['i1']) + sqr(x['i2']) =e= 25;
constr2..     x['i1']  *     x['i2']  =e= 9;
Def_obj.. obj =e= -1 ;

x.l['i1'] =  2;
x.l['i2'] =  1;

*printf "optimal solution as starting point \n";
*let x[1] := 4.60159;
*let x[2] := 1.95584;


Model hs008  /all/;

Solve hs008 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l + 1     ;
display obj.l         ;
