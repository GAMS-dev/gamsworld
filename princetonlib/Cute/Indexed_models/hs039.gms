* Cute AMPL model  (translation to GAMS)
*

$Set N 4
Set i /i1*i%N%/;

Variable x[i] , obj   ;

Equation constr1 ,
         constr2 ,
         Def_obj  ;

constr1..  x['i2'] - power(x['i1'],3) - sqr(x['i3']) =e= 0;
constr2..  sqr(x['i1']) - x['i2'] - sqr(x['i4'])     =e= 0;
Def_obj..  obj =e= -x['i1'] ;

x.l['i1'] = 2;
x.l['i2'] = 2;
x.l['i3'] = 2;
x.l['i4'] = 2;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 1;
*x.l['i2'] = 1;
*x.l['i3'] = 0;
*x.l['i4'] = 0;


Model hs039  /all/;

Solve hs039 using nlp minimize obj;

display   x.l          ;
obj.l = obj.l + 1      ;
display obj.l          ;
