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

*   Source:
*   A.R. Conn, N. Gould and Ph.L. Toint,
*   "LANCELOT, A Fortran Package for Large-Scale Nonlinear Optimization
*   (Release A)"
*   Springer Verlag, 1992.

*   SIF input: N. Gould and Ph. Toint, June 1994.

*   classification OBR2-AY-3-0

Variable x1 , x2 , x3 , obj ;
Equation Def_obj ;

Def_obj.. obj =e= sqr(x1)+power((x2*x3),4)+x1*x3+x2*sin(x1+x3)+x2;

x2.lo = -1.0 ;     x2.up = 1.0 ;
x3.lo =  1.0 ;     x3.up = 2.0 ;

Model eg1  /all/;

Solve eg1 using nlp minimize obj ;

display  x1.l;
display  x2.l;
display  x3.l;
display obj.l;
