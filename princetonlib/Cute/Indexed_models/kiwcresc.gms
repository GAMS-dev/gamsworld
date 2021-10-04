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
*   K.C. Kiwiel,
*   "Methods of Descent for Nondifferentiable Optimization"
*   Lectures Notes in Mathematics 1133, Springer Verlag, 1985.

*   SIF input: Ph. Toint, Nov 1993.

*   classification  LQR2-AN-3-2

$Set N 2
Set i /i1*i%N%/;

Parameter xinit(i) /i1 -1.5 , i2 2.0 /;

Variable x(i) , u , f ;
Equation cons1 , cons2 , Def_obj ;

cons1.. -u+x['i2']-1+sqr(x['i1'])+sqr(x['i2']-1) =l= 0 ;

cons2.. -u+x['i2']+1-sqr(x['i1'])-sqr(x['i2']-1) =l= 0 ;

Def_obj..  f =e= u ;

x.l(i) = xinit(i) ;

Model kiwcresc /all/;

Solve kiwcresc using nlp minimize f;

display x.l ;

display f.l ;
