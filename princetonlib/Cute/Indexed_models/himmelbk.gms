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

*   Source: from problem 20 in
*   D.H. Himmelblau,
*   "Applied nonlinear programming",
*   McGraw-Hill, New-York, 1972.

*   SIF input: Ph. Toint, March 1991.

*   classification LOR2-MN-24-14

$Set N  24
$Set N1  12
Set I  / i1*i%N% / ;
Alias(i,j);
Set Left(j) / i1*i%N1% / ;

Parameter F ; F=142.22471 ;

Parameter B[i] / i1      44.094 ,  i2      58.12  ,  i3      58.12  ,
                 i4     137.4   ,  i5     120.9   ,  i6     170.9   ,
                 i7      62.501 ,  i8      84.94  ,  i9     133.425 ,
                i10      82.507 , i11      46.07  , i12      60.097 ,
                i13      44.094 , i14      58.12  , i15      58.12  ,
                i16     137.4   , i17     120.9   , i18     170.9   ,
                i19      62.501 , i20      84.94  , i21     133.425 ,
                i22      82.507 , i23      46.07  , i24      60.097 /;

Parameter C[i] / i1     123.7   ,  i2      31.7   ,  i3      45.7   ,
                 i4      14.7   ,  i5      84.7   ,  i6      27.7   ,
                 i7      49.7   ,  i8       7.1   ,  i9       2.1   ,
                i10      17.7   , i11       0.85  , i12       0.64  /;

Parameter D[i] / i1     123.7   ,  i2      31.7   ,  i3      45.7   ,
                 i4      14.7   ,  i5      84.7   ,  i6      27.7   ,
                 i7      49.7   ,  i8       7.1   ,  i9       2.1   ,
                i10      17.7   , i11       0.85  , i12       0.64  /;


Variable x[i] , obj ;

Equation cons1(i) , cons2 , cons3 , Def_obj ;

cons1(i).. sum{j$Left(j)       , x[i+12]*x[j]*40*B[i]/B[j]  } -
           sum{j$(not Left(j)) , x[i]*x[j]*C[i]*B[i+12]/B[j]}    =e= 0 ;
cons2.. sum{i        ,  x[i] }                        =e= 1.0   ;
cons3.. sum{j$Left(j), (x[j]/D[j]+x[j+12]*F/B[j+12])} =e= 1.671 ;

Def_obj..
obj =e=0.0693    * x['i1']  + 0.0577 * x['i2']  + 0.05 * x['i3']  +
          0.2    * x['i4']  + 0.26   * x['i5']  + 0.55 * x['i6']  +
          0.06   * x['i7']  + 0.1    * x['i8']  + 0.12 * x['i9']  +
          0.18   * x['i10'] + 0.1    * x['i11'] + 0.09 * x['i12'] +
          0.0693 * x['i13'] + 0.0577 * x['i14'] + 0.05 * x['i15'] +
          0.2    * x['i16'] + 0.26   * x['i17'] + 0.55 * x['i18'] +
          0.06   * x['i19'] + 0.1    * x['i20'] + 0.12 * x['i21'] +
          0.18   * x['i22'] + 0.1    * x['i23'] + 0.09 * x['i24']  ;

x.lo[i] = 0.0 ;
x.l[i] = 0.04 ;

Model himmelbk /all/ ;

Solve himmelbk using nlp minimazing obj ;

display obj.l ;
display x.l ;
