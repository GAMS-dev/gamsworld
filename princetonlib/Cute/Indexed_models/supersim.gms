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

*   classification LLR2-AN-2-2

Positive Variable x ;
         Variable y , f ;

Equation cons1 , cons2 ,  Def_obj ;

Def_obj.. f =e= x ;
cons1.. x+2*y-2 =e= 0;
cons2.. 2*x+y-2 =e= 0;

Model supersim /all/ ;

Solve supersim  using nlp minimazing f ;

display f.l;
display x.l;
display y.l;
