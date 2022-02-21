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

*   Source:
*   H. Zhang and X. Wang,
*   "Optimal sensor placement",
*   SIAM Review, vol. 35, p. 641, 1993.

*   SIF input: Nick Gould, June 1994

*   classification SUR2-AN-V-0

$SET N 500
Set I /i1*i%N%/;
Alias(i,j);

Variable theta[i] , f ;
Equation Def_obj ;

Def_obj..
f =e= -sum{(i,j),(sqr(sin(theta[i])*sin(theta[j])*sin(theta[i]-theta[j]) ) ) };

theta.lo[i] =  0.0;

theta.l[i] = ord(i)/%N%;

Model sensors  /all/ ;

Solve sensors using nlp minimazing f ;

display f.l; display theta.l;
