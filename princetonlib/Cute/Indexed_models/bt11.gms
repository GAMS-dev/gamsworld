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

*   Source: problem 11 in
*   P.T. Boggs and J.W. Tolle,
*   "A strategy for global convergence in a sequential
*    quadratic programming algorithm",
*   SINUM 26(3), pp. 600-623, 1989.

*   The problem is not convex.

*   SIF input: Ph. Toint, June 1993.

*   classification OOR2-AY-5-3

$Set N 5
Set i /i1*i%N%/;

Variable        x[i], f   ;

Equation Eq_1, Eq_2, Eq_3, Def_obj;
Eq_1..    x['i1']+sqr(x['i2'])+power(x['i3'],3) =e= -2+sqrt(18.0)  ;
Eq_2..    x['i2']+    x['i4'] -  sqr(x['i3'])   =e= -2+sqrt( 8.0)  ;
Eq_3..    x['i1']-    x['i5']                   =e=  2             ;
Def_obj.. f=e= sqr(x['i1']-1.0)+sqr(x['i1']-x['i2'])+sqr(x['i2']-x['i3'])+
               power((x['i3']-x['i4']),4)  + power((x['i4']- x['i5']),4)   ;

x.l[i]  =     2.0    ;

Model bt11 /all/;

Solve bt11 using nlp minimize f;

display x.l;
display f.l;
