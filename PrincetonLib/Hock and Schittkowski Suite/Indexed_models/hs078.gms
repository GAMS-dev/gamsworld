$Set N 5
Set I /i1*i%N%/;

Variable x(i) , obj ;
Equation constr1 , constr2 , constr3 , Def_obj ;

constr1.. sum {i, sqr(x[i])}                  =e= 10 ;
constr2.. x['i2']*x['i3'] - 5*x['i4']*x['i5'] =e=  0 ;
constr3.. power(x['i1'],3) + power(x['i2'],3) =e= -1 ;
Def_obj..  obj=e= prod{i, x[i] };

x.l['i1'] = -2;
x.l['i2'] = 1.5;
x.l['i3'] = 2;
x.l['i4'] = -1;
x.l['i5'] = -1;

* "optimal solution as starting point ";
*x.l['i1'] = -1.717142;
*x.l['i2'] =  1.595708;
*x.l['i3'] =  1.827248;
*x.l['i4'] = -0.7636429;
*x.l['i5'] = -0.7636435;

Model hs078 /all/;

Solve hs078 using nlp minimazing obj ;

obj.l = obj.l + 2.91970041;
display x.l;
display obj.l;
