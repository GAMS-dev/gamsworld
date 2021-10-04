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
*   M. Lescrenier,
*   "Towards the use of supercomputers for large scale nonlinear
*   partially separable optimization",
*   PhD Thesis, FUNDP (Namur, B), 1989.

*   SIF input: Ph. Toint, May 1990.

*   classification SBR2-AN-V-0

$Set N 10000
Set i/i1*i%N%/;
Set Right(i) i/i2*i%N%/;
*var x{i in 1..N} := 3, >= if (i mod 3 == 0) then 1 else -100, <= 100;

Variable x(i) , f ;

Equation  Def_obj ;

Def_obj.. f =e= sqr(x['i1'] - 1)+ sum{i$Right(i),(4*sqr(x[i]-sqr(x[i-1])))};


x.up[i] =  100 ;
*x.lo[i] =  1.0000   ;
x.l[i]  =    3 ;

Model nonscomp /all/ ;
Solve nonscomp  using nlp minimazing f ;

display x.l;
display f.l;
