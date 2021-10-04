* Cute AMPL model  (translation to GAMS)
*
$Set N 5
Set i /i1*i%N%/;

Variable x[i]  ,  obj ;

Equation constr1 ,
         constr2 ,
         Def_obj  ;

constr1..         sum{i$(ord(i) ne card(i)),x[i]} + 3*x['i4'] =e= 7;
constr2..         x['i3'] + 5*x['i5']                         =e= 6;
Def_obj.. obj =e=    sqr(x['i1']-x['i2']) +    sqr(x['i3']-1   )  +
                  power((x['i4']-1),4   ) + power((x['i5']-1),6)   ;

x.l['i1']  = 10;
x.l['i2']  =  7;
x.l['i3']  =  2;
x.l['i4']  = -3;
x.l['i5']  = 0.8;

Model hs049  /all/;

Solve hs049 using nlp minimize obj;

display   x.l               ;

display obj.l               ;
