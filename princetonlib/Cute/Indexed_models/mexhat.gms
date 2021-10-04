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
*   A.A. Brown and M. Bartholomew-Biggs,
*   "Some effective methods for unconstrained optimization based on
*   the solution of ordinary differential equations",
*   Technical Report 178, Numerical Optimization Centre, Hatfield
*   Polytechnic, (Hatfield, UK), 1987.

*   SIF input: Ph. Toint, June 1990.

*   classification OUR2-AN-2-0

parameter p ; p = 10000 ;

Variable x1 , x2 , f ;

Equation Def_obj ;

Def_obj..  f =e= -2*sqr(x1-1) +
                  p*sqr(-0.02 + sqr(x2-sqr(x1))/p + sqr(x1-1)) ;

x1.l = 0.86 ;
x2.l = 0.72 ;
Model mexhat  /all/;

Solve mexhat using nlp minimize f ;

display x1.l ;
display x2.l ;
display  f.l ;
