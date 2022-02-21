$Set N 5
Set I /i1*i%N%/;

Variable x(i) , obj ;
Equation constr1 , constr2 , constr3 , Def_obj ;

constr1.. x['i1'] + sqr(x['i2']) + power(x['i3'],3) =e= 2 + 3*sqrt(2);
constr2.. x['i2'] - sqr(x['i3']) + x['i4']  =e= -2 + 2*sqrt(2);
constr3.. x['i1']*x['i5'] =e= 2;
Def_obj.. obj=e= sqr(x['i1']-1) +sqr(x['i1']-x['i2']) +sqr(x['i2']-x['i3']) +
                     power((x['i3']-x['i4']),4) + power((x['i4']-x['i5']),4) ;


x.l['i1'] = 2;
x.l['i2'] = 2;
x.l['i3'] = 2;
x.l['i4'] = 2;
x.l['i5'] = 2;

*"optimal solution as starting point ";
*x.l['i1'] = 1.191127;
*x.l['i2'] = 1.362603;
*x.l['i3'] = 1.472818;
*x.l['i4'] = 1.635017;
*x.l['i5'] = 1.679081;

Model hs079 /all/;

Solve hs079 using nlp minimazing obj ;

obj.l = obj.l - 0.0787768209;
display x.l;
display obj.l;
