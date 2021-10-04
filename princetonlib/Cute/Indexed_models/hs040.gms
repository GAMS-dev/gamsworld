* Cute AMPL model  (translation to GAMS)
*
$Set N 4
Set i /i1*i%N%/;

Variable x[i] , obj   ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         Def_obj  ;

constr1.. power(x['i1'],3)     + sqr(x['i2']) =e= 1 ;
constr2.. sqr(x['i1'])*x['i4'] -     x['i3']  =e= 0 ;
constr3.. sqr(x['i4'])         -     x['i2']  =e= 0 ;
Def_obj..  obj =e= -x['i1']*x['i2']*x['i3']*x['i4'] ;


x.l['i1'] = 0.8;
x.l['i2'] = 0.8;
x.l['i3'] = 0.8;
x.l['i4'] = 0.8;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0.793701;
*x.l['i2'] = 0.707107;
*x.l['i3'] = 0.529732;
*x.l['i4'] = 0.840896;

Model hs040  /all/;

Solve hs040 using nlp minimize obj;

display   x.l          ;
obj.l = obj.l + 0.25   ;
display obj.l          ;
