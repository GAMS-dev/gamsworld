* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

Variable    x[i] , obj ;
Equation constr1 , constr2 , Def_obj ;

constr1..      x['i1']  + x['i2'] =l= 2 ;
constr2.. -sqr(x['i1']) + x['i2'] =g= 0 ;

Def_obj..  obj =e= sqr(x['i1']-2)+sqr(x['i2']-1);

x.l['i1'] = 2;
x.l['i2'] = 2;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 1;
*x.l['i2'] = 1;

Model hs022  /all/;

Solve hs022 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l - 1.0   ;
display obj.l         ;
