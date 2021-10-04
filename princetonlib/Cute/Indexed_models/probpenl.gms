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

*   Source: problem 46 in
*   Ph.L. Toint,
*   "Test problems for partially separable optimization and results
*   for the routine PSPMIN",
*   Report 83/4, Department of Mathematics, FUNDP (Namur, B), 1983.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OBR2-AN-V-0

$Set N 500
$Set N1 499
Set I /i1*i%N%/;
Set Left(I) /i1*i%N1%/;

Variable   x[i] , f ;

Equation  Def_obj ;

Def_obj.. f =e=        sum{i$Left(i),(x[i]+x[i+1])*
                                      0.0001*exp(-x[i]*x[i+1])/%N%} +
               100*sqr(sum{i, x[i]} - 1) ;

x.lo[i] =  0.0 ;
x.up[i] =  5.0 ;
x.l[i]  =  0.5 ;

Model probpenl  /all/;

Solve probpenl using nlp minimazing f ;

display x.l ;
display f.l ;
