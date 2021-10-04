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
*   "The OPTIMA user manual (issue No.8, p. 47)",
*   Numerical Optimization Centre, Hatfield Polytechnic (UK), 1989.

*   SIF input: Ph. Toint, May 1990.

*   classification NOR2-AN-3-3

$Set N 3
Set I  / i1*i%N% / ;

Variable x[i] , f ;

Equation cons1 , cons2 , cons3 , Def_obj ;

cons1.. (x['i1']-0.032+x['i2']*exp(  x['i3'])) =e= 0;
cons2.. (x['i1']-0.056+x['i2']*exp(2*x['i3'])) =e= 0;
cons3.. (x['i1']-0.099+x['i2']*exp(3*x['i3'])) =e= 0;

Def_obj..  f =e= 0 ;

x.l[i] =1 ;

Model hatfldf /all/ ;

Solve hatfldf  using nlp minimazing f ;

Display   x.l ;
Display   f.l ;
