* Cute AMPL model  (translation to GAMS)
*
$Set N 5
Set i /i1*i%N%/;

Variable x[i]  ,  obj ;

Equation constr1 ,
         constr2 ,
         Def_obj  ;

constr1..  sum{i, x[i] }                 =e=  5 ;
constr2..  x['i3'] - 2*(x['i4']+x['i5']) =e= -3 ;
Def_obj..  obj   =e=   sqr(x['i1'] - 1      )  +
                       sqr(x['i2'] - x['i3'])  +
                       sqr(x['i4'] - x['i5'])   ;
x.l['i1']  =  3 ;
x.l['i2']  =  5 ;
x.l['i3']  = -3 ;
x.l['i4']  =  2 ;
x.l['i5']  = -2 ;


Model hs048  /all/;

Solve hs048 using nlp minimize obj;

display   x.l               ;

display obj.l               ;
