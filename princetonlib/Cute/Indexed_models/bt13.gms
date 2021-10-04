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

*   Source: problem 13 in
*   P.T. Boggs and J.W. Tolle,
*   "A strategy for global convergence in a sequential
*    quadratic programming algorithm",
*   SINUM 26(3), pp. 600-623, 1989.

*   The problem has been modified by adding a lower bound of 0.0 on x5
*   in order to make it bounded below.

*   The problem is not convex.

*   SIF input: Ph. Toint, June 1993.

*   classification LQR2-AY-5-1


$Set N 5
Set i /i1*i%N%/;

parameter x_init[i] /i1 1.0,i2 2.0,i3 3.0,i4 3.0,i5 228.0 / ;

Variable        x[i], f   ;

Equation Eq_1, Def_obj;
Eq_1..   sqr(x['i1']) + sqr(x['i1']-2*x['i2'])+
                        sqr(x['i2']-3*x['i3'])+
                        sqr(x['i3']-4*x['i4'])- sqr(x['i5']) =e= 0;

Def_obj.. f=e= x['i5']  ;

x.lo['i5']  = 0.0        ;
x.l[i]      = x_init[i]  ;

Model bt13 /all/;

Solve bt13 using nlp minimize f;

display x.l;
display f.l;
