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

*   Source: problem P1 in
*   W.W. Hager,
*   "Multiplier Methods for Nonlinear Optimal Control",
*   SIAM J. on Numerical Analysis 27(4): 1061-1080, 1990.

*   SIF input: Ph. Toint, March 1991.

*   classification SLR2-AN-V-V

$Set N  5000
Set I  / i0*i%N% / ;
Set Right(i) / i1*i%N% / ;

Variable x(i) , u(i) , f ;

Equation cons1(i) , Def_obj ;

cons1(i)$Right(i)..  (%N%-0.5)*x[i] + (-%N%-0.5)*x[i-1] - u[i] =e= 0;
Def_obj..  f =e= 0.5*sqr(x['i%N%']) + sum{i$Right(i), sqr(u[i])/(2*%N%)};

x.l[i] = 0.0 ;
u.l[i] = 0.0 ;
x.fx['i0'] = 1.0 ;

Model hager1 /all/ ;

Solve hager1 using nlp minimazing f ;

f.l = f.l*1000;

Display x.l ;
Display f.l ;
