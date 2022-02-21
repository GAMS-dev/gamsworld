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

*   Source: a very simple box-constrained quadratic

*   SIF input: Nick Gould, March 1992

*   classification QBR2-AN-2-0

$SET N 2
Set I /i1*i%N%/;

Parameter xinit(i) /i1 10 , i2 1 /;

Variable x(i) , f ;

Equation Def_obj ;

Def_obj..  f =e= x['i2']+sqr(-x['i1']+x['i2']) + sqr(2*x['i1']+x['i2']) ;

x.l[i] = xinit[i] ;
x.lo['i2'] = 0.0 ;
x.up['i2'] = 0.5 ;


Model simbqp  /all/ ;

Solve simbqp using nlp minimazing f ;

display f.l; display x.l;
