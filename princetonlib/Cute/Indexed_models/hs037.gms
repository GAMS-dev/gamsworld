* Cute AMPL model  (translation to GAMS)
*

$Set N 3
Set i /i1*i%N%/;

Positive Variable x[i]  ;
         Variable obj   ;
Equation  constr1 ,constr2 , Def_obj ;

constr1..  x['i1'] + 2*x['i2'] + 2*x['i3'] =l= 72;
constr2..  x['i1'] + 2*x['i2'] + 2*x['i3'] =g= 0;
Def_obj..  obj =e= -x['i1']*x['i2']*x['i3'];

x.up[i]   = 42;

x.l['i1'] = 10;
x.l['i2'] = 10;
x.l['i3'] = 10;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 24;
*x.l['i2'] = 12;
*x.l['i3'] = 12;

Model hs037  /all/;

Solve hs037 using nlp minimize obj;

display   x.l          ;

obj.l  =  obj.l + 3456 ;
display obj.l          ;
