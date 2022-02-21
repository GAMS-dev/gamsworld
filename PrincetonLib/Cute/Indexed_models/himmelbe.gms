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

*   Source: problem 30 in
*   D.H. Himmelblau,
*   "Applied nonlinear programming",
*   McGraw-Hill, New-York, 1972.

*   See Buckley*88 (p. 65)

*   SIF input: Ph. Toint, Dec 1989.

*   classification NQR2-AY-3-3

$Set N  3
Set I  / i1*i%N% / ;

Parameter x_init / i1 -1.2 , i2 2.0 , i3 2.0 / ;
Variable x[i] , f ;
Equation cons1 , cons2 , cons3 ,  Def_obj ;

cons1.. ( -x['i3']+0.25*sqr(x['i1']+x['i2']) ) =e= 0;
cons2.. (-x['i1']+1.0) =e= 0;
cons3.. (-x['i2']+1.0) =e= 0;

Def_obj..  f =e= 0 ;


x.l[i] = x_init[i] ;

Model himmelbe /all/ ;

Solve himmelbe using nlp minimazing f ;

display f.l ;
display x.l ;
