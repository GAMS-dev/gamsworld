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
*   G. Li,
*   "The secant/finite difference algorithm for solving sparse
*   nonlinear systems of equations",
*   SIAM Journal on Optimization, (to appear), 1990.

*   SIF input: Ph. Toint, Aug 1990.

*   classification SUR2-AN-V-0

$Set N  10000
Set I  / i1*i%N% / ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..
 f =e=( sum{i, (4*sqr(-x['i1']+sqr(x[i]))) } + sum{i,sqr(x[i]-1.0)})/1000 ;

x.l[i] = 4.0 ;

Model liarwnd /all/ ;

Solve liarwnd  using nlp minimazing f ;
f.l= f.l*1000;
Display x.l ;
Display f.l ;
