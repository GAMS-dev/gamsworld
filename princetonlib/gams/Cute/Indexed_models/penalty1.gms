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

*   Source:  Problem 23 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley *181 (p. 79).

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N 1000

Set I              /i1*i%N%/;
Alias(i,j);
Parameter a ; a = 0.00001 ;

Variable X[i] , f  ;

Equation Def_obj ;

Def_obj..  f =e=sum{i, a*sqr(x[i]-1)} + sqr((sum{j,sqr(x[j])}  - 1/4) )
;

X.l[i] = ord(i);

X.lo[i] =  0.0 ;
X.up[i] =  1.5 ;

Model penalty1  /all/;

Solve penalty1 using nlp minimazing f ;
display f.l;
display x.l;
