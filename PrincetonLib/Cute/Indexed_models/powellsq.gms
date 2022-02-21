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
*   M.J.D. Powell,
*   " A hybrid method for nonlinear equations",
*   In P. Rabinowitz(ed.) "Numerical Methods for Nonlinear Algebraic
*   Equations", Gordon and Breach, 1970.

*   See also Buckley*217 (p.84.)

*   classification NOR2-AN-2-2

$Set N 2
Set I       /i1*i%N%/;

Parameter xinit[i] / i1 3.0 , i2 1.0 /;

Variable X[i] , f ;

Equation  cons1 , Def_obj ;

cons1.. (10*x['i1']/(x['i1']+0.1)+2*sqr(x['i2'])) =e= 0;
Def_obj..  f =e= 0 ;


x.l[i] = xinit[i];

x.fx['i1'] = 0;


Model powellsq /all/;

Solve powellsq   using nlp minimazing f ;

display f.l;
