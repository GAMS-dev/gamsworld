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

*   Source:
*   R. Byrd,
*   Private communication, Chicago, 1992.

*   SIF input: Ph. Toint, November 1992.

*   classification LQR2-AN-3-2

$Set N 3
Set i /i1*i%N%/;

parameter xinit[i] /i1  5.0,i2  0.0001,i3 -0.0001  /;

Variable  x[i], f    ;

Equation Eq_1, Eq_2, Def_obj ;
Eq_1..    -9.0+sqr(x['i1'])    +sqr(x['i2'])+sqr(x['i3']) =e= 0;
Eq_2..    -9.0+sqr(x['i1']-1.0)+sqr(x['i2'])+sqr(x['i3']) =e= 0;
Def_obj.. f=e=-x['i1']-x['i2']-x['i3'];

x.l[i]  =  xinit[i];

Model byrdshr /all/;

Solve byrdshr using nlp minimize f;

display x.l;
display f.l;
