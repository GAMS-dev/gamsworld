$Set N 7
Set I /i1*i%N%/;

parameter a; a = arctan(sqrt(1/4.2)/sqrt(1-(1/4.2)) );
parameter b; b = arctan(sqrt(5/7.2)/sqrt(1-(5/7.2)) );
parameter c; c = arctan(sqrt(4/7  )/sqrt(1-(4/7  )) );
parameter d; d = arctan(sqrt(2/7  )/sqrt(1-(2/7  )) );

Positive Variable x(i)  ;
Variable   obj ;
Equation constr1,constr2,constr3,constr4,Def_obj ;

constr1.. x['i1'] - 4.2*sqr(sin(x['i4'])) =e= 0;
constr2.. x['i2'] - 4.2*sqr(sin(x['i5'])) =e= 0;
constr3.. x['i3'] - 4.2*sqr(sin(x['i6'])) =e= 0;
constr4.. x['i1'] + 2*x['i2'] + 2*x['i3'] - 7.2*sqr(sin(x['i7'])) =e= 0;

Def_obj.. obj =e= -x['i1']*x['i2']*x['i3']  ;


x.l['i1'] = 1;
x.l['i2'] = 1;
x.l['i3'] = 1;
x.l['i4'] = a;
x.l['i5'] = a;
x.l['i6'] = a;
x.l['i7'] = b;

* x[1] = 2.4;
* x[2] = 1.2;
* x[3] = 1.2;
* x[4] = c;
* x[5] = d;
* x[6] = d;
* x[7] = 3.14159/2;


Model hs56 /all/;

Solve hs56 using nlp minimazing obj;

display x.l;

display obj.l ;
