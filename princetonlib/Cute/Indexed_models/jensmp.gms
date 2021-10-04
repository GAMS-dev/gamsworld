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

*   Source:  Problem 6 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-2-0

$Set N 10
Set i /i1*i%N%/;

Variable x1 , x2 , f ;
Equation Def_obj ;

Def_obj.. f =e= sum{i, sqr(2+2*ord(i)-(exp(ord(i)*x1)+exp(ord(i)*x2))) };

x1.l = 0.3 ;
x2.l = 0.4 ;

Model jensmp /all/;

Solve jensmp using nlp minimize f ;

display x1.l ;
display x2.l ;

display f.l  ;
