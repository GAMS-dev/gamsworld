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

*   Source: problem 2 in
*   P.T. Boggs and J.W. Tolle,
*   "A strategy for global convergence in a sequential
*    quadratic programming algorithm",
*   SINUM 26(3), pp. 600-623, 1989.

*   SIF input: Ph. Toint, June 1993.

*   classification QQR2-AY-3-1

$Set N 3
Set i /i1*i%N%/;

Variable     x[i],f   ;

Equation Eq_1,Def_obj;
Eq_1..    x['i1']*(1.0+sqr(x['i2']))+power(x['i3'],4) =e= 8.2426407;
Def_obj.. f=e=sqr(x['i1']-1.0)+sqr(x['i1']-x['i2'])+
              power((x['i2']-x['i3']),4);

x.l[i]=10;

Model bt2 /all/;

Solve bt2 using nlp minimize f;

display x.l;
display f.l;
