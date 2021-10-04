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

*   Source:  Problem 17 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17- 41, 1981.

*   See alos Buckley#32 (p. 77).

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-MN-5-0

$Set N 5
Set j /j1*j%N%/;

$Set M 33
Set i /i1*i%M%/;

Parameter t[i] ; t[i] = 10*(ord(i)-1) ;

Parameter y[i] / i1   0.844 , i2   0.908 , i3   0.932 , i4   0.936 ,
                 i5   0.925 , i6   0.908 , i7   0.881 , i8   0.850 ,
                 i9   0.818 ,i10   0.784 ,i11   0.751 ,i12   0.718 ,
                i13   0.685 ,i14   0.658 ,i15   0.628 ,i16   0.603 ,
                i17   0.580 ,i18   0.558 ,i19   0.538 ,i20   0.522 ,
                i21   0.506 ,i22   0.490 ,i23   0.478 ,i24   0.467 ,
                i25   0.457 ,i26   0.448 ,i27   0.438 ,i28   0.431 ,
                i29   0.424 ,i30   0.420 ,i31   0.414 ,i32   0.411 ,
                i33   0.406 / ;

Parameter x_init[j] /j1 0.5 , j2 1.5 , j3 -1 , j4  0.01 , j5 0.02 /;

Variable x[j] , f ;

Equation Def_obj ;

Def_obj..  f =e= sum{i,sqr(y[i] - x['j1']                    -
                                  x['j2']*exp(-t[i]*x['j4']) -
                                  x['j3']*exp(-t[i]*x['j5'])   )} ;

x.l[j] = x_init[j];

Model osbornea /all/ ;

Solve osbornea using nlp minimazing f ;

display f.l;
display x.l;
