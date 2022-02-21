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

*   Source:  problem 155 (p. 88) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-AY-3-3

$Set N 3
Set I / i1*i%N% / ;

Parameter xinit[i] / i1  2.0 , i2  5.0 , i3  1.0 / ;

Variable x[i] , f ;

Equation cons1 , cons2 , cons3 , Def_obj ;

cons1.. (x['i1']-5)                 =e= 0 ;

cons2.. (x['i2'])                   =e= 0 ;

cons3.. (x['i3']/(x['i2']-x['i1'])) =e= 0 ;

Def_obj..  f =e= 0.0 ;

x.l[i] = xinit[i] ;

Model recipe /all/ ;

Solve recipe using nlp minimazing f ;

display f.l; display x.l;
