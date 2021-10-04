* Cute AMPL model  (translation to GAMS)
*
$Set N 5
Set i /i1*i%N%/;

Variable x[i]  ,  obj ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         Def_obj  ;


constr1..            x['i1'] + 2*x['i2'] + 3*x['i3']     =e=     6      ;
constr2..            x['i2'] + 2*x['i3'] + 3*x['i4']     =e=     6      ;
constr3..            x['i3'] + 2*x['i4'] + 3*x['i5']     =e=     6      ;
Def_obj..  obj =e=     sqr((x['i1']-x['i2'])  ) + sqr(x['i2']-x['i3']) +
                     power((x['i3']-x['i4']),4) + sqr(x['i4']-x['i5'])  ;

x.l['i1'] =  35;
x.l['i2'] = -31;
x.l['i3'] =  11;
x.l['i4'] =   5;
x.l['i5'] =  -5;

Model hs050  /all/;

Solve hs050 using nlp minimize obj;

display   x.l               ;

display obj.l               ;
