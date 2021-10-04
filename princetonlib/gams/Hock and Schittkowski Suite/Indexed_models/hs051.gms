$Set N 5
Set I /i1*i%N%/;

Variable x(i) , obj ;
Equation Constr1, Constr2, Constr3, Def_obj ;

Def_obj.. obj =e=
  sqr(x['i1']-x['i2']) + sqr(x['i2']+x['i3']-2) + sqr(x['i4']-1) + sqr(x['i5']-1)  ;

constr1.. x['i1'] + 3*x['i2']             =e= 4 ;
constr2.. x['i3'] +   x['i4'] - 2*x['i5'] =e= 0 ;
constr3.. x['i2'] -   x['i5']             =e= 0 ;

x.l['i1'] =  2.5 ;
x.l['i2'] =  0.5 ;
x.l['i3'] =  2   ;
x.l['i4'] = -1   ;
x.l['i5'] =  0.5 ;

Model hs51 /all/;

Solve hs51 using nlp minimazing obj;

display x.l;

display obj.l;
