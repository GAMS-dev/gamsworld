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

*   Source:  Problem 28 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17- 41, 1981.

*   See also Buckley *29 (p. 73).

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-RN-3-0

$Set N 3
Set i /i1*i%N%/;

$Set M 16
Set j /j1*j%M%/;

parameter x_init(i) / i1 0.02 , i2 4000 , i3 250 /;

parameter y(j) / j1 34780 ,  j2 28610 ,  j3 23650 ,  j4 19630 ,  j5 16370 ,
                 j6 13720 ,  j7 11540 ,  j8  9744 ,  j9  8261 , j10  7030 ,
                j11  6005 , j12  5147 , j13  4427 , j14  3820 , j15  3307 ,
                j16  2872 /;

parameter t(j) ; t(j) = 45+5 * ord(j) ;

Variable x(i) , f ;

Equation Def_obj ;

Def_obj..  f =e= sum{j, sqr(x['i1']*exp(x['i2']/(t[j]+x['i3']))-y[j]) };

x.l(i) = x_init(i) ;

Model meyer3 /all/;

Solve meyer3 using nlp minimize f ;

display x.l ;
display f.l ;
