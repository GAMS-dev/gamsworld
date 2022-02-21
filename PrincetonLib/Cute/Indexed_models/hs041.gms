* Cute AMPL model  (translation to GAMS)
*
$Set N 4
Set i /i1*i%N%/;

Positive Variable x[i]  ;
         Variable   obj ;

Equation constr1 ,
         Def_obj  ;

constr1..  x['i1'] + 2*x['i2'] + 2*x['i3'] - x['i4'] =e= 0 ;
Def_obj..  obj =e= 2 - x['i1'] * x['i2'] * x['i3']         ;

x.up['i1'] = 1;
x.up['i2'] = 1;
x.up['i3'] = 1;
x.up['i4'] = 2;

x.l['i1'] = 2;
x.l['i2'] = 2;
x.l['i3'] = 2;
x.l['i4'] = 2;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 2/3;
*x.l['i2'] = 1/3;
*x.l['i3'] = 1/3;
*x.l['i4'] = 2;


Model hs041  /all/;

Solve hs041 using nlp minimize obj;

display   x.l          ;

obj.l = obj.l - 52/27  ;
display obj.l          ;
