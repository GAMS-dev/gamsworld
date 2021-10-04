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
*   K. Madsen
*   "An algorithm for minmax solution of overdetermined systems of non-linear
*   equations"
*   JIMA, vol.16, pp. 321-328, 1975.

*   SIF input: Ph. Toint, April 1992.

*   classification LOR2-AN-3-6

Variable x1 , x2 , u , f ;

Equation cons1 , cons2 , cons3 , cons4 , cons5 , cons6 , Def_obj ;

cons1.. u -sqr(x1) -sqr(x2) -x1*x2 =g= 0;
cons2.. u +sqr(x1) +sqr(x2) +x1*x2 =g= 0;
cons3.. u -sin(x1) =g= 0;
cons4.. u +sin(x1) =g= 0;
cons5.. u -cos(x2) =g= 0;
cons6.. u +cos(x2) =g= 0;
Def_obj..  f =e= u ;

x1.l = 3 ;
x2.l = 1 ;
 u.l = 1 ;

Model madsen /all/;

Solve madsen  using nlp minimize f ;

display x1.l , x2.l , u.l , f.l ;
