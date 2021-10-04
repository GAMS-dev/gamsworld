$Set N 5
Set I /i1*i%N%/;

Variable x(i) , obj ;
Equation constr1 , constr2 , Def_obj ;

constr1.. sqr(x['i1'])*x['i4'] + sin(x['i4']-x['i5']) =e= 2*sqrt(2);
constr2.. x['i2'] + power(x['i3'],4)*sqr(x['i4']) =e= 8 + sqrt(2);
Def_obj.. obj=e=sqr(x['i1']-1) + sqr(x['i1'] - x['i2']) +
                sqr(x['i3']-1) + power((x['i4']-1),4) + power((x['i5']- 1),6) ;

x.l['i1'] = 2;
x.l['i2'] = 2;
x.l['i3'] = 2;
x.l['i4'] = 2;
x.l['i5'] = 2;

*"optimal solution as starting point ";
*x.l['i1'] = 1.166172;
*x.l['i2'] = 1.182111;
*x.l['i3'] = 1.380257;
*x.l['i4'] = 1.506036;
*x.l['i5'] = 0.6109203;

Model hs077 /all/;

Solve hs077 using nlp minimazing obj ;

obj.l = obj.l - 0.24150513;
display x.l;
display obj.l;
