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

*   Source:  problem 30 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Toint#17 and Buckley#78.
*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-AN-V-V

$Set N 10000
$Set M  9999
Set i /i1*i%N%/;


parameter kappa1; kappa1=2.0;
parameter kappa2; kappa2=1.0;

Variable x[i], f    ;

Equation Eq_1, Eq_2(i), Eq_3,  Def_obj ;

Eq_1..      (-2*x['i2']+kappa2+(3-kappa1*x['i1'])*x['i1'])     =e= 0;
Eq_2(i)..   (-x[i-1]-2*x[i+1]+kappa2+(3-kappa1*x[i])*x[i])     =e= 0;
Eq_3..      (-x['i%M%']+kappa2+(3-kappa1*x['i%N%'])*x['i%N%']) =e= 0;
Def_obj..   f=e= 0;

x.l[i]  =    -1.0    ;
Model broydn3d /all/;

Solve broydn3d using nlp minimize f;

display x.l;
display f.l;
