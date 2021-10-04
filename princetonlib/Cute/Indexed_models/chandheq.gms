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

*   Source: problem 4 in
*   J.J. More',
*   "A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-RN-V-V

$Set N 100
Set i /i1*i%N%/;
Alias(i,j);
parameter c   ; c    = 1          ;
parameter x[i]; x[i] = ord(i)/%n% ;
parameter w[i]; w[i] = 1/%n%      ;

Positive Variable     h[i] ;
Variable              f    ;

Equation Eq_1[i], Def_obj ;
Eq_1[i].. sum{j, (-0.5*c*w[j]*x[i]/(x[i]+x[j])*h[i]*h[j])}+h[i] =e= 1.0;
Def_obj.. f=e=0;

h.l[i] = 1.0 ;
Model chandheq /all/;

Solve chandheq using nlp minimize f;

display h.l;
display f.l;
