* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source: problem 23 in
*   D.H. Himmelblau,
*   "Applied nonlinear programming",
*   McGraw-Hill, New-York, 1972.

*   SIF input: Ph. Toint, March 1991.
*              minor correction by Ph. Shott, Jan 1995.

*   classification OLR2-MN-100-12

$Set NT  20
Set j  / j1*j%NT% / ;
$Set M  5
Set i  / i1*i%M% / ;


Parameter N ; N = 100 ;

Table ba(j,i)
                       i1       i2      i3      i4      i5
               j1       1       0.84    0.96    1       0.92
               j2       0.95    0.83    0.95    1       0.94
               j3       1       0.85    0.95    1       0.92
               j4       1       0.84    0.96    1       0.95
               j5       1       0.85    0.96    1       0.95
               j6       0.85    0.81    0.90    1       0.98
               j7       0.90    0.81    0.92    1       0.98
               j8       0.85    0.82    0.91    1       1
               j9       0.8     0.8     0.92    1       1
               j10      1       0.86    0.95    0.96    0.90
               j11      1       1       0.99    0.91    0.95
               j12      1       0.98    0.98    0.92    0.96
               j13      1       1       0.99    0.91    0.91
               j14      1       0.88    0.98    0.92    0.98
               j15      1       0.87    0.97    0.98    0.99
               j16      1       0.88    0.98    0.93    0.99
               j17      1       0.85    0.95    1       1
               j18      0.95    0.84    0.92    1       1
               j19      1       0.85    0.93    1       1
               j20      1       0.85    0.92    1       1        ;

Parameter a(i,j) ;         a[i,j] = ba[j,i]

Parameter  b(j)  / j1    30 ,  j2     0 ,  j3     0 ,  j4    0  ,
                   j5     0 ,  j6   100 ,  j7     0 ,  j8    0  ,
                   j9     0 , j10    40 , j11     0 , j12    0  ,
                  j13     0 , j14    50 , j15    70 , j16   35  ,
                  j17     0 , j18     0 , j19     0 , j20   10  /;
Parameter  u(j)  / j1    60 ,  j2    50 ,  j3    50 ,  j4    75 ,
                   j5    40 ,  j6    60 ,  j7    35 ,  j8    30 ,
                   j9    25 , j10   150 , j11    30 , j12    45 ,
                  j13   125 , j14   200 , j15   200 , j16   130 ,
                  j17   100 , j18   100 , j19   100 , j20   150 / ;
Parameter  c(i) / i1 200 , i2 100 , i3 300 , i4 150 , i5 250 /;
Parameter  nw   ; nw = sum{i, c[i] } ;

Variable x[i,j] , f ;
Equation cons1 , cons2 , cons3 , cons4 , cons5 , cons6 , cons7 ,
         cons8(i) , Def_obj ;

cons1..    sum{i, x[i,'j1'] } - b['j1']  =g= 0;
cons2..    sum{i, x[i,'j6'] } - b['j6']  =g= 0;
cons3..    sum{i, x[i,'j10']} - b['j10'] =g= 0;
cons4..    sum{i, x[i,'j14']} - b['j14'] =g= 0;
cons5..    sum{i, x[i,'j15']} - b['j15'] =g= 0;
cons6..    sum{i, x[i,'j16']} - b['j16'] =g= 0;
cons7..    sum{i, x[i,'j20']} - b['j20'] =g= 0;
cons8(i).. sum{j, x[i,j] }    - c[i]     =l= 0;

Def_obj..  f =e= sum{j, (u[j]*(-1.0+prod{i,exp(log(a[i,j]) *x[i,j] )} )) };

x.up[i,j] = nw ;

Model himmelbi /all/ ;

Solve himmelbi  using nlp minimazing f ;

Display x.l ;
Display f.l ;
