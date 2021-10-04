$Set N 5
Set I /i1*i%N%/;

Variable x(i) , obj ;

Equation Constr1, Constr2, Constr3, Def_obj ;

Def_obj..
obj =e= sqr(4*x['i1']-x['i2']) + sqr(x['i2']+x['i3']-2) + sqr(x['i4']-1) + sqr(x['i5']-1)  ;

constr1.. x['i1'] + 3*x['i2'] =e= 0;
constr2.. x['i3'] +   x['i4'] - 2*x['i5'] =e= 0;
constr3.. x['i2'] -   x['i5'] =e= 0;

x.l['i1'] = 2;
x.l['i2'] = 2;
x.l['i3'] = 2;
x.l['i4'] = 2;
x.l['i5'] = 2;

Model hs52 /all/;

Solve hs52 using nlp minimazing obj;

obj.l= obj.l - 1859/349;

display x.l;

display obj.l ;
