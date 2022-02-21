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
*   A.Conn, N. Gould, Ph. Toint
*   "LANCELOT, a Fortran package for large-scale nonlinear optimization"
*   Springer Verlag, 1992

*   SIF input: Ph. Toint, Dec 1991.

*   classification LLR2-AN-2-1

Positive Variable x     ;

Variable          y , f ;

Equation Eq_1 , Def_obj ;

Eq_1..    x+2*y-2.0 =e= 0   ;

Def_obj.. f         =e= x+1 ;

Model extrasim /all/;

Solve extrasim  using nlp minimize f;

display x.l; display y.l; display f.l;
