* Cute AMPL model  (translation to GAMS)
*
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

*   Source:  Problem 15 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-MN-4-0

$Set N  4
Set i /i1*i%N%/;
$Set M 14
Set j /j1*j%M%/;


parameter x_init(i) / i1   0.25   ,  i2   0.39   ,  i3   0.415  , i4   0.39  /;
Parameter      y(j) / j1   0.1957 ,  j2   0.1947 ,  j3   0.1735 , j4   0.1600,
                      j5   0.0844 ,  j6   0.0627 ,  j7   0.0456 , j8   0.0342,
                      j9   0.0323 , j10   0.0235 , j11   0.0246   /;

Parameter      u(j) / j1   4.0000 ,  j2   2.0000 ,  j3   1.0000 , j4   0.5000,
                      j5   0.2500 ,  j6   0.1670 ,  j7   0.1250 , j8   0.1000,
                      j9   0.0833 , j10   0.0714 , j11   0.0625   /;

Variable x(i) , f ;
Equation Def_obj ;
Def_obj..  f =e=sum{j, sqr(y[j]-x['i1']*(sqr(u[j])+u[j]*x['i2']        ) /
                                        (sqr(u[j])+u[j]*x['i3']+x['i4'])   ) };

x.l(i) = x_init(i) ;

Model kowosb /all/;

Solve kowosb  using nlp minimize f ;

display x.l ;

display f.l ;
