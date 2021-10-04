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

*   Source: Simple convex QP in OSL manual



*  Minimize   x1 + 2x5 - x8 + 1/2(x1**2 + x2**2 + x3**2 + x4**2
*                            + x5**2 + x6**2 + x7**2 + x8**2)
*   Subject to:
*   2.5 <= x1
*     0 <= x2 <= 4.1
*     0 <= x3
*     0 <= x4
*   0.5 <= x5 <= 4.0
*     0 <= x6
*     0 <= x7
*     0 <= x8 <= 4.3


*   SIF input: A.R. Conn, December 1992

*   classification QBR2-AN-8-0

$Set N 8
Set i /i1*i%N%/;

Variable x[i] , f ;
Equation Def_obj ;

Def_obj..  f =e= x['i1']+2*x['i5']-x['i8']+0.5*sum{i,sqr(x[i]) };

x.lo['i1'] = 2.5 ;
x.lo['i2'] = 0.0 ;
x.lo['i3'] = 0.0 ;
x.lo['i4'] = 0.0 ;
x.lo['i5'] = 0.5 ;
x.lo['i6'] = 0.0 ;
x.lo['i7'] = 0.0 ;
x.lo['i8'] = 0.0 ;

x.up['i2'] = 4.1 ;
x.up['i5'] = 4.0 ;
x.up['i8'] = 4.3 ;

x.l[i] = 0.5;

Model oslbqp /all/ ;

Solve oslbqp using nlp minimazing f ;

display f.l; display x.l;
