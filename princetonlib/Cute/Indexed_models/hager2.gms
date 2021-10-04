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

*   Source: problem P2 in
*   W.W. Hager,
*   "Multiplier Methods for Nonlinear Optimal Control",
*   SIAM J. on Numercal Analysis 27(4): 1061-1080, 1990.

*   SIF input: Ph. Toint, March 1991.

*   classification OLR2-AN-V-V

$Set N  5000
Set I  / i0*i%N% / ;
Set Right(i) / i1*i%N% / ;

Parameter  h ; h = 1/%n% ;

Variable x(i) , u(i) , f ;

Equation cons1(i) , Def_obj ;


cons1(i).. (%n%-0.25)*x[i] - (%n%+0.25)*x[i-1] - u[i] =e= 0;

Def_obj.. f =e= sum{i$Right(i), h*(sqr(x[i-1]) +
                                   x[i-1]*x[i] +
                                   sqr(x[i]))/6 } +
                sum{i$Right(i), h*sqr(u[i])/4 } ;

x.l[i] = 0.0 ;
u.l[i] = 0.0 ;
x.fx['i0'] = 1.0 ;

Model hager2 /all/ ;

Solve hager2 using nlp minimazing f ;

Display x.l ;
Display f.l ;
