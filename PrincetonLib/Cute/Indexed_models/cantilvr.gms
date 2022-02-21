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
*   an example in a talk by W.K. Zhang and C. Fleury, LLN, 1994.

*   SIF input: Ph. Toint, November 1994

*   classification LOR2-MN-5-1

$Set N 5
Set i /i1*i%N%/;

parameter num[i] /i1 61.0,i2 37.0,i3 19.0,i4  7.0,i5  1.0 /;

Variable     x[i], f ;

Equation Eq_1, Def_obj ;

Eq_1..    sum{i,(num[i]/power(x[i],3))}-1 =l= 0;
Def_obj.. f=e= 0.0624*sum{i,x[i]} ;

x.lo[i]  =    0.000001;
x.l[i]   =    1.0     ;

Model cantilvr /all/;

Solve cantilvr using nlp minimize f;

display x.l;
display f.l;
