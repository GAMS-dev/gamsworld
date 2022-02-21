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

*   Source: problem 1 in
*   P.T. Boggs and J.W. Tolle,
*   "A strategy for global convergence in a sequential
*    quadratic programming algorithm",
*   SINUM 26(3), pp. 600-623, 1989.

*   SIF input: Ph. Toint, June 1993.

*   classification QQR2-AN-2-1

$Set N 2
Set i /i1*i%N%/;


parameter xinit[i] /i1 0.08, i2 0.06/;

Variable     x[i],f   ;

Equation Eq_1,Def_obj;
Eq_1..    sqr(x['i1'])+sqr(x['i2'])-1.0  =e=  0             ;
Def_obj.. f=e= 100*sqr(x['i1'])+100*sqr(x['i2'])-x['i1']-100;

Model bt1 /all/;

Solve bt1 using nlp minimize f;

display x.l;
display f.l;
