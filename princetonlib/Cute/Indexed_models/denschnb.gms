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

*   Source: an example problem (p. 201) in
*   J.E. Dennis and R.B. Schnabel,
*   "Numerical Methods for Unconstrained Optimization and Nonlinear
*   Equations",
*   Prentice-Hall, Englewood Cliffs, 1983.

*   SIF input: Ph. Toint, Nov 1990.

*   classification SUR2-AN-2-0

$Set N 2
Set i /i1*i%N%/;

Variable   x[i], f    ;

Equation   Def_obj ;

Def_obj.. f=e=sqr(x['i1']-2.0) + sqr((x['i1']-2.0)*x['i2']) + sqr(x['i2']+1.0);

x.l[i] = 1 ;
Model denschnb /all/;

Solve denschnb using nlp minimize f;


display x.l;
display f.l;
