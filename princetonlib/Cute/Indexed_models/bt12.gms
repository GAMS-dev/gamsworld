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

*   Source: problem 12 in
*   P.T. Boggs and J.W. Tolle,
*   "A strategy for global convergence in a sequential
*    quadratic programming algorithm",
*   SINUM 26(3), pp. 600-623, 1989.

*   The problem is not convex.

*   SIF input: Ph. Toint, June 1993.

*   classification QQR2-AN-5-3

$Set N 5
Set i /i1*i%N%/;

parameter xinit[i] / i1 15.811,i2  1.5811,i3  0.0,i4 15.083,i5  3.7164 /;

Variable  x[i], f ;

Equation  Eq_1, Eq_2, Eq_3, Def_obj ;

Eq_1..     x['i1'] +    x['i2'] -sqr(x['i3'])                      =e=25.0;
Eq_2.. sqr(x['i1'])+sqr(x['i2'])           -sqr(x['i4'])           =e=25.0;
Eq_3..     x['i1']                                  -sqr(x['i5'])  =e= 2.0;
Def_obj..  f  =e=  0.01*sqr(x['i1'])+sqr(x['i2']);

x.l[i]  =    xinit[i];

Model bt12 /all/;

Solve bt12 using nlp minimize f;

display x.l;
display f.l;
