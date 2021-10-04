* Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source: Problem 29 in
*   Ph. L. Toint,
*   "Test problems for partially separable optimization and results
*   for the routine PSPMIN",
*   Report 83/4, FUNDP (Namur, B), 1983.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OBR2-AY-V-0

$Set N  50000
$Set N1 49999
Set I  / i1*i%N% / ;
Set Left(I)  / i1*i%N1% / ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj.. f =e= sum{i$Left(I), (-1.5*x[i]+2.5*x[i+1]+1.0 +
                                 sqr(x[i]- x[i+1])       +
                                 sin(x[i]+x[i+1]))         };

x.lo[i] = -1.5 ;
x.up[i] =  3.0 ;

Model mccormck /all/ ;

Solve mccormck  using nlp minimazing f ;

Display x.l ;
Display f.l ;
