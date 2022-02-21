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

*   classification  QOR2-AY-6-2

Variable  x11 , x12 , x22 , y11 , y12 , y22 , f ;
Equation  cons1 , cons2 , Def_obj ;

cons1..    x11*x22-sqr(x12) =g= 0;
cons2..    y11*y22-sqr(y12) =l= 0;
Def_obj..  f =e= sqr(x11-y11) + 2*sqr(x12-y12) + sqr(x22-y22) ;

 x11.lo = 0;  x11.l = 1 ;
              x12.l = 1 ;
 x22.lo = 0;  x22.l = 1 ;
 y11.up = 0;  y11.l = 1 ;
              y12.l = 1 ;
 y22.lo = 0;  y22.l = 1 ;

Model matrix2 /all/;

Solve matrix2  using nlp minimize f ;

display f.l ;
display x11.l , x12.l , x22.l , y11.l , y12.l , y22.l ;
