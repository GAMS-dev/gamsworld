$Set N 30
Set I /i1*i%N%/;
Alias(i,k);
$Set M 5
Set J /j1*j%M%/;
Alias(J,L);
$offdigit;
Parameter mu(i);
 mu['i1'] =  8.6033358901938017e-01 ;
 mu['i2'] =  3.4256184594817283e+00 ;
 mu['i3'] =  6.4372981791719468e+00 ;
 mu['i4'] =  9.5293344053619631e+00 ;
 mu['i5'] =  1.2645287223856643e+01 ;
 mu['i6'] =  1.5771284874815882e+01 ;
 mu['i7'] =  1.8902409956860023e+01 ;
 mu['i8'] =  2.2036496727938566e+01 ;
 mu['i9'] =  2.5172446326646664e+01 ;
mu['i10'] =  2.8309642854452012e+01 ;
mu['i11'] =  3.1447714637546234e+01 ;
mu['i12'] =  3.4586424215288922e+01 ;
mu['i13'] =  3.7725612827776501e+01 ;
mu['i14'] =  4.0865170330488070e+01 ;
mu['i15'] =  4.4005017920830845e+01 ;
mu['i16'] =  4.7145097736761031e+01 ;
mu['i17'] =  5.0285366337773652e+01 ;
mu['i18'] =  5.3425790477394663e+01 ;
mu['i19'] =  5.6566344279821521e+01 ;
mu['i20'] =  5.9707007305335459e+01 ;
mu['i21'] =  6.2847763194454451e+01 ;
mu['i22'] =  6.5988598698490392e+01 ;
mu['i23'] =  6.9129502973895256e+01 ;
mu['i24'] =  7.2270467060308960e+01 ;
mu['i25'] =  7.5411483488848148e+01 ;
mu['i26'] =  7.8552545984242926e+01 ;
mu['i27'] =  8.1693649235601683e+01 ;
mu['i28'] =  8.4834788718042290e+01 ;
mu['i29'] =  8.7975960552493220e+01 ;
mu['i30'] =  9.1117161394464745e+01 ;

Parameter A(i) ;  A(i) = 2*sin(mu[i])/(mu[i] + sin(mu[i])*cos(mu[i]));
Variable X(j) ,rho(i), obj ;
Equation  Eq_1(i) , constr1 , def_obj ;


Eq_1(i).. rho(i) =e=   -(exp(-sqr(mu[i]) * sum{j, sqr(x[j]   )})+

              sum{j$(ord(j) ge 2 ),(2*(power((-1),(ord(j)-1)))*exp(-sqr(mu[i])
           *  sum{l$(ord(l) ge ord(j)),sqr(x[l])} ))}

                        + power((-1),%M%) )/sqr(mu[i]);


constr1..
     sum{i,
     sum{k$(ord(k) gt ord(i)),
         (sqr(mu[i]) * sqr(mu[k]) * A[i] * A[k] * rho[i] * rho[k] *
         (sin(mu[i]+mu[k])/(mu[i]+mu[k]) + sin(mu[i]-mu[k])/(mu[i]-mu[k])))}}

     + sum{i,( power(mu[i],4) * sqr(A[i]) * sqr(rho[i]) *
                (sin(2*mu[i])/(2*mu[i]) + 1)/2 )}

     - sum{i,( sqr(mu[i]) * A[i] * rho[i] *
                (2*sin(mu[i])/power(mu[i],3) - 2*cos(mu[i])/sqr(mu[i])))}

     +  2/15 =l= 0.0001;


x.l['j1']  = 0.5 ;
x.l['j2']  =-0.5 ;
x.l['j3']  = 0.5 ;
x.l['j4']  =-0.5 ;
x.l['j5']  = 0.5 ;

Def_obj.. obj =e= sum{j, sqr(x[j]) } ;

* "optimal solution as starting point ";
*x.fx['j1'] =  1.074319  ;
*x.fx['j1'] = -0.4566137 ;

Model hs091 /all/ ;

Solve hs091 using nlp minimazing obj ;

obj.l = obj.l - 1.36265681 ;

display obj.l;
