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
*   D.H. Himmelblau,
*   "A uniform evaluation of unconstrained optimization techniques",
*   in "Numerical methods for nonlinear optimization" (F.A. Lootsma, ed.),
*   Academic Press, London, 1972.

*   See Buckley*8 (p. 60)

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-2-0

$Set N  2
Set I  / i1*i%N% / ;

Parameter xinit  / i1 0 , i2 2 / ;

Variable x[i] ,  f ;

Equation  Def_obj ;

Def_obj.. f =e= - 3*x['i1'] - 2*x['i2'] + 2 + power(x['i1'],3) + sqr(x['i2']) ;


x.l[i] = xinit[i] ;

Model himmelbh /all/ ;

Solve himmelbh using nlp minimazing f ;

display f.l ;
display x.l ;
