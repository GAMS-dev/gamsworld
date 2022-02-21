$Set N 6
Set I /i1*i%N%/;

parameter l(i)
/ i1    0 ,i2  -10 ,  i3    0 ,  i4    0 ,
  i5   -1 ,  i6    0 /  ;

parameter u(i)
/ i1  2.0e+4 ,  i2  10     ,  i3  1.0e+7 ,
  i4  20     ,  i5  1      ,  i6  2.0e+8 /  ;

parameter rho ; rho = 0.2;

parameter mu(i)
/ i1  10000     ,  i2      1     ,  i3  2e+6      ,
  i4     10     ,  i5      0.001 , i6  1e+8      /  ;

parameter sigma(i)
/ i1  8000      ,  i2      1     ,  i3  7e+6      ,
  i4     50     ,  i5      0.05  ,  i6  5e+8      /  ;


Variable y(i) , obj ;

Equation constr(i) , Def_obj ;

Def_obj.. obj =E=
      ( sqr(y['i1']) + 2*rho*y['i1']*y['i2'] + sqr(y['i2']) ) / (1-sqr(rho))
      + sum{i$(ord(i) ge 3 ),sqr(y[i])  }  ;

constr(i)..

y['i1']/sigma['i2'] + 4000*y['i2']/sigma['i1'] =e= 2000/sigma['i1'] + 0.2/sigma['i2'] ;

y.lo[i] = (l[i] - mu[i])/sigma[i] ;
y.up[i] = (u[i] - mu[i])/sigma[i] ;

y.l['i1'] = 6.0e+3;
y.l['i2'] = 1.5;
y.l['i3'] = 4.0e+6;
y.l['i4'] = 2;
y.l['i5'] = 3.0e-3;
y.l['i6'] = 5.0e+7;

y.l[i] = (y.l[i] - mu[i])/sigma[i];

Model hs54 /all/;

Solve hs54 using nlp minimazing obj;

display y.l;

obj.l = -exp(-obj.l/2);

display obj.l ;
