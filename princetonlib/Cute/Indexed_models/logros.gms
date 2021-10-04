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
*   Ph. Toint, private communication, 1991.

*   SDIF input: Ph. Toint, June 1993.

*   classification OBR2-AN-2-0

Positive Variable  x , y ;
         Variable  f ;

Equation Def_obj ;

Def_obj.. f =e= log(1+10000*sqr(y-sqr(x))+sqr(1-x));

x.l = -1.2 ;

y.l =  1.0 ;

Model logros /all/;

Solve logros using nlp minimize f ;

display   x.l               ;

display   f.l               ;
