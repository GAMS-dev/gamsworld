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

*   Source: Problem 27 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley#79
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N 10
Set i /i1*i%N%/;
Alias(i,j);

Variable       x[i],  f    ;

Equation  Def_obj ;
Def_obj.. f=e=
        sum {j$(ord(j) ne card(j)),sqr(x[j]+sum{i,x[i]}-(%N%+1))} +
        sqr(prod{i,x[i]} - 1);

x.l[i]  =    1/2   ;

Model brownal /all/;

Solve brownal using nlp minimize f;

display x.l;
display f.l;
