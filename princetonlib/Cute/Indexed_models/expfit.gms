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
*   "LANCELOT, a Fortran package for large-scale nonlinear optimization",
*   Springer Verlag, FUNDP, 1992.

*   SIF input: Ph. Toint, Jan 1991.

*   classification SUR2-AN-2-0

$Set P 10
Set i /i1*i%P%/;

parameter h ;  h:=  0.25;

Variable alpha, beta , f ;

Equation Def_obj ;

Def_obj..  f=e= sum{i,sqr(alpha*exp(ord(i)*h*beta)-ord(i)*h)};

Model expfit /all/;

Solve expfit using nlp minimize f;

display f.l;
display alpha.l, beta.l;
