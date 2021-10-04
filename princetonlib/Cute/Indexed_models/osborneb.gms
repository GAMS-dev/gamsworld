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

*   Source:  Problem 19 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley*32 (p.78).

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-MN-11-0

$Set N 11
Set j /j1*j%N%/;

$Set M 65
Set i /i1*i%M%/;

Parameter x_init(j) /j1    1.3 ,  j2    0.65,  j3    0.65 , j4    0.7 ,
                     j5    0.6 ,  j6    3   ,  j7    5    , j8    7   ,
                     j9    2   , j10    4.5 , j11    5.5  /;
Parameter t(i) ; t(i) = (ord(i)-1)/10;
Parameter y(i) /  i1   1.366  ,  i2   1.191  ,  i3   1.112  ,  i4   1.013  ,
                  i5   0.991  ,  i6   0.885  ,  i7   0.831  ,  i8   0.847  ,
                  i9   0.786  , i10   0.725  , i11   0.746  , i12   0.679  ,
                 i13   0.608  , i14   0.655  , i15   0.616  , i16   0.606  ,
                 i17   0.602  , i18   0.626  , i19   0.651  , i20   0.724  ,
                 i21   0.649  , i22   0.649  , i23   0.694  , i24   0.644  ,
                 i25   0.624  , i26   0.661  , i27   0.612  , i28   0.558  ,
                 i29   0.533  , i30   0.495  , i31   0.500  , i32   0.423  ,
                 i33   0.395  , i34   0.375  , i35   0.372  , i36   0.391  ,
                 i37   0.396  , i38   0.405  , i39   0.428  , i40   0.429  ,
                 i41   0.523  , i42   0.562  , i43   0.607  , i44   0.653  ,
                 i45   0.672  , i46   0.708  , i47   0.633  , i48   0.668  ,
                 i49   0.645  , i50   0.632  , i51   0.591  , i52   0.559  ,
                 i53   0.597  , i54   0.625  , i55   0.739  , i56   0.710  ,
                 i57   0.729  , i58   0.720  , i59   0.636  , i60   0.581  ,
                 i61   0.428  , i62   0.292  , i63   0.162  , i64   0.098  ,
                 i65   0.054 /;
Variable x(j) , f ;
Equation Def_obj ;

Def_obj..  f =e=sum{i,sqr( y[i]-x['j1']*exp(-t[i]*x['j5'])               -
                                x['j2']*exp(-sqr(t[i]- x['j9'])*x['j6']) -
                                x['j3']*exp(-sqr(t[i]-x['j10'])*x['j7']) -
                                x['j4']*exp(-sqr(t[i]-x['j11'])*x['j8'])  ) };
x.l[j] = x_init[j];

Model osborneb /all/ ;

Solve osborneb using nlp minimazing f ;

display f.l;
display x.l;
