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

*   Source: problem 8 in
*   Ph.L. Toint,
*   "Test problems for partially separable optimization and results
*   for the routine PSPMIN",
*   Report 83/4, Department of Mathematics, FUNDP (Namur, B), 1983.

*   See also Buckley*40 (p.96)

*   SIF input: Ph. Toint, Dec 1989.

*   classification QUR2-AN-V-0

$Set N  10000
Set I  / i1*i%N% / ;
Set Left(i) / i2*i%N% / ;

Parameter  alpha ;   alpha = 2.0 ;
Parameter   beta ;    beta = 1.0 ;
Parameter  gamma ;   gamma = 1.0 ;
Parameter  delta ;   delta = 1.0 ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj.. f =e=0.001* (gamma*sqr(x['i1']*delta-1.0) +
                          sum{i$Left(i),(ord(i)*sqr(-beta*x[i-1]+alpha*x[i])) });

x.l[i] = 1.0 ;

Model tridia /all/ ;

Solve tridia using nlp minimazing f ;

f.l = f.l*1000;

Display x.l ;
Display f.l ;
