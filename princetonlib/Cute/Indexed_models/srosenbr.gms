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

*   Source:  problem 21 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N 10000

Set i / i1*i%N% / ;
Set each_first(I);   each_first(I):=yes$(mod(ord(i),2)<>1);

Variable x[i] ,  f ;

Equation Def_obj ;


Def_obj..
f =e= sum{i$each_first(I),( 100*sqr(x[i]-x[i-1]*x[i-1]) + sqr(x[i-1]-1)) };

x.l[i]$each_first(I) = 1.0 ;
x.l[i] = -1.2 ;

Model srosenbr / all / ;

Solve srosenbr using nlp minimazing f ;
display each_first;
display f.l;
