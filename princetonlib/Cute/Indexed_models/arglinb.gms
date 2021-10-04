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

*   Source: Problem 33 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley#93 (with different N and M)
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N 10
Set i /i1*i%N%/;
$Set M 20
Set j /j1*j%M%/;

Variable  x[i], f   ;

Equation Def_obj;

Def_obj.. f=e= sum{j,sqr(sum{i,(x[i]*ord(i)*ord(j))}-1.0)};

x.l[i]  =    1.0    ;
Model arglinb /all/;

Solve arglinb  using nlp minimize f;

display x.l;
display f.l;
