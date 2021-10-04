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

*   Source:  problem 1 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   SIF input: Ph. Toint, Dec 1989, Corrected July 1993.

*   classification SUR2-AN-2-0
$Set N 2
Set I / i1*i%N% / ;

Parameter xinit[i] / i1 -1.2 , i2 1.0 / ;

Variable x[i] , obj ;

Equation Def_obj ;

Def_obj..  obj =e= sqr(x['i2']-sqr(x['i1']))/0.01+sqr(x['i1']-1) ;

x.l[i] = xinit[i] ;

Model rosenbr /all/ ;

Solve rosenbr using nlp minimazing obj ;

display obj.l; display x.l;
