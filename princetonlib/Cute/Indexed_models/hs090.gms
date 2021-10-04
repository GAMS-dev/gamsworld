* Cute AMPL model  (translation to GAMS)
*
$Set N 4
Set i /i1*i%N%/;
Set right(i) /i2*i%N%/;
Alias(i,l);
$Set M 30
Set j    /j1*j%M%/;
Set k(j) /j2*j%M%/;
$offdigit ;

parameter mu(j) /j1   8.6033358901938017e-01 ,  j2   3.4256184594817283e+00 ,
                 j3   6.4372981791719468e+00 ,  j4   9.5293344053619631e+00 ,
                 j5   1.2645287223856643e+01 ,  j6   1.5771284874815882e+01 ,
                 j7   1.8902409956860023e+01 ,  j8   2.2036496727938566e+01 ,
                 j9   2.5172446326646664e+01 , j10   2.8309642854452012e+01 ,
                j11   3.1447714637546234e+01 , j12   3.4586424215288922e+01 ,
                j13   3.7725612827776501e+01 , j14   4.0865170330488070e+01 ,
                j15   4.4005017920830845e+01 , j16   4.7145097736761031e+01 ,
                j17   5.0285366337773652e+01 , j18   5.3425790477394663e+01 ,
                j19   5.6566344279821521e+01 , j20   5.9707007305335459e+01 ,
                j21   6.2847763194454451e+01 , j22   6.5988598698490392e+01 ,
                j23   6.9129502973895256e+01 , j24   7.2270467060308960e+01 ,
                j25   7.5411483488848148e+01 , j26   7.8552545984242926e+01 ,
                j27   8.1693649235601683e+01 , j28   8.4834788718042290e+01 ,
                j29   8.7975960552493220e+01 , j30   9.1117161394464745e+01  /;

parameter A(j); A(j) = 2*sin(mu(j))/(mu(j) + sin(mu(j))*cos(mu(j)));

Variable x(i)  , rho(j) ,  obj ;

Equation constr1    ,
         constr2(j) ,
         Def_obj    ;

constr1..
sum {j,sum{k$(ord(k) gt ord(j)),
   sqr(mu[j])*sqr(mu[k])*A[j]*A[k]*rho[j]*rho[k] *
  (sin(mu[j]+mu[k])/(mu[j]+mu[k])
    +
   (sin(mu[j]-mu[k])/(mu[j]-mu[k]))

   )
}}+
   sum{j,power(mu[j],4)*sqr(A[j])*sqr(rho[j])*(sin(2*mu[j])/(2*mu[j])+1)/2}-
   sum{j,sqr(mu[j])*A[j]*rho[j]*
                     (2*sin(mu[j])/power(mu[j],3)-2*cos(mu[j])/sqr(mu[j]))}+
        2/15=l= 0.0001;

constr2(j)..  rho(j) =e=-( exp(-sqr(mu[j])*sum{i,sqr(x[i])})                  +

                     sum{i$right(i), (2*power((-1),(ord(i)-1))*
                                        exp(-sqr(mu[j])*
                                        sum{l$(ord(l) ge ord(i)),sqr(x[l])}))}+

                                        power((-1),%n%)
                          )  /sqr(mu[j]);

Def_obj.. obj =e= sum{i,sqr(x[i])};

x.l(i) = 0.5 * power((-1),(ord(i)+1));

*printf "optimal solution as starting point \n";
*let x[1] := 1.074319;
*let x[1] := -0.4566137;


Model hs090  /all/;

Solve hs090 using nlp minimize obj;

display   x.l               ;

obj.l =  obj.l  - 1.36265681;
display obj.l               ;
