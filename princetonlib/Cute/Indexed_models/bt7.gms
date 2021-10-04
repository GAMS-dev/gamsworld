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

*   Source: problem 7 in
*   P.T. Boggs and J.W. Tolle,
*   "A strategy for global convergence in a sequential
*    quadratic programming algorithm",
*   SINUM 26(3), pp. 600-623, 1989.

*   The problem is not convex.

*   SIF input: Ph. Toint, June 1993.

*   classification OQR2-AN-5-3

$Set N 5
Set i /i1*i%N%/;

parameter x_init[i] /i1 -2.0,i2  1.0,i3 1.0,i4 1.0,i5 1.0/;

Variable     x[i],f   ;

Equation Eq_1,Eq_2,Eq_3,Def_obj;

Eq_1..    x['i1']*x['i2'] - sqr(x['i3'])         =e=  1.0        ;
Eq_2..    sqr(x['i2']) - sqr(x['i4']) + x['i1']  =e=  0.0        ;
Eq_3..    sqr(x['i5']) + x['i1']                 =e=  0.5        ;
Def_obj.. f=e= 100*sqr(x['i2']-sqr(x['i1'])) + sqr(x['i1']-1.0)  ;

x.l[i]= x_init[i]+1;


Model bt7 /all/;

Solve bt7 using nlp minimize f;

display x.l;
display f.l;
