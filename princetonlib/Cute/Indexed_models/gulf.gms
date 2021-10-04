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

*   Source: problem 11 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley#27
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-MN-3-0

$Set M 99
Set i /i1*i%M%/;
$Set N 3
Set j /j1*j%N%/;
parameter x_init(j) /j1 5, j2 2.5, j3 0.15/;

parameter t(I) ; t(i) = ord(i)/100;
parameter y(I) ; y(I) = 25+ exp(log(-50*log(t[i]))*(2/3));


Variable x(j) ,f ;
Equation Def_obj ;

Def_obj..
f =e=
sum{i,sqr(exp(  exp{log(abs(y[i]-x['j2']))*x['j3'] } /(-x['j1']))-t[i]) };

x.l(j) = x_init(j) ;

Model gulf  /all/;

Solve gulf using dnlp minimize f;


display x.l         ;
display f.l         ;
