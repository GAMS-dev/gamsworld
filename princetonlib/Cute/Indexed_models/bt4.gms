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

*   Source: a variant of problem 4 in
*   P.T. Boggs and J.W. Tolle,
*   "A strategy for global convergence in a sequential
*    quadratic programming algorithm",
*   SINUM 26(3), pp. 600-623, 1989.

*   The original problem seems to be unbounded.  The contribution of
*   x3 in the first constraint has been squared instead of cubed.

*   The problem is not convex.

*   SIF input: Ph. Toint, June 1993.

*   classification QQR2-AN-3-2

$Set N 3
Set i /i1*i%N%/;

parameter xinit[i] /i1 4.0382,i2 -2.9470,i3 -0.09115/;

Variable     x[i],f   ;

Equation Eq_1,Eq_2,Def_obj;
Eq_1..    -25+sqr(x['i1'])+sqr(x['i2'])+sqr(x['i3'])  =e= 0;
Eq_2..            x['i1'] +    x['i2'] +    x['i3']-1 =e= 0;
Def_obj..  f =e= x['i1'] - x['i2'] + power(x['i2'],3)      ;

x.l[i]=xinit[i];

Model bt4 /all/;

Solve bt4 using nlp minimize f;

display x.l;
display f.l;
