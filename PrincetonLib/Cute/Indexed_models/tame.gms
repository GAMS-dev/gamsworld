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
*   "The LANCELOT User's Manual",
*   Dept of Maths, FUNDP, 1991.

*   SIF input: Ph. Toint, Jan 1991.

*   classification QLR2-AN-2-1

Positive Variable x , y ;
         Variable f ;

Equation Def_obj ;

Def_obj..  f =e= sqr(x-y) ;

x.fx = 0 ;

Model tame /all/ ;
Solve tame  using nlp minimazing f ;

display f.l;
