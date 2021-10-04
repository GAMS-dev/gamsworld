***************************************************************
* I can't get the initial objective function value(s) to match
* those reported in Hock-Schittkowski.  I don't see why.
***************************************************************
$Set N 4
Set I /i1*i%N%/;
$Set M 19
Set J /j1*j%M%/;

Parameter c(j) /j1     .1 ,  j2      1 ,  j3      2 ,  j4      3 ,  j5      4 ,
                j6      5 ,  j7      6 ,  j8      7 ,  j9      8 , j10      9 ,
               j11     10 , j12     11 , j13     12 , j14     13 , j15     14 ,
               j16     15 , j17     16 , j18     17 , j19     18 /;
Parameter u(i) /i1  100 ,i2  100 ,i3    1 ,i4  100 /;
Parameter y_obs(j)
           / j1    0.00189 ,  j2    0.1038  ,  j3    0.268   ,  j4    0.506   ,
             j5    0.577   ,  j6    0.604   ,  j7    0.725   ,  j8    0.898   ,
             j9    0.947   , j10    0.845   , j11    0.702   , j12    0.528   ,
            j13    0.385   , j14    0.257   , j15    0.159   , j16    0.0869  ,
            j17    0.0453  , j18    0.01509 , j19    0.00189 /;

Variable x(i) , b , y_cal(j) , obj ;

Equation Eq_1 , Eq_2(j) , Eq_3 , Def_obj ;

Eq_1..      b =e= x['i3'] + (1-x['i3'])*x['i4'];
Eq_2(j)..   y_cal(j) =e=
    (1 + 1/(12*x['i2']))
    *
    (
     x['i3']* EXP(LOG(b)*x['i2']) *SQRT(x['i2']/6.2832) * EXP(LOG(c[j]/7.685)*(x['i2']-1))
     * exp(x['i2'] - b*c[j]*x['i2']/7.658)
    )
    +
    (1 + 1/(12*x['i1']))
    *
    (
     (1-x['i3'])*EXP(LOG(b/x['i4'])*x['i1'])*SQRT(x['i1']/6.2832) *
EXP(LOG(c[j]/7.658)*(x['i1']- 1))
     * exp(x['i1'] - b*c[j]*x['i1']/(7.658*x['i4']))
    );

Eq_3.. x['i3'] + (1-x['i3'])*x['i4'] =g= 0;

Def_obj.. obj=e=sum{j, sqr(y_cal[j] - y_obs[j])};

x.lo(i) = 0.00001 ;
x.up(i) = u(i) ;
b.lo=0.0000001;

x.l['i1'] = 2    ;
x.l['i2'] = 4    ;
x.l['i3'] = 0.04 ;
x.l['i4'] = 2    ;

*"optimal solution as starting point \n";
* x.l['i1'] = 12.27695  ;
* x.l['i2'] = 4.631788  ;
* x.l['i3'] = 0.3128625 ;
* x.l['i4'] = 2.029290  ;

Model hs070 /all/;

Solve hs070 using nlp minimazing obj ;

obj.l = obj.l - 0.007498464;
display x.l;
display obj.l;
