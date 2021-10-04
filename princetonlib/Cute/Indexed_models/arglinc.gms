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
*
*   Source: Problem 34 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley#101 (with different N and M)
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N 10
Set i /i1*i%N%/;
Set inside_i(i) /i2*i%N%/; inside_i('i%N%')=no;
$Set M 19
Set j /j1*j%M%/;
Set inside_j(j) /j2*j%M%/;

Variable  x[i], f   ;

Equation Def_obj;

Def_obj..
f=e=2+sum{j$inside_j(j),sqr(sum{i$inside_i(i),(x[i]*ord(i)*(ord(j)-1))}-1.0)};

x.l[i]  =    1.0    ;
Model arglinc /all/;

Solve arglinc  using nlp minimize f;

display x.l;
display f.l;
