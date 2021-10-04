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
*   Ph. Toint, private communication.

*   SIF input: Ph. Toint, March 1991.

*   classification OBR2-AN-2-0

Positive Variable x     ;
         Variable y , f ;
Equation Def_obj ;

Def_obj..  f =e= (sqr(-y+sin(x)))/0.01 + x;

x.l = 10 ;
y.l = 10 ;

Model mdhole /all/;

Solve mdhole using nlp minimize f ;

display f.l; display x.l;
