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
*   Ph. Toint, private communication,

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AY-2-0

parameter hlength; hlength =  30 ;
parameter  cslope;  cslope = 100 ;

Variable x1 , x2 , f ;

Equation  Def_obj ;

Def_obj.. f=e= sqr(sin(7*x1))*sqr(cos(7*x2))*hlength +
                cslope*sqrt(0.01+sqr(x1-x2))         +
                cslope*sqrt(0.01+sqr(x1   ))          ;

x1.l = -5 ;
x2.l = -7 ;

Model hairy /all/;

Solve hairy using nlp minimize f;

display   f.l;
display  x1.l;
display  x2.l;
