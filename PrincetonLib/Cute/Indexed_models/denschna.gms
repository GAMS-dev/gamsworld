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

*   Source: an example problem (p. 206) in
*   J.E. Dennis and R.B. Schnabel,
*   "Numerical Methods for Unconstrained Optimization and Nonlinear
*   Equations",
*   Prentice-Hall, Englewood Cliffs, 1983.

*   SIF input: Ph. Toint, Nov 1990.

*   classification OUR2-AN-2-0

$Set N 2
Set i /i1*i%N%/;

Variable      x[i], f    ;

Equation   Def_obj ;

Def_obj.. f=e= power(x['i1'],4)+sqr(x['i1']+x['i2'])+sqr(-1.0+exp(x['i2']));

x.l[i] = 1 ;
Model denschna /all/;

Solve denschna using nlp minimize f;

display x.l;
display f.l;
