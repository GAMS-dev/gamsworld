* Cute AMPL model  (translation to GAMS)
*

***************************************************************
* I can't get the initial objective function value(s) to match
* those reported in Hock-Schittkowski.  I don't see why.
***************************************************************

$Set N 19
Set i /i1*i%N%/;
$Set M  4
Set j /j1*j%M%/;

parameter c(i) / i1 .1 , i2  1 ,  i3  2 ,  i4  3 ,  i5  4 ,
                 i6  5 , i7  6 ,  i8  7 ,  i9  8 , i10  9 ,
                i11 10 ,i12 11 , i13 12 , i14 13 , i15 14 ,
                i16 15 ,i17 16 , i18 17 , i19 18 / ;

parameter y_obs(i) / i1 0.00189,  i2 0.1038, i3 0.268   , i4 0.506  , i5 0.577,
                     i6 0.604  ,  i7 0.725 , i8 0.898   , i9 0.947  ,i10 0.845,
                    i11 0.702  , i12 0.528 , i13 0.385  ,i14 0.257  ,i15 0.159,
                    i16 0.0869 , i17 0.0453, i18 0.01509,i19 0.00189  /

parameter u(j) / j1 100 ,j2  100 ,j3    1 ,j4  100  /;

Variable x[j]  , b , y_cal(i) ,  obj ;

Equation constr1    ,
         constr2    ,
         constr3(i) ,
         Def_obj     ;



constr1..     x['j3'] + (1-x['j3'])*x['j4'] =g= 0;
constr2..     b =e= x['j3'] + (1-x['j3'])*x['j4'];

constr3(i)..  y_cal(i) =e=
    (1 + 1/(12*x['j2'])) *
    ( exp(log(x['j3']*b) * x['j2']   ) *sqrt(x['j2']/6.2832) *
      exp(log(c[i]/7.685)*(x['j2']-1)) * exp(x['j2'] - b*c[i]*x['j2']/7.658)) +

    (1 + 1/(12*x['j1'])) *
    ((1-x['j3'])*exp(log(b/x['j4'])    * x['j1']   ) * sqrt(x['j1']/6.2832) *

                                                1 *  (1         -
*                exp(log(c[i]/7.658)*(x['j1']-1)) * exp(x['j1'] -
        b*c[i]*x['j1']/(7.658*x['j4']))     )
;


Def_obj..  obj=e= sum{i, sqr(y_cal[i] - y_obs[i])};


x.lo[j]  = 0.00001 ;
x.up[j]  = u(j)    ;

x.l['j1'] = 2    ;
x.l['j2'] = 4    ;
x.l['j3'] = 0.04 ;
x.l['j4'] = 2    ;
b.lo  = 0.00001 ;

*printf "optimal solution as starting point \n";
*x.l['j1'] = 12.27695   ;
*x.l['j2'] =  4.631788  ;
*x.l['j3'] =  0.3128625 ;
*x.l['j4'] =  2.029290  ;

Model hs070  /all/;

Solve hs070 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l - 0.007498464 ;
display obj.l               ;
