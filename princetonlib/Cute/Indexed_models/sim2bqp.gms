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

*   Source: another very simple box-constrained quadratic

*   classification QBR2-AN-2-0

Variable x1 , x2 , f ;

Equation Def_obj ;

Def_obj..  f =e= x2 + sqr(-x1+x2) + sqr(x1+x2) ;

x1.l  = 10 ;

x2.lo = 0   ;
x2.up = 0.5 ;
x2.l  = 1 ;

Model sim2bqp  /all/ ;

Solve sim2bqp using nlp minimazing f ;

display f.l;
display x1.l;
display x2.l;
