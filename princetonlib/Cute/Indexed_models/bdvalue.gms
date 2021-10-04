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

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-MN-V-V

$Set ndp 5002
$Set M 5001

Set i /i1*i%NDP%/;
Set in(i) /i2*i%M%/;

parameter h; h=1/(%ndp%-1);


Variable     x[i],f   ;

Equation Eq[i], Def_obj;

Eq[i]$in(i)..  -x[i-1]+2*x[i]-x[i+1]+0.5*sqr(h)*power((x[i]+ord(i)*h+1),3)=e=0;

Def_obj.. f=e= 0;

x.l[i] = ((ord(i)-1)*h)*((ord(i)-1)*h-1);

x.fx['i1']    =    0.0  ;
x.fx['i%ndp%']  =    0.0  ;

Model bdvalue /all/;

Solve bdvalue using nlp minimize f;

display x.l;
display f.l;
