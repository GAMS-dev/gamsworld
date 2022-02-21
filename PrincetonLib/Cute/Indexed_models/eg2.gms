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

*   classification OUR2-AN-1000-0

$Set N 1000
Set i /i1*i%N%/;
$Set M  999
Set Left(i) /i1*i%M%/;

Variable x(i) , f ;

Equation Def_obj ;

Def_obj.. f=e=sum{i$left(i),sin(x['i1']+sqr(x[i])-1.0)}+0.5*sin(sqr(x['i%N%']));

Model eg2 /all/;

Solve eg2 using nlp minimize f;

display x.l;
display f.l;
