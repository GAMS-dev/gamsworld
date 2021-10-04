* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Variable  x[i] , obj ;
Equation  constr1 , Def_obj ;

Def_obj..  obj =e= -x['i1']*x['i2']*x['i3'];

constr1.. sqr(x['i1']) + 2*sqr(x['i2']) + 4*sqr(x['i3']) =l= 48;

x.l['i1'] =  1;
x.l['i2'] =  1;
x.l['i3'] =  1;

*printf "optimal solution as starting point \n";
*x.l['i1'] =  4;
*x.l['i2'] =  2.82843;
*x.l['i3'] =  2;

Model hs029  /all/;

Solve hs029 using nlp minimize obj;

display   x.l             ;
obj.l  = obj.l+16*sqrt(2) ;
display obj.l             ;
