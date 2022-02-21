* Cute AMPL model  (translation to GAMS)
*
$Set N 5
Set i /i1*i%N%/;

Variable x[i]  ,  obj ;

Equation constr1 ,
         constr2 ,
         Def_obj  ;

constr1..  sqr(x['i1'])*x['i4'] + sin(x['i4']   -  x['i5'])     =e= 1;
constr2..      x['i2']          + power(x['i3'],4)*sqr(x['i4']) =e= 2;
Def_obj..  obj=e=     sqr(x['i1']-x['i2']) +    sqr(x['i3']-1)      +
                   power((x['i4']-1),4)    + power((x['i5']-1),6)    ;

x.l[i]  = sqrt(2)/2 ;
x.l[i]  =      1.75 ;
x.l[i]  =       0.5 ;
x.l[i]  =       2   ;
x.l[i]  =       2   ;

Model hs046  /all/;

Solve hs046 using nlp minimize obj;

display   x.l               ;

display obj.l               ;
