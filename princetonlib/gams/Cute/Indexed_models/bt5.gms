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

*   Source: problem 5 in
*   P.T. Boggs and J.W. Tolle,
*   "A strategy for global convergence in a sequential
*    quadratic programming algorithm",
*   SINUM 26(3), pp. 600-623, 1989.

*   The problem as stated in the paper seems to contain a typo.
*   The sign of the x3 squared term in the first constraint has been
*   set to + instead of - in order to ensdure that the problem is
*   bounded below and the optimal point stated recovered.

*   The problem is not convex.

*   SIF input: Ph. Toint, June 1993.

*   classification QQR2-AN-3-2

$Set N 3
Set i /i1*i%N%/;

parameter xinit[i] /i1 2.0,i2 2.0,i3 2.0/;

Variable     x[i],f   ;

Equation Eq_1,Eq_2,Def_obj;
Eq_1..    -25 + sqr(x['i1']) + sqr(x['i2']) + sqr(x['i3'])     =e= 0;
Eq_2..         8   *x['i1']  +14  *x['i2']  + 7  *x['i3'] - 56 =e= 0;
Def_obj.. f=e=1000-sqr(x['i1'])   -sqr(x['i3'])   -2*sqr(x['i2'])
                      -x['i1']*x['i2']-x['i1']*x['i3']              ;

x.l[i]=xinit[i];

Model bt5 /all/;

Solve bt5 using nlp minimize f;

display x.l;
display f.l;
