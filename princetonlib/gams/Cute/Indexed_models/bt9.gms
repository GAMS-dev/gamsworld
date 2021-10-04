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

*   Source: problem 9 in
*   P.T. Boggs and J.W. Tolle,
*   "A strategy for global convergence in a sequential
*    quadratic programming algorithm",
*   SINUM 26(3), pp. 600-623, 1989.


*   The problem as stated in the paper seems to contain a typo.
*   In order to make the problem bounded below and the second constraint
*   feasible at the proposed solution, the sign of x2 in the second constraint
*   has been set to - instead of +.

*   The problem is not convex.

*   SIF input: Ph. Toint, June 1993.

*   classification LOR2-AN-4-2

$Set N 4
Set i /i1*i%N%/;

Variable     x[i],f   ;

Equation Eq_1,Eq_2,def_obj;
Eq_1..       x['i2']-power(x['i1'],3)-sqr(x['i3']) =e= 0;
Eq_2..      -x['i2']+  sqr(x['i1'])  -sqr(x['i4']) =e= 0;
Def_obj..    f=e=-x['i1'] ;

x.l[i]=2;

Model bt9 /all/;

Solve bt9 using nlp minimize f;

display x.l;
display f.l;
