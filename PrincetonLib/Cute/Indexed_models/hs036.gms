* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Positive Variable x[i]  ;
         Variable   obj ;

Equation  constr1 , Def_obj ;

constr1..  x['i1'] + 2*x['i2'] + 2*x['i3'] =l= 72  ;

Def_obj..  obj =e= -x['i1']*x['i2']*x['i3']        ;

x.up['i1'] = 20;
x.up['i2'] = 11;
x.up['i3'] = 42;

x.l['i1'] = 10;
x.l['i2'] = 10;
x.l['i3'] = 10;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 20;
*x.l['i2'] = 11;
*x.l['i3'] = 15;


Model hs036  /all/;

Solve hs036 using nlp minimize obj;

display   x.l          ;

obj.l  =  obj.l + 3300 ;
display obj.l          ;
