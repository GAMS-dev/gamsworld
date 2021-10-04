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

*   Source:  Problem 26 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-AN-V-V

$Set N 100
Set i /i1*i%N%/;
Alias(i,j);
Variable   x[i],      f   ;

Equation Eq_1[i],Def_obj;

Eq_1[i].. ord(i)*[cos(x[i])+sin(x[i])]+ sum{j,cos(x[j])}-(%N%+ord(i)) =e= 0;
Def_obj.. f=e= 0;

*x.l[i]  =   1/ord(i);

Model argtrid /all/;

Solve argtrid using nlp minimize f;

display x.l;
display f.l;
