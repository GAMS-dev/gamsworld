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
*   "The LANCELOT User's Manual",
*   Dept of Maths, FUNDP, 1991.

*   SIF input: Ph. Toint, Jan 1991.

*   classification SLR2-AN-2-1

$Set N 5
Set i /i1*i%N%/;

parameter c / 0.85 / ;
parameter x(i) / i1 0.1  , i2 0.3 , i3 0.5   , i4 0.7   , i5 0.9 / ;
parameter y(i) / i1 0.25 , i2 0.3 , i3 0.625 , i4 0.701 , i5 1.0 / ;

Positive Variable a ;
         Variable b , f ;

Equation cons1 , Def_obj ;

cons1..   a+b =e= c ;

Def_obj.. f   =e= 0.5*sum{i, sqr(a*x[i]+b-y[i]) };

Model lsqfit /all/;

Solve lsqfit using nlp minimize f ;

display a.l ;
display b.l ;
display f.l ;
