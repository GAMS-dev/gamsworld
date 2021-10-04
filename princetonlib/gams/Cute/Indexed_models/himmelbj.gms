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

*   Source: problem 6 in
*   D.H. Himmelblau,
*   "Applied nonlinear programming",
*   McGraw-Hill, New-York, 1972.

*   SIF input: Ph. Toint, March 1991.

*   classification OLR2-MY-45-14

$Set NSETS 7
Set I  / i1*i%NSETS% / ;
$Set NS 18
Set J  / j1*j%NS% / ;

Alias(j,k);

Set Left(i,j) ;
Left('i1',j) =Yes$(ord(j) le    4 ) ;
Left('i2',j) =Yes$(ord(j) le   13 ) ;
Left('i3',j) =Yes$(ord(j) le   18 ) ;
Left('i4',j) =Yes$(ord(j) le    3 ) ;
Left('i5',j) =Yes$(ord(j) le    3 ) ;
Left('i6',j) =Yes$(ord(j) le    2 ) ;
Left('i7',j) =Yes$(ord(j) le    2 ) ;

Parameter NEQ ; NEQ = 6 ;

Variable x[i,j] , f ;

Equation  cons1 ,  cons2 ,  cons3 ,  cons4 ,  cons5 ,
          cons6 ,  cons7 ,  cons8 ,  cons9 , cons10 ,
         cons11 , cons12 , cons13 , cons14 , cons15 , cons16 , Def_obj ;

 cons1.. X['i1','j1'] + X['i2','j1'] + X['i3','j1'] +
         X['i3','j15'] + X['i3','j16']*2 + X['i3','j17']*3 +
         X['i3','j18']*4 =e= 0.652981;
 cons2.. X['i1','j2'] + X['i2','j2'] + X['i2','j10'] +
         X['i2','j11'] + X['i2','j12'] + X['i3','j2'] +
         X['i3','j10'] + X['i3','j11'] + X['i3','j12']  +
         X['i6','j2'] + X['i7','j2'] =e=  0.281941;
 cons3.. X['i1','j3'] + X['i2','j3'] + X['i3','j3'] =e=  3.705233;
 cons4.. X['i1','j4'] + X['i2','j4'] + X['i2','j9'] +
         X['i2','j11'] - X['i2','j12'] + X['i3','j4'] +
         X['i3','j9'] + X['i3','j11'] - X['i3','j12'] +
         X['i4','j1'] - X['i4','j3'] + X['i5','j1'] -
         X['i5','j3'] - X['i6','j2'] - X['i7','j2'] =e= 47.00022;
 cons5.. X['i1','j4'] + X['i2','j5'] + X['i2','j9'] +
         X['i2','j10'] + X['i2','j11'] + X['i2','j12'] +
         X['i3','j5'] + X['i3','j9'] + X['i3','j10'] +
         X['i3','j11'] + X['i3','j12'] =e=  47.02972;
 cons6.. X['i2','j6'] + X['i3','j6'] =e=  0.08005;
 cons7.. X['i2','j7'] + X['i3','j7'] =e=  0.08813;
 cons8.. X['i2','j8'] + X['i3','j8'] =e=  0.04829;
 cons9.. X['i3','j14'] + X['i3','j15'] + X['i3','j16'] +
         X['i3','j17'] + X['i3','j18'] =e=  0.0022725;
cons10.. X['i2','j4'] - X['i2','j5'] - X['i2','j6'] +
         X['i2','j7'] + X['i2','j8'] + X['i2','j10'] -
         2*X['i2','j12'] - X['i2','j13']  - 4*X['i3','j14'] -
         3*X['i3','j15'] - 2*X['i3','j16'] - X['i3','j17'] =e=  0;
cons11..  -X['i3','j15'] - 2*X['i3','j16'] - 3*X['i3','j17'] -
         4*X['i3','j18'] + X['i4','j1'] + X['i4','j2'] +
         X['i4','j3'] =e= 0;
cons12.. X['i5','j1'] + X['i5','j2'] + X['i5','j3'] =e=  0;
cons13.. -4*X['i4','j3'] + X['i6','j1'] + X['i6','j2'] =e=  0;
cons14.. -4*X['i5','j3'] + X['i7','j1'] + X['i7','j2'] =e=  0;
cons15.. X['i2','j13'] =e=  0.0155;
cons16.. X['i3','j13'] =e=  0.0211275;

Def_obj..  f =e=
         X['i1','j2']* ( -7.69  ) +  X['i1','j3']* (-11.52   )+
         X['i1','j4']* (-36.60  ) +  X['i2','j1']* (-10.94   )+
         X['i2','j8']* (  2.5966) +  X['i2','j9']* (-39.39   )+
        X['i2','j10']* (-21.35  ) + X['i2','j11']* (-32.84   )+
        X['i2','j12']* (  6.26  ) +  X['i3','j1']* ( 10.45   )+
         X['i3','j3']* ( -0.5   ) +  X['i3','j7']* (  2.2435 )+
         X['i3','j9']* (-39.39  ) + X['i3','j10']* (-21.49   )+
        X['i3','j11']* (-32.84  ) + X['i3','j12']* (  6.12   )+
        X['i3','j15']* ( -1.9028) + X['i3','j16']* ( -2.8889 )+
        X['i3','j17']* ( -3.3622) + X['i3','j18']* ( -7.4854 )+
         X['i4','j1']* (-15.639 ) +  X['i4','j3']* ( 21.81   )+
         X['i5','j1']* (-16.79  ) +  X['i5','j3']* ( 18.9779 )+
         X['i6','j2']* ( 11.959 ) +  X['i7','j2']* ( 12.899  )+
  sum{i, sum{j$Left(i,j), (X[i,j]*log(X[i,j])) }} -
  sum{j$(ord(j) le  4),  X['i1',j]*log(sum{k$(ord(j) le  4), X['i1',k]})} -
  sum{j$(ord(j) le 13),  X['i2',j]*log(sum{k$(ord(j) le 13), X['i2',k]})} -
  sum{j$(ord(j) le 18),  X['i3',j]*log(sum{k$(ord(j) le 18), X['i3',k]})} -
  sum{j$(ord(j) le  3),  X['i4',j]*log(sum{k$(ord(j) le  3), X['i4',k]})} -
  sum{j$(ord(j) le  3),  X['i5',j]*log(sum{k$(ord(j) le  3), X['i5',k]})} -
  sum{j$(ord(j) le  2),  X['i6',j]*log(sum{k$(ord(j) le  2), X['i6',k]})} -
  sum{j$(ord(j) le  2),  X['i7',j]*log(sum{k$(ord(j) le  2), X['i7',k]})} ;

X.lo[i,j]  = 1.0e-22  ;
X.up[i,j]  = 20      ;
X.l[i,j]  = 1.0  ;
Model himmelbj /all/ ;

Solve himmelbj  using nlp minimazing f ;



Display x.l ;
Display f.l ;
