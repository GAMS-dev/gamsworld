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

*   Source: problem 3 in
*   P.T. Boggs and J.W. Tolle,
*   "A strategy for global convergence in a sequential
*    quadratic programming algorithm",
*   SINUM 26(3), pp. 600-623, 1989.

*   The problem is convex.

*   SIF input: Ph. Toint, June 1993.

*   classification SLR2-AY-5-3

$Set N 5
Set i /i1*i%N%/;

Variable     x[i],f   ;

Equation Eq_1,Eq_2,Eq_3,Def_obj;

Eq_1..    x['i1']+3*x['i2']            =e= 0;
Eq_2..    x['i3']+x['i4']-2*x['i5']    =e= 0;
Eq_3..    x['i2']-x['i5']              =e= 0;
Def_obj.. f=e=sqr(x['i1']-x['i2']  )  +
              sqr(x['i2']+x['i3']-2)  +
              sqr(x['i4']-1        )  +
              sqr(x['i5']-1        )        ;

x.l[i]=20.0;
Model bt3 /all/;

Solve bt3 using nlp minimize f;

display x.l;
display f.l;
