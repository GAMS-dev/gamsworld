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

*   Source:  problem 28 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley*17 (p. 75).

*   SIF input: Ph. Toint, Dec 1989 and Nick Gould, Oct 1992.

*   classification SUR2-MN-V-0

$Set N 5000
$Set M 5001
Set i/i0*i%M%/;
Set inside(i) i/i1*i%N%/;

Parameter h    ; h = 1/%M%;
Parameter t(i) ; t(i) = (ord(i)-1)*h ;

Variable x(i) , f ;
Equation Def_obj ;

Def_obj..
f=e=sum{i$inside(i),sqr(2*x[i]-x[i-1]-x[i+1]+h*h*power((x[i]+t[i]+1),3)/2)};

x.l(i) = t[i]*(t[i]-1);
x.fx['i0']   = 0;
x.fx['i%M%'] = 0;

Model morebv /all/ ;

Solve morebv  using nlp minimazing f ;

display x.l;
display f.l;
