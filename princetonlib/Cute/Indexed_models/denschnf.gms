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

*   Source: an example problem (p. 107) in
*   J.E. Dennis and R.B. Schnabel,
*   "Numerical Methods for Unconstrained Optimization and Nonlinear
*   Equations",
*   Prentice-Hall, Englewood Cliffs, 1983.

*   SIF input: Ph. Toint, Nov 1990.

*   classification SUR2-AY-2-0

Variable x1 , x2 , f ;
Equation Def_obj;

Def_obj.. f =e= sqr(2*sqr(x1+x2) +sqr(x1-x2) - 8) +sqr(5*sqr(x1) +sqr(x2-3)-9);

x1.l = 2 ;
x2.l = 0 ;
x1.fx=-1.11;
Model denschnf /all/;

Solve denschnf using nlp minimize f;

display x1.l;
display x2.l;
display f.l;
