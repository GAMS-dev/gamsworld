$Set N 5
Set I /i1*i%N%/;
Parameter l(i) /i1  -2.3 ,i2  -2.3 ,i3  -3.2 ,i4  -3.2 ,i5  -3.2 /;
Parameter u(i) /i1  2.3 ,i2  2.3 ,i3  3.2 ,i4  3.2 ,i5  3.2 /;

Variable x(i) , obj ;
Equation constr1 , constr2 , constr3 , Def_obj ;


constr1.. sum{i,sqr(x[i]) }                         =e= 10 ;
constr2.. x['i2']*x['i3'] - 5*x['i4']*x['i5']       =e=  0 ;
constr3.. power(x['i1'],3) + power(x['i2'],3)       =e= -1 ;
Def_obj.. obj =e= exp(prod{i,x[i]})     -
                  0.5*sqr(power(x['i1'],3) +
                          power(x['i2'],3) +1 )    ;
x.lo[i] = l(i);
x.up[i] = u(i);

x.l['i1'] = -2;
x.l['i2'] =  2;
x.l['i3'] =  2;
x.l['i4'] = -1;
x.l['i5'] = -1;

* "optimal solution as starting point ";
*x.l['i1'] = -1.717142;
*x.l['i2'] =  1.159571;
*x.l['i3'] =  1.827248;
*x.l['i4'] = -0.7636474;
*x.l['i5'] = -0.7636390;

Model hs081 /all/;

Solve hs081 using nlp minimazing obj ;

obj.l = obj.l - 0.0539498478;
display x.l;
display obj.l;
