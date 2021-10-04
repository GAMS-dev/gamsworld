* Cute AMPL model  (translation to GAMS)
*
$Set N 5
Set i /i1*i%N%/;

Variable x[i]  ,  obj ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         Def_obj  ;

constr1..    x['i1'] + sqr(x['i2']) + power(x['i3'],3) =e= 3;
constr2..    x['i2'] - sqr(x['i3']) +       x['i4']    =e= 1;
constr3..    x['i1']*x['i5']                           =e= 1;

Def_obj..    obj=e=      sqr(x['i1']-x['i2'])    +
                      power((x['i2']-x['i3']),3) +
                      power((x['i3']-x['i4']),4) +
                      power((x['i4']-x['i5']),4)   ;

x.l['i1']  = 2;
x.l['i2']  = sqrt(2);
x.l['i3']  = -1;
x.l['i4']  = 2-sqrt(2);
x.l['i5']  = 1/2;

Model hs047  /all/;

Solve hs047 using nlp minimize obj;

display   x.l               ;

display obj.l               ;
