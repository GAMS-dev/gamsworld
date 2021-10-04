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

*   Source: Problem 32 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley#80 (with different N and M)
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N 100
$Set M 200

Set i /i1*i%N%/;

Set left(i) /i1*i%N%/;

Alias(i,k);

Variable x[i], f   ;

Equation Def_obj;
Def_obj.. f=e=

sum{i$left(i),

 sqr(   sum{k$(ord(k)<ord(i)),(-2*x[k]/%M%)}     +
        x[i]*(1-2/%M%)                           +
        sum{k$(ord(k)>ord(i)),(-2*x[k]/%M%)}-1)} +
        sum{i,sqr(sum{k,(-2*x[k]/%M%)}-1)}        ;

x.l[i]  =   1.0;

Model arglina /all/;

Solve arglina using nlp minimize f;

display x.l;
display f.l;
