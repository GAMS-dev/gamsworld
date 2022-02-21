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
*   Ph.L. Toint,
*   "Some numerical results using a sparse matrix updating formula in
*   unconstrained optimization",
*   Mathematics of Computation, vol. 32(114), pp. 839-852, 1978.

*   See also Buckley#84
*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-V-0

$Set N 1000
$Set M 999
$Set K 500
Set i /i1*i%N%/;
Set left(i) /i1*i500/;
Set inside(i) /i2*i%M%/;
Variable     x[i], f ;

Equation  Def_obj    ;
Def_obj.. f=e=
     exp(log(0.00000001+abs(-2*x['i2']+1+(3-2*x['i1'])*x['i1'])) *(7/3))
 +   sum {i$inside(i), exp(log(abs(1-x[i-1]-2*x[i+1]+(3-2*x[i])*x[i])) *(7/3))}
 +   exp(log(abs(-x['i%M%']+1 +(3-2*x['i%N%'])*x['i%N%'])) *(7/3))
 +   sum {i$left(i), exp(log(abs(x[i]+x[i+%K%]))*(7/3)) }
;

x.l[i]  =    1.0         ;
x.lo['i1']  =    0.01    ;

Model broydn7d /all/;

Solve broydn7d using dnlp minimize f;

display x.l;
display f.l;
